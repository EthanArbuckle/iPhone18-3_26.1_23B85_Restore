unint64_t sub_10002BC44()
{
  result = qword_100152D00;
  if (!qword_100152D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D00);
  }

  return result;
}

char *sub_10002BC98()
{
  v1 = sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter(&type metadata for UInt8, v1);
  sub_1000A2D44(&type metadata for UInt8, &type metadata for UInt8, &v13);
  if (v14)
  {
    return &_swiftEmptyArrayStorage;
  }

  v2 = &_swiftEmptyArrayStorage;
  v3 = sub_10002B4FC();
  v17 = v3;
  while (1)
  {
    __chkstk_darwin(v3);
    sub_1000A3E94(&type metadata for TransparencyExtension, &v13);
    if (v0)
    {
      break;
    }

    if (v16 >> 60 != 15)
    {
      v12 = v16;
      v5 = v13;
      v4 = v15;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v2 = sub_10002CA60(0, *(v2 + 2) + 1, 1, v2);
      }

      v7 = *(v2 + 2);
      v6 = *(v2 + 3);
      v8 = v12;
      if (v7 >= v6 >> 1)
      {
        v10 = sub_10002CA60((v6 > 1), v7 + 1, 1, v2);
        v8 = v12;
        v2 = v10;
      }

      *(v2 + 2) = v7 + 1;
      v9 = &v2[32 * v7];
      v9[32] = v5;
      *(v9 + 5) = v4;
      *(v9 + 3) = v8;
      ATLogProofs.VerificationResult.result.getter(&type metadata for UInt8, v1);
      v3 = sub_1000A2D44(&type metadata for UInt8, &type metadata for UInt8, &v13);
      if ((v14 & 1) == 0)
      {
        continue;
      }
    }

    return v2;
  }

  return v2;
}

uint64_t sub_10002BE84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_1000A2084(*a1, *(a1 + 8), *(a1 + 16));
  result = sub_1000A35A4(v3);
  if (v5 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
  }

  return result;
}

uint64_t sub_10002BEE0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100026FB0(a1, a2);
  }

  return a1;
}

unint64_t sub_10002BEF4()
{
  result = qword_100152D08;
  if (!qword_100152D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D08);
  }

  return result;
}

char *sub_10002BF48@<X0>(char **a1@<X8>)
{
  result = sub_10002BC98();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_10002BF74()
{
  v16 = *v0;
  v1 = sub_10002ABFC();
  ATLogProofs.VerificationResult.result.getter(&type metadata for UInt8, v1);
  v2 = sub_1000A20C8(&v16, &type metadata for UInt8, &type metadata for UInt8);
  v15 = v0[1];
  ATLogProofs.VerificationResult.result.getter(&type metadata for UInt8, v1);
  result = sub_1000A20C8(&v15, &type metadata for UInt8, &type metadata for UInt8);
  v4 = v2 + result;
  if (__OFADD__(v2, result))
  {
    __break(1u);
    goto LABEL_8;
  }

  __chkstk_darwin(result);
  v13 = v0;
  result = sub_1000A39FC(&type metadata for UInt8, sub_10002C18C, v12, &type metadata for UInt8, v1);
  v5 = __OFADD__(v4, result);
  v6 = v4 + result;
  if (v5)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  __chkstk_darwin(result);
  v13 = v0;
  result = sub_1000A39FC(&type metadata for UInt8, sub_10002C1F8, v12, &type metadata for UInt8, v1);
  v7 = v6 + result;
  if (__OFADD__(v6, result))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v14 = *(v0 + 5);
  v8 = sub_10002BEF4();
  ATLogProofs.VerificationResult.result.getter(&type metadata for UInt64, v8);
  result = sub_1000A20C8(&v14, &type metadata for UInt64, &type metadata for UInt64);
  v9 = v7 + result;
  if (__OFADD__(v7, result))
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  __chkstk_darwin(result);
  v13 = v0;
  v10 = sub_10002B4FC();
  v11 = sub_1000A39FC(&type metadata for UInt16, sub_10002C264, v12, &type metadata for UInt16, v10);
  v5 = __OFADD__(v9, v11);
  result = v9 + v11;
  if (v5)
  {
LABEL_11:
    __break(1u);
  }

  return result;
}

uint64_t sub_10002C18C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  sub_100027004(v2, v3);
  v4 = TransparencyByteBuffer.init(data:)(v2, v3);
  v6 = v5;
  v8 = sub_1000A3104(v4, v5, v7);
  sub_100026FB0(v4, v6);
  return v8;
}

uint64_t sub_10002C1F8()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  sub_100027004(v2, v3);
  v4 = TransparencyByteBuffer.init(data:)(v2, v3);
  v6 = v5;
  v8 = sub_1000A3104(v4, v5, v7);
  sub_100026FB0(v4, v6);
  return v8;
}

uint64_t sub_10002C264()
{
  v3 = *(*(v0 + 16) + 48);

  sub_10002CB6C(&v3);
  v1 = sub_10002C2EC(0, v3);

  return v1;
}

uint64_t sub_10002C2EC(uint64_t a1, uint64_t a2)
{
  v3 = (a2 + 56);
  v4 = *(a2 + 16) + 1;
  while (1)
  {
    if (!--v4)
    {
      return a1;
    }

    v5 = *(v3 - 1);
    v19 = *v3;
    v6 = *(v3 - 2);
    v20 = *(v3 - 24);
    v7 = v20;
    sub_100027004(v6, v5);
    v8 = sub_10002ABFC();
    ATLogProofs.VerificationResult.result.getter(&type metadata for UInt8, v8);
    v18 = sub_1000A20C8(&v20, &type metadata for UInt8, &type metadata for UInt8);
    __chkstk_darwin(v18);
    v14[16] = v7;
    v15 = v6;
    v16 = v5;
    v17 = v19;
    v9 = sub_10002B4FC();
    v10 = sub_1000A39FC(&type metadata for UInt16, sub_10002DC38, v14, &type metadata for UInt16, v9);
    result = sub_100026FB0(v6, v5);
    v12 = v18 + v10;
    if (__OFADD__(v18, v10))
    {
      break;
    }

    v3 += 4;
    v13 = __OFADD__(a1, v12);
    a1 += v12;
    if (v13)
    {
      __break(1u);
      return a1;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10002C448(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); *(v3 - 24) == *(i - 24); i += 4)
    {
      v5 = *(v3 - 2);
      v6 = *(v3 - 1);
      v7 = *v3;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *(i - 2);
      sub_100027004(v5, v6);
      sub_100027004(v10, v9);
      LOBYTE(v7) = static TransparencyByteBuffer.== infix(_:_:)(v5, v6, v7, v10, v9, v8);
      sub_100026FB0(v10, v9);
      sub_100026FB0(v5, v6);
      if ((v7 & 1) == 0)
      {
        break;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }
  }

  return 0;
}

void sub_10002C540(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 1));
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  Data.hash(into:)();
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v2 + 40));
  sub_10002D4F8(a1, *(v2 + 48));
  if (*(v2 + 56))
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10002C5C8()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + 40));
  sub_10002D4F8(v6, *(v0 + 48));
  if (*(v0 + 56))
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10002C67C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *v0;
  v9 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v5);
  sub_10002D4F8(v11, v6);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void sub_10002C764(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  v10 = *(v1 + 1);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v10);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v7);
  sub_10002D4F8(a1, v8);
  if (v9)
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10002C82C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *v0;
  v9 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v5);
  sub_10002D4F8(v11, v6);
  if (v7)
  {
    Hasher._combine(_:)(1u);
    NSObject.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_10002C910(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = a1[3];
  v7[2] = a1[2];
  v7[3] = v3;
  v4 = a2[1];
  v8[0] = *a2;
  v8[1] = v4;
  v5 = a2[3];
  v8[2] = a2[2];
  v8[3] = v5;
  return sub_10002D6D0(v7, v8) & 1;
}

char *sub_10002C95C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100152D60, &qword_100103DA0);
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
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_10002CA60(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100152D68, &qword_100103DA8);
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
    v10 = &_swiftEmptyArrayStorage;
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

Swift::Int sub_10002CB6C(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10002D5B0(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12[8];
          if (v13 >= *(v12 - 24))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 24) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
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
      v7 = &_swiftEmptyArrayStorage;
    }

    v18[0] = v7 + 4;
    v18[1] = v6;
    sub_10002CCC0(v18, v19, v20, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_10002CCC0(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v96 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = &_swiftEmptyArrayStorage;
LABEL_88:
    v96 = *v96;
    if (!v96)
    {
      goto LABEL_126;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_120:
      result = sub_10002D4E4(v9);
      v9 = result;
    }

    v88 = v9 + 16;
    v89 = *(v9 + 2);
    if (v89 >= 2)
    {
      while (*a3)
      {
        v90 = &v9[16 * v89];
        v91 = *v90;
        v92 = &v88[2 * v89];
        v93 = v92[1];
        sub_10002D254((*a3 + 32 * *v90), (*a3 + 32 * *v92), (*a3 + 32 * v93), v96);
        if (v4)
        {
        }

        if (v93 < v91)
        {
          goto LABEL_112;
        }

        if (v89 - 2 >= *v88)
        {
          goto LABEL_113;
        }

        *v90 = v91;
        *(v90 + 1) = v93;
        v94 = *v88 - v89;
        if (*v88 < v89)
        {
          goto LABEL_114;
        }

        v89 = *v88 - 1;
        result = memmove(v92, v92 + 2, 16 * v94);
        *v88 = v89;
        if (v89 <= 1)
        {
        }
      }

      goto LABEL_124;
    }
  }

  v7 = a4;
  v8 = 0;
  v9 = &_swiftEmptyArrayStorage;
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 32 * v8);
      v12 = 32 * v10;
      v13 = (*a3 + 32 * v10);
      v16 = *v13;
      v15 = v13 + 64;
      v14 = v16;
      v17 = v10 + 2;
      v18 = v11;
      while (v6 != v17)
      {
        v19 = *v15;
        v15 += 32;
        v20 = (v11 < v14) ^ (v19 >= v18);
        ++v17;
        v18 = v19;
        if ((v20 & 1) == 0)
        {
          v8 = v17 - 1;
          if (v11 >= v14)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v11 >= v14)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v21 = 32 * v8 - 8;
        v22 = v8;
        v23 = v10;
        do
        {
          if (v23 != --v22)
          {
            v30 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v24 = (v30 + v12);
            v25 = (v30 + v21);
            v26 = *v24;
            v27 = *(v24 + 3);
            v28 = *(v24 + 8);
            v29 = *(v25 - 1);
            *v24 = *(v25 - 3);
            *(v24 + 1) = v29;
            *(v25 - 24) = v26;
            *(v25 - 1) = v28;
            *v25 = v27;
          }

          ++v23;
          v21 -= 32;
          v12 += 32;
        }

        while (v23 < v22);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10002C95C(0, *(v9 + 2) + 1, 1, v9);
      v9 = result;
    }

    v42 = *(v9 + 2);
    v41 = *(v9 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      result = sub_10002C95C((v41 > 1), v42 + 1, 1, v9);
      v9 = result;
    }

    *(v9 + 2) = v43;
    v44 = &v9[16 * v42];
    *(v44 + 4) = v10;
    *(v44 + 5) = v8;
    v45 = *v96;
    if (!*v96)
    {
      goto LABEL_125;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v9 + 4);
          v48 = *(v9 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_103;
          }

          v63 = &v9[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v9[16 * v46 + 32];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_110;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v73 = &v9[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_71:
        if (v68)
        {
          goto LABEL_105;
        }

        v76 = &v9[16 * v46];
        v78 = *(v76 + 4);
        v77 = *(v76 + 5);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_108;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_78:
        v84 = v46 - 1;
        if (v46 - 1 >= v43)
        {
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
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v85 = *&v9[16 * v84 + 32];
        v86 = *&v9[16 * v46 + 40];
        sub_10002D254((*a3 + 32 * v85), (*a3 + 32 * *&v9[16 * v46 + 32]), (*a3 + 32 * v86), v45);
        if (v4)
        {
        }

        if (v86 < v85)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_10002D4E4(v9);
        }

        if (v84 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v87 = &v9[16 * v84];
        *(v87 + 4) = v85;
        *(v87 + 5) = v86;
        result = sub_10002D458(v46);
        v43 = *(v9 + 2);
        if (v43 <= 1)
        {
          goto LABEL_3;
        }
      }

      v51 = &v9[16 * v43 + 32];
      v52 = *(v51 - 64);
      v53 = *(v51 - 56);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_101;
      }

      v56 = *(v51 - 48);
      v55 = *(v51 - 40);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_102;
      }

      v58 = &v9[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_104;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v9[16 * v46 + 32];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_111;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v31 = *a3;
  v32 = *a3 + 32 * v8 - 32;
  v33 = v10 - v8;
LABEL_30:
  v34 = *(v31 + 32 * v8);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    if (v34 >= *v36)
    {
LABEL_29:
      ++v8;
      v32 += 32;
      --v33;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v31)
    {
      break;
    }

    v37 = *(v36 + 7);
    v38 = *(v36 + 40);
    v39 = *(v36 + 1);
    *(v36 + 2) = *v36;
    *(v36 + 3) = v39;
    *v36 = v34;
    *(v36 + 8) = v38;
    *(v36 + 3) = v37;
    v36 -= 32;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_10002D254(unsigned __int8 *__dst, unsigned __int8 *__src, unsigned __int8 *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 32;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 32;
    v5 -= 32;
    v19 = v14;
    do
    {
      v20 = v5 + 32;
      v21 = *(v19 - 32);
      v19 -= 32;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 32, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 32;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= &v4[v24 & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_10002D458(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_10002D4E4(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    v9 = *(v7 + 40);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

void sub_10002D4F8(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v7 = *(v4 - 1);
      v5 = *v4;
      v6 = *(v4 - 24);
      Hasher._combine(_:)(0);
      Hasher._combine(_:)(v6);
      sub_10002B154();
      dispatch thunk of Hashable.hash(into:)();
      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

char *sub_10002D5C4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_100152D68, &qword_100103DA8);
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
    v10 = &_swiftEmptyArrayStorage;
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

uint64_t sub_10002D6D0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || (sub_100027800(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0 || (sub_100027800(*(a1 + 3), *(a1 + 4), *(a2 + 3), *(a2 + 4)) & 1) == 0 || *(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  v7 = *(a1 + 6);

  sub_10002CB6C(&v7);
  v4 = v7;
  v7 = *(a2 + 6);

  sub_10002CB6C(&v7);
  v5 = sub_10002C448(v4, v7);

  return v5 & 1;
}

unint64_t sub_10002D804()
{
  result = qword_100152D28;
  if (!qword_100152D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D28);
  }

  return result;
}

uint64_t sub_10002D888(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1000242F4(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10002D8E0()
{
  result = qword_100152D40;
  if (!qword_100152D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D40);
  }

  return result;
}

unint64_t sub_10002D938()
{
  result = qword_100152D48;
  if (!qword_100152D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D48);
  }

  return result;
}

unint64_t sub_10002D990()
{
  result = qword_100152D50;
  if (!qword_100152D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D50);
  }

  return result;
}

unint64_t sub_10002D9E8()
{
  result = qword_100152D58;
  if (!qword_100152D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D58);
  }

  return result;
}

uint64_t sub_10002DA6C(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

__n128 sub_10002DA88(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_10002DA94(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10002DAE8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 sub_10002DB48(uint64_t a1, uint64_t a2)
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

uint64_t sub_10002DB5C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10002DBA4(uint64_t result, int a2, int a3)
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
      *(result + 48) = (a2 - 1);
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

unint64_t sub_10002DC6C(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 1)
  {
    if (!(a2 >> 5))
    {
      _StringGuts.grow(_:)(24);
      v4._countAndFlagsBits = 0xD000000000000016;
      v4._object = 0x800000010010A6B0;
      String.append(_:)(v4);
      type metadata accessor for Status(0);
      goto LABEL_19;
    }

    _StringGuts.grow(_:)(35);
    v9._object = 0x800000010010A690;
    v9._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v9);
    type metadata accessor for LogType(0);
LABEL_18:
    _print_unlocked<A, B>(_:_:)();
    v10._countAndFlagsBits = 0x746365707865202CLL;
    v10._object = 0xEB00000000206465;
    String.append(_:)(v10);
    goto LABEL_19;
  }

  if (v2 == 2)
  {
    _StringGuts.grow(_:)(38);
    v5._countAndFlagsBits = 0xD000000000000017;
    v5._object = 0x800000010010A670;
    String.append(_:)(v5);
    type metadata accessor for Application(0);
    goto LABEL_18;
  }

  if (v2 == 3)
  {
    _StringGuts.grow(_:)(22);
    v3._object = 0x800000010010A5E0;
    v3._countAndFlagsBits = 0xD000000000000014;
    String.append(_:)(v3);
    type metadata accessor for LogType(0);
LABEL_19:
    _print_unlocked<A, B>(_:_:)();
    return 0;
  }

  if (a2 == 128 && a1 == 1)
  {
    v7 = 0xD00000000000001ELL;
  }

  else
  {
    v7 = 0xD00000000000001CLL;
  }

  if (a1 | a2 ^ 0x80)
  {
    return v7;
  }

  else
  {
    return 0xD000000000000025;
  }
}

void sub_10002DF48(uint64_t a1, unint64_t *a2)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v4)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_10002DF94(uint64_t a1, unsigned __int8 a2)
{
  v2 = a2 >> 5;
  if (v2 <= 1)
  {
    if (a2 >> 5)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (v2 == 2)
  {
    return 3;
  }

  else if (v2 == 3)
  {
    return 7;
  }

  else
  {
    return a1 + 4;
  }
}

uint64_t sub_10002DFDC(uint64_t a1)
{
  v2 = sub_100033064();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_10002E018(uint64_t a1)
{
  v2 = sub_100033064();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_10002E074()
{
  v1 = *(v0 + 8) >> 5;
  if (v1 <= 1)
  {
    if (v1)
    {
      return 2;
    }

    else
    {
      return 1;
    }
  }

  else if (v1 == 2)
  {
    return 3;
  }

  else if (v1 == 3)
  {
    return 7;
  }

  else
  {
    return *v0 + 4;
  }
}

uint64_t sub_10002E0C8()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EA8 = result;
  return result;
}

uint64_t sub_10002E0FC()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EB8 = result;
  return result;
}

uint64_t sub_10002E130()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EC8 = result;
  return result;
}

uint64_t sub_10002E164()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156ED8 = result;
  return result;
}

uint64_t sub_10002E198()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EE8 = result;
  return result;
}

uint64_t sub_10002E1CC()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100156EF8 = result;
  return result;
}

uint64_t sub_10002E200()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D168);
  sub_100025AE0(v0, qword_10015D168);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10002E280()
{
  if (qword_100156F00 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D168);
}

uint64_t sub_10002E2E4@<X0>(uint64_t a1@<X8>)
{
  if (qword_100156F00 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D168);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

void (*ConsistencyProofResponse.expectedApplication.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = ConsistencyProofResponse.expectedApplication.getter();
  *(v4 + 32) = v5;
  *(v4 + 36) = BYTE4(v5) & 1;
  return sub_10002E47C;
}

unint64_t sub_10002E4EC(void *a1, void *a2, void (*a3)(void))
{
  if (*a1 != -1)
  {
    v11 = a2;
    swift_once();
    a2 = v11;
  }

  v5 = *a2;
  swift_beginAccess();
  v6 = objc_getAssociatedObject(v3, (v5 + 16));
  swift_endAccess();
  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v13 = 0u;
    v14 = 0u;
  }

  v15[0] = v13;
  v15[1] = v14;
  if (*(&v14 + 1))
  {
    a3(0);
    v7 = swift_dynamicCast();
    v8 = v12;
    v9 = v7 ^ 1;
    if (!v7)
    {
      v8 = 0;
    }
  }

  else
  {
    sub_10002533C(v15, &qword_100152D70, &qword_100103DB0);
    v8 = 0;
    v9 = 1;
  }

  return v8 | (v9 << 32);
}

uint64_t sub_10002E64C(uint64_t a1, void *a2, uint64_t *a3, void (*a4)(void))
{
  if (*a2 != -1)
  {
    v8 = a4;
    swift_once();
    a4 = v8;
    v5 = *a3;
    if ((a1 & 0x100000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_5:
    v6 = 0;
    goto LABEL_6;
  }

  v5 = *a3;
  if ((a1 & 0x100000000) != 0)
  {
    goto LABEL_5;
  }

LABEL_3:
  a4(0);
  v6 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_6:
  swift_beginAccess();
  objc_setAssociatedObject(v4, (v5 + 16), v6, 0x303);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConsistencyProofResponse.expectedLogType.modify(uint64_t *a1))(uint64_t a1, uint64_t a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 24) = v1;
  v5 = ConsistencyProofResponse.expectedLogType.getter();
  *(v4 + 32) = v5;
  *(v4 + 36) = BYTE4(v5) & 1;
  return sub_10002E798;
}

void sub_10002E7D0(uint64_t a1, uint64_t a2, void *a3, uint64_t *a4, void (*a5)(void))
{
  v5 = *a1;
  v6 = *(*a1 + 32);
  v7 = *(*a1 + 36);
  if (*a3 == -1)
  {
    v8 = *a4;
    if (*(*a1 + 36))
    {
LABEL_3:
      v9 = 0;
      goto LABEL_6;
    }
  }

  else
  {
    v12 = a5;
    swift_once();
    a5 = v12;
    v8 = *a4;
    if (v7)
    {
      goto LABEL_3;
    }
  }

  *v5 = v6;
  a5(0);
  v9 = _bridgeAnythingNonVerbatimToObjectiveC<A>(_:)();
LABEL_6:
  v11 = v5[3];
  swift_beginAccess();
  objc_setAssociatedObject(v11, (v8 + 16), v9, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();

  free(v5);
}

uint64_t ConsistencyProofResponse.startRevision.getter()
{
  if (qword_100156EC0 != -1)
  {
    swift_once();
  }

  v1 = qword_100156EC8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

uint64_t ConsistencyProofResponse.startRevision.setter(uint64_t a1, char a2)
{
  if (qword_100156EC0 != -1)
  {
    v6 = a2;
    swift_once();
    a2 = v6;
  }

  v3 = qword_100156EC8;
  if (a2)
  {
    isa = 0;
  }

  else
  {
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v3 + 16), isa, 0x303);
  swift_endAccess();
  return swift_unknownObjectRelease();
}

void (*ConsistencyProofResponse.startRevision.modify(uint64_t *a1))(uint64_t *a1)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  *(v3 + 24) = ConsistencyProofResponse.startRevision.getter();
  *(v4 + 32) = v5 & 1;
  return sub_10002EB20;
}

void sub_10002EB20(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 24);
  v3 = *(v1 + 32);
  if (qword_100156EC0 != -1)
  {
    swift_once();
  }

  v4 = qword_100156EC8;
  if (v3)
  {
    isa = 0;
  }

  else
  {
    isa = Int64._bridgeToObjectiveC()().super.super.isa;
  }

  v6 = *(v1 + 40);
  swift_beginAccess();
  objc_setAssociatedObject(v6, (v4 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();

  free(v1);
}

uint64_t ConsistencyProofResponse.keyBag.getter()
{
  if (qword_100156ED0 != -1)
  {
    swift_once();
  }

  v1 = qword_100156ED8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152D78, &off_100131310);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void ConsistencyProofResponse.keyBag.setter(void *a1)
{
  if (qword_100156ED0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156ED8;
  swift_beginAccess();
  v4 = a1;
  objc_setAssociatedObject(v1, (v3 + 16), v4, 1);
  swift_endAccess();
}

void (*ConsistencyProofResponse.keyBag.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = ConsistencyProofResponse.keyBag.getter();
  return sub_10002EE44;
}

void sub_10002EE44(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  if (a2)
  {
    v4 = qword_100156ED0;
    v5 = v3;
    if (v4 != -1)
    {
      swift_once();
    }

    v6 = v2[4];
    v7 = qword_100156ED8;
    swift_beginAccess();
    v8 = v5;
    objc_setAssociatedObject(v6, (v7 + 16), v8, 1);
    swift_endAccess();

    v9 = v2[3];
  }

  else
  {
    if (qword_100156ED0 != -1)
    {
      swift_once();
    }

    v10 = v2[4];
    v11 = qword_100156ED8;
    swift_beginAccess();
    v9 = v3;
    objc_setAssociatedObject(v10, (v11 + 16), v9, 1);
    swift_endAccess();
  }

  free(v2);
}

double sub_10002EF90@<D0>(uint64_t a1@<X8>)
{
  if (qword_100156EE0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156EE8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_10002F0C0(uint64_t a1)
{
  if (qword_100156EE0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156EE8;
  sub_100025834(a1, v13, &qword_100152D88, &unk_100103DC0);
  v4 = v14;
  if (v14)
  {
    v5 = sub_100026F6C(v13, v14);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100024E14(v13);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v10, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_10002F284(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_10002EF90(v3);
  return sub_10002F2FC;
}

void sub_10002F2FC(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_100025834(*a1, v2 + 40, &qword_100152D88, &unk_100103DC0);
    sub_10002F0C0(v2 + 40);
    sub_10002533C(v2, &qword_100152D88, &unk_100103DC0);
  }

  else
  {
    sub_10002F0C0(*a1);
  }

  free(v2);
}

uint64_t ConsistencyProofResponse.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_100156EF0 != -1)
  {
    swift_once();
  }

  v3 = qword_100156EF8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t ConsistencyProofResponse.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  if (qword_100156EF0 != -1)
  {
    swift_once();
  }

  v8 = qword_100156EF8;
  sub_100025834(a1, v7, &qword_100152D90, &qword_100105620);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v8 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*ConsistencyProofResponse.receiptTime.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  ConsistencyProofResponse.receiptTime.getter(v4);
  return sub_10002F780;
}

void sub_10002F780(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_100025834(a1[2], v2, &qword_100152D90, &qword_100105620);
    ConsistencyProofResponse.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    ConsistencyProofResponse.receiptTime.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ConsistencyProofResponse.isNewEpoch()()
{
  v2 = [v0 responsesArray];
  if (!v2)
  {
    __break(1u);
    goto LABEL_23;
  }

  v3 = v2;
  v4 = [v2 count];

  if (v4 >= 1)
  {
    v5 = ConsistencyProofResponse.keyBag.getter();
    if (!v5)
    {
      sub_10002FB04();
      swift_allocError();
      v16[1] = 0;
      v16[2] = 0;
      *v16 = 0x8000000000000000;
      swift_willThrow();
      goto LABEL_18;
    }

    v6 = v5;
    if ([v0 logType] != 3 && objc_msgSend(v0, "logType") != 2)
    {
      v19 = [v0 logType];
      sub_100032EA4();
      swift_allocError();
      *v17 = v19;
      v18 = 96;
      goto LABEL_17;
    }

    v7 = [v0 logType];
    v8 = &selRef_tltLogBeginningMs;
    if (v7 != 3)
    {
      v8 = &selRef_patLogBeginningMs;
    }

    v9 = [v6 *v8];
    v2 = [v0 responsesArray];
    if (v2)
    {
      v10 = v2;
      v11 = [v2 objectAtIndexedSubscript:0];

      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      sub_100033178(0, &qword_100152DA8, off_1001312D0);
      if (swift_dynamicCast())
      {
        v2 = [v22 startSlh];
        if (v2)
        {
          v12 = v2;
          sub_100033178(0, &qword_100152A98, off_1001312E8);
          v13 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v12];

          v14 = sub_100061B40();
          if (v1)
          {
          }

          else
          {
            v20 = v14;

            if (v20 >= 1 && v9 < v20)
            {
              v15 = 1;
              goto LABEL_18;
            }
          }

          goto LABEL_13;
        }

LABEL_24:
        __break(1u);
        return v2;
      }

      sub_100032EA4();
      swift_allocError();
      *v17 = 2;
      v18 = 0x80;
LABEL_17:
      *(v17 + 8) = v18;
      swift_willThrow();

      goto LABEL_18;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_13:
  v15 = 0;
LABEL_18:
  LOBYTE(v2) = v15 & 1;
  return v2;
}

unint64_t sub_10002FB04()
{
  result = qword_100152D98;
  if (!qword_100152D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152D98);
  }

  return result;
}

void sub_10002FB58(void *a1)
{
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v8 = v90 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = v90 - v9;
  v11 = type metadata accessor for Date();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = v90 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = v90 - v17;
  if (![a1 hasStartSlh] || !objc_msgSend(a1, "hasEndSlh"))
  {
    sub_100032EA4();
    swift_allocError();
    *v27 = 0;
    *(v27 + 8) = 0x80;
    swift_willThrow();
    return;
  }

  v94 = v16;
  v96 = v12;
  v95 = v11;
  v19 = [a1 startSlh];
  if (!v19)
  {
    __break(1u);
    goto LABEL_42;
  }

  v20 = v19;
  v109 = v1;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v22 = [ObjCClassFromMetadata signedTypeWithObject:v20];

  v23 = [a1 endSlh];
  if (!v23)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v24 = v23;
  v25 = [ObjCClassFromMetadata signedTypeWithObject:v23];

  sub_100061CE4(v105);
  v26 = v22;
  if (v2)
  {
LABEL_7:

    return;
  }

  sub_100061CE4(v107);
  sub_10002EF90(&v101);
  if (*(&v102 + 1))
  {
    v93 = v22;
    sub_1000331C0(&v101, v97);
    sub_10002533C(&v101, &qword_100152D88, &unk_100103DC0);
    v91 = v99;
    v92 = v98;
    v90[1] = sub_100026F6C(v97, v98);
    ConsistencyProofResponse.receiptTime.getter(v10);
    v28 = v96;
    v29 = v96[6];
    v30 = v95;
    if (v29(v10, 1, v95) == 1)
    {
      static Date.now.getter();
      if (v29(v10, 1, v30) != 1)
      {
        sub_10002533C(v10, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (v28[4])(v18, v10, v30);
    }

    v26 = v93;
    v36 = [v93 data];
    v37 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;

    v40 = sub_100061EBC();
    (v91)[3](v105, v18, v37, v39, v40, v92);
    (v96[1])(v18, v30);
    sub_100026FB0(v37, v39);
    sub_100024E14(v97);
  }

  else
  {
    sub_10002533C(&v101, &qword_100152D88, &unk_100103DC0);
    v30 = v95;
  }

  sub_10002EF90(&v101);
  if (*(&v102 + 1))
  {
    sub_1000331C0(&v101, v97);
    sub_10002533C(&v101, &qword_100152D88, &unk_100103DC0);
    v31 = v98;
    v95 = v99;
    v93 = sub_100026F6C(v97, v98);
    ConsistencyProofResponse.receiptTime.getter(v8);
    v32 = v30;
    v33 = v96;
    v34 = v96[6];
    if (v34(v8, 1, v32) == 1)
    {
      static Date.now.getter();
      v35 = v32;
      if (v34(v8, 1, v32) != 1)
      {
        sub_10002533C(v8, &qword_100152D90, &qword_100105620);
      }
    }

    else
    {
      (v33[4])(v94, v8, v32);
      v35 = v32;
    }

    v51 = [v25 data];
    v52 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v54 = v53;

    v55 = sub_100061EBC();
    v56 = v94;
    (v95)[3](v107, v94, v52, v54, v55, v31);
    (v96[1])(v56, v35);
    sub_100026FB0(v52, v54);
    sub_100024E14(v97);
  }

  else
  {
    sub_10002533C(&v101, &qword_100152D88, &unk_100103DC0);
  }

  v41 = ConsistencyProofResponse.keyBag.getter();
  if (!v41)
  {
    sub_100032EA4();
    swift_allocError();
    *v57 = 1;
    *(v57 + 8) = 0x80;
    swift_willThrow();
    sub_1000270C0(v107);
    sub_1000270C0(v105);
    goto LABEL_7;
  }

  v42 = v41;
  v43 = [v109 logType];
  v44 = &selRef_tltKeyStore;
  if (v43 != 3)
  {
    v44 = &selRef_appSthKeyStore;
  }

  v45 = [v42 *v44];
  v46 = v26;
  v47 = v25;
  v48 = [v45 signatureVerifier];
  [v47 setVerifier:v48];

  v49 = v46;
  v50 = [v45 signatureVerifier];
  [v49 setVerifier:v50];

  v96 = v49;
  v58 = sub_1000587C8();
  sub_10002EF90(&v101);
  if (*(&v102 + 1))
  {
    v59 = v45;
    sub_1000331C0(&v101, v97);
    sub_10002533C(&v101, &qword_100152D88, &unk_100103DC0);
    v60 = v98;
    v61 = v99;
    sub_100026F6C(v97, v98);
    (v61[6])(v105, v58, v60, v61);
    sub_100024E14(v97);
    v45 = v59;
  }

  else
  {
    sub_10002533C(&v101, &qword_100152D88, &unk_100103DC0);
  }

  if (qword_100156F00 != -1)
  {
    swift_once();
  }

  v62 = type metadata accessor for Logger();
  v63 = sub_100025AE0(v62, qword_10015D168);
  sub_100027114(v105, &v101);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.debug.getter();
  sub_1000270C0(v105);
  v66 = os_log_type_enabled(v64, v65);
  v91 = v42;
  v94 = v45;
  if (v66)
  {
    v67 = swift_slowAlloc();
    v93 = swift_slowAlloc();
    v100 = v93;
    *v67 = 136315138;
    v101 = v105[0];
    v102 = v105[1];
    v103 = v105[2];
    v104 = v106;
    sub_100027114(v105, v97);
    sub_100027584();
    v68 = dispatch thunk of CustomStringConvertible.description.getter();
    v95 = v63;
    v70 = v69;
    v71 = v47;
    v73 = *(&v103 + 1);
    v72 = v104;

    v74 = v73;
    v47 = v71;
    sub_100026FB0(v74, v72);
    v75 = sub_100021D24(v68, v70, &v100);

    *(v67 + 4) = v75;
    _os_log_impl(&_mh_execute_header, v64, v65, "Verified signature for %s", v67, 0xCu);
    sub_100024E14(v93);
  }

  v76 = sub_1000587C8();
  sub_10002EF90(&v101);
  if (*(&v102 + 1))
  {
    sub_1000331C0(&v101, v97);
    sub_10002533C(&v101, &qword_100152D88, &unk_100103DC0);
    v77 = v98;
    v78 = v99;
    sub_100026F6C(v97, v98);
    (v78[6])(v107, v76, v77, v78);
    sub_100024E14(v97);
  }

  else
  {
    sub_10002533C(&v101, &qword_100152D88, &unk_100103DC0);
  }

  sub_100027114(v107, &v101);
  v79 = Logger.logObject.getter();
  v80 = static os_log_type_t.debug.getter();
  sub_1000270C0(v107);
  if (os_log_type_enabled(v79, v80))
  {
    v81 = swift_slowAlloc();
    v82 = swift_slowAlloc();
    v100 = v82;
    *v81 = 136315138;
    v101 = v107[0];
    v102 = v107[1];
    v103 = v107[2];
    v104 = v108;
    sub_100027114(v107, v97);
    sub_100027584();
    v83 = v79;
    v84 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v47;
    v86 = v85;
    v88 = *(&v103 + 1);
    v87 = v104;

    sub_100026FB0(v88, v87);
    v89 = sub_100021D24(v84, v86, &v100);

    *(v81 + 4) = v89;
    _os_log_impl(&_mh_execute_header, v83, v80, "Verified signature for %s", v81, 0xCu);
    sub_100024E14(v82);

    sub_1000270C0(v105);
    sub_1000270C0(v107);
  }

  else
  {
    sub_1000270C0(v105);

    sub_1000270C0(v107);
  }
}

id sub_100030DB0(void *a1)
{
  v6 = type metadata accessor for KTSWDB.SignedLogHead();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = (&v96 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (![a1 hasStartSlh] || !objc_msgSend(a1, "hasEndSlh"))
  {
    sub_100032EA4();
    swift_allocError();
    *v17 = 0;
    *(v17 + 8) = 0x80;
    swift_willThrow();
    return (v3 & 1);
  }

  v10 = [a1 startSlh];
  if (!v10)
  {
    __break(1u);
    goto LABEL_63;
  }

  v3 = v10;
  v11 = v1;
  v12 = [v10 object];

  if (!v12)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v14;

  v15 = objc_allocWithZone(LogHead);
  v16 = sub_1000330B8();
  if (v2)
  {
    sub_100026FB0(v13, v3);
    return (v3 & 1);
  }

  v19 = v16;
  sub_100026FB0(v13, v3);
  v3 = [v19 revision];
  v20 = ConsistencyProofResponse.startRevision.getter();
  LOBYTE(v3) = v21 | (v20 < 1) | (v3 >= v20);
  if ((v3 & 1) == 0)
  {
LABEL_11:

    return (v3 & 1);
  }

  sub_10002FB58(a1);
  v22 = ConsistencyProofResponse.keyBag.getter();
  if (!v22)
  {
    sub_100032EA4();
    swift_allocError();
    *v36 = 1;
    *(v36 + 8) = 0x80;
    swift_willThrow();
    goto LABEL_11;
  }

  v23 = v22;
  v103 = v19;
  v24 = [v11 logType];
  v25 = &selRef_tltKeyStore;
  if (v24 != 3)
  {
    v25 = &selRef_appSthKeyStore;
  }

  v26 = *v25;
  v118 = v23;
  v27 = [v23 v26];
  v28 = objc_allocWithZone(TransparencyConsistencyProofVerifier);
  v102 = v27;
  v29 = [v28 initWithTrustedKeyStore:v27];
  [a1 setVerifier:v29];

  ConsistencyProofResponse.startRevision.getter();
  isa = Int64._bridgeToObjectiveC()().super.super.isa;
  [a1 setStartRevision:isa];

  [a1 setForwards:1];
  result = [a1 startSlh];
  if (!result)
  {
    __break(1u);
    goto LABEL_66;
  }

  v31 = result;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v33 = [ObjCClassFromMetadata signedTypeWithObject:v31];

  result = [a1 endSlh];
  if (!result)
  {
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  v34 = result;
  v35 = [ObjCClassFromMetadata signedTypeWithObject:result];

  sub_100061CE4(v112);
  sub_100061CE4(&v114);
  v101 = v35;
  sub_10002EF90(&v108);
  v99 = *(&v109 + 1);
  if (*(&v109 + 1))
  {
    sub_1000331C0(&v108, v104);
    sub_10002533C(&v108, &qword_100152D88, &unk_100103DC0);
    v37 = v105;
    v38 = v106;
    sub_100026F6C(v104, v105);
    (*(v38 + 64))(v112, v37, v38);
    v39 = *v9;
    sub_10002763C(v9);
    sub_100024E14(v104);
  }

  else
  {
    sub_10002533C(&v108, &qword_100152D88, &unk_100103DC0);
    v39 = 0;
  }

  v100 = v33;
  result = [a1 proofHashesArray];
  if (result)
  {
    v40 = result;
    v41 = [result count];

    v4 = v103;
    if (v41 < 1)
    {
      sub_100033178(0, &qword_100152DC8, off_1001312D8);
      sub_100035B60(v100, v101);
    }

    else
    {
      sub_1000586EC();
    }

    if (!v99)
    {
      goto LABEL_42;
    }

    if (v39 > 1)
    {
      if (v39 != 3)
      {
        if (v39 == 2)
        {
          ConsistencyProofResponse.startRevision.getter();
          if ((v54 & 1) == 0)
          {

            sub_1000270C0(v112);
            sub_1000270C0(&v114);

            return (v3 & 1);
          }

          if (qword_100156F00 != -1)
          {
            swift_once();
          }

          v55 = type metadata accessor for Logger();
          v56 = sub_100025AE0(v55, qword_10015D168);
          sub_100027114(v112, &v108);
          v99 = v56;
          v57 = Logger.logObject.getter();
          v58 = static os_log_type_t.info.getter();
          sub_1000270C0(v112);
          LODWORD(v98) = v58;
          v59 = v57;
          if (os_log_type_enabled(v57, v58))
          {
            v60 = swift_slowAlloc();
            v96 = v60;
            v97 = swift_slowAlloc();
            v107 = v97;
            *v60 = 136315138;
            v108 = v112[0];
            v109 = v112[1];
            v110 = v112[2];
            v111 = v113;
            sub_100027114(v112, v104);
            sub_100027584();
            v61 = dispatch thunk of CustomStringConvertible.description.getter();
            v63 = v62;
            v65 = *(&v110 + 1);
            v64 = v111;

            sub_100026FB0(v65, v64);
            v66 = sub_100021D24(v61, v63, &v107);

            v67 = v96;
            *(v96 + 1) = v66;
            _os_log_impl(&_mh_execute_header, v59, v98, "Verified TOFU consistency for %s", v67, 0xCu);
            sub_100024E14(v97);
          }

          else
          {
          }

          sub_100027114(&v114, &v108);
          v84 = Logger.logObject.getter();
          v85 = static os_log_type_t.info.getter();
          sub_1000270C0(&v114);
          if (os_log_type_enabled(v84, v85))
          {
            v86 = swift_slowAlloc();
            v98 = v86;
            v99 = swift_slowAlloc();
            v107 = v99;
            *v86 = 136315138;
            v108 = v114;
            v109 = v115;
            v110 = v116;
            v111 = v117;
            sub_100027114(&v114, v104);
            sub_100027584();
            v87 = dispatch thunk of CustomStringConvertible.description.getter();
            v89 = v88;
            v90 = *(&v110 + 1);
            v91 = v111;

            sub_100026FB0(v90, v91);
            v92 = sub_100021D24(v87, v89, &v107);

            v93 = v98;
            *(v98 + 1) = v92;
            _os_log_impl(&_mh_execute_header, v84, v85, "Verified consistency for %s", v93, 0xCu);
            sub_100024E14(v99);
          }

          sub_10002EF90(&v108);
          if (*(&v109 + 1))
          {
            sub_1000331C0(&v108, v104);
            sub_10002533C(&v108, &qword_100152D88, &unk_100103DC0);
            v94 = v105;
            v95 = v106;
            sub_100026F6C(v104, v105);
            (*(v95 + 32))(v112, 1, v94, v95);
            sub_100024E14(v104);
          }

          else
          {
            sub_10002533C(&v108, &qword_100152D88, &unk_100103DC0);
          }

LABEL_52:
          sub_10002EF90(&v108);
          if (*(&v109 + 1))
          {
            sub_1000331C0(&v108, v104);
            sub_10002533C(&v108, &qword_100152D88, &unk_100103DC0);
            v82 = v105;
            v83 = v106;
            sub_100026F6C(v104, v105);
            (*(v83 + 32))(&v114, 1, v82, v83);

            sub_1000270C0(v112);
            sub_1000270C0(&v114);

            sub_100024E14(v104);
          }

          else
          {

            sub_1000270C0(v112);
            sub_1000270C0(&v114);

            sub_10002533C(&v108, &qword_100152D88, &unk_100103DC0);
          }

          return (v3 & 1);
        }

        goto LABEL_42;
      }
    }

    else if (v39)
    {
      if (v39 == 1)
      {
        if (qword_100156F00 != -1)
        {
          swift_once();
        }

        v42 = type metadata accessor for Logger();
        sub_100025AE0(v42, qword_10015D168);
        sub_100027114(&v114, &v108);
        v43 = Logger.logObject.getter();
        v44 = static os_log_type_t.info.getter();
        sub_1000270C0(&v114);
        if (!os_log_type_enabled(v43, v44))
        {
          goto LABEL_51;
        }

        v45 = swift_slowAlloc();
        v98 = v45;
        v99 = swift_slowAlloc();
        v107 = v99;
        *v45 = 136315138;
        v108 = v114;
        v109 = v115;
        v110 = v116;
        v111 = v117;
        sub_100027114(&v114, v104);
        sub_100027584();
        v46 = dispatch thunk of CustomStringConvertible.description.getter();
        v48 = v47;
        v49 = *(&v110 + 1);
        v50 = v111;

        sub_100026FB0(v49, v50);
        v51 = sub_100021D24(v46, v48, &v107);

        v52 = v98;
        *(v98 + 1) = v51;
        v53 = "Verified consistency for %s";
LABEL_50:
        _os_log_impl(&_mh_execute_header, v43, v44, v53, v52, 0xCu);
        sub_100024E14(v99);

LABEL_51:

        goto LABEL_52;
      }

LABEL_42:
      if (qword_100156F00 == -1)
      {
LABEL_43:
        v68 = type metadata accessor for Logger();
        sub_100025AE0(v68, qword_10015D168);
        v69 = Logger.logObject.getter();
        v70 = static os_log_type_t.error.getter();
        v71 = os_log_type_enabled(v69, v70);
        v72 = v101;
        if (v71)
        {
          v73 = swift_slowAlloc();
          *v73 = 0;
          _os_log_impl(&_mh_execute_header, v69, v70, "Unknown startSlh consistency verification state", v73, 2u);
        }

        sub_1000270C0(v112);
        sub_1000270C0(&v114);

        return (v3 & 1);
      }

LABEL_64:
      swift_once();
      goto LABEL_43;
    }

    if (qword_100156F00 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_100025AE0(v74, qword_10015D168);
    sub_100027114(&v114, &v108);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.info.getter();
    sub_1000270C0(&v114);
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_51;
    }

    v75 = swift_slowAlloc();
    v98 = v75;
    v99 = swift_slowAlloc();
    v107 = v99;
    *v75 = 136315138;
    v108 = v114;
    v109 = v115;
    v110 = v116;
    v111 = v117;
    sub_100027114(&v114, v104);
    sub_100027584();
    v76 = dispatch thunk of CustomStringConvertible.description.getter();
    v78 = v77;
    v79 = *(&v110 + 1);
    v80 = v111;

    sub_100026FB0(v79, v80);
    v81 = sub_100021D24(v76, v78, &v107);

    v52 = v98;
    *(v98 + 1) = v81;
    v53 = "Verified consistency for %s following split";
    goto LABEL_50;
  }

LABEL_67:
  __break(1u);
  return result;
}

void sub_100032090(void *a1)
{
  v4 = type metadata accessor for KTSWDB.SignedLogHead();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_10002FB58(a1);
  if (v2)
  {
    return;
  }

  v8 = ConsistencyProofResponse.keyBag.getter();
  if (!v8)
  {
    sub_100032EA4();
    swift_allocError();
    *v20 = 1;
    *(v20 + 8) = 0x80;
    swift_willThrow();
    return;
  }

  v9 = v8;
  v10 = [v1 logType];
  v11 = &selRef_tltKeyStore;
  if (v10 != 3)
  {
    v11 = &selRef_appSthKeyStore;
  }

  v12 = [v9 *v11];
  v13 = objc_allocWithZone(TransparencyConsistencyProofVerifier);
  v42 = v12;
  v14 = [v13 initWithTrustedKeyStore:v12];
  [a1 setVerifier:v14];

  ConsistencyProofResponse.startRevision.getter();
  isa = Int64._bridgeToObjectiveC()().super.super.isa;
  [a1 setStartRevision:isa];

  [a1 setForwards:0];
  v16 = [a1 startSlh];
  if (!v16)
  {
    __break(1u);
LABEL_25:
    __break(1u);
    return;
  }

  v17 = v16;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v19 = [ObjCClassFromMetadata signedTypeWithObject:v17];

  sub_100061CE4(v50);
  v21 = [a1 endSlh];
  if (!v21)
  {
    goto LABEL_25;
  }

  v22 = v21;
  v23 = [ObjCClassFromMetadata signedTypeWithObject:v21];

  sub_100061CE4(v52);
  sub_10002EF90(&v46);
  if (!*(&v47 + 1))
  {
    sub_10002533C(&v46, &qword_100152D88, &unk_100103DC0);
    sub_1000586EC();
LABEL_21:
    sub_1000270C0(v52);

    sub_1000270C0(v50);
    return;
  }

  sub_1000331C0(&v46, v43);
  sub_10002533C(&v46, &qword_100152D88, &unk_100103DC0);
  v24 = v44;
  v25 = v45;
  sub_100026F6C(v43, v44);
  (*(v25 + 64))(v52, v24, v25);
  v26 = *v7;
  sub_10002763C(v7);
  sub_100024E14(v43);
  sub_1000586EC();
  if (v26 != 1)
  {
    goto LABEL_21;
  }

  v41 = 0;
  if (qword_100156F00 != -1)
  {
    swift_once();
  }

  v27 = type metadata accessor for Logger();
  sub_100025AE0(v27, qword_10015D168);
  sub_100027114(v50, &v46);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();
  sub_1000270C0(v50);
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v40 = swift_slowAlloc();
    v53 = v40;
    *v30 = 136315138;
    v46 = v50[0];
    v47 = v50[1];
    v48 = v50[2];
    v49 = v51;
    sub_100027114(v50, v43);
    sub_100027584();
    v31 = dispatch thunk of CustomStringConvertible.description.getter();
    v33 = v32;
    v35 = *(&v48 + 1);
    v34 = v49;

    sub_100026FB0(v35, v34);
    v36 = sub_100021D24(v31, v33, &v53);

    *(v30 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v28, v29, "Verified consistency for %s", v30, 0xCu);
    sub_100024E14(v40);
  }

  sub_10002EF90(&v46);
  if (*(&v47 + 1))
  {
    sub_1000331C0(&v46, v43);
    sub_10002533C(&v46, &qword_100152D88, &unk_100103DC0);
    v37 = v44;
    v38 = v45;
    sub_100026F6C(v43, v44);
    v39 = v41;
    (*(v38 + 32))(v50, 1, v37, v38);
    if (v39)
    {
    }

    sub_1000270C0(v50);
    sub_1000270C0(v52);

    sub_100024E14(v43);
  }

  else
  {

    sub_1000270C0(v50);
    sub_1000270C0(v52);

    sub_10002533C(&v46, &qword_100152D88, &unk_100103DC0);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> ConsistencyProofResponse.verify()()
{
  v2 = v0;
  v3 = type metadata accessor for NSFastEnumerationIterator();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ([v0 status] != 1)
  {
    v16 = [v0 status];
    sub_100032EA4();
    swift_allocError();
    *v17 = v16;
    *(v17 + 8) = 0;
LABEL_22:
    swift_willThrow();
    return;
  }

  v8 = ConsistencyProofResponse.expectedLogType.getter();
  if ((v8 & 0x100000000) != 0 || [v0 logType] != v8)
  {
    v18 = [v0 logType];
    v19 = ConsistencyProofResponse.expectedLogType.getter();
    v20 = v18 | (v19 << 32);
    v21 = BYTE4(v19) & 1 | 0x20;
LABEL_21:
    sub_100032EA4();
    swift_allocError();
    *v22 = v20;
    *(v22 + 8) = v21;
    goto LABEL_22;
  }

  if ([v0 logType] != 3)
  {
    v9 = ConsistencyProofResponse.expectedApplication.getter();
    v10 = [v2 application];
    if ((v9 & 0x100000000) != 0 || v10 != v9)
    {
      v31 = [v2 application];
      v32 = ConsistencyProofResponse.expectedApplication.getter();
      v20 = v31 | (v32 << 32);
      v21 = BYTE4(v32) & 1 | 0x40;
      goto LABEL_21;
    }
  }

  v39 = &_swiftEmptyArrayStorage;
  v11 = [v2 responsesArray];
  if (v11)
  {
    v12 = v11;
    NSArray.makeIterator()();

    NSFastEnumerationIterator.next()();
    if (v38)
    {
      v34 = &_swiftEmptyArrayStorage;
      while (1)
      {
        sub_100032F28(&v37, &v36);
        sub_100033178(0, &qword_100152DA8, off_1001312D0);
        if (!swift_dynamicCast())
        {

          sub_100032EA4();
          swift_allocError();
          *v33 = 2;
          *(v33 + 8) = 0x80;
          swift_willThrow();
          (*(v4 + 8))(v7, v3);
          return;
        }

        v13 = v35;
        v14 = sub_100030DB0(v35);
        if (v1)
        {
          break;
        }

        if (v14)
        {
        }

        else
        {
          v15 = v13;
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v34 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

          v34 = v39;
        }

        NSFastEnumerationIterator.next()();
        if (!v38)
        {
          goto LABEL_24;
        }
      }

      (*(v4 + 8))(v7, v3);
    }

    else
    {
      v34 = &_swiftEmptyArrayStorage;
LABEL_24:
      (*(v4 + 8))(v7, v3);
      v23 = v34;
      if (v34 >> 62)
      {
        goto LABEL_44;
      }

      for (i = *((v34 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
      {
        v25 = v23 & 0xC000000000000001;
        v26 = v23 & 0xFFFFFFFFFFFFFF8;
        v27 = v23 + 32;
        while (!__OFSUB__(i--, 1))
        {
          if (v25)
          {
            v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          }

          else
          {
            if ((i & 0x8000000000000000) != 0)
            {
              goto LABEL_42;
            }

            if (i >= *(v26 + 16))
            {
              goto LABEL_43;
            }

            v29 = *(v27 + 8 * i);
          }

          v30 = v29;
          v23 = v2;
          sub_100032090(v29);
          if (v1)
          {

            goto LABEL_37;
          }

          if (!i)
          {
            goto LABEL_37;
          }
        }

        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
LABEL_44:
        ;
      }

LABEL_37:
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_100032EA4()
{
  result = qword_100152DA0;
  if (!qword_100152DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DA0);
  }

  return result;
}

_DWORD *sub_100032F0C@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

_OWORD *sub_100032F28(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t initializeBufferWithCopyOfBuffer for ConsistencyProofResponseError(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for ConsistencyProofResponseError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 9))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for ConsistencyProofResponseError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

uint64_t sub_100032FF8(uint64_t a1)
{
  v1 = *(a1 + 8);
  v2 = v1;
  v3 = v1 >> 5;
  if (v2 >= 0)
  {
    return v3;
  }

  else
  {
    return (*a1 + 4);
  }
}

uint64_t sub_100033028(uint64_t result, unsigned int a2)
{
  if (a2 < 4)
  {
    *(result + 8) = *(result + 8) & 1 | (32 * a2);
  }

  else
  {
    *result = a2 - 4;
    *(result + 8) = 0x80;
  }

  return result;
}

unint64_t sub_100033064()
{
  result = qword_100152DC0;
  if (!qword_100152DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DC0);
  }

  return result;
}

id sub_1000330B8()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initWithData:isa error:&v6];

  if (v2)
  {
    v3 = v6;
  }

  else
  {
    v4 = v6;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v2;
}

uint64_t sub_100033178(uint64_t a1, unint64_t *a2, uint64_t *a3)
{
  result = *a2;
  if (!*a2)
  {
    v5 = *a3;
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1000331C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

Swift::Int sub_10003329C(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  return Hasher._finalize()();
}

Swift::Int sub_1000332E4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100033358()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10003339C(uint64_t a1)
{
  v2 = sub_1000375B4();

  return Error<>._domain.getter(a1, v2);
}

uint64_t sub_1000333D8(uint64_t a1)
{
  v2 = sub_1000375B4();

  return Error<>._code.getter(a1, v2);
}

uint64_t sub_100033424()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_100157298 = result;
  return result;
}

uint64_t sub_100033458()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_1001572A8 = result;
  return result;
}

uint64_t sub_10003348C()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_1001572B8 = result;
  return result;
}

uint64_t sub_1000334C0()
{
  type metadata accessor for AssociatedObjectKey();
  result = sub_1000259C8();
  qword_1001572C8 = result;
  return result;
}

uint64_t sub_1000334F4()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D180);
  sub_100025AE0(v0, qword_10015D180);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_100033574()
{
  if (qword_1001572D0 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D180);
}

uint64_t sub_1000335D8@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001572D0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D180);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t MilestoneConsistency.startSlh.getter()
{
  if (qword_1001572A0 != -1)
  {
    swift_once();
  }

  v1 = qword_1001572A8;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152A98, off_1001312E8);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void (*MilestoneConsistency.startSlh.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = MilestoneConsistency.startSlh.getter();
  return sub_100033844;
}

uint64_t MilestoneConsistency.verifier.getter()
{
  if (qword_100157290 != -1)
  {
    swift_once();
  }

  v1 = qword_100157298;
  swift_beginAccess();
  v2 = objc_getAssociatedObject(v0, (v1 + 16));
  swift_endAccess();
  if (v2)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v5 = 0u;
    v6 = 0u;
  }

  v7[0] = v5;
  v7[1] = v6;
  if (*(&v6 + 1))
  {
    sub_100033178(0, &qword_100152DD0, off_100131300);
    if (swift_dynamicCast())
    {
      return v4;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_10002533C(v7, &qword_100152D70, &qword_100103DB0);
    return 0;
  }
}

void sub_1000339B4(void *a1, void *a2, void *a3)
{
  if (*a2 != -1)
  {
    v7 = a3;
    swift_once();
    a3 = v7;
  }

  v5 = *a3;
  swift_beginAccess();
  v6 = a1;
  objc_setAssociatedObject(v3, (v5 + 16), v6, 1);
  swift_endAccess();
}

void (*MilestoneConsistency.verifier.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  *a1 = v3;
  *(v3 + 32) = v1;
  *(v3 + 24) = MilestoneConsistency.verifier.getter();
  return sub_100033AC4;
}

void sub_100033AE8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = *a1;
  v6 = *(*a1 + 24);
  if (a2)
  {
    v7 = *a3;
    v8 = v6;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = v5[4];
    v10 = *a4;
    swift_beginAccess();
    v11 = v8;
    objc_setAssociatedObject(v9, (v10 + 16), v11, 1);
    swift_endAccess();

    v12 = v5[3];
  }

  else
  {
    if (*a3 != -1)
    {
      swift_once();
    }

    v13 = v5[4];
    v14 = *a4;
    swift_beginAccess();
    v12 = v6;
    objc_setAssociatedObject(v13, (v14 + 16), v12, 1);
    swift_endAccess();
  }

  free(v5);
}

double sub_100033C24@<D0>(uint64_t a1@<X8>)
{
  if (qword_1001572B0 != -1)
  {
    swift_once();
  }

  v3 = qword_1001572B8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    sub_10002533C(v8, &qword_100152D70, &qword_100103DB0);
    goto LABEL_10;
  }

  sub_100024248(&qword_100152D80, &qword_100103DB8);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t sub_100033D54(uint64_t a1)
{
  if (qword_1001572B0 != -1)
  {
    swift_once();
  }

  v3 = qword_1001572B8;
  sub_100025834(a1, v13, &qword_100152D88, &unk_100103DC0);
  v4 = v14;
  if (v14)
  {
    v5 = sub_100026F6C(v13, v14);
    v6 = *(v4 - 8);
    v7 = *(v6 + 64);
    __chkstk_darwin(v5);
    v9 = &v13[-1] - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v6 + 16))(v9);
    v10 = _bridgeAnythingToObjectiveC<A>(_:)();
    (*(v6 + 8))(v9, v4);
    sub_100024E14(v13);
  }

  else
  {
    v10 = 0;
  }

  swift_beginAccess();
  objc_setAssociatedObject(v1, (v3 + 16), v10, 1);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D88, &unk_100103DC0);
}

void (*sub_100033F18(uint64_t *a1))(uint64_t *a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x58uLL);
  }

  *a1 = v3;
  *(v3 + 80) = v1;
  sub_100033C24(v3);
  return sub_100033F90;
}

void sub_100033F90(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 80);
  if (a2)
  {
    sub_100025834(*a1, v2 + 40, &qword_100152D88, &unk_100103DC0);
    sub_100033D54(v2 + 40);
    sub_10002533C(v2, &qword_100152D88, &unk_100103DC0);
  }

  else
  {
    sub_100033D54(*a1);
  }

  free(v2);
}

uint64_t MilestoneConsistency.receiptTime.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1001572C0 != -1)
  {
    swift_once();
  }

  v3 = qword_1001572C8;
  swift_beginAccess();
  v4 = objc_getAssociatedObject(v1, (v3 + 16));
  swift_endAccess();
  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v9 = 0u;
    v10 = 0u;
  }

  v11[0] = v9;
  v11[1] = v10;
  if (*(&v10 + 1))
  {
    v5 = type metadata accessor for Date();
    v6 = swift_dynamicCast();
    return (*(*(v5 - 8) + 56))(a1, v6 ^ 1u, 1, v5);
  }

  else
  {
    sub_10002533C(v11, &qword_100152D70, &qword_100103DB0);
    v8 = type metadata accessor for Date();
    return (*(*(v8 - 8) + 56))(a1, 1, 1, v8);
  }
}

uint64_t MilestoneConsistency.receiptTime.setter(uint64_t a1)
{
  v2 = v1;
  v4 = sub_100024248(&qword_100152D90, &qword_100105620);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v13 - v6;
  if (qword_1001572C0 != -1)
  {
    swift_once();
  }

  v8 = qword_1001572C8;
  sub_100025834(a1, v7, &qword_100152D90, &qword_100105620);
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  swift_beginAccess();
  objc_setAssociatedObject(v2, (v8 + 16), isa, 0x303);
  swift_endAccess();
  swift_unknownObjectRelease();
  return sub_10002533C(a1, &qword_100152D90, &qword_100105620);
}

void (*MilestoneConsistency.receiptTime.modify(void *a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  MilestoneConsistency.receiptTime.getter(v4);
  return sub_100034414;
}

void sub_100034414(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_100025834(a1[2], v2, &qword_100152D90, &qword_100105620);
    MilestoneConsistency.receiptTime.setter(v2);
    sub_10002533C(v3, &qword_100152D90, &qword_100105620);
  }

  else
  {
    MilestoneConsistency.receiptTime.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

uint64_t MilestoneConsistency.endSlh.getter()
{
  result = MilestoneConsistency.verifier.getter();
  if (result)
  {
    v2 = result;
    v3 = [v0 milestoneSlh];
    if (v3)
    {
      v4 = v3;
      sub_100033178(0, &qword_100152A98, off_1001312E8);
      v5 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v4];
      v6 = [v2 trustedKeyStore];
      v7 = [v6 signatureVerifier];

      [v5 setVerifier:v7];
      return v5;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

char *sub_1000345B0()
{
  v2 = sub_100024248(&qword_100152D90, &qword_100105620);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v8 = v77 - v7;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  v11 = v10[8];
  v12 = __chkstk_darwin(v9);
  v14 = v77 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v16 = v77 - v15;
  v17 = MilestoneConsistency.verifier.getter();
  if (v17)
  {
    v100 = v17;
    v18 = MilestoneConsistency.startSlh.getter();
    if (v18)
    {
      v19 = v18;
      v85 = v10;
      if ([v0 hasMilestoneSlh] && (v20 = objc_msgSend(v0, "milestoneSlh")) != 0)
      {
        v21 = v20;
        v83 = v9;
        v84 = v0;
        sub_100033178(0, &qword_100152A98, off_1001312E8);
        v22 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v21];
        sub_100061CE4(v94);
        if (v1)
        {
        }

        else
        {
          v82 = v19;
          v81 = v21;
          sub_100061CE4(&v96);
          v80 = v22;
          sub_100033C24(&v90);
          v27 = v82;
          if (*(&v91 + 1))
          {
            sub_1000331C0(&v90, v86);
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
            v78 = v88;
            v79 = v87;
            v77[1] = sub_100026F6C(v86, v87);
            MilestoneConsistency.receiptTime.getter(v8);
            v28 = v85;
            v29 = v83;
            v30 = v85[6];
            if (v30(v8, 1, v83) == 1)
            {
              static Date.now.getter();
              if (v30(v8, 1, v29) != 1)
              {
                sub_10002533C(v8, &qword_100152D90, &qword_100105620);
              }
            }

            else
            {
              (v28[4])(v16, v8, v29);
            }

            v27 = v82;
            v33 = [v82 data];
            v34 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v36 = v35;

            v37 = sub_100061EBC();
            (v78[3])(v94, v16, v34, v36, v37, v79);
            (v85[1])(v16, v83);
            sub_100026FB0(v34, v36);
            sub_100024E14(v86);
          }

          else
          {
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
          }

          sub_100033C24(&v90);
          if (*(&v91 + 1))
          {
            sub_1000331C0(&v90, v86);
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
            v31 = v87;
            v32 = v88;
            sub_100026F6C(v86, v87);
            (v32[7])(v94, 1, v31, v32);
            sub_100024E14(v86);
          }

          else
          {
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
          }

          sub_100033C24(&v90);
          if (*(&v91 + 1))
          {
            sub_1000331C0(&v90, v86);
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
            v38 = v87;
            v79 = v88;
            v78 = sub_100026F6C(v86, v87);
            MilestoneConsistency.receiptTime.getter(v6);
            v39 = v85;
            v40 = v85[6];
            v41 = v83;
            if (v40(v6, 1, v83) == 1)
            {
              static Date.now.getter();
              if (v40(v6, 1, v41) != 1)
              {
                sub_10002533C(v6, &qword_100152D90, &qword_100105620);
              }
            }

            else
            {
              (v39[4])(v14, v6, v41);
            }

            v44 = [v80 data];
            v45 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v47 = v46;

            v48 = sub_100061EBC();
            (*(v79 + 24))(&v96, v14, v45, v47, v48, v38);
            (v85[1])(v14, v83);
            sub_100026FB0(v45, v47);
            sub_100024E14(v86);
            v27 = v82;
          }

          else
          {
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
          }

          sub_100033C24(&v90);
          if (*(&v91 + 1))
          {
            sub_1000331C0(&v90, v86);
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
            v42 = v87;
            v43 = v88;
            sub_100026F6C(v86, v87);
            (v43[7])(&v96, 1, v42, v43);
            sub_100024E14(v86);
          }

          else
          {
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
          }

          v49 = [v100 trustedKeyStore];
          v50 = [v49 signatureVerifier];

          [v80 setVerifier:v50];
          [v27 setVerifier:v50];
          v6 = sub_1000587C8();
          sub_100033C24(&v90);
          if (*(&v91 + 1))
          {
            sub_1000331C0(&v90, v86);
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
            v51 = v87;
            v52 = v88;
            sub_100026F6C(v86, v87);
            (v52[6])(v94, v6, v51, v52);
            sub_100024E14(v86);
          }

          else
          {
            sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
          }

          v53 = v81;
          if (v6 == 1)
          {
            v85 = v50;
            if (qword_1001572D0 != -1)
            {
              swift_once();
            }

            v54 = type metadata accessor for Logger();
            v55 = sub_100025AE0(v54, qword_10015D180);
            sub_100027114(v94, &v90);
            v83 = v55;
            v56 = Logger.logObject.getter();
            LODWORD(v55) = static os_log_type_t.debug.getter();
            sub_1000270C0(v94);
            LODWORD(v79) = v55;
            if (os_log_type_enabled(v56, v55))
            {
              v57 = swift_slowAlloc();
              v58 = swift_slowAlloc();
              v89 = v58;
              *v57 = 136315138;
              v90 = v94[0];
              v91 = v94[1];
              v92 = v94[2];
              v93 = v95;
              sub_100027114(v94, v86);
              sub_100027584();
              v59 = dispatch thunk of CustomStringConvertible.description.getter();
              v61 = v60;
              v63 = *(&v92 + 1);
              v62 = v93;

              sub_100026FB0(v63, v62);
              v64 = sub_100021D24(v59, v61, &v89);

              *(v57 + 4) = v64;
              _os_log_impl(&_mh_execute_header, v56, v79, "Verified signature for %s", v57, 0xCu);
              sub_100024E14(v58);
            }

            v6 = sub_1000587C8();
            sub_100033C24(&v90);
            if (*(&v91 + 1))
            {
              sub_1000331C0(&v90, v86);
              sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
              v66 = v87;
              v67 = v88;
              sub_100026F6C(v86, v87);
              (v67[6])(&v96, v6, v66, v67);
              sub_100024E14(v86);
            }

            else
            {
              sub_10002533C(&v90, &qword_100152D88, &unk_100103DC0);
            }

            sub_100027114(&v96, &v90);
            v68 = Logger.logObject.getter();
            v69 = static os_log_type_t.debug.getter();
            sub_1000270C0(&v96);
            if (!os_log_type_enabled(v68, v69))
            {
              sub_1000270C0(v94);

              sub_1000270C0(&v96);
              return v6;
            }

            v70 = swift_slowAlloc();
            v84 = swift_slowAlloc();
            v89 = v84;
            *v70 = 136315138;
            v90 = v96;
            v91 = v97[0];
            v92 = v97[1];
            v93 = v98;
            sub_100027114(&v96, v86);
            sub_100027584();
            v71 = dispatch thunk of CustomStringConvertible.description.getter();
            v73 = v72;
            v74 = *(&v92 + 1);
            v75 = v93;

            sub_100026FB0(v74, v75);
            v76 = sub_100021D24(v71, v73, &v89);

            *(v70 + 4) = v76;
            _os_log_impl(&_mh_execute_header, v68, v69, "Verified signature for %s", v70, 0xCu);
            sub_100024E14(v84);

            sub_1000270C0(v94);
            sub_1000270C0(&v96);

            v65 = &v99;
          }

          else
          {

            sub_1000270C0(&v96);
            sub_1000270C0(v94);

            v65 = v97 + 1;
          }
        }
      }

      else
      {
        sub_100027170();
        swift_allocError();
        *v24 = 2;
        swift_willThrow();
      }
    }

    else
    {
      sub_100027170();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }
  }

  else
  {
    sub_100027170();
    swift_allocError();
    *v23 = 0;
    swift_willThrow();
  }

  return v6;
}

void sub_100035B78()
{
  v2 = type metadata accessor for KTSWDB.SignedLogHead();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = (&v131 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = MilestoneConsistency.verifier.getter();
  if (!v6)
  {
    sub_100027170();
    swift_allocError();
    *v15 = 0;
    swift_willThrow();
    return;
  }

  v7 = v6;
  v8 = MilestoneConsistency.startSlh.getter();
  if (!v8)
  {
    sub_100027170();
    swift_allocError();
    *v17 = 1;
    swift_willThrow();

    return;
  }

  v9 = v8;
  if (![v0 hasMilestoneSlh] || (v10 = objc_msgSend(v0, "milestoneSlh")) == 0)
  {
    sub_100027170();
    swift_allocError();
    *v16 = 2;
    swift_willThrow();

    return;
  }

  v11 = v10;
  v158 = v0;
  sub_100033178(0, &qword_100152A98, off_1001312E8);
  v12 = [swift_getObjCClassFromMetadata() signedTypeWithObject:v11];
  v13 = [v7 trustedKeyStore];
  v14 = [v13 signatureVerifier];

  [v12 setVerifier:v14];
  [v9 setVerifier:v14];
  sub_100061CE4(&v149);
  if (v1)
  {

    return;
  }

  v138 = v7;
  sub_100061CE4(&v153);
  v136 = v9;
  v137 = v12;
  v134 = v11;
  v135 = v14;
  if (!v151)
  {
    sub_100033C24(&v143);
    if (*(&v144 + 1))
    {
      sub_1000331C0(&v143, &v140);
      sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
      v19 = v141;
      v18 = v142;
      sub_100026F6C(&v140, v141);
      (*(v18 + 32))(&v149, 1, v19, v18);
      sub_100024E14(&v140);
    }

    else
    {
      sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
    }

    if (qword_1001572D0 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_100025AE0(v20, qword_10015D180);
    sub_100027114(&v149, &v143);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.info.getter();
    sub_1000270C0(&v149);
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v148 = v133;
      *v23 = 136315138;
      v143 = v149;
      v144 = v150;
      v145 = v151;
      v146 = v152;
      sub_100027114(&v149, &v140);
      sub_100027584();
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v25 = v24;
      v27 = *(&v145 + 1);
      v26 = v146;

      sub_100026FB0(v27, v26);
      v28 = sub_100021D24(v132, v25, &v148);

      *(v23 + 4) = v28;
      _os_log_impl(&_mh_execute_header, v21, v22, "Verified consistency for %s", v23, 0xCu);
      sub_100024E14(v133);
    }
  }

  sub_100033C24(&v143);
  v29 = *(&v144 + 1);
  if (*(&v144 + 1))
  {
    sub_1000331C0(&v143, &v140);
    sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
    v30 = v141;
    v31 = v142;
    sub_100026F6C(&v140, v141);
    (*(v31 + 64))(&v149, v30, v31);
    v32 = *v5;
    sub_10002763C(v5);
    sub_100024E14(&v140);
  }

  else
  {
    sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
    v32 = 0;
  }

  v33 = [v158 proofHashesArray];
  if (v33)
  {
    *&v143 = 0;
    v34 = v29;
    v35 = v33;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v29 = v34;
    if (v143)
    {
      if (*(v143 + 16))
      {
        v36 = sub_100058624(v143, v136, v137);

        v37 = v36;
        v38 = v135;
        goto LABEL_28;
      }
    }
  }

  v37 = sub_100037104(v136, v137);
  v38 = v135;
LABEL_28:
  if (v37 == 1)
  {
    if (!v29)
    {
      goto LABEL_66;
    }

    if (v32 <= 1)
    {
      if (v32)
      {
        if (v32 == 1)
        {
          if (qword_1001572D0 != -1)
          {
            swift_once();
          }

          v39 = type metadata accessor for Logger();
          sub_100025AE0(v39, qword_10015D180);
          sub_100027114(&v153, &v143);
          v40 = Logger.logObject.getter();
          v41 = static os_log_type_t.info.getter();
          sub_1000270C0(&v153);
          if (os_log_type_enabled(v40, v41))
          {
            v42 = swift_slowAlloc();
            v133 = swift_slowAlloc();
            v148 = v133;
            *v42 = 136315138;
            v143 = v153;
            v144 = v154;
            v145 = v155;
            v146 = v156;
            sub_100027114(&v153, &v140);
            sub_100027584();
            v43 = dispatch thunk of CustomStringConvertible.description.getter();
            v45 = v44;
            v46 = *(&v145 + 1);
            v47 = v146;

            sub_100026FB0(v46, v47);
            v48 = sub_100021D24(v43, v45, &v148);

            *(v42 + 4) = v48;
            _os_log_impl(&_mh_execute_header, v40, v41, "Verified consistency for %s", v42, 0xCu);
            sub_100024E14(v133);
          }

          sub_100033C24(&v143);
          v49 = &selRef_initWithValidationFunction_rawValues_count_;
          v50 = &selRef_initWithValidationFunction_rawValues_count_;
          if (!*(&v144 + 1))
          {
            sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
LABEL_79:
            v98 = v134;
            v38 = v135;
            goto LABEL_80;
          }

LABEL_65:
          sub_1000331C0(&v143, &v140);
          sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
          v99 = v141;
          v100 = v142;
          sub_100026F6C(&v140, v141);
          (*(v100 + 32))(&v153, 1, v99, v100);
          sub_100024E14(&v140);
          goto LABEL_79;
        }

LABEL_66:
        if (qword_1001572D0 != -1)
        {
          swift_once();
        }

        v101 = type metadata accessor for Logger();
        sub_100025AE0(v101, qword_10015D180);
        v102 = Logger.logObject.getter();
        v103 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v102, v103))
        {
          v104 = swift_slowAlloc();
          *v104 = 0;
          _os_log_impl(&_mh_execute_header, v102, v103, "Unknown startSlh consistency verification state", v104, 2u);
        }

        v98 = v134;
        v49 = &selRef_initWithValidationFunction_rawValues_count_;
        v50 = &selRef_initWithValidationFunction_rawValues_count_;
        goto LABEL_80;
      }

LABEL_60:
      if (qword_1001572D0 != -1)
      {
        swift_once();
      }

      v87 = type metadata accessor for Logger();
      sub_100025AE0(v87, qword_10015D180);
      sub_100027114(&v153, &v143);
      v88 = Logger.logObject.getter();
      v89 = static os_log_type_t.info.getter();
      sub_1000270C0(&v153);
      if (os_log_type_enabled(v88, v89))
      {
        v90 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v148 = v133;
        *v90 = 136315138;
        v143 = v153;
        v144 = v154;
        v145 = v155;
        v146 = v156;
        sub_100027114(&v153, &v140);
        sub_100027584();
        v91 = dispatch thunk of CustomStringConvertible.description.getter();
        v93 = v92;
        v94 = *(&v145 + 1);
        v95 = v146;

        v96 = v94;
        v38 = v135;
        sub_100026FB0(v96, v95);
        v97 = sub_100021D24(v91, v93, &v148);

        *(v90 + 4) = v97;
        _os_log_impl(&_mh_execute_header, v88, v89, "Verified consistency for %s following split", v90, 0xCu);
        sub_100024E14(v133);
      }

      v98 = v134;
      v49 = &selRef_initWithValidationFunction_rawValues_count_;
      v50 = &selRef_initWithValidationFunction_rawValues_count_;
      sub_100033C24(&v143);
      if (!*(&v144 + 1))
      {
        sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
LABEL_80:
        sub_100033C24(&v140);
        if (v141)
        {
          sub_100037608(&v140, &v143);
          v126 = v49[330];
          v127 = v138;
          v128 = [v138 v126];
          v129 = [v128 v50[275]];

          v130 = v137;
          sub_100025F18(&v143, v137, v129);
          sub_100024E14(&v143);

          sub_1000270C0(&v153);
LABEL_82:
          sub_1000270C0(&v149);
          return;
        }

        sub_1000270C0(&v153);
        sub_1000270C0(&v149);
        sub_10002533C(&v140, &qword_100152D88, &unk_100103DC0);
        return;
      }

      goto LABEL_65;
    }

    if (v32 != 2)
    {
      if (v32 != 3)
      {
        goto LABEL_66;
      }

      goto LABEL_60;
    }

    if (qword_1001572D0 != -1)
    {
      swift_once();
    }

    v105 = type metadata accessor for Logger();
    sub_100025AE0(v105, qword_10015D180);
    sub_100027114(&v149, &v143);
    v106 = Logger.logObject.getter();
    v107 = static os_log_type_t.info.getter();
    sub_1000270C0(&v149);
    if (os_log_type_enabled(v106, v107))
    {
      v108 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      v148 = v133;
      *v108 = 136315138;
      v143 = v149;
      v144 = v150;
      v145 = v151;
      v146 = v152;
      sub_100027114(&v149, &v140);
      sub_100027584();
      v109 = dispatch thunk of CustomStringConvertible.description.getter();
      v111 = v110;
      v112 = *(&v145 + 1);
      v113 = v146;

      sub_100026FB0(v112, v113);
      v114 = sub_100021D24(v109, v111, &v148);

      *(v108 + 4) = v114;
      _os_log_impl(&_mh_execute_header, v106, v107, "Consistency for start %s still pending due to disjoint proof", v108, 0xCu);
      sub_100024E14(v133);
    }

    sub_100027114(&v153, &v143);
    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.info.getter();
    sub_1000270C0(&v153);
    if (os_log_type_enabled(v115, v116))
    {
      v117 = swift_slowAlloc();
      v118 = swift_slowAlloc();
      v148 = v118;
      *v117 = 136315138;
      v143 = v153;
      v144 = v154;
      v145 = v155;
      v146 = v156;
      sub_100027114(&v153, &v140);
      sub_100027584();
      v119 = dispatch thunk of CustomStringConvertible.description.getter();
      v121 = v120;
      v122 = *(&v145 + 1);
      v123 = v146;

      sub_100026FB0(v122, v123);
      v124 = sub_100021D24(v119, v121, &v148);

      *(v117 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v115, v116, "Consistency for end %s still pending due to disjoint proof", v117, 0xCu);
      sub_100024E14(v118);
    }

    sub_100027170();
    v51 = swift_allocError();
    *v125 = 6;
    swift_willThrow();
    v53 = 0;
    v38 = v135;
  }

  else
  {
    sub_100027170();
    v51 = swift_allocError();
    *v52 = 7;
    swift_willThrow();
    v53 = 0;
  }

  v148 = v51;
  swift_errorRetain();
  sub_100024248(&qword_100152630, &qword_100103210);
  if (!swift_dynamicCast() || v147 != 6)
  {

    if (qword_1001572D0 != -1)
    {
      swift_once();
    }

    v69 = type metadata accessor for Logger();
    sub_100025AE0(v69, qword_10015D180);
    sub_100027114(&v153, &v143);
    v70 = Logger.logObject.getter();
    v71 = static os_log_type_t.error.getter();
    sub_1000270C0(&v153);
    if (os_log_type_enabled(v70, v71))
    {
      v72 = swift_slowAlloc();
      v131 = v72;
      v132 = swift_slowAlloc();
      v148 = v132;
      *v72 = 136446210;
      v143 = v153;
      v144 = v154;
      v145 = v155;
      v146 = v156;
      sub_100027114(&v153, &v140);
      sub_100027584();
      v133 = 0;
      v73 = dispatch thunk of CustomStringConvertible.description.getter();
      v74 = v71;
      v76 = v75;
      v77 = *(&v145 + 1);
      v78 = v146;

      v79 = v77;
      v38 = v135;
      sub_100026FB0(v79, v78);
      v80 = sub_100021D24(v73, v76, &v148);

      v81 = v131;
      *(v131 + 1) = v80;
      _os_log_impl(&_mh_execute_header, v70, v74, "Failed to verify consistency for %{public}s", v81, 0xCu);
      sub_100024E14(v132);

      v53 = v133;
    }

    else
    {
    }

    v82 = v134;
    sub_100033C24(&v143);
    if (*(&v144 + 1))
    {
      sub_1000331C0(&v143, &v140);
      sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
      v84 = v141;
      v83 = v142;
      v158 = sub_100026F6C(&v140, v141);
      v85 = v137;
      sub_100061CE4(v157);
      if (v53)
      {

        sub_1000270C0(&v153);

        sub_1000270C0(&v149);
        sub_100024E14(&v140);
        return;
      }

      (*(v83 + 32))(v157, 0, v84, v83);
      sub_1000270C0(v157);
      sub_100024E14(&v140);
    }

    else
    {
      sub_10002533C(&v143, &qword_100152D88, &unk_100103DC0);
    }

    v86 = v137;
    swift_willThrow();

    sub_1000270C0(&v153);
    goto LABEL_82;
  }

  if (qword_1001572D0 != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  sub_100025AE0(v54, qword_10015D180);
  sub_100027114(&v153, &v143);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.info.getter();
  sub_1000270C0(&v153);
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v139 = v58;
    *v57 = 136315138;
    v143 = v153;
    v144 = v154;
    v145 = v155;
    v146 = v156;
    sub_100027114(&v153, &v140);
    sub_100027584();
    v59 = dispatch thunk of CustomStringConvertible.description.getter();
    v61 = v60;
    v62 = *(&v145 + 1);
    v63 = v146;

    v64 = v62;
    v38 = v135;
    sub_100026FB0(v64, v63);
    v65 = sub_100021D24(v59, v61, &v139);

    *(v57 + 4) = v65;
    _os_log_impl(&_mh_execute_header, v55, v56, "Consistency for %s still pending due to disjoint proof", v57, 0xCu);
    sub_100024E14(v58);
  }

  v66 = v134;
  v67 = v137;
  sub_100027170();
  swift_allocError();
  *v68 = 6;
  swift_willThrow();

  sub_1000270C0(&v153);
  sub_1000270C0(&v149);
}

char *MilestoneConsistency.verify()()
{
  v3 = objc_autoreleasePoolPush();
  if ([v0 hasMilestoneSlh])
  {
    v4 = sub_1000345B0();
    if (!v1)
    {
      v2 = v4;
      if (v4 == 1)
      {
        sub_100035B78();
      }
    }
  }

  else
  {
    sub_100027170();
    swift_allocError();
    *v5 = 2;
    swift_willThrow();
  }

  objc_autoreleasePoolPop(v3);
  return v2;
}

uint64_t sub_100037104(void *a1, void *a2)
{
  v3 = [a1 parsedLogHead];
  if (!v3)
  {
    goto LABEL_10;
  }

  v4 = v3;
  v5 = [a2 parsedLogHead];
  if (!v5)
  {

LABEL_10:
    sub_100027170();
    swift_allocError();
    *v16 = 5;
    swift_willThrow();
    return 1;
  }

  v6 = v5;
  v7 = [v4 treeId];
  if (v7 != [v6 treeId])
  {
    goto LABEL_24;
  }

  v8 = [v4 application];
  if (v8 != [v6 application])
  {
    goto LABEL_24;
  }

  v9 = [v4 logType];
  if (v9 != [v6 logType])
  {
    goto LABEL_24;
  }

  v10 = [v4 logSize];
  if (v10 != [v6 logSize])
  {
LABEL_23:
    if (![v4 logSize])
    {
LABEL_25:

      return 1;
    }

LABEL_24:
    sub_100027170();
    swift_allocError();
    *v23 = 3;
    swift_willThrow();
    goto LABEL_25;
  }

  v11 = [v4 logHeadHash];
  if (v11)
  {
    v12 = v11;
    v13 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v13 = 0;
    v15 = 0xF000000000000000;
  }

  v17 = [v6 logHeadHash];
  if (!v17)
  {
    if (v15 >> 60 == 15)
    {
LABEL_17:

      sub_10002BEE0(v13, v15);
      return 1;
    }

    v19 = 0;
    v21 = 0xF000000000000000;
LABEL_22:
    sub_10002BEE0(v13, v15);
    sub_10002BEE0(v19, v21);
    goto LABEL_23;
  }

  v18 = v17;
  v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v21 = v20;

  if (v15 >> 60 == 15)
  {
    if (v21 >> 60 != 15)
    {
      goto LABEL_22;
    }

    goto LABEL_17;
  }

  if (v21 >> 60 == 15)
  {
    goto LABEL_22;
  }

  sub_100037620(v13, v15);
  sub_100037620(v19, v21);
  v22 = sub_100027800(v13, v15, v19, v21);
  sub_10002BEE0(v19, v21);
  sub_10002BEE0(v19, v21);
  sub_10002BEE0(v13, v15);
  sub_10002BEE0(v13, v15);
  if ((v22 & 1) == 0)
  {
    goto LABEL_23;
  }

  return 1;
}

unint64_t sub_1000373F0()
{
  result = qword_100152DD8;
  if (!qword_100152DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DD8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MilestoneConsistencyError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_17;
  }

  if (a2 + 7 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 7) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 7;
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

      return (*a1 | (v4 << 8)) - 7;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 7;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 8;
  v8 = v6 - 8;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MilestoneConsistencyError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 7 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 7) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF9)
  {
    v4 = 0;
  }

  if (a2 > 0xF8)
  {
    v5 = ((a2 - 249) >> 8) + 1;
    *result = a2 + 7;
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
    *result = a2 + 7;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000375B4()
{
  result = qword_100152DE0;
  if (!qword_100152DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DE0);
  }

  return result;
}

uint64_t sub_100037608(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_100037620(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100027004(a1, a2);
  }

  return a1;
}

uint64_t sub_100037638()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D198);
  sub_100025AE0(v0, qword_10015D198);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000376B8()
{
  if (qword_100157560 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D198);
}

uint64_t sub_10003771C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100157560 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D198);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_100037804(__int128 *a1, __int128 *a2)
{
  v4 = swift_allocObject();
  sub_100037608(a1, v4 + 16);
  sub_100037608(a2, v4 + 56);
  return v4;
}

uint64_t sub_100037860(__int128 *a1, __int128 *a2)
{
  sub_100037608(a1, v2 + 16);
  sub_100037608(a2, v2 + 56);
  return v2;
}

uint64_t sub_100037898(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = type metadata accessor for URL();
  v2[5] = v4;
  v5 = *(v4 - 8);
  v2[6] = v5;
  v6 = *(v5 + 64) + 15;
  v2[7] = swift_task_alloc();
  v2[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003799C, 0, 0);
}

uint64_t sub_10003799C()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = v0[2];
  URLRequest.url.getter();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002533C(v0[4], &qword_100152F00, &qword_1001042C0);
    sub_1000383C4();
    swift_allocError();
    *v5 = 1;
    *(v5 + 8) = 1;
    swift_willThrow();
    v7 = v0[7];
    v6 = v0[8];
    v8 = v0[4];

    v9 = v0[1];

    return v9();
  }

  else
  {
    v11 = v0[3];
    (*(v0[6] + 32))(v0[8], v0[4], v0[5]);
    v12 = v11[10];
    v13 = v11[11];
    sub_100026F6C(v11 + 7, v12);
    v14 = *(v13 + 24);
    v18 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[9] = v16;
    *v16 = v0;
    v16[1] = sub_100037BC4;
    v17 = v0[8];

    return v18(v17, v12, v13);
  }
}

uint64_t sub_100037BC4()
{
  v1 = *(*v0 + 72);
  v3 = *v0;

  return _swift_task_switch(sub_100037CC0, 0, 0);
}

uint64_t sub_100037CC0()
{
  v24 = v0;
  if (qword_100157560 != -1)
  {
    swift_once();
  }

  v1 = v0[7];
  v2 = v0[8];
  v3 = v0[5];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  sub_100025AE0(v5, qword_10015D198);
  (*(v4 + 16))(v1, v2, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[6];
  v9 = v0[7];
  v11 = v0[5];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23 = v13;
    *v12 = 136315138;
    v22 = URL.description.getter();
    v15 = v14;
    v16 = *(v10 + 8);
    v16(v9, v11);
    v17 = sub_100021D24(v22, v15, &v23);

    *(v12 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "Fetching config bag from %s", v12, 0xCu);
    sub_100024E14(v13);
  }

  else
  {

    v16 = *(v10 + 8);
    v16(v9, v11);
  }

  v0[10] = v16;
  v18 = SWTURLSession.shared.unsafeMutableAddressor();
  v19 = *v18;
  v0[11] = *v18;
  v20 = (*v19 + 96) & 0xFFFFFFFFFFFFLL | 0xE282000000000000;
  v0[12] = *(*v19 + 96);
  v0[13] = v20;

  return _swift_task_switch(sub_100037EF4, v19, 0);
}

uint64_t sub_100037EF4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 88);
  *(v0 + 112) = (*(v0 + 96))();

  v3 = async function pointer to NSURLSession.data(for:delegate:)[1];
  v4 = swift_task_alloc();
  *(v0 + 120) = v4;
  *v4 = v0;
  v4[1] = sub_100037FB0;
  v5 = *(v0 + 16);

  return NSURLSession.data(for:delegate:)(v5, 0);
}

uint64_t sub_100037FB0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *(*v4 + 120);
  v7 = *(*v4 + 112);
  v10 = *v4;
  v5[16] = a1;
  v5[17] = a2;
  v5[18] = a3;
  v5[19] = v3;

  if (v3)
  {
    v8 = sub_100038328;
  }

  else
  {
    v8 = sub_1000380E4;
  }

  return _swift_task_switch(v8, 0, 0);
}

uint64_t sub_1000380E4()
{
  v1 = *(v0 + 144);
  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 statusCode];
    v5 = *(v0 + 144);
    v6 = *(v0 + 40);
    v7 = *(v0 + 48);
    if (v4 == 200)
    {
      v8 = *(v0 + 56);
      v9 = *(v0 + 32);
      (*(v0 + 80))(*(v0 + 64), *(v0 + 40));

      v10 = *(v0 + 8);
      v11 = *(v0 + 128);
      v12 = *(v0 + 136);

      return v10(v11, v12);
    }

    v23 = *(v0 + 128);
    v22 = *(v0 + 136);
    v24 = *(v0 + 80);
    v25 = *(v0 + 64);
    v26 = [v3 statusCode];
    sub_1000383C4();
    swift_allocError();
    *v27 = v26;
    *(v27 + 8) = 0;
    swift_willThrow();

    sub_100026FB0(v23, v22);
    v24(v25, v6);
  }

  else
  {
    v14 = *(v0 + 136);
    v15 = *(v0 + 144);
    v16 = *(v0 + 128);
    v17 = *(v0 + 80);
    v18 = *(v0 + 64);
    v19 = *(v0 + 40);
    v20 = *(v0 + 48);
    sub_1000383C4();
    swift_allocError();
    *v21 = 0;
    *(v21 + 8) = 1;
    swift_willThrow();
    sub_100026FB0(v16, v14);

    v17(v18, v19);
  }

  v29 = *(v0 + 56);
  v28 = *(v0 + 64);
  v30 = *(v0 + 32);

  v31 = *(v0 + 8);

  return v31();
}

uint64_t sub_100038328()
{
  v1 = *(v0 + 48) + 8;
  (*(v0 + 80))(*(v0 + 64), *(v0 + 40));
  v2 = *(v0 + 152);
  v4 = *(v0 + 56);
  v3 = *(v0 + 64);
  v5 = *(v0 + 32);

  v6 = *(v0 + 8);

  return v6();
}

unint64_t sub_1000383C4()
{
  result = qword_100152DE8;
  if (!qword_100152DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100152DE8);
  }

  return result;
}

uint64_t sub_1000385A4(uint64_t a1, const void *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = type metadata accessor for URLRequest();
  v3[3] = v5;
  v6 = *(v5 - 8);
  v3[4] = v6;
  v7 = *(v6 + 64) + 15;
  v8 = swift_task_alloc();
  v3[5] = v8;
  v3[6] = _Block_copy(a2);
  static URLRequest._unconditionallyBridgeFromObjectiveC(_:)();

  v9 = swift_task_alloc();
  v3[7] = v9;
  *v9 = v3;
  v9[1] = sub_1000386D0;

  return sub_100037898(v8);
}

uint64_t sub_1000386D0(uint64_t a1, unint64_t a2)
{
  v4 = v2;
  v8 = *v3;
  v7 = *v3;
  v9 = *(*v3 + 56);
  v10 = *v3;

  v11 = v7[2];
  (*(v7[4] + 8))(v7[5], v7[3]);

  if (v4)
  {
    isa = _convertErrorToNSError(_:)();

    v13 = isa;
    v14 = 0;
  }

  else
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    sub_100026FB0(a1, a2);
    v14 = isa;
    v13 = 0;
  }

  v15 = isa;
  v16 = v8[6];
  v16[2](v16, v14, v13);

  _Block_release(v16);

  v17 = *(v10 + 8);

  return v17();
}

uint64_t sub_1000388BC(double a1)
{
  v2 = v1;
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v15 - v6;
  if (qword_100157560 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_100025AE0(v8, qword_10015D198);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v9, v10, "triggerConfigBagFetch(delayInSeconds: %f)", v11, 0xCu);
  }

  v12 = type metadata accessor for TaskPriority();
  (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v2;

  sub_10001C660(0, 0, v7, &unk_100104160, v13);
}

uint64_t sub_100038ABC()
{
  v1 = *(v0 + 16);
  v2 = v1[5];
  v3 = v1[6];
  sub_100026F6C(v1 + 2, v2);
  v4 = *(v3 + 8);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100038BE4;

  return v8(v2, v3);
}

uint64_t sub_100038BE4()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

unint64_t sub_100038D24(uint64_t a1, char a2)
{
  if (a2)
  {
    if (a1)
    {
      return 0xD000000000000014;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    _StringGuts.grow(_:)(32);

    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return 0xD00000000000001ELL;
  }
}

uint64_t sub_100038E10()
{
  sub_100024E14((v0 + 16));
  sub_100024E14((v0 + 56));
  return v0;
}

uint64_t sub_100038E38()
{
  sub_100024E14((v0 + 16));
  sub_100024E14((v0 + 56));

  return swift_deallocClassInstance();
}

uint64_t sub_100038E78(uint64_t a1, uint64_t a2, int *a3)
{
  v7 = (a3 + *a3);
  v4 = a3[1];
  v5 = swift_task_alloc();
  *(v3 + 16) = v5;
  *v5 = v3;
  v5[1] = sub_1000258C8;

  return v7();
}

uint64_t sub_100038F60(uint64_t a1, uint64_t a2, uint64_t a3, int *a4)
{
  v8 = (a4 + *a4);
  v5 = a4[1];
  v6 = swift_task_alloc();
  *(v4 + 16) = v6;
  *v6 = v4;
  v6[1] = sub_10001CF5C;

  return v8();
}

uint64_t sub_100039048(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v25 - v11;
  sub_1000398A4(a3, v25 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_10002533C(v12, &unk_100152620, &unk_1001031E0);
    if (*(a5 + 16))
    {
      goto LABEL_3;
    }

LABEL_7:
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_4;
    }

    goto LABEL_8;
  }

  TaskPriority.rawValue.getter();
  (*(v14 + 8))(v12, v13);
  if (!*(a5 + 16))
  {
    goto LABEL_7;
  }

LABEL_3:
  v15 = *(a5 + 24);
  swift_getObjectType();
  swift_unknownObjectRetain();
  v16 = dispatch thunk of Actor.unownedExecutor.getter();
  v18 = v17;
  swift_unknownObjectRelease();
  if (a2)
  {
LABEL_4:
    v19 = String.utf8CString.getter() + 32;
    v20 = swift_allocObject();
    *(v20 + 16) = a4;
    *(v20 + 24) = a5;

    if (v18 | v16)
    {
      v26[0] = 0;
      v26[1] = 0;
      v21 = v26;
      v26[2] = v16;
      v26[3] = v18;
    }

    else
    {
      v21 = 0;
    }

    v25[1] = 7;
    v25[2] = v21;
    v25[3] = v19;
    v23 = swift_task_create();

    sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

    return v23;
  }

LABEL_8:
  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

uint64_t sub_100039334(uint64_t a1, int *a2)
{
  v7 = (a2 + *a2);
  v4 = a2[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100039A14;

  return v7(a1);
}

uint64_t sub_10003942C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10003946C()
{
  v2 = *(v0 + 32);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1000258C8;

  return sub_100038A9C(v3, v4, v5, v2);
}

uint64_t initializeBufferWithCopyOfBuffer for SWTConfigBagFetcher.SWTConfigBagFetcher(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SWTConfigBagFetcher.SWTConfigBagFetcher(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for SWTConfigBagFetcher.SWTConfigBagFetcher(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 1;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 9) = v3;
  return result;
}

uint64_t sub_10003958C(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000395A8(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t sub_1000395D8()
{
  _Block_release(*(v0 + 24));
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_100039620()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_10001CF5C;

  return sub_1000385A4(v2, v3, v4);
}

uint64_t sub_1000396D8()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_1000258C8;

  return sub_100038E78(v2, v3, v5);
}

uint64_t sub_100039798()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000397D8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1000258C8;

  return sub_100038F60(a1, v4, v5, v7);
}

uint64_t sub_1000398A4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100039914()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10003994C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_1000258C8;

  return sub_100039334(a1, v5);
}

uint64_t sub_100039A24@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 20);
  v4 = type metadata accessor for URL();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t sub_100039AF8(__int128 *a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 28);
  sub_100024E14((v1 + v3));

  return sub_100037608(a1, v1 + v3);
}

uint64_t sub_100039B94()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 32));

  return swift_unknownObjectRetain();
}

uint64_t sub_100039BC8()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 36));

  return swift_unknownObjectRetain();
}

uint64_t sub_100039BFC()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 40));
}

id sub_100039C30()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 44));

  return v1;
}

uint64_t sub_100039C64()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 48));
}

uint64_t sub_100039C98(uint64_t a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 48);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_100039D20()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 52));
}

uint64_t sub_100039D54(uint64_t a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

id sub_100039DDC()
{
  v1 = *(v0 + *(type metadata accessor for SWTDeps(0) + 56));

  return v1;
}

void sub_100039E10(uint64_t a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 56);

  *(v1 + v3) = a1;
}

uint64_t sub_100039ED0(__int128 *a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 60);
  sub_100024E14((v1 + v3));

  return sub_100037608(a1, v1 + v3);
}

uint64_t sub_100039FA4(__int128 *a1)
{
  v3 = *(type metadata accessor for SWTDeps(0) + 64);
  sub_100024E14((v1 + v3));

  return sub_100037608(a1, v1 + v3);
}

uint64_t sub_10003A040()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_10015D1B0);
  sub_100025AE0(v0, qword_10015D1B0);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003A0B8()
{
  if (qword_100157670 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();

  return sub_100025AE0(v0, qword_10015D1B0);
}

uint64_t sub_10003A11C@<X0>(uint64_t a1@<X8>)
{
  if (qword_100157670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  v3 = sub_100025AE0(v2, qword_10015D1B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

unint64_t sub_10003A1C4()
{
  sub_100024248(&qword_100152F08, &qword_1001042C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100104290;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000010010A850;
  v1 = sub_100033178(0, &qword_100152F10, NSString_ptr);
  *(inited + 48) = v1;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x800000010010A870;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000010010A890;
  *(inited + 96) = v1;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000010010A8B0;
  v2 = sub_100033178(0, &qword_100152F18, NSNumber_ptr);
  *(inited + 120) = v2;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x800000010010A8D0;
  *(inited + 144) = v2;
  v3 = sub_100044270(inited);
  swift_setDeallocating();
  sub_100024248(&qword_100152F20, &qword_1001042D0);
  swift_arrayDestroy();
  return v3;
}

uint64_t sub_10003A358(uint64_t a1, uint64_t a2, char a3)
{
  *(v3 + 616) = a3;
  *(v3 + 440) = a1;
  *(v3 + 448) = a2;
  v4 = type metadata accessor for URL();
  *(v3 + 456) = v4;
  v5 = *(v4 - 8);
  *(v3 + 464) = v5;
  v6 = *(v5 + 64) + 15;
  *(v3 + 472) = swift_task_alloc();
  v7 = type metadata accessor for URL.DirectoryHint();
  *(v3 + 480) = v7;
  v8 = *(v7 - 8);
  *(v3 + 488) = v8;
  v9 = *(v8 + 64) + 15;
  *(v3 + 496) = swift_task_alloc();
  v10 = *(*(sub_100024248(&qword_100152F00, &qword_1001042C0) - 8) + 64) + 15;
  *(v3 + 504) = swift_task_alloc();
  *(v3 + 512) = swift_task_alloc();

  return _swift_task_switch(sub_10003A4BC, 0, 0);
}

uint64_t sub_10003A4BC()
{
  v59 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 440);
  v3 = type metadata accessor for SWTDeps(0);
  *(v0 + 520) = v3;
  v4 = v3[17];
  sub_100024248(&qword_100152F08, &qword_1001042C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100104290;
  *(inited + 32) = 0xD000000000000018;
  *(inited + 40) = 0x800000010010A850;
  v6 = sub_100033178(0, &qword_100152F10, NSString_ptr);
  *(inited + 48) = v6;
  *(inited + 56) = 0xD000000000000013;
  *(inited + 64) = 0x800000010010A870;
  *(inited + 72) = v6;
  *(inited + 80) = 0xD000000000000019;
  *(inited + 88) = 0x800000010010A890;
  *(inited + 96) = v6;
  *(inited + 104) = 0xD000000000000011;
  *(inited + 112) = 0x800000010010A8B0;
  v7 = sub_100033178(0, &qword_100152F18, NSNumber_ptr);
  *(inited + 120) = v7;
  *(inited + 128) = 0xD00000000000001CLL;
  *(inited + 136) = 0x800000010010A8D0;
  *(inited + 144) = v7;
  v8 = sub_100044270(inited);
  *(v0 + 528) = v8;
  swift_setDeallocating();
  sub_100024248(&qword_100152F20, &qword_1001042D0);
  swift_arrayDestroy();
  *(v2 + v4) = v8;
  v9 = v3[5];
  *(v0 + 608) = v9;
  URL.init(fileURLWithPath:)();
  v55 = v9;
  if (v1)
  {
    v10 = 1;
  }

  else
  {
    v11 = *(v0 + 512);
    v13 = *(v0 + 488);
    v12 = *(v0 + 496);
    v14 = *(v0 + 480);
    *(v0 + 416) = 0x696C71732E747773;
    *(v0 + 424) = 0xEA00000000006574;
    (*(v13 + 104))(v12, enum case for URL.DirectoryHint.inferFromPath(_:), v14);
    sub_10004436C();
    URL.appending<A>(path:directoryHint:)();
    (*(v13 + 8))(v12, v14);
    v10 = 0;
  }

  v16 = *(v0 + 504);
  v15 = *(v0 + 512);
  v18 = *(v0 + 440);
  v17 = *(v0 + 448);
  (*(*(v0 + 464) + 56))(v15, v10, 1, *(v0 + 456));
  v19 = v3[6];
  sub_1000443C0(v15, v18 + v19);
  v20 = type metadata accessor for ReachabilityTracker(0);
  *(v0 + 536) = v20;
  v21 = sub_10001EDEC();
  v23 = sub_10001EE60(v21, v22);
  *(v0 + 544) = v23;
  v24 = (v18 + v3[7]);
  v24[3] = v20;
  v24[4] = &off_1001334C0;
  v54 = v24;
  *v24 = v23;
  type metadata accessor for SWTConfigBagFetcher();
  sub_1000331C0(v17, v0 + 296);
  v57 = v20;
  v58 = &off_1001334C0;
  *&v56 = v23;
  swift_retain_n();
  *(v18 + v3[8]) = sub_100037804((v0 + 296), &v56);
  v25 = [objc_allocWithZone(TransparencySettings) init];
  v26 = [objc_allocWithZone(SWTSettings) initWithTransparencySettings:v25];
  *(v0 + 552) = v26;

  *(v18 + v3[9]) = v26;
  *(v0 + 560) = type metadata accessor for SWTFollowUp();
  v27 = sub_10007AF4C();
  *(v0 + 568) = v27;
  *(v18 + v3[10]) = v27;
  type metadata accessor for KTSwiftDB();
  sub_100025834(v18 + v19, v16, &qword_100152F00, &qword_1001042C0);
  v28 = KTSwiftDB.__allocating_init(url:)(v16);
  *(v0 + 576) = v28;
  if (v28)
  {
    *(v0 + 584) = type metadata accessor for KTSWDB();

    v30 = KTSWDB.__allocating_init(db:)(v29);
    *(v0 + 592) = v30;
    v39 = v0 + 16;
    v40 = v0 + 232;
    v42 = *(v0 + 440);
    v41 = *(v0 + 448);
    *(v42 + v3[13]) = v30;
    v43 = objc_opt_self();

    v44 = [v43 logger];
    *(v0 + 600) = v44;
    *(v42 + v3[14]) = v44;
    v45 = type metadata accessor for SWTCloudTelemetry();
    v46 = swift_allocObject();
    v47 = (v42 + v3[15]);
    v47[3] = v45;
    v47[4] = &off_100134150;
    *v47 = v46;
    v48 = v3[16];
    *(v0 + 612) = v48;
    sub_1000331C0(v41, v42 + v48);
    *(v0 + 16) = v0;
    *(v0 + 56) = v0 + 432;
    *(v0 + 24) = sub_10003ABC0;
    v49 = swift_continuation_init();
    *(v0 + 288) = sub_100024248(&qword_100152F38, &qword_1001042E0);
    *(v0 + 232) = _NSConcreteStackBlock;
    *(v0 + 240) = 1107296256;
    *(v0 + 248) = sub_10003B194;
    *(v0 + 256) = &unk_100133FA8;
    *(v0 + 264) = v49;
    v50 = v26;
    v51 = v44;
    [v50 initializeATEnvironmentWithCompletion:v40];

    return _swift_continuation_await(v39);
  }

  else
  {
    v53 = v26;

    type metadata accessor for SWTStateMachineError(0);
    sub_10004617C(&qword_100152F30, type metadata accessor for SWTStateMachineError);
    swift_allocError();
    sub_100025834(v18 + v19, v31, &qword_100152F00, &qword_1001042C0);
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    v33 = *(v0 + 504);
    v32 = *(v0 + 512);
    v34 = *(v0 + 496);
    v35 = *(v0 + 464);
    v52 = *(v0 + 472);
    v36 = *(v0 + 456);
    sub_100024E14(*(v0 + 448));
    (*(v35 + 8))(v2 + v55, v36);
    sub_10002533C(v18 + v19, &qword_100152F00, &qword_1001042C0);
    sub_100024E14(v54);

    v37 = *(v0 + 8);

    return v37();
  }
}

uint64_t sub_10003ABC0()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_10003ACA0, 0, 0);
}

uint64_t sub_10003ACA0()
{
  v53 = v0;
  v1 = *(v0 + 432);

  if (v1 > 9)
  {
    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (((1 << v1) & 0x25E) == 0)
  {
    if (((1 << v1) & 0x1A0) != 0)
    {
      if (qword_100157670 != -1)
      {
        swift_once();
      }

      v8 = type metadata accessor for Logger();
      sub_100025AE0(v8, qword_10015D1B0);
      v3 = Logger.logObject.getter();
      v4 = static os_log_type_t.default.getter();
      v9 = os_log_type_enabled(v3, v4);
      v6 = 5;
      if (v9)
      {
        v44 = 5;
        v7 = "Using PrivateCloudCompute Primary";
        goto LABEL_12;
      }

LABEL_13:
      v44 = v6;
      goto LABEL_14;
    }

    return _assertionFailure(_:_:file:line:flags:)();
  }

  if (qword_100157670 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100025AE0(v2, qword_10015D1B0);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  v5 = os_log_type_enabled(v3, v4);
  v6 = 6;
  if (!v5)
  {
    goto LABEL_13;
  }

  v44 = 6;
  v7 = "Using PrivateCloudCompute Internal";
LABEL_12:
  v10 = swift_slowAlloc();
  *v10 = 0;
  _os_log_impl(&_mh_execute_header, v3, v4, v7, v10, 2u);

LABEL_14:
  v35 = *(v0 + 592);
  v36 = *(v0 + 612);
  v34 = *(v0 + 584);
  v39 = *(v0 + 600);
  v40 = *(v0 + 576);
  v37 = *(v0 + 560);
  v38 = *(v0 + 568);
  v11 = *(v0 + 552);
  v30 = *(v0 + 536);
  v31 = *(v0 + 544);
  v29 = *(v0 + 608);
  v12 = *(v0 + 528);
  v13 = *(v0 + 520);
  v41 = *(v0 + 512);
  v42 = *(v0 + 504);
  v43 = *(v0 + 496);
  v14 = *(v0 + 464);
  v32 = *(v0 + 456);
  v33 = *(v0 + 472);
  v45 = *(v0 + 448);
  v15 = *(v0 + 440);

  v16 = v11;
  v17 = [v16 transparencySettings];
  v18 = objc_allocWithZone(TransparencyConfigBag);
  sub_100024248(&qword_100152F40, qword_1001042E8);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  URL._bridgeToObjectiveC()(v20);
  v22 = v21;
  v23 = [v18 initWithRequiredKeys:isa settings:v17 directory:v21 configApp:2 swtSettings:v16];

  swift_unknownObjectRelease();
  *(v15 + *(v13 + 44)) = v23;
  v24 = type metadata accessor for SWTKeyBagFetcher();
  sub_1000331C0(v45, v0 + 336);
  v51 = v30;
  v52 = &off_1001334C0;
  *&v50 = v31;
  v25 = sub_1000A9A6C(v23, (v0 + 336), &v50);
  *v15 = v44;
  type metadata accessor for SWTPublicKeyBag();
  (*(v14 + 16))(v33, v15 + v29, v32);
  v47 = v34;
  v48 = sub_10004617C(&qword_100152F48, type metadata accessor for KTSWDB);
  *&v46 = v35;
  v49[3] = v24;
  v49[4] = &off_1001369F0;
  v49[0] = v25;
  sub_1000331C0(v15 + v36, v0 + 376);
  v51 = v37;
  v52 = &off_100135AD8;
  *&v50 = v38;

  v26 = sub_10007F9F4(v44, v16, v33, &v46, v49, v0 + 376, &v50, v39);

  sub_100024E14(v45);
  *(v15 + *(v13 + 48)) = v26;

  v27 = *(v0 + 8);

  return v27();
}

uint64_t sub_10003B194(uint64_t a1, uint64_t a2)
{
  **(*(*sub_100026F6C((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

uint64_t sub_10003B25C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + *(type metadata accessor for SWTDeps(0) + 32));
  v5 = *(v0 + 8);
  v3 = swift_unknownObjectRetain();

  return v5(v3);
}

uint64_t sub_10003B2D4(uint64_t a1, uint64_t a2)
{
  v3[13] = a2;
  v3[14] = v2;
  v3[12] = a1;
  return _swift_task_switch(sub_10003B2F8, 0, 0);
}

uint64_t sub_10003B2F8()
{
  v2 = *(v0 + 104);
  v1 = *(v0 + 112);
  v3 = *(v0 + 96);
  v4 = type metadata accessor for SWTKeyBagFetcher();
  v5 = type metadata accessor for SWTDeps(0);
  sub_1000331C0(v1 + *(v5 + 64), v0 + 16);
  sub_1000331C0(v1 + *(v5 + 28), v0 + 56);
  v6 = sub_1000A9A6C(v2, (v0 + 16), (v0 + 56));
  v3[3] = v4;
  v3[4] = &off_1001369F0;
  *v3 = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10003B3E0()
{
  v1 = *(v0 + 16);
  ATLogProofs.VerificationResult.result.getter();
  *(v1 + 24) = &type metadata for ActualMilestoneFetcher;
  *(v1 + 32) = &off_100134F10;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003B474()
{
  v1 = *(v0 + 16);
  ATLogProofs.VerificationResult.result.getter();
  *(v1 + 24) = &type metadata for ActualConsistencyFetcher;
  *(v1 + 32) = &off_100134480;
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003B4E8@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SWTDeps(0) + 40));
  a1[3] = type metadata accessor for SWTFollowUp();
  a1[4] = &off_100135AD8;
  *a1 = v3;
}

uint64_t sub_10003B544(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10003B564, 0, 0);
}

uint64_t sub_10003B564()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = type metadata accessor for SWTDeps(0);
  sub_1000331C0(v1 + *(v3 + 64), v2);
  v4 = v0[1];

  return v4();
}

uint64_t sub_10003B5D8()
{
  v0 = type metadata accessor for UUID();
  v27 = *(v0 - 8);
  v1 = *(v27 + 64);
  __chkstk_darwin(v0);
  v3 = &v27 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for JSONEncoder.OutputFormatting();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v7 = type metadata accessor for JSONEncoder();
  v8 = *(v7 + 48);
  v9 = *(v7 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_100024248(&qword_100152F50, &qword_100104318);
  v10 = *(v5 + 72);
  v11 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1001042A0;
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  v28 = v12;
  sub_10004617C(&qword_100152F58, &type metadata accessor for JSONEncoder.OutputFormatting);
  sub_100024248(&qword_100152F60, &unk_100104320);
  sub_100045F80(&qword_100152F68, &qword_100152F60, &unk_100104320);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  type metadata accessor for TransparencySWIssue();
  sub_10004617C(&qword_100152F70, &type metadata accessor for TransparencySWIssue);
  v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v28 = 0;
  v29 = 0xE000000000000000;
  v14 = v13;
  v16 = v15;
  _StringGuts.grow(_:)(20);

  v28 = 0x70736E6172545753;
  v29 = 0xEF2D79636E657261;
  v17._countAndFlagsBits = TransparencySWIssue.issue.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 45;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  UUID.init()();
  v19 = UUID.uuidString.getter();
  v21 = v20;
  (*(v27 + 8))(v3, v0);
  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v25 = String._bridgeToObjectiveC()();

  [v23 writeIssueReport:isa filename:v25];

  sub_100026FB0(v14, v16);
}

uint64_t sub_10003BA6C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for URL();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10003BB20@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + *(a1 + 40));
  a2[3] = type metadata accessor for SWTFollowUp();
  a2[4] = &off_100135AD8;
  *a2 = v4;
}

uint64_t sub_10003BBEC(uint64_t a1)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = a1;
  return _swift_task_switch(sub_10003BC0C, 0, 0);
}

uint64_t sub_10003BC0C()
{
  v1 = *(v0[2] + *(v0[3] + 32));
  v4 = v0[1];
  v2 = swift_unknownObjectRetain();

  return v4(v2);
}

uint64_t sub_10003BC7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = v3;
  v4[15] = a3;
  v4[12] = a1;
  v4[13] = a2;
  return _swift_task_switch(sub_10003BCA0, 0, 0);
}

uint64_t sub_10003BCA0()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v4 = *(v0 + 96);
  v3 = *(v0 + 104);
  v5 = type metadata accessor for SWTKeyBagFetcher();
  sub_1000331C0(v2 + *(v1 + 64), v0 + 16);
  sub_1000331C0(v2 + *(v1 + 28), v0 + 56);
  v6 = sub_1000A9A6C(v3, (v0 + 16), (v0 + 56));
  v4[3] = v5;
  v4[4] = &off_1001369F0;
  *v4 = v6;
  v7 = *(v0 + 8);

  return v7();
}

uint64_t sub_10003BD5C(uint64_t a1, uint64_t a2)
{
  v3[3] = v2;
  v3[4] = a2;
  v3[2] = a1;
  return _swift_task_switch(sub_10003BD80, 0, 0);
}

uint64_t sub_10003BD80()
{
  sub_1000331C0(v0[3] + *(v0[4] + 64), v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t sub_10003BE04(char *a1, char *a2)
{
  if (qword_1001048A0[*a1] == qword_1001048A0[*a2])
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v2 & 1;
}

Swift::Int sub_10003BE6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_1001048A0[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10003BEC8()
{
  v1 = qword_1001048A0[*v0];
  String.hash(into:)();
}

Swift::Int sub_10003BF08()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = qword_1001048A0[v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_10003BF60@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100044480(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10003BFC4@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100044480(a1);
  *a2 = result;
  return result;
}

uint64_t sub_10003C004(uint64_t a1)
{
  v2 = sub_10004642C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10003C040(uint64_t a1)
{
  v2 = sub_10004642C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10003C07C(void *a1)
{
  v4 = a1;
  v45 = &_swiftEmptyArrayStorage;
  v5 = &selRef_initWithValidationFunction_rawValues_count_;
  v6 = [a1 userInfo];
  v7 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (!*(v7 + 16))
  {

    goto LABEL_7;
  }

  v10 = sub_1000435B4(v8, v9);
  v12 = v11;

  if ((v12 & 1) == 0)
  {
LABEL_7:

    goto LABEL_8;
  }

  sub_100025058(*(v7 + 56) + 32 * v10, v44);

  sub_100033178(0, &qword_100153480, NSError_ptr);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_8;
  }

  v13 = v43;
  v14 = (sub_10003C07C)();
  v16 = v15;
  v18 = v17;
  v42 = v19;
  v2 = sub_1000434A8(0, 1, 1, &_swiftEmptyArrayStorage);
  v1 = *(v2 + 2);
  v20 = *(v2 + 3);
  v3 = v1 + 1;
  if (v1 >= v20 >> 1)
  {
    goto LABEL_29;
  }

  while (1)
  {

    *(v2 + 2) = v3;
    v21 = &v2[32 * v1];
    *(v21 + 4) = v14;
    *(v21 + 5) = v16;
    *(v21 + 6) = v18;
    *(v21 + 7) = v42;
    v45 = v2;
LABEL_8:
    v22 = [v4 v5[341]];
    v13 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (!*(v13 + 16))
    {

      goto LABEL_34;
    }

    v39 = v4;
    v25 = sub_1000435B4(v23, v24);
    v27 = v26;

    if ((v27 & 1) == 0)
    {

      goto LABEL_33;
    }

    sub_100025058(*(v13 + 56) + 32 * v25, v44);

    sub_100024248(&qword_100153498, &qword_100104698);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_33;
    }

    v28 = v43;
    if (v43 >> 62)
    {
      break;
    }

    v14 = *((v43 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v14)
    {
      goto LABEL_31;
    }

LABEL_13:
    v18 = 0;
    v41 = v28 & 0xFFFFFFFFFFFFFF8;
    v42 = v28 & 0xC000000000000001;
    v16 = &_swiftEmptyArrayStorage;
    v40 = v28;
    while (1)
    {
      if (v42)
      {
        v29 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v20 = *(v41 + 16);
        if (v18 >= v20)
        {
          goto LABEL_28;
        }

        v29 = *(v28 + 8 * v18 + 32);
      }

      v5 = v29;
      v1 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      v4 = sub_10003C07C(v29);
      v2 = v30;
      v3 = v31;
      v33 = v32;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v16 = sub_1000434A8(0, *(v16 + 2) + 1, 1, v16);
      }

      v13 = *(v16 + 2);
      v34 = *(v16 + 3);
      v5 = (v13 + 1);
      if (v13 >= v34 >> 1)
      {
        v16 = sub_1000434A8((v34 > 1), v13 + 1, 1, v16);
      }

      *(v16 + 2) = v5;
      v35 = &v16[32 * v13];
      *(v35 + 4) = v4;
      *(v35 + 5) = v2;
      *(v35 + 6) = v3;
      *(v35 + 7) = v33;
      ++v18;
      v28 = v40;
      if (v1 == v14)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v2 = sub_1000434A8((v20 > 1), v3, 1, v2);
  }

  v1 = v43;
  v14 = _CocoaArrayWrapper.endIndex.getter();
  v28 = v43;
  if (v14)
  {
    goto LABEL_13;
  }

LABEL_31:
  v16 = &_swiftEmptyArrayStorage;
LABEL_32:

  sub_10003C4C8(v16);
LABEL_33:
  v4 = v39;
LABEL_34:
  v36 = [v4 domain];
  v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  [v4 code];
  if (!*(v45 + 2))
  {
  }

  return v37;
}

uint64_t sub_10003C4C8(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_1000434A8(result, v11, 1, v3);
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
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_10003C5BC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v16 = a5;
  v17 = a4;
  v7 = sub_100024248(&qword_1001534B0, &qword_100104738);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  v12 = a1[4];
  sub_100026F6C(a1, a1[3]);
  sub_10004642C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = v16;
    v20 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v14;
    v19 = 2;
    sub_100024248(&qword_1001534B8, &qword_100104740);
    sub_100046480(&qword_1001534C0, sub_100046340);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10003C7F0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000444CC(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10003C840()
{
  v0 = type metadata accessor for Logger();
  sub_100027A50(v0, qword_100157680);
  sub_100025AE0(v0, qword_100157680);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10003C8CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100024248(&unk_100153470, &qword_100104668);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v19 - v9;
  v11 = type metadata accessor for EventValue();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v11) == 1)
  {
    sub_10002533C(a1, &unk_100153470, &qword_100104668);
    sub_1000436E4(a2, a3, v10);

    return sub_10002533C(v10, &unk_100153470, &qword_100104668);
  }

  else
  {
    (*(v12 + 32))(v15, a1, v11);
    v17 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v3;
    sub_100043DC0(v15, a2, a3, isUniquelyReferenced_nonNull_native);

    *v3 = v20;
  }

  return result;
}

uint64_t sub_10003CAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[5] = a4;
  v7 = *(*(sub_100024248(&qword_100153490, &qword_100104690) - 8) + 64) + 15;
  v6[8] = swift_task_alloc();

  return _swift_task_switch(sub_10003CB44, 0, 0);
}

uint64_t sub_10003CB44()
{
  v2 = v0[7];
  v1 = v0[8];
  type metadata accessor for Reporter();
  v3 = TransparencyTeamID.getter();
  v5 = v4;
  v0[9] = v4;
  swift_beginAccess();
  v6 = *(v2 + 16);
  v0[10] = v6;
  v7 = type metadata accessor for TransportConfiguration();
  (*(*(v7 - 8) + 56))(v1, 1, 1, v7);
  v8 = async function pointer to static Reporter.report(teamID:eventType:event:transportConfiguration:)[1];

  v9 = swift_task_alloc();
  v0[11] = v9;
  *v9 = v0;
  v9[1] = sub_10003CC80;
  v10 = v0[8];
  v11 = v0[5];
  v12 = v0[6];

  return static Reporter.report(teamID:eventType:event:transportConfiguration:)(v3, v5, v11, v12, v6, v10);
}

uint64_t sub_10003CC80()
{
  v2 = *v1;
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *v1;
  *(*v1 + 96) = v0;

  sub_10002533C(v6, &qword_100153490, &qword_100104690);

  if (v0)
  {

    return _swift_task_switch(sub_10003CE40, 0, 0);
  }

  else
  {
    v8 = *(v2 + 64);

    v9 = *(v7 + 8);

    return v9();
  }
}

uint64_t sub_10003CE40()
{
  v1 = v0[8];

  v2 = v0[1];
  v3 = v0[12];

  return v2();
}

uint64_t sub_10003CEA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100025834(a3, v24 - v10, &unk_100152620, &unk_1001031E0);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_10002533C(v11, &unk_100152620, &unk_1001031E0);
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

      sub_10002533C(a3, &unk_100152620, &unk_1001031E0);

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

  sub_10002533C(a3, &unk_100152620, &unk_1001031E0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10003D160()
{
  swift_beginAccess();
  v1 = *(v0 + 112);
}

uint64_t sub_10003D198(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 112);
  *(v1 + 112) = a1;
}

uint64_t sub_10003D1E0@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_10003D24C@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  swift_beginAccess();
  return sub_100025834(v1 + v3, a1, &qword_100152D90, &qword_100105620);
}

uint64_t sub_10003D2B4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  swift_beginAccess();
  sub_100044E8C(a1, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10003D374()
{
  v3 = *(*v0 + 112);

  return v3(v1);
}

uint64_t sub_10003D3E8()
{
  v1 = (*(**(v0 + 16) + 104))();
  if (v1)
  {
    *(v0 + 24) = *(v1 + 152);

    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_1000467A4;

    return sub_100093974(2);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10003D514()
{
  v1 = (*(**(v0 + 16) + 104))();
  if (v1)
  {
    *(v0 + 24) = *(v1 + 152);

    v2 = swift_task_alloc();
    *(v0 + 32) = v2;
    *v2 = v0;
    v2[1] = sub_10003D620;

    return sub_100093974(1);
  }

  else
  {
    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t sub_10003D620()
{
  v1 = *(*v0 + 32);
  v2 = *(*v0 + 24);
  v5 = *v0;

  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_10003D730()
{
  v1[2] = v0;
  v2 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64) + 15;
  v1[3] = swift_task_alloc();
  v1[4] = swift_task_alloc();
  v3 = type metadata accessor for Date();
  v1[5] = v3;
  v4 = *(v3 - 8);
  v1[6] = v4;
  v5 = *(v4 + 64) + 15;
  v1[7] = swift_task_alloc();

  return _swift_task_switch(sub_10003D834, v0, 0);
}

uint64_t sub_10003D834()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(**(v0 + 16) + 128))();
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10002533C(*(v0 + 32), &qword_100152D90, &qword_100105620);
  }

  else
  {
    v5 = *(v0 + 48);
    v4 = *(v0 + 56);
    v6 = *(v0 + 40);
    (*(v5 + 32))(v4, *(v0 + 32), v6);
    Date.timeIntervalSinceNow.getter();
    v8 = v7;
    (*(v5 + 8))(v4, v6);
    if (v8 <= 0.0 && v8 >= -600.0)
    {
      goto LABEL_9;
    }
  }

  v10 = *(v0 + 40);
  v11 = *(v0 + 48);
  v13 = *(v0 + 16);
  v12 = *(v0 + 24);
  Date.init()();
  (*(v11 + 56))(v12, 0, 1, v10);
  (*(*v13 + 136))(v12);
  notify_post("com.apple.transparency.swt-ready");
LABEL_9:
  v14 = *(v0 + 56);
  v15 = *(v0 + 24);
  v16 = *(v0 + 32);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_10003D9EC(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10003DA0C, v1, 0);
}

uint64_t sub_10003DA0C()
{
  v1 = *(v0 + 16);
  (*(**(v0 + 24) + 128))();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10003DA8C()
{
  v1 = *(v0 + 112);

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady, &qword_100152D90, &qword_100105620);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t sub_10003DAD4()
{
  v1 = *(v0 + 112);

  sub_10002533C(v0 + OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady, &qword_100152D90, &qword_100105620);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10003DB2C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  swift_defaultActor_initialize();
  *(v3 + 112) = 0;
  v4 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  v5 = type metadata accessor for Date();
  (*(*(v5 - 8) + 56))(v3 + v4, 1, 1, v5);
  return v3;
}

uint64_t sub_10003DBB0()
{
  swift_defaultActor_initialize();
  *(v0 + 112) = 0;
  v1 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  v2 = type metadata accessor for Date();
  (*(*(v2 - 8) + 56))(v0 + v1, 1, 1, v2);
  return v0;
}

uint64_t sub_10003DC24()
{
  v2 = *(**v0 + 160);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return v6();
}

uint64_t sub_10003DD38()
{
  v2 = *(**v0 + 168);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return v6();
}

uint64_t sub_10003DE4C()
{
  v2 = *(**v0 + 176);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10001CF5C;

  return v6();
}

uint64_t sub_10003DF60@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *sub_10003DFEC()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_service;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_10003E038(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_service;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10003E100()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger;
  swift_beginAccess();
  v2 = *(v0 + v1);
}

uint64_t sub_10003E148(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_10003E200()
{
  v2 = *(v0 + 48);
  v3 = *(v0 + 52);
  swift_allocObject();
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10003E2A0;

  return sub_10003E3A0();
}

uint64_t sub_10003E2A0(uint64_t a1)
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

uint64_t sub_10003E3A0()
{
  v1[18] = v0;
  v2 = type metadata accessor for SWTDeps(0);
  v1[19] = v2;
  v3 = *(*(v2 - 8) + 64) + 15;
  v1[20] = swift_task_alloc();
  v4 = type metadata accessor for Logger();
  v1[21] = v4;
  v5 = *(v4 - 8);
  v1[22] = v5;
  v6 = *(v5 + 64) + 15;
  v1[23] = swift_task_alloc();

  return _swift_task_switch(sub_10003E490, 0, 0);
}

uint64_t sub_10003E490()
{
  v2 = v0[22];
  v1 = v0[23];
  v3 = v0[21];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_service;
  v0[24] = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_service;
  *(v4 + v5) = 0;
  v6 = type metadata accessor for TriggerInterface(0);
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  v9 = swift_allocObject();
  v0[25] = v9;
  swift_defaultActor_initialize();
  *(v9 + 112) = 0;
  v10 = OBJC_IVAR____TtC15swtransparencyd16TriggerInterface_lastNotifyReady;
  v11 = type metadata accessor for Date();
  (*(*(v11 - 8) + 56))(v9 + v10, 1, 1, v11);
  Logger.init(subsystem:category:)();
  v12 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v0[26] = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  (*(v2 + 32))(v4 + v12, v1, v3);
  v0[5] = v6;
  v0[6] = &off_100134160;
  v0[2] = v9;

  v13 = swift_task_alloc();
  v0[27] = v13;
  *v13 = v0;
  v13[1] = sub_10003E654;
  v14 = v0[20];

  return sub_10003A358(v14, (v0 + 2), 0);
}

uint64_t sub_10003E654()
{
  v2 = *(*v1 + 216);
  v5 = *v1;
  *(*v1 + 224) = v0;

  if (v0)
  {
    v3 = sub_10003E9C4;
  }

  else
  {
    v3 = sub_10003E768;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10003E768()
{
  v1 = v0[24];
  v2 = v0[25];
  v3 = v0[19];
  v4 = v0[18];
  v5 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps;
  sub_100044FA0(v0[20], v4 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps);
  swift_beginAccess();
  v6 = *(v4 + v1);
  *(v4 + v1) = 0;

  *(v4 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger) = v2;
  type metadata accessor for SWT2SM();
  v0[10] = v3;
  v0[11] = &off_1001340C0;
  v7 = sub_100045004(v0 + 7);
  sub_100044EFC(v4 + v5, v7);

  v8 = sub_1000AB864(v0 + 7);
  v0[29] = v8;
  *(v4 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) = v8;
  v9 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger;
  swift_beginAccess();
  v10 = *(v4 + v9);
  v0[30] = v10;
  v11 = (*v10 + 152) & 0xFFFFFFFFFFFFLL | 0xED95000000000000;
  v0[31] = *(*v10 + 152);
  v0[32] = v11;

  return _swift_task_switch(sub_10003E8C4, v10, 0);
}

uint64_t sub_10003E8C4()
{
  v1 = *(v0 + 256);
  v2 = *(v0 + 240);
  (*(v0 + 248))(*(v0 + 232));

  return _swift_task_switch(sub_10003E944, 0, 0);
}

uint64_t sub_10003E944()
{
  v1 = v0[25];
  v2 = v0[23];
  v3 = v0[20];

  v4 = v0[1];
  v5 = v0[18];

  return v4(v5);
}

uint64_t sub_10003E9C4()
{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[22];
  v3 = v0[23];
  v6 = v0[20];
  v5 = v0[21];
  v7 = v0[18];

  (*(v4 + 8))(v7 + v2, v5);

  type metadata accessor for SWTransparencyDaemon(0);
  v8 = *(*v7 + 48);
  v9 = *(*v7 + 52);
  swift_deallocPartialClassInstance();

  v10 = v0[1];
  v11 = v0[28];

  return v10();
}

uint64_t sub_10003EABC()
{
  v1 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v8 - v3;
  v5 = type metadata accessor for TaskPriority();
  (*(*(v5 - 8) + 56))(v4, 1, 1, v5);
  v6 = swift_allocObject();
  v6[2] = 0;
  v6[3] = 0;
  v6[4] = v0;

  sub_10003CEA4(0, 0, v4, &unk_100104388, v6);
}

uint64_t sub_10003EBE4()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100038BE4;
  v3 = *(v0 + 16);

  return sub_10003EC88(v1);
}

uint64_t sub_10003EC88(uint64_t a1)
{
  v2[95] = v1;
  v2[89] = a1;
  v3 = type metadata accessor for URL.DirectoryHint();
  v2[101] = v3;
  v4 = *(v3 - 8);
  v2[107] = v4;
  v5 = *(v4 + 64) + 15;
  v2[108] = swift_task_alloc();
  v6 = type metadata accessor for URL();
  v2[109] = v6;
  v7 = *(v6 - 8);
  v2[110] = v7;
  v8 = *(v7 + 64) + 15;
  v2[111] = swift_task_alloc();
  v2[112] = swift_task_alloc();
  v9 = *(*(sub_100024248(&qword_100152D90, &qword_100105620) - 8) + 64) + 15;
  v2[113] = swift_task_alloc();
  v10 = *(*(sub_100024248(&qword_100153448, &qword_100104650) - 8) + 64) + 15;
  v2[114] = swift_task_alloc();
  v11 = type metadata accessor for TransparencySWSysdiagnose();
  v2[115] = v11;
  v12 = *(v11 - 8);
  v2[116] = v12;
  v13 = *(v12 + 64) + 15;
  v2[117] = swift_task_alloc();
  v14 = type metadata accessor for TransparencySWSysdiagnose.StateMachine();
  v2[118] = v14;
  v15 = *(v14 - 8);
  v2[119] = v15;
  v16 = *(v15 + 64) + 15;
  v2[120] = swift_task_alloc();

  return _swift_task_switch(sub_10003EEDC, 0, 0);
}

uint64_t sub_10003EEDC()
{
  v1 = v0[120];
  v2 = v0[118];
  v3 = v0[89];

  swift_asyncLet_begin();
  v4 = v0[120];

  return _swift_asyncLet_get_throwing(v0 + 2, v4, sub_10003EF88, v0 + 82);
}

uint64_t sub_10003EF88()
{
  *(v1 + 968) = v0;
  if (v0)
  {
    v2 = sub_10003F628;
  }

  else
  {
    v2 = sub_10003EFBC;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_10003EFBC()
{
  v62 = v0;
  v1 = v0[119];
  v2 = v0[118];
  v3 = v0[117];
  v4 = v0[114];
  v5 = v0[113];
  v58 = v0[112];
  v59 = v0[121];
  v6 = v0[108];
  v7 = v0[107];
  v8 = v0[101];
  v9 = v0[95];
  (*(v1 + 16))(v4, v0[120], v2);
  (*(v1 + 56))(v4, 0, 1, v2);
  Date.init()();
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 56))(v5, 0, 1, v10);
  TransparencySWSysdiagnose.init(stateMachine:fallback:)();
  LODWORD(v9) = *(type metadata accessor for SWTDeps(0) + 20);
  v0[87] = 0xD000000000000012;
  v0[88] = 0x800000010010AAE0;
  (*(v7 + 104))(v6, enum case for URL.DirectoryHint.inferFromPath(_:), v8);
  sub_10004436C();
  URL.appending<A>(path:directoryHint:)();
  (*(v7 + 8))(v6, v8);
  v11 = TransparencySWSysdiagnose.json()();
  if (v59)
  {
    v16 = v0[95];
    swift_errorRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      swift_errorRetain();
      v21 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v21;
      *v20 = v21;
      _os_log_impl(&_mh_execute_header, v17, v18, "sysdiagnose write error %@", v19, 0xCu);
      sub_10002533C(v20, &qword_100153450, &unk_100104140);
    }

    v22 = v0[117];
    v23 = v0[116];
    v24 = v0[115];
    v25 = v0[112];
    v26 = v0[110];
    v27 = v0[109];

    (*(v26 + 8))(v25, v27);
    (*(v23 + 8))(v22, v24);
    v28 = sub_10003F734;
    v29 = v0[120];
    v30 = v0 + 2;
    v31 = v0 + 96;
  }

  else
  {
    v13 = v11;
    v14 = v12;
    v15 = v0[112];
    Data.write(to:options:)();
    v32 = v0[112];
    v33 = v0[111];
    v34 = v0[110];
    v35 = v0[109];
    v36 = v0[95];
    sub_100026FB0(v13, v14);
    (*(v34 + 16))(v33, v32, v35);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    v39 = os_log_type_enabled(v37, v38);
    v40 = v0[117];
    v41 = v0[116];
    v42 = v0[115];
    v43 = v0[112];
    v44 = v0[111];
    v45 = v0[110];
    v46 = v0[109];
    if (v39)
    {
      v60 = v0[115];
      v47 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v61 = v56;
      *v47 = 136315138;
      sub_10004617C(&unk_100153458, &type metadata accessor for URL);
      v55 = v38;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      v57 = v40;
      v50 = v49;
      v51 = *(v45 + 8);
      v51(v44, v46);
      v52 = sub_100021D24(v48, v50, &v61);

      *(v47 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v37, v55, "wrote fallback sysdiagnose to: %s", v47, 0xCu);
      sub_100024E14(v56);

      v51(v43, v46);
      (*(v41 + 8))(v57, v60);
    }

    else
    {

      v53 = *(v45 + 8);
      v53(v44, v46);
      v53(v43, v46);
      (*(v41 + 8))(v40, v42);
    }

    v28 = sub_10003F53C;
    v29 = v0[120];
    v30 = v0 + 2;
    v31 = v0 + 102;
  }

  return _swift_asyncLet_finish(v30, v29, v28, v31);
}

uint64_t sub_10003F558()
{
  v1 = v0[120];
  v2 = v0[117];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[108];
  v8 = v0[89];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10003F664()
{
  v1 = v0[120];
  v2 = v0[117];
  v3 = v0[114];
  v4 = v0[113];
  v5 = v0[112];
  v6 = v0[111];
  v7 = v0[108];
  v8 = v0[89];

  v9 = v0[1];
  v10 = v0[121];

  return v9();
}

uint64_t sub_10003F750(uint64_t a1, uint64_t a2)
{
  v4 = *(*a2 + 200);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10001CF5C;

  return v8(a1);
}

xpc_activity_state_t sub_10003F878(_xpc_activity_s *a1)
{
  v2 = v1;
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 134217984;
      *(v11 + 4) = 2;
      _os_log_impl(&_mh_execute_header, v9, v10, "Milestone refresh XPC activity triggered, state: %ld", v11, 0xCu);
    }

    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v2;

    sub_10003CEA4(0, 0, v7, &unk_100104398, v13);

    return xpc_activity_set_state(a1, 5);
  }

  return result;
}

uint64_t sub_10003FA54()
{
  v0[5] = &type metadata for SWTFeatureFlags;
  v1 = sub_1000461C4();
  *(v0 + 16) = 0;
  v0[18] = v1;
  v0[6] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 2);
  if (v2)
  {
    v3 = *(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 160);
    v19 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[19] = v5;
    *v5 = v0;
    v5[1] = sub_10003FE4C;
    v6 = v19;

    return v6();
  }

  *(v0 + 56) = 1;
  v7 = v0[18];
  v0[10] = &type metadata for SWTFeatureFlags;
  v0[11] = v7;
  v8 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 7);
  if (v8)
  {
    v9 = *(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 168);
    v20 = (v9 + *v9);
    v10 = v9[1];
    v11 = swift_task_alloc();
    v0[20] = v11;
    *v11 = v0;
    v11[1] = sub_100040238;
    v6 = v20;

    return v6();
  }

  v12 = v0[18];
  v0[15] = &type metadata for SWTFeatureFlags;
  v0[16] = v12;
  *(v0 + 96) = 4;
  v13 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 12);
  if (v13)
  {
    v14 = *(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184);
    v21 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[21] = v16;
    *v16 = v0;
    v16[1] = sub_1000404FC;
    v6 = v21;

    return v6();
  }

  v18 = v0[1];

  return v18();
}

uint64_t sub_10003FE4C()
{
  v2 = *(*v1 + 152);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_10003FF7C, 0, 0);
  }
}

uint64_t sub_10003FF7C()
{
  *(v0 + 56) = 1;
  v1 = v0[18];
  v0[10] = &type metadata for SWTFeatureFlags;
  v0[11] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 7);
  if (v2)
  {
    v3 = *(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 168);
    v14 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[20] = v5;
    *v5 = v0;
    v5[1] = sub_100040238;
    v6 = v14;

    return v6();
  }

  *(v0 + 96) = 4;
  v8 = v0[18];
  v0[15] = &type metadata for SWTFeatureFlags;
  v0[16] = v8;
  v9 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 12);
  if (v9)
  {
    v10 = *(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184);
    v15 = (v10 + *v10);
    v11 = v10[1];
    v12 = swift_task_alloc();
    v0[21] = v12;
    *v12 = v0;
    v12[1] = sub_1000404FC;
    v6 = v15;

    return v6();
  }

  v13 = v0[1];

  return v13();
}

uint64_t sub_100040238()
{
  v2 = *(*v1 + 160);
  v3 = *v1;

  if (v0)
  {
    v4 = *(v3 + 8);

    return v4();
  }

  else
  {

    return _swift_task_switch(sub_100040368, 0, 0);
  }
}

uint64_t sub_100040368()
{
  *(v0 + 96) = 4;
  v1 = v0[18];
  v0[15] = &type metadata for SWTFeatureFlags;
  v0[16] = v1;
  v2 = isFeatureEnabled(_:)();
  sub_100024E14(v0 + 12);
  if (v2)
  {
    v3 = *(**(v0[17] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine) + 184);
    v8 = (v3 + *v3);
    v4 = v3[1];
    v5 = swift_task_alloc();
    v0[21] = v5;
    *v5 = v0;
    v5[1] = sub_1000404FC;

    return v8();
  }

  else
  {
    v7 = v0[1];

    return v7();
  }
}

uint64_t sub_1000404FC()
{
  v1 = *(*v0 + 168);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100040610()
{
  v1 = *(*(v0 + 16) + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1000406B4;
  v3 = *(v0 + 16);

  return sub_10003EC88(v1);
}

uint64_t sub_1000406B4()
{
  v2 = *(*v1 + 24);
  v3 = *v1;

  if (v0)
  {
  }

  v4 = *(v3 + 8);

  return v4();
}

xpc_activity_state_t sub_1000407B8(_xpc_activity_s *a1)
{
  v2 = v1;
  v4 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v14 - v6;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "24h background work", v10, 2u);
  }

  result = xpc_activity_get_state(a1);
  if (result == 2)
  {
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v7, 1, 1, v12);
    v13 = swift_allocObject();
    v13[2] = 0;
    v13[3] = 0;
    v13[4] = v2;
    v13[5] = 2;
    v13[6] = a1;

    swift_unknownObjectRetain();
    sub_10001C660(0, 0, v7, &unk_1001043C0, v13);
  }

  return result;
}

uint64_t sub_100040968(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  return _swift_task_switch(sub_10004098C, 0, 0);
}

uint64_t sub_10004098C()
{
  v1 = v0[2] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[3];
    v5 = swift_slowAlloc();
    *v5 = 134217984;
    *(v5 + 4) = v4;
    _os_log_impl(&_mh_execute_header, v2, v3, "24h job triggered triggered, state: %ld", v5, 0xCu);
  }

  v6 = v0[2];

  v7 = *(*v6 + 200);
  v12 = (v7 + *v7);
  v8 = v7[1];
  v9 = swift_task_alloc();
  v0[5] = v9;
  *v9 = v0;
  v9[1] = sub_100040B40;
  v10 = v0[2];

  return v12();
}

uint64_t sub_100040B40()
{
  v2 = *(*v1 + 40);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_1000467DC;
  }

  else
  {
    v3 = sub_100040C58;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100040C58()
{
  xpc_activity_set_state(*(v0 + 32), 5);
  v1 = *(v0 + 8);

  return v1();
}

void sub_100040CBC()
{
  v1 = v0;
  v38 = type metadata accessor for DispatchWorkItemFlags();
  v2 = *(v38 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v38);
  v5 = &v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = type metadata accessor for DispatchQoS();
  v6 = *(v37 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v37);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v36 - v12;
  v39 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "swtransparencyd starting", v16, 2u);
  }

  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v13, 1, 1, v17);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0;
  v18[4] = v1;

  sub_10001C660(0, 0, v13, &unk_1001043D0, v18);

  sub_100033178(0, &unk_100152FD8, OS_dispatch_source_ptr);
  sub_100033178(0, &qword_1001525E0, OS_dispatch_queue_ptr);
  v19 = static OS_dispatch_queue.main.getter();
  static OS_dispatch_source.makeSignalSource(signal:queue:)();

  swift_getObjectType();
  aBlock[4] = sub_100045318;
  aBlock[5] = v1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000467BC;
  aBlock[3] = &unk_100134070;
  v20 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  sub_100041928();
  OS_dispatch_source.setEventHandler(qos:flags:handler:)();
  _Block_release(v20);
  (*(v2 + 8))(v5, v38);
  (*(v6 + 8))(v9, v37);

  OS_dispatch_source.resume()();
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Registering XPC service", v23, 2u);
  }

  type metadata accessor for SWTransparencyXPCService();
  v24 = sub_100068D78(*(v1 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine));
  v25 = (*(*v1 + 128))(v24);
  v26 = (*(*v1 + 120))(v25);
  if (v26)
  {
    v27 = v26 + OBJC_IVAR____TtC15swtransparencyd24SWTransparencyXPCService_daemon;
    v28 = v26;
    swift_beginAccess();
    *(v27 + 8) = &off_100134180;
    swift_unknownObjectWeakAssign();
  }

  v29 = v1 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps;
  v30 = *(v29 + *(type metadata accessor for SWTDeps(0) + 36));
  v31 = [objc_msgSend(v30 "transparencySettings")];
  swift_unknownObjectRelease();
  v32 = [v30 atEnvironment];
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    *v35 = 134349312;
    *(v35 + 4) = v32;
    *(v35 + 12) = 2050;
    *(v35 + 14) = v31;
    _os_log_impl(&_mh_execute_header, v33, v34, "swtransparencyd started at: %{public}lu kt: %{public}lu", v35, 0x16u);
  }

  swift_unknownObjectRelease();
}

uint64_t sub_1000412D4()
{
  v1 = *(v0[2] + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);
  v0[3] = v1;
  v2 = *(*v1 + 120);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1000413F8;

  return v6();
}

uint64_t sub_1000413F8()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v10 = *v0;

  v4 = *(*v3 + 136);
  v9 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v1 + 40) = v6;
  *v6 = v10;
  v6[1] = sub_1000415C4;
  v7 = *(v1 + 24);

  return v9();
}

uint64_t sub_1000415C4()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000416B8(uint64_t a1)
{
  v2 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v9 - v4;
  v6 = type metadata accessor for TaskPriority();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = a1;

  sub_10001C660(0, 0, v5, &unk_100104630, v7);
}

uint64_t sub_1000417E4()
{
  v1 = *(v0 + 16);
  xpc_transaction_exit_clean();
  v2 = *(v1 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);
  v3 = sub_1000258E4();
  v4 = *(*v2 + 192);
  v8 = (v4 + *v4);
  v5 = v4[1];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_100038BE4;

  return (v8)(v3 & 1, 1);
}

uint64_t sub_100041928()
{
  type metadata accessor for DispatchWorkItemFlags();
  sub_10004617C(&qword_100153430, &type metadata accessor for DispatchWorkItemFlags);
  sub_100024248(&qword_100153438, &qword_100104620);
  sub_100045F80(&qword_100153440, &qword_100153438, &qword_100104620);
  return dispatch thunk of SetAlgebra.init<A>(_:)();
}

uint64_t sub_100041A00()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100045338(v0 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps);

  v3 = *(v0 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);

  v4 = *(v0 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger);

  return v0;
}

uint64_t sub_100041AA0()
{
  v1 = OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100045338(v0 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_deps);

  v3 = *(v0 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_stateMachine);

  v4 = *(v0 + OBJC_IVAR____TtC15swtransparencyd20SWTransparencyDaemon_trigger);

  v5 = *(*v0 + 48);
  v6 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_100041B7C()
{
  v2 = *(*v0 + 200);
  v6 = (v2 + *v2);
  v3 = v2[1];
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1000258C8;

  return v6();
}

uint64_t sub_100041C8C()
{
  v1 = sub_100024248(&unk_100152620, &unk_1001031E0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v111 = &v105 - v3;
  v4 = type metadata accessor for URL();
  v120 = *(v4 - 8);
  v5 = *(v120 + 64);
  v6 = __chkstk_darwin(v4);
  v106 = &v105 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v6);
  v107 = &v105 - v9;
  __chkstk_darwin(v8);
  v105 = &v105 - v10;
  v11 = sub_100024248(&qword_100152F00, &qword_1001042C0);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v114 = &v105 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v113 = &v105 - v16;
  v17 = __chkstk_darwin(v15);
  v109 = &v105 - v18;
  v19 = __chkstk_darwin(v17);
  v108 = &v105 - v20;
  v21 = __chkstk_darwin(v19);
  v115 = &v105 - v22;
  v23 = __chkstk_darwin(v21);
  v25 = &v105 - v24;
  v26 = __chkstk_darwin(v23);
  v119 = &v105 - v27;
  v28 = __chkstk_darwin(v26);
  v30 = &v105 - v29;
  v31 = __chkstk_darwin(v28);
  v118 = &v105 - v32;
  v33 = __chkstk_darwin(v31);
  v35 = &v105 - v34;
  v36 = __chkstk_darwin(v33);
  v38 = &v105 - v37;
  v39 = __chkstk_darwin(v36);
  v41 = &v105 - v40;
  __chkstk_darwin(v39);
  v121 = &v105 - v42;
  v116 = [objc_opt_self() defaultManager];
  v43 = NSHomeDirectory();
  if (!v43)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v43 = String._bridgeToObjectiveC()();
  }

  v112 = v0;
  v44 = [objc_allocWithZone(NSURL) initFileURLWithPath:v43];

  v45 = String._bridgeToObjectiveC()();
  v110 = v44;
  v46 = [v44 URLByAppendingPathComponent:v45];

  if (v46)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v47 = v120;
    v48 = *(v120 + 56);
    v48(v41, 0, 1, v4);
  }

  else
  {
    v47 = v120;
    v48 = *(v120 + 56);
    v48(v41, 1, 1, v4);
  }

  v49 = v41;
  v50 = v121;
  sub_1000443C0(v49, v121);
  sub_100025834(v50, v35, &qword_100152F00, &qword_1001042C0);
  v122 = *(v47 + 48);
  if (v122(v35, 1, v4) == 1)
  {
    sub_10002533C(v35, &qword_100152F00, &qword_1001042C0);
    v51 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    (*(v47 + 8))(v35, v4);
    v51 = 0;
  }

  v117 = v38;
  v48(v38, v51, 1, v4);
  sub_100025834(v121, v30, &qword_100152F00, &qword_1001042C0);
  if (v122(v30, 1, v4) == 1)
  {
    sub_10002533C(v30, &qword_100152F00, &qword_1001042C0);
    v52 = 1;
    v54 = v118;
    v53 = v119;
  }

  else
  {
    v54 = v118;
    URL.appendingPathComponent(_:)();
    (*(v47 + 8))(v30, v4);
    v52 = 0;
    v53 = v119;
  }

  v55 = v108;
  v48(v54, v52, 1, v4);
  sub_100025834(v121, v25, &qword_100152F00, &qword_1001042C0);
  if (v122(v25, 1, v4) == 1)
  {
    sub_10002533C(v25, &qword_100152F00, &qword_1001042C0);
    v56 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    v53 = v119;
    (*(v120 + 8))(v25, v4);
    v56 = 0;
  }

  v57 = v117;
  v48(v53, v56, 1, v4);
  sub_100025834(v53, v55, &qword_100152F00, &qword_1001042C0);
  v58 = v122(v55, 1, v4);
  v59 = v115;
  if (v58 == 1)
  {
    sub_10002533C(v55, &qword_100152F00, &qword_1001042C0);
    v60 = 1;
  }

  else
  {
    URL.appendingPathComponent(_:)();
    (*(v120 + 8))(v55, v4);
    v60 = 0;
  }

  v61 = v113;
  v48(v59, v60, 1, v4);
  v62 = v109;
  sub_100025834(v57, v109, &qword_100152F00, &qword_1001042C0);
  v63 = v122(v62, 1, v4);
  v64 = &stru_10014B000;
  v65 = v118;
  if (v63 == 1)
  {
    sub_10002533C(v62, &qword_100152F00, &qword_1001042C0);
    v66 = v120;
    v67 = v114;
  }

  else
  {
    v66 = v120;
    v68 = v105;
    (*(v120 + 32))(v105, v62, v4);
    URL.path(percentEncoded:)(0);
    v69 = String._bridgeToObjectiveC()();

    v70 = v116;
    v71 = [v116 fileExistsAtPath:v69];

    if (v71)
    {
      (*(v66 + 8))(v68, v4);
      v61 = v113;
      v67 = v114;
      v65 = v118;
      v64 = &stru_10014B000;
    }

    else
    {
      URL._bridgeToObjectiveC()(v72);
      v74 = v73;
      v123 = 0;
      v75 = [v70 createDirectoryAtURL:v73 withIntermediateDirectories:1 attributes:0 error:&v123];

      if (v75)
      {
        v76 = v123;
      }

      else
      {
        v77 = v123;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v61 = v113;
      v64 = &stru_10014B000;
      v66 = v120;
      (*(v120 + 8))(v68, v4);
      v67 = v114;
      v65 = v118;
    }
  }

  sub_100025834(v65, v61, &qword_100152F00, &qword_1001042C0);
  if (v122(v61, 1, v4) == 1)
  {
    sub_10002533C(v61, &qword_100152F00, &qword_1001042C0);
  }

  else
  {
    v78 = v107;
    (*(v66 + 32))(v107, v61, v4);
    URL.path(percentEncoded:)(0);
    v79 = String._bridgeToObjectiveC()();

    name = v64[41].name;
    v81 = v116;
    v82 = [v116 name];

    if (v82)
    {
      (*(v66 + 8))(v78, v4);
      v67 = v114;
      v59 = v115;
      v64 = &stru_10014B000;
    }

    else
    {
      URL._bridgeToObjectiveC()(v83);
      v85 = v84;
      v123 = 0;
      v86 = [v81 createDirectoryAtURL:v84 withIntermediateDirectories:1 attributes:0 error:&v123];

      if (v86)
      {
        v87 = v123;
      }

      else
      {
        v88 = v123;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      v64 = &stru_10014B000;
      v66 = v120;
      (*(v120 + 8))(v107, v4);
      v67 = v114;
      v59 = v115;
    }
  }

  sub_100025834(v59, v67, &qword_100152F00, &qword_1001042C0);
  if (v122(v67, 1, v4) == 1)
  {
    sub_10002533C(v67, &qword_100152F00, &qword_1001042C0);
    v89 = v116;
  }

  else
  {
    v90 = v106;
    (*(v66 + 32))(v106, v67, v4);
    URL.path(percentEncoded:)(0);
    v91 = String._bridgeToObjectiveC()();

    v92 = v64[41].name;
    v89 = v116;
    v93 = [v116 v92];

    if (v93)
    {
      (*(v66 + 8))(v90, v4);
    }

    else
    {
      URL._bridgeToObjectiveC()(v94);
      v96 = v95;
      v123 = 0;
      v97 = [v89 createDirectoryAtURL:v95 withIntermediateDirectories:1 attributes:0 error:&v123];

      if (v97)
      {
        v98 = v123;
      }

      else
      {
        v99 = v123;
        _convertNSErrorToError(_:)();

        swift_willThrow();
      }

      (*(v120 + 8))(v90, v4);
    }
  }

  v100 = type metadata accessor for TaskPriority();
  v101 = v111;
  (*(*(v100 - 8) + 56))(v111, 1, 1, v100);
  v102 = swift_allocObject();
  *(v102 + 16) = 0;
  *(v102 + 24) = 0;
  sub_10003CEA4(0, 0, v101, &unk_1001043E0, v102);

  v103 = [objc_opt_self() mainRunLoop];
  [v103 run];

  sub_10002533C(v59, &qword_100152F00, &qword_1001042C0);
  sub_10002533C(v119, &qword_100152F00, &qword_1001042C0);
  sub_10002533C(v65, &qword_100152F00, &qword_1001042C0);
  sub_10002533C(v117, &qword_100152F00, &qword_1001042C0);
  return sub_10002533C(v121, &qword_100152F00, &qword_1001042C0);
}

uint64_t sub_100042A18()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v0[21] = v1;
  v2 = *(v1 - 8);
  v0[22] = v2;
  v3 = *(v2 + 64) + 15;
  v0[23] = swift_task_alloc();
  v4 = type metadata accessor for DispatchQoS();
  v0[24] = v4;
  v5 = *(v4 - 8);
  v0[25] = v5;
  v6 = *(v5 + 64) + 15;
  v0[26] = swift_task_alloc();
  v7 = type metadata accessor for DispatchTimeInterval();
  v0[27] = v7;
  v8 = *(v7 - 8);
  v0[28] = v8;
  v9 = *(v8 + 64) + 15;
  v0[29] = swift_task_alloc();
  v10 = type metadata accessor for DispatchTime();
  v0[30] = v10;
  v11 = *(v10 - 8);
  v0[31] = v11;
  v12 = *(v11 + 64) + 15;
  v0[32] = swift_task_alloc();
  v0[33] = swift_task_alloc();
  v13 = type metadata accessor for DispatchQoS.QoSClass();
  v0[34] = v13;
  v14 = *(v13 - 8);
  v0[35] = v14;
  v15 = *(v14 + 64) + 15;
  v0[36] = swift_task_alloc();
  v16 = type metadata accessor for SWTransparencyDaemon(0);
  v17 = *(v16 + 48);
  v18 = *(v16 + 52);
  swift_allocObject();
  v19 = swift_task_alloc();
  v0[37] = v19;
  *v19 = v0;
  v19[1] = sub_100042C94;

  return sub_10003E3A0();
}

uint64_t sub_100042C94(uint64_t a1)
{
  v3 = *(*v2 + 296);
  v4 = *v2;
  v4[38] = a1;
  v4[39] = v1;

  if (v1)
  {
    v5 = v4[36];
    v7 = v4[32];
    v6 = v4[33];
    v8 = v4[29];
    v9 = v4[26];
    v10 = v4[23];

    v11 = v4[1];

    return v11();
  }

  else
  {

    return _swift_task_switch(sub_100042E20, 0, 0);
  }
}

uint64_t sub_100042E20()
{
  v2 = v0[35];
  v3 = v0[36];
  v39 = v0[39];
  v40 = v0[33];
  v29 = v0[34];
  v30 = v0[32];
  v42 = v0[31];
  v4 = v0[29];
  v41 = v0[30];
  v5 = v0[28];
  v31 = v0[27];
  v37 = v0[25];
  v38 = v0[24];
  v33 = v0[26];
  v34 = v0[23];
  v35 = v0[21];
  v36 = v0[22];
  qword_100157698 = v0[38];
  v1 = qword_100157698;

  v0[6] = sub_100045D3C;
  v0[7] = v1;
  v0[2] = _NSConcreteStackBlock;
  v0[3] = 1107296256;
  v0[4] = sub_10001C960;
  v0[5] = &unk_1001341D0;
  v6 = _Block_copy(v0 + 2);
  v7 = v0[7];

  xpc_activity_register("com.apple.swtransparencyd.milestone-refresh", XPC_ACTIVITY_CHECK_IN, v6);
  _Block_release(v6);
  v0[12] = sub_100045E4C;
  v0[13] = v1;
  v0[8] = _NSConcreteStackBlock;
  v0[9] = 1107296256;
  v0[10] = sub_10001C960;
  v0[11] = &unk_1001341F8;
  v8 = _Block_copy(v0 + 8);
  v9 = v0[13];

  xpc_activity_register("com.apple.swtransparencyd.24h", XPC_ACTIVITY_CHECK_IN, v8);
  _Block_release(v8);
  sub_100033178(0, &qword_1001525E0, OS_dispatch_queue_ptr);
  (*(v2 + 104))(v3, enum case for DispatchQoS.QoSClass.default(_:), v29);
  v28 = static OS_dispatch_queue.global(qos:)();
  (*(v2 + 8))(v3, v29);
  static DispatchTime.now()();
  *v4 = 5;
  (*(v5 + 104))(v4, enum case for DispatchTimeInterval.seconds(_:), v31);
  + infix(_:_:)();
  (*(v5 + 8))(v4, v31);
  v32 = *(v42 + 8);
  v32(v30, v41);
  v0[18] = sub_100045F5C;
  v0[19] = v1;
  v0[14] = _NSConcreteStackBlock;
  v0[15] = 1107296256;
  v0[16] = sub_1000467BC;
  v0[17] = &unk_100134220;
  v10 = _Block_copy(v0 + 14);

  static DispatchQoS.unspecified.getter();
  v0[20] = &_swiftEmptyArrayStorage;
  sub_10004617C(&qword_100153430, &type metadata accessor for DispatchWorkItemFlags);
  sub_100024248(&qword_100153438, &qword_100104620);
  sub_100045F80(&qword_100153440, &qword_100153438, &qword_100104620);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.asyncAfter(deadline:qos:flags:execute:)();
  _Block_release(v10);

  (*(v36 + 8))(v34, v35);
  (*(v37 + 8))(v33, v38);
  v32(v40, v41);
  v11 = v0[19];

  (*(*v1 + 216))(v12);
  v13 = v0[38];
  if (v39)
  {

    v14 = v0[36];
    v15 = v0[32];
    v16 = v0[33];
    v17 = v0[29];
    v18 = v0[26];
    v19 = v0[23];
  }

  else
  {
    v21 = v0[36];
    v23 = v0[32];
    v22 = v0[33];
    v24 = v0[29];
    v25 = v0[26];
    v26 = v0[23];
  }

  v20 = v0[1];

  return v20();
}

uint64_t sub_100043394(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

int main(int argc, const char **argv, const char **envp)
{
  sub_100045458();
  static ParsableCommand.main()();
  return 0;
}

char *sub_1000434A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100024248(&qword_1001534A0, &qword_1001046A0);
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
    v10 = &_swiftEmptyArrayStorage;
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

unint64_t sub_1000435B4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_10004362C(a1, a2, v6);
}

unint64_t sub_10004362C(uint64_t a1, uint64_t a2, uint64_t a3)
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