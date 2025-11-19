void *sub_100103530(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100095274(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = &_swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100095274(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_100103664(char *result, int64_t a2, char a3, char *a4)
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
    sub_100095274(&qword_1002A9220, &qword_10023D440);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100103774(void *result, int64_t a2, char a3, void *a4)
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
    sub_100095274(&qword_1002A8988, &qword_10023FFC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100095274(&qword_1002A8990, &qword_10023D8E8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1001038A8@<X0>(_BYTE *__src@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a2)
  {
    if (a2 <= 14)
    {
      result = sub_1001AC9DC(__src, &__src[a2]);
      v6 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      v8 = type metadata accessor for __DataStorage();
      v9 = *(v8 + 48);
      v10 = *(v8 + 52);
      swift_allocObject();
      v11 = __DataStorage.init(bytes:length:)();
      if (a2 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = a2;
        v6 = v11 | 0x8000000000000000;
      }

      else
      {
        result = a2 << 32;
        v6 = v11 | 0x4000000000000000;
      }
    }
  }

  *a3 = result;
  a3[1] = v6;
  return result;
}

void sub_100103970(void (*a1)(uint64_t, uint64_t))
{
  v2 = v1;
  v5 = *v1;
  v4 = v1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1000A0D2C(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *v2 = xmmword_10023BF90;
      sub_1000A0D2C(0, 0xC000000000000000);
      sub_100104084(a1);
      v7 = v21;
      v8 = *(&v21 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1000A0D2C(v5, v4);
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

  sub_1000A0D2C(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *v2 = xmmword_10023BF90;
  sub_1000A0D2C(0, 0xC000000000000000);
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

char *sub_100103C20(void *(*a1)(uint64_t *__return_ptr, char *, char *))
{
  v3 = v1;
  v6 = *v1;
  v5 = v1[1];
  v7 = v5 >> 62;
  if ((v5 >> 62) <= 1)
  {
    if (!v7)
    {
      sub_1000A0D2C(v6, v5);
      v21[0] = v6;
      LOWORD(v21[1]) = v5;
      BYTE2(v21[1]) = BYTE2(v5);
      BYTE3(v21[1]) = BYTE3(v5);
      BYTE4(v21[1]) = BYTE4(v5);
      BYTE5(v21[1]) = BYTE5(v5);
      BYTE6(v21[1]) = BYTE6(v5);
      result = a1(&v19, v21, v21 + BYTE6(v5));
      if (!v2)
      {
        result = v19;
      }

      v9 = LODWORD(v21[1]) | ((WORD2(v21[1]) | (BYTE6(v21[1]) << 16)) << 32);
      *v3 = v21[0];
      v3[1] = v9;
      return result;
    }

    v11 = v5 & 0x3FFFFFFFFFFFFFFFLL;

    sub_1000A0D2C(v6, v5);
    *v3 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
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

      v17 = sub_100104160(v6, v6 >> 32, a1);

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

    sub_1000A0D2C(v6, v5);
    v19 = v6;
    v20 = v5 & 0x3FFFFFFFFFFFFFFFLL;
    *v3 = xmmword_10023BF90;
    sub_1000A0D2C(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = sub_100104160(*(v19 + 2), *(v19 + 3), a1);
    v10 = v20 | 0x8000000000000000;
    if (!v2)
    {
      *v3 = v19;
      v3[1] = v10;
      return result;
    }

    *v3 = v19;
LABEL_21:
    v3[1] = v10;
    return result;
  }

  memset(v21, 0, 15);
  result = a1(&v19, v21, v21);
  if (!v2)
  {
    return v19;
  }

  return result;
}

uint64_t sub_100103FC4(uint64_t (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(a3, a4 - a3);
    if (!v4)
    {
      return result;
    }

LABEL_5:
    __break(1u);
    return result;
  }

  result = a1(0, 0);
  if (v4)
  {
    goto LABEL_5;
  }

  return result;
}

void *sub_100104018(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = a1(&v6, 0, 0);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_100104084(void (*a1)(uint64_t, uint64_t))
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

char *sub_100104160(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
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

uint64_t sub_100104214@<X0>(uint64_t result@<X0>, uint64_t *a2@<X2>, void *a3@<X8>)
{
  if (result)
  {
    v4 = *a2;
    v5 = a2[1];
    result = _StringGuts.copyUTF8(into:)();
    if ((v7 & 1) == 0)
    {
      *a3 = 0;
      a3[1] = 0xE000000000000000;
      a3[2] = 15;
      a3[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100104264(uint64_t a1)
{
  v9 = sub_100095274(&unk_1002A7B10, &unk_10023F3A0);
  v10 = sub_1000A4474();
  v8[0] = a1;
  v2 = sub_1000A09E0(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_1001AC450(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100095808(v8);
  return v5;
}

unint64_t sub_100104314()
{
  result = qword_1002A88E8;
  if (!qword_1002A88E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88E8);
  }

  return result;
}

double sub_100104368(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = sub_100095274(a2, a3);
  v15 = *(v6 - 8);
  v7 = *(v15 + 64);
  __chkstk_darwin(v6);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000A09E0(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = v15;
  v17 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v16 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v11 + 8))(v9, v6);
  sub_100095808(a1);
  return v13;
}

uint64_t _s14dockaccessoryd14MotionFeedbackV4dataACSg10Foundation4DataV_tcfC_0(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v9 = *(a1 + 16);
  }

  sub_1000A0CD8(a1, a2);
  Data.Iterator.init(_:at:)();
  v10 = Data.Iterator.next()();
  if ((*&v10 & 0x100) == 0)
  {
    value = v10.value;
    LOWORD(v12) = Data.Iterator.next()();
    if ((v12 & 0x100) == 0)
    {
      v43 = v12;
      v44 = v5;
      v45 = v4;
      v46 = a1;
      if (value)
      {
        v13 = 0;
        v14 = _swiftEmptyArrayStorage;
        while (1)
        {
          v15 = Data.Iterator.next()();
          if ((*&v15 & 0x100) != 0)
          {
            break;
          }

          v16 = v15.value;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v14 = sub_100102CE8(0, *(v14 + 2) + 1, 1, v14, &qword_1002A8A50, &qword_10023D988);
          }

          v18 = *(v14 + 2);
          v17 = *(v14 + 3);
          if (v18 >= v17 >> 1)
          {
            v14 = sub_100102CE8((v17 > 1), v18 + 1, 1, v14, &qword_1002A8A50, &qword_10023D988);
          }

          ++v13;
          *(v14 + 2) = v18 + 1;
          v19 = &v14[16 * v18];
          *(v19 + 4) = v16;
          *(v19 + 5) = 0;
          if (v13 == value)
          {
            goto LABEL_16;
          }
        }
      }

      else
      {
        v14 = _swiftEmptyArrayStorage;
LABEL_16:
        v20 = v43;
        if (v43)
        {
          v21 = 0;
          v22 = _swiftEmptyArrayStorage;
          while (1)
          {
            v23 = Data.Iterator.next()();
            if ((*&v23 & 0x100) != 0)
            {
              break;
            }

            v24 = v23.value;
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v22 = sub_100102CE8(0, *(v22 + 2) + 1, 1, v22, &qword_1002A8A48, &qword_10023D980);
            }

            v26 = *(v22 + 2);
            v25 = *(v22 + 3);
            if (v26 >= v25 >> 1)
            {
              v22 = sub_100102CE8((v25 > 1), v26 + 1, 1, v22, &qword_1002A8A48, &qword_10023D980);
            }

            ++v21;
            *(v22 + 2) = v26 + 1;
            v27 = &v22[16 * v26];
            *(v27 + 4) = v24;
            *(v27 + 5) = 0;
            if (v21 == v20)
            {
              goto LABEL_26;
            }
          }
        }

        else
        {
          v22 = _swiftEmptyArrayStorage;
LABEL_26:
          if (value)
          {
            v28 = 0;
            v29 = value;
            v30 = 40;
            while (1)
            {
              v31 = Data.Iterator.next()();
              if ((*&v31 & 0x100) != 0)
              {
                break;
              }

              v32 = v31;
              v33 = Data.Iterator.next()();
              if ((*&v33 & 0x100) != 0)
              {
                break;
              }

              v34 = v33.value;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_10019F80C(v14);
                v14 = result;
              }

              if (v28 >= *(v14 + 2))
              {
                __break(1u);
LABEL_48:
                __break(1u);
                return result;
              }

              ++v28;
              *&v14[v30] = (v34 | (*&v32 << 8)) / 1000.0;
              v30 += 16;
              if (v29 == v28)
              {
                goto LABEL_34;
              }
            }
          }

          else
          {
LABEL_34:
            if (!v43)
            {
LABEL_46:
              (*(v44 + 8))(v8, v45);
              sub_1000A0D2C(v46, a2);
              return v14;
            }

            v36 = 0;
            v37 = v43;
            v38 = 40;
            while (1)
            {
              v39 = Data.Iterator.next()();
              if ((*&v39 & 0x100) != 0)
              {
                break;
              }

              v40 = v39;
              v41 = Data.Iterator.next()();
              if ((*&v41 & 0x100) != 0)
              {
                break;
              }

              v42 = v41.value;
              result = swift_isUniquelyReferenced_nonNull_native();
              if ((result & 1) == 0)
              {
                result = sub_10019F7F8(v22);
                v22 = result;
              }

              if (v36 >= *(v22 + 2))
              {
                goto LABEL_48;
              }

              ++v36;
              *&v22[v38] = (v42 | (*&v40 << 8)) / 1000.0;
              v38 += 16;
              if (v37 == v36)
              {
                goto LABEL_46;
              }
            }
          }
        }
      }

      v4 = v45;
      a1 = v46;
      v5 = v44;
    }
  }

  (*(v5 + 8))(v8, v4);
  sub_1000A0D2C(a1, a2);

  return 0;
}

unint64_t sub_100104984()
{
  result = qword_1002A88F0;
  if (!qword_1002A88F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88F0);
  }

  return result;
}

unint64_t sub_1001049D8()
{
  result = qword_1002A88F8;
  if (!qword_1002A88F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A88F8);
  }

  return result;
}

unint64_t sub_100104A2C()
{
  result = qword_1002A8908;
  if (!qword_1002A8908)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8908);
  }

  return result;
}

unint64_t sub_100104A80()
{
  result = qword_1002A8920;
  if (!qword_1002A8920)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8920);
  }

  return result;
}

uint64_t sub_100104AD4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009589C(&qword_1002A8928, &qword_10023D458);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100104B4C()
{
  result = qword_1002A8938;
  if (!qword_1002A8938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8938);
  }

  return result;
}

uint64_t sub_100104BA0(uint64_t *a1)
{
  v3 = sub_100095274(&qword_1002A8A20, &qword_10023D978);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[3];
  sub_1000A09E0(a1, v8);
  sub_100104A2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    sub_100095274(&qword_1002A8910, &qword_10023D450);
    HIBYTE(v10) = 0;
    sub_1001053C0(&qword_1002A8A28, sub_100105438);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    sub_100095274(&qword_1002A8928, &qword_10023D458);
    HIBYTE(v10) = 1;
    sub_100104AD4(&qword_1002A8A38, sub_10010548C);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100095808(a1);
  return v8;
}

uint64_t sub_100104E04(uint64_t *a1, int a2)
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

uint64_t sub_100104E4C(uint64_t result, int a2, int a3)
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

unint64_t sub_100104EF4()
{
  result = qword_1002A8940;
  if (!qword_1002A8940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8940);
  }

  return result;
}

unint64_t sub_100104F4C()
{
  result = qword_1002A8948;
  if (!qword_1002A8948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8948);
  }

  return result;
}

unint64_t sub_100104FA4()
{
  result = qword_1002A8950;
  if (!qword_1002A8950)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8950);
  }

  return result;
}

unint64_t sub_100104FFC()
{
  result = qword_1002A8958;
  if (!qword_1002A8958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8958);
  }

  return result;
}

unint64_t sub_100105054()
{
  result = qword_1002A8960;
  if (!qword_1002A8960)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8960);
  }

  return result;
}

unint64_t sub_1001050AC()
{
  result = qword_1002A8968;
  if (!qword_1002A8968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8968);
  }

  return result;
}

unint64_t sub_100105104()
{
  result = qword_1002A8970;
  if (!qword_1002A8970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8970);
  }

  return result;
}

unint64_t sub_10010515C()
{
  result = qword_1002A8978;
  if (!qword_1002A8978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8978);
  }

  return result;
}

unint64_t sub_1001051B4()
{
  result = qword_1002A8980;
  if (!qword_1002A8980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8980);
  }

  return result;
}

uint64_t sub_100105208(uint64_t a1)
{
  v2 = sub_100095274(&qword_1002A89E0, &qword_10023D938);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_100105270@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = sub_100104018(sub_1001052D8, v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t sub_1001052F8(uint64_t a1, uint64_t a2)
{
  v5 = **(v2 + 16);
  v4[2] = &v5;
  return sub_100103FC4(sub_100105350, v4, a1, a2);
}

uint64_t sub_100105350@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = *(v3 + 16);
  v8 = *v7;
  v9 = v7[1];
  sub_1000A0CD8(*v7, v9);
  result = sub_1001F09E8(a3, a1, a2, v8, v9);
  a3[3] = result;
  return result;
}

uint64_t sub_1001053C0(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10009589C(&qword_1002A8910, &qword_10023D450);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100105438()
{
  result = qword_1002A8A30;
  if (!qword_1002A8A30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8A30);
  }

  return result;
}

unint64_t sub_10010548C()
{
  result = qword_1002A8A40;
  if (!qword_1002A8A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8A40);
  }

  return result;
}

uint64_t sub_100105518()
{
  v1 = v0;
  v2 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v35 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OS_dispatch_queue.Attributes();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  result = __chkstk_darwin(v9 - 8);
  if (!*(v1 + 16))
  {
    v40 = v2;

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    v14 = os_log_type_enabled(v12, v13);
    v39 = v3;
    if (v14)
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v41 = v16;
      *v15 = 136315138;
      *(v15 + 4) = sub_1000952D4(*(v1 + 64), *(v1 + 72), &v41);
      _os_log_impl(&_mh_execute_header, v12, v13, "starting txn %s", v15, 0xCu);
      sub_100095808(v16);
    }

    v17 = *(v1 + 64);
    v18 = *(v1 + 72);
    v41 = 0xD00000000000001DLL;
    v42 = 0x8000000100231540;
    v19._countAndFlagsBits = v17;
    v19._object = v18;
    String.append(_:)(v19);
    String.utf8CString.getter();

    v20 = os_transaction_create();

    v21 = *(v1 + 16);
    *(v1 + 16) = v20;
    swift_unknownObjectRelease();
    v38 = sub_1000B3420();
    v41 = 0xD000000000000023;
    v42 = 0x8000000100231560;
    v35 = v18;
    v36 = v17;
    v22._countAndFlagsBits = v17;
    v22._object = v18;
    String.append(_:)(v22);
    v37 = v41;
    static DispatchQoS.unspecified.getter();
    v41 = &_swiftEmptyArrayStorage;
    sub_1000EFFD8(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
    sub_100095274(&unk_1002A6830, &unk_10023AB20);
    sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    (*(v39 + 104))(v6, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v40);
    v23 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    v24 = *(v1 + 24);
    *(v1 + 24) = v23;

    v25 = [objc_allocWithZone(NSDate) init];
    [v25 timeIntervalSince1970];
    v27 = v26;

    *(v1 + 80) = v27;
    *(v1 + 88) = 0;
    if (*(v1 + 56) > 0.0)
    {
      swift_allocObject();
      swift_weakInit();
      v28 = *(v1 + 56);
      v29 = *(v1 + 24);
      objc_allocWithZone(type metadata accessor for RepeatingTimer());
      v30 = v29;

      v31 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
      v32 = *(v1 + 32);
      *(v1 + 32) = v31;
    }

    result = swift_unknownObjectWeakLoadStrong();
    if (result)
    {
      v33 = *(v1 + 48);
      ObjectType = swift_getObjectType();
      (*(v33 + 8))(v36, v35, ObjectType, v33);
      return swift_unknownObjectRelease();
    }
  }

  return result;
}

void sub_1001059EC()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 16))
  {
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "stopping txn", v14, 2u);
    }

    v15 = *(v1 + 24);
    if (v15)
    {
      aBlock[4] = sub_1001064F0;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100147FC8;
      aBlock[3] = &unk_100277C88;
      v16 = _Block_copy(aBlock);
      v20 = v15;

      static DispatchQoS.unspecified.getter();
      v21 = &_swiftEmptyArrayStorage;
      sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
      v19 = v7;
      sub_100095274(&unk_1002A6B60, qword_10023AE10);
      sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v17 = v20;
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v16);

      (*(v3 + 8))(v6, v2);
      (*(v8 + 8))(v11, v19);
    }
  }
}

uint64_t sub_100105D20(void *a1)
{
  v2 = a1[4];
  if (v2)
  {
    v3 = v2;
    dispatch thunk of RepeatingTimer.cancel()();

    v4 = a1[4];
    a1[4] = 0;

    v5 = a1[3];
    a1[3] = 0;
  }

  v6 = a1[2];
  a1[2] = 0;

  return swift_unknownObjectRelease();
}

void sub_100105D88()
{
  v1 = [objc_allocWithZone(NSDate) init];
  [v1 timeIntervalSince1970];
  v3 = v2;

  if (*(v0 + 88))
  {
    __break(1u);
  }

  else if (*(v0 + 56) < v3 - *(v0 + 80))
  {
    sub_1001059EC();
    if (swift_unknownObjectWeakLoadStrong())
    {
      v4 = *(v0 + 48);
      ObjectType = swift_getObjectType();
      (*(v4 + 16))(*(v0 + 64), *(v0 + 72), ObjectType, v4);

      swift_unknownObjectRelease();
    }
  }
}

uint64_t sub_100105E6C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + 24);
  if (v12)
  {
    aBlock[4] = sub_1000BAAE0;
    aBlock[5] = v0;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100277C60;
    v17 = result;
    v16 = _Block_copy(aBlock);
    v13 = v12;

    static DispatchQoS.unspecified.getter();
    v18 = &_swiftEmptyArrayStorage;
    sub_1000EFFD8(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v14 = v16;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);

    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v17);
  }

  return result;
}

void sub_10010611C(uint64_t a1)
{
  v2 = [objc_allocWithZone(NSDate) init];
  [v2 timeIntervalSince1970];
  v4 = v3;

  *(a1 + 80) = v4;
  *(a1 + 88) = 0;
  if (*(a1 + 56) > 0.0)
  {
    v5 = *(a1 + 32);
    if (v5)
    {
      v6 = v5;
      dispatch thunk of RepeatingTimer.cancel()();
    }

    swift_allocObject();
    swift_weakInit();
    v7 = *(a1 + 56);
    v8 = *(a1 + 24);
    v9 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v10 = v8;

    v11 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v12 = *(a1 + 32);
    *(a1 + 32) = v11;
  }
}

uint64_t sub_100106264()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100105D88();
  }

  return result;
}

uint64_t sub_1001062BC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  sub_1000B53D0(v0 + 40);
  v2 = *(v0 + 72);

  v3 = OBJC_IVAR____TtC14dockaccessoryd11Transaction_logger;
  v4 = type metadata accessor for Logger();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for Transaction()
{
  result = qword_1002A8AC0;
  if (!qword_1002A8AC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1001063D4()
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

uint64_t sub_1001064A0()
{
  swift_weakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001064D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100106520(uint64_t a1)
{
  v2 = v1;
  *(v2 + 16) = 0;
  *(v2 + 24) = 1;
  *(v2 + 32) = 0;
  *(v2 + 40) = 1;
  *(v2 + 48) = 0;
  *(v2 + 56) = 1;
  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v4 = sub_10016D4D0(0x6953676F4C78616DLL, 0xEA0000000000657ALL);
  if (v5)
  {
    *(v2 + 16) = [*(*(a1 + 56) + 8 * v4) integerValue];
    *(v2 + 24) = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v6 = sub_10016D4D0(0x79616C6564, 0xE500000000000000);
  if (v7)
  {
    *(v2 + 32) = [*(*(a1 + 56) + 8 * v6) integerValue];
    *(v2 + 40) = 0;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_13;
  }

  v8 = sub_10016D4D0(0x746F687370616E73, 0xEC00000065707954);
  if (v9)
  {
    *(v2 + 48) = [*(*(a1 + 56) + 8 * v8) unsignedIntegerValue];
    *(v2 + 56) = 0;
  }

  if (*(a1 + 16) && (v10 = sub_10016D4D0(0x74617453706D7564, 0xE900000000000065), (v11 & 1) != 0))
  {
    v12 = *(*(a1 + 56) + 8 * v10);

    v13 = [v12 BOOLValue];

    *(v2 + 57) = v13;
  }

  else
  {
LABEL_13:
  }

  return v2;
}

unint64_t sub_10010669C()
{
  v1 = v0;
  v2 = sub_1001F2468(&_swiftEmptyArrayStorage);
  if (*(v1 + 24))
  {
    if (*(v1 + 40))
    {
      goto LABEL_3;
    }

LABEL_7:
    v10 = *(v1 + 32);
    v14 = &type metadata for Int;
    *&v13 = v10;
    sub_1000FEA30(&v13, v12);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1001EB278(v12, 0x79616C6564, 0xE500000000000000, isUniquelyReferenced_nonNull_native);
    if (*(v1 + 56))
    {
      goto LABEL_5;
    }

    goto LABEL_4;
  }

  v8 = *(v1 + 16);
  v14 = &type metadata for Int;
  *&v13 = v8;
  sub_1000FEA30(&v13, v12);
  v9 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001EB278(v12, 0x6953676F4C78616DLL, 0xEA0000000000657ALL, v9);
  if ((*(v1 + 40) & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_3:
  if ((*(v1 + 56) & 1) == 0)
  {
LABEL_4:
    v3 = *(v1 + 48);
    v14 = &type metadata for UInt;
    *&v13 = v3;
    sub_1000FEA30(&v13, v12);
    v4 = swift_isUniquelyReferenced_nonNull_native();
    sub_1001EB278(v12, 0x746F687370616E73, 0xEC00000065707954, v4);
  }

LABEL_5:
  v5 = *(v1 + 57);
  v14 = &type metadata for Bool;
  LOBYTE(v13) = v5;
  sub_1000FEA30(&v13, v12);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1001EB278(v12, 0x74617453706D7564, 0xE900000000000065, v6);
  return v2;
}

uint64_t sub_100106890(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 88) = a1;
  return (_swift_task_switch)(sub_1001068B4, 0, 0);
}

uint64_t sub_1001068B4()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_lock);
  v1 = *(&async function pointer to dispatch thunk of DKLockActor.lock() + 1);
  v4 = (&async function pointer to dispatch thunk of DKLockActor.lock() + async function pointer to dispatch thunk of DKLockActor.lock());
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_100106968;

  return v4();
}

uint64_t sub_100106968()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return (_swift_task_switch)(sub_100106A64, 0, 0);
}

uint64_t sub_100106A64()
{
  v1 = v0[2];
  type metadata accessor for DockKitCoreUtils();
  v2 = static DockKitCoreUtils.allowedForBackgroundSecureTracking()();
  v0[5] = OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_logger;
  v3 = Logger.logObject.getter();
  if (v2)
  {
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Starting secure tracking activity", v5, 2u);
    }

    v6 = v0[2];

    v0[6] = *(v6 + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_secureTrackingManager);
    if (sub_100107B6C())
    {
      v0[7] = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_activity);
      v7 = swift_task_alloc();
      v0[8] = v7;
      *v7 = v0;
      v7[1] = sub_100106CC0;

      return sub_1000E56D8();
    }

    v15 = v0[3];
    type metadata accessor for DKLockActor();
    sub_100107B10();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v16;
  }

  else
  {
    v9 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v3, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&_mh_execute_header, v3, v9, "Ignoring secure tracking start request, not allowed.", v10, 2u);
    }

    v11 = v0[3];

    type metadata accessor for DKLockActor();
    sub_100107B10();
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
  }

  return (_swift_task_switch)(sub_100107B68, v12, v14);
}

uint64_t sub_100106CC0()
{
  v2 = *(*v1 + 64);
  v5 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = sub_100106F40;
  }

  else
  {
    v3 = sub_100106DD4;
  }

  return (_swift_task_switch)(v3, 0, 0);
}

uint64_t sub_100106DD4()
{
  if ((*(v0 + 88) & 1) == 0)
  {
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v1 = qword_1002B1CF0;
    v2 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_secureTrackingControlOnNotification);
    DeviceNotification.state.setter();

    v3 = [objc_opt_self() sharedInstance];
    v4 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID);
    v5 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_trackingWidgetExtensionBundleID + 8);
    v6 = String._bridgeToObjectiveC()();
    v7 = String._bridgeToObjectiveC()();
    [v3 reloadControlsForExtension:v6 kind:0 reason:v7];
  }

  v8 = *(v0 + 24);
  type metadata accessor for DKLockActor();
  sub_100107B10();
  v10 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100107B68, v10, v9);
}

uint64_t sub_100106F40()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 40);
  v3 = *(v0 + 16);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = *(v0 + 72);
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "Error starting secure tracking activity: %@", v7, 0xCu);
    sub_1000F1CD4(v8);
  }

  v10 = *(v0 + 48);

  sub_100107ECC();
  v11 = swift_task_alloc();
  *(v0 + 80) = v11;
  *v11 = v0;
  v11[1] = sub_1001070C8;
  v12 = *(v0 + 56);
  v13 = *(v0 + 88);

  return sub_1000E66BC(v13);
}

uint64_t sub_1001070C8()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return (_swift_task_switch)(sub_1001071C4, 0, 0);
}

uint64_t sub_1001071C4()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 24);
  type metadata accessor for DKLockActor();
  sub_100107B10();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100107B68, v4, v3);
}

uint64_t sub_100107254(char a1)
{
  *(v2 + 16) = v1;
  *(v2 + 48) = a1;
  return (_swift_task_switch)(sub_100107278, 0, 0);
}

uint64_t sub_100107278()
{
  v0[3] = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_lock);
  v1 = *(&async function pointer to dispatch thunk of DKLockActor.lock() + 1);
  v4 = (&async function pointer to dispatch thunk of DKLockActor.lock() + async function pointer to dispatch thunk of DKLockActor.lock());
  v2 = swift_task_alloc();
  v0[4] = v2;
  *v2 = v0;
  v2[1] = sub_10010732C;

  return v4();
}

uint64_t sub_10010732C()
{
  v1 = *(*v0 + 32);
  v3 = *v0;

  return (_swift_task_switch)(sub_100107428, 0, 0);
}

uint64_t sub_100107428()
{
  v1 = *(v0 + 16) + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping secure tracking activity", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_secureTrackingManager);
  if (sub_100107ECC())
  {
    v7 = *(*(v0 + 16) + OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_activity);
    v8 = swift_task_alloc();
    *(v0 + 40) = v8;
    *v8 = v0;
    v8[1] = sub_1001075D0;
    v9 = *(v0 + 48);

    return sub_1000E66BC(v9);
  }

  else
  {
    sub_100108230();
    v11 = *(v0 + 24);
    type metadata accessor for DKLockActor();
    sub_100107B10();
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return (_swift_task_switch)(sub_100107708, v13, v12);
  }
}

uint64_t sub_1001075D0()
{
  v1 = *v0;
  v2 = *(*v0 + 40);
  v7 = *v0;

  v3 = *(v1 + 24);
  type metadata accessor for DKLockActor();
  sub_100107B10();
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_100107708, v5, v4);
}

uint64_t sub_100107708()
{
  v1 = *(v0 + 24);
  dispatch thunk of DKLockActor.unlock()();
  v2 = *(v0 + 8);

  return v2();
}

id sub_100107768()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  Logger.init(subsystem:category:)();
  v3 = OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_activity;
  v4 = type metadata accessor for TrackingActivity();
  v5 = *(v4 + 48);
  v6 = *(v4 + 52);
  v7 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v7 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_assertion) = 0;
  *(v7 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activity) = 0;
  *(v7 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_activityStateUpdatesTask) = 0;
  *(v7 + OBJC_IVAR____TtC14dockaccessoryd16TrackingActivity_shouldSaveUserDismissal) = 1;
  *&v1[v3] = v7;
  v8 = OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_secureTrackingManager;
  *&v1[v8] = [objc_allocWithZone(type metadata accessor for SecureTrackingController()) init];
  v9 = OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_lock;
  type metadata accessor for DKLockActor();
  *&v1[v9] = DKLockActor.__allocating_init()();
  v10 = &v1[OBJC_IVAR____TtC14dockaccessoryd26TrackingActivityController_trackingWidgetExtensionBundleID];
  *v10 = 0xD00000000000003BLL;
  *(v10 + 1) = 0x8000000100231690;
  v12.receiver = v1;
  v12.super_class = ObjectType;
  return objc_msgSendSuper2(&v12, "init");
}

id sub_10010791C()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t type metadata accessor for TrackingActivityController()
{
  result = qword_1002A8D90;
  if (!qword_1002A8D90)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100107A58()
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

unint64_t sub_100107B10()
{
  result = qword_1002A8DA0;
  if (!qword_1002A8DA0)
  {
    type metadata accessor for DKLockActor();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A8DA0);
  }

  return result;
}

uint64_t sub_100107B6C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture];
  if ((v12 & 1) == 0)
  {
    v28 = v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture];
    v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture] = 1;
    v26 = *&v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataQueue];
    v27 = v9;
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    aBlock[4] = sub_10010BEA8;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100277D78;
    v14 = _Block_copy(aBlock);
    v25 = v0;
    static DispatchQoS.unspecified.getter();
    v29 = _swiftEmptyArrayStorage;
    sub_10010BE60(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v15 = v26;
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v2 + 8))(v5, v1);
    (*(v7 + 8))(v11, v27);

    v16 = swift_allocObject();
    v17 = v25;
    *(v16 + 16) = v25;
    v18 = objc_allocWithZone(type metadata accessor for RepeatingTimer());
    v19 = v17;
    v20 = v15;
    v21 = RepeatingTimer.init(interval:fireOnce:queue:_:)();
    v22 = *&v19[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer];
    *&v19[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer] = v21;

    v12 = v28;
  }

  return v12 ^ 1u;
}

uint64_t sub_100107ECC()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture];
  if (result == 1)
  {
    v22 = 1;
    v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture] = 0;
    v19 = *&v0[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataQueue];
    v20 = v9;
    v21 = v8;
    v13 = swift_allocObject();
    *(v13 + 16) = v0;
    aBlock[4] = sub_10010BE40;
    aBlock[5] = v13;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100147FC8;
    aBlock[3] = &unk_100277D28;
    v14 = _Block_copy(aBlock);
    v15 = v0;
    static DispatchQoS.unspecified.getter();
    v23 = _swiftEmptyArrayStorage;
    sub_10010BE60(&qword_1002A7150, &type metadata accessor for DispatchWorkItemFlags);
    sub_100095274(&unk_1002A6B60, qword_10023AE10);
    sub_100095BDC(&qword_1002A7160, &unk_1002A6B60, qword_10023AE10);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v14);
    (*(v2 + 8))(v5, v1);
    (*(v20 + 8))(v11, v21);

    v16 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer;
    v17 = *&v15[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer];
    if (v17)
    {
      v18 = v17;
      dispatch thunk of RepeatingTimer.cancel()();

      v17 = *&v15[v16];
    }

    *&v15[v16] = 0;

    v23 = 0;
    v24 = 1;
    swift_beginAccess();
    sub_100095274(&unk_1002A8EB0, &unk_10023DB98);
    DKThreadSafe.wrappedValue.setter();
    swift_endAccess();
    return v22;
  }

  return result;
}

void sub_100108230()
{
  v1 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v19 - v3;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v5 = qword_1002B1CF0;
  v6 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v7 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v7 + 4);

  v8 = *(v5 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v9 = *(v5 + v6);
  v10 = v8;

  os_unfair_lock_unlock(v9 + 4);

  if (v8)
  {
    type metadata accessor for TrackingStand();
    v11 = swift_dynamicCastClass();
    if (v11)
    {
      v12 = v11;
      v13 = type metadata accessor for TaskPriority();
      (*(*(v13 - 8) + 56))(v4, 1, 1, v13);
      v14 = swift_allocObject();
      v14[2] = 0;
      v14[3] = 0;
      v14[4] = v0;
      v14[5] = v12;
      v15 = v0;
      sub_1001B6410(0, 0, v4, &unk_10023DBE8, v14);

      return;
    }
  }

  v20 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&_mh_execute_header, v20, v16, "No connected accessory stand found", v17, 2u);
  }

  v18 = v20;
}

uint64_t sub_10010849C@<X0>(uint64_t a1@<X8>)
{
  result = TrackerOrientation.init(rawValue:)();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

id sub_1001084CC()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v2 = sub_100095274(&unk_1002A8EB0, &unk_10023DB98);
  v24 = *(v2 - 8);
  v25 = v2;
  v3 = *(v24 + 64);
  __chkstk_darwin(v2);
  v23 = v20 - v4;
  v22 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v22 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v22);
  v8 = v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  Logger.init(subsystem:category:)();
  v21 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataQueue;
  v13 = sub_100095B94(0, &qword_1002A6820, OS_dispatch_queue_ptr);
  v20[0] = "SecureTrackingManager";
  v20[1] = v13;
  static DispatchQoS.unspecified.getter();
  v28 = _swiftEmptyArrayStorage;
  sub_10010BE60(&qword_1002A7110, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100095274(&unk_1002A6830, &unk_10023AB20);
  sub_100095BDC(&qword_1002A7120, &unk_1002A6830, &unk_10023AB20);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v22);
  *&v0[v21] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v14 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_captureSession;
  *&v1[v14] = [objc_allocWithZone(AVCaptureSession) init];
  v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_startedSecureCapture] = 0;
  v15 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  type metadata accessor for DKLockActor();
  *&v1[v15] = DKLockActor.__allocating_init()();
  *&v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_lastKnownPortraitOrLandscapeOrientation] = 1;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState] = 0;
  *&v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_timer] = 0;
  v16 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController__lastMetadataTimestamp;
  v28 = 0;
  v29 = 1;
  sub_100095274(&qword_1002A8E40, &qword_10023DB90);
  v17 = v23;
  DKThreadSafe.init(wrappedValue:)();
  (*(v24 + 32))(&v1[v16], v17, v25);
  *&v1[OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataWatchdogTimeout] = 0x3FC999999999999ALL;
  v27.receiver = v1;
  v27.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v27, "init");
  sub_100108918();

  return v18;
}

void sub_100108918()
{
  v1 = v0;
  type metadata accessor for DockKitCoreUtils();
  if ((static DockKitCoreUtils.allowedForBackgroundSecureTracking()() & 1) == 0)
  {
    oslog = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, oslog, v42, "Ignoring secure tracking camera setup, not allowed.", v43, 2u);
    }

    v44 = oslog;
    goto LABEL_52;
  }

  sub_100095274(&qword_1002A8EF0, &qword_10023DBD8);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_10023AAC0;
  v3 = AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera;
  v4 = AVCaptureDeviceTypeBuiltInWideAngleMetadataCamera;
  *(v2 + 32) = AVCaptureDeviceTypeBuiltInUltraWideAngleMetadataCamera;
  *(v2 + 40) = v4;
  type metadata accessor for DeviceType(0);
  v5 = v3;
  v6 = v4;
  v7 = AVMediaTypeMetadataObject;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v69 = [objc_opt_self() discoverySessionWithDeviceTypes:isa mediaType:v7 position:2];

  v9 = [v69 devices];
  sub_100095B94(0, &qword_1002A8EF8, AVCaptureDevice_ptr);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_4;
    }

    goto LABEL_49;
  }

LABEL_48:
  if (!_CocoaArrayWrapper.endIndex.getter())
  {
LABEL_49:

    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 0;
      _os_log_impl(&_mh_execute_header, v60, v61, "frontVideoCaptureDevice is nil. Couldn't find an appropriate metadata camera from the discovery session", v62, 2u);
    }

    v44 = v69;
LABEL_52:

    return;
  }

LABEL_4:
  if ((v10 & 0xC000000000000001) != 0)
  {
    v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
    }

    v11 = *(v10 + 32);
  }

  v12 = v11;

  v13 = objc_allocWithZone(AVCaptureDeviceInput);
  v72 = 0;
  v14 = v12;
  v15 = [v13 initWithDevice:v14 error:&v72];
  if (v15)
  {
    v16 = v15;
    v17 = v72;

    v18 = [objc_allocWithZone(AVCaptureMetadataOutput) init];
    v19 = *(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_captureSession);
    if ([v19 canAddInput:v16])
    {
      [v19 addInput:v16];
    }

    v66 = v1;
    if ([v19 canAddOutput:{v18, v63}])
    {
      [v19 addOutput:v18];
    }

    v64 = v18;
    v65 = v16;
    v67 = v14;
    v10 = [v18 availableMetadataObjectTypes];
    type metadata accessor for ObjectType(0);
    v63 = v20;
    v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v22 = *(v21 + 16);
    if (v22)
    {
      v23 = 0;
      v70 = *(v21 + 16);
      v68 = v22 - 1;
      v24 = _swiftEmptyArrayStorage;
      do
      {
        v25 = v23;
        while (1)
        {
          if (v25 >= *(v21 + 16))
          {
            __break(1u);
            goto LABEL_48;
          }

          v26 = *(v21 + 32 + 8 * v25);
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v28;
          if (v27 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v1 == v29)
          {
            break;
          }

          v31 = _stringCompareWithSmolCheck(_:_:expecting:)();
          v32 = v26;

          if (v31)
          {
            goto LABEL_28;
          }

          v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v1 = v34;
          v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v10 = v36;
          if (v33 == v35 && v1 == v36)
          {
            goto LABEL_27;
          }

          v37 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v37)
          {
            goto LABEL_28;
          }

          ++v25;

          if (v70 == v25)
          {
            goto LABEL_41;
          }
        }

        v38 = v26;
LABEL_27:

LABEL_28:
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v72 = v24;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1001D7168(0, v24[2] + 1, 1);
          v24 = v72;
        }

        v41 = v24[2];
        v40 = v24[3];
        v10 = v41 + 1;
        if (v41 >= v40 >> 1)
        {
          sub_1001D7168((v40 > 1), v41 + 1, 1);
          v24 = v72;
        }

        v23 = v25 + 1;
        v24[2] = v10;
        v24[v41 + 4] = v26;
      }

      while (v68 != v25);
    }

    else
    {
      v24 = _swiftEmptyArrayStorage;
    }

LABEL_41:

    if (v24[2])
    {
      v49 = Array._bridgeToObjectiveC()().super.isa;

      [v64 setMetadataObjectTypes:v49];

      [v64 setMetadataObjectsDelegate:v66 queue:*(v66 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_metadataQueue)];
    }

    else
    {

      v50 = v64;
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v72 = v54;
        *v53 = 136315138;
        v55 = [v50 availableMetadataObjectTypes];
        static Array._unconditionallyBridgeFromObjectiveC(_:)();

        v56 = Array.description.getter();
        v58 = v57;

        v59 = sub_1000952D4(v56, v58, &v72);

        *(v53 + 4) = v59;
        _os_log_impl(&_mh_execute_header, v51, v52, "No face or body metadata objects available! %s", v53, 0xCu);
        sub_100095808(v54);
      }

      else
      {
      }
    }
  }

  else
  {
    v45 = v72;
    _convertNSErrorToError(_:)();

    swift_willThrow();

    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&_mh_execute_header, v46, v47, "No input found", v48, 2u);
    }
  }
}

uint64_t sub_1001091FC(uint64_t a1)
{
  v2 = sub_100095274(&unk_1002A8EB0, &unk_10023DB98);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v13 = v12;
  (*(v8 + 8))(v11, v7);
  v14 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController__lastMetadataTimestamp;
  swift_beginAccess();
  (*(v3 + 16))(v6, a1 + v14, v2);
  DKThreadSafe.wrappedValue.getter();
  result = (*(v3 + 8))(v6, v2);
  if ((v17 & 1) == 0 && v13 - v16 > 0.2)
  {
    sub_100108230();
    v18 = 0;
    v19 = 1;
    swift_beginAccess();
    DKThreadSafe.wrappedValue.setter();
    return swift_endAccess();
  }

  return result;
}

void sub_100109428(uint64_t a1)
{
  [*(a1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_captureSession) stopRunning];
  sub_100108230();
  *(a1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState) = 0;
  if (qword_1002A6780 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v2 = qword_1002B1CF0;
    v3 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v4 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v4 + 4);

    v5 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);
    v6 = *(v5 + 16);
    if (!v6)
    {
      break;
    }

    v7 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
    v8 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_foregroundAppIDs);

    swift_beginAccess();
    v9 = 0;
    v10 = (v5 + 40);
    while (v9 < *(v5 + 16))
    {
      if (*(*(v2 + v7) + 16))
      {
        v12 = *(v10 - 1);
        v11 = *v10;

        sub_10016D4D0(v12, v11);
        LOBYTE(v12) = v13;

        if (v12)
        {

          goto LABEL_12;
        }
      }

      ++v9;
      v10 += 2;
      if (v6 == v9)
      {

        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_10:
  v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_dockKitApps;
  swift_beginAccess();
  v15 = *(v2 + v14);

  v16 = cameracaptureIdentifier.getter();
  if (*(v15 + 16))
  {
    sub_10016D4D0(v16, v17);
    v19 = v18;

    if (v19)
    {
LABEL_12:
      v20 = *(v2 + v3);

      os_unfair_lock_unlock(v20 + 4);

      return;
    }
  }

  else
  {
  }

  v21 = *(v2 + v3);

  os_unfair_lock_unlock(v21 + 4);

  v22 = *(v2 + v3);

  os_unfair_lock_lock(v22 + 4);

  v23 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v24 = *(v2 + v3);
  v25 = v23;

  os_unfair_lock_unlock(v24 + 4);

  sub_10018A9DC(0, v23);
}

void sub_1001096BC(uint64_t a1)
{
  v3 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v22 - v5;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v7 = qword_1002B1CF0;
  v8 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v9 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v9 + 4);

  v10 = *(v7 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v11 = *(v7 + v8);
  v12 = v10;

  os_unfair_lock_unlock(v11 + 4);

  if (v10)
  {
    type metadata accessor for TrackingStand();
    v13 = swift_dynamicCastClass();
    if (v13)
    {
      v14 = v13;
      v15 = sub_100109944();
      v16 = type metadata accessor for TaskPriority();
      (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
      v17 = swift_allocObject();
      v17[2] = 0;
      v17[3] = 0;
      v17[4] = v1;
      v17[5] = v14;
      v17[6] = a1;
      v17[7] = v15;
      v18 = v1;

      sub_1001B6410(0, 0, v6, &unk_10023DBB0, v17);

      return;
    }
  }

  v23 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&_mh_execute_header, v23, v19, "No connected accessory stand found", v20, 2u);
  }

  v21 = v23;
}

uint64_t sub_100109944()
{
  v1 = v0;
  sub_100095274(&qword_1002A8EE8, &unk_10023DBC8);
  swift_initStaticObject();
  v2 = sub_10010B89C();
  v3 = TrackerOrientation.rawValue.getter();
  if (v3 == TrackerOrientation.rawValue.getter() || (v4 = TrackerOrientation.rawValue.getter(), v4 == TrackerOrientation.rawValue.getter()) || (v5 = TrackerOrientation.rawValue.getter(), v5 == TrackerOrientation.rawValue.getter()) || (v6 = TrackerOrientation.rawValue.getter(), v6 == TrackerOrientation.rawValue.getter()))
  {
    *(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_lastKnownPortraitOrLandscapeOrientation) = v2;
  }

  return *(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_lastKnownPortraitOrLandscapeOrientation);
}

uint64_t sub_100109A18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[8] = a6;
  v7[9] = a7;
  v7[6] = a4;
  v7[7] = a5;
  v8 = *(*(sub_100095274(&unk_1002A8EC0, &qword_10023DBB8) - 8) + 64) + 15;
  v7[10] = swift_task_alloc();
  v9 = type metadata accessor for DKIntelligentTrackingCommand.VelocityCommand();
  v7[11] = v9;
  v10 = *(v9 - 8);
  v7[12] = v10;
  v11 = *(v10 + 64) + 15;
  v7[13] = swift_task_alloc();

  return (_swift_task_switch)(sub_100109B14, 0, 0);
}

uint64_t sub_100109B14()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  v0[14] = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  v0[15] = *(v1 + v2);
  v3 = *(&async function pointer to dispatch thunk of DKLockActor.lockIfAvailable() + 1);
  v6 = (&async function pointer to dispatch thunk of DKLockActor.lockIfAvailable() + async function pointer to dispatch thunk of DKLockActor.lockIfAvailable());

  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_100109BDC;

  return v6();
}

uint64_t sub_100109BDC(char a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *v1;

  if (a1)
  {
    v7 = *(&async function pointer to dispatch thunk of TrackingStand.trackSecureMetadata(secureMetadata:camera:orientation:) + 1);
    v18 = &async function pointer to dispatch thunk of TrackingStand.trackSecureMetadata(secureMetadata:camera:orientation:) + async function pointer to dispatch thunk of TrackingStand.trackSecureMetadata(secureMetadata:camera:orientation:);
    v8 = swift_task_alloc();
    v3[17] = v8;
    *v8 = v6;
    v8[1] = sub_100109D9C;
    v10 = v3[9];
    v9 = v3[10];
    v13 = v3 + 7;
    v12 = v3[7];
    v11 = v13[1];

    return (v18)(v9, v11, 0, v10);
  }

  else
  {
    v15 = v3[13];
    v16 = v3[10];

    v17 = *(v6 + 8);

    return v17();
  }
}

uint64_t sub_100109D9C()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return (_swift_task_switch)(sub_100109E98, 0, 0);
}

uint64_t sub_100109E98()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_100095C84(v3, &unk_1002A8EC0, &qword_10023DBB8);
  }

  else
  {
    v4 = v0[13];
    v5 = v0[6];
    v6 = v0[7];
    (*(v2 + 32))(v4, v3, v1);
    sub_10010A1E0(v4, v6);
    (*(v0[12] + 8))(v0[13], v0[11]);
  }

  v0[18] = *(v0[6] + v0[14]);
  type metadata accessor for DKLockActor();
  sub_10010BE60(&qword_1002A8DA0, &type metadata accessor for DKLockActor);

  v8 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10010A164, v8, v7);
}

uint64_t sub_10010A164()
{
  v1 = v0[18];
  dispatch thunk of DKLockActor.unlock()();

  v2 = v0[13];
  v3 = v0[10];

  v4 = v0[1];

  return v4();
}

void sub_10010A1E0(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for ActuatorLimit();
  v75 = *(v3 - 8);
  v4 = *(v75 + 64);
  __chkstk_darwin(v3);
  v6 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = type metadata accessor for DKVector3();
  v61 = *(v62 - 8);
  v7 = *(v61 + 64);
  __chkstk_darwin(v62);
  v76 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  DKIntelligentTrackingCommand.VelocityCommand.velocity.getter();
  v59 = a2;
  v9 = dispatch thunk of DockCoreAccessory.systems.getter();
  v10 = v9;
  if (v9 >> 62)
  {
    goto LABEL_39;
  }

  v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11)
  {
LABEL_3:
    v12 = 0;
    v13 = v10 & 0xC000000000000001;
    v66 = v10 & 0xFFFFFFFFFFFFFF8;
    v65 = v10 + 32;
    v72 = v75 + 16;
    v73 = (v75 + 8);
    v68 = xmmword_10023DB20;
    v71 = v3;
    v63 = v10;
    v56 = v11;
    v55 = v10 & 0xC000000000000001;
    while (1)
    {
      while (1)
      {
        if (v13)
        {
          v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (v12 >= *(v66 + 16))
          {
            goto LABEL_38;
          }

          v14 = *(v65 + 8 * v12);
        }

        v15 = v14;
        if (__OFADD__(v12++, 1))
        {
          goto LABEL_37;
        }

        System.type.getter();
        v17 = SystemType.rawValue.getter();
        if (v17 == SystemType.rawValue.getter())
        {
          type metadata accessor for ActuationController();
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            break;
          }
        }

        if (v12 == v11)
        {
          goto LABEL_40;
        }
      }

      v19 = v18;
      v69 = v15;
      v67 = v19;
      v20 = v70;
      v21 = ActuationController.getActuatorLimits()();
      if (v20)
      {
        break;
      }

      v22 = v21;
      v64 = v12;
      v70 = 0;
      v23 = *(v21 + 16);
      if (v23)
      {
        type metadata accessor for Actuator();
        v24 = 0;
        v74 = v22 + ((*(v75 + 80) + 32) & ~*(v75 + 80));
        do
        {
          if (v24 >= *(v22 + 16))
          {
            __break(1u);
LABEL_37:
            __break(1u);
LABEL_38:
            __break(1u);
LABEL_39:
            v11 = _CocoaArrayWrapper.endIndex.getter();
            if (!v11)
            {
              goto LABEL_40;
            }

            goto LABEL_3;
          }

          (*(v75 + 16))(v6, v74 + *(v75 + 72) * v24, v3);
          DKVector3.x.getter();
          v26 = v25;
          v10 = ActuatorLimit.name.getter();
          v28 = v27;
          if (static Actuator.Pitch.getter() == v10 && v29 == v28)
          {

LABEL_21:

            DKVector3.y.getter();
            goto LABEL_22;
          }

          v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v30)
          {
            v3 = v71;
            goto LABEL_21;
          }

          if (static Actuator.Roll.getter() == v10 && v34 == v28)
          {

            v3 = v71;
          }

          else
          {
            v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v31 = v26;
            v3 = v71;
            if ((v10 & 1) == 0)
            {
              goto LABEL_22;
            }
          }

          DKVector3.z.getter();
LABEL_22:
          v32 = fabs(v31);
          ActuatorLimit.maxSpeed.getter();
          if (v33 < v32)
          {

            v50 = type metadata accessor for DockKitIDSMessagingError();
            sub_10010BE60(&qword_1002A8EE0, &type metadata accessor for DockKitIDSMessagingError);
            swift_allocError();
            (*(*(v50 - 8) + 104))(v51, enum case for DockKitIDSMessagingError.argumentNotNormalized(_:), v50);
            swift_willThrow();
            v52 = v69;

            (*v73)(v6, v3);
            (*(v61 + 8))(v76, v62);
            return;
          }

          ++v24;
          (*v73)(v6, v3);
        }

        while (v23 != v24);
      }

      v35 = v69;

      sub_100095274(&unk_1002A8ED0, &qword_10023DBC0);
      inited = swift_initStackObject();
      *(inited + 16) = v68;
      type metadata accessor for Actuator();
      *(inited + 32) = static Actuator.Yaw.getter();
      *(inited + 40) = v37;
      *(inited + 48) = static Actuator.Pitch.getter();
      *(inited + 56) = v38;
      *(inited + 64) = static Actuator.Roll.getter();
      *(inited + 72) = v39;
      sub_100095274(&qword_1002A89B8, &qword_10023D910);
      v40 = swift_allocObject();
      *(v40 + 16) = v68;
      DKVector3.x.getter();
      *(v40 + 32) = v41;
      DKVector3.y.getter();
      *(v40 + 40) = v42;
      DKVector3.z.getter();
      *(v40 + 48) = v43;
      v44 = dispatch thunk of DockCoreAccessory.info.getter();
      if (qword_1002A66E0 != -1)
      {
        swift_once();
      }

      LODWORD(v74) = dword_1002B1B80;
      v58 = qword_1002B1B88;
      v57 = unk_1002B1B90;
      v45 = v35;
      v46 = System.name.getter();
      v48 = v47;

      v49 = v60;
      sub_1001189D4(v44, v74, v58, v57, v46, v48, inited, v40, v49);

      swift_setDeallocating();
      swift_arrayDestroy();
      v3 = v71;
      v10 = v63;
      v11 = v56;
      v12 = v64;
      v13 = v55;
      if (v64 == v56)
      {
        goto LABEL_40;
      }
    }

    (*(v61 + 8))(v76, v62);

    v53 = v69;
  }

  else
  {
LABEL_40:

    (*(v61 + 8))(v76, v62);
  }
}

uint64_t sub_10010A988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[6] = a4;
  v5[7] = a5;
  v6 = *(*(type metadata accessor for DKVector3() - 8) + 64) + 15;
  v5[8] = swift_task_alloc();
  v7 = type metadata accessor for DKIntelligentTrackingCommand.VelocityCommand();
  v5[9] = v7;
  v8 = *(v7 - 8);
  v5[10] = v8;
  v9 = *(v8 + 64) + 15;
  v5[11] = swift_task_alloc();

  return (_swift_task_switch)(sub_10010AA74, 0, 0);
}

uint64_t sub_10010AA74()
{
  v1 = v0[6];
  v2 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  v0[12] = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingTaskLock;
  v0[13] = *(v1 + v2);
  v3 = *(&async function pointer to dispatch thunk of DKLockActor.lockIfAvailable() + 1);
  v6 = (&async function pointer to dispatch thunk of DKLockActor.lockIfAvailable() + async function pointer to dispatch thunk of DKLockActor.lockIfAvailable());

  v4 = swift_task_alloc();
  v0[14] = v4;
  *v4 = v0;
  v4[1] = sub_10010AB3C;

  return v6();
}

uint64_t sub_10010AB3C(char a1)
{
  v2 = *(*v1 + 112);
  v3 = *(*v1 + 104);
  v5 = *v1;
  *(*v1 + 136) = a1;

  return (_swift_task_switch)(sub_10010AC5C, 0, 0);
}

uint64_t sub_10010AC5C()
{
  v1 = *(v0 + 88);
  v2 = *(v0 + 64);
  if (*(v0 + 136) == 1)
  {
    v3 = *(v0 + 48);
    v4 = *(v0 + 56);
    v5 = *(v0 + 64);
    DKVector3.init(x:y:z:)();
    DKIntelligentTrackingCommand.VelocityCommand.init(velocity:)();
    sub_10010A1E0(v1, v4);
    v9 = *(&async function pointer to dispatch thunk of TrackingStand.resetIntelligentTrackingSecure() + 1);
    v12 = (&async function pointer to dispatch thunk of TrackingStand.resetIntelligentTrackingSecure() + async function pointer to dispatch thunk of TrackingStand.resetIntelligentTrackingSecure());
    v10 = swift_task_alloc();
    *(v0 + 120) = v10;
    *v10 = v0;
    v10[1] = sub_10010AEC0;
    v11 = *(v0 + 56);

    return v12();
  }

  else
  {
    v6 = *(v0 + 88);

    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10010AEC0()
{
  v1 = *(*v0 + 120);
  v3 = *v0;

  return (_swift_task_switch)(sub_10010AFBC, 0, 0);
}

uint64_t sub_10010AFBC()
{
  v0[16] = *(v0[6] + v0[12]);
  type metadata accessor for DKLockActor();
  sub_10010BE60(&qword_1002A8DA0, &type metadata accessor for DKLockActor);

  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return (_swift_task_switch)(sub_10010B094, v2, v1);
}

uint64_t sub_10010B094()
{
  v1 = *(v0 + 128);
  dispatch thunk of DKLockActor.unlock()();

  return (_swift_task_switch)(sub_10010B104, 0, 0);
}

uint64_t sub_10010B104()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = v0[11];
  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

void sub_10010B188(char a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v28 - v6;
  v8 = type metadata accessor for Errors();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v8);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v28 - v14;
  sub_1000A090C(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100095C84(v7, &unk_1002A6F30, &unk_10023C4D0);
    if ((a1 & 1) == 0)
    {
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "Unable to set actuator velocities!", v18, 2u);
      }
    }
  }

  else
  {
    (*(v9 + 32))(v15, v7, v8);
    (*(v9 + 16))(v13, v15, v8);
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v29 = v28;
      *v21 = 136315138;
      sub_10010BE60(&qword_1002A6F50, &type metadata accessor for Errors);
      v22 = Error.localizedDescription.getter();
      v24 = v23;
      v25 = *(v9 + 8);
      v25(v13, v8);
      v26 = sub_1000952D4(v22, v24, &v29);

      *(v21 + 4) = v26;
      _os_log_impl(&_mh_execute_header, v19, v20, "Error setting actuation velocity: %s", v21, 0xCu);
      sub_100095808(v28);

      v25(v15, v8);
    }

    else
    {

      v27 = *(v9 + 8);
      v27(v13, v8);
      v27(v15, v8);
    }
  }
}

uint64_t type metadata accessor for SecureTrackingController()
{
  result = qword_1002A8E28;
  if (!qword_1002A8E28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10010B68C()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10010B794();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10010B794()
{
  if (!qword_1002A8E38)
  {
    sub_10009589C(&qword_1002A8E40, &qword_10023DB90);
    v0 = type metadata accessor for DKThreadSafe();
    if (!v1)
    {
      atomic_store(v0, &qword_1002A8E38);
    }
  }
}

uint64_t sub_10010B89C()
{
  v1 = v0;
  if (*(v0 + 20) == 1)
  {
    LODWORD(out_token) = -1;
    v2 = *(v0 + 24);
    v3 = *(v0 + 32);
    v4 = String.utf8CString.getter();
    v5 = notify_register_check((v4 + 32), &out_token);

    if (v5)
    {
      if (*(v0 + 20))
      {
        return *(v0 + 40);
      }
    }

    else
    {
      *(v0 + 16) = out_token;
      *(v0 + 20) = 0;
    }
  }

  v7 = *(v0 + 16);
  v8 = (v0 + 40);
  v9 = *(v0 + 56);
  v12 = (*(v1 + 48))(v1 + 40);
  notify_get_state(v7, &v12);
  v10 = *(v1 + 72);
  (*(v1 + 64))(&out_token, v12);
  if (v14)
  {
    p_out_token = v8;
  }

  else
  {
    p_out_token = &out_token;
  }

  return *p_out_token;
}

void sub_10010B9A0(unint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Date.now.getter();
  Date.timeIntervalSinceReferenceDate.getter();
  v10 = v9;
  (*(v5 + 8))(v8, v4);
  v22[4] = v10;
  v23 = 0;
  swift_beginAccess();
  sub_100095274(&unk_1002A8EB0, &unk_10023DB98);
  DKThreadSafe.wrappedValue.setter();
  swift_endAccess();
  sub_1001096BC(a1);
  if (a1 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (v11)
  {
    v12 = 2;
  }

  else
  {
    v12 = 1;
  }

  v13 = OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState;
  v14 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState);
  v15 = TrackerStateEvent.rawValue.getter();
  if (v15 != TrackerStateEvent.rawValue.getter())
  {
    *(v2 + v13) = v12;
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v16 = qword_1002B1CF0;
    v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v18 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v18 + 4);

    v19 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
    v20 = *(v16 + v17);
    v21 = v19;

    os_unfair_lock_unlock(v20 + 4);

    sub_10018A9DC(v12, v19);
  }
}

uint64_t sub_10010BBDC()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_10010BC2C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_1000A139C;

  return sub_100109A18(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10010BD00()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10010BD48(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10009862C;

  return sub_10010A988(a1, v4, v5, v7, v6);
}

uint64_t sub_10010BE08()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10010BE48(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10010BE60(unint64_t *a1, void (*a2)(uint64_t))
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

id sub_10010BEA8()
{
  v1 = *(v0 + 16);
  result = [*(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_captureSession) startRunning];
  *(v1 + OBJC_IVAR____TtC14dockaccessoryd24SecureTrackingController_trackingState) = 1;
  return result;
}

uint64_t sub_10010BF08(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEA0000000000676ELL;
  v3 = 0x6972696150746F6ELL;
  v4 = a1;
  v5 = 0xE700000000000000;
  v6 = 0x676E6972696170;
  if (a1 != 5)
  {
    v6 = 0x72756769666E6F63;
    v5 = 0xEB00000000676E69;
  }

  v7 = 0x46676E6974696177;
  v8 = 0xEE0068747541726FLL;
  if (a1 != 3)
  {
    v7 = 0x7A69726F68747561;
    v8 = 0xEB00000000676E69;
  }

  if (a1 <= 4u)
  {
    v6 = v7;
    v5 = v8;
  }

  v9 = 0x6E69686372616573;
  v10 = 0xE900000000000067;
  if (a1 != 1)
  {
    v9 = 0x69746164696C6176;
    v10 = 0xEA0000000000676ELL;
  }

  if (!a1)
  {
    v9 = 0x6972696150746F6ELL;
    v10 = 0xEA0000000000676ELL;
  }

  if (a1 <= 2u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v6;
  }

  if (v4 <= 2)
  {
    v12 = v10;
  }

  else
  {
    v12 = v5;
  }

  if (a2 > 2u)
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v2 = 0xE700000000000000;
        v3 = 0x676E6972696170;
        goto LABEL_30;
      }

      v3 = 0x72756769666E6F63;
    }

    else
    {
      if (a2 == 3)
      {
        v3 = 0x46676E6974696177;
        v2 = 0xEE0068747541726FLL;
        goto LABEL_30;
      }

      v3 = 0x7A69726F68747561;
    }

    v2 = 0xEB00000000676E69;
    goto LABEL_30;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v3 = 0x6E69686372616573;
      v2 = 0xE900000000000067;
    }

    else
    {
      v3 = 0x69746164696C6176;
    }
  }

LABEL_30:
  if (v11 == v3 && v12 == v2)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

Swift::Int sub_10010C130()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10010C274()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_id;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 32);
  v4 = *(v0 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 40);
  sub_1000A0D2C(*(v0 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 8), *(v0 + OBJC_IVAR____TtC14dockaccessoryd21AccessoryPairingToken_setupPayload + 16));
  sub_1000A0D2C(v3, v4);
  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AccessoryPairingToken()
{
  result = qword_1002A8F40;
  if (!qword_1002A8F40)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10010C390()
{
  result = type metadata accessor for UUID();
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

uint64_t sub_10010C45C()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_10010C594@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10010CE78(*a1);
  *a2 = result;
  return result;
}

void sub_10010C5C4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0x6972696150746F6ELL;
  v4 = 0xE700000000000000;
  v5 = 0x676E6972696170;
  if (v2 != 5)
  {
    v5 = 0x72756769666E6F63;
    v4 = 0xEB00000000676E69;
  }

  v6 = 0xEE0068747541726FLL;
  v7 = 0x46676E6974696177;
  if (v2 != 3)
  {
    v7 = 0x7A69726F68747561;
    v6 = 0xEB00000000676E69;
  }

  if (*v1 <= 4u)
  {
    v5 = v7;
    v4 = v6;
  }

  v8 = 0xE900000000000067;
  v9 = 0x6E69686372616573;
  if (v2 != 1)
  {
    v9 = 0x69746164696C6176;
    v8 = 0xEA0000000000676ELL;
  }

  if (*v1)
  {
    v3 = v9;
  }

  else
  {
    v8 = 0xEA0000000000676ELL;
  }

  if (*v1 <= 2u)
  {
    v10 = v3;
  }

  else
  {
    v10 = v5;
  }

  if (*v1 <= 2u)
  {
    v11 = v8;
  }

  else
  {
    v11 = v4;
  }

  *a1 = v10;
  a1[1] = v11;
}

uint64_t sub_10010C6C4()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002A8F00);
  sub_100093DE8(v0, qword_1002A8F00);
  return Logger.init(subsystem:category:)();
}

id sub_10010C764()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DKProxManager();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10010C888(void *a1)
{
  v2 = v1;
  if (qword_1002A66D0 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100093DE8(v4, qword_1002A8F00);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    *(v8 + 4) = v5;
    *v9 = v5;
    v10 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "SBS did deactivate service: %{public}@", v8, 0xCu);
    sub_100095C84(v9, &unk_1002A6F60, &unk_10023C4E0);
  }

  v11 = OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_delegate;
  swift_beginAccess();
  sub_10010CE08(v2 + v11, v20);
  if (v21)
  {
    sub_1000A097C(v20, v17);
    sub_100095C84(v20, &unk_1002A9100, &qword_10023D030);
    v12 = v18;
    v13 = v19;
    sub_1000A09E0(v17, v18);
    (*(v13 + 16))(v12, v13);
    sub_100095808(v17);
  }

  else
  {
    sub_100095C84(v20, &unk_1002A9100, &qword_10023D030);
  }

  v14 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_discoveryTxn);

  sub_1001059EC();

  v15 = *(v2 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_proxCard);
  *(v2 + OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_proxCard) = 0;
}

uint64_t getEnumTagSinglePayload for ProxPairingState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ProxPairingState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10010CCE0()
{
  result = qword_1002A90F8;
  if (!qword_1002A90F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1002A90F8);
  }

  return result;
}

uint64_t sub_10010CD34()
{
  v1 = OBJC_IVAR____TtC14dockaccessoryd13DKProxManager_delegate;
  swift_beginAccess();
  sub_10010CE08(v0 + v1, v8);
  if (!v9)
  {
    return sub_100095C84(v8, &unk_1002A9100, &qword_10023D030);
  }

  sub_1000A097C(v8, v5);
  sub_100095C84(v8, &unk_1002A9100, &qword_10023D030);
  v2 = v6;
  v3 = v7;
  sub_1000A09E0(v5, v6);
  (*(v3 + 8))(v2, v3);
  return sub_100095808(v5);
}

uint64_t sub_10010CE08(uint64_t a1, uint64_t a2)
{
  v4 = sub_100095274(&unk_1002A9100, &qword_10023D030);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_10010CE78(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100274D88, v2);

  if (v3 >= 7)
  {
    return 7;
  }

  else
  {
    return v3;
  }
}

void sub_10010CEC4(void *a1)
{
  if (qword_1002A66D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100093DE8(v2, qword_1002A8F00);
  v3 = a1;
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    *v5 = 138543362;
    *(v5 + 4) = v3;
    *v6 = v3;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, oslog, v4, "SBS did activate service: %{public}@", v5, 0xCu);
    sub_100095C84(v6, &unk_1002A6F60, &unk_10023C4E0);
  }
}

void sub_10010D010(void *a1, uint64_t a2)
{
  if (a2)
  {
    if (qword_1002A66D0 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100093DE8(v3, qword_1002A8F00);
    v4 = a1;
    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v6 = 138543618;
      *(v6 + 4) = v4;
      *v7 = v4;
      *(v6 + 12) = 2082;
      swift_getErrorValue();
      v9 = v4;
      v10 = Error.localizedDescription.getter();
      v12 = sub_1000952D4(v10, v11, &v20);

      *(v6 + 14) = v12;
      _os_log_impl(&_mh_execute_header, oslog, v5, "SBS invalidated service: %{public}@ with error: %{public}s", v6, 0x16u);
      sub_100095C84(v7, &unk_1002A6F60, &unk_10023C4E0);

      sub_100095808(v8);

      return;
    }
  }

  else
  {
    if (qword_1002A66D0 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100093DE8(v13, qword_1002A8F00);
    v14 = a1;
    oslog = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138543362;
      *(v16 + 4) = v14;
      *v17 = v14;
      v18 = v14;
      _os_log_impl(&_mh_execute_header, oslog, v15, "SBS invalidated service: %{public}@", v16, 0xCu);
      sub_100095C84(v17, &unk_1002A6F60, &unk_10023C4E0);
    }
  }
}

void sub_10010D324(uint64_t a1, NSString a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    a2 = String._bridgeToObjectiveC()();
  }

  v5 = a2;
  (*(a4 + 16))(a4);
}

uint64_t sub_10010D388()
{
  v0 = type metadata accessor for Logger();
  sub_100093D84(v0, qword_1002A9110);
  sub_100093DE8(v0, qword_1002A9110);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10010D400()
{
  result = getpid();
  dword_1002B1B80 = result;
  qword_1002B1B88 = 0xD000000000000018;
  unk_1002B1B90 = 0x800000010022E6B0;
  return result;
}

uint64_t sub_10010D498@<X0>(void *a1@<X8>)
{
  v2 = type metadata accessor for Logger();
  v46 = *(v2 - 8);
  v47 = v2;
  v3 = *(v46 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v42 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = &v42 - v7;
  v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v42 - v14;
  v16 = type metadata accessor for Errors();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v18(v15, 1, 1, v16);
  v19 = [objc_opt_self() currentConnection];
  if (!v19)
  {
    sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
    *v13 = 0xD000000000000017;
    *(v13 + 1) = 0x800000010022FA50;
    (*(v17 + 104))(v13, enum case for Errors.XPCNil(_:), v16);
    v18(v13, 0, 1, v16);
    sub_1000A089C(v13, v15);
    v27 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v15, a1 + *(v27 + 24));
    a1[2] = 0;
    *a1 = 0;
LABEL_13:
    a1[1] = 0;
    return result;
  }

  v20 = v19;
  v45 = v18;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v21 = sub_10019B91C(v20);
  if (!v22)
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v28 = v47;
    v29 = sub_100093DE8(v47, qword_1002A9110);
    (*(v46 + 16))(v6, v29, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v42 = a1;
      *v32 = 0;
      _os_log_impl(&_mh_execute_header, v30, v31, "Failed fetching App ID from connection", v32, 2u);
      a1 = v42;
    }

    (*(v46 + 8))(v6, v47);
    sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
    *v13 = 0xD000000000000026;
    *(v13 + 1) = 0x800000010022FA70;
    (*(v17 + 104))(v13, enum case for Errors.NotFound(_:), v16);
    v45(v13, 0, 1, v16);
    sub_1000A089C(v13, v15);
    v33 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v15, a1 + *(v33 + 24));
    a1[2] = 0;
    *a1 = v20;
    goto LABEL_13;
  }

  v43 = v21;
  v44 = v22;
  v23 = sub_10011C77C(v20);
  v24 = v45;
  if (v23)
  {
    sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
    v25 = type metadata accessor for DKXPCClientApplication(0);
    result = v24(a1 + *(v25 + 24), 1, 1, v16);
  }

  else
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v34 = v47;
    v35 = sub_100093DE8(v47, qword_1002A9110);
    (*(v46 + 16))(v8, v35, v34);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v42 = a1;
      *v38 = 0;
      _os_log_impl(&_mh_execute_header, v36, v37, "camera TCC missing", v38, 2u);
      a1 = v42;
    }

    (*(v46 + 8))(v8, v47);
    sub_100095C84(v15, &unk_1002A6F30, &unk_10023C4D0);
    *v13 = 0xD000000000000012;
    *(v13 + 1) = 0x8000000100231B90;
    (*(v17 + 104))(v13, enum case for Errors.CameraTCCMissing(_:), v16);
    v45(v13, 0, 1, v16);
    sub_1000A089C(v13, v15);
    v39 = type metadata accessor for DKXPCClientApplication(0);
    result = sub_1000A089C(v15, a1 + *(v39 + 24));
  }

  v41 = v43;
  v40 = v44;
  *a1 = v20;
  a1[1] = v41;
  a1[2] = v40;
  return result;
}

void sub_10010DB24(void *a1, int a2, void *aBlock, void *a4)
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  sub_10011CCC0(v7, v6, a4);
  _Block_release(v6);
  _Block_release(v6);
}

void sub_10010DBB8(void *a1, int a2, void *aBlock, void (*a4)(void))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4();
  _Block_release(v6);
  _Block_release(v6);
}

void sub_10010DC4C(uint64_t a1, char a2, char *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v99 = a4;
  v100 = a5;
  v101 = a3;
  v98 = a1;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v90 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  v16 = __chkstk_darwin(v13);
  v18 = &v90 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v90 - v19;
  if ((a2 & 1) == 0)
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v38 = sub_100093DE8(v8, qword_1002A9110);
    (*(v9 + 16))(v12, v38, v8);
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      _os_log_impl(&_mh_execute_header, v39, v40, "Animator callback, but not connected. Ignoring", v41, 2u);
    }

    (*(v9 + 8))(v12, v8);
    return;
  }

  if (qword_1002A6780 != -1)
  {
LABEL_67:
    swift_once();
  }

  v21 = qword_1002B1CF0;
  v22 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v23 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v23 + 4);

  v24 = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v25 = *(v21 + v22);
  v26 = v24;

  os_unfair_lock_unlock(v25 + 4);

  if (!v24)
  {
    return;
  }

  v97 = v26;
  v93 = a6;
  v92 = v21;
  v27 = *(v21 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
  v94 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
  v28 = *&v27[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
  v95 = v27;
  v29 = v27;
  v30 = v28;
  OS_dispatch_semaphore.wait()();

  v31 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
  swift_beginAccess();
  *&v96 = v29;
  v32 = *&v29[v31];
  v33 = *(v32 + 16);

  if (!v33)
  {
LABEL_9:

    v37 = *&v94[v95];
    OS_dispatch_semaphore.signal()();

    v105 = 0;
    v103 = 0u;
    v104 = 0u;
    goto LABEL_17;
  }

  v34 = 0;
  a6 = v32 + 32;
  v14 += 8;
  while (1)
  {
    if (v34 >= *(v32 + 16))
    {
      __break(1u);
      goto LABEL_67;
    }

    sub_1000A097C(a6, v102);
    v35 = *(*sub_1000A09E0(v102, v102[3]) + 24);
    DockCoreInfo.identifier.getter();

    DockCoreInfo.identifier.getter();
    LOBYTE(v35) = static UUID.== infix(_:_:)();
    v36 = *v14;
    (*v14)(v18, v13);
    v36(v20, v13);
    if (v35)
    {
      break;
    }

    ++v34;
    sub_100095808(v102);
    a6 += 40;
    if (v33 == v34)
    {
      goto LABEL_9;
    }
  }

  v42 = *&v94[v95];
  OS_dispatch_semaphore.signal()();

  sub_1000A097C(v102, &v103);
  sub_100095808(v102);
LABEL_17:

  v43 = v97;
  if (!*(&v104 + 1))
  {

    sub_100095C84(&v103, &unk_1002A6F40, &unk_10023BE90);
    return;
  }

  sub_100095274(&unk_1002A7A90, &unk_10023C960);
  type metadata accessor for DaemonAccessory();
  if ((swift_dynamicCast() & 1) == 0)
  {

    return;
  }

  v44 = v102[0];
  sub_100095B94(0, &qword_1002A7270, NSObject_ptr);
  v45 = *(v44 + 24);
  v46 = dispatch thunk of DockCoreAccessory.info.getter();
  v47 = static NSObject.== infix(_:_:)();

  if ((v47 & 1) == 0 || (v48 = *(v44 + 16)) == 0)
  {

    return;
  }

  v49 = *&v48[OBJC_IVAR____TtC14dockaccessoryd8BTDevice_peripheral];
  if (!v49)
  {

    return;
  }

  v50 = v48;
  if ([v49 state] != 2)
  {

    return;
  }

  v51 = objc_opt_self();
  sub_100095274(&unk_1002A73A0, &qword_10023C670);
  v52 = swift_allocObject();
  v96 = xmmword_10023C170;
  *(v52 + 16) = xmmword_10023C170;
  *(v52 + 56) = &type metadata for UInt32;
  *(v52 + 64) = &protocol witness table for UInt32;
  *(v52 + 32) = 512;
  String.init(format:_:)();
  v53 = String._bridgeToObjectiveC()();
  v101 = v50;
  v54 = v53;

  v55 = [v51 UUIDWithString:v54];

  v56 = v101;
  v57 = sub_10013EF7C();

  if (!v57)
  {

    return;
  }

  v58 = swift_allocObject();
  *(v58 + 16) = v96;
  *(v58 + 56) = &type metadata for UInt32;
  *(v58 + 64) = &protocol witness table for UInt32;
  *(v58 + 32) = 260;
  String.init(format:_:)();
  v59 = String._bridgeToObjectiveC()();

  v60 = [v51 UUIDWithString:v59];

  v61 = sub_10013F1B8(v60, v57);
  if (!v61)
  {

    return;
  }

  v91 = v61;
  v94 = v57;
  v62 = v98;
  v63 = v98 + 64;
  v64 = 1 << *(v98 + 32);
  v65 = -1;
  if (v64 < 64)
  {
    v65 = ~(-1 << v64);
  }

  v66 = v65 & *(v98 + 64);
  v67 = (v64 + 63) >> 6;

  v68 = 0;
  v95 = _swiftEmptyArrayStorage;
  *&v96 = _swiftEmptyArrayStorage;
  if (v66)
  {
    while (1)
    {
LABEL_37:
      while (1)
      {
        v70 = __clz(__rbit64(v66));
        v66 &= v66 - 1;
        v71 = v70 | (v68 << 6);
        v72 = (v62[6] + 16 * v71);
        v74 = *v72;
        v73 = v72[1];
        v75 = *(v62[7] + 8 * v71);

        v76 = dispatch thunk of DockCoreAccessory.getActuatorIndex(name:system:)();
        if ((v76 & 0x8000000000000000) == 0 && v76 < v62[2])
        {
          break;
        }

        if (!v66)
        {
          goto LABEL_33;
        }
      }

      v77 = v76;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        *&v96 = sub_100102FEC(0, *(v96 + 16) + 1, 1, v96);
      }

      v79 = *(v96 + 16);
      v78 = *(v96 + 24);
      if (v79 >= v78 >> 1)
      {
        *&v96 = sub_100102FEC((v78 > 1), v79 + 1, 1, v96);
      }

      v80 = v96;
      *(v96 + 16) = v79 + 1;
      *(v80 + 8 * v79 + 32) = v77;
      type metadata accessor for Actuator();
      if (v74 == static Actuator.Pitch.getter() && v73 == v81)
      {
        break;
      }

      v83 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v62 = v98;
      if (v83)
      {
        goto LABEL_54;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v95 = sub_100102EE8(0, *(v95 + 2) + 1, 1, v95);
      }

      v85 = *(v95 + 2);
      v84 = *(v95 + 3);
      v86 = v85 + 1;
      if (v85 >= v84 >> 1)
      {
        v95 = sub_100102EE8((v84 > 1), v85 + 1, 1, v95);
      }

      v62 = v98;
LABEL_59:
      v88 = v95;
      *(v95 + 2) = v86;
      *&v88[8 * v85 + 32] = v75;
      if (!v66)
      {
        goto LABEL_33;
      }
    }

    v62 = v98;
LABEL_54:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v95 = sub_100102EE8(0, *(v95 + 2) + 1, 1, v95);
    }

    v85 = *(v95 + 2);
    v87 = *(v95 + 3);
    v86 = v85 + 1;
    if (v85 >= v87 >> 1)
    {
      v95 = sub_100102EE8((v87 > 1), v85 + 1, 1, v95);
    }

    v75 = -v75;
    goto LABEL_59;
  }

LABEL_33:
  while (1)
  {
    v69 = v68 + 1;
    if (__OFADD__(v68, 1))
    {
      break;
    }

    if (v69 >= v67)
    {

      sub_100198B58();
      v89 = v91;
      sub_1001A38B4(v96, v95, 256, v91);

      sub_1001A68A4(3.0);

      return;
    }

    v66 = *(v63 + 8 * v69);
    ++v68;
    if (v66)
    {
      v68 = v69;
      goto LABEL_37;
    }
  }

  __break(1u);
}

uint64_t sub_10010E788(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void (*a8)(id, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v16;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a5)
  {
LABEL_3:
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  if (a6)
  {
    a6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v17 = a3;
  v18 = a1;
  _Block_copy(v14);
  a8(v17, v15, a4, a5, a6, v18, v14);
  _Block_release(v14);
  _Block_release(v14);
}

uint64_t sub_10010E8A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 72) = v21;
  *(v8 + 80) = v22;
  *(v8 + 56) = v18;
  *(v8 + 64) = v20;
  *(v8 + 177) = v19;
  *(v8 + 40) = a7;
  *(v8 + 48) = a8;
  *(v8 + 24) = a5;
  *(v8 + 32) = a6;
  *(v8 + 16) = a4;
  v9 = type metadata accessor for Logger();
  *(v8 + 88) = v9;
  v10 = *(v9 - 8);
  *(v8 + 96) = v10;
  v11 = *(v10 + 64) + 15;
  *(v8 + 104) = swift_task_alloc();
  v12 = *(*(sub_100095274(&unk_1002A6F30, &unk_10023C4D0) - 8) + 64) + 15;
  *(v8 + 112) = swift_task_alloc();
  v13 = type metadata accessor for Errors();
  *(v8 + 120) = v13;
  v14 = *(v13 - 8);
  *(v8 + 128) = v14;
  v15 = *(v14 + 64) + 15;
  *(v8 + 136) = swift_task_alloc();

  return (_swift_task_switch)(sub_10010EA24, 0, 0);
}

uint64_t sub_10010EA24()
{
  v1 = *(v0 + 24);
  v2 = TrajectoryCommand.encode()();
  *(v0 + 144) = v3;
  if (v3 >> 60 == 15)
  {
    v5 = *(v0 + 128);
    v4 = *(v0 + 136);
    v6 = *(v0 + 120);
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    *v4 = 0xD000000000000019;
    v4[1] = 0x8000000100231FB0;
    (*(v5 + 104))(v4, enum case for Errors.TrajectoryError(_:), v6);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v29 = *(v5 + 16);
    v29(v9, v4, v6);
    v10 = _convertErrorToNSError(_:)();
    v8(0, v10);

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 48);
    v16 = *(v0 + 56);
    v17 = *(v0 + 177);
    v29(v14, v11, v13);
    (*(v12 + 56))(v14, 0, 1, v13);
    sub_10018C604(v15, v16, v17, v14);
    sub_100095C84(v14, &unk_1002A6F30, &unk_10023C4D0);
    (*(v12 + 8))(v11, v13);
    v18 = *(v0 + 136);
    v19 = *(v0 + 104);
    v20 = *(v0 + 112);

    v21 = *(v0 + 8);

    return v21();
  }

  else
  {
    v23 = v3;
    v24 = *(v0 + 16);
    *(v0 + 152) = v2;
    v25 = v2;
    v26 = swift_task_alloc();
    *(v0 + 160) = v26;
    v26[2] = v24;
    v26[3] = v25;
    v26[4] = v23;
    v27 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
    v28 = swift_task_alloc();
    *(v0 + 168) = v28;
    *v28 = v0;
    v28[1] = sub_10010ED6C;

    return withCheckedContinuation<A>(isolation:function:_:)(v0 + 176, 0, 0, 0xD000000000000012, 0x8000000100231FD0, sub_100137B90, v26, &type metadata for Bool);
  }
}

uint64_t sub_10010ED6C()
{
  v1 = *(*v0 + 168);
  v2 = *(*v0 + 160);
  v4 = *v0;

  return (_swift_task_switch)(sub_10010EE84, 0, 0);
}

uint64_t sub_10010EE84()
{
  sub_1000A452C(*(v0 + 152), *(v0 + 144));
  if (*(v0 + 176))
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v2 = *(v0 + 96);
    v1 = *(v0 + 104);
    v3 = *(v0 + 88);
    v4 = sub_100093DE8(v3, qword_1002A9110);
    (*(v2 + 16))(v1, v4, v3);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Registering for trajectory progress callback", v7, 2u);
    }

    v9 = *(v0 + 96);
    v8 = *(v0 + 104);
    v10 = *(v0 + 80);
    v11 = *(v0 + 88);
    v13 = *(v0 + 64);
    v12 = *(v0 + 72);
    v14 = *(v0 + 16);

    (*(v9 + 8))(v8, v11);
    v15 = swift_allocObject();
    v15[2] = v13;
    v15[3] = v12;
    v15[4] = v10;
    v16 = *(v14 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
    v17 = swift_task_alloc();
    v17[2] = v14;
    v17[3] = sub_100137BDC;
    v17[4] = v15;
    v18 = swift_task_alloc();
    *(v18 + 16) = sub_100137BE8;
    *(v18 + 24) = v17;
    v19 = v13;

    os_unfair_lock_lock(v16 + 4);
    sub_100137D60(v20);
    os_unfair_lock_unlock(v16 + 4);
    v36 = *(v0 + 32);
    v35 = *(v0 + 40);

    v36(1, 0);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 112);
    v38 = *(v0 + 48);
    v39 = *(v0 + 56);
    v40 = *(v0 + 177);
    (*(*(v0 + 128) + 56))(v37, 1, 1, *(v0 + 120));
    sub_10018C604(v38, v39, v40, v37);
    sub_100095C84(v37, &unk_1002A6F30, &unk_10023C4D0);
  }

  else
  {
    v22 = *(v0 + 128);
    v21 = *(v0 + 136);
    v23 = *(v0 + 120);
    v25 = *(v0 + 32);
    v24 = *(v0 + 40);
    *v21 = 0xD000000000000019;
    v21[1] = 0x8000000100231FB0;
    (*(v22 + 104))(v21, enum case for Errors.TrajectoryError(_:), v23);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v46 = *(v22 + 16);
    v46(v26, v21, v23);
    v27 = _convertErrorToNSError(_:)();
    v25(0, v27);

    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v29 = *(v0 + 128);
    v28 = *(v0 + 136);
    v31 = *(v0 + 112);
    v30 = *(v0 + 120);
    v32 = *(v0 + 48);
    v33 = *(v0 + 56);
    v34 = *(v0 + 177);
    v46(v31, v28, v30);
    (*(v29 + 56))(v31, 0, 1, v30);
    sub_10018C604(v32, v33, v34, v31);
    sub_100095C84(v31, &unk_1002A6F30, &unk_10023C4D0);
    (*(v29 + 8))(v28, v30);
  }

  v41 = *(v0 + 136);
  v42 = *(v0 + 104);
  v43 = *(v0 + 112);

  v44 = *(v0 + 8);

  return v44();
}

uint64_t sub_10010F374(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v29 = a2;
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 8);
  __chkstk_darwin(v5);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
LABEL_18:
    swift_once();
  }

  v10 = sub_100093DE8(v5, qword_1002A9110);
  (*(v6 + 2))(v9, v10, v5);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "Received trajectory progress callback", v13, 2u);
  }

  (*(v6 + 1))(v9, v5);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v14 = qword_1002B1CF0;
  v15 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v16 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v16 + 4);

  v17 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrajectoryClients;
  swift_beginAccess();
  v9 = *(v14 + v17);
  v6 = v9 + 64;
  v18 = 1 << v9[32];
  v19 = -1;
  if (v18 < 64)
  {
    v19 = ~(-1 << v18);
  }

  v20 = v19 & *(v9 + 8);
  v21 = (v18 + 63) >> 6;

  v22 = 0;
  if (v20)
  {
    while (1)
    {
      v23 = v22;
LABEL_14:
      v24 = __clz(__rbit64(v20));
      v20 &= v20 - 1;
      v25 = v24 | (v23 << 6);
      v5 = *(*(v9 + 6) + 4 * v25);
      v26 = *(*(v9 + 7) + 8 * v25);
      sub_10010F67C(v5, v26, a1, v29, v30, v31);

      if (!v20)
      {
        goto LABEL_10;
      }
    }
  }

  while (1)
  {
LABEL_10:
    v23 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      __break(1u);
      goto LABEL_18;
    }

    if (v23 >= v21)
    {
      break;
    }

    v20 = *&v6[8 * v23];
    ++v22;
    if (v20)
    {
      v22 = v23;
      goto LABEL_14;
    }
  }

  v27 = *(v14 + v15);

  os_unfair_lock_unlock(v27 + 4);
}

uint64_t sub_10010F67C(int a1, void *a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v62 = a5;
  v63 = a6;
  v64 = a4;
  v66 = a2;
  v61 = sub_100095274(&unk_1002A9330, &qword_10023DEE0);
  v8 = *(*(v61 - 8) + 64);
  v9 = __chkstk_darwin(v61);
  v60 = &v56[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = __chkstk_darwin(v9);
  v13 = &v56[-v12];
  __chkstk_darwin(v11);
  v15 = &v56[-v14];
  v16 = type metadata accessor for Logger();
  v65 = *(v16 - 8);
  v17 = *(v65 + 64);
  v18 = __chkstk_darwin(v16);
  v20 = &v56[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v18);
  v22 = &v56[-v21];
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v23 = qword_1002B1CF0;
  v24 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingTrajectoryNotificationCount;
  swift_beginAccess();
  v25 = *(v23 + v24);
  if (*(v25 + 16) && (v26 = sub_10016D548(a1), (v27 & 1) != 0) && (v28 = *(*(v25 + 56) + 8 * v26), v28 > 0))
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v29 = sub_100093DE8(v16, qword_1002A9110);
    (*(v65 + 16))(v22, v29, v16);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109376;
      *(v32 + 4) = a1;
      *(v32 + 8) = 2048;
      *(v32 + 10) = v28;
      _os_log_impl(&_mh_execute_header, v30, v31, "Client %d has %ld pending traj feedback messages, dropping", v32, 0x12u);
    }

    return (*(v65 + 8))(v22, v16);
  }

  else
  {
    v72 = sub_100137CE8;
    v73 = 0;
    aBlock = _NSConcreteStackBlock;
    v69 = 1107296256;
    v70 = sub_10010FDF4;
    v71 = &unk_100278438;
    v34 = _Block_copy(&aBlock);
    v35 = [v66 remoteObjectProxyWithErrorHandler:v34];
    _Block_release(v34);
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095274(&qword_1002A9208, &qword_10023DDB8);
    result = swift_dynamicCast();
    if (result)
    {
      v59 = v67;
      v36 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
      v37 = *(v23 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock);

      os_unfair_lock_lock(v37 + 4);

      if (*(v23 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn))
      {
        v38 = *(v23 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn);

        sub_100105E6C();
      }

      v39 = *(v23 + v36);

      os_unfair_lock_unlock(v39 + 4);

      v58 = a3;
      TrajectoryCommand.Progress.init(nsdata:)();
      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v40 = sub_100093DE8(v16, qword_1002A9110);
      v41 = v65;
      (*(v65 + 16))(v20, v40, v16);
      sub_1000B5150(v15, v13, &unk_1002A9330, &qword_10023DEE0);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        v45 = swift_slowAlloc();
        v57 = a1;
        v46 = v45;
        aBlock = v45;
        *v44 = 136315138;
        sub_1000B5150(v13, v60, &unk_1002A9330, &qword_10023DEE0);
        v47 = String.init<A>(describing:)();
        v60 = v20;
        v61 = v16;
        v48 = v47;
        v50 = v49;
        sub_100095C84(v13, &unk_1002A9330, &qword_10023DEE0);
        v51 = sub_1000952D4(v48, v50, &aBlock);

        *(v44 + 4) = v51;
        _os_log_impl(&_mh_execute_header, v42, v43, "Sending trajectory progress to client: %s", v44, 0xCu);
        sub_100095808(v46);
        a1 = v57;

        (*(v65 + 8))(v60, v61);
      }

      else
      {

        sub_100095C84(v13, &unk_1002A9330, &qword_10023DEE0);
        (*(v41 + 8))(v20, v16);
      }

      sub_10019BC70(a1, 1);
      v52 = v59;
      swift_unknownObjectRetain();
      v53 = String._bridgeToObjectiveC()();
      [v52 trajectoryProgressFeedbackWithInfo:v64 system:v53 progress:v58];
      swift_unknownObjectRelease();

      v54 = swift_allocObject();
      *(v54 + 16) = a1;
      v72 = sub_100137C08;
      v73 = v54;
      aBlock = _NSConcreteStackBlock;
      v69 = 1107296256;
      v70 = sub_100147FC8;
      v71 = &unk_100278488;
      v55 = _Block_copy(&aBlock);

      [v66 scheduleSendBarrierBlock:v55];
      _Block_release(v55);
      swift_unknownObjectRelease();
      return sub_100095C84(v15, &unk_1002A9330, &qword_10023DEE0);
    }
  }

  return result;
}

void sub_10010FDF4(uint64_t a1, void *a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v5 = a2;
  v4();
}

uint64_t sub_10010FF34(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[4] = a6;
  v7[5] = a7;
  v7[2] = a4;
  v7[3] = a5;
  v8 = type metadata accessor for Logger();
  v7[6] = v8;
  v9 = *(v8 - 8);
  v7[7] = v9;
  v10 = *(v9 + 64) + 15;
  v7[8] = swift_task_alloc();
  v7[9] = swift_task_alloc();
  v11 = swift_task_alloc();
  v7[10] = v11;
  *v11 = v7;
  v11[1] = sub_100110034;

  return sub_1000F77BC();
}

uint64_t sub_100110034()
{
  v1 = *(*v0 + 80);
  v3 = *v0;

  return (_swift_task_switch)(sub_100110130, 0, 0);
}

uint64_t sub_100110130()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_diagnosticsManager);
  v0[11] = v1;
  if (v1)
  {
    v2 = v0[5];
    type metadata accessor for AccessoryDiagnosticsOptions();
    swift_allocObject();

    v4 = sub_100106520(v3);
    v0[12] = v4;
    v5 = swift_task_alloc();
    v0[13] = v5;
    *v5 = v0;
    v5[1] = sub_10011037C;

    return sub_1000C7C54(v4);
  }

  else
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v7 = v0[9];
    v8 = v0[6];
    v9 = v0[7];
    v10 = sub_100093DE8(v8, qword_1002A9110);
    (*(v9 + 16))(v7, v10, v8);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&_mh_execute_header, v11, v12, "Diagnostics manager is nil", v13, 2u);
    }

    v14 = v0[9];
    v15 = v0[6];
    v16 = v0[7];
    v18 = v0[3];
    v17 = v0[4];

    (*(v16 + 8))(v14, v15);
    v18(0, 0, 0);
    v20 = v0[8];
    v19 = v0[9];

    v21 = v0[1];

    return v21();
  }
}

uint64_t sub_10011037C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 104);
  v8 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v9 = sub_100110554;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v9 = sub_1001104B0;
  }

  return (_swift_task_switch)(v9, 0, 0);
}

uint64_t sub_1001104B0()
{
  v2 = *(v0 + 88);
  v1 = *(v0 + 96);
  v3 = *(v0 + 32);
  (*(v0 + 24))(*(v0 + 128), *(v0 + 120), 0);

  v5 = *(v0 + 64);
  v4 = *(v0 + 72);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_100110554()
{
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[7];
  v2 = v0[8];
  v4 = v0[6];
  v5 = sub_100093DE8(v4, qword_1002A9110);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[14];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Diagnostics transfer failed: %@", v9, 0xCu);
    sub_100095C84(v10, &unk_1002A6F60, &unk_10023C4E0);
  }

  v12 = v0[14];
  v14 = v0[11];
  v13 = v0[12];
  v16 = v0[7];
  v15 = v0[8];
  v17 = v0[6];
  v19 = v0[3];
  v18 = v0[4];

  (*(v16 + 8))(v15, v17);
  v20 = _convertErrorToNSError(_:)();
  v19(0, 0, v20);

  v22 = v0[8];
  v21 = v0[9];

  v23 = v0[1];

  return v23();
}

uint64_t sub_1001109A4(int a1, void *a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t), uint64_t a6, char *a7, uint64_t a8, double a9, void *a10, uint64_t a11, uint64_t a12)
{
  v131 = a8;
  v132 = a7;
  v135 = a6;
  v128 = a2;
  v17 = sub_100095274(&unk_1002A73C0, &unk_10023BE80);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v129 = v124 - v19;
  v20 = type metadata accessor for UUID();
  v130 = *(v20 - 8);
  v21 = *(v130 + 8);
  v22 = __chkstk_darwin(v20);
  v24 = v124 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v26 = v124 - v25;
  v133 = type metadata accessor for Logger();
  v134 = *(v133 - 8);
  v27 = *(v134 + 8);
  v28 = __chkstk_darwin(v133);
  v127 = v124 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __chkstk_darwin(v28);
  v32 = v124 - v31;
  result = __chkstk_darwin(v30);
  v35 = v124 - v34;
  if (*(a3 + 16))
  {
    result = sub_10016D548(a1);
    if (v36)
    {
      v37 = *(*(a3 + 56) + 8 * result);
      if ((a4 & 0x100000000) != 0 || a4 == a1)
      {
        v126 = a1;
        v38 = qword_1002A6780;

        if (v38 != -1)
        {
          swift_once();
        }

        v39 = qword_1002B1CF0;
        v40 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__outstandingActuationNotificationCount;
        swift_beginAccess();
        v41 = *(v39 + v40);
        if (!*(v41 + 16) || (v42 = sub_10016D548(v126), (v43 & 1) == 0) || *(*(v41 + 56) + 8 * v42) < 1)
        {
          *(a5 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_droppedFeedbackCount) = 0;
          v68 = DockCoreInfo.description.getter();
          v70 = v69;
          if (!*(v37 + 16))
          {
            goto LABEL_35;
          }

          v71 = v68;

          sub_10016D4D0(v71, v70);
          if ((v72 & 1) == 0)
          {

            return swift_bridgeObjectRelease_n();
          }

          if (*(v37 + 16) && (v73 = sub_10016D4D0(v71, v70), (v74 & 1) != 0))
          {
            v75 = *(v37 + 56) + 32 * v73;
            v76 = *v75;
            v77 = *(v75 + 8);
            v79 = *(v75 + 16);
            v78 = *(v75 + 24);

            if ((v76 != v132 || v77 != v131) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              goto LABEL_34;
            }

            v124[2] = v78;
            v124[0] = v76;
            v129 = v39;
            v124[1] = a12;
            v80 = a10[2];
            v130 = v77;

            v81 = v79;

            v125 = a10;
            v83 = a10 + 5;
            v84 = v80 + 1;
            while (--v84)
            {
              v85 = v83 + 2;
              v86 = *v83;
              *&aBlock = *(v83 - 1);
              *(&aBlock + 1) = v86;
              __chkstk_darwin(v82);
              v124[-2] = &aBlock;

              v87 = sub_10019EE0C(sub_100137D14, &v124[-4], v81);

              v83 = v85;
              if ((v87 & 1) == 0)
              {

                goto LABEL_34;
              }
            }

            v139 = sub_100137CE8;
            v140 = 0;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            *&v138 = sub_10010FDF4;
            *(&v138 + 1) = &unk_1002782A8;
            v93 = _Block_copy(&aBlock);
            v94 = v128;
            v95 = [v128 remoteObjectProxyWithErrorHandler:v93];
            _Block_release(v93);
            _bridgeAnyObjectToAny(_:)();
            swift_unknownObjectRelease();
            sub_100095274(&qword_1002A9208, &qword_10023DDB8);
            if (swift_dynamicCast())
            {
              v96 = v136[0];
              v97 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock;
              v98 = v129;
              v99 = *&v129[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__txnLock];

              os_unfair_lock_lock(v99 + 4);

              if (*&v98[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn])
              {
                v100 = *&v98[OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_txn];

                sub_100105E6C();
              }

              v101 = *&v129[v97];

              os_unfair_lock_unlock(v101 + 4);

              LODWORD(v26) = v126;
              sub_10019BC70(v126, 0);
              swift_unknownObjectRetain();
              v102 = String._bridgeToObjectiveC()();
              v50 = v125;
              isa = Array._bridgeToObjectiveC()().super.isa;
              v104 = Array._bridgeToObjectiveC()().super.isa;
              v105 = Array._bridgeToObjectiveC()().super.isa;
              [v96 actuatorFeedbackWithInfo:v135 system:v102 actuators:isa positions:v104 velocities:v105 timestamp:a9];
              swift_unknownObjectRelease();

              v106 = swift_allocObject();
              *(v106 + 16) = v26;
              v139 = sub_1001375C4;
              v140 = v106;
              *&aBlock = _NSConcreteStackBlock;
              *(&aBlock + 1) = 1107296256;
              *&v138 = sub_100147FC8;
              *(&v138 + 1) = &unk_1002782F8;
              v107 = _Block_copy(&aBlock);

              [v94 scheduleSendBarrierBlock:v107];
              _Block_release(v107);

              v108 = ActuatorOccurrence.rawValue.getter();
              if (v108 != ActuatorOccurrence.rawValue.getter())
              {

                return swift_unknownObjectRelease();
              }

              a5 = v130;
              if (qword_1002A66D8 != -1)
              {
LABEL_58:
                swift_once();
              }

              v109 = v133;
              v110 = sub_100093DE8(v133, qword_1002A9110);
              v111 = v134;
              v112 = v127;
              (*(v134 + 2))(v127, v110, v109);

              v113 = Logger.logObject.getter();
              v114 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v113, v114))
              {
                v115 = swift_slowAlloc();
                *&aBlock = swift_slowAlloc();
                *v115 = 136315650;

                v116 = sub_1000952D4(v124[0], a5, &aBlock);

                *(v115 + 4) = v116;
                *(v115 + 12) = 2080;

                swift_bridgeObjectRelease_n();

                v117 = Array.description.getter();
                v118 = v109;
                v120 = v119;

                v121 = sub_1000952D4(v117, v120, &aBlock);

                *(v115 + 14) = v121;
                *(v115 + 22) = 2080;
                v122 = Array.description.getter();
                v26 = sub_1000952D4(v122, v123, &aBlock);

                *(v115 + 24) = v26;
                LODWORD(v26) = v126;
                _os_log_impl(&_mh_execute_header, v113, v114, "Client rule (%s, %s) notified once, removing actuators %s from notification rule", v115, 0x20u);
                swift_arrayDestroy();

                (*(v134 + 1))(v127, v118);
                v50 = v125;
              }

              else
              {

                swift_bridgeObjectRelease_n();
                swift_bridgeObjectRelease_n();
                v111[1](v112, v109);
              }

              sub_10019182C(v26, v135, v132, v131, v50, 0);
              swift_unknownObjectRelease();
            }

            else
            {
LABEL_34:
            }
          }

          else
          {
LABEL_35:
          }
        }

        v132 = *(*(v41 + 56) + 8 * v42);

        if (qword_1002A66D8 != -1)
        {
          goto LABEL_56;
        }

        while (1)
        {
          v44 = v133;
          v45 = sub_100093DE8(v133, qword_1002A9110);
          v46 = *(v134 + 2);
          v128 = v45;
          v131 = v134 + 16;
          v127 = v46;
          (v46)(v35);
          v47 = Logger.logObject.getter();
          v48 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v47, v48))
          {
            v49 = swift_slowAlloc();
            *v49 = 67109376;
            *(v49 + 4) = v126;
            *(v49 + 8) = 2048;
            *(v49 + 10) = v132;
            _os_log_impl(&_mh_execute_header, v47, v48, "Client %d has %ld pending actuator feedback messages, dropping", v49, 0x12u);
            v44 = v133;
          }

          v50 = *(v134 + 1);
          v134 += 8;
          result = v50(v35, v44);
          v51 = *(a5 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_droppedFeedbackCount);
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            __break(1u);
            goto LABEL_58;
          }

          *(a5 + OBJC_IVAR____TtC14dockaccessoryd14dockaccessoryd_droppedFeedbackCount) = v53;
          if (v53 < 6)
          {
            return result;
          }

          v54 = v133;
          (v127)(v32, v128, v133);
          v55 = Logger.logObject.getter();
          v56 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v55, v56))
          {
            v57 = swift_slowAlloc();
            *v57 = 0;
            _os_log_impl(&_mh_execute_header, v55, v56, "Dropped feedback for more than 5 times. Stopping feedback", v57, 2u);
            v54 = v133;
          }

          v50(v32, v54);
          v58 = *(v39 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
          v133 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
          v59 = *&v58[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
          v134 = v58;
          v60 = v58;
          v61 = v59;
          OS_dispatch_semaphore.wait()();

          v62 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
          swift_beginAccess();
          v132 = v60;
          v32 = *&v60[v62];
          v63 = *(v32 + 2);

          if (!v63)
          {
            break;
          }

          v39 = v63;
          v35 = 0;
          v64 = (v32 + 32);
          v65 = (v130 + 8);
          while (v35 < *(v32 + 2))
          {
            sub_1000A097C(v64, v136);
            v66 = *(*sub_1000A09E0(v136, v136[3]) + 24);
            DockCoreInfo.identifier.getter();

            DockCoreInfo.identifier.getter();
            LOBYTE(v66) = static UUID.== infix(_:_:)();
            a5 = *v65;
            (*v65)(v24, v20);
            a5(v26, v20);
            if (v66)
            {

              v88 = *&v134[v133];
              OS_dispatch_semaphore.signal()();

              sub_1000A097C(v136, &aBlock);
              sub_100095808(v136);
              goto LABEL_40;
            }

            ++v35;
            sub_100095808(v136);
            v64 += 40;
            if (v39 == v35)
            {
              goto LABEL_22;
            }
          }

          __break(1u);
LABEL_56:
          swift_once();
        }

LABEL_22:

        v67 = *&v134[v133];
        OS_dispatch_semaphore.signal()();

        v139 = 0;
        aBlock = 0u;
        v138 = 0u;
LABEL_40:

        if (*(&v138 + 1))
        {
          sub_100095274(&unk_1002A7A90, &unk_10023C960);
          type metadata accessor for DaemonAccessory();
          result = swift_dynamicCast();
          if (result)
          {
            v89 = v136[0];
            v90 = type metadata accessor for TaskPriority();
            v91 = v129;
            (*(*(v90 - 8) + 56))(v129, 1, 1, v90);
            v92 = swift_allocObject();
            v92[2] = 0;
            v92[3] = 0;
            v92[4] = v89;
            sub_1001B6710(0, 0, v91, &unk_10023DE90, v92);
          }
        }

        else
        {
          return sub_100095C84(&aBlock, &unk_1002A6F40, &unk_10023BE90);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1001119AC(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100111A40;

  return sub_1001A4B10();
}

uint64_t sub_100111A40(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return (_swift_task_switch)(sub_100137CE4, 0, 0);
}

uint64_t sub_100111B40()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v5 = sub_100093DE8(v0, qword_1002A9110);
  (*(v1 + 16))(v4, v5, v0);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v6, v7, "Failed something on remote proxy: %@", v8, 0xCu);
    sub_100095C84(v9, &unk_1002A6F60, &unk_10023C4E0);
  }

  return (*(v1 + 8))(v4, v0);
}

unint64_t sub_100111D40(int a1, char a2)
{
  if (qword_1002A6780 != -1)
  {
    v3 = a1;
    v4 = a2;
    swift_once();
    a1 = v3;
    a2 = v4;
  }

  return sub_10019BF0C(a1, a2);
}

uint64_t sub_100111DAC(uint64_t a1, void *a2)
{
  v4 = type metadata accessor for Errors();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v54 = &v50 - v15;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v16 = qword_1002B1CF0;
  v17 = sub_10019B91C(a2);
  if (v18)
  {
    v19 = v18;
    v55 = v17;
    v51 = v10;
    v20 = String._bridgeToObjectiveC()();
    v21 = [a2 valueForEntitlement:v20];

    if (v21)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v57 = 0u;
      v58 = 0u;
    }

    v59[0] = v57;
    v59[1] = v58;
    v52 = v9;
    v53 = a1;
    if (*(&v58 + 1))
    {
      v27 = v4;
      if (swift_dynamicCast())
      {
        v28 = v56;
LABEL_17:
        v29 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
        v30 = *(v16 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

        os_unfair_lock_lock(v30 + 4);

        v31 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__appIDsOptedOutOfSystemTracking;
        v32 = swift_beginAccess();
        v33 = *(v16 + v31);
        *&v57 = v55;
        *(&v57 + 1) = v19;
        __chkstk_darwin(v32);
        *(&v50 - 2) = &v57;

        v34 = sub_10019EE0C(sub_1000BAB94, (&v50 - 4), v33);

        v35 = *(v16 + v29);

        os_unfair_lock_unlock(v35 + 4);

        if (v28 & 1) != 0 || (v34)
        {
          (*(v5 + 56))(v53, 1, 1, v27);
          return 0;
        }

        else
        {
          v36 = v27;
          if (qword_1002A66D8 != -1)
          {
            swift_once();
          }

          v37 = v52;
          v38 = sub_100093DE8(v52, qword_1002A9110);
          v39 = v51;
          v40 = v54;
          (*(v51 + 16))(v54, v38, v37);

          v41 = Logger.logObject.getter();
          v42 = static os_log_type_t.error.getter();

          v43 = os_log_type_enabled(v41, v42);
          v44 = v53;
          if (v43)
          {
            v45 = v39;
            v46 = swift_slowAlloc();
            v47 = swift_slowAlloc();
            v50 = v36;
            v48 = v47;
            *&v57 = v47;
            *v46 = 136315138;
            *(v46 + 4) = sub_1000952D4(v55, v19, &v57);
            _os_log_impl(&_mh_execute_header, v41, v42, "Client %s is trying to control actuation, but system tracking still on. This is API violation", v46, 0xCu);
            sub_100095808(v48);
            v36 = v50;

            (*(v45 + 8))(v54, v37);
          }

          else
          {

            (*(v39 + 8))(v40, v37);
          }

          *v8 = 0xD000000000000032;
          v8[1] = 0x8000000100231B50;
          (*(v5 + 104))(v8, enum case for Errors.InvalidParameter(_:), v36);
          (*(v5 + 32))(v44, v8, v36);
          v26 = 1;
          (*(v5 + 56))(v44, 0, 1, v36);
        }

        return v26;
      }
    }

    else
    {
      v27 = v4;
      sub_100095C84(v59, &qword_1002A9210, &unk_10023BE70);
    }

    v28 = 0;
    goto LABEL_17;
  }

  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v22 = sub_100093DE8(v9, qword_1002A9110);
  (*(v10 + 16))(v14, v22, v9);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&_mh_execute_header, v23, v24, "Failed fetching App ID from connection", v25, 2u);
  }

  (*(v10 + 8))(v14, v9);
  *v8 = 0xD000000000000028;
  v8[1] = 0x8000000100231B20;
  (*(v5 + 104))(v8, enum case for Errors.NotFound(_:), v4);
  (*(v5 + 16))(a1, v8, v4);
  v26 = 1;
  (*(v5 + 56))(a1, 0, 1, v4);
  (*(v5 + 8))(v8, v4);
  return v26;
}

uint64_t sub_1001124F8(int a1, unint64_t a2, void *a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 1);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v11 = qword_1002B1CF0;
    sub_1001F1CC0(&_swiftEmptyArrayStorage);

    v12 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
    v13 = *(v11 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

    os_unfair_lock_lock(v13 + 4);

    v14 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
    swift_beginAccess();
    v15 = *(v11 + v14);
    v16 = *(v11 + v12);

    os_unfair_lock_unlock(v16 + 4);

    if (!*(v15 + 16))
    {
      break;
    }

    v17 = sub_10016D548(a1);
    if ((v18 & 1) == 0)
    {
      break;
    }

    v47 = v10;
    v48 = v6;
    v43 = a1;
    v46 = a2;
    v10 = *(*(v15 + 56) + 8 * v17);

    v20 = 0;
    a1 = 1;
    v21 = 1 << v10[32];
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    a2 = v22 & *(v10 + 8);
    v23 = (v21 + 63) >> 6;
    v44 = (v7 + 8);
    v45 = (v7 + 16);
    *&v19 = 138412546;
    v42 = v19;
    while (a2)
    {
LABEL_15:
      v26 = __clz(__rbit64(a2));
      a2 &= a2 - 1;
      v27 = *(v10 + 6) + ((v20 << 10) | (16 * v26));
      v6 = *v27;
      v7 = *(v27 + 8);

      if (v6 == DockCoreInfo.description.getter() && v7 == v28)
      {

        if (a1)
        {
          goto LABEL_21;
        }

LABEL_9:
      }

      else
      {
        v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((a1 & v6 & 1) == 0)
        {
          goto LABEL_9;
        }

LABEL_21:
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v30 = v48;
        v31 = sub_100093DE8(v48, qword_1002A9110);
        (*v45)(v47, v31, v30);
        v6 = a3;
        v32 = Logger.logObject.getter();
        v33 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          v41 = v33;
          v35 = v34;
          v36 = swift_slowAlloc();
          v40 = v36;
          *v35 = v42;
          *(v35 + 4) = v6;
          *v36 = a3;
          *(v35 + 12) = 1024;
          *(v35 + 14) = v43;
          v37 = v6;
          _os_log_impl(&_mh_execute_header, v32, v41, "DockAccessory %@ was disconnected, invalidating XPC for feedback client: %d", v35, 0x12u);
          v6 = v40;
          sub_100095C84(v40, &unk_1002A6F60, &unk_10023C4E0);
        }

        (*v44)(v47, v48);
        v38 = [v46 remoteObjectProxy];
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        sub_100095274(&qword_1002A9208, &qword_10023DDB8);
        if (swift_dynamicCast())
        {
          v39 = v49;
          swift_unknownObjectRetain();

          [v39 disconnectedWithErr:0];
          swift_unknownObjectRelease_n();
        }

        else
        {
        }

        a1 = 0;
      }
    }

    while (1)
    {
      v25 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v25 >= v23)
      {
      }

      a2 = *&v10[8 * v25 + 64];
      ++v20;
      if (a2)
      {
        v20 = v25;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_31:
    swift_once();
  }
}

uint64_t sub_1001129E0(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6, void *aBlock, void (*a8)(void *, uint64_t, uint64_t, uint64_t, uint64_t, id, void *))
{
  v14 = _Block_copy(aBlock);
  if (a4)
  {
    v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v16;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v15 = 0;
  if (a5)
  {
LABEL_3:
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v17 = a3;
  v18 = a1;
  _Block_copy(v14);
  a8(a3, v15, a4, a5, a6, v18, v14);
  _Block_release(v14);
  _Block_release(v14);
}

uint64_t sub_100112AE8(uint64_t a1)
{
  *(v1 + 16) = a1;
  v2 = swift_task_alloc();
  *(v1 + 24) = v2;
  *v2 = v1;
  v2[1] = sub_100112B7C;

  return sub_1001A4B10();
}

uint64_t sub_100112B7C(char a1)
{
  v2 = *(*v1 + 24);
  v4 = *v1;
  *(*v1 + 32) = a1;

  return (_swift_task_switch)(sub_100112C7C, 0, 0);
}

uint64_t sub_100112CCC(void *a1, int a2, void *a3, uint64_t a4, void *aBlock, void (*a6)(void *, uint64_t, uint64_t, id, void *))
{
  v10 = _Block_copy(aBlock);
  if (a4)
  {
    v11 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v12;
  }

  else
  {
    v11 = 0;
  }

  _Block_copy(v10);
  v13 = a3;
  v14 = a1;
  a6(a3, v11, a4, v14, v10);
  _Block_release(v10);
  _Block_release(v10);
}

uint64_t sub_100112D98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = type metadata accessor for Logger();
  v4[3] = v5;
  v6 = *(v5 - 8);
  v4[4] = v6;
  v7 = *(v6 + 64) + 15;
  v4[5] = swift_task_alloc();

  return (_swift_task_switch)(sub_100112E58, 0, 0);
}

uint64_t sub_100112E58()
{
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v1 = v0[5];
  v3 = v0[3];
  v4 = sub_100093DE8(v3, qword_1002A9110);
  (*(v2 + 16))(v1, v4, v3);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "Sending feedback request to accessory", v7, 2u);
  }

  v9 = v0[4];
  v8 = v0[5];
  v10 = v0[3];

  (*(v9 + 8))(v8, v10);
  v11 = swift_task_alloc();
  v0[6] = v11;
  *v11 = v0;
  v11[1] = sub_100112FE0;
  v12 = v0[2];

  return sub_1001A456C();
}

uint64_t sub_100112FE0()
{
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 40);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_1001130F0(char *a1, uint64_t a2, void (*a3)(char *, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, void *a7, int a8, void (*a9)(char *, uint64_t))
{
  LODWORD(v9) = a8;
  v126._countAndFlagsBits = a6;
  v126._object = a7;
  v120 = a2;
  v121 = a3;
  v13 = type metadata accessor for UUID();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v108 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for Logger();
  v114 = *(v18 - 1);
  v19 = *(v114 + 64);
  __chkstk_darwin(v18);
  v115 = &v108 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    goto LABEL_71;
  }

  while (1)
  {
    v116 = qword_1002B1CF0;
    v124 = sub_1001884E4();
    if (!v124)
    {
    }

    v109 = v18;
    v110 = v17;
    v111 = v14;
    v112 = v13;
    v113 = v9;
    v119 = a4;
    v21 = *(a5 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = *(a1 + 2);
      v24 = a5 + 32;
      v25 = a1 + 32;
      v117 = v121 + 32;
      v118 = v120 + 32;
      v122 = _swiftEmptyArrayStorage;
      v123 = _swiftEmptyArrayStorage;
      v125 = _swiftEmptyArrayStorage;
      while (1)
      {
        v26 = (v24 + 16 * v22);
        v28 = *v26;
        v27 = v26[1];

        v29 = dispatch thunk of DockCoreAccessory.getActuatorIndex(name:system:)();
        if (!v23)
        {
LABEL_5:

          goto LABEL_6;
        }

        v30 = 0;
        while (*&v25[8 * v30] != v29)
        {
          if (v23 == ++v30)
          {
            goto LABEL_5;
          }
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v31 = v125;
        }

        else
        {
          v31 = sub_100102844(0, *(v125 + 2) + 1, 1, v125);
        }

        v33 = *(v31 + 2);
        v32 = *(v31 + 3);
        if (v33 >= v32 >> 1)
        {
          v31 = sub_100102844((v32 > 1), v33 + 1, 1, v31);
        }

        v125 = v31;
        *(v31 + 2) = v33 + 1;
        v34 = &v31[16 * v33];
        *(v34 + 4) = v28;
        *(v34 + 5) = v27;
        if (v30 < *(v120 + 16))
        {
          break;
        }

LABEL_31:
        if (v30 >= *(v121 + 2))
        {
          goto LABEL_5;
        }

        type metadata accessor for Actuator();
        if (v28 == static Actuator.Pitch.getter() && v27 == v44)
        {
        }

        else
        {
          v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v45 & 1) == 0)
          {
            v50 = *&v117[8 * v30];
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              v51 = v123;
            }

            else
            {
              v51 = sub_100102EE8(0, *(v123 + 2) + 1, 1, v123);
            }

            v53 = *(v51 + 2);
            v52 = *(v51 + 3);
            if (v53 >= v52 >> 1)
            {
              v51 = sub_100102EE8((v52 > 1), v53 + 1, 1, v51);
            }

            *(v51 + 2) = v53 + 1;
            v123 = v51;
            *&v51[8 * v53 + 32] = v50;
            goto LABEL_6;
          }
        }

        v46 = *&v117[8 * v30];
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v47 = v123;
        }

        else
        {
          v47 = sub_100102EE8(0, *(v123 + 2) + 1, 1, v123);
        }

        v49 = *(v47 + 2);
        v48 = *(v47 + 3);
        if (v49 >= v48 >> 1)
        {
          v47 = sub_100102EE8((v48 > 1), v49 + 1, 1, v47);
        }

        *(v47 + 2) = v49 + 1;
        v123 = v47;
        *&v47[8 * v49 + 32] = -v46;
LABEL_6:
        if (++v22 == v21)
        {
          goto LABEL_53;
        }
      }

      type metadata accessor for Actuator();
      if (v28 == static Actuator.Pitch.getter() && v27 == v35)
      {

        goto LABEL_21;
      }

      v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v36)
      {
LABEL_21:
        v37 = *(v118 + 8 * v30);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = v122;
        }

        else
        {
          v38 = sub_100102EE8(0, *(v122 + 2) + 1, 1, v122);
        }

        v40 = *(v38 + 2);
        v39 = *(v38 + 3);
        v41 = v40 + 1;
        if (v40 >= v39 >> 1)
        {
          v38 = sub_100102EE8((v39 > 1), v40 + 1, 1, v38);
        }

        v42 = -v37;
      }

      else
      {
        v42 = *(v118 + 8 * v30);
        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v38 = v122;
        }

        else
        {
          v38 = sub_100102EE8(0, *(v122 + 2) + 1, 1, v122);
        }

        v40 = *(v38 + 2);
        v43 = *(v38 + 3);
        v41 = v40 + 1;
        if (v40 >= v43 >> 1)
        {
          v38 = sub_100102EE8((v43 > 1), v40 + 1, 1, v38);
        }
      }

      *(v38 + 2) = v41;
      v122 = v38;
      *&v38[8 * v40 + 32] = v42;
      goto LABEL_31;
    }

    v122 = _swiftEmptyArrayStorage;
    v123 = _swiftEmptyArrayStorage;
    v125 = _swiftEmptyArrayStorage;
LABEL_53:
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v121 = a9;
    v54 = v109;
    v55 = sub_100093DE8(v109, qword_1002A9110);
    v56 = v114;
    a1 = v115;
    (*(v114 + 16))(v115, v55, v54);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.debug.getter();
    v59 = os_log_type_enabled(v57, v58);
    v60 = v113;
    if (v59)
    {
      v61 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      v129 = v120;
      *v61 = 67109890;
      *(v61 + 4) = v60;
      *(v61 + 8) = 2080;

      v62 = Array.description.getter();
      LODWORD(v118) = v58;
      v64 = v63;

      v65 = sub_1000952D4(v62, v64, &v129);

      *(v61 + 10) = v65;
      *(v61 + 18) = 2080;

      v66 = Array.description.getter();
      v68 = v67;

      v69 = sub_1000952D4(v66, v68, &v129);

      *(v61 + 20) = v69;
      *(v61 + 28) = 2080;

      v70 = Array.description.getter();
      v72 = v71;

      v73 = sub_1000952D4(v70, v72, &v129);

      *(v61 + 30) = v73;
      _os_log_impl(&_mh_execute_header, v57, v118, "%d Received feedback a=%s p=%s v=%s", v61, 0x26u);
      swift_arrayDestroy();

      LODWORD(a1) = v113;
      (*(v56 + 8))(v115, v54);
    }

    else
    {

      (*(v56 + 8))(a1, v54);
      LODWORD(a1) = v60;
    }

    v74 = objc_allocWithZone(NSDate);

    v75 = [v74 init];
    [v75 timeIntervalSince1970];
    v77 = v76;

    v78 = v110;
    DockCoreInfo.identifier.getter();
    v79 = UUID.description.getter();
    v81 = v80;
    (*(v111 + 8))(v78, v112);
    v129 = v79;
    v130 = v81;

    v82._countAndFlagsBits = 45;
    v82._object = 0xE100000000000000;
    String.append(_:)(v82);

    String.append(_:)(v126);

    v18 = v129;
    v83 = v130;
    v84 = objc_allocWithZone(type metadata accessor for ActuatorFeedback());

    v85 = ActuatorFeedback.init(velocities:positions:timestamp:)();
    v86 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock;
    v87 = v116;
    v88 = *(v116 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__cacheLock);

    os_unfair_lock_lock(v88 + 4);

    v89 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__actuationFeedbackCache;
    swift_beginAccess();
    v14 = v85;
    v90 = *(v87 + v89);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v128 = *(v87 + v89);
    *(v87 + v89) = 0x8000000000000000;
    sub_1001ECA6C(v14, v18, v83, isUniquelyReferenced_nonNull_native);

    *(v87 + v89) = v128;
    swift_endAccess();
    v92 = *(v87 + v86);

    os_unfair_lock_unlock(v92 + 4);

    sub_1001F1CC0(_swiftEmptyArrayStorage);

    v93 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock;
    v94 = *(v87 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__clientLock);

    os_unfair_lock_lock(v94 + 4);

    v95 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClientsRules;
    swift_beginAccess();
    v96 = *(v87 + v95);
    v97 = *(v87 + v93);

    os_unfair_lock_unlock(v97 + 4);

    a4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
    v98 = *(v87 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

    os_unfair_lock_lock(v98 + 4);

    v99 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
    swift_beginAccess();
    a5 = *(v87 + v99);
    v9 = a5 + 64;
    v100 = 1 << *(a5 + 32);
    v101 = -1;
    if (v100 < 64)
    {
      v101 = ~(-1 << v100);
    }

    v17 = v101 & *(a5 + 64);
    v13 = (v100 + 63) >> 6;
    a1 = a1;

    v102 = 0;
    while (v17)
    {
      v103 = v102;
LABEL_66:
      v104 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
      v105 = v104 | (v103 << 6);
      v14 = *(*(a5 + 48) + 4 * v105);
      v18 = *(*(a5 + 56) + 8 * v105);
      v127 = 0;
      sub_1001109A4(v14, v18, v96, a1, v121, v119, v126._countAndFlagsBits, v126._object, v77, v125, v122, v123);
    }

    while (1)
    {
      v103 = v102 + 1;
      if (__OFADD__(v102, 1))
      {
        break;
      }

      if (v103 >= v13)
      {

        v106 = *(v116 + a4);

        os_unfair_lock_unlock(v106 + 4);
      }

      v17 = *(v9 + 8 * v103);
      ++v102;
      if (v17)
      {
        v102 = v103;
        goto LABEL_66;
      }
    }

    __break(1u);
LABEL_71:
    swift_once();
  }
}

uint64_t sub_100113D30(void *a1, int a2, void *a3, uint64_t a4, uint64_t a5, void *aBlock, void (*a7)(void *, uint64_t, uint64_t, uint64_t, id, void *))
{
  v12 = _Block_copy(aBlock);
  if (a4)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    a4 = v14;
    if (!a5)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v13 = 0;
  if (a5)
  {
LABEL_3:
    a5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

LABEL_4:
  v15 = a3;
  v16 = a1;
  _Block_copy(v12);
  a7(a3, v13, a4, a5, v16, v12);
  _Block_release(v12);
  _Block_release(v12);
}

void sub_100113E40(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v36 = a3;
  v37 = a4;
  v31 = a2;
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_18:
    v13 = _CocoaArrayWrapper.endIndex.getter();
    if (!v13)
    {
      return;
    }
  }

  else
  {
    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return;
    }
  }

  if (v13 >= 1)
  {
    v14 = 0;
    v15 = a1 & 0xC000000000000001;
    v32 = (v8 + 8);
    v33 = (v8 + 16);
    *&v10 = 136315394;
    v28 = v10;
    v29 = a5;
    v30 = a1;
    v34 = a1 & 0xC000000000000001;
    v35 = v13;
    while (1)
    {
      if (v15)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(a1 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v16 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9310, &qword_10023DE70);
      if (swift_dynamicCast())
      {
        v38 = v17;
        v19 = v39;
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v20 = sub_100093DE8(v7, qword_1002A9110);
        (*v33)(v12, v20, v7);
        v8 = v36;

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v8 = swift_slowAlloc();
          v40[0] = swift_slowAlloc();
          *v8 = v28;
          *(v8 + 4) = sub_1000952D4(v31, v36, v40);
          *(v8 + 12) = 2080;
          v23 = DockFramingMode.description.getter();
          v25 = v7;
          v26 = v19;
          v27 = sub_1000952D4(v23, v24, v40);
          a5 = v29;

          *(v8 + 14) = v27;
          v19 = v26;
          v7 = v25;
          _os_log_impl(&_mh_execute_header, v21, v22, "Notifying client that %s just set framing mode to %s", v8, 0x16u);
          swift_arrayDestroy();
          a1 = v30;
        }

        (*v32)(v12, v7);
        v15 = v34;
        [v19 setFramingModeEventWithMode:v37];
        swift_unknownObjectRelease();

        v13 = v35;
        if (__OFADD__(*a5, 1))
        {
          __break(1u);
          goto LABEL_18;
        }

        ++*a5;
      }

      else
      {
      }

      if (v13 == ++v14)
      {
        return;
      }
    }
  }

  __break(1u);
}

void sub_100114304(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v39 = a5;
  v31 = a2;
  v7 = type metadata accessor for Logger();
  isa = *(v7 - 8);
  v9 = *(isa + 8);
  __chkstk_darwin(v7);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1;
  if (a1 >> 62)
  {
LABEL_18:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      return;
    }
  }

  if (v14 >= 1)
  {
    v15 = 0;
    v16 = v13 & 0xC000000000000001;
    v33 = (isa + 8);
    v34 = (isa + 16);
    *&v10 = 136315394;
    v29 = v10;
    v30 = v7;
    v35 = v13 & 0xC000000000000001;
    v36 = v14;
    v28 = v12;
    while (1)
    {
      if (v16)
      {
        v17 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v17 = *(v13 + 8 * v15 + 32);
      }

      v18 = v17;
      v19 = [v17 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9310, &qword_10023DE70);
      if (swift_dynamicCast())
      {
        v37 = v40;
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v38 = v18;
        v20 = sub_100093DE8(v7, qword_1002A9110);
        (*v34)(v12, v20, v7);

        v21 = Logger.logObject.getter();
        v22 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v32 = swift_slowAlloc();
          v41[0] = v32;
          *v23 = v29;
          *(v23 + 4) = sub_1000952D4(v31, a3, v41);
          *(v23 + 12) = 2080;
          v24 = Array.description.getter();
          v26 = sub_1000952D4(v24, v25, v41);
          v12 = v28;

          *(v23 + 14) = v26;
          _os_log_impl(&_mh_execute_header, v21, v22, "Notifying client that %s just set subject selection to ids: %s", v23, 0x16u);
          swift_arrayDestroy();

          v7 = v30;
        }

        (*v33)(v12, v7);
        v16 = v35;
        v14 = v36;
        isa = Array._bridgeToObjectiveC()().super.isa;
        [v37 selectSubjectsEvent:isa];

        swift_unknownObjectRelease();
        if (__OFADD__(*v39, 1))
        {
          __break(1u);
          goto LABEL_18;
        }

        ++*v39;
      }

      else
      {
      }

      if (v14 == ++v15)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t (*sub_10011472C(uint64_t a1, uint64_t a2, void (*a3)(void, void *), unint64_t a4, int a5))()
{
  v33 = a5;
  v30[2] = a4;
  v31 = a3;
  v7 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (v30 - v9);
  v11 = type metadata accessor for Errors();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v32 = a1;
  v30[1] = qword_1002B1CF0;
  result = sub_100194808(a1, a2);
  if (result)
  {
    v30[0] = a2;
    sub_1000BABC8(result, v22);
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v23 = sub_100093DE8(v16, qword_1002A9110);
    (*(v17 + 16))(v20, v23, v16);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "subject selection not completed after 1 sec, expiring", v26, 2u);
    }

    (*(v17 + 8))(v20, v16);
    *v15 = 0xD00000000000001BLL;
    v15[1] = 0x8000000100231E30;
    (*(v12 + 104))(v15, enum case for Errors.OperationCancelled(_:), v11);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v27 = *(v12 + 16);
    v27(v28, v15, v11);
    v29 = _convertErrorToNSError(_:)();
    v31(0, v29);

    v27(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_10018C604(v32, v30[0], v33, v10);
    sub_100095C84(v10, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

void sub_100114BEC(unint64_t a1, uint64_t a2, unint64_t a3, void *a4, double a5, double a6, double a7, double a8)
{
  v45 = a4;
  v38 = a2;
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  v16 = v15[8];
  __chkstk_darwin(v14);
  v19 = &v36 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a1 >> 62)
  {
LABEL_18:
    v20 = _CocoaArrayWrapper.endIndex.getter();
    if (!v20)
    {
      return;
    }
  }

  else
  {
    v20 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v20)
    {
      return;
    }
  }

  if (v20 >= 1)
  {
    v21 = 0;
    v22 = a1 & 0xC000000000000001;
    v40 = (v15 + 1);
    v41 = (v15 + 2);
    *&v17 = 136315394;
    v36 = v17;
    v37 = a1;
    v42 = a1 & 0xC000000000000001;
    v43 = v20;
    while (1)
    {
      if (v22)
      {
        v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v23 = *(a1 + 8 * v21 + 32);
      }

      v24 = v23;
      v25 = [v23 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9310, &qword_10023DE70);
      if (swift_dynamicCast())
      {
        v44 = v24;
        v15 = v46[0];
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v26 = sub_100093DE8(v14, qword_1002A9110);
        (*v41)(v19, v26, v14);

        v27 = Logger.logObject.getter();
        v28 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v27, v28))
        {
          v29 = swift_slowAlloc();
          v39 = v15;
          v30 = v29;
          v46[0] = swift_slowAlloc();
          *v30 = v36;
          *(v30 + 4) = sub_1000952D4(v38, a3, v46);
          *(v30 + 12) = 2080;
          *&v46[1] = a5;
          *&v46[2] = a6;
          *&v46[3] = a7;
          *&v46[4] = a8;
          type metadata accessor for CGRect(0);
          v31 = String.init<A>(describing:)();
          v33 = v14;
          v34 = a3;
          v35 = sub_1000952D4(v31, v32, v46);

          *(v30 + 14) = v35;
          a3 = v34;
          v14 = v33;
          _os_log_impl(&_mh_execute_header, v27, v28, "Notifying client that %s just set subject ROI to %s", v30, 0x16u);
          swift_arrayDestroy();
          a1 = v37;

          v15 = v39;
        }

        (*v40)(v19, v14);
        v22 = v42;
        [v15 setRectOfInterestEventWithRect:{a5, a6, a7, a8}];
        swift_unknownObjectRelease();

        v20 = v43;
        if (__OFADD__(*v45, 1))
        {
          __break(1u);
          goto LABEL_18;
        }

        ++*v45;
      }

      else
      {
      }

      if (v20 == ++v21)
      {
        return;
      }
    }
  }

  __break(1u);
}

uint64_t (*sub_100114FEC(uint64_t a1, uint64_t a2, void (*a3)(void, void *), unint64_t a4, int a5))()
{
  v33 = a5;
  v30[2] = a4;
  v31 = a3;
  v7 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = (v30 - v9);
  v11 = type metadata accessor for Errors();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v32 = a1;
  v30[1] = qword_1002B1CF0;
  result = sub_100194938(a1, a2);
  if (result)
  {
    v30[0] = a2;
    sub_1000BABC8(result, v22);
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v23 = sub_100093DE8(v16, qword_1002A9110);
    (*(v17 + 16))(v20, v23, v16);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&_mh_execute_header, v24, v25, "ROI not completed after 1 sec, expiring", v26, 2u);
    }

    (*(v17 + 8))(v20, v16);
    *v15 = 0xD000000000000015;
    v15[1] = 0x8000000100231DF0;
    (*(v12 + 104))(v15, enum case for Errors.OperationCancelled(_:), v11);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    v27 = *(v12 + 16);
    v27(v28, v15, v11);
    v29 = _convertErrorToNSError(_:)();
    v31(0, v29);

    v27(v10, v15, v11);
    (*(v12 + 56))(v10, 0, 1, v11);
    sub_10018C604(v32, v30[0], v33, v10);
    sub_100095C84(v10, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v12 + 8))(v15, v11);
  }

  return result;
}

uint64_t sub_1001154B4(int a1, void *a2)
{
  v4 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (v20 - v6);
  v8 = type metadata accessor for DKXPCClientApplication(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = (v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10010D498(v11);
  if (v11[2])
  {
    v12 = v11[1];
    v13 = v11[2];
  }

  else
  {
    v13 = 0xE700000000000000;
    v12 = 0x6E776F6E6B6E75;
  }

  v14 = qword_1002A6780;

  if (v14 != -1)
  {
    swift_once();
  }

  if (a2)
  {
    v20[1] = a2;
    sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
    v15 = type metadata accessor for Errors();
    v16 = a2;
    v17 = swift_dynamicCast();
    (*(*(v15 - 8) + 56))(v7, v17 ^ 1u, 1, v15);
  }

  else
  {
    v18 = type metadata accessor for Errors();
    (*(*(v18 - 8) + 56))(v7, 1, 1, v18);
  }

  sub_10018C604(v12, v13, a1, v7);

  sub_1000BAA28(v11);
  return sub_100095C84(v7, &unk_1002A6F30, &unk_10023C4D0);
}

uint64_t sub_100115778(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = type metadata accessor for Errors();
  v7[4] = v9;
  v10 = *(v9 - 8);
  v7[5] = v10;
  v11 = *(v10 + 64) + 15;
  v7[6] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v7[7] = v12;
  v13 = *(v12 - 8);
  v7[8] = v13;
  v14 = *(v13 + 64) + 15;
  v7[9] = swift_task_alloc();
  v15 = swift_task_alloc();
  v7[10] = v15;
  *v15 = v7;
  v15[1] = sub_1001158C8;

  return sub_10012FB40(a5);
}

uint64_t sub_1001158C8(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 80);
  v7 = *v2;
  *(v3 + 88) = a1;
  *(v3 + 96) = v1;

  if (v1)
  {
    v5 = sub_100115D48;
  }

  else
  {
    v5 = sub_1001159DC;
  }

  return (_swift_task_switch)(v5, 0, 0);
}

uint64_t sub_1001159DC()
{
  result = v0[11];
  if (*(result + 16))
  {
    v2 = 0;
    v3 = result + 64;
    v4 = -1;
    v5 = -1 << *(result + 32);
    if (-v5 < 64)
    {
      v4 = ~(-1 << -v5);
    }

    v6 = v4 & *(result + 64);
    v7 = (63 - v5) >> 6;
LABEL_5:
    v8 = v2;
    if (!v6)
    {
      goto LABEL_7;
    }

    do
    {
      v2 = v8;
LABEL_10:
      v9 = __clz(__rbit64(v6));
      v6 &= v6 - 1;
      v10 = (v2 << 10) | (16 * v9);
      v11 = result;
      v12 = (*(result + 48) + v10);
      v13 = *v12;
      v14 = v12[1];
      v15 = (*(result + 56) + v10);
      v16 = *v15;
      v17 = v15[1];
      objc_allocWithZone(type metadata accessor for AccessoryBatteryState());

      sub_1000A0CD8(v16, v17);

      sub_1000A0CD8(v16, v17);
      v18 = AccessoryBatteryState.init(data:name:)();
      if (v18)
      {
        v19 = v18;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v34 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        sub_1000A0D2C(v16, v17);

        result = v11;
        goto LABEL_5;
      }

      sub_1000A0D2C(v16, v17);
      v8 = v2;
      result = v11;
    }

    while (v6);
LABEL_7:
    while (1)
    {
      v2 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v2 >= v7)
      {
        v0 = v33;
        v20 = v33[11];
        v21 = v33[2];
        v22 = v33[3];

        v21(_swiftEmptyArrayStorage, 0);

        goto LABEL_18;
      }

      v6 = *(v3 + 8 * v2);
      ++v8;
      if (v6)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
    v24 = v0[5];
    v23 = v0[6];
    v25 = v0[3];
    v26 = v0[4];
    v27 = v0[2];

    *v23 = 0xD000000000000015;
    v23[1] = 0x8000000100231DA0;
    (*(v24 + 104))(v23, enum case for Errors.NotFound(_:), v26);
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    swift_allocError();
    (*(v24 + 16))(v28, v23, v26);
    v29 = _convertErrorToNSError(_:)();
    v27(_swiftEmptyArrayStorage, v29);

    (*(v24 + 8))(v23, v26);

LABEL_18:
    v30 = v0[9];
    v31 = v0[6];

    v32 = v0[1];

    return v32();
  }

  return result;
}

uint64_t sub_100115D48()
{
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v1 = v0[12];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = sub_100093DE8(v4, qword_1002A9110);
  (*(v3 + 16))(v2, v5, v4);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[12];
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    *v9 = 138412290;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v9 + 4) = v11;
    *v10 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "Error thrown in battery state read: %@", v9, 0xCu);
    sub_100095C84(v10, &unk_1002A6F60, &unk_10023C4E0);
  }

  v12 = v0[12];
  v14 = v0[8];
  v13 = v0[9];
  v15 = v0[7];
  v17 = v0[2];
  v16 = v0[3];

  (*(v14 + 8))(v13, v15);
  v18 = _convertErrorToNSError(_:)();
  v17(_swiftEmptyArrayStorage, v18);

  v19 = v0[9];
  v20 = v0[6];

  v21 = v0[1];

  return v21();
}

void sub_100115F78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for AccessoryBatteryState();
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a3 + 16))(a3, isa, a2);
}

uint64_t sub_10011606C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[2] = a6;
  v7[3] = a7;
  v9 = type metadata accessor for Errors();
  v7[4] = v9;
  v10 = *(v9 - 8);
  v7[5] = v10;
  v11 = *(v10 + 64) + 15;
  v7[6] = swift_task_alloc();
  v12 = swift_task_alloc();
  v7[7] = v12;
  *v12 = v7;
  v12[1] = sub_100116160;

  return sub_100135094(a5);
}

uint64_t sub_100116160(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *(*v3 + 56);
  v6 = *v3;
  v4[8] = a1;
  v4[9] = a2;

  if (v2)
  {
    v7 = v4[6];

    v8 = *(v6 + 8);

    __asm { BRAA            X1, X16 }
  }

  return (_swift_task_switch)(sub_1001162B0, 0, 0);
}

uint64_t sub_1001162B0()
{
  v1 = *(v0 + 72);
  if (v1 >> 60 != 15)
  {
    v2 = *(v0 + 64);
    v3 = objc_allocWithZone(type metadata accessor for AccessorySystemEvent());
    sub_1000A0CD8(v2, v1);
    v4 = AccessorySystemEvent.init(data:name:)();
    v6 = *(v0 + 64);
    v5 = *(v0 + 72);
    if (v4)
    {
      v7 = *(v0 + 24);
      v8 = v4;
      (*(v0 + 16))(v4, 0);

      sub_1000A452C(v6, v5);
      goto LABEL_6;
    }

    sub_1000A452C(*(v0 + 64), *(v0 + 72));
  }

  v10 = *(v0 + 40);
  v9 = *(v0 + 48);
  v11 = *(v0 + 24);
  v12 = *(v0 + 32);
  v13 = *(v0 + 16);
  *v9 = 0xD000000000000014;
  v9[1] = 0x8000000100231C50;
  (*(v10 + 104))(v9, enum case for Errors.NotFound(_:), v12);
  sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
  swift_allocError();
  (*(v10 + 16))(v14, v9, v12);
  v15 = _convertErrorToNSError(_:)();
  v13(0, v15);

  (*(v10 + 8))(v9, v12);

LABEL_6:
  v16 = *(v0 + 48);

  v17 = *(v0 + 8);

  return v17();
}

void sub_1001164E0(void *a1, int a2, void *a3, void *aBlock, void (*a5)(void *, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a3;
  v10 = a1;
  a5(a3, v10, v8);
  _Block_release(v8);
  _Block_release(v8);
}

void sub_10011657C(uint64_t a1, void *a2, void *a3, uint64_t a4)
{
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v5 = sub_100095274(&unk_1002A92E0, &qword_10023DE48);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v28 - v8;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v28 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v15 = sub_100093DE8(v10, qword_1002A9110);
  (*(v11 + 16))(v14, v15, v10);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v28 = v7;
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Reading System Event Data...", v18, 2u);
  }

  (*(v11 + 8))(v14, v10);
  sub_100095274(&qword_1002A7390, &qword_10023BEF0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_10023BDA0;
  v20 = v29;
  *(v19 + 32) = v29;
  sub_100095B94(0, &qword_1002A92F0, off_100271C60);
  v21 = v20;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v23 = *(a4 + 40);
  (*(v6 + 16))(v9, v30, v5);
  v24 = (*(v6 + 80) + 16) & ~*(v6 + 80);
  v25 = swift_allocObject();
  (*(v6 + 32))(v25 + v24, v9, v5);
  aBlock[4] = sub_10013712C;
  aBlock[5] = v25;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1001A37EC;
  aBlock[3] = &unk_100277FD8;
  v26 = _Block_copy(aBlock);
  v27 = v23;

  [v31 readCharacteristicValues:isa timeout:v27 completionQueue:v26 completionHandler:10.0];
  _Block_release(v26);
}

uint64_t sub_100116948(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    swift_errorRetain();
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v12 = sub_100093DE8(v6, qword_1002A9110);
    (*(v7 + 16))(v11, v12, v6);
    swift_errorRetain();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v29[1] = a3;
      v16 = v15;
      v17 = swift_slowAlloc();
      *&v33[0] = v17;
      *v16 = 136315138;
      swift_getErrorValue();
      v18 = Error.localizedDescription.getter();
      v20 = sub_1000952D4(v18, v19, v33);

      *(v16 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v13, v14, "Error reading System Event Data characteristic: %s", v16, 0xCu);
      sub_100095808(v17);
    }

    (*(v7 + 8))(v11, v6);
    goto LABEL_21;
  }

  if (!a1)
  {
    v24 = type metadata accessor for Errors();
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    a2 = swift_allocError();
    v26 = v25;
    v27 = 0x8000000100231C90;
    v28 = 0xD000000000000035;
LABEL_20:
    *v25 = v28;
    v25[1] = v27;
    (*(*(v24 - 8) + 104))(v26, enum case for Errors.CharacteristicReadWriteFailure(_:), v24);
LABEL_21:
    *&v33[0] = a2;
    sub_100095274(&unk_1002A92E0, &qword_10023DE48);
    return CheckedContinuation.resume(throwing:)();
  }

  if ((a1 & 0xC000000000000001) != 0)
  {
    v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_11;
  }

  if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v21 = *(a1 + 32);
LABEL_11:
    v22 = v21;
    v23 = [v21 value];

    if (v23)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v31 = 0u;
      v32 = 0u;
    }

    v33[0] = v31;
    v33[1] = v32;
    if (*(&v32 + 1))
    {
      if (swift_dynamicCast())
      {
        v33[0] = v30;
        sub_100095274(&unk_1002A92E0, &qword_10023DE48);
        return CheckedContinuation.resume(returning:)();
      }
    }

    else
    {
      sub_100095C84(v33, &qword_1002A9210, &unk_10023BE70);
    }

    v24 = type metadata accessor for Errors();
    sub_1000BAAE8(&qword_1002A6F50, &type metadata accessor for Errors);
    a2 = swift_allocError();
    v26 = v25;
    v27 = 0x8000000100231CD0;
    v28 = 0xD000000000000023;
    goto LABEL_20;
  }

  __break(1u);
  return result;
}

void sub_100116DD8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  v13 = __chkstk_darwin(v10);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = &v48 - v16;
  if (a2 || !a1)
  {
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v26 = sub_100093DE8(v10, qword_1002A9110);
    (*(v11 + 16))(v17, v26, v10);
    swift_errorRetain();
    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      v30 = swift_slowAlloc();
      *&v54[0] = v30;
      *v29 = 136315138;
      *&v52 = a2;
      swift_errorRetain();
      sub_100095274(&qword_1002A9308, &qword_10023FF40);
      v31 = String.init<A>(describing:)();
      v33 = sub_1000952D4(v31, v32, v54);

      *(v29 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v27, v28, "Unable to read characteristic: %s", v29, 0xCu);
      sub_100095808(v30);
    }

    (*(v11 + 8))(v17, v10);
  }

  else
  {
    v18 = [a1 metadata];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 format];

      if (v20)
      {
        v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v23 = v22;

        if (v21 == 1635017060 && v23 == 0xE400000000000000)
        {
        }

        else
        {
          v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v25 & 1) == 0)
          {
            return;
          }
        }

        if ([a1 value])
        {
          _bridgeAnyObjectToAny(_:)();
          swift_unknownObjectRelease();
        }

        else
        {
          v52 = 0u;
          v53 = 0u;
        }

        v54[0] = v52;
        v54[1] = v53;
        if (*(&v53 + 1))
        {
          if (swift_dynamicCast())
          {
            v34 = v50;
            v35 = v51;
            swift_beginAccess();

            sub_1000A0CD8(v34, v35);
            v36 = *(a3 + 16);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v52 = *(a3 + 16);
            *(a3 + 16) = 0x8000000000000000;
            sub_1001ECE58(v34, v35, a4, a5, isUniquelyReferenced_nonNull_native);

            *(a3 + 16) = v52;
            swift_endAccess();
            if (qword_1002A66D8 != -1)
            {
              swift_once();
            }

            v38 = sub_100093DE8(v10, qword_1002A9110);
            (*(v11 + 16))(v15, v38, v10);
            sub_1000A0CD8(v34, v35);
            v39 = Logger.logObject.getter();
            v40 = static os_log_type_t.default.getter();
            sub_1000A0D2C(v34, v35);
            if (os_log_type_enabled(v39, v40))
            {
              v41 = swift_slowAlloc();
              v42 = swift_slowAlloc();
              *&v54[0] = v42;
              *v41 = 136315138;
              v43 = sub_10013B46C(v34, v35);
              v45 = sub_1000952D4(v43, v44, v54);
              v49 = v39;
              v46 = v45;

              *(v41 + 4) = v46;
              v47 = v49;
              _os_log_impl(&_mh_execute_header, v49, v40, "Battery Data: %s", v41, 0xCu);
              sub_100095808(v42);

              sub_1000A0D2C(v34, v35);
            }

            else
            {
              sub_1000A0D2C(v34, v35);
            }

            (*(v11 + 8))(v15, v10);
          }
        }

        else
        {
          sub_100095C84(v54, &qword_1002A9210, &unk_10023BE70);
        }
      }
    }
  }
}

void sub_10011737C(void *a1, int a2, uint64_t a3, void *aBlock, void (*a5)(uint64_t, id, void *))
{
  v8 = _Block_copy(aBlock);
  _Block_copy(v8);
  v9 = a1;
  a5(a3, v9, v8);
  _Block_release(v8);
  _Block_release(v8);
}

uint64_t sub_1001174C8(unsigned int a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v55 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = sub_100093DE8(v9, qword_1002A9110);
    (*(v10 + 16))(v13, v14, v9);
    sub_1000B5150(a2, v58, &qword_1002A9210, &unk_10023BE70);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v53 = a4;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v18 = 67109378;
      *(v18 + 4) = v55;
      *(v18 + 8) = 2080;
      sub_1000B5150(v58, v56, &qword_1002A9210, &unk_10023BE70);
      sub_100095274(&qword_1002A9210, &unk_10023BE70);
      v19 = String.init<A>(describing:)();
      v20 = a5;
      v21 = a3;
      v23 = v22;
      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
      v24 = sub_1000952D4(v19, v23, &v59);
      a3 = v21;
      a5 = v20;

      *(v18 + 10) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "dockaccessoryd: Connection to PID %d (%s) has been invalidated", v18, 0x12u);
      sub_100095808(v54);

      a4 = v53;
    }

    else
    {

      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
    }

    v25 = *(v10 + 8);
    v10 += 8;
    v25(v13, v9);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v26 = qword_1002B1CF0;
    v27 = v55;
    sub_100192048(v55);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_100193938(v27, Strong);

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    sub_10019506C(v27, v29);

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    sub_100195348(v27, v30);

    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    sub_1001940C8(v27, v31);

    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    sub_1001940D4(v27, v32);

    sub_10018FFB8(v27, a4, a5, 0);
    v52 = v26;
    v33 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v50 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v34 = *&v33[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v51 = v33;
    v35 = v33;
    v13 = v34;
    OS_dispatch_semaphore.wait()();

    v36 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v37 = *&v35[v36];
    v38 = v37[2];
    if (!v38)
    {
      break;
    }

    v48[0] = v35;
    v48[1] = a3;
    v49 = a5;
    a3 = (v37 + 4);

    a5 = 0;
    v9 = 0;
    a2 = &unk_1002A7A90;
    a4 = &unk_10023C960;
    v54 = v37;
    while (a5 < v37[2])
    {
      sub_1000A097C(a3, v58);
      v13 = sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      v39 = swift_dynamicCast();
      if (v39)
      {
        v40 = v57;
        v10 = *(v57 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
        v41 = __chkstk_darwin(v39);
        v48[-2] = v40;
        LODWORD(v48[-1]) = v55;
        __chkstk_darwin(v41);
        v13 = &v48[-4];
        v48[-2] = sub_100137CAC;
        v48[-1] = v42;

        os_unfair_lock_lock((v10 + 16));
        sub_100137D60(v43);
        os_unfair_lock_unlock((v10 + 16));

        v37 = v54;
      }

      ++a5;
      a3 += 40;
      if (v38 == a5)
      {

        a5 = v49;
        a4 = v53;
        v35 = v48[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_14:
  v44 = *&v51[v50];
  OS_dispatch_semaphore.signal()();

  v45 = v55;
  sub_10018D344(v55);
  sub_10019C9B8(v45);
  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  sub_10018BA14(a4, a5, v46);

  return sub_10018BFBC(a4, a5);
}

uint64_t sub_100117B8C(unsigned int a1, void *a2, uint64_t a3, void *a4, unint64_t a5)
{
  v55 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1002A66D8 != -1)
  {
    goto LABEL_16;
  }

  while (1)
  {
    v14 = sub_100093DE8(v9, qword_1002A9110);
    (*(v10 + 16))(v13, v14, v9);
    sub_1000B5150(a2, v58, &qword_1002A9210, &unk_10023BE70);
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();
    v17 = os_log_type_enabled(v15, v16);
    v53 = a4;
    if (v17)
    {
      v18 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v59 = v54;
      *v18 = 67109378;
      *(v18 + 4) = v55;
      *(v18 + 8) = 2080;
      sub_1000B5150(v58, v56, &qword_1002A9210, &unk_10023BE70);
      sub_100095274(&qword_1002A9210, &unk_10023BE70);
      v19 = String.init<A>(describing:)();
      v20 = a5;
      v21 = a3;
      v23 = v22;
      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
      v24 = sub_1000952D4(v19, v23, &v59);
      a3 = v21;
      a5 = v20;

      *(v18 + 10) = v24;
      _os_log_impl(&_mh_execute_header, v15, v16, "dockaccessoryd: Connection to PID %d (%s) has been interrupted", v18, 0x12u);
      sub_100095808(v54);

      a4 = v53;
    }

    else
    {

      sub_100095C84(v58, &qword_1002A9210, &unk_10023BE70);
    }

    v25 = *(v10 + 8);
    v10 += 8;
    v25(v13, v9);
    if (qword_1002A6780 != -1)
    {
      swift_once();
    }

    v26 = qword_1002B1CF0;
    v27 = v55;
    sub_100192048(v55);
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    sub_100193938(v27, Strong);

    swift_beginAccess();
    v29 = swift_unknownObjectWeakLoadStrong();
    sub_10019506C(v27, v29);

    swift_beginAccess();
    v30 = swift_unknownObjectWeakLoadStrong();
    sub_100195348(v27, v30);

    swift_beginAccess();
    v31 = swift_unknownObjectWeakLoadStrong();
    sub_1001940C8(v27, v31);

    swift_beginAccess();
    v32 = swift_unknownObjectWeakLoadStrong();
    sub_1001940D4(v27, v32);

    sub_10018FFB8(v27, a4, a5, 0);
    v52 = v26;
    v33 = *(v26 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_manager);
    v50 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem;
    v34 = *&v33[OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessorySem];
    v51 = v33;
    v35 = v33;
    v13 = v34;
    OS_dispatch_semaphore.wait()();

    v36 = OBJC_IVAR____TtC14dockaccessoryd16AccessoryManager_accessories;
    swift_beginAccess();
    v37 = *&v35[v36];
    v38 = v37[2];
    if (!v38)
    {
      break;
    }

    v48[0] = v35;
    v48[1] = a3;
    v49 = a5;
    a3 = (v37 + 4);

    a5 = 0;
    v9 = 0;
    a2 = &unk_1002A7A90;
    a4 = &unk_10023C960;
    v54 = v37;
    while (a5 < v37[2])
    {
      sub_1000A097C(a3, v58);
      v13 = sub_100095274(&unk_1002A7A90, &unk_10023C960);
      type metadata accessor for DaemonAccessory();
      v39 = swift_dynamicCast();
      if (v39)
      {
        v40 = v57;
        v10 = *(v57 + OBJC_IVAR____TtC14dockaccessoryd15DaemonAccessory_callbackLock);
        v41 = __chkstk_darwin(v39);
        v48[-2] = v40;
        LODWORD(v48[-1]) = v55;
        __chkstk_darwin(v41);
        v13 = &v48[-4];
        v48[-2] = sub_100136F94;
        v48[-1] = v42;

        os_unfair_lock_lock((v10 + 16));
        sub_1000F003C(v43);
        os_unfair_lock_unlock((v10 + 16));

        v37 = v54;
      }

      ++a5;
      a3 += 40;
      if (v38 == a5)
      {

        a5 = v49;
        a4 = v53;
        v35 = v48[0];
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    swift_once();
  }

LABEL_14:
  v44 = *&v51[v50];
  OS_dispatch_semaphore.signal()();

  v45 = v55;
  sub_10018D344(v55);
  sub_10019C9B8(v45);
  swift_beginAccess();
  v46 = swift_unknownObjectWeakLoadStrong();
  sub_10018BA14(a4, a5, v46);

  return sub_10018BFBC(a4, a5);
}

id sub_1001182F8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_100118354(uint64_t a1)
{
  if (qword_1002A6780 != -1)
  {
LABEL_52:
    swift_once();
  }

  v2 = qword_1002B1CF0;
  v61 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v3 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v3 + 4);

  v4 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyActuationClients;
  swift_beginAccess();
  v5 = *(v2 + v4);
  v6 = 1 << *(v5 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v5 + 64);
  v9 = (v6 + 63) >> 6;

  v10 = 0;
  if (v8)
  {
    while (1)
    {
      v11 = v10;
LABEL_10:
      v12 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v13 = v12 | (v11 << 6);
      v14 = *(*(v5 + 48) + 4 * v13);
      v15 = *(*(v5 + 56) + 8 * v13);
      sub_1001124F8(v14, v15, a1);

      if (!v8)
      {
        goto LABEL_6;
      }
    }
  }

  while (1)
  {
LABEL_6:
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v11 >= v9)
    {
      break;
    }

    v8 = *(v5 + 64 + 8 * v11);
    ++v10;
    if (v8)
    {
      v10 = v11;
      goto LABEL_10;
    }
  }

  v16 = *(v2 + v61);

  os_unfair_lock_unlock(v16 + 4);

  v17 = *(v2 + v61);

  os_unfair_lock_lock(v17 + 4);

  v18 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyEventClients;
  swift_beginAccess();
  a1 = *(v2 + v18);
  v19 = 1 << *(a1 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & *(a1 + 64);
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  while (v21)
  {
    v24 = v23;
LABEL_21:
    v25 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v26 = *(*(a1 + 56) + ((v24 << 9) | (8 * v25)));
    v27 = [v26 remoteObjectProxy];
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
    sub_100095274(&qword_1002A91F0, qword_10023DDA0);
    if (swift_dynamicCast())
    {
      [swift_unknownObjectRetain() disconnectedWithErr:0];
      swift_unknownObjectRelease_n();
    }

    v23 = v24;
  }

  while (1)
  {
    v24 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      goto LABEL_49;
    }

    if (v24 >= v22)
    {
      break;
    }

    v21 = *(a1 + 64 + 8 * v24);
    ++v23;
    if (v21)
    {
      goto LABEL_21;
    }
  }

  v28 = *(v2 + v61);

  os_unfair_lock_unlock(v28 + 4);

  v29 = *(v2 + v61);

  os_unfair_lock_lock(v29 + 4);

  v30 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyBatteryClients;
  swift_beginAccess();
  v31 = *(v2 + v30);
  a1 = v31 + 64;
  v32 = 1 << *(v31 + 32);
  v33 = -1;
  if (v32 < 64)
  {
    v33 = ~(-1 << v32);
  }

  v34 = v33 & *(v31 + 64);
  v35 = (v32 + 63) >> 6;

  v36 = 0;
  while (v34)
  {
LABEL_32:
    v38 = __clz(__rbit64(v34));
    v34 &= v34 - 1;
    v39 = *(v31 + 56) + ((v36 << 10) | (16 * v38));
    if (*v39)
    {
      v40 = *(v39 + 8);
      v41 = *v39;
      v42 = v40;
      v43 = [v41 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A91F8, &qword_10023F050);
      if (swift_dynamicCast())
      {
        [swift_unknownObjectRetain() disconnectedWithErr:0];
        swift_unknownObjectRelease_n();
      }
    }
  }

  while (1)
  {
    v37 = v36 + 1;
    if (__OFADD__(v36, 1))
    {
      goto LABEL_50;
    }

    if (v37 >= v35)
    {
      break;
    }

    v34 = *(a1 + 8 * v37);
    ++v36;
    if (v34)
    {
      v36 = v37;
      goto LABEL_32;
    }
  }

  v44 = *(v2 + v61);

  os_unfair_lock_unlock(v44 + 4);

  v45 = *(v2 + v61);

  os_unfair_lock_lock(v45 + 4);

  v46 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__notifyTrackingSummaryClients;
  swift_beginAccess();
  a1 = *(v2 + v46);
  v47 = 1 << *(a1 + 32);
  v48 = -1;
  if (v47 < 64)
  {
    v48 = ~(-1 << v47);
  }

  v49 = v48 & *(a1 + 64);
  v50 = (v47 + 63) >> 6;

  v51 = 0;
  while (v49)
  {
LABEL_44:
    v53 = __clz(__rbit64(v49));
    v49 &= v49 - 1;
    v54 = *(a1 + 56) + ((v51 << 10) | (16 * v53));
    if (*v54)
    {
      v55 = *(v54 + 8);
      v56 = *v54;
      v57 = v55;
      v58 = [v56 remoteObjectProxy];
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100095274(&qword_1002A9200, &qword_10023C4F0);
      if (swift_dynamicCast())
      {
        [swift_unknownObjectRetain() disconnectedWithErr:0];
        swift_unknownObjectRelease_n();
      }
    }
  }

  while (1)
  {
    v52 = v51 + 1;
    if (__OFADD__(v51, 1))
    {
      goto LABEL_51;
    }

    if (v52 >= v50)
    {
      break;
    }

    v49 = *(a1 + 64 + 8 * v52);
    ++v51;
    if (v49)
    {
      v51 = v52;
      goto LABEL_44;
    }
  }

  v59 = *(v2 + v61);

  os_unfair_lock_unlock(v59 + 4);
}

uint64_t sub_1001189D4(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v109 = a7;
  v110 = a8;
  v114 = a5;
  v115 = a6;
  v111 = a3;
  v112 = a4;
  v113 = a2;
  v118 = a9;
  v10 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v120 = &v106 - v12;
  v119 = type metadata accessor for Errors();
  v13 = *(v119 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v119);
  v16 = (&v106 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = type metadata accessor for Logger();
  v18 = *(v17 - 8);
  v116 = v17;
  v117 = v18;
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v106 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v106 - v24;
  v26 = __chkstk_darwin(v23);
  v107 = &v106 - v27;
  v28 = __chkstk_darwin(v26);
  v108 = &v106 - v29;
  __chkstk_darwin(v28);
  v31 = &v106 - v30;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v32 = qword_1002B1CF0;
  v33 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v34 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v34 + 4);

  v35 = *(v32 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v36 = *(v32 + v33);
  v37 = v35;

  os_unfair_lock_unlock(v36 + 4);

  if (v35)
  {
    v38 = v37;
    v39 = dispatch thunk of DockCoreAccessory.info.getter();
    v106 = v38;

    type metadata accessor for DockCoreInfo();
    v40 = a1;
    LOBYTE(v38) = static NSObject.== infix(_:_:)();

    if (v38)
    {
      v41 = sub_1001884E4();
      if (v41)
      {
        v42 = v41;
        type metadata accessor for ActuationController();
        if (dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)())
        {
          sub_10019A4F0(1);
          v43 = v42;
          sub_100198E44(v42);

          DockCoreInfo.type.getter();
          v44 = DockCoreAccessoryType.rawValue.getter();
          if (v44 == DockCoreAccessoryType.rawValue.getter())
          {
            v45 = dispatch thunk of DockCoreAccessory.info.getter();
            v46 = swift_allocObject();
            *(v46 + 16) = 1;
            *(v46 + 24) = v40;
            *(v46 + 32) = v43;
            v47 = v115;
            *(v46 + 40) = v114;
            *(v46 + 48) = v47;
            v48 = v40;
            v49 = v43;

            v50 = sub_1001971B4(v45, v113, v111, v112, sub_100137D5C, v46);
            v52 = v51;

            if (v50)
            {
              if (v52)
              {
                v53 = qword_1002A66D8;
                v114 = v50;

                v54 = v117;
                if (v53 != -1)
                {
                  swift_once();
                }

                v55 = v116;
                v56 = sub_100093DE8(v116, qword_1002A9110);
                v57 = v108;
                (*(v54 + 16))(v108, v56, v55);
                v115 = v49;
                v58 = v49;
                v59 = v110;

                v60 = Logger.logObject.getter();
                v61 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v60, v61))
                {
                  v62 = swift_slowAlloc();
                  v63 = swift_slowAlloc();
                  v64 = swift_slowAlloc();
                  v121 = v64;
                  *v62 = 138412802;
                  v65 = dispatch thunk of DockCoreAccessory.info.getter();
                  *(v62 + 4) = v65;
                  *v63 = v65;
                  *(v62 + 12) = 2080;
                  v66 = Array.description.getter();
                  v68 = sub_1000952D4(v66, v67, &v121);

                  *(v62 + 14) = v68;
                  *(v62 + 22) = 1024;
                  *(v62 + 24) = v113;
                  _os_log_impl(&_mh_execute_header, v60, v61, "Animator was started for %@, target %s, owner %d", v62, 0x1Cu);
                  sub_100095C84(v63, &unk_1002A6F60, &unk_10023C4E0);
                  v59 = v110;

                  sub_100095808(v64);

                  (*(v54 + 8))(v108, v55);
                }

                else
                {

                  (*(v54 + 8))(v57, v55);
                }

                sub_1000C4E14(v109, v59, 0);
                v49 = v115;
                goto LABEL_39;
              }

              v94 = v117;
              if (*(v50 + 16) == v113)
              {

                sub_1000C4E14(v109, v110, 0);
LABEL_39:
                v93 = v120;
                (*(v13 + 56))(v120, 1, 1, v119);
                sub_10010B188(1, v93);

                return sub_100095C84(v93, &unk_1002A6F30, &unk_10023C4D0);
              }

              v95 = qword_1002A66D8;

              if (v95 != -1)
              {
                swift_once();
              }

              v96 = v116;
              v97 = sub_100093DE8(v116, qword_1002A9110);
              v98 = v107;
              (*(v94 + 16))(v107, v97, v96);

              v99 = v112;

              v100 = Logger.logObject.getter();
              v101 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v100, v101))
              {
                v102 = swift_slowAlloc();
                v114 = swift_slowAlloc();
                v121 = v114;
                *v102 = 136315394;
                v115 = v49;
                v103 = *(v50 + 24);
                v104 = *(v50 + 32);

                v105 = sub_1000952D4(v103, v104, &v121);
                v49 = v115;

                *(v102 + 4) = v105;
                *(v102 + 12) = 2080;
                *(v102 + 14) = sub_1000952D4(v111, v99, &v121);
                _os_log_impl(&_mh_execute_header, v100, v101, "animator owned by %s, rejecting request from %s", v102, 0x16u);
                swift_arrayDestroy();

                (*(v94 + 8))(v107, v116);
              }

              else
              {

                (*(v94 + 8))(v98, v116);
              }

              *v16 = 0xD000000000000021;
              v16[1] = 0x8000000100231AD0;
              v84 = v119;
              (*(v13 + 104))(v16, enum case for Errors.UnexpectedError(_:), v119);
              v85 = v120;
              (*(v13 + 16))(v120, v16, v84);
              (*(v13 + 56))(v85, 0, 1, v84);
              sub_10010B188(0, v85);
            }

            else
            {
              *v16 = 0xD000000000000014;
              v16[1] = 0x8000000100231AB0;
              v84 = v119;
              (*(v13 + 104))(v16, enum case for Errors.NotFound(_:), v119);
              v85 = v120;
              (*(v13 + 16))(v120, v16, v84);
              (*(v13 + 56))(v85, 0, 1, v84);
              sub_10010B188(0, v85);
            }
          }

          else
          {
            type metadata accessor for DockCoreManager();
            if (static DockCoreManager.debugAllowed.getter())
            {
              DockCoreInfo.type.getter();
              v86 = DockCoreAccessoryType.rawValue.getter();
              if (v86 == DockCoreAccessoryType.rawValue.getter())
              {
                if (qword_1002A66D8 != -1)
                {
                  swift_once();
                }

                v87 = v116;
                v88 = sub_100093DE8(v116, qword_1002A9110);
                v89 = v117;
                (*(v117 + 16))(v25, v88, v87);
                v90 = Logger.logObject.getter();
                v91 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v90, v91))
                {
                  v92 = swift_slowAlloc();
                  *v92 = 0;
                  _os_log_impl(&_mh_execute_header, v90, v91, "setActuatorVelocities: noop for mock device", v92, 2u);
                }

                (*(v89 + 8))(v25, v87);
                v93 = v120;
                (*(v13 + 56))(v120, 1, 1, v119);
                sub_10010B188(1, v93);

                return sub_100095C84(v93, &unk_1002A6F30, &unk_10023C4D0);
              }
            }

            *v16 = 0x6C706D6920746F6ELL;
            v16[1] = 0xEF6465746E656D65;
            v84 = v119;
            (*(v13 + 104))(v16, enum case for Errors.OperationNotSupported(_:), v119);
            v85 = v120;
            (*(v13 + 16))(v120, v16, v84);
            (*(v13 + 56))(v85, 0, 1, v84);
            sub_10010B188(0, v85);
          }

LABEL_25:
          sub_100095C84(v85, &unk_1002A6F30, &unk_10023C4D0);
          return (*(v13 + 8))(v16, v84);
        }
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v78 = v116;
      v79 = sub_100093DE8(v116, qword_1002A9110);
      v80 = v117;
      (*(v117 + 16))(v22, v79, v78);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&_mh_execute_header, v81, v82, "Failed to find valid accessory with actuation controller.", v83, 2u);
      }

      (*(v80 + 8))(v22, v78);
      *v16 = 0xD000000000000015;
      v16[1] = 0x8000000100231A90;
      v84 = v119;
      (*(v13 + 104))(v16, enum case for Errors.NotFound(_:), v119);
      v85 = v120;
      (*(v13 + 16))(v120, v16, v84);
      (*(v13 + 56))(v85, 0, 1, v84);
      sub_10010B188(0, v85);

      goto LABEL_25;
    }
  }

  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v69 = v116;
  v70 = sub_100093DE8(v116, qword_1002A9110);
  v71 = v117;
  (*(v117 + 16))(v31, v70, v69);
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "No such connected accessory, not setting velocity", v74, 2u);
  }

  (*(v71 + 8))(v31, v69);
  *v16 = 0xD000000000000016;
  v16[1] = 0x8000000100231A70;
  v75 = v119;
  (*(v13 + 104))(v16, enum case for Errors.OperationNotSupported(_:), v119);
  v76 = v120;
  (*(v13 + 16))(v120, v16, v75);
  (*(v13 + 56))(v76, 0, 1, v75);
  sub_10010B188(0, v76);

  sub_100095C84(v76, &unk_1002A6F30, &unk_10023C4D0);
  return (*(v13 + 8))(v16, v75);
}

uint64_t sub_10011995C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, unint64_t a10, unsigned __int8 a11, void (*a12)(uint64_t, uint64_t *), uint64_t a13)
{
  v197 = a8;
  v192 = a7;
  v201 = a5;
  v202 = a6;
  v198 = a3;
  v199 = a4;
  v200 = a2;
  v210 = a13;
  v211 = a12;
  v208 = a11;
  v207 = a10;
  v205 = a1;
  v206 = a9;
  v13 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v178 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = (&v178 - v19);
  v21 = __chkstk_darwin(v18);
  v203 = (&v178 - v22);
  v23 = __chkstk_darwin(v21);
  v204 = (&v178 - v24);
  v25 = __chkstk_darwin(v23);
  v195 = &v178 - v26;
  v27 = __chkstk_darwin(v25);
  v196 = (&v178 - v28);
  v29 = __chkstk_darwin(v27);
  v185 = &v178 - v30;
  v31 = __chkstk_darwin(v29);
  v186 = (&v178 - v32);
  v33 = __chkstk_darwin(v31);
  v181 = &v178 - v34;
  v35 = __chkstk_darwin(v33);
  v182 = (&v178 - v36);
  v37 = __chkstk_darwin(v35);
  v191 = &v178 - v38;
  v39 = __chkstk_darwin(v37);
  v193 = (&v178 - v40);
  v41 = __chkstk_darwin(v39);
  v189 = &v178 - v42;
  __chkstk_darwin(v41);
  v190 = (&v178 - v43);
  v209 = type metadata accessor for Errors();
  v213 = *(v209 - 8);
  v44 = *(v213 + 64);
  v45 = __chkstk_darwin(v209);
  v47 = (&v178 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0));
  v48 = __chkstk_darwin(v45);
  v50 = (&v178 - v49);
  v51 = __chkstk_darwin(v48);
  v194 = (&v178 - v52);
  v53 = __chkstk_darwin(v51);
  v180 = (&v178 - v54);
  __chkstk_darwin(v53);
  v188 = (&v178 - v55);
  v56 = type metadata accessor for Logger();
  v214 = *(v56 - 8);
  v215 = v56;
  v57 = *(v214 + 64);
  v58 = __chkstk_darwin(v56);
  v60 = &v178 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __chkstk_darwin(v58);
  v184 = &v178 - v62;
  v63 = __chkstk_darwin(v61);
  v183 = &v178 - v64;
  v65 = __chkstk_darwin(v63);
  v187 = &v178 - v66;
  __chkstk_darwin(v65);
  v68 = &v178 - v67;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v69 = qword_1002B1CF0;
  v70 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v71 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v71 + 4);

  v72 = *(v69 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v212 = v69;
  v73 = *(v69 + v70);
  v74 = v72;

  os_unfair_lock_unlock(v73 + 4);

  if (!v72)
  {
    goto LABEL_14;
  }

  v75 = v74;
  v76 = dispatch thunk of DockCoreAccessory.info.getter();
  v179 = v75;

  type metadata accessor for DockCoreInfo();
  v77 = v205;
  LOBYTE(v75) = static NSObject.== infix(_:_:)();

  if ((v75 & 1) == 0)
  {
LABEL_14:
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v112 = v215;
    v113 = sub_100093DE8(v215, qword_1002A9110);
    v114 = v214;
    (*(v214 + 16))(v68, v113, v112);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    v117 = os_log_type_enabled(v115, v116);
    v118 = v209;
    v119 = v213;
    if (v117)
    {
      v120 = swift_slowAlloc();
      *v120 = 0;
      _os_log_impl(&_mh_execute_header, v115, v116, "No such connected accessory, not setting velocity", v120, 2u);
      v114 = v214;
    }

    (*(v114 + 8))(v68, v215);
    *v47 = 0xD000000000000016;
    v47[1] = 0x8000000100231A70;
    (*(v119 + 104))(v47, enum case for Errors.OperationNotSupported(_:), v118);
    (*(v119 + 16))(v20, v47, v118);
    (*(v119 + 56))(v20, 0, 1, v118);
    sub_10018C604(v206, v207, v208, v20);
    sub_1000B5150(v20, v17, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v119 + 48))(v17, 1, v118) == 1)
    {
      sub_100095C84(v17, &unk_1002A6F30, &unk_10023C4D0);
      v121 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v121 = v216;
    }

    v211(0, v121);

    sub_100095C84(v20, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v119 + 8))(v47, v118);
  }

  v78 = sub_1001884E4();
  v79 = v214;
  if (!v78)
  {
LABEL_23:
    if (qword_1002A66D8 != -1)
    {
      swift_once();
    }

    v123 = v215;
    v124 = sub_100093DE8(v215, qword_1002A9110);
    (*(v79 + 16))(v60, v124, v123);
    v125 = Logger.logObject.getter();
    v126 = static os_log_type_t.error.getter();
    v127 = os_log_type_enabled(v125, v126);
    v128 = v213;
    if (v127)
    {
      v129 = swift_slowAlloc();
      *v129 = 0;
      _os_log_impl(&_mh_execute_header, v125, v126, "Failed to find valid accessory with actuation controller.", v129, 2u);
    }

    (*(v214 + 8))(v60, v123);
    *v50 = 0xD000000000000015;
    v50[1] = 0x8000000100231A90;
    v130 = v209;
    (*(v128 + 104))(v50, enum case for Errors.NotFound(_:), v209);
    v131 = v204;
    (*(v128 + 16))(v204, v50, v130);
    (*(v128 + 56))(v131, 0, 1, v130);
    sub_10018C604(v206, v207, v208, v131);
    v132 = v203;
    sub_1000B5150(v131, v203, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v128 + 48))(v132, 1, v130) == 1)
    {
      sub_100095C84(v132, &unk_1002A6F30, &unk_10023C4D0);
      v133 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v133 = v216;
    }

    v211(0, v133);

    sub_100095C84(v131, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v128 + 8))(v50, v130);
  }

  v80 = v78;
  type metadata accessor for ActuationController();
  v81 = v201;
  v82 = v202;
  if ((dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)() & 1) == 0)
  {

    goto LABEL_23;
  }

  sub_10019A4F0(1);
  v83 = v80;
  sub_100198E44(v80);

  DockCoreInfo.type.getter();
  v84 = DockCoreAccessoryType.rawValue.getter();
  if (v84 == DockCoreAccessoryType.rawValue.getter())
  {
    v85 = dispatch thunk of DockCoreAccessory.info.getter();
    v86 = swift_allocObject();
    *(v86 + 16) = 1;
    *(v86 + 24) = v77;
    *(v86 + 32) = v83;
    *(v86 + 40) = v81;
    *(v86 + 48) = v82;
    v87 = v77;
    v88 = v83;

    v89 = sub_1001971B4(v85, v200, v198, v199, sub_100137D5C, v86);
    v91 = v90;

    v92 = v209;
    if (v89)
    {
      v93 = v213;
      if (v91)
      {
        v94 = qword_1002A66D8;
        v205 = v89;

        v95 = v214;
        v96 = v197;
        if (v94 != -1)
        {
          swift_once();
        }

        v97 = v215;
        v98 = sub_100093DE8(v215, qword_1002A9110);
        v99 = v187;
        (*(v95 + 16))(v187, v98, v97);
        v100 = v88;

        v101 = Logger.logObject.getter();
        v102 = static os_log_type_t.default.getter();

        if (os_log_type_enabled(v101, v102))
        {
          v103 = v95;
          v104 = swift_slowAlloc();
          v105 = swift_slowAlloc();
          v204 = v88;
          v106 = v105;
          v107 = swift_slowAlloc();
          v216 = v107;
          *v104 = 138412802;
          v108 = dispatch thunk of DockCoreAccessory.info.getter();
          *(v104 + 4) = v108;
          *v106 = v108;
          *(v104 + 12) = 2080;
          v109 = Array.description.getter();
          v111 = sub_1000952D4(v109, v110, &v216);

          *(v104 + 14) = v111;
          *(v104 + 22) = 1024;
          *(v104 + 24) = v200;
          _os_log_impl(&_mh_execute_header, v101, v102, "Animator was started for %@, target %s, owner %d", v104, 0x1Cu);
          sub_100095C84(v106, &unk_1002A6F60, &unk_10023C4E0);
          v88 = v204;

          sub_100095808(v107);

          (*(v103 + 8))(v99, v215);
          v96 = v197;
        }

        else
        {

          (*(v95 + 8))(v99, v97);
        }

        sub_1000C4E14(v192, v96, 0);
        v159 = v193;
        v160 = v191;
        v93 = v213;
        goto LABEL_51;
      }

      v158 = v214;
      if (*(v89 + 16) == v200)
      {

        sub_1000C4E14(v192, v197, 0);
        v159 = v193;
        v160 = v191;
LABEL_51:
        (*(v93 + 56))(v159, 1, 1, v92);
        sub_10018C604(v206, v207, v208, v159);
        sub_1000B5150(v159, v160, &unk_1002A6F30, &unk_10023C4D0);
        if ((*(v93 + 48))(v160, 1, v92) == 1)
        {
          sub_100095C84(v160, &unk_1002A6F30, &unk_10023C4D0);
          v161 = 0;
        }

        else
        {
          sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
          swift_dynamicCast();
          v161 = v216;
        }

        v211(1, v161);

        v162 = v159;
        return sub_100095C84(v162, &unk_1002A6F30, &unk_10023C4D0);
      }

      v163 = qword_1002A66D8;

      if (v163 != -1)
      {
        swift_once();
      }

      v164 = v215;
      v165 = sub_100093DE8(v215, qword_1002A9110);
      v166 = v183;
      (*(v158 + 16))(v183, v165, v164);

      v167 = v199;

      v168 = Logger.logObject.getter();
      v169 = static os_log_type_t.default.getter();

      LODWORD(v205) = v169;
      if (os_log_type_enabled(v168, v169))
      {
        v170 = swift_slowAlloc();
        v203 = swift_slowAlloc();
        v216 = v203;
        *v170 = 136315394;
        v204 = v88;
        v171 = *(v89 + 24);
        v172 = *(v89 + 32);

        v173 = sub_1000952D4(v171, v172, &v216);
        v88 = v204;

        *(v170 + 4) = v173;
        *(v170 + 12) = 2080;
        *(v170 + 14) = sub_1000952D4(v198, v167, &v216);
        _os_log_impl(&_mh_execute_header, v168, v205, "animator owned by %s, rejecting request from %s", v170, 0x16u);
        swift_arrayDestroy();

        (*(v158 + 8))(v183, v215);
      }

      else
      {

        (*(v158 + 8))(v166, v215);
      }

      v174 = v180;
      *v180 = 0xD000000000000021;
      v174[1] = 0x8000000100231AD0;
      (*(v93 + 104))(v174, enum case for Errors.UnexpectedError(_:), v92);
      v175 = v182;
      (*(v93 + 16))(v182, v174, v92);
      (*(v93 + 56))(v175, 0, 1, v92);
      sub_10018C604(v206, v207, v208, v175);
      v176 = v181;
      sub_1000B5150(v175, v181, &unk_1002A6F30, &unk_10023C4D0);
      if ((*(v93 + 48))(v176, 1, v92) == 1)
      {
        sub_100095C84(v176, &unk_1002A6F30, &unk_10023C4D0);
        v177 = 0;
      }

      else
      {
        sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
        swift_dynamicCast();
        v177 = v216;
      }

      v211(0, v177);

      sub_100095C84(v175, &unk_1002A6F30, &unk_10023C4D0);
      return (*(v93 + 8))(v174, v92);
    }

    else
    {
      v153 = v188;
      *v188 = 0xD000000000000014;
      v153[1] = 0x8000000100231AB0;
      v154 = v213;
      (*(v213 + 104))(v153, enum case for Errors.NotFound(_:), v92);
      v155 = v190;
      (*(v154 + 16))(v190, v153, v92);
      (*(v154 + 56))(v155, 0, 1, v92);
      sub_10018C604(v206, v207, v208, v155);
      v156 = v189;
      sub_1000B5150(v155, v189, &unk_1002A6F30, &unk_10023C4D0);
      if ((*(v154 + 48))(v156, 1, v92) == 1)
      {
        sub_100095C84(v156, &unk_1002A6F30, &unk_10023C4D0);
        v157 = 0;
      }

      else
      {
        sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
        swift_dynamicCast();
        v157 = v216;
      }

      v211(0, v157);

      sub_100095C84(v155, &unk_1002A6F30, &unk_10023C4D0);
      return (*(v154 + 8))(v153, v92);
    }
  }

  else
  {
    type metadata accessor for DockCoreManager();
    v134 = static DockCoreManager.debugAllowed.getter();
    v135 = v209;
    if (v134)
    {
      DockCoreInfo.type.getter();
      v136 = DockCoreAccessoryType.rawValue.getter();
      if (v136 == DockCoreAccessoryType.rawValue.getter())
      {
        if (qword_1002A66D8 != -1)
        {
          swift_once();
        }

        v137 = v215;
        v138 = sub_100093DE8(v215, qword_1002A9110);
        v139 = v184;
        (*(v79 + 16))(v184, v138, v137);
        v140 = Logger.logObject.getter();
        v141 = static os_log_type_t.default.getter();
        v142 = os_log_type_enabled(v140, v141);
        v143 = v213;
        if (v142)
        {
          v144 = swift_slowAlloc();
          *v144 = 0;
          _os_log_impl(&_mh_execute_header, v140, v141, "setActuatorVelocities: noop for mock device", v144, 2u);
          v79 = v214;
        }

        (*(v79 + 8))(v139, v137);
        v145 = v186;
        (*(v143 + 56))(v186, 1, 1, v135);
        sub_10018C604(v206, v207, v208, v145);
        v146 = v185;
        sub_1000B5150(v145, v185, &unk_1002A6F30, &unk_10023C4D0);
        if ((*(v143 + 48))(v146, 1, v135) == 1)
        {
          sub_100095C84(v146, &unk_1002A6F30, &unk_10023C4D0);
          v147 = 0;
        }

        else
        {
          sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
          swift_dynamicCast();
          v147 = v216;
        }

        v211(1, v147);

        v162 = v145;
        return sub_100095C84(v162, &unk_1002A6F30, &unk_10023C4D0);
      }
    }

    v148 = v194;
    *v194 = 0x6C706D6920746F6ELL;
    v148[1] = 0xEF6465746E656D65;
    v149 = v213;
    (*(v213 + 104))(v148, enum case for Errors.OperationNotSupported(_:), v135);
    v150 = v196;
    (*(v149 + 16))(v196, v148, v135);
    (*(v149 + 56))(v150, 0, 1, v135);
    sub_10018C604(v206, v207, v208, v150);
    v151 = v195;
    sub_1000B5150(v150, v195, &unk_1002A6F30, &unk_10023C4D0);
    if ((*(v149 + 48))(v151, 1, v135) == 1)
    {
      sub_100095C84(v151, &unk_1002A6F30, &unk_10023C4D0);
      v152 = 0;
    }

    else
    {
      sub_100095B94(0, &qword_1002A92B0, NSError_ptr);
      swift_dynamicCast();
      v152 = v216;
    }

    v211(0, v152);

    sub_100095C84(v150, &unk_1002A6F30, &unk_10023C4D0);
    return (*(v149 + 8))(v148, v135);
  }
}

uint64_t sub_10011B22C(void *a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6, uint64_t a7, uint64_t a8)
{
  v116 = a7;
  v117 = a8;
  v121 = a5;
  v122 = a6;
  v118 = a3;
  v119 = a4;
  v120 = a2;
  v9 = sub_100095274(&unk_1002A6F30, &unk_10023C4D0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v126 = &v112 - v11;
  v125 = type metadata accessor for Errors();
  v12 = *(v125 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v125);
  v15 = (&v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for Logger();
  v17 = *(v16 - 8);
  v123 = v16;
  v124 = v17;
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v21 = &v112 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __chkstk_darwin(v19);
  v24 = &v112 - v23;
  v25 = __chkstk_darwin(v22);
  v114 = &v112 - v26;
  v27 = __chkstk_darwin(v25);
  v115 = &v112 - v28;
  __chkstk_darwin(v27);
  v30 = &v112 - v29;
  if (qword_1002A6780 != -1)
  {
    swift_once();
  }

  v31 = qword_1002B1CF0;
  v32 = OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock;
  v33 = *(qword_1002B1CF0 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase__dbLock);

  os_unfair_lock_lock(v33 + 4);

  v34 = *(v31 + OBJC_IVAR____TtC14dockaccessoryd21DockAccessoryDatabase_connected);
  v35 = *(v31 + v32);
  v36 = v34;

  os_unfair_lock_unlock(v35 + 4);

  if (v34)
  {
    v37 = v36;
    v38 = dispatch thunk of DockCoreAccessory.info.getter();
    v113 = v37;

    type metadata accessor for DockCoreInfo();
    v39 = a1;
    LOBYTE(v37) = static NSObject.== infix(_:_:)();

    if (v37)
    {
      v40 = sub_1001884E4();
      if (v40)
      {
        v41 = v40;
        type metadata accessor for ActuationController();
        if (dispatch thunk of DockCoreAccessory.hasSystem(name:kind:)())
        {
          sub_10019A4F0(1);
          v42 = v41;
          sub_100198E44(v41);

          DockCoreInfo.type.getter();
          v43 = DockCoreAccessoryType.rawValue.getter();
          if (v43 == DockCoreAccessoryType.rawValue.getter())
          {
            v44 = dispatch thunk of DockCoreAccessory.info.getter();
            v45 = swift_allocObject();
            *(v45 + 16) = 1;
            *(v45 + 24) = v39;
            *(v45 + 32) = v42;
            v46 = v122;
            *(v45 + 40) = v121;
            *(v45 + 48) = v46;
            v47 = v39;
            v42 = v42;

            v48 = sub_1001971B4(v44, v120, v118, v119, sub_10011C13C, v45);
            v50 = v49;

            if (v48)
            {
              if (v50)
              {
                v51 = qword_1002A66D8;

                v52 = v51 == -1;
                v53 = v124;
                if (!v52)
                {
                  swift_once();
                }

                v54 = v123;
                v55 = sub_100093DE8(v123, qword_1002A9110);
                v56 = v115;
                (*(v53 + 16))(v115, v55, v54);
                v122 = v42;
                v57 = v42;
                v58 = v53;
                v59 = v57;
                v60 = v117;

                v61 = Logger.logObject.getter();
                v62 = static os_log_type_t.default.getter();

                if (os_log_type_enabled(v61, v62))
                {
                  v63 = swift_slowAlloc();
                  v121 = v48;
                  v64 = v63;
                  v65 = swift_slowAlloc();
                  v66 = swift_slowAlloc();
                  v127 = v66;
                  *v64 = 138412802;
                  v67 = dispatch thunk of DockCoreAccessory.info.getter();
                  *(v64 + 4) = v67;
                  *v65 = v67;
                  *(v64 + 12) = 2080;
                  v68 = Array.description.getter();
                  v70 = sub_1000952D4(v68, v69, &v127);

                  *(v64 + 14) = v70;
                  *(v64 + 22) = 1024;
                  *(v64 + 24) = v120;
                  _os_log_impl(&_mh_execute_header, v61, v62, "Animator was started for %@, target %s, owner %d", v64, 0x1Cu);
                  sub_100095C84(v65, &unk_1002A6F60, &unk_10023C4E0);

                  sub_100095808(v66);
                  v60 = v117;

                  (*(v58 + 8))(v115, v54);
                }

                else
                {

                  (*(v58 + 8))(v56, v54);
                }

                sub_1000C4E14(v116, v60, 0);
                v42 = v122;
                goto LABEL_40;
              }

              v97 = v124;
              if (*(v48 + 16) == v120)
              {

                sub_1000C4E14(v116, v117, 0);
LABEL_40:
                v95 = v126;
                (*(v12 + 56))(v126, 1, 1, v125);
                sub_1001C7BA4(1, v95);

                return sub_100095C84(v95, &unk_1002A6F30, &unk_10023C4D0);
              }

              v98 = qword_1002A66D8;

              if (v98 != -1)
              {
                swift_once();
              }

              v99 = v123;
              v100 = sub_100093DE8(v123, qword_1002A9110);
              v101 = v114;
              (*(v97 + 16))(v114, v100, v99);

              v102 = v119;

              v103 = Logger.logObject.getter();
              v104 = v48;
              v105 = static os_log_type_t.default.getter();

              if (os_log_type_enabled(v103, v105))
              {
                v106 = swift_slowAlloc();
                v107 = swift_slowAlloc();
                v121 = v104;
                v127 = v107;
                *v106 = 136315394;
                v108 = *(v121 + 24);
                v122 = v42;
                v109 = v97;
                v110 = *(v121 + 32);

                v111 = sub_1000952D4(v108, v110, &v127);

                *(v106 + 4) = v111;
                *(v106 + 12) = 2080;
                *(v106 + 14) = sub_1000952D4(v118, v102, &v127);
                _os_log_impl(&_mh_execute_header, v103, v105, "animator owned by %s, rejecting request from %s", v106, 0x16u);
                swift_arrayDestroy();

                (*(v109 + 8))(v114, v123);
                v42 = v122;
              }

              else
              {

                (*(v97 + 8))(v101, v123);
              }

              *v15 = 0xD000000000000021;
              v15[1] = 0x8000000100231AD0;
              v86 = v125;
              (*(v12 + 104))(v15, enum case for Errors.UnexpectedError(_:), v125);
              v87 = v126;
              (*(v12 + 16))(v126, v15, v86);
              (*(v12 + 56))(v87, 0, 1, v86);
              sub_1001C7BA4(0, v87);

LABEL_35:
              sub_100095C84(v87, &unk_1002A6F30, &unk_10023C4D0);
              return (*(v12 + 8))(v15, v86);
            }

            *v15 = 0xD000000000000014;
            v15[1] = 0x8000000100231AB0;
            v96 = &enum case for Errors.NotFound(_:);
          }

          else
          {
            type metadata accessor for DockCoreManager();
            if (static DockCoreManager.debugAllowed.getter())
            {
              DockCoreInfo.type.getter();
              v88 = DockCoreAccessoryType.rawValue.getter();
              if (v88 == DockCoreAccessoryType.rawValue.getter())
              {
                if (qword_1002A66D8 != -1)
                {
                  swift_once();
                }

                v89 = v123;
                v90 = sub_100093DE8(v123, qword_1002A9110);
                v91 = v124;
                (*(v124 + 16))(v24, v90, v89);
                v92 = Logger.logObject.getter();
                v93 = static os_log_type_t.default.getter();
                if (os_log_type_enabled(v92, v93))
                {
                  v94 = swift_slowAlloc();
                  *v94 = 0;
                  _os_log_impl(&_mh_execute_header, v92, v93, "setActuatorVelocities: noop for mock device", v94, 2u);
                }

                (*(v91 + 8))(v24, v89);
                v95 = v126;
                (*(v12 + 56))(v126, 1, 1, v125);
                sub_1001C7BA4(1, v95);

                return sub_100095C84(v95, &unk_1002A6F30, &unk_10023C4D0);
              }
            }

            *v15 = 0x6C706D6920746F6ELL;
            v15[1] = 0xEF6465746E656D65;
            v96 = &enum case for Errors.OperationNotSupported(_:);
          }

          v86 = v125;
          (*(v12 + 104))(v15, *v96, v125);
          v87 = v126;
          (*(v12 + 16))(v126, v15, v86);
          (*(v12 + 56))(v87, 0, 1, v86);
          sub_1001C7BA4(0, v87);

          goto LABEL_35;
        }
      }

      if (qword_1002A66D8 != -1)
      {
        swift_once();
      }

      v80 = v123;
      v81 = sub_100093DE8(v123, qword_1002A9110);
      v82 = v124;
      (*(v124 + 16))(v21, v81, v80);
      v83 = Logger.logObject.getter();
      v84 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v83, v84))
      {
        v85 = swift_slowAlloc();
        *v85 = 0;
        _os_log_impl(&_mh_execute_header, v83, v84, "Failed to find valid accessory with actuation controller.", v85, 2u);
      }

      (*(v82 + 8))(v21, v80);
      *v15 = 0xD000000000000015;
      v15[1] = 0x8000000100231A90;
      v86 = v125;
      (*(v12 + 104))(v15, enum case for Errors.NotFound(_:), v125);
      v87 = v126;
      (*(v12 + 16))(v126, v15, v86);
      (*(v12 + 56))(v87, 0, 1, v86);
      sub_1001C7BA4(0, v87);

      goto LABEL_35;
    }
  }

  if (qword_1002A66D8 != -1)
  {
    swift_once();
  }

  v71 = v123;
  v72 = sub_100093DE8(v123, qword_1002A9110);
  v73 = v124;
  (*(v124 + 16))(v30, v72, v71);
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&_mh_execute_header, v74, v75, "No such connected accessory, not setting velocity", v76, 2u);
  }

  (*(v73 + 8))(v30, v71);
  *v15 = 0xD000000000000016;
  v15[1] = 0x8000000100231A70;
  v77 = v125;
  (*(v12 + 104))(v15, enum case for Errors.OperationNotSupported(_:), v125);
  v78 = v126;
  (*(v12 + 16))(v126, v15, v77);
  (*(v12 + 56))(v78, 0, 1, v77);
  sub_1001C7BA4(0, v78);

  sub_100095C84(v78, &unk_1002A6F30, &unk_10023C4D0);
  return (*(v12 + 8))(v15, v77);
}