uint64_t sub_1000DCE1C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000E4D8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000DCE44(uint64_t a1)
{
  v2 = sub_1000E2AB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000DCE80(uint64_t a1)
{
  v2 = sub_1000E2AB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static DeprecatedNANAvailabilityEntry.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if ((a1 & 0xFFFFFF) == (a4 & 0xFFFFFF))
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t DeprecatedNANAvailabilityEntry.encode(to:)(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v18 = a4;
  v8 = sub_10005DC58(&qword_10058D088, &qword_1004842E0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000E2AB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = a2;
  v21 = 0;
  sub_1000E2B0C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v14 = a3;
    v15 = v18;
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = v14;
    v20 = v15;
    v21 = 3;
    sub_10000AB0C(v14, v15);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v19, v20);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t DeprecatedNANAvailabilityEntry.hash(into:)(int a1, unsigned int a2)
{
  v2 = a2 >> 8;
  v3 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);

  return Data.hash(into:)();
}

Swift::Int DeprecatedNANAvailabilityEntry.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000DD228()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DD2B4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);

  return Data.hash(into:)();
}

Swift::Int sub_1000DD328()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000DD3B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000E15D8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_1000DD418(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && a1[2] == a2[2])
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1000DD454()
{
  result = qword_10058CFE0;
  if (!qword_10058CFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CFE0);
  }

  return result;
}

void *sub_1000DD4A8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(a3, a4);
  v6 = swift_allocObject();
  v7 = j__malloc_size(v6);
  result = v6;
  v6[2] = a1;
  v6[3] = 2 * v7 - 64;
  return result;
}

void *sub_1000DD564(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_1000DD660(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_10058CD00, &qword_100483018);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *sub_1000DD6E4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  sub_10005DC58(&qword_10058CCF8, &qword_100483010);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 1;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 5);
  return result;
}

uint64_t sub_1000DD768(uint64_t result)
{
  v1 = result;
  v2 = 0;
  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  v5 = &_swiftEmptyArrayStorage[4];
  do
  {
    if (v2 < -8)
    {
LABEL_3:
      LOBYTE(v6) = 0;
      goto LABEL_4;
    }

    while ((v2 & 0x8000000000000000) == 0)
    {
      if (v2 == 8)
      {
        goto LABEL_3;
      }

      v6 = 1 << v2;
      if (((1 << v2) & v1) != 0)
      {
        goto LABEL_4;
      }

LABEL_24:
      ++v2;
    }

    if (v2 == -8)
    {
      goto LABEL_3;
    }

    if ((~v1 << (-v2 & 7)))
    {
      goto LABEL_24;
    }

    v6 = 1u >> -v2;
LABEL_4:
    if (!v3)
    {
      v7 = v4[3];
      if (((v7 >> 1) + 0x4000000000000000) >= 0)
      {
        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        sub_10005DC58(&qword_10058CD18, &qword_100483030);
        v10 = swift_allocObject();
        v11 = 2 * j__malloc_size(v10) - 64;
        v10[2] = v9;
        v10[3] = v11;
        v12 = (v10 + 4);
        v13 = v4[3] >> 1;
        if (v4[2])
        {
          if (v10 != v4 || v12 >= v4 + v13 + 32)
          {
            memmove(v10 + 4, v4 + 4, v13);
          }

          v4[2] = 0;
        }

        v5 = (v12 + v13);
        v3 = (v11 >> 1) - v13;

        v4 = v10;
        goto LABEL_18;
      }

LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      return result;
    }

LABEL_18:
    v15 = __OFSUB__(v3--, 1);
    if (v15)
    {
      __break(1u);
      goto LABEL_33;
    }

    *v5++ = v6;
  }

  while (v2++ < 7);
  v17 = v4[3];
  if (v17 >= 2)
  {
    v18 = v17 >> 1;
    v15 = __OFSUB__(v18, v3);
    v19 = v18 - v3;
    if (v15)
    {
      goto LABEL_34;
    }

    v4[2] = v19;
  }

  return v4;
}

unint64_t *sub_1000DD900(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_7;
  }

  if (!a3)
  {
LABEL_7:
    v6 = a4;
    goto LABEL_8;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    if (a4 == a5)
    {
      a3 = 0;
      v6 = a5;
LABEL_8:
      *result = a4;
      result[1] = a5;
      result[2] = a6;
      result[3] = v6;
      return a3;
    }

    v7 = 0;
    v8 = a4;
    while (1)
    {
      v9 = a6;
      v6 = v8 + 16;
      if (v8 >= 0xFFFFFFFFFFFFFFF0)
      {
        break;
      }

      *(a2 + v7) = (*(&v9 + (v8 >> 7)) >> (((a4 >> 4) + v7) & 7)) & 1;
      if (a3 - 1 == v7)
      {
        goto LABEL_8;
      }

      ++v7;
      v8 += 16;
      if (v6 == a5)
      {
        v6 = a5;
        a3 = v7;
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000DDA28(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  v39 = a6;
  v40 = a7;
  v38 = *(a5(0) - 8);
  v11 = *(v38 + 64);
  __chkstk_darwin();
  v37 = &v33 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin();
  v15 = &v33 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v35 = a1;
    v36 = a3;
    result = 0;
    v20 = 0;
    v34 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = v37;
      v28 = *(v38 + 72);
      sub_1000E500C(v26 + v28 * (v25 | (v20 << 6)), v37, v39);
      v29 = v27;
      v30 = v40;
      sub_1000E5074(v29, v15, v40);
      sub_1000E5074(v15, a2, v30);
      if (v22 == v36)
      {
        a4 = a1;
        a1 = v35;
        a3 = v36;
        goto LABEL_23;
      }

      a2 += v28;
      result = v22;
      v31 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v31)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v32 = v20 + 1;
    }

    else
    {
      v32 = v21;
    }

    v20 = v32 - 1;
    a3 = result;
    a1 = v35;
LABEL_23:
    v17 = v34;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_1000DDC6C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7)) | (v9 << 6);
      v15 = *(a4 + 48) + 8 * v14;
      v16 = *v15;
      LOWORD(v15) = *(v15 + 4);
      LOBYTE(v14) = *(*(a4 + 56) + v14);
      v7 &= v7 - 1;
      *a2 = v16;
      *(a2 + 4) = v15;
      *(a2 + 6) = v14;
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 8;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v18 = v9 + 1;
    }

    else
    {
      v18 = (63 - v6) >> 6;
    }

    v9 = v18 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

void *sub_1000DDD7C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4 + 64;
  v5 = -1;
  v6 = -1 << *(a4 + 32);
  if (-v6 < 64)
  {
    v5 = ~(-1 << -v6);
  }

  v7 = v5 & *(a4 + 64);
  if (!a2)
  {
LABEL_17:
    v9 = 0;
    a3 = 0;
LABEL_23:
    *result = a4;
    result[1] = v4;
    result[2] = ~v6;
    result[3] = v9;
    result[4] = v7;
    return a3;
  }

  if (!a3)
  {
    v9 = 0;
    goto LABEL_23;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v8 = 0;
    v9 = 0;
    v10 = (63 - v6) >> 6;
    v11 = 1;
    while (v7)
    {
LABEL_13:
      v14 = __clz(__rbit64(v7));
      v7 &= v7 - 1;
      v15 = v14 | (v9 << 6);
      v16 = *(a4 + 48) + 8 * v15;
      v17 = *v16;
      LOWORD(v16) = *(v16 + 4);
      v18 = *(a4 + 56) + 24 * v15;
      *&v21[2] = *v18;
      *&v21[18] = *(v18 + 16);
      *a2 = v17;
      *(a2 + 4) = v16;
      *(a2 + 6) = *v21;
      *(a2 + 16) = *&v21[10];
      if (v11 == a3)
      {
        goto LABEL_23;
      }

      a2 += 32;
      v8 = v11;
      if (__OFADD__(v11++, 1))
      {
        __break(1u);
        goto LABEL_17;
      }
    }

    v12 = v9;
    while (1)
    {
      v13 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        __break(1u);
        goto LABEL_25;
      }

      if (v13 >= v10)
      {
        break;
      }

      v7 = *(v4 + 8 * v13);
      ++v12;
      if (v7)
      {
        v9 = v13;
        goto LABEL_13;
      }
    }

    v7 = 0;
    if (v10 <= (v9 + 1))
    {
      v20 = v9 + 1;
    }

    else
    {
      v20 = (63 - v6) >> 6;
    }

    v9 = v20 - 1;
    a3 = v8;
    goto LABEL_23;
  }

LABEL_25:
  __break(1u);
  return result;
}

Swift::Int sub_1000DDEB8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10016AD90(v2);
  }

  v3 = *(v2 + 2);
  v4 = v2 + 32;
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v4;
        v12 = v9;
        do
        {
          v13 = *(v11 + 2);
          if (v13 >= *v11)
          {
            break;
          }

          v14 = *(v11 + 6);
          v15 = v11[14];
          *(v11 + 1) = *v11;
          *v11 = v13;
          *(v11 + 2) = v14;
          v11[6] = v15;
          v11 -= 8;
        }

        while (!__CFADD__(v12++, 1));
        --v9;
        v4 += 8;
      }
    }
  }

  else
  {
    v6 = result;
    v7 = v3 >> 1;
    if (v3 >= 2)
    {
      sub_10005DC58(&qword_10058D3A8, &unk_1004869A0);
      v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v8[2] = v7;
    }

    else
    {
      v8 = _swiftEmptyArrayStorage;
    }

    v17[0] = v8 + 4;
    v17[1] = v7;
    sub_1000DE170(v17, v18, v19, v6);
    v8[2] = 0;
  }

  *a1 = v2;
  return result;
}

Swift::Int sub_1000DE014(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_10016ADA4(v2);
  }

  v3 = *(v2 + 2);
  v21[0] = (v2 + 32);
  v21[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 64;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = v12 - 32;
          if (*v12 >= *(v12 - 8))
          {
            break;
          }

          v14 = *(v12 + 1);
          v19 = *v12;
          v20 = v14;
          v15 = *(v12 - 1);
          *v12 = *v13;
          *(v12 + 1) = v15;
          v12 -= 32;
          v16 = v20;
          *v13 = v19;
          *(v13 + 1) = v16;
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
      sub_10005DC58(&qword_10058D3A0, &unk_100486990);
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    *&v19 = v7 + 4;
    *(&v19 + 1) = v6;
    sub_1000DE728(&v19, v18, v21, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

uint64_t sub_1000DE170(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v91 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_91:
    v5 = *v91;
    if (!*v91)
    {
      goto LABEL_131;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_125:
      result = sub_10016AD7C(v8);
      v8 = result;
    }

    v83 = v8 + 2;
    v84 = v8[2];
    if (v84 >= 2)
    {
      while (*a3)
      {
        v85 = &v8[2 * v84];
        v86 = *v85;
        v87 = &v83[2 * v84];
        v88 = v87[1];
        sub_1000DECA4((*a3 + 8 * *v85), (*a3 + 8 * *v87), (*a3 + 8 * v88), v5);
        if (v4)
        {
        }

        if (v88 < v86)
        {
          goto LABEL_117;
        }

        if (v84 - 2 >= *v83)
        {
          goto LABEL_118;
        }

        *v85 = v86;
        v85[1] = v88;
        v89 = *v83 - v84;
        if (*v83 < v84)
        {
          goto LABEL_119;
        }

        v84 = *v83 - 1;
        result = memmove(v87, v87 + 2, 16 * v89);
        *v83 = v84;
        if (v84 <= 1)
        {
        }
      }

      goto LABEL_129;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v90 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = 8 * v9;
      v12 = (*a3 + 8 * v9);
      v15 = *v12;
      v14 = v12 + 4;
      v13 = v15;
      v16 = v9 + 2;
      while (v6 != v16)
      {
        v17 = *v14 >= *(v14 - 2);
        ++v16;
        v14 += 2;
        if ((((v10 < v13) ^ v17) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_23;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_23;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_122;
      }

      if (v9 < v7)
      {
        v18 = 8 * v7 - 8;
        v19 = v7;
        v20 = v9;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v23 = (v22 + v11);
            v24 = *(v22 + v11);
            v25 = *(v22 + v11 + 4);
            v26 = *(v22 + v11 + 5);
            v27 = *(v22 + v11 + 6);
            if (v11 != v18 || v23 >= v22 + v18 + 8)
            {
              *v23 = *(v22 + v18);
            }

            v21 = v22 + v18;
            *v21 = v24;
            *(v21 + 4) = v25;
            *(v21 + 5) = v26;
            *(v21 + 6) = v27;
          }

          ++v20;
          v18 -= 8;
          v11 += 8;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_23:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_121;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_123;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_40:
    if (v7 < v9)
    {
      goto LABEL_120;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v37 = v8[3];
    v38 = v5 + 1;
    if (v5 >= v37 >> 1)
    {
      result = sub_10011707C((v37 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v38;
    v39 = v8 + 4;
    v40 = &v8[2 * v5 + 4];
    *v40 = v9;
    v40[1] = v7;
    v92 = *v91;
    if (!*v91)
    {
      goto LABEL_130;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v38 - 1;
        if (v38 >= 4)
        {
          break;
        }

        if (v38 == 3)
        {
          v41 = v8[4];
          v42 = v8[5];
          v51 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          v44 = v51;
LABEL_60:
          if (v44)
          {
            goto LABEL_107;
          }

          v57 = &v8[2 * v38];
          v59 = *v57;
          v58 = v57[1];
          v60 = __OFSUB__(v58, v59);
          v61 = v58 - v59;
          v62 = v60;
          if (v60)
          {
            goto LABEL_109;
          }

          v63 = &v39[2 * v5];
          v65 = *v63;
          v64 = v63[1];
          v51 = __OFSUB__(v64, v65);
          v66 = v64 - v65;
          if (v51)
          {
            goto LABEL_112;
          }

          if (__OFADD__(v61, v66))
          {
            goto LABEL_114;
          }

          if (v61 + v66 >= v43)
          {
            if (v43 < v66)
            {
              v5 = v38 - 2;
            }

            goto LABEL_82;
          }

          goto LABEL_75;
        }

        if (v38 < 2)
        {
          goto LABEL_115;
        }

        v67 = &v8[2 * v38];
        v69 = *v67;
        v68 = v67[1];
        v51 = __OFSUB__(v68, v69);
        v61 = v68 - v69;
        v62 = v51;
LABEL_75:
        if (v62)
        {
          goto LABEL_111;
        }

        v70 = &v39[2 * v5];
        v72 = *v70;
        v71 = v70[1];
        v51 = __OFSUB__(v71, v72);
        v73 = v71 - v72;
        if (v51)
        {
          goto LABEL_113;
        }

        if (v73 < v61)
        {
          goto LABEL_3;
        }

LABEL_82:
        if (v5 - 1 >= v38)
        {
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
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v78 = &v39[2 * v5 - 2];
        v79 = *v78;
        v80 = &v39[2 * v5];
        v81 = v80[1];
        sub_1000DECA4((*a3 + 8 * *v78), (*a3 + 8 * *v80), (*a3 + 8 * v81), v92);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_102;
        }

        if (v5 > v8[2])
        {
          goto LABEL_103;
        }

        *v78 = v79;
        v78[1] = v81;
        v82 = v8[2];
        if (v5 >= v82)
        {
          goto LABEL_104;
        }

        v38 = v82 - 1;
        result = memmove(&v39[2 * v5], v80 + 2, 16 * (v82 - 1 - v5));
        v8[2] = v82 - 1;
        if (v82 <= 2)
        {
          goto LABEL_3;
        }
      }

      v45 = &v39[2 * v38];
      v46 = *(v45 - 8);
      v47 = *(v45 - 7);
      v51 = __OFSUB__(v47, v46);
      v48 = v47 - v46;
      if (v51)
      {
        goto LABEL_105;
      }

      v50 = *(v45 - 6);
      v49 = *(v45 - 5);
      v51 = __OFSUB__(v49, v50);
      v43 = v49 - v50;
      v44 = v51;
      if (v51)
      {
        goto LABEL_106;
      }

      v52 = &v8[2 * v38];
      v54 = *v52;
      v53 = v52[1];
      v51 = __OFSUB__(v53, v54);
      v55 = v53 - v54;
      if (v51)
      {
        goto LABEL_108;
      }

      v51 = __OFADD__(v43, v55);
      v56 = v43 + v55;
      if (v51)
      {
        goto LABEL_110;
      }

      if (v56 >= v48)
      {
        v74 = &v39[2 * v5];
        v76 = *v74;
        v75 = v74[1];
        v51 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v51)
        {
          goto LABEL_116;
        }

        if (v43 < v77)
        {
          v5 = v38 - 2;
        }

        goto LABEL_82;
      }

      goto LABEL_60;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v90;
    if (v7 >= v6)
    {
      goto LABEL_91;
    }
  }

  v28 = *a3;
  v29 = v9 - v7;
  v30 = *a3 + 8 * v7;
LABEL_33:
  v31 = v30;
  v32 = v29;
  while (1)
  {
    v33 = *v31;
    if (*v31 >= *(v31 - 8))
    {
LABEL_32:
      ++v7;
      --v29;
      v30 += 8;
      if (v7 != v6)
      {
        goto LABEL_33;
      }

      v7 = v6;
      goto LABEL_40;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v31 + 4);
    v35 = *(v31 + 6);
    *v31 = *(v31 - 8);
    *(v31 - 8) = v33;
    *(v31 - 4) = v34;
    *(v31 - 2) = v35;
    v31 -= 8;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
LABEL_129:
  __break(1u);
LABEL_130:
  __break(1u);
LABEL_131:
  __break(1u);
  return result;
}

uint64_t sub_1000DE728(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v93 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v93;
    if (!*v93)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_10016AD7C(v8);
      v8 = result;
    }

    v85 = v8 + 2;
    v86 = v8[2];
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[2 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1000DEEA0((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        v87[1] = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v15 = *v12;
      v14 = v12 + 16;
      v13 = v15;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v14;
        v14 += 8;
        v19 = (v10 < v13) ^ (v18 >= v17);
        ++v16;
        v17 = v18;
        if ((v19 & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 32 * v7 - 32;
        v21 = v7;
        v22 = v9;
        do
        {
          if (v22 != --v21)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v28 + v11);
            v24 = (v28 + v20);
            v26 = *v23;
            v25 = v23[1];
            v27 = v24[1];
            *v23 = *v24;
            v23[1] = v27;
            *v24 = v26;
            v24[1] = v25;
          }

          ++v22;
          v20 -= 32;
          v11 += 32;
        }

        while (v22 < v21);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_10011707C(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v39 = v8[3];
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      result = sub_10011707C((v39 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v40;
    v41 = v8 + 4;
    v42 = &v8[2 * v5 + 4];
    *v42 = v9;
    v42[1] = v7;
    v94 = *v93;
    if (!*v93)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = v8[4];
          v44 = v8[5];
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v8[2 * v40];
          v61 = *v59;
          v60 = v59[1];
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v41[2 * v5];
          v67 = *v65;
          v66 = v65[1];
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v8[2 * v40];
        v71 = *v69;
        v70 = v69[1];
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v41[2 * v5];
        v74 = *v72;
        v73 = v72[1];
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
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
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v41[2 * v5 - 2];
        v81 = *v80;
        v82 = &v41[2 * v5];
        v83 = v82[1];
        sub_1000DEEA0((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v80 = v81;
        v80[1] = v83;
        v84 = v8[2];
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        result = memmove(&v41[2 * v5], v82 + 2, 16 * (v84 - 1 - v5));
        v8[2] = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v41[2 * v40];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v8[2 * v40];
      v56 = *v54;
      v55 = v54[1];
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v41[2 * v5];
        v78 = *v76;
        v77 = v76[1];
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7;
  v31 = v9 - v7;
LABEL_30:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = (v33 - 32);
    if (*v33 >= *(v33 - 32))
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v36 = *v33;
    v35 = *(v33 + 16);
    v37 = *(v33 - 16);
    *v33 = *v34;
    *(v33 + 16) = v37;
    v33 -= 32;
    *v34 = v36;
    v34[1] = v35;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
  return result;
}

uint64_t sub_1000DECA4(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v13)
  {
    v14 = 8 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14);
    }

    v15 = &v4[v14];
    if (v8 < 8)
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

      v16 = v4;
      v17 = v7 == v4;
      v4 += 8;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 8;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v16;
    goto LABEL_13;
  }

  v18 = 8 * v13;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v15 = &v4[v18];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v19 = v6 - 8;
    v5 -= 8;
    v20 = v15;
    do
    {
      v21 = v5 + 8;
      v22 = *(v20 - 2);
      v20 -= 8;
      if (v22 < *v19)
      {
        if (v21 != v6)
        {
          *v5 = *v19;
        }

        if (v15 <= v4 || (v6 -= 8, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v21 != v15)
      {
        *v5 = *v20;
      }

      v5 -= 8;
      v15 = v20;
    }

    while (v20 > v4);
    v15 = v20;
  }

LABEL_35:
  v23 = (v15 - v4 + (v15 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8;
  if (v6 != v4 || v6 >= &v4[v23])
  {
    memmove(v6, v4, v23);
  }

  return 1;
}

uint64_t sub_1000DEEA0(char *__dst, char *__src, char *a3, char *a4)
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
      v21 = *(v19 - 8);
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

void NANAttribute.PublicAvailability.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 56);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v4 - 8);
      Hasher._combine(_:)(*(v4 - 24));
      Hasher._combine(_:)(v7);
      sub_10000AB0C(v5, v6);
      Data.hash(into:)();
      sub_1000124C8(v5, v6);
      v4 += 4;
      --v3;
    }

    while (v3);
  }
}

void sub_1000DF138(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 93);
    do
    {
      v5 = *(v4 - 60);
      v6 = *(v4 - 57);
      v7 = *(v4 - 53);
      v8 = *(v4 - 44);
      v16 = *(v4 - 37);
      v17 = *(v4 - 28);
      v23 = *(v4 - 12);
      v25 = *(v4 - 9);
      v26 = *(v4 - 5);
      v9 = *(v4 - 61);
      v10 = *(v4 - 49);
      v11 = *(v4 - 45);
      v12 = *(v4 - 33);
      v14 = *(v4 - 41);
      v15 = *(v4 - 29);
      v18 = *(v4 - 17);
      v19 = *(v4 - 25);
      v20 = *(v4 - 16);
      v21 = *(v4 - 21);
      v22 = *(v4 - 13);
      v24 = *(v4 - 1);
      v13 = *v4;
      v4 += 64;
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v16);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v17);
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v13);
      --v3;
    }

    while (v3);
  }
}

void sub_1000DF2D0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 6);
      v6 = *(v4 + 8);
      v12 = *(v4 + 10);
      v13 = *(v4 + 12);
      v7 = *(v4 + 1);
      v8 = *(v4 + 2);
      v9 = *(v4 + 3);
      v10 = *(v4 + 4);
      v11 = *(v4 + 5);
      Hasher._combine(_:)(*v4);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      if ((v5 & 0xFF00) == 0x2200)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(word_1004869EA[v5]);
        Hasher._combine(_:)(word_100486A58[v5 >> 8]);
      }

      if ((v6 & 0xFF00) == 0x2200)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(word_1004869EA[v6]);
        Hasher._combine(_:)(word_100486A58[v6 >> 8]);
      }

      if ((v12 & 0xFF00) == 0x2200)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(word_1004869EA[v12]);
        Hasher._combine(_:)(word_100486A58[v12 >> 8]);
      }

      if ((v13 & 0xFF00) == 0x2200)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(word_1004869EA[v13]);
        Hasher._combine(_:)(word_100486A58[v13 >> 8]);
      }

      v4 += 14;
      --v3;
    }

    while (v3);
  }
}

void sub_1000DF4A4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 == 0.0)
      {
        v6 = 0.0;
      }

      Hasher._combine(_:)(*&v6);
      --v3;
    }

    while (v3);
  }
}

void sub_1000DF50C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      v7 = *(v4 - 3);
      v8 = *(v4 - 4);
      Hasher._combine(_:)(*(v4 - 8));
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      if (v6 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v5);
      }

      v4 += 10;
      --v3;
    }

    while (v3);
  }
}

void InfraScanStartEvent.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 37);
    do
    {
      v6 = *(v4 - 1);
      v7 = *v4;
      Hasher._combine(_:)(*(v4 - 5));
      Hasher._combine(_:)(0x801004u >> (8 * v6));
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v5 = 0;
        }

        else
        {
          if (v7 != 3)
          {
LABEL_16:
            Hasher._combine(_:)(2uLL);
            Hasher._combine(_:)(v7 & 1);
            goto LABEL_5;
          }

          v5 = 1;
        }
      }

      else
      {
        switch(v7)
        {
          case 4:
            v5 = 3;
            break;
          case 5:
            v5 = 4;
            break;
          case 6:
            v5 = 5;
            break;
          default:
            goto LABEL_16;
        }
      }

      Hasher._combine(_:)(v5);
LABEL_5:
      v4 += 8;
      --v3;
    }

    while (v3);
  }
}

void ChannelSequence.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    for (i = (a2 + 32); ; i += 2)
    {
      v6 = *i | (*(i + 2) << 32);
      if ((v6 & 0xFF00000000) == 0x300000000)
      {
        break;
      }

      v8 = v6 >> 40;
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(0x801004u >> ((v6 >> 29) & 0xF8));
      if ((v6 >> 40) <= 3)
      {
        if (v8 == 2)
        {
          v5 = 0;
        }

        else
        {
          if (v8 != 3)
          {
LABEL_19:
            Hasher._combine(_:)(2uLL);
            v7 = BYTE5(v6) & 1;
            goto LABEL_8;
          }

          v5 = 1;
        }
      }

      else
      {
        switch(v8)
        {
          case 4:
            v5 = 3;
            break;
          case 5:
            v5 = 4;
            break;
          case 6:
            v5 = 5;
            break;
          default:
            goto LABEL_19;
        }
      }

      Hasher._combine(_:)(v5);
LABEL_5:
      if (!--v3)
      {
        return;
      }
    }

    v7 = 0;
LABEL_8:
    Hasher._combine(_:)(v7);
    goto LABEL_5;
  }
}

void sub_1000DF7BC(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 38);
    do
    {
      v6 = *(v4 - 2);
      v7 = *(v4 - 1);
      v8 = *v4;
      Hasher._combine(_:)(*(v4 - 6));
      Hasher._combine(_:)(0x801004u >> (8 * v6));
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v5 = 0;
        }

        else
        {
          if (v7 != 3)
          {
LABEL_16:
            Hasher._combine(_:)(2uLL);
            Hasher._combine(_:)(v7 & 1);
            goto LABEL_5;
          }

          v5 = 1;
        }
      }

      else
      {
        switch(v7)
        {
          case 4:
            v5 = 3;
            break;
          case 5:
            v5 = 4;
            break;
          case 6:
            v5 = 5;
            break;
          default:
            goto LABEL_16;
        }
      }

      Hasher._combine(_:)(v5);
LABEL_5:
      v4 += 8;
      Hasher._combine(_:)(v8);
      --v3;
    }

    while (v3);
  }
}

void _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(__int128 *a1, uint64_t a2)
{
  v63 = *(type metadata accessor for NANAttribute(0) - 8);
  v4 = *(v63 + 64);
  __chkstk_darwin();
  v6 = &v62 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  Hasher._combine(_:)(v7);
  v72 = v7;
  if (v7)
  {
    v8 = 0;
    v71 = a2 + 32;
    v70 = xmmword_100484210;
    v69 = xmmword_100484220;
    v68 = xmmword_100484230;
    v67 = xmmword_100484240;
    v64 = xmmword_100480F30;
    while (1)
    {
      v10 = (v71 + (v8 << 6));
      v11 = v10[1];
      v83 = *v10;
      v84 = v11;
      *v85 = v10[2];
      *&v85[9] = *(v10 + 41);
      v12 = v83;
      v13 = vdupq_n_s64(v83);
      v14 = vshlq_u64(v13, v70);
      v15 = v14.i8[8];
      v16 = vshlq_u64(v13, v69);
      v17 = *(&v84 + 1);
      v18 = *v85;
      v19 = v85[2];
      if (v85[24] > 5u)
      {
        break;
      }

      if (v85[24] > 2u)
      {
        if (v85[24] == 3)
        {
          Hasher._combine(_:)(3uLL);
          Hasher._combine(_:)(v12);
          v35 = *(&v84 + 1);
          v36 = *v85;
          sub_10000AB0C(*(&v83 + 1), v84);
          sub_10000AB0C(v35, v36);
          Data.hash(into:)();
          goto LABEL_5;
        }

        if (v85[24] == 4)
        {
          v27 = *(&v83 + 1) >> 16;
          v28 = WORD3(v83);
          v29 = (v14.u8[8] << 16) | (v16.i32[2] << 24) | v83;
          v30 = v14.u8[0] | (v16.i16[0] << 8);
          v31 = WORD4(v83);
          Hasher._combine(_:)(4uLL);
          Hasher._combine(_:)(v29);
          Hasher._combine(_:)(v30);
          Hasher._combine(_:)(v28);
          Hasher._combine(_:)(v31);
          Hasher._combine(_:)(v27);
          goto LABEL_7;
        }

        v9 = 6;
        goto LABEL_4;
      }

      if (!v85[24])
      {
        v75 = v83;
        v76 = v14.i8[8];
        v77 = *(&v83 + 1);
        v78 = v84;
        v79 = WORD4(v84);
        v80 = *v85 | (v85[2] << 16) | ((*&v85[3] | (v85[7] << 32)) << 24);
        v81 = v85[8];
        Hasher._combine(_:)(0);

        IEEE80211InformationElement.RSNCapability.hash(into:)();
        goto LABEL_6;
      }

      if (v85[24] == 1)
      {
        v20.i64[0] = 255;
        v20.i64[1] = 255;
        v21 = vandq_s8(v14, v20);
        v20.i64[0] = 65280;
        v20.i64[1] = 65280;
        v22 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(vshlq_n_s64(v16, 8uLL), v20), v21), v67), vandq_s8(v13, v68));
        v23 = vorrq_s8(v22, vdupq_laneq_s64(v22, 1)).u64[0];
        Hasher._combine(_:)(1uLL);
        Hasher._combine(_:)(*(v23 + 16));
        v24 = *(v23 + 16);
        if (v24)
        {
          v25 = (v23 + 32);
          do
          {
            v26 = *v25++;
            Hasher._combine(_:)(v26);
            --v24;
          }

          while (v24);
        }

        goto LABEL_7;
      }

      v49 = v14.i8[0];
      v50 = v14.u8[8] | (v16.i16[4] << 8);
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(v50);
      Hasher._combine(_:)(v49);
      sub_10000AB0C(*(&v83 + 1), v84);
LABEL_5:
      Data.hash(into:)();
LABEL_6:
      sub_1000C2E24(&v83);
LABEL_7:
      if (++v8 == v72)
      {
        return;
      }
    }

    if (v85[24] > 8u)
    {
      if (v85[24] == 9)
      {
        v66 = v84;
        Hasher._combine(_:)(0xAuLL);
        sub_10005DC58(&qword_10058B3C0, &qword_100481920);
        v37 = swift_allocObject();
        *(v37 + 16) = v64;
        *(v37 + 32) = v12;
        *(v37 + 34) = v15;
        v38 = sub_10005DC58(&qword_10058D358, &unk_100486960);
        v82[3] = v38;
        v82[4] = sub_10000CADC(&qword_10059B0E0, &qword_10058D358, &unk_100486960);
        v82[0] = v37;
        v39 = sub_100029B34(v82, v38);
        v40 = *v39;
        v41 = *(*v39 + 16);
        if (v41)
        {
          if (v41 <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v74 = v41;
            memcpy(__dst, (v40 + 32), v41);
            v47 = *__dst;
            v48 = v62 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v74 << 16)) << 32);
            sub_10000AB0C(*(&v83 + 1), v84);
            v62 = v48;
          }

          else
          {
            v42 = type metadata accessor for __DataStorage();
            v43 = *(v42 + 48);
            v44 = *(v42 + 52);
            swift_allocObject();
            sub_10000AB0C(*(&v83 + 1), v84);
            v45 = __DataStorage.init(bytes:length:)();
            v46 = v45;
            if (v41 >= 0x7FFFFFFF)
            {
              type metadata accessor for Data.RangeReference();
              v47 = swift_allocObject();
              *(v47 + 16) = 0;
              *(v47 + 24) = v41;
              v48 = v46 | 0x8000000000000000;
            }

            else
            {
              v47 = v41 << 32;
              v48 = v45 | 0x4000000000000000;
            }
          }
        }

        else
        {
          sub_10000AB0C(*(&v83 + 1), v84);
          v47 = 0;
          v48 = 0xC000000000000000;
        }

        sub_100002A00(v82);
        Data.hash(into:)();
        sub_1000124C8(v47, v48);
        goto LABEL_5;
      }

      if (v85[24] != 10)
      {
        Hasher._combine(_:)(5uLL);
        goto LABEL_7;
      }

      v9 = 11;
    }

    else
    {
      if (v85[24] == 6)
      {
        v66 = v84;
        v32 = WORD4(v83);
        v65 = *&v85[16];
        Hasher._combine(_:)(7uLL);
        Hasher._combine(_:)(v12);
        if (v17 >> 60 == 15)
        {
          Hasher._combine(_:)(0);
          v33 = *&v85[8];
          v34 = *&v85[16];
          sub_10005D4F4(*(&v83 + 1), v84, *(&v84 + 1));
          sub_10005D67C(v33, v34);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v32);
          v59 = *&v85[8];
          v60 = *&v85[16];
          sub_10005D4F4(*(&v83 + 1), v84, *(&v84 + 1));
          sub_10005D67C(v59, v60);
          Data.hash(into:)();
        }

        if (v18 == 2)
        {
          Hasher._combine(_:)(0);
          if ((v19 & 1) == 0)
          {
            goto LABEL_43;
          }

LABEL_45:
          LOBYTE(v61) = 0;
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)((v18 & 1) + 19);
          if (v19)
          {
            goto LABEL_45;
          }

LABEL_43:
          v61 = v18 >> 8;
          Hasher._combine(_:)(1u);
        }

        Hasher._combine(_:)(v61);
        if (v65 >> 60 == 15)
        {
          Hasher._combine(_:)(0);
          goto LABEL_6;
        }

        Hasher._combine(_:)(1u);
        goto LABEL_5;
      }

      if (v85[24] != 7)
      {
        v51.i64[0] = 255;
        v51.i64[1] = 255;
        v52 = vandq_s8(v14, v51);
        v51.i64[0] = 65280;
        v51.i64[1] = 65280;
        v53 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(vshlq_n_s64(v16, 8uLL), v51), v52), v67), vandq_s8(v13, v68));
        v54 = vorrq_s8(v53, vdupq_laneq_s64(v53, 1)).u64[0];
        Hasher._combine(_:)(9uLL);
        Hasher._combine(_:)(*(v54 + 16));
        v55 = *(v54 + 16);
        if (!v55)
        {
          goto LABEL_7;
        }

        v56 = v63;
        v57 = v54 + ((*(v63 + 80) + 32) & ~*(v63 + 80));

        v58 = *(v56 + 72);
        do
        {
          sub_1000E500C(v57, v6, type metadata accessor for NANAttribute);
          NANAttribute.hash(into:)(a1);
          sub_1000E4FB0(v6);
          v57 += v58;
          --v55;
        }

        while (v55);
        goto LABEL_6;
      }

      v9 = 8;
    }

LABEL_4:
    Hasher._combine(_:)(v9);
    sub_10000AB0C(v83, *(&v83 + 1));
    goto LABEL_5;
  }
}

void NANAttribute.SecurityContextInformation.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      v7 = *(v4 + 1);
      Hasher._combine(_:)(*v4);
      Hasher._combine(_:)(v7);
      sub_10000AB0C(v5, v6);
      Data.hash(into:)();
      sub_1000124C8(v5, v6);
      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

void NANAttribute.FineTimingMeasurementRangeReport.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 45);
    do
    {
      v5 = *(v4 - 13);
      v6 = *(v4 - 9);
      v7 = *(v4 - 8);
      v8 = *(v4 - 7);
      v9 = *(v4 - 6);
      v10 = *(v4 - 5);
      v11 = *(v4 - 4);
      v12 = *(v4 - 3);
      v14 = *(v4 - 2);
      v15 = *(v4 - 1);
      v13 = *v4;
      v4 += 16;
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(v13);
      --v3;
    }

    while (v3);
  }
}

void sub_1000E0374(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  v21 = v3;
  if (v3)
  {
    v4 = 0;
    v20 = a2 + 32;
    do
    {
      v5 = v20 + 56 * v4;
      v6 = *(v5 + 8);
      v7 = *(v5 + 16);
      v8 = *(v5 + 24);
      v9 = *(v5 + 32);
      v10 = *(v5 + 40);
      v11 = *(v5 + 48);
      Hasher._combine(_:)(*v5);
      v23 = v6;
      if (v8 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
        sub_10005D4F4(v6, v7, v8);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v6);
        sub_10005D4F4(v6, v7, v8);

        Data.hash(into:)();
      }

      v22 = v7;
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(*(v10 + 16));
      v12 = *(v10 + 16);
      if (v11)
      {
        if (v12)
        {
          v13 = (v10 + 40);
          do
          {
            v14 = *(v13 - 1);
            v15 = *v13;
            v16 = *(v13 - 3);
            v17 = *(v13 - 4);
            Hasher._combine(_:)(*(v13 - 8));
            Hasher._combine(_:)(v16);
            Hasher._combine(_:)(v17);
            if (v15 == 1)
            {
              Hasher._combine(_:)(0);
            }

            else
            {
              Hasher._combine(_:)(1u);
              Hasher._combine(_:)(v14);
            }

            v13 += 10;
            --v12;
          }

          while (v12);
        }
      }

      else if (v12)
      {
        v18 = (v10 + 32);
        do
        {
          v19 = *v18++;
          Hasher._combine(_:)(v19);
          --v12;
        }

        while (v12);
      }

      sub_10002F75C(v23, v22, v8);

      ++v4;
    }

    while (v4 != v21);
  }
}

void sub_1000E0538(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 8);
      v6 = *(v4 + 16);
      v7 = *(v4 + 1);
      v8 = *(v4 + 2);
      Hasher._combine(_:)(*v4);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      sub_10000AB0C(v5, v6);
      Data.hash(into:)();
      sub_1000124C8(v5, v6);
      v4 += 24;
      --v3;
    }

    while (v3);
  }
}

void sub_1000E05E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 38);
    do
    {
      v5 = *(v4 - 6);
      v6 = *(v4 - 5);
      v7 = *(v4 - 4);
      v8 = *(v4 - 3);
      v9 = *(v4 - 2);
      v10 = *(v4 - 1);
      v11 = *v4;
      v4 += 7;
      Hasher._combine(_:)(v5);
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);
      Hasher._combine(_:)(v8);
      Hasher._combine(_:)(v9);
      Hasher._combine(_:)(v10);
      Hasher._combine(_:)(v11);
      --v3;
    }

    while (v3);
  }
}

void sub_1000E0690(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 80);
    do
    {
      v6 = *(v4 - 5);
      v5 = *(v4 - 4);
      v7 = *(v4 - 3);
      v8 = *(v4 - 2);
      v10 = *(v4 - 1);
      v9 = *v4;
      Hasher._combine(_:)(*(v4 - 48) + 1);
      sub_10000AB0C(v6, v5);
      sub_10005D67C(v7, v8);

      Data.hash(into:)();
      if (v8 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
        if (!v9)
        {
          goto LABEL_9;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        Data.hash(into:)();
        if (!v9)
        {
LABEL_9:
          Hasher._combine(_:)(0);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_4:
      sub_1000124C8(v6, v5);
      sub_100017554(v7, v8);

      v4 += 7;
      --v3;
    }

    while (v3);
  }
}

BOOL sub_1000E07BC(char a1, uint64_t a2, char a3, char a4, uint64_t a5, char a6)
{
  if (a1 != a4)
  {
    return 0;
  }

  if ((a3 & 1) == 0)
  {
    if (a6)
    {
      return 0;
    }

    v6 = *(a2 + 16);
    if (v6 != *(a5 + 16))
    {
      return 0;
    }

    if (v6 && a2 != a5)
    {
      v8 = (a2 + 32);
      v9 = (a5 + 32);
      result = 1;
      while (*v8 == *v9)
      {
        ++v8;
        ++v9;
        if (!--v6)
        {
          return result;
        }
      }

      return 0;
    }

    return 1;
  }

  return (a6 & 1) != 0 && (sub_1000BCA40(a2, a5) & 1) != 0;
}

BOOL _s7CoreP2P20NANAvailabilityEntryV23__derived_struct_equalsySbAC_ACtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v21 = v2;
  v22 = v3;
  v19 = *(a1 + 4);
  v4 = *(a1 + 3);
  v20 = v4;
  v17 = *(a2 + 4);
  v5 = *(a2 + 3);
  v18 = v5;
  v6 = v19;
  v7 = v17;
  if (v4 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      if (v19 == v17)
      {
        v8 = a2;
        v9 = a1;
        sub_100012400(&v19, v16, &qword_10058D038, &unk_1004842B8);
        sub_100012400(&v17, v16, &qword_10058D038, &unk_1004842B8);
        v15 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v6 + 1), v4, *(&v7 + 1), v5);
        sub_10002F75C(v7, *(&v7 + 1), v5);
        sub_10002F75C(v6, *(&v6 + 1), v4);
        if (v15)
        {
          return sub_1000E07BC(*(v9 + 32), *(v9 + 5), *(v9 + 48), *(v8 + 32), *(v8 + 5), *(v8 + 48));
        }

        return 0;
      }

      sub_100012400(&v19, v16, &qword_10058D038, &unk_1004842B8);
      sub_100012400(&v17, v16, &qword_10058D038, &unk_1004842B8);
      sub_10002F75C(v7, *(&v7 + 1), v5);
      v13 = *(&v6 + 1);
      v12 = v6;
      v14 = v4;
LABEL_9:
      sub_10002F75C(v12, v13, v14);
      return 0;
    }

LABEL_8:
    sub_100012400(&v19, v16, &qword_10058D038, &unk_1004842B8);
    sub_100012400(&v17, v16, &qword_10058D038, &unk_1004842B8);
    sub_10002F75C(v6, *(&v6 + 1), v4);
    v13 = *(&v7 + 1);
    v12 = v7;
    v14 = v5;
    goto LABEL_9;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_8;
  }

  v8 = a2;
  v9 = a1;
  sub_100012400(&v19, v16, &qword_10058D038, &unk_1004842B8);
  sub_100012400(&v17, v16, &qword_10058D038, &unk_1004842B8);
  sub_10002F75C(v6, *(&v6 + 1), v4);
  return sub_1000E07BC(*(v9 + 32), *(v9 + 5), *(v9 + 48), *(v8 + 32), *(v8 + 5), *(v8 + 48));
}

unint64_t _s7CoreP2P20NANAvailabilityEntryV15UsagePreferenceO8rawValueAESgSi_tcfC_0(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

uint64_t sub_1000E0AD0(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_10058D388, &qword_100486988);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000E2914();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v11 = 0;
  sub_1000E5184();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10;
  v11 = 1;
  sub_1000E51D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100002A00(a1);
  return v8;
}

uint64_t sub_1000E0CB4(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v1)
  {
    sub_100029B34(v8, v8[3]);
    v4 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    sub_100002A00(v8);
    v5 = (v4 & 7) == 7 || (v4 & 7) == 0;
    if (v5 || (~v4 & 5) == 0)
    {
      sub_10000B02C();
      swift_allocError();
      *v6 = xmmword_10047CE70;
      *(v6 + 16) = 2;
      swift_willThrow();
    }
  }

  sub_100002A00(a1);
  return v4;
}

uint64_t sub_1000E0DC8(uint64_t *a1)
{
  v2 = v1;
  v4 = sub_10005DC58(&qword_10058D378, &qword_100486978);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v13[-v7];
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000E2A10();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v13[15] = 0;
    v10 = KeyedDecodingContainer.decode(_:forKey:)();
    v13[14] = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100002A00(a1);
    return v10 | (v11 << 16);
  }

  return v2;
}

uint64_t sub_1000E0F70(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058D380, &qword_100486980);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000E29BC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v16 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return (v10 << 8) | (v11 << 16) | v9;
}

uint64_t sub_1000E1140(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v16, v17);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v15;
  sub_100031694(v16, v17);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v15;
  sub_100031694(v16, v17);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v7 = v15;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  v9 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A848 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = sub_100037644(v10, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
  if (!*(v9 + 16) || (v12 = sub_10007CF6C(v11), (v13 & 1) == 0))
  {

LABEL_12:
    v14 = 0;
    goto LABEL_13;
  }

  sub_100002B30(*(v9 + 56) + 32 * v12, &v15);

  if ((swift_dynamicCast() & 1) == 0 || v18 != 1)
  {
    goto LABEL_12;
  }

  sub_100031694(v16, v17);
  sub_10005DC58(&qword_10058D410, &qword_1004869E0);
  sub_1000E5444();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v14 = v15 << 48;
LABEL_13:
  sub_100002A00(v16);
  sub_100002A00(a1);
  return v4 | (v5 << 16) | (v7 << 32) | v14;
}

uint64_t sub_1000E1404(uint64_t *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v6, v7);
    sub_1000E53F0();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v3 = v5;
    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    sub_100031694(v6, v7);
    sub_10000CADC(&qword_10058D408, &qword_10058CC70, &unk_100484290);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    sub_100002A00(v6);
  }

  sub_100002A00(a1);
  return v3;
}

unint64_t sub_1000E1584()
{
  result = qword_10058CFE8;
  if (!qword_10058CFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CFE8);
  }

  return result;
}

uint64_t sub_1000E15D8(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v20, v21);
  sub_1000E50DC();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v22;
  sub_100031694(v20, v21);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v22;
  sub_100031694(v20, v21);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v22;
  v7 = NANIntervalDuration.deprecatedAvailabilityMapSize.getter(v4);
  v8 = v21;
  sub_100031694(v20, v21);
  v9 = UnkeyedDecodingContainer.decodeData(with:)(v7, v8);
  v12 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v12 != 2)
    {
      goto LABEL_12;
    }

    v15 = *(v9 + 16);
    v16 = *(v9 + 24);
LABEL_10:
    v14 = v10;
    v13 = v9;
    if (v16 >= v15)
    {
      goto LABEL_13;
    }

    __break(1u);
LABEL_12:
    v14 = v10;
    v13 = v9;
    goto LABEL_13;
  }

  if (v12)
  {
    v15 = v9;
    v16 = v9 >> 32;
    goto LABEL_10;
  }

  v13 = v9;
  v14 = v10;
LABEL_13:
  v17 = Data.subdata(in:)();
  v19 = v18;
  sub_1000124C8(v13, v14);
  sub_100002A00(v20);
  sub_10000AB0C(v17, v19);
  sub_100002A00(a1);
  sub_1000124C8(v17, v19);
  return v4 | (v5 << 8) | (v6 << 16);
}

uint64_t sub_1000E1840(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v25, v26);
  sub_1000E5130();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v27;
  v5 = sub_100038D34(0, 4uLL, v27);
  v6 = sub_100038D34(4, 2uLL, v4);
  v7 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v6);
  if (v7 == 4)
  {
    sub_10000B02C();
    swift_allocError();
    *v8 = xmmword_10047CE70;
    *(v8 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v25);
    return sub_100002A00(a1);
  }

  v9 = v7;
  v10 = (sub_1000D40C8(6, 1uLL, v4, v7) != 0) << 16;
  v11 = NANIntervalDuration.deprecatedAvailabilityMapSize.getter(v9);
  v12 = v26;
  sub_100031694(v25, v26);
  v13 = UnkeyedDecodingContainer.decodeData(with:)(v11, v12);
  v16 = v14 >> 62;
  if ((v14 >> 62) > 1)
  {
    if (v16 != 2)
    {
      goto LABEL_14;
    }

    v19 = v13;
    v13 = *(v13 + 16);
    v17 = v19;
    v20 = *(v19 + 24);
LABEL_12:
    v18 = v14;
    if (v20 >= v13)
    {
      goto LABEL_15;
    }

    __break(1u);
LABEL_14:
    v18 = v14;
    v17 = v13;
    goto LABEL_15;
  }

  if (v16)
  {
    v21 = v13;
    v13 = v13;
    v17 = v21;
    v20 = v21 >> 32;
    goto LABEL_12;
  }

  v17 = v13;
  v18 = v14;
LABEL_15:
  v22 = Data.subdata(in:)();
  v24 = v23;
  sub_1000124C8(v17, v18);
  sub_100002A00(v25);
  sub_10000AB0C(v22, v24);
  sub_100002A00(a1);
  sub_1000124C8(v22, v24);
  return v10 | v5 & 0xF | (v9 << 8);
}

uint64_t sub_1000E1AF4@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_10000AB0C(a1, a2);
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v8 = swift_allocObject();
  v9 = 0;
  v8[5] = &_swiftEmptyDictionarySingleton;
  v8[2] = a1;
  v8[3] = a2;
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 == 2)
    {
      v9 = *(a1 + 16);
    }
  }

  else if (v10)
  {
    v9 = a1;
  }

  v8[4] = v9;
  swift_beginAccess();
  v8[5] = v7;
  v22 = &type metadata for BinaryDecoder.UnkeyedContainer;
  v23 = sub_1000325F0();
  v21[0] = v8;
  sub_100031694(v21, &type metadata for BinaryDecoder.UnkeyedContainer);
  sub_1000E522C();

  UnkeyedDecodingContainer.inferredDecode<A>()();
  if (v3)
  {
    goto LABEL_12;
  }

  if ((~v18 & 5) == 0)
  {
    sub_10000B02C();
    swift_allocError();
    *v11 = xmmword_10047CE70;
    *(v11 + 16) = 2;
    swift_willThrow();
LABEL_12:
    sub_1000124C8(a1, a2);

    sub_100002A00(v21);
    return sub_10002F75C(0, 0, 0xF000000000000000);
  }

  if ((v18 & 0x1000) != 0)
  {
    sub_100031694(v21, v22);
    sub_1000E51D8();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v16 = v18;
    v17 = a3;
    v12 = v18;
    v13 = v19;
    v14 = v20;
    sub_10002F75C(0, 0, 0xF000000000000000);
  }

  else
  {
    v16 = v18;
    v17 = a3;
    v12 = 0;
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  v24 = v23;
  sub_100031694(v21, v22);
  sub_1000E5280();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_1000124C8(a1, a2);

  sub_100002A00(v21);
  sub_10005D4F4(v12, v13, v14);

  sub_10002F75C(v12, v13, v14);

  *v17 = v16;
  *(v17 + 8) = v12;
  *(v17 + 16) = v13;
  *(v17 + 24) = v14;
  *(v17 + 32) = v18;
  *(v17 + 40) = v19;
  *(v17 + 48) = v20;
  return result;
}

uint64_t sub_1000E1DFC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_10005DC58(&qword_10058D3B0, &unk_1004869B0);
  sub_100031694(v10, v10[3]);
  sub_10000CADC(&qword_10058D3B8, &qword_10058D3B0, &unk_1004869B0);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_1000E1AF4(v8, v9, v11);
  sub_100002A00(v10);
  result = sub_100002A00(a1);
  v7 = v11[1];
  *a2 = v11[0];
  *(a2 + 16) = v7;
  *(a2 + 32) = v11[2];
  *(a2 + 48) = v12;
  return result;
}

uint64_t sub_1000E1F60(uint64_t *a1)
{
  v2 = v1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    goto LABEL_3;
  }

  v10 = sub_100031694(v28, v28[3]);
  sub_1000E52D4();
  v11 = v10;
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v2 = v26[0];
  v14 = sub_1000D40C8(4, 4uLL, v26[0], v12);
  v15 = sub_100038D34(0, 1uLL, v2);
  if (!v15)
  {
    if ((v14 & 0x8000000000000000) == 0)
    {
      sub_1000D2CB8(0, v14, v28);
LABEL_22:
      sub_100002A00(v28);
      sub_100002A00(a1);
      return v2;
    }

    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_10;
  }

  v29 = 0;
  if (v15 != 1)
  {
    sub_10000B02C();
    swift_allocError();
    *v22 = xmmword_10047CE70;
    *(v22 + 16) = 2;
    swift_willThrow();
    goto LABEL_27;
  }

  v16 = a1[4];
  sub_100029B34(a1, a1[3]);
  v11 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A848 != -1)
  {
    goto LABEL_24;
  }

LABEL_10:
  v17 = sub_100037644(v4, static CodingUserInfoKey.channelInformationHasAuxillaryBitmap);
  v18 = *(v11 + 16);
  v24 = v17;
  if (v18 && (v19 = sub_10007CF6C(v17), (v20 & 1) != 0))
  {
    sub_100002B30(*(v11 + 56) + 32 * v19, v27);
  }

  else
  {

    memset(v27, 0, sizeof(v27));
  }

  sub_10002B154(a1, v26);
  sub_10005DC58(&qword_10058D3D8, &unk_10049EDB0);
  type metadata accessor for BinaryDecoder();
  if (swift_dynamicCast())
  {
    (*(v5 + 16))(v8, v24, v4);
    v25[3] = &type metadata for Bool;
    LOBYTE(v25[0]) = (v2 & 2) != 0;
    swift_beginAccess();
    v23 = v14;
    sub_100072BFC(v25, v8);
    v14 = v23;
    swift_endAccess();
  }

  v21 = v29;
  if ((v14 & 0x8000000000000000) == 0)
  {
    sub_1000D2E40(0, v14, v28);
    if (!v21)
    {
      sub_10002B154(a1, v26);
      if (swift_dynamicCast())
      {
        (*(v5 + 16))(v8, v24, v4);
        sub_100012400(v27, v25, &qword_10058BA80, &qword_1004818C0);
        swift_beginAccess();
        sub_100072BFC(v25, v8);
        swift_endAccess();
      }

      sub_100016290(v27, &qword_10058BA80, &qword_1004818C0);
      goto LABEL_22;
    }

    sub_100016290(v27, &qword_10058BA80, &qword_1004818C0);
    sub_100002A00(v28);
LABEL_3:
    sub_100002A00(a1);
    return v2;
  }

  __break(1u);
  swift_unexpectedError();
  __break(1u);
LABEL_27:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1000E245C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6974617265706FLL && a2 == 0xEE007373616C4367;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x426C656E6E616863 && a2 == 0xED000070616D7469 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004B9050 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B9070 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1000E25DC(unint64_t result)
{
  v2 = *(v1 + 16);
  *(v1 + 16 + (result >> 7)) = *(&v2 + (result >> 7)) | (1 << ((result >> 4) & 7));
  return result;
}

unint64_t sub_1000E2618()
{
  result = qword_10058CFF8;
  if (!qword_10058CFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CFF8);
  }

  return result;
}

unint64_t sub_1000E266C()
{
  result = qword_10058D008;
  if (!qword_10058D008)
  {
    sub_10005DD04(&qword_10058D000, &qword_1004842A8);
    sub_1000E26F0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D008);
  }

  return result;
}

unint64_t sub_1000E26F0()
{
  result = qword_10058D010;
  if (!qword_10058D010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D010);
  }

  return result;
}

unint64_t sub_1000E2744()
{
  result = qword_10058D020;
  if (!qword_10058D020)
  {
    sub_10005DD04(&qword_10058D018, &qword_1004842B0);
    sub_1000E27C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D020);
  }

  return result;
}

unint64_t sub_1000E27C8()
{
  result = qword_10058D028;
  if (!qword_10058D028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D028);
  }

  return result;
}

uint64_t sub_1000E281C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000E2864()
{
  result = qword_10058D030;
  if (!qword_10058D030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D030);
  }

  return result;
}

unint64_t sub_1000E28B8()
{
  result = qword_10058D040;
  if (!qword_10058D040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D040);
  }

  return result;
}

unint64_t sub_1000E2914()
{
  result = qword_10058D050;
  if (!qword_10058D050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D050);
  }

  return result;
}

unint64_t sub_1000E2968()
{
  result = qword_10058D058;
  if (!qword_10058D058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D058);
  }

  return result;
}

unint64_t sub_1000E29BC()
{
  result = qword_10058D068;
  if (!qword_10058D068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D068);
  }

  return result;
}

unint64_t sub_1000E2A10()
{
  result = qword_10058D078;
  if (!qword_10058D078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D078);
  }

  return result;
}

unint64_t sub_1000E2A64()
{
  result = qword_10058D080;
  if (!qword_10058D080)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D080);
  }

  return result;
}

unint64_t sub_1000E2AB8()
{
  result = qword_10058D090;
  if (!qword_10058D090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D090);
  }

  return result;
}

unint64_t sub_1000E2B0C()
{
  result = qword_10058D098;
  if (!qword_10058D098)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D098);
  }

  return result;
}

unint64_t sub_1000E2B64()
{
  result = qword_10058D0A0;
  if (!qword_10058D0A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0A0);
  }

  return result;
}

unint64_t sub_1000E2BBC()
{
  result = qword_10058D0A8;
  if (!qword_10058D0A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0A8);
  }

  return result;
}

unint64_t sub_1000E2C10()
{
  result = qword_10058D0B0;
  if (!qword_10058D0B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0B0);
  }

  return result;
}

unint64_t sub_1000E2C68()
{
  result = qword_10058D0B8;
  if (!qword_10058D0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0B8);
  }

  return result;
}

unint64_t sub_1000E2CC0()
{
  result = qword_10058D0C0;
  if (!qword_10058D0C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0C0);
  }

  return result;
}

unint64_t sub_1000E2D18()
{
  result = qword_10058D0C8;
  if (!qword_10058D0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0C8);
  }

  return result;
}

unint64_t sub_1000E2D70()
{
  result = qword_10058D0D0;
  if (!qword_10058D0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0D0);
  }

  return result;
}

unint64_t sub_1000E2DC8()
{
  result = qword_10058D0D8;
  if (!qword_10058D0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0D8);
  }

  return result;
}

unint64_t sub_1000E2E1C()
{
  result = qword_10058D0E0;
  if (!qword_10058D0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0E0);
  }

  return result;
}

unint64_t sub_1000E2E74()
{
  result = qword_10058D0E8;
  if (!qword_10058D0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0E8);
  }

  return result;
}

unint64_t sub_1000E2ECC()
{
  result = qword_10058D0F0;
  if (!qword_10058D0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0F0);
  }

  return result;
}

unint64_t sub_1000E2F24()
{
  result = qword_10058D0F8;
  if (!qword_10058D0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D0F8);
  }

  return result;
}

unint64_t sub_1000E2F7C()
{
  result = qword_10058D100;
  if (!qword_10058D100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D100);
  }

  return result;
}

unint64_t sub_1000E2FD4()
{
  result = qword_10058D108;
  if (!qword_10058D108)
  {
    sub_10005DD04(&qword_10058D110, &qword_1004849C0);
    sub_1000E3058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D108);
  }

  return result;
}

unint64_t sub_1000E3058()
{
  result = qword_10058D118;
  if (!qword_10058D118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D118);
  }

  return result;
}

unint64_t sub_1000E30B0()
{
  result = qword_10058D120;
  if (!qword_10058D120)
  {
    sub_10005DD04(&qword_10058D128, &qword_1004849C8);
    sub_1000E3058();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D120);
  }

  return result;
}

unint64_t sub_1000E3138()
{
  result = qword_10058D130;
  if (!qword_10058D130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D130);
  }

  return result;
}

unint64_t sub_1000E3190()
{
  result = qword_10058D138;
  if (!qword_10058D138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D138);
  }

  return result;
}

unint64_t sub_1000E31E8()
{
  result = qword_10058D140;
  if (!qword_10058D140)
  {
    sub_10005DD04(&qword_10058D110, &qword_1004849C0);
    sub_1000E2F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D140);
  }

  return result;
}

unint64_t sub_1000E3270()
{
  result = qword_10058D148;
  if (!qword_10058D148)
  {
    sub_10005DD04(&qword_10058D128, &qword_1004849C8);
    sub_1000E2F7C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D148);
  }

  return result;
}

unint64_t sub_1000E32F8()
{
  result = qword_10058D150;
  if (!qword_10058D150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D150);
  }

  return result;
}

unint64_t sub_1000E334C()
{
  result = qword_10058D158;
  if (!qword_10058D158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D158);
  }

  return result;
}

unint64_t sub_1000E3470()
{
  result = qword_10058D180;
  if (!qword_10058D180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D180);
  }

  return result;
}

unint64_t sub_1000E34C8()
{
  result = qword_10058D188;
  if (!qword_10058D188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D188);
  }

  return result;
}

unint64_t sub_1000E3520()
{
  result = qword_10058D190;
  if (!qword_10058D190)
  {
    sub_10005DD04(&qword_10058D198, &qword_100484C78);
    sub_1000E35A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D190);
  }

  return result;
}

unint64_t sub_1000E35A4()
{
  result = qword_10058D1A0;
  if (!qword_10058D1A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D1A0);
  }

  return result;
}

unint64_t sub_1000E35FC()
{
  result = qword_10058D1A8;
  if (!qword_10058D1A8)
  {
    sub_10005DD04(&qword_10058D1B0, &qword_100484C80);
    sub_1000E35A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D1A8);
  }

  return result;
}

unint64_t sub_1000E3684()
{
  result = qword_10058D1B8;
  if (!qword_10058D1B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D1B8);
  }

  return result;
}

unint64_t sub_1000E36DC()
{
  result = qword_10058D1C0;
  if (!qword_10058D1C0)
  {
    sub_10005DD04(&qword_10058D198, &qword_100484C78);
    sub_1000E34C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D1C0);
  }

  return result;
}

unint64_t sub_1000E3764()
{
  result = qword_10058D1C8;
  if (!qword_10058D1C8)
  {
    sub_10005DD04(&qword_10058D1B0, &qword_100484C80);
    sub_1000E34C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D1C8);
  }

  return result;
}

unint64_t sub_1000E37EC()
{
  result = qword_10058D1D0;
  if (!qword_10058D1D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D1D0);
  }

  return result;
}

unint64_t sub_1000E3950()
{
  result = qword_10058D208;
  if (!qword_10058D208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D208);
  }

  return result;
}

unint64_t sub_1000E39A8()
{
  result = qword_10058D210;
  if (!qword_10058D210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D210);
  }

  return result;
}

unint64_t sub_1000E3A00()
{
  result = qword_10058D218;
  if (!qword_10058D218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D218);
  }

  return result;
}

unint64_t sub_1000E3A54()
{
  result = qword_10058D220;
  if (!qword_10058D220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D220);
  }

  return result;
}

unint64_t sub_1000E3AAC()
{
  result = qword_10058D228;
  if (!qword_10058D228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D228);
  }

  return result;
}

unint64_t sub_1000E3B04()
{
  result = qword_10058D230;
  if (!qword_10058D230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D230);
  }

  return result;
}

unint64_t sub_1000E3B5C()
{
  result = qword_10058D238;
  if (!qword_10058D238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D238);
  }

  return result;
}

unint64_t sub_1000E3BB4()
{
  result = qword_10058D240;
  if (!qword_10058D240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D240);
  }

  return result;
}

unint64_t sub_1000E3C08()
{
  result = qword_10058D248;
  if (!qword_10058D248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D248);
  }

  return result;
}

unint64_t sub_1000E3C60()
{
  result = qword_10058D250;
  if (!qword_10058D250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D250);
  }

  return result;
}

unint64_t sub_1000E3CB8()
{
  result = qword_10058D258;
  if (!qword_10058D258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D258);
  }

  return result;
}

unint64_t sub_1000E3D10()
{
  result = qword_10058D260;
  if (!qword_10058D260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D260);
  }

  return result;
}

unint64_t sub_1000E3D68()
{
  result = qword_10058D268;
  if (!qword_10058D268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D268);
  }

  return result;
}

unint64_t sub_1000E3DC0()
{
  result = qword_10058D270;
  if (!qword_10058D270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D270);
  }

  return result;
}

unint64_t sub_1000E3E18()
{
  result = qword_10058D278;
  if (!qword_10058D278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D278);
  }

  return result;
}

unint64_t sub_1000E3E70()
{
  result = qword_10058D280;
  if (!qword_10058D280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D280);
  }

  return result;
}

unint64_t sub_1000E3EC8()
{
  result = qword_10058D288;
  if (!qword_10058D288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D288);
  }

  return result;
}

unint64_t sub_1000E3F20()
{
  result = qword_10058D290;
  if (!qword_10058D290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D290);
  }

  return result;
}

unint64_t sub_1000E3F78()
{
  result = qword_10058D298;
  if (!qword_10058D298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D298);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for NANBitmap.Channel(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for NANBitmap.Channel(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NANBitmap.Channel(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *result = (a2 - 1);
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

uint64_t sub_1000E406C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
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

uint64_t sub_1000E40C0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_1000E4160(uint64_t a1)
{
  v1 = *(a1 + 16) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_1000E4194(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000E41B0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 49))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 48);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000E41F8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000E427C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1000E42C4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

uint64_t sub_1000E4388(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 24))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 2);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000E43DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 2) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1000E4430(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && a1[24])
  {
    return (*a1 + 253);
  }

  v3 = *a1;
  v4 = v3 >= 4;
  v5 = v3 - 4;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1000E4474(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *result = a2 + 3;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for NANBloomFilter.Index(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000E45DC()
{
  result = qword_10058D2A0;
  if (!qword_10058D2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2A0);
  }

  return result;
}

unint64_t sub_1000E4634()
{
  result = qword_10058D2A8;
  if (!qword_10058D2A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2A8);
  }

  return result;
}

unint64_t sub_1000E468C()
{
  result = qword_10058D2B0;
  if (!qword_10058D2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2B0);
  }

  return result;
}

unint64_t sub_1000E46E4()
{
  result = qword_10058D2B8;
  if (!qword_10058D2B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2B8);
  }

  return result;
}

unint64_t sub_1000E4738()
{
  result = qword_10058D2C0;
  if (!qword_10058D2C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2C0);
  }

  return result;
}

unint64_t sub_1000E4790()
{
  result = qword_10058D2C8;
  if (!qword_10058D2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2C8);
  }

  return result;
}

unint64_t sub_1000E47E8()
{
  result = qword_10058D2D0;
  if (!qword_10058D2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2D0);
  }

  return result;
}

unint64_t sub_1000E4840()
{
  result = qword_10058D2D8;
  if (!qword_10058D2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2D8);
  }

  return result;
}

unint64_t sub_1000E4898()
{
  result = qword_10058D2E0;
  if (!qword_10058D2E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2E0);
  }

  return result;
}

unint64_t sub_1000E48F0()
{
  result = qword_10058D2E8;
  if (!qword_10058D2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2E8);
  }

  return result;
}

unint64_t sub_1000E4948()
{
  result = qword_10058D2F0;
  if (!qword_10058D2F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2F0);
  }

  return result;
}

unint64_t sub_1000E49A0()
{
  result = qword_10058D2F8;
  if (!qword_10058D2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D2F8);
  }

  return result;
}

unint64_t sub_1000E49F8()
{
  result = qword_10058D300;
  if (!qword_10058D300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D300);
  }

  return result;
}

unint64_t sub_1000E4A50()
{
  result = qword_10058D308;
  if (!qword_10058D308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D308);
  }

  return result;
}

unint64_t sub_1000E4AA8()
{
  result = qword_10058D310;
  if (!qword_10058D310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D310);
  }

  return result;
}

unint64_t sub_1000E4B00()
{
  result = qword_10058D318;
  if (!qword_10058D318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D318);
  }

  return result;
}

unint64_t sub_1000E4B58()
{
  result = qword_10058D320;
  if (!qword_10058D320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D320);
  }

  return result;
}

unint64_t sub_1000E4BB0()
{
  result = qword_10058D328;
  if (!qword_10058D328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D328);
  }

  return result;
}

unint64_t sub_1000E4C08()
{
  result = qword_10058D330;
  if (!qword_10058D330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D330);
  }

  return result;
}

uint64_t sub_1000E4C5C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001004B9090 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xED00007265626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B90B0 == a2)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000E4D8C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6F72746E6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6974617265706FLL && a2 == 0xEE007373616C4367 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4E6C656E6E616863 && a2 == 0xED00007265626D75 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6962616C69617661 && a2 == 0xEF70614D7974696CLL)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t sub_1000E4F08()
{
  result = qword_10058D338;
  if (!qword_10058D338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D338);
  }

  return result;
}

unint64_t sub_1000E4F5C()
{
  result = qword_10058D340;
  if (!qword_10058D340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D340);
  }

  return result;
}

uint64_t sub_1000E4FB0(uint64_t a1)
{
  v2 = type metadata accessor for NANAttribute(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000E500C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000E5074(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_1000E50DC()
{
  result = qword_10058D368;
  if (!qword_10058D368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D368);
  }

  return result;
}

unint64_t sub_1000E5130()
{
  result = qword_10058D370;
  if (!qword_10058D370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D370);
  }

  return result;
}

unint64_t sub_1000E5184()
{
  result = qword_10058D390;
  if (!qword_10058D390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D390);
  }

  return result;
}

unint64_t sub_1000E51D8()
{
  result = qword_10058D398;
  if (!qword_10058D398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D398);
  }

  return result;
}

unint64_t sub_1000E522C()
{
  result = qword_10058D3C0;
  if (!qword_10058D3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D3C0);
  }

  return result;
}

unint64_t sub_1000E5280()
{
  result = qword_10058D3C8;
  if (!qword_10058D3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D3C8);
  }

  return result;
}

unint64_t sub_1000E52D4()
{
  result = qword_10058D3D0;
  if (!qword_10058D3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D3D0);
  }

  return result;
}

unint64_t sub_1000E5328()
{
  result = qword_10058D3E0;
  if (!qword_10058D3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D3E0);
  }

  return result;
}

unint64_t sub_1000E537C()
{
  result = qword_10058D3E8;
  if (!qword_10058D3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D3E8);
  }

  return result;
}

uint64_t sub_1000E53D0()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  return sub_100178BE4();
}

unint64_t sub_1000E53F0()
{
  result = qword_10058D400;
  if (!qword_10058D400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D400);
  }

  return result;
}

unint64_t sub_1000E5444()
{
  result = qword_10058D418;
  if (!qword_10058D418)
  {
    sub_10005DD04(&qword_10058D410, &qword_1004869E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058D418);
  }

  return result;
}

BOOL sub_1000E55E0(uint64_t a1, uint64_t a2)
{

  return sub_10005146C(a1, a2);
}

BOOL static TimeBitmap.SlotsView.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return static TimeBitmap.__derived_struct_equals(_:_:)(a1, a2, a3, a4, a5, a6);
}

uint64_t sub_1000E5728@<X0>(uint64_t result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  if (*(result + 32))
  {
    v3 = *(result + 24);
    if (v3 == 1)
    {
      v3 = 0;
      v4 = 0;
      v5 = 0;
      v2 = 0;
      v6 = -1;
    }

    else
    {
      v5 = *(result + 8);
      v4 = *(result + 16);
      v7 = a2;
      result = sub_10011AF54(*result, v5, v4, v3);
      a2 = v7;
      v6 = 1;
    }
  }

  else
  {
    v3 = 0;
    v4 = 0;
    v5 = 0;
    if ((v2 & &_mh_execute_header) != 0)
    {
      v6 = -1;
    }

    else
    {
      v6 = 0;
    }

    if ((v2 & &_mh_execute_header) != 0)
    {
      v2 = 0;
    }

    else
    {
      v2 = v2;
    }
  }

  *a2 = v2;
  *(a2 + 8) = v5;
  *(a2 + 16) = v4;
  *(a2 + 24) = v3;
  *(a2 + 32) = v6;
  return result;
}

unint64_t static DeviceDriver<>.parse(event:)()
{
  v0 = __chkstk_darwin();
  v734.i64[0] = v1;
  *&v733 = v2;
  *&v732 = v3;
  v735 = v4;
  v736 = v5;
  v6 = v0;
  v717 = type metadata accessor for DNSRecords.SRV();
  v7 = *(*(v717 - 8) + 64);
  __chkstk_darwin();
  v715 = &v698 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v716 = &v698 - v9;
  v10 = *(*(sub_10005DC58(&qword_10058C7E0, &unk_100486B30) - 8) + 64);
  __chkstk_darwin();
  v721 = &v698 - v11;
  v12 = type metadata accessor for AWDLActionFrame.Header(0);
  v719 = *(v12 - 8);
  v720 = v12;
  v13 = *(v719 + 64);
  __chkstk_darwin();
  v718 = &v698 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_10005DC58(&qword_10058C7E8, &unk_100481FF0) - 8) + 64);
  __chkstk_darwin();
  v725 = &v698 - v16;
  v17 = type metadata accessor for AWDLStatistics.LowLatencyStatistics(0);
  v723 = *(v17 - 8);
  v724 = v17;
  v18 = *(v723 + 64);
  __chkstk_darwin();
  v722 = &v698 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Logger();
  v729 = *(v20 - 8);
  *&v730 = v20;
  v21 = *(v729 + 64);
  __chkstk_darwin();
  *&v731 = &v698 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  __chkstk_darwin();
  v727 = &v698 - v23;
  __chkstk_darwin();
  v726 = &v698 - v24;
  __chkstk_darwin();
  v26 = &v698 - v25;
  __chkstk_darwin();
  v28 = &v698 - v27;
  __chkstk_darwin();
  v30 = &v698 - v29;
  __chkstk_darwin();
  v32 = &v698 - v31;
  __chkstk_darwin();
  v34 = &v698 - v33;
  __chkstk_darwin();
  v36 = &v698 - v35;
  __chkstk_darwin();
  __chkstk_darwin();
  v38 = &v698 - v37;
  __chkstk_darwin();
  v50 = &v698 - v49;
  result = _swiftEmptyArrayStorage;
  v728 = v6;
  v52 = v6 - 1;
  v53 = v998;
  switch(v52)
  {
    case 0:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v54 = *(type metadata accessor for DriverEvent(0) - 8);
      v55 = *(v54 + 72);
      v56 = (*(v54 + 80) + 32) & ~*(v54 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480F40;
      v58 = v57 + v56;
      *v58 = 0u;
      *(v58 + 16) = 0u;
      *(v58 + 25) = 0u;
      goto LABEL_113;
    case 1:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v292 = *(type metadata accessor for DriverEvent(0) - 8);
      v293 = *(v292 + 72);
      v294 = (*(v292 + 80) + 32) & ~*(v292 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480F40;
      v58 = v57 + v294;
      v295 = 2;
      goto LABEL_112;
    case 2:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v362 = *(type metadata accessor for DriverEvent(0) - 8);
      v363 = *(v362 + 72);
      v364 = (*(v362 + 80) + 32) & ~*(v362 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480F40;
      v58 = v57 + v364;
      v295 = 3;
      goto LABEL_112;
    case 8:
      type metadata accessor for apple80211_join_status(0);
      v354 = v353;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v354, v993);
      memcpy(v994, v993, 0x1D5uLL);
      if (sub_1000B2340(v994) == 1)
      {
        goto LABEL_215;
      }

      memcpy(v1002, v994, 0x1D4uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v355 = *(type metadata accessor for DriverEvent(0) - 8);
      v356 = *(v355 + 72);
      v357 = (*(v355 + 80) + 32) & ~*(v355 + 80);
      v30 = swift_allocObject();
      *(v30 + 1) = xmmword_100480F40;
      v358 = &v30[v357];
      *v358 = sub_100113168();
      *(v358 + 1) = v360;
      *(v358 + 2) = v361;
      *(v358 + 3) = v359;
      v358[41] = 4;
      goto LABEL_136;
    case 10:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v420 = *(type metadata accessor for DriverEvent(0) - 8);
      v421 = *(v420 + 72);
      v422 = (*(v420 + 80) + 32) & ~*(v420 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480F40;
      v58 = v57 + v422;
      v295 = 1;
LABEL_112:
      *v58 = v295;
      *(v58 + 24) = 0u;
      *(v58 + 8) = 0u;
      *(v58 + 40) = 0;
LABEL_113:
      *(v58 + 41) = 10;
      goto LABEL_130;
    case 45:
    case 64:
    case 194:
    case 234:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v417 = *(type metadata accessor for DriverEvent(0) - 8);
      v418 = *(v417 + 72);
      v419 = (*(v417 + 80) + 32) & ~*(v417 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480F40;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_129;
    case 46:
      type metadata accessor for apple80211_peer_presence_indication(0);
      v231 = v230;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v231, v994);
      if (BYTE4(v994[4]))
      {
        goto LABEL_215;
      }

      if (DWORD2(v994[0]) != 1)
      {
        goto LABEL_220;
      }

      v232.i32[0] = v994[0];
      v734 = vmovl_u8(v232);
      v233 = BYTE4(v994[0]);
      v234 = BYTE5(v994[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v235 = *(type metadata accessor for DriverEvent(0) - 8);
      v236 = *(v235 + 72);
      v237 = (*(v235 + 80) + 32) & ~*(v235 + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_100480F40;
      v239 = v238 + v237;
      *v239 = vuzp1_s8(*v734.i8, *v734.i8).u32[0];
      *(v239 + 4) = v233;
      *(v239 + 5) = v234;
      type metadata accessor for DriverEvent.AWDL(0);
      goto LABEL_100;
    case 47:
      v64 = v736;
      v240 = v736 >> 62;
      if ((v736 >> 62) <= 1)
      {
        v65 = v735;
        if (!v240)
        {
          v94 = v730;
          if ((v736 & 0xFF000000000000) >= 0x48000000000001)
          {
            v241 = 72;
            goto LABEL_243;
          }

LABEL_213:
          sub_10000AB0C(v65, v736);
          goto LABEL_216;
        }

        v241 = v735 + 72;
        v605 = v735 >> 32;
        v94 = v730;
        goto LABEL_210;
      }

      v65 = v735;
      if (v240 == 2)
      {
        v604 = *(v735 + 16);
        v241 = v604 + 72;
        v94 = v730;
        if (__OFADD__(v604, 72))
        {
          goto LABEL_266;
        }

        v605 = *(v735 + 24);
LABEL_210:
        if (v241 >= v605)
        {
          goto LABEL_213;
        }

        if (v240 == 2)
        {
          v626 = *(v65 + 16);
        }

        else
        {
          v626 = v65;
        }

        if (v241 >= v626)
        {
LABEL_243:
          sub_10000AB0C(v65, v736);
          v650 = Data._Representation.subscript.getter();
          v652 = v651;
          sub_100030E20(v650, v651, v993);
          sub_1000124C8(v650, v652);
          v994[2] = v993[2];
          v994[3] = v993[3];
          *&v994[4] = *&v993[4];
          v994[0] = v993[0];
          v994[1] = v993[1];
          v653 = v721;
          sub_100112D70(v721);
          if ((*(v719 + 48))(v653, 1, v720) == 1)
          {
            sub_100016290(v653, &qword_10058C7E0, &unk_100486B30);
            goto LABEL_216;
          }

          result = sub_100038FEC(v653, v718, type metadata accessor for AWDLActionFrame.Header);
          if (v240)
          {
            if (v240 == 2)
            {
              v659 = *(v65 + 16);
              v660 = __OFADD__(v659, v241);
              v241 += v659;
              if (!v660)
              {
                v661 = *(v65 + 24);
LABEL_258:
                if (v241 < v661)
                {
                  v664 = v64;
                  v665 = sub_100033A48(v241, v65, v64);
                  v667 = v666;
                  v668 = sub_100033AA8(_swiftEmptyArrayStorage);
                  v669 = type metadata accessor for BinaryDecoder();
                  swift_allocObject();
                  v670 = BinaryDecoder.init(data:userInfo:)(v665, v667, v668);
                  *(&v993[1] + 1) = v669;
                  *&v993[2] = sub_10011AB40(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
                  *&v993[0] = v670;
                  sub_10000AB0C(v665, v667);

                  LOBYTE(v668) = sub_10003132C(v993);
                  v672 = v671;
                  v674 = v673;
                  v676 = v675;

                  sub_1000124C8(v665, v667);
                  sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
                  v677 = *(type metadata accessor for DriverEvent(0) - 8);
                  v678 = *(v677 + 72);
                  v679 = (*(v677 + 80) + 32) & ~*(v677 + 80);
                  v680 = swift_allocObject();
                  *(v680 + 16) = xmmword_100480F40;
                  v681 = v680 + v679;
                  v682 = *(sub_10005DC58(&qword_10058C7C8, &unk_100481FE0) + 48);
                  *v681 = v668;
                  *(v681 + 8) = v672;
                  *(v681 + 16) = v674;
                  *(v681 + 24) = v676;
                  v683 = v718;
                  sub_100119FA0(v718, v680 + v679 + v682, type metadata accessor for AWDLActionFrame.Header);
                  type metadata accessor for DriverEvent.AWDL(0);
                  swift_storeEnumTagMultiPayload();
                  swift_storeEnumTagMultiPayload();
                  sub_1000124C8(v735, v664);
                  sub_10003B8D4(v683, type metadata accessor for AWDLActionFrame.Header);
                  return v680;
                }

                sub_10003B8D4(v718, type metadata accessor for AWDLActionFrame.Header);
                goto LABEL_216;
              }

              __break(1u);
            }

            else
            {
              v660 = __OFADD__(v241, v65);
              v241 += v65;
              if (!v660)
              {
                v661 = v65 >> 32;
                goto LABEL_258;
              }
            }

            __break(1u);
LABEL_270:
            __break(1u);
            return result;
          }

          v661 = BYTE6(v64);
          goto LABEL_258;
        }

        __break(1u);
LABEL_266:
        __break(1u);
LABEL_267:
        swift_once();
LABEL_200:
        LODWORD(v608) = static Channel.nanPrimary;
        LOBYTE(v609) = byte_10059B634;
        LOBYTE(v610) = byte_10059B635;
LABEL_230:
        v994[0] = *(v998 + 4);
        v994[1] = *(&v998[1] + 4);
        v994[2] = *(&v998[2] + 4);
        BYTE8(v994[3]) = v53;
        *&v994[3] = *(&v998[3] + 4);
        *&v994[4] = v733;
        DWORD2(v994[4]) = v608;
        BYTE12(v994[4]) = v609;
        BYTE13(v994[4]) = v610;
        *&v994[5] = v734.i64[0];
        *(&v994[5] + 1) = v65 | (v94 << 32);
        sub_1000B24C8(v994);
        memcpy(&v30[v240], v994, 0x16AuLL);
        swift_storeEnumTagMultiPayload();
        sub_100016290(v993, &unk_10058C820, &qword_100482060);
        v397 = v735;
        v398 = v736;
LABEL_137:
        sub_1000124C8(v397, v398);
        return v30;
      }

      sub_10000AB0C(v735, v736);
LABEL_215:
      v94 = v730;
LABEL_216:
      v90 = v731;
LABEL_217:
      Logger.init(subsystem:category:)();
      sub_10000AB0C(v65, v64);
      v627 = Logger.logObject.getter();
      v628 = static os_log_type_t.error.getter();
      sub_1000124C8(v65, v64);
      if (os_log_type_enabled(v627, v628))
      {
        v629 = swift_slowAlloc();
        v630 = swift_slowAlloc();
        *&v1002[0] = v630;
        *v629 = 134218242;
        *(v629 + 4) = v728;
        *(v629 + 12) = 2080;
        v631 = Data.hexString.getter(v65, v64);
        v633 = v94;
        v634 = v65;
        v635 = v64;
        v636 = sub_100002320(v631, v632, v1002);

        *(v629 + 14) = v636;
        v64 = v635;
        v65 = v634;
        _os_log_impl(&_mh_execute_header, v627, v628, "Failed to parse event[%ld]: %s", v629, 0x16u);
        sub_100002A00(v630);

        (*(v729 + 8))(v731, v633);
      }

      else
      {

        (*(v729 + 8))(v90, v94);
      }

LABEL_220:
      v637 = v65;
      v638 = v64;
LABEL_221:
      sub_1000124C8(v637, v638);
      return _swiftEmptyArrayStorage;
    case 48:
      type metadata accessor for apple80211_chip_reset(0);
      v332 = v331;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v332, v994);
      if (BYTE4(v994[0]))
      {
        goto LABEL_215;
      }

      v333 = v994[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v334 = *(type metadata accessor for DriverEvent(0) - 8);
      v335 = *(v334 + 72);
      v336 = (*(v334 + 80) + 32) & ~*(v334 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100480F40;
      *(v82 + v336) = v333 == 1;
      goto LABEL_190;
    case 54:
      v296 = v48;
      type metadata accessor for apple80211_driver_availability(0);
      v298 = v297;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v298, v993);
      v994[12] = v993[12];
      v994[13] = v993[13];
      v994[14] = v993[14];
      *(&v994[14] + 9) = *(&v993[14] + 9);
      v994[8] = v993[8];
      v994[9] = v993[9];
      v994[10] = v993[10];
      v994[11] = v993[11];
      v994[4] = v993[4];
      v994[5] = v993[5];
      v994[6] = v993[6];
      v994[7] = v993[7];
      v994[0] = v993[0];
      v994[1] = v993[1];
      v994[2] = v993[2];
      v994[3] = v993[3];
      if (sub_1000B235C(v994) == 1)
      {
        goto LABEL_215;
      }

      v299 = v64;
      v300 = v994[1];
      v301 = v730;
      if (!DWORD2(v994[0]) || LODWORD(v994[1]) != -528345085)
      {
        Logger.init(subsystem:category:)();
        v640 = Logger.logObject.getter();
        v641 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v640, v641))
        {
          v642 = swift_slowAlloc();
          v643 = swift_slowAlloc();
          *&v993[0] = v643;
          *v642 = 136315394;
          *(v642 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v993);
          *(v642 + 12) = 1024;
          *(v642 + 14) = v300;
          _os_log_impl(&_mh_execute_header, v640, v641, "nan_event: %s APPLE80211_M_DRIVER_AVAILABLE with powerOn false %d", v642, 0x12u);
          sub_100002A00(v643);
        }

        (*(v729 + 8))(v296, v301);
        v637 = v65;
        v638 = v299;
        goto LABEL_221;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v302 = *(type metadata accessor for DriverEvent(0) - 8);
      v303 = *(v302 + 72);
      v304 = (*(v302 + 80) + 32) & ~*(v302 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100480F40;
      *(v82 + v304) = 4;
      swift_storeEnumTagMultiPayload();
      v305 = v65;
      v306 = v299;
LABEL_225:
      sub_1000124C8(v305, v306);
      return v82;
    case 58:
    case 223:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v59 = *(type metadata accessor for DriverEvent(0) - 8);
      v60 = *(v59 + 72);
      v61 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480F40;
      goto LABEL_130;
    case 65:
      type metadata accessor for apple80211_assoc_ready(0);
      v170 = v169;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v170, v993);
      if (BYTE8(v993[1]))
      {
        goto LABEL_215;
      }

      v171 = *&v993[1];
      v172 = *(&v993[0] + 1);
      v173 = *&v993[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v174 = *(type metadata accessor for DriverEvent(0) - 8);
      v175 = *(v174 + 72);
      v176 = v64;
      v177 = (*(v174 + 80) + 32) & ~*(v174 + 80);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_100480F40;
      v178 = v160 + v177;
      sub_100113290(v173, v172, v171, v994);
      v179 = BYTE8(v994[2]);
      *v178 = LOWORD(v994[0]);
      *(v178 + 8) = *(v994 + 8);
      *(v178 + 24) = *(&v994[1] + 8);
      *(v178 + 40) = v179;
      *(v178 + 41) = 5;
      goto LABEL_58;
    case 66:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v452 = *(type metadata accessor for DriverEvent(0) - 8);
      v453 = *(v452 + 72);
      v454 = (*(v452 + 80) + 32) & ~*(v452 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480F40;
      *(v57 + v454) = 1;
      goto LABEL_128;
    case 67:
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v337 = *(type metadata accessor for DriverEvent(0) - 8);
      v338 = *(v337 + 72);
      v339 = (*(v337 + 80) + 32) & ~*(v337 + 80);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_100480F40;
      *(v57 + v339) = 0;
LABEL_128:
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_129:
      swift_storeEnumTagMultiPayload();
LABEL_130:
      swift_storeEnumTagMultiPayload();
      return v57;
    case 73:
      type metadata accessor for apple80211_message_auth(0);
      v341 = v340;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v341, v994);
      if (BYTE8(v994[6]))
      {
        goto LABEL_215;
      }

      v342 = WORD2(v994[0]);
      v343 = v994[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v344 = *(type metadata accessor for DriverEvent(0) - 8);
      v345 = *(v344 + 72);
      v346 = (*(v344 + 80) + 32) & ~*(v344 + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_100480F40;
      v347 = v238 + v346;
      v348 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v343 & 0x1FF);
      if (v348 == 55)
      {
        v349 = 1;
      }

      else
      {
        v349 = v348;
      }

      v350 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v342 & 0x1FF);
      if (v350 == 34)
      {
        v351 = 1;
      }

      else
      {
        v351 = v350;
      }

      *v347 = v349 | (v351 << 8);
      *(v347 + 8) = 0u;
      *(v347 + 24) = 0u;
      v352 = 1792;
      goto LABEL_124;
    case 77:
      type metadata accessor for apple80211_message_assoc(0);
      v436 = v435;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v436, v994);
      if (BYTE8(v994[0]))
      {
        goto LABEL_215;
      }

      v437 = WORD2(v994[0]);
      v438 = v994[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v439 = *(type metadata accessor for DriverEvent(0) - 8);
      v440 = *(v439 + 72);
      v441 = (*(v439 + 80) + 32) & ~*(v439 + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_100480F40;
      v347 = v238 + v441;
      v442 = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(v438 & 0x1FF);
      if (v442 == 55)
      {
        v443 = 1;
      }

      else
      {
        v443 = v442;
      }

      v444 = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(v437 & 0x1FF);
      if (v444 == 34)
      {
        v445 = 1;
      }

      else
      {
        v445 = v444;
      }

      *v347 = v443 | (v445 << 8);
      *(v347 + 8) = 0u;
      *(v347 + 24) = 0u;
      v352 = 1536;
LABEL_124:
      *(v347 + 40) = v352;
      goto LABEL_184;
    case 81:
      type metadata accessor for apple80211_channel(0);
      v400 = v399;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v400, v994);
      if (BYTE12(v994[0]))
      {
        goto LABEL_215;
      }

      v401 = DWORD2(v994[0]);
      v402 = DWORD1(v994[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v403 = *(type metadata accessor for DriverEvent(0) - 8);
      v404 = *(v403 + 72);
      v405 = (*(v403 + 80) + 32) & ~*(v403 + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_100480F40;
      v406 = v238 + v405;
      *v406 = sub_100032064(v402, v401) & 0xFFFFFFFFFFFFLL;
      *(v406 + 8) = 0u;
      *(v406 + 24) = 0u;
      *(v406 + 40) = 2048;
      goto LABEL_184;
    case 94:
      v64 = v736;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v471 = Logger.logObject.getter();
      v472 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v471, v472))
      {
        v473 = swift_slowAlloc();
        v474 = swift_slowAlloc();
        *&v994[0] = v474;
        *v473 = 136315138;
        *(v473 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v471, v472, "nan_event: %s APPLE80211_M_NAN_DEVICE_ROLE_CHANGED", v473, 0xCu);
        sub_100002A00(v474);
      }

      v94 = v730;
      (*(v729 + 8))(v38, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_device_role_changed_event_data(0);
      v65 = v735;
      sub_100112214(v735, v64, v475, v993);
      if (BYTE12(v993[0]))
      {
        goto LABEL_217;
      }

      v476 = BYTE8(v993[0]);
      v477 = *&v993[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v478 = *(type metadata accessor for DriverEvent(0) - 8);
      v479 = *(v478 + 72);
      v480 = (*(v478 + 80) + 32) & ~*(v478 + 80);
      v481 = swift_allocObject();
      *(v481 + 16) = xmmword_100480F40;
      if (v477 == 1)
      {
        v99 = v481;
        v482 = 3;
      }

      else
      {
        v99 = v481;
        if (v477 == 3)
        {
          v482 = HIDWORD(v477) == 1;
        }

        else if (v477 == 2)
        {
          v482 = 4;
        }

        else
        {
          v482 = 0;
        }
      }

      LOBYTE(v994[0]) = v482;
      *(&v994[0] + 1) = v476;
      sub_1000B2580(v994);
      memcpy((v99 + v480), v994, 0x16AuLL);
      goto LABEL_239;
    case 96:
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v242 = Logger.logObject.getter();
      v243 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v242, v243))
      {
        v244 = swift_slowAlloc();
        v245 = swift_slowAlloc();
        *&v994[0] = v245;
        *v244 = 136315138;
        *(v244 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v242, v243, "nan_event: %s APPLE80211_M_NAN_CLUSTER_CHANGED", v244, 0xCu);
        sub_100002A00(v245);
      }

      v94 = v730;
      (*(v729 + 8))(v50, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_cluster_changed_event_data(0);
      sub_100112214(v65, v64, v246, v993);
      if (BYTE6(v993[0]))
      {
        goto LABEL_217;
      }

      v247 = v993[0];
      v248 = v64;
      v249 = LODWORD(v993[0]) | (WORD2(v993[0]) << 32);
      v250 = WORD2(v993[0]) >> 8;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v251 = *(type metadata accessor for DriverEvent(0) - 8);
      v252 = *(v251 + 72);
      v253 = (*(v251 + 80) + 32) & ~*(v251 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      LOBYTE(v994[0]) = v247;
      v254.i64[0] = 0xFFFFFFFFFFFFLL;
      v254.i64[1] = 0xFFFFFFFFFFFFLL;
      v255 = vandq_s8(vdupq_n_s64(v249), v254);
      v256 = vshlq_u64(v255, xmmword_1004817A0);
      *v255.i8 = vmovn_s64(vshlq_u64(v255, xmmword_100481790));
      *v256.i8 = vmovn_s64(v256);
      v256.i16[1] = v256.i16[2];
      v256.i16[2] = v255.i16[0];
      v256.i16[3] = v255.i16[2];
      *(v994 + 1) = vmovn_s16(v256).u32[0];
      BYTE5(v994[0]) = v250;
      sub_1000B258C(v994);
      memcpy((v99 + v253), v994, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v154 = v65;
      v199 = v248;
      goto LABEL_240;
    case 97:
      KeyPath = swift_getKeyPath();
      v464 = swift_getKeyPath();
      v466 = v735;
      v465 = v736;
      sub_10000AB0C(v735, v736);
      v467 = sub_100119D78();
      v468 = sub_100119DCC();
      sub_100111708(KeyPath, v464, v466, v465, &type metadata for IEEE80211Frame, v467, v1002, v468);

      v993[0] = v1002[0];
      v993[1] = v1002[1];
      v993[2] = v1002[2];
      v993[3] = v1002[3];
      v993[4] = v1002[4];
      *(&v993[4] + 9) = *(&v1002[4] + 9);
      v469 = DWORD2(v1002[0]);
      v470 = HIDWORD(v1002[0]);
      v94 = DWORD1(v1002[1]);
      v65 = DWORD2(v1002[1]);
      *(&v998[2] + 12) = *(&v1002[4] + 8);
      v998[1] = *(&v1002[2] + 12);
      v998[2] = *(&v1002[3] + 12);
      v998[0] = *(&v1002[1] + 12);
      LOBYTE(v53) = BYTE8(v1002[5]);
      if (BYTE8(v1002[5]) == 252)
      {
        v65 = v735;
        v64 = v736;
        goto LABEL_215;
      }

      *&v733 = SLODWORD(v1002[0]);
      v734.i64[0] = LOBYTE(v1002[1]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v606 = *(type metadata accessor for DriverEvent(0) - 8);
      v607 = *(v606 + 72);
      v240 = (*(v606 + 80) + 32) & ~*(v606 + 80);
      v30 = swift_allocObject();
      *(v30 + 1) = xmmword_100480F40;
      v995[2] = v1002[2];
      v995[3] = v1002[3];
      v995[4] = v1002[4];
      *(&v995[4] + 9) = *(&v1002[4] + 9);
      v995[0] = v1002[0];
      v995[1] = v1002[1];
      sub_100012400(v995, v994, &qword_10058C818, &qword_100482058);
      v608 = sub_100032064(v469, v470);
      if ((v608 & 0xFF00000000) != 0x300000000)
      {
        v609 = HIDWORD(v608);
        v610 = v608 >> 40;
        goto LABEL_230;
      }

      if (qword_10058AAA8 != -1)
      {
        goto LABEL_267;
      }

      goto LABEL_200;
    case 98:
      v65 = v735;
      v64 = v736;
      v110 = v43;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v111 = Logger.logObject.getter();
      v112 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v111, v112))
      {
        v113 = swift_slowAlloc();
        v114 = swift_slowAlloc();
        *&v994[0] = v114;
        *v113 = 136315138;
        *(v113 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v111, v112, "nan_event: %s APPLE80211_M_NAN_FOLLOW_UP_TX_COMPLETE", v113, 0xCu);
        sub_100002A00(v114);
      }

      v94 = v730;
      (*(v729 + 8))(v110, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_follow_up_tx_complete_event_data(0);
      sub_100112214(v65, v64, v115, v993);
      if (BYTE4(v993[1]))
      {
        goto LABEL_217;
      }

      v116 = v993[1];
      v117 = *(&v993[0] + 1);
      v118 = v993[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v119 = *(type metadata accessor for DriverEvent(0) - 8);
      v120 = *(v119 + 72);
      v121 = v64;
      v122 = (*(v119 + 80) + 32) & ~*(v119 + 80);
      v123 = swift_allocObject();
      *(v123 + 16) = xmmword_100480F40;
      *&v994[0] = sub_100112548(v118, v117, v116);
      BYTE8(v994[0]) = v124;
      sub_1000B24D4(v994);
      memcpy((v123 + v122), v994, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v65, v121);
      return v123;
    case 99:
      v213 = v39;
      v214 = swift_getKeyPath();
      v215 = swift_getKeyPath();
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      v216 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v217 = sub_100119E20();
      v218 = sub_100119DCC();
      sub_100111708(v214, v215, v65, v64, v216, v217, v993, v218);

      if (!*&v993[2])
      {
        goto LABEL_215;
      }

      v727 = *&v993[2];
      v726 = *(&v993[0] + 1);
      v219 = *&v993[0];
      v220 = HIBYTE(*&v993[0]);
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v221 = swift_allocObject();
      *(v221 + 16) = xmmword_1004817D0;
      *(v221 + 56) = &type metadata for UInt8;
      *(v221 + 64) = &protocol witness table for UInt8;
      v728 = v219 >> 16;
      *(v221 + 32) = BYTE2(v219);
      *(v221 + 96) = &type metadata for UInt8;
      *(v221 + 104) = &protocol witness table for UInt8;
      *&v731 = v219 >> 24;
      *(v221 + 72) = BYTE3(v219);
      *(v221 + 136) = &type metadata for UInt8;
      *(v221 + 144) = &protocol witness table for UInt8;
      *&v732 = HIDWORD(v219);
      *(v221 + 112) = BYTE4(v219);
      *(v221 + 176) = &type metadata for UInt8;
      *(v221 + 184) = &protocol witness table for UInt8;
      *&v733 = v219 >> 40;
      *(v221 + 152) = BYTE5(v219);
      *(v221 + 216) = &type metadata for UInt8;
      *(v221 + 224) = &protocol witness table for UInt8;
      v734.i64[0] = HIWORD(v219);
      *(v221 + 192) = BYTE6(v219);
      *(v221 + 256) = &type metadata for UInt8;
      *(v221 + 264) = &protocol witness table for UInt8;
      *(v221 + 232) = v220;
      v222 = String.init(format:_:)();
      v224 = v223;
      Logger.init(subsystem:category:)();

      v225 = Logger.logObject.getter();
      v226 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v225, v226))
      {
        v227 = swift_slowAlloc();
        v228 = swift_slowAlloc();
        v725 = HIBYTE(v219);
        *&v994[0] = v228;
        *v227 = 136315394;
        *(v227 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        *(v227 + 12) = 2080;
        v229 = sub_100002320(v222, v224, v994);

        *(v227 + 14) = v229;
        _os_log_impl(&_mh_execute_header, v225, v226, "nan_event: %s APPLE80211_M_NAN_DISCOVERY_RESULT_RECEIVED from %s", v227, 0x16u);
        swift_arrayDestroy();
        LOBYTE(v220) = v725;
      }

      else
      {
      }

      (*(v729 + 8))(v213, v730);
      v623 = v727;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v624 = *(type metadata accessor for DriverEvent(0) - 8);
      v625 = *(v624 + 72);
      v520 = (*(v624 + 80) + 32) & ~*(v624 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      LOWORD(v994[0]) = v219;
      BYTE2(v994[0]) = v728;
      BYTE3(v994[0]) = v731;
      BYTE4(v994[0]) = v732;
      BYTE5(v994[0]) = v733;
      BYTE6(v994[0]) = v734.i8[0];
      BYTE7(v994[0]) = v220;
      *(&v994[0] + 1) = v726;
      *&v994[1] = v623;
      sub_1000B2574(v994);
      goto LABEL_206;
    case 101:
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v137 = Logger.logObject.getter();
      v138 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v137, v138))
      {
        v139 = swift_slowAlloc();
        v140 = swift_slowAlloc();
        *&v994[0] = v140;
        *v139 = 136315138;
        *(v139 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v137, v138, "nan_event: %s APPLE80211_M_NAN_PUBLISH_REPLIED_PRIVATE", v139, 0xCu);
        sub_100002A00(v140);
      }

      (*(v729 + 8))(v36, v730);
      v141 = swift_getKeyPath();
      v142 = swift_getKeyPath();
      v143 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v144 = sub_100119E20();
      v145 = sub_100119DCC();
      sub_100111708(v141, v142, v65, v64, v143, v144, v993, v145);

      v146 = *&v993[2];
      if (!*&v993[2])
      {
        goto LABEL_155;
      }

      v147 = v993[0];
      v148 = *&v993[0] >> 8;
      v734.i64[0] = SBYTE8(v993[0]);
      v149 = *&v993[0] >> 16;
      *&v730 = *&v993[0] >> 24;
      *&v731 = HIDWORD(*&v993[0]);
      *&v732 = *&v993[0] >> 40;
      *&v733 = HIWORD(*&v993[0]);
      v150 = HIBYTE(*&v993[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v151 = *(type metadata accessor for DriverEvent(0) - 8);
      v152 = *(v151 + 72);
      v153 = (*(v151 + 80) + 32) & ~*(v151 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      LOBYTE(v994[0]) = v147;
      BYTE1(v994[0]) = v150;
      BYTE2(v994[0]) = v148;
      BYTE3(v994[0]) = v149;
      BYTE4(v994[0]) = v730;
      BYTE5(v994[0]) = v731;
      BYTE6(v994[0]) = v732;
      BYTE7(v994[0]) = v733;
      *(&v994[0] + 1) = v734.i64[0];
      *&v994[1] = v146;
      sub_1000B2568(v994);
      memcpy((v99 + v153), v994, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v154 = v65;
      goto LABEL_208;
    case 103:
      v65 = v735;
      v64 = v736;
      v307 = v45;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v308 = Logger.logObject.getter();
      v309 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v308, v309))
      {
        v310 = swift_slowAlloc();
        v311 = swift_slowAlloc();
        *&v994[0] = v311;
        *v310 = 136315138;
        *(v310 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v308, v309, "nan_event: %s APPLE80211_M_NAN_PUBLISH_TERMINATED", v310, 0xCu);
        sub_100002A00(v311);
      }

      v94 = v730;
      (*(v729 + 8))(v307, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_publish_terminated_event_data(0);
      sub_100112214(v65, v64, v312, v993);
      if (BYTE2(v993[0]))
      {
        goto LABEL_217;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v313 = *(type metadata accessor for DriverEvent(0) - 8);
      v314 = *(v313 + 72);
      v133 = (*(v313 + 80) + 32) & ~*(v313 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      sub_1001124DC();
      LOBYTE(v994[0]) = v315;
      *(&v994[0] + 1) = v316;
      LOBYTE(v994[1]) = v317;
      sub_1000B24EC(v994);
      goto LABEL_73;
    case 104:
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      v125 = v727;
      Logger.init(subsystem:category:)();
      v126 = Logger.logObject.getter();
      v127 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v126, v127))
      {
        v128 = swift_slowAlloc();
        v129 = swift_slowAlloc();
        *&v994[0] = v129;
        *v128 = 136315138;
        *(v128 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v126, v127, "nan_event: %s APPLE80211_M_NAN_SUBSCRIBE_TERMINATED", v128, 0xCu);
        sub_100002A00(v129);
      }

      v94 = v730;
      (*(v729 + 8))(v125, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_subscribe_terminated_event_data(0);
      sub_100112214(v65, v64, v130, v993);
      if (BYTE2(v993[0]))
      {
        goto LABEL_217;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v131 = *(type metadata accessor for DriverEvent(0) - 8);
      v132 = *(v131 + 72);
      v133 = (*(v131 + 80) + 32) & ~*(v131 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      sub_1001124DC();
      LOBYTE(v994[0]) = v134;
      *(&v994[0] + 1) = v135;
      LOBYTE(v994[1]) = v136;
      sub_1000B24F8(v994);
LABEL_73:
      memcpy((v99 + v133), v994, 0x16AuLL);
      goto LABEL_239;
    case 105:
      v65 = v735;
      v64 = v736;
      v502 = v44;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v503 = Logger.logObject.getter();
      v504 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v503, v504))
      {
        v505 = swift_slowAlloc();
        v506 = swift_slowAlloc();
        *&v994[0] = v506;
        *v505 = 136315138;
        *(v505 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v503, v504, "nan_event: %s APPLE80211_M_NAN_FOLLOW_UP_RECEIVED", v505, 0xCu);
        sub_100002A00(v506);
      }

      (*(v729 + 8))(v502, v730);
      v507 = swift_getKeyPath();
      v508 = swift_getKeyPath();
      v509 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v510 = sub_100119E20();
      v511 = sub_100119DCC();
      sub_100111708(v507, v508, v65, v64, v509, v510, v993, v511);

      v512 = *&v993[2];
      if (!*&v993[2])
      {
        goto LABEL_155;
      }

      v513 = v993[0];
      v514 = *&v993[0] >> 8;
      v734.i64[0] = SBYTE8(v993[0]);
      v515 = *&v993[0] >> 16;
      v516 = *&v993[0] >> 24;
      v517 = HIDWORD(*&v993[0]);
      *&v731 = *&v993[0] >> 40;
      *&v732 = HIWORD(*&v993[0]);
      *&v733 = HIBYTE(*&v993[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v518 = *(type metadata accessor for DriverEvent(0) - 8);
      v519 = *(v518 + 72);
      v520 = (*(v518 + 80) + 32) & ~*(v518 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      LOBYTE(v994[0]) = v513;
      BYTE1(v994[0]) = v514;
      BYTE2(v994[0]) = v515;
      BYTE3(v994[0]) = v516;
      BYTE4(v994[0]) = v517;
      BYTE5(v994[0]) = v731;
      BYTE6(v994[0]) = v732;
      BYTE7(v994[0]) = v733;
      *(&v994[0] + 1) = v734.i64[0];
      *&v994[1] = v512;
      sub_1000B24E0(v994);
LABEL_206:
      memcpy((v99 + v520), v994, 0x16AuLL);
      goto LABEL_207;
    case 111:
      v65 = v735;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v483 = Logger.logObject.getter();
      v484 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v483, v484))
      {
        v485 = swift_slowAlloc();
        v486 = swift_slowAlloc();
        *&v994[0] = v486;
        *v485 = 136315138;
        *(v485 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v483, v484, "nan_event: %s APPLE80211_M_NAN_DP_REQ_RECVD", v485, 0xCu);
        sub_100002A00(v486);
      }

      v487 = v730;
      (*(v729 + 8))(v34);
      v488 = swift_getKeyPath();
      v489 = swift_getKeyPath();
      v490 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v491 = sub_100119E20();
      v492 = sub_100119DCC();
      v64 = v736;
      sub_100111708(v488, v489, v65, v736, v490, v491, v993, v492);

      v493 = *(&v993[1] + 1);
      if (!*(&v993[1] + 1))
      {
        v90 = v731;
        v94 = v487;
        goto LABEL_217;
      }

      v494 = BYTE8(v993[0]);
      v495 = v993[0];
      v496 = *&v993[0] >> 8;
      v497 = *&v993[0] >> 24;
      v498 = HIDWORD(*&v993[0]);
      v726 = (*&v993[0] >> 40);
      v727 = HIWORD(*&v993[0]);
      v728 = HIBYTE(*&v993[0]);
      v729 = *(&v993[0] + 1) >> 8;
      *&v730 = *(&v993[0] + 1) >> 16;
      *&v731 = *(&v993[0] + 1) >> 24;
      *&v732 = HIDWORD(*(&v993[0] + 1));
      *&v733 = *(&v993[0] + 1) >> 40;
      v734.i64[0] = HIWORD(*(&v993[0] + 1));
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v499 = *(type metadata accessor for DriverEvent(0) - 8);
      v500 = *(v499 + 72);
      v501 = (*(v499 + 80) + 32) & ~*(v499 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      LOBYTE(v994[0]) = v495;
      BYTE1(v994[0]) = v496;
      BYTE2(v994[0]) = v497;
      BYTE3(v994[0]) = v498;
      BYTE4(v994[0]) = v726;
      BYTE5(v994[0]) = v727;
      BYTE6(v994[0]) = v728;
      BYTE7(v994[0]) = v494;
      BYTE8(v994[0]) = v729;
      BYTE9(v994[0]) = v730;
      BYTE10(v994[0]) = v731;
      BYTE11(v994[0]) = v732;
      BYTE12(v994[0]) = v733;
      BYTE13(v994[0]) = v734.i8[0];
      *&v994[1] = v493;
      sub_1000B255C(v994);
      memcpy((v99 + v501), v994, 0x16AuLL);
LABEL_207:
      swift_storeEnumTagMultiPayload();
      v154 = v735;
LABEL_208:
      v199 = v736;
LABEL_240:
      sub_1000124C8(v154, v199);
      return v99;
    case 112:
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v180 = Logger.logObject.getter();
      v181 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v180, v181))
      {
        v182 = swift_slowAlloc();
        v183 = swift_slowAlloc();
        *&v994[0] = v183;
        *v182 = 136315138;
        *(v182 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v180, v181, "nan_event: %s APPLE80211_M_NAN_DP_RSP_RECVD", v182, 0xCu);
        sub_100002A00(v183);
      }

      (*(v729 + 8))(v32, v730);
      v184 = swift_getKeyPath();
      v185 = swift_getKeyPath();
      v186 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v187 = sub_100119E20();
      v188 = sub_100119DCC();
      sub_100111708(v184, v185, v65, v64, v186, v187, v993, v188);

      v189 = *(&v993[1] + 1);
      if (!*(&v993[1] + 1))
      {
        goto LABEL_155;
      }

      v190 = v993[1];
      v191 = *&v993[1] >> 8;
      v192 = v64;
      v193 = *&v993[1] >> 16;
      v194 = *&v993[1] >> 24;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v195 = *(type metadata accessor for DriverEvent(0) - 8);
      v196 = *(v195 + 72);
      v197 = (*(v195 + 80) + 32) & ~*(v195 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      v198 = vdupq_lane_s64(*&v993[0], 0);
      LOBYTE(v994[0]) = v993[0];
      *(v994 + 1) = vmovn_s16(vuzp1q_s16(vuzp1q_s32(vshlq_u64(v198, xmmword_1004817A0), vshlq_u64(v198, xmmword_100481790)), vuzp1q_s32(vshlq_u64(v198, xmmword_1004817C0), vshlq_u64(v993[0], xmmword_1004817B0))));
      BYTE9(v994[0]) = HIBYTE(v993[0]);
      BYTE10(v994[0]) = v190;
      BYTE11(v994[0]) = v191;
      BYTE12(v994[0]) = v193;
      BYTE13(v994[0]) = v194;
      *(v994 + 14) = DWORD2(v993[0]);
      WORD1(v994[1]) = WORD6(v993[0]);
      *(&v994[1] + 1) = v189;
      sub_1000B2550(v994);
      memcpy((v99 + v197), v994, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v154 = v735;
      v199 = v192;
      goto LABEL_240;
    case 113:
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v257 = Logger.logObject.getter();
      v258 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v257, v258))
      {
        v259 = swift_slowAlloc();
        v260 = swift_slowAlloc();
        *&v994[0] = v260;
        *v259 = 136315138;
        *(v259 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v257, v258, "nan_event: %s APPLE80211_M_NAN_DP_CONFIRM_RECVD", v259, 0xCu);
        sub_100002A00(v260);
      }

      (*(v729 + 8))(v30, v730);
      v261 = swift_getKeyPath();
      v262 = swift_getKeyPath();
      v263 = sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
      v264 = sub_100119E20();
      v265 = sub_100119DCC();
      sub_100111708(v261, v262, v65, v64, v263, v264, v993, v265);

      v266 = *&v993[1];
      if (!*&v993[1])
      {
LABEL_155:
        v90 = v731;
        v94 = v730;
        goto LABEL_217;
      }

      v267 = *(&v993[0] + 1);
      v268 = v993[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v269 = *(type metadata accessor for DriverEvent(0) - 8);
      v270 = *(v269 + 72);
      v176 = v64;
      v271 = (*(v269 + 80) + 32) & ~*(v269 + 80);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_100480F40;
      v272 = sub_100112384(v266, v268, v267);
      v274 = v273;
      v276 = v275;

      *&v994[0] = v272;
      *(&v994[0] + 1) = v274;
      *&v994[1] = v276;
      sub_1000B2544(v994);
      memcpy((v160 + v271), v994, 0x16AuLL);
LABEL_58:
      swift_storeEnumTagMultiPayload();
      v277 = v65;
      v278 = v176;
      goto LABEL_79;
    case 116:
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v365 = Logger.logObject.getter();
      v366 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v365, v366))
      {
        v367 = swift_slowAlloc();
        v368 = swift_slowAlloc();
        *&v994[0] = v368;
        *v367 = 136315138;
        *(v367 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v365, v366, "nan_event: %s APPLE80211_M_NAN_DP_ESTABLISHED", v367, 0xCu);
        sub_100002A00(v368);
      }

      v369 = v28;
      v94 = v730;
      (*(v729 + 8))(v369, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_data_path_established_event_data(0);
      sub_100112214(v65, v64, v370, v993);
      memcpy(v994, v993, 0x821uLL);
      if (sub_1000B251C(v994) == 1)
      {
        goto LABEL_217;
      }

      memcpy(v1002, v994, sizeof(v1002));
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v371 = *(type metadata accessor for DriverEvent(0) - 8);
      v372 = *(v371 + 72);
      v373 = (*(v371 + 80) + 32) & ~*(v371 + 80);
      v30 = swift_allocObject();
      *(v30 + 1) = xmmword_100480F40;
      *&v995[0] = sub_1001123DC();
      DWORD2(v995[0]) = v374;
      WORD6(v995[0]) = v375;
      sub_1000B2538(v995);
      goto LABEL_135;
    case 117:
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v279 = Logger.logObject.getter();
      v280 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v279, v280))
      {
        v281 = swift_slowAlloc();
        v282 = swift_slowAlloc();
        *&v994[0] = v282;
        *v281 = 136315138;
        *(v281 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v279, v280, "nan_event: %s APPLE80211_M_NAN_DP_END", v281, 0xCu);
        sub_100002A00(v282);
      }

      v94 = v730;
      (*(v729 + 8))(v26, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_data_path_end_event_data(0);
      sub_100112214(v65, v64, v283, v993);
      if (BYTE12(v993[1]))
      {
        goto LABEL_217;
      }

      v284 = *(&v993[0] + 1);
      v285 = v993[0];
      v286 = HIDWORD(*&v993[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v287 = type metadata accessor for DriverEvent(0);
      v288 = *(*(v287 - 8) + 72);
      v289 = (*(*(v287 - 8) + 80) + 32) & ~*(*(v287 - 8) + 80);
      v290 = swift_allocObject();
      *(v290 + 16) = xmmword_100480F40;
      v734.i64[0] = v290;
      *&v733 = v287;
      if (v286 > 0x16)
      {
        v291 = 3;
      }

      else
      {
        v291 = qword_100487580[v286];
      }

      *&v732 = v291;
      v639 = sub_10011465C(v286);
      LOBYTE(v994[0]) = v285;
      *(v994 + 1) = v284;
      BYTE3(v994[0]) = BYTE2(v284);
      BYTE4(v994[0]) = BYTE3(v284);
      BYTE5(v994[0]) = BYTE4(v284);
      WORD3(v994[0]) = BYTE5(v284);
      *(&v994[0] + 1) = v732;
      LOBYTE(v994[1]) = v639;
      sub_1000B2510(v994);
      v82 = v734.i64[0];
      memcpy((v734.i64[0] + v289), v994, 0x16AuLL);
      goto LABEL_224;
    case 121:
      type metadata accessor for apple80211_nan_dw_start_event_data(0);
      v540 = v539;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v540, v994);
      if (BYTE8(v994[4]))
      {
        goto LABEL_215;
      }

      v734.i64[0] = WORD1(v994[4]);
      v541 = LOWORD(v994[4]);
      v542 = DWORD1(v994[3]);
      v543 = LODWORD(v994[3]);
      v544 = HIDWORD(v994[3]);
      v545 = DWORD2(v994[3]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v546 = *(type metadata accessor for DriverEvent(0) - 8);
      v547 = *(v546 + 72);
      v548 = (*(v546 + 80) + 32) & ~*(v546 + 80);
      v30 = swift_allocObject();
      *(v30 + 1) = xmmword_100480F40;
      v549 = v542 | (v543 << 32);
      v550 = sub_10003B238(v541);
      if ((v550 & 0xFF00000000) == 0x300000000)
      {
        if (qword_10058AAA8 != -1)
        {
          swift_once();
        }

        LODWORD(v550) = static Channel.nanPrimary;
        LOBYTE(v551) = byte_10059B634;
        LOBYTE(v552) = byte_10059B635;
      }

      else
      {
        v551 = HIDWORD(v550);
        v552 = v550 >> 40;
      }

      v645 = v735;
      v644 = v736;
      *&v994[0] = v734.i64[0];
      *(&v994[0] + 1) = v549;
      *&v994[1] = v544 | (v545 << 32);
      DWORD2(v994[1]) = v550;
      BYTE12(v994[1]) = v551;
      BYTE13(v994[1]) = v552;
      sub_1000B2488(v994);
      memcpy(&v30[v548], v994, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v397 = v645;
      v398 = v644;
      goto LABEL_137;
    case 123:
      type metadata accessor for apple80211_nan_channel_boundary_event_data(0);
      v156 = v155;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v156, v993);
      memcpy(v994, v993, 0x301uLL);
      if (sub_1000B2318(v994) == 1)
      {
        goto LABEL_215;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v157 = *(type metadata accessor for DriverEvent(0) - 8);
      v158 = *(v157 + 72);
      v159 = (*(v157 + 80) + 32) & ~*(v157 + 80);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_100480F40;
      v161 = sub_100032064(DWORD1(v994[0]), DWORD2(v994[0]));
      result = sub_100032064(v994[1], DWORD1(v994[1]));
      if ((result & 0xFF00000000) == 0x300000000)
      {
        goto LABEL_270;
      }

      v162 = result;
      v163 = HIDWORD(result);
      v164 = result >> 40;
      v165 = HIDWORD(v994[1]) | (DWORD2(v994[1]) << 32);
      memcpy(v993, &v994[7], 0x290uLL);
      v733 = v994[3];
      v734 = v994[2];
      v731 = v994[5];
      v732 = v994[4];
      v730 = v994[6];
      v166 = sub_100119AF8(v993);
      WORD2(v1002[0]) = WORD2(v161);
      LODWORD(v1002[0]) = v161;
      DWORD2(v1002[0]) = v162;
      BYTE12(v1002[0]) = v163;
      BYTE13(v1002[0]) = v164;
      *(&v1002[1] + 8) = v734;
      *(&v1002[2] + 8) = v733;
      *(&v1002[3] + 8) = v732;
      *(&v1002[4] + 8) = v731;
      *(&v1002[5] + 8) = v730;
      *&v1002[1] = v165;
      *(&v1002[6] + 1) = v166;
      *&v1002[7] = v167;
      *(&v1002[7] + 1) = v168;
      sub_1000B2334(v1002);
      memcpy((v160 + v159), v1002, 0x16AuLL);
      goto LABEL_78;
    case 124:
      type metadata accessor for apple80211_infra_scan_start_event_data(0);
      v447 = v446;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v447, v993);
      memcpy(v994, v993, 0x324uLL);
      if (sub_1000114C8(v994) == 1)
      {
        goto LABEL_215;
      }

      memcpy(v1002, v994, 0x323uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v448 = *(type metadata accessor for DriverEvent(0) - 8);
      v449 = *(v448 + 72);
      v450 = (*(v448 + 80) + 32) & ~*(v448 + 80);
      v30 = swift_allocObject();
      *(v30 + 1) = xmmword_100480F40;
      v451 = &v30[v450];
      *v451 = sub_1000114E4();
      *(v451 + 8) = 0u;
      *(v451 + 24) = 0u;
      *(v451 + 20) = 256;
      goto LABEL_136;
    case 125:
      type metadata accessor for apple80211_infra_scan_complete_event_data(0);
      v534 = v533;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v534, v994);
      if (BYTE2(v994[0]))
      {
        goto LABEL_215;
      }

      v535 = LOBYTE(v994[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v536 = *(type metadata accessor for DriverEvent(0) - 8);
      v537 = *(v536 + 72);
      v538 = (*(v536 + 80) + 32) & ~*(v536 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100480F40;
      v83 = v82 + v538;
      *v83 = v535;
      *(v83 + 8) = 0u;
      *(v83 + 24) = 0u;
      *(v83 + 40) = 0;
      v84 = 2;
      goto LABEL_161;
    case 126:
      type metadata accessor for apple80211_nan_infra_assoc_start_event_data(0);
      v92 = v91;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v92, v994);
      if (BYTE12(v994[0]))
      {
        goto LABEL_215;
      }

      v93 = sub_100032064(DWORD1(v994[0]), DWORD2(v994[0]));
      v94 = v730;
      v90 = v731;
      if ((v93 & 0xFF00000000) == 0x300000000)
      {
        goto LABEL_217;
      }

      v95 = v93;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v96 = *(type metadata accessor for DriverEvent(0) - 8);
      v97 = *(v96 + 72);
      v98 = (*(v96 + 80) + 32) & ~*(v96 + 80);
      v99 = swift_allocObject();
      *(v99 + 16) = xmmword_100480F40;
      v100 = v99 + v98;
      *v100 = v95 & 0xFFFFFFFFFFFFLL;
      *(v100 + 24) = 0u;
      *(v100 + 8) = 0u;
      *(v100 + 40) = 0;
      *(v100 + 41) = 3;
LABEL_239:
      swift_storeEnumTagMultiPayload();
      v154 = v65;
      v199 = v64;
      goto LABEL_240;
    case 128:
      v65 = v735;
      sub_10000AB0C(v735, v736);
      v384 = v726;
      Logger.init(subsystem:category:)();
      v385 = Logger.logObject.getter();
      v386 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v385, v386))
      {
        v387 = swift_slowAlloc();
        v388 = swift_slowAlloc();
        *&v994[0] = v388;
        *v387 = 136315138;
        *(v387 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v385, v386, "nan_event: %s APPLE80211_M_NAN_DP_HOST_ASSIST_REQUEST", v387, 0xCu);
        sub_100002A00(v388);
      }

      v94 = v730;
      (*(v729 + 8))(v384, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_dp_host_assist_event_data(0);
      v64 = v736;
      sub_100112214(v65, v736, v389, v993);
      if (BYTE4(v993[1]))
      {
        goto LABEL_217;
      }

      v390 = *(&v993[0] + 1);
      v391 = v993[0];
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v392 = *(type metadata accessor for DriverEvent(0) - 8);
      v393 = *(v392 + 72);
      v394 = v64;
      v395 = (*(v392 + 80) + 32) & ~*(v392 + 80);
      v30 = swift_allocObject();
      *(v30 + 1) = xmmword_100480F40;
      *&v994[0] = sub_10011243C(v391, v390);
      *(&v994[0] + 1) = v396;
      sub_1000B2504(v994);
      memcpy(&v30[v395], v994, 0x16AuLL);
      swift_storeEnumTagMultiPayload();
      v397 = v65;
      v398 = v394;
      goto LABEL_137;
    case 141:
      type metadata accessor for apple80211_awdl_low_latency_statistics_reduced(0);
      v86 = v85;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v86, v995);
      memcpy(v1002, v995, 0x658uLL);
      memcpy(v993, v995, 0x658uLL);
      if (sub_1000B242C(v993) == 1)
      {
        v88 = v723;
        v87 = v724;
        v89 = v725;
        (*(v723 + 56))(v725, 1, 1, v724);
        v90 = v731;
      }

      else
      {
        memcpy(v994, v1002, 0x658uLL);
        v89 = v725;
        sub_10011298C(v994, v725);
        v90 = v731;
        v88 = v723;
        v87 = v724;
      }

      v598 = (*(v88 + 48))(v89, 1, v87);
      v94 = v730;
      if (v598 == 1)
      {
        sub_100016290(v89, &qword_10058C7E8, &unk_100481FF0);
        goto LABEL_217;
      }

      v599 = v722;
      sub_100038FEC(v89, v722, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v600 = *(type metadata accessor for DriverEvent(0) - 8);
      v601 = *(v600 + 72);
      v602 = (*(v600 + 80) + 32) & ~*(v600 + 80);
      v603 = swift_allocObject();
      *(v603 + 16) = xmmword_100480F40;
      sub_100119FA0(v599, v603 + v602, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v65, v64);
      sub_10003B8D4(v599, type metadata accessor for AWDLStatistics.LowLatencyStatistics);
      return v603;
    case 148:
      type metadata accessor for apple80211_p2p_airplay_statistics(0);
      v63 = v62;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v63, v995);
      v1002[10] = v995[10];
      v1002[11] = v995[11];
      v1002[12] = v995[12];
      v1002[6] = v995[6];
      v1002[7] = v995[7];
      v1002[8] = v995[8];
      v1002[9] = v995[9];
      v1002[2] = v995[2];
      v1002[3] = v995[3];
      v1002[4] = v995[4];
      v1002[5] = v995[5];
      v1002[0] = v995[0];
      v1002[1] = v995[1];
      v993[10] = v995[10];
      v993[11] = v995[11];
      v993[12] = v995[12];
      v993[6] = v995[6];
      v993[7] = v995[7];
      v993[8] = v995[8];
      v993[9] = v995[9];
      v993[2] = v995[2];
      v993[3] = v995[3];
      v993[4] = v995[4];
      v993[5] = v995[5];
      v993[0] = v995[0];
      v993[1] = v995[1];
      if (sub_1000B2410(v993) == 1)
      {
        goto LABEL_215;
      }

      v994[10] = v1002[10];
      v994[11] = v1002[11];
      v994[12] = v1002[12];
      v994[6] = v1002[6];
      v994[7] = v1002[7];
      v994[8] = v1002[8];
      v994[9] = v1002[9];
      v994[2] = v1002[2];
      v994[3] = v1002[3];
      v994[4] = v1002[4];
      v994[5] = v1002[5];
      v994[0] = v1002[0];
      v994[1] = v1002[1];
      sub_100119410(v994, v998);
      v66 = v999;
      if (!v999)
      {
        goto LABEL_215;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v67 = *(type metadata accessor for DriverEvent(0) - 8);
      v68 = *(v67 + 72);
      v69 = (*(v67 + 80) + 32) & ~*(v67 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100480F40;
      v71 = v70 + v69;
      v72 = v998[4];
      *(v71 + 48) = v998[3];
      *(v71 + 64) = v72;
      v73 = v998[2];
      *(v71 + 16) = v998[1];
      *(v71 + 32) = v73;
      *v71 = v998[0];
      *(v71 + 80) = v66;
      *(v71 + 88) = v1000;
      *(v71 + 104) = v1001;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v74 = v65;
      v75 = v64;
      goto LABEL_158;
    case 156:
      type metadata accessor for apple80211_nan_low_latency_peer_statistics(0);
      v201 = v200;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v201, v993);
      memcpy(v994, v993, sizeof(v994));
      if (sub_1000B2448(v994) == 1)
      {
        goto LABEL_215;
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      *&v733 = type metadata accessor for DriverEvent(0);
      v202 = *(*(v733 - 8) + 72);
      *&v732 = (*(*(v733 - 8) + 80) + 32) & ~*(*(v733 - 8) + 80);
      v734.i64[0] = swift_allocObject();
      *(v734.i64[0] + 16) = xmmword_100480F40;
      LODWORD(v720) = v994[0];
      LODWORD(v719) = BYTE4(v994[0]);
      LODWORD(v718) = BYTE5(v994[0]);
      LODWORD(v717) = BYTE6(v994[0]);
      LODWORD(v723) = LOBYTE(v994[1]);
      LODWORD(v722) = BYTE1(v994[1]);
      LODWORD(v721) = BYTE2(v994[1]);
      LODWORD(v726) = BYTE4(v994[2]);
      LODWORD(v725) = BYTE5(v994[2]);
      LODWORD(v724) = BYTE6(v994[2]);
      LODWORD(v727) = v994[3];
      *&v731 = *(&v994[11] + 1);
      v729 = *&v994[16];
      *&v730 = *&v994[12];
      v728 = *(&v994[16] + 1);
      v974 = *&v994[18];
      v976 = *(&v994[19] + 1);
      v978 = *&v994[21];
      v980 = *(&v994[22] + 1);
      v982 = *&v994[24];
      v984 = *(&v994[25] + 1);
      v986 = *&v994[27];
      v715 = *(&v994[12] + 1);
      v716 = *(&v994[13] + 1);
      v975 = *(&v994[18] + 8);
      v977 = v994[20];
      v979 = *(&v994[21] + 8);
      v981 = v994[23];
      v983 = *(&v994[24] + 8);
      v985 = v994[26];
      v987 = *(&v994[27] + 8);
      v988 = *(&v994[28] + 1);
      v989 = v994[29];
      v991 = *(&v994[30] + 8);
      v973 = v994[17];
      v990 = *&v994[30];
      v992 = *(&v994[31] + 1);
      v713 = *(&v994[5] + 8);
      v714 = *(&v994[3] + 8);
      v709 = *(&v994[6] + 8);
      v710 = *(&v994[4] + 8);
      v711 = *(&v994[9] + 8);
      v712 = *(&v994[7] + 8);
      v707 = *(&v994[10] + 8);
      v708 = *(&v994[8] + 8);
      v203 = *(&v994[2] + 1);
      v204 = *(&v994[1] + 4);
      v205 = *(&v994[0] + 1);
      v704 = v994[2];
      v705 = HIDWORD(v994[1]);
      v706 = sub_100115324(&v973);
      v953 = v994[47];
      v955 = *(&v994[48] + 8);
      v954 = *&v994[48];
      v956 = *(&v994[49] + 1);
      v957 = v994[50];
      v959 = *(&v994[51] + 8);
      v958 = *&v994[51];
      v960 = *(&v994[52] + 1);
      v961 = v994[53];
      v963 = *(&v994[54] + 8);
      v962 = *&v994[54];
      v964 = *(&v994[55] + 1);
      v965 = v994[56];
      v967 = *(&v994[57] + 8);
      v966 = *&v994[57];
      v968 = *(&v994[58] + 1);
      v969 = v994[59];
      v971 = *(&v994[60] + 8);
      v970 = *&v994[60];
      v972 = *(&v994[61] + 1);
      v703 = sub_100115324(&v953);
      v933 = v994[62];
      v935 = *(&v994[63] + 8);
      v934 = *&v994[63];
      v936 = *(&v994[64] + 1);
      v937 = v994[65];
      v939 = *(&v994[66] + 8);
      v938 = *&v994[66];
      v940 = *(&v994[67] + 1);
      v941 = v994[68];
      v943 = *(&v994[69] + 8);
      v942 = *&v994[69];
      v944 = *(&v994[70] + 1);
      v945 = v994[71];
      v947 = *(&v994[72] + 8);
      v946 = *&v994[72];
      v948 = *(&v994[73] + 1);
      v949 = v994[74];
      v951 = *(&v994[75] + 8);
      v950 = *&v994[75];
      v952 = *(&v994[76] + 1);
      v702 = sub_100115324(&v933);
      v913 = v994[77];
      v915 = *(&v994[78] + 8);
      v914 = *&v994[78];
      v916 = *(&v994[79] + 1);
      v917 = v994[80];
      v919 = *(&v994[81] + 8);
      v918 = *&v994[81];
      v920 = *(&v994[82] + 1);
      v921 = v994[83];
      v923 = *(&v994[84] + 8);
      v922 = *&v994[84];
      v924 = *(&v994[85] + 1);
      v925 = v994[86];
      v927 = *(&v994[87] + 8);
      v926 = *&v994[87];
      v928 = *(&v994[88] + 1);
      v929 = v994[89];
      v931 = *(&v994[90] + 8);
      v930 = *&v994[90];
      v932 = *(&v994[91] + 1);
      v701 = sub_100115324(&v913);
      v893 = v994[92];
      v895 = *(&v994[93] + 8);
      v894 = *&v994[93];
      v896 = *(&v994[94] + 1);
      v897 = v994[95];
      v899 = *(&v994[96] + 8);
      v898 = *&v994[96];
      v900 = *(&v994[97] + 1);
      v901 = v994[98];
      v903 = *(&v994[99] + 8);
      v902 = *&v994[99];
      v904 = *(&v994[100] + 1);
      v905 = v994[101];
      v907 = *(&v994[102] + 8);
      v906 = *&v994[102];
      v908 = *(&v994[103] + 1);
      v909 = v994[104];
      v911 = *(&v994[105] + 8);
      v910 = *&v994[105];
      v912 = *(&v994[106] + 1);
      v700 = sub_100115324(&v893);
      v873 = *(&v994[156] + 8);
      v875 = v994[158];
      v874 = *(&v994[157] + 1);
      v876 = *&v994[159];
      v877 = *(&v994[159] + 8);
      v879 = v994[161];
      v878 = *(&v994[160] + 1);
      v880 = *&v994[162];
      v881 = *(&v994[162] + 8);
      v883 = v994[164];
      v882 = *(&v994[163] + 1);
      v884 = *&v994[165];
      v885 = *(&v994[165] + 8);
      v887 = v994[167];
      v886 = *(&v994[166] + 1);
      v888 = *&v994[168];
      v889 = *(&v994[168] + 8);
      v891 = v994[170];
      v890 = *(&v994[169] + 1);
      v892 = *&v994[171];
      v699 = sub_100115324(&v873);
      v861 = v994[107];
      v863 = *(&v994[108] + 8);
      v862 = *&v994[108];
      v864 = *(&v994[109] + 1);
      v865 = v994[110];
      v867 = *(&v994[111] + 8);
      v866 = *&v994[111];
      v868 = *(&v994[112] + 1);
      v869 = v994[113];
      v871 = *(&v994[114] + 8);
      v870 = *&v994[114];
      v872 = *(&v994[115] + 1);
      v698 = sub_1001154AC(&v861);
      v843 = v994[116];
      v845 = *(&v994[117] + 8);
      v844 = *&v994[117];
      v846 = *(&v994[118] + 1);
      v847 = v994[119];
      v849 = *(&v994[120] + 8);
      v848 = *&v994[120];
      v850 = *(&v994[121] + 1);
      v851 = v994[122];
      v853 = *(&v994[123] + 8);
      v852 = *&v994[123];
      v854 = *(&v994[124] + 1);
      v855 = v994[125];
      v857 = *(&v994[126] + 8);
      v856 = *&v994[126];
      v858 = *(&v994[127] + 1);
      v859 = v994[128];
      v860 = *&v994[129];
      v206 = sub_1001156EC(&v843);
      v825 = *(&v994[129] + 8);
      v827 = v994[131];
      v826 = *(&v994[130] + 1);
      v828 = *&v994[132];
      v829 = *(&v994[132] + 8);
      v831 = v994[134];
      v830 = *(&v994[133] + 1);
      v832 = *&v994[135];
      v833 = *(&v994[135] + 8);
      v835 = v994[137];
      v834 = *(&v994[136] + 1);
      v836 = *&v994[138];
      v837 = *(&v994[138] + 8);
      v839 = v994[140];
      v838 = *(&v994[139] + 1);
      v840 = *&v994[141];
      v841 = *(&v994[141] + 8);
      v842 = *(&v994[142] + 1);
      v207 = sub_1001156EC(&v825);
      v805 = v994[176];
      v807 = *(&v994[177] + 8);
      v806 = *&v994[177];
      v808 = *(&v994[178] + 1);
      v809 = v994[179];
      v811 = *(&v994[180] + 8);
      v810 = *&v994[180];
      v812 = *(&v994[181] + 1);
      v813 = v994[182];
      v815 = *(&v994[183] + 8);
      v814 = *&v994[183];
      v816 = *(&v994[184] + 1);
      v817 = v994[185];
      v819 = *(&v994[186] + 8);
      v818 = *&v994[186];
      v820 = *(&v994[187] + 1);
      v821 = v994[188];
      v823 = *(&v994[189] + 8);
      v822 = *&v994[189];
      v824 = *(&v994[190] + 1);
      v208 = sub_100115324(&v805);
      v785 = v994[191];
      v787 = *(&v994[192] + 8);
      v786 = *&v994[192];
      v788 = *(&v994[193] + 1);
      v789 = v994[194];
      v791 = *(&v994[195] + 8);
      v790 = *&v994[195];
      v792 = *(&v994[196] + 1);
      v793 = v994[197];
      v795 = *(&v994[198] + 8);
      v794 = *&v994[198];
      v796 = *(&v994[199] + 1);
      v797 = v994[200];
      v799 = *(&v994[201] + 8);
      v798 = *&v994[201];
      v800 = *(&v994[202] + 1);
      v801 = v994[203];
      v803 = *(&v994[204] + 8);
      v802 = *&v994[204];
      v804 = *(&v994[205] + 1);
      v209 = sub_100115324(&v785);
      v765 = v994[206];
      v767 = *(&v994[207] + 8);
      v766 = *&v994[207];
      v768 = *(&v994[208] + 1);
      v769 = v994[209];
      v771 = *(&v994[210] + 8);
      v770 = *&v994[210];
      v772 = *(&v994[211] + 1);
      v773 = v994[212];
      v775 = *(&v994[213] + 8);
      v774 = *&v994[213];
      v776 = *(&v994[214] + 1);
      v777 = v994[215];
      v779 = *(&v994[216] + 8);
      v778 = *&v994[216];
      v780 = *(&v994[217] + 1);
      v781 = v994[218];
      v783 = *(&v994[219] + 8);
      v782 = *&v994[219];
      v784 = *(&v994[220] + 1);
      v210 = sub_100115324(&v765);
      v745 = v994[221];
      v747 = *(&v994[222] + 8);
      v746 = *&v994[222];
      v748 = *(&v994[223] + 1);
      v749 = v994[224];
      v751 = *(&v994[225] + 8);
      v750 = *&v994[225];
      v752 = *(&v994[226] + 1);
      v753 = v994[227];
      v755 = *(&v994[228] + 8);
      v754 = *&v994[228];
      v756 = *(&v994[229] + 1);
      v757 = v994[230];
      v759 = *(&v994[231] + 8);
      v758 = *&v994[231];
      v760 = *(&v994[232] + 1);
      v761 = v994[233];
      v763 = *(&v994[234] + 8);
      v762 = *&v994[234];
      v764 = *(&v994[235] + 1);
      v211 = sub_100115324(&v745);
      v737 = v994[236];
      v738 = *&v994[237];
      v739 = *(&v994[237] + 8);
      v740 = *(&v994[238] + 1);
      v741 = v994[239];
      v742 = *&v994[240];
      v743 = *(&v994[240] + 8);
      v744 = *(&v994[241] + 1);
      v212 = sub_100115864(&v737);
      LODWORD(v1002[0]) = v720;
      BYTE4(v1002[0]) = v719;
      BYTE5(v1002[0]) = v718;
      BYTE6(v1002[0]) = v717;
      *(&v1002[0] + 1) = v205;
      LOBYTE(v1002[1]) = v723;
      BYTE1(v1002[1]) = v722;
      WORD1(v1002[1]) = v721;
      *(&v1002[1] + 4) = v204;
      HIDWORD(v1002[1]) = v705;
      LODWORD(v1002[2]) = v704;
      BYTE4(v1002[2]) = v726;
      BYTE5(v1002[2]) = v725;
      BYTE6(v1002[2]) = v724;
      *(&v1002[2] + 1) = v203;
      LODWORD(v1002[3]) = v727;
      *(&v1002[4] + 8) = v710;
      *(&v1002[3] + 8) = v714;
      *(&v1002[6] + 8) = v709;
      *(&v1002[5] + 8) = v713;
      *(&v1002[8] + 8) = v708;
      *(&v1002[7] + 8) = v712;
      *(&v1002[10] + 8) = v707;
      *(&v1002[9] + 8) = v711;
      *(&v1002[11] + 1) = v731;
      *&v1002[12] = v730;
      *(&v1002[12] + 1) = v715;
      *&v1002[13] = v729;
      *(&v1002[13] + 1) = v728;
      *&v1002[14] = v716;
      *(&v1002[14] + 1) = v706;
      *&v1002[15] = v703;
      *(&v1002[15] + 1) = v702;
      *&v1002[16] = v701;
      *(&v1002[16] + 1) = v700;
      *&v1002[17] = v699;
      *(&v1002[17] + 1) = v698;
      *&v1002[18] = v206;
      *(&v1002[18] + 1) = v207;
      *&v1002[19] = v208;
      *(&v1002[19] + 1) = v209;
      *&v1002[20] = v210;
      *(&v1002[20] + 1) = v211;
      v1002[21] = v212;
      *&v1002[22] = 0;
      BYTE8(v1002[22]) = 0;
      sub_1000B2464(v1002);
      v82 = v734.i64[0];
      memcpy((v734.i64[0] + v732), v1002, 0x16AuLL);
LABEL_224:
      swift_storeEnumTagMultiPayload();
      v305 = v735;
      v306 = v736;
      goto LABEL_225;
    case 157:
      v65 = v735;
      v64 = v736;
      v318 = v42;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v319 = Logger.logObject.getter();
      v320 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v319, v320))
      {
        v321 = swift_slowAlloc();
        v322 = swift_slowAlloc();
        *&v994[0] = v322;
        *v321 = 136315138;
        *(v321 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v319, v320, "nan_event: %s APPLE80211_M_NAN_OOB_AF_TX_STATUS", v321, 0xCu);
        sub_100002A00(v322);
      }

      v94 = v730;
      (*(v729 + 8))(v318, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_oob_act_frm_tx_status(0);
      sub_100112214(v65, v64, v323, v993);
      if (BYTE10(v993[0]))
      {
        goto LABEL_217;
      }

      v324 = v993[0];
      v325 = *&v993[0] >> 16;
      v326 = WORD4(v993[0]);
      v327 = HIWORD(*&v993[0]) | (WORD4(v993[0]) << 16);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v328 = *(type metadata accessor for DriverEvent(0) - 8);
      v329 = *(v328 + 72);
      v330 = (*(v328 + 80) + 32) & ~*(v328 + 80);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_100480F40;
      LOWORD(v994[0]) = v324;
      *(v994 + 2) = __PAIR64__(v327, v325);
      LODWORD(v994[0]) = sub_100112578(*&v994[0], v326);
      sub_1000B24BC(v994);
      memcpy((v160 + v330), v994, 0x16AuLL);
      goto LABEL_78;
    case 158:
      v65 = v735;
      v64 = v736;
      v455 = v41;
      sub_10000AB0C(v735, v736);
      Logger.init(subsystem:category:)();
      v456 = Logger.logObject.getter();
      v457 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v456, v457))
      {
        v458 = swift_slowAlloc();
        v459 = swift_slowAlloc();
        *&v994[0] = v459;
        *v458 = 136315138;
        *(v458 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v456, v457, "nan_event: %s APPLE80211_M_NAN_OOB_AF_RX", v458, 0xCu);
        sub_100002A00(v459);
      }

      v94 = v730;
      (*(v729 + 8))(v455, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_oob_act_frm_rx_data(0);
      sub_100112214(v65, v64, v460, v993);
      memcpy(v994, v993, 0x3E6uLL);
      if (sub_1000B2494(v994) == 1)
      {
        goto LABEL_217;
      }

      memcpy(v1002, v994, 0x3E5uLL);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v461 = *(type metadata accessor for DriverEvent(0) - 8);
      v462 = *(v461 + 72);
      v373 = (*(v461 + 80) + 32) & ~*(v461 + 80);
      v30 = swift_allocObject();
      *(v30 + 1) = xmmword_100480F40;
      sub_1001125C0(v995);
      sub_1000B24B0(v995);
LABEL_135:
      memcpy(&v30[v373], v995, 0x16AuLL);
LABEL_136:
      swift_storeEnumTagMultiPayload();
      v397 = v65;
      v398 = v64;
      goto LABEL_137;
    case 171:
      type metadata accessor for apple80211_hostap_state(0);
      v584 = v583;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v584, v994);
      if (v994[1])
      {
        goto LABEL_215;
      }

      v585 = WORD4(v994[0]);
      v586 = DWORD1(v994[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v587 = *(type metadata accessor for DriverEvent(0) - 8);
      v588 = *(v587 + 72);
      v589 = (*(v587 + 80) + 32) & ~*(v587 + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_100480F40;
      v590 = v238 + v589;
      v591 = sub_10003B238(v585);
      *v590 = v586 != 0;
      *(v590 + 4) = v591;
      *(v590 + 8) = WORD2(v591);
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      goto LABEL_184;
    case 178:
      type metadata accessor for apple80211_awdl_service_reg_soft_error_event(0);
      v102 = v101;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v102, v993);
      memcpy(v994, v993, 0x109uLL);
      if (sub_1000B2378(v994) == 1)
      {
        goto LABEL_215;
      }

      v103 = DWORD1(v994[0]);
      v94 = v730;
      if (DWORD1(v994[0]) > 0xFF)
      {
        goto LABEL_216;
      }

      v993[12] = *(&v994[12] + 8);
      v993[13] = *(&v994[13] + 8);
      v993[14] = *(&v994[14] + 8);
      v993[15] = *(&v994[15] + 8);
      v993[8] = *(&v994[8] + 8);
      v993[9] = *(&v994[9] + 8);
      v993[10] = *(&v994[10] + 8);
      v993[11] = *(&v994[11] + 8);
      v993[4] = *(&v994[4] + 8);
      v993[5] = *(&v994[5] + 8);
      v993[6] = *(&v994[6] + 8);
      v993[7] = *(&v994[7] + 8);
      v993[0] = *(v994 + 8);
      v993[1] = *(&v994[1] + 8);
      v993[2] = *(&v994[2] + 8);
      v993[3] = *(&v994[3] + 8);
      v104 = sub_10005DC58(&qword_10058C7F8, &unk_100482000);
      *(&v995[1] + 1) = v104;
      *&v995[2] = sub_1000B2394();
      v105 = swift_allocObject();
      *&v995[0] = v105;
      v105[2] = 0;
      v105[3] = v103;
      v105[4] = v993;
      v105[5] = &v993[16];
      v106 = sub_100029B34(v995, v104);
      v107 = v106[1];
      v998[0] = *v106;
      v998[1] = v107;
      Slice<>.withUnsafeBytes<A>(_:)();
      v108 = v996;
      v109 = v997;
      sub_100002A00(v995);
      static DNSRecords.createRecord(with:value:)(v108, v109, 0, 0xF000000000000000, v1002);
      sub_1000124C8(v108, v109);
      sub_10005DC58(&unk_100595FD0, &qword_100486B50);
      if (swift_dynamicCast())
      {
        v656 = *(&v993[0] + 1);
        v655 = *&v993[0];
        v657 = LOBYTE(v993[1]);
        v658 = BYTE1(v993[1]);
      }

      else if (swift_dynamicCast())
      {
        v656 = *(&v993[1] + 1);
        v655 = *&v993[1];
        v657 = LOBYTE(v993[2]);
        v658 = BYTE1(v993[2]);
      }

      else
      {
        v662 = v716;
        if (swift_dynamicCast())
        {
          v663 = v715;
          sub_100038FEC(v662, v715, type metadata accessor for DNSRecords.SRV);
          v655 = *(v663 + 16);
          v656 = *(v663 + 24);
          v657 = *(v663 + 32);
          v658 = *(v663 + 33);

          sub_10003B8D4(v663, type metadata accessor for DNSRecords.SRV);
        }

        else
        {
          if (!swift_dynamicCast())
          {
            sub_100002A00(v1002);
            goto LABEL_216;
          }

          v656 = *(&v993[1] + 1);
          v655 = *&v993[1];
          v657 = LOBYTE(v993[2]);
          v658 = BYTE1(v993[2]);
          v684 = *(&v993[2] + 1);
          v685 = *&v993[3];

          sub_1000124C8(v684, v685);
        }
      }

      sub_100002A00(v1002);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v686 = *(type metadata accessor for DriverEvent(0) - 8);
      v687 = *(v686 + 72);
      v688 = (*(v686 + 80) + 32) & ~*(v686 + 80);
      v160 = swift_allocObject();
      *(v160 + 16) = xmmword_100480F40;
      v689 = v160 + v688;
      *&v993[0] = 0xD000000000000015;
      *(&v993[0] + 1) = 0x80000001004B8110;
      v690 = DNSRecords.Identifier.description.getter(v655, v656, v657 | (v658 << 8));
      v692 = v691;

      v693._countAndFlagsBits = v690;
      v693._object = v692;
      String.append(_:)(v693);

      v694._countAndFlagsBits = 0x2064656B61654C20;
      v694._object = 0xE90000000000005BLL;
      String.append(_:)(v694);
      LODWORD(v1002[0]) = v994[0];
      v695._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v695);

      v696._countAndFlagsBits = 93;
      v696._object = 0xE100000000000000;
      String.append(_:)(v696);
      v697 = *(&v993[0] + 1);
      *v689 = *&v993[0];
      *(v689 + 8) = v697;
      *(v689 + 16) = 0xD000000000000096;
      *(v689 + 24) = 0x80000001004B8130;
      *(v689 + 32) = 1;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
LABEL_78:
      swift_storeEnumTagMultiPayload();
      v277 = v65;
      v278 = v736;
LABEL_79:
      sub_1000124C8(v277, v278);
      return v160;
    case 181:
      type metadata accessor for apple80211_p2p_thread_coex_event(0);
      v377 = v376;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v377, v994);
      if (BYTE2(v994[0]))
      {
        goto LABEL_215;
      }

      v378 = v994[0];
      v379 = HIBYTE(LOWORD(v994[0]));
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v380 = *(type metadata accessor for DriverEvent(0) - 8);
      v381 = *(v380 + 72);
      v382 = (*(v380 + 80) + 32) & ~*(v380 + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_100480F40;
      v383 = (v238 + v382);
      *v383 = v378;
      v383[1] = v379;
      type metadata accessor for DriverEvent.AWDL(0);
LABEL_100:
      swift_storeEnumTagMultiPayload();
      goto LABEL_184;
    case 196:
      v727 = v47;
      v725 = v46;
      v65 = v735;
      v64 = v736;
      v553 = v40;
      sub_10000AB0C(v735, v736);
      v726 = &qword_1004B4E88[7];
      Logger.init(subsystem:category:)();
      v554 = Logger.logObject.getter();
      v555 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v554, v555))
      {
        v556 = swift_slowAlloc();
        v557 = swift_slowAlloc();
        *&v994[0] = v557;
        *v556 = 136315138;
        *(v556 + 4) = sub_100002320(0x7665286573726170, 0xED0000293A746E65, v994);
        _os_log_impl(&_mh_execute_header, v554, v555, "nan_event: %s APPLE80211_M_NAN_PREFERRED_CHANNELS_CHANGED", v556, 0xCu);
        sub_100002A00(v557);
      }

      v94 = v730;
      (*(v729 + 8))(v553, v730);
      v90 = v731;
      type metadata accessor for apple80211_nan_preferred_channels_changed_event(0);
      sub_100112214(v65, v64, v558, v993);
      if (BYTE12(v993[1]))
      {
        goto LABEL_217;
      }

      v559 = BYTE8(v993[0]);
      v560 = HIDWORD(*&v993[0]);
      v561 = *&v993[0] >> 40;
      v562 = BYTE8(v993[1]);
      v563 = HIWORD(*&v993[0]);
      v564 = v993[1];
      v565 = HIBYTE(*&v993[0]);
      *&v714 = *(&v993[0] + 1) >> 8;
      v715 = *(&v993[0] + 1) >> 16;
      v716 = (*(&v993[0] + 1) >> 24);
      v717 = HIDWORD(*(&v993[0] + 1));
      v718 = *(&v993[0] + 1) >> 40;
      v719 = HIWORD(*(&v993[0] + 1));
      v720 = HIBYTE(*(&v993[0] + 1));
      v721 = *&v993[1] >> 8;
      v722 = *&v993[1] >> 16;
      v723 = *&v993[1] >> 24;
      v724 = HIDWORD(*&v993[1]);
      v728 = *&v993[1] >> 40;
      *&v731 = HIWORD(*&v993[1]);
      *&v732 = HIBYTE(*&v993[1]);
      v566 = DWORD2(v993[1]) >> 8;
      v734.i32[0] = HIWORD(DWORD2(v993[1]));
      LODWORD(v733) = HIBYTE(DWORD2(v993[1]));
      sub_10005DC58(&qword_10058C810, &qword_100482010);
      v567 = swift_allocObject();
      v567[32] = v560;
      v567[33] = v561;
      v567[34] = v563;
      v567[35] = v565;
      v567[36] = v559;
      v567[37] = v714;
      v568 = v716;
      v567[38] = v715;
      v567[39] = v568;
      v569 = v718;
      v567[40] = v717;
      v567[41] = v569;
      v570 = v720;
      v567[42] = v719;
      v567[43] = v570;
      v567[44] = v564;
      v567[45] = v721;
      v567[46] = v722;
      v567[47] = v723;
      v567[48] = v724;
      v567[49] = v728;
      v567[50] = v731;
      v567[51] = v732;
      v567[52] = v562;
      v567[53] = v566;
      v567[54] = v734.i8[0];
      v567[55] = v733;
      v571 = swift_allocObject();
      v572 = 0;
      v734.i64[0] = v571;
      v573 = _swiftEmptyArrayStorage;
      *(v571 + 16) = _swiftEmptyArrayStorage;
      *&v733 = v571 + 16;
      v574 = (v729 + 8);
      do
      {
        v576 = v567[v572 + 32];
        if (v567[v572 + 32])
        {
          v577 = v567[v572 + 34];
          if (v577 >= 3)
          {
            Logger.init(subsystem:category:)();
            v578 = Logger.logObject.getter();
            v579 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v578, v579))
            {
              v580 = swift_slowAlloc();
              *v580 = 0;
              _os_log_impl(&_mh_execute_header, v578, v579, "Invalid channel_band in preferred channel list", v580, 2u);
            }

            (*v574)(v727, v730);
            LOBYTE(v577) = 0;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v573 = sub_100011C2C(0, *(v573 + 2) + 1, 1, v573);
          }

          v582 = *(v573 + 2);
          v581 = *(v573 + 3);
          if (v582 >= v581 >> 1)
          {
            v573 = sub_100011C2C((v581 > 1), v582 + 1, 1, v573);
          }

          *(v573 + 2) = v582 + 1;
          v575 = &v573[8 * v582];
          *(v575 + 8) = v576;
          v575[36] = v577;
          v575[37] = 3;
        }

        v572 += 3;
      }

      while (v572 != 24);
      *(v734.i64[0] + 16) = v573;
      swift_setDeallocating();
      swift_deallocClassInstance();
      v611 = v725;
      Logger.init(subsystem:category:)();

      v612 = Logger.logObject.getter();
      v613 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v612, v613))
      {
        v614 = swift_slowAlloc();
        *&v732 = swift_slowAlloc();
        *&v994[0] = v732;
        *v614 = 136315138;
        v615 = v733;
        swift_beginAccess();
        v616 = *v615;

        v617 = Array.description.getter();
        v619 = v618;

        v620 = sub_100002320(v617, v619, v994);

        *(v614 + 4) = v620;
        _os_log_impl(&_mh_execute_header, v612, v613, "Received preferred channels: %s", v614, 0xCu);
        sub_100002A00(v732);
      }

      (*v574)(v611, v730);
      v622 = v735;
      v621 = v736;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v646 = *(type metadata accessor for DriverEvent(0) - 8);
      v647 = *(v646 + 72);
      v648 = (*(v646 + 80) + 32) & ~*(v646 + 80);
      v649 = swift_allocObject();
      *(v649 + 16) = xmmword_100480F40;
      swift_beginAccess();
      *&v994[0] = *(v734.i64[0] + 16);
      sub_1000B247C(v994);
      memcpy((v649 + v648), v994, 0x16AuLL);
      swift_storeEnumTagMultiPayload();

      sub_1000124C8(v622, v621);
      return v649;
    case 199:
      type metadata accessor for apple80211_awdl_stats_p2p_failure(0);
      v408 = v407;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v408, v994);
      if (BYTE8(v994[2]))
      {
        goto LABEL_215;
      }

      v993[0] = v994[0];
      v993[1] = v994[1];
      *&v993[2] = *&v994[2];
      v409 = sub_100119A30(v993);
      v90 = v731;
      if (!v409)
      {
        v94 = v730;
        goto LABEL_217;
      }

      v411 = v409;
      v412 = v410;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v413 = *(type metadata accessor for DriverEvent(0) - 8);
      v414 = *(v413 + 72);
      v415 = (*(v413 + 80) + 32) & ~*(v413 + 80);
      v238 = swift_allocObject();
      *(v238 + 16) = xmmword_100480F40;
      v416 = v238 + v415;
      *v416 = v411;
      *(v416 + 8) = v412;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
LABEL_184:
      swift_storeEnumTagMultiPayload();
      sub_1000124C8(v65, v64);
      return v238;
    case 214:
      type metadata accessor for ether_addr(0);
      v77 = v76;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v77, v994);
      if (BYTE6(v994[0]))
      {
        goto LABEL_215;
      }

      v78 = LODWORD(v994[0]) | (WORD2(v994[0]) << 32);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v79 = *(type metadata accessor for DriverEvent(0) - 8);
      v80 = *(v79 + 72);
      v81 = (*(v79 + 80) + 32) & ~*(v79 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100480F40;
      v83 = v82 + v81;
      *v83 = v78;
      *(v83 + 24) = 0u;
      *(v83 + 8) = 0u;
      *(v83 + 40) = 0;
      v84 = 9;
LABEL_161:
      *(v83 + 41) = v84;
      goto LABEL_190;
    case 224:
      type metadata accessor for apple80211_channel_band(0);
      v593 = v592;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v593, v994);
      if (BYTE4(v994[0]))
      {
        goto LABEL_215;
      }

      if (LODWORD(v994[0]) >= 4)
      {
        v594 = 1;
      }

      else
      {
        v594 = 0x2010001u >> (8 * LOBYTE(v994[0]));
      }

      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v595 = *(type metadata accessor for DriverEvent(0) - 8);
      v596 = *(v595 + 72);
      v597 = (*(v595 + 80) + 32) & ~*(v595 + 80);
      v82 = swift_allocObject();
      *(v82 + 16) = xmmword_100480F40;
      LOBYTE(v994[0]) = v594;
      sub_1000B2470(v994);
      memcpy((v82 + v597), v994, 0x16AuLL);
LABEL_190:
      swift_storeEnumTagMultiPayload();
      v305 = v65;
      v306 = v64;
      goto LABEL_225;
    case 233:
      type metadata accessor for apple80211_idle_detect(0);
      v522 = v521;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v522, v994);
      if (BYTE8(v994[0]))
      {
        goto LABEL_215;
      }

      v523 = v994[0];
      v734.i64[0] = HIDWORD(*&v994[0]);
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v524 = *(type metadata accessor for DriverEvent(0) - 8);
      v525 = *(v524 + 72);
      v526 = (*(v524 + 80) + 32) & ~*(v524 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100480F40;
      v527 = v70 + v526;
      *(v70 + v526) = v523;
      v528 = enum case for DispatchTimeInterval.milliseconds(_:);
      v529 = type metadata accessor for DispatchTimeInterval();
      v530 = v64;
      v531 = *(*(v529 - 8) + 104);
      v531(v527, v528, v529);
      v532 = *(type metadata accessor for AWDLIdleActivity(0) + 20);
      *(v527 + v532) = v734.i64[0];
      v531(v527 + v532, v528, v529);
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v74 = v65;
      v75 = v530;
      goto LABEL_158;
    case 242:
      type metadata accessor for apple80211_awdl_rtg_statistics(0);
      v424 = v423;
      v65 = v735;
      v64 = v736;
      sub_10000AB0C(v735, v736);
      sub_100112214(v65, v64, v424, v994);
      if (BYTE14(v994[3]) == 2)
      {
        goto LABEL_215;
      }

      v425 = v64;
      v426 = WORD6(v994[3]);
      v427 = DWORD2(v994[3]);
      v428 = BYTE14(v994[3]) & 1;
      v734.i32[0] = BYTE8(v994[4]) & 1;
      LODWORD(v733) = BYTE9(v994[4]) & 1;
      LODWORD(v732) = BYTE7(v994[4]) & 1;
      sub_10005DC58(&qword_10058C7F0, &unk_100486B40);
      v429 = *(type metadata accessor for DriverEvent(0) - 8);
      v430 = *(v429 + 72);
      v431 = (*(v429 + 80) + 32) & ~*(v429 + 80);
      v70 = swift_allocObject();
      *(v70 + 16) = xmmword_100480F40;
      v432 = v70 + v431;
      v433 = v994[1];
      *v432 = v994[0];
      *(v432 + 16) = v433;
      *(v432 + 32) = v994[2];
      *(v432 + 48) = *&v994[3];
      *(v432 + 56) = v427;
      *(v432 + 60) = v426;
      *(v432 + 62) = v428;
      *v434.i8 = vand_s8(*(&v994[3] + 15), 0x101010101010101);
      v434.i64[1] = v434.i64[0];
      *(v432 + 63) = vqtbl1_s8(v434, 0x607050403020100);
      *(v432 + 71) = v734.i8[0];
      *(v432 + 72) = v733;
      *(v432 + 73) = v732;
      type metadata accessor for DriverEvent.AWDL(0);
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      v74 = v735;
      v75 = v425;
LABEL_158:
      sub_1000124C8(v74, v75);
      return v70;
    default:
      return result;
  }
}

uint64_t AppleIO80211Driver.__allocating_init(device:role:name:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  AppleIO80211Driver.init(device:role:name:)(a1, a2, a3, a4);
  return v11;
}

void *sub_1000ED548(void *(*a1)(uint64_t *__return_ptr, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
LABEL_10:
    result = _StringGuts._slowWithCString<A>(_:)();
    if (!v4)
    {
      return v7[3];
    }

    return result;
  }

  if ((a4 & 0x2000000000000000) == 0)
  {
    if ((a3 & 0x1000000000000000) != 0)
    {
      result = a1(v7, (a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
      if (!v4)
      {
        return v7[0];
      }

      return result;
    }

    goto LABEL_10;
  }

  v7[0] = a3;
  v7[1] = a4 & 0xFFFFFFFFFFFFFFLL;
  result = a1(&v6, v7);
  if (!v4)
  {
    return v6;
  }

  return result;
}

uint64_t sub_1000ED5E8(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v7[0] = a3;
    v7[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v5 = v7;
    return a1(v5);
  }

  if ((a3 & 0x1000000000000000) == 0)
  {
    return _StringGuts._slowWithCString<A>(_:)();
  }

  v5 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  return a1(v5);
}

uint64_t IO80211Device.loadCapabilities(on:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  memset(v6, 0, sizeof(v6));
  v7 = 0;
  result = (*(a4 + 32))(12, v6 + 4, &v7 + 1, 0, a1, a2, a3, a4);
  if (!v4)
  {
    return v6[0];
  }

  return result;
}

uint64_t AppleBroadcomDriver.eventSource.getter()
{
  swift_beginAccess();
  v1 = v0[6];
  sub_100119ED4(v1, v0[7], v0[8]);
  return v1;
}

uint64_t AppleBroadcomDriver.eventSource.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  v7 = v3[6];
  v8 = v3[7];
  v9 = v3[8];
  v3[6] = a1;
  v3[7] = a2;
  v3[8] = a3;
  return sub_100119F14(v7, v8, v9);
}

uint64_t AppleIO80211Driver.capabilities.getter()
{
  if (*(v0 + 72))
  {
    v1 = *(v0 + 72);
  }

  else
  {
    v1 = sub_1000ED8A4();
    v2 = *(v0 + 72);
    *(v0 + 72) = v1;
  }

  return v1;
}

uint64_t sub_1000ED8A4()
{
  v1 = swift_allocObject();
  *(v1 + 16) = _swiftEmptyArrayStorage;
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[5];
  v5 = AppleDevice.loadCapabilities(on:)(v2, v3);
  v7 = v6;
  v9 = v8;
  v11 = v10;
  if (qword_10058A768 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsNAN, 0x48u, v5, v7, v9, v11);
  if (qword_10058A770 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsAWDL, 0x20u, v5, v7, v9, v11);
  if (qword_10058A778 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDualBand, 0x1Du, v5, v7, v9, v11);
  if (qword_10058A780 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsSimultaneousDualBand, 0x39u, v5, v7, v9, v11);
  if (qword_10058A788 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsAWDLSoloMode, 0x33u, v5, v7, v9, v11);
  if (qword_10058A790 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.isClmRestricted, 0x3Fu, v5, v7, v9, v11);
  if (qword_10058A7A0 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDFSProxy, 0x43u, v5, v7, v9, v11);
  if (qword_10058A7A8 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity, 0x95u, v5, v7, v9, v11);
  if (qword_10058A7B0 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDynamicSDB, 0x97u, v5, v7, v9, v11);
  swift_beginAccess();
  v12 = *(v1 + 16);

  return v12;
}

uint64_t IO80211Driver<>.loadCapabilities()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a2 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v25 - v9;
  v11 = swift_allocObject();
  *(v11 + 16) = _swiftEmptyArrayStorage;
  v25[1] = v11 + 16;
  (*(v5 + 56))(a1, v5);
  v12 = (*(a3 + 40))(a1, a3);
  v14 = v13;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v16 = (*(AssociatedConformanceWitness + 16))(v12, v14, AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = v17;
  v20 = v19;
  v22 = v21;
  (*(v7 + 8))(v10, AssociatedTypeWitness);

  if (qword_10058A768 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsNAN, 0x48u, v16, v18, v20, v22);
  if (qword_10058A770 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsAWDL, 0x20u, v16, v18, v20, v22);
  if (qword_10058A778 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDualBand, 0x1Du, v16, v18, v20, v22);
  if (qword_10058A780 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsSimultaneousDualBand, 0x39u, v16, v18, v20, v22);
  if (qword_10058A788 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsAWDLSoloMode, 0x33u, v16, v18, v20, v22);
  if (qword_10058A790 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.isClmRestricted, 0x3Fu, v16, v18, v20, v22);
  if (qword_10058A7A0 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDFSProxy, 0x43u, v16, v18, v20, v22);
  if (qword_10058A7A8 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDisableAWDLOnInactivity, 0x95u, v16, v18, v20, v22);
  if (qword_10058A7B0 != -1)
  {
    swift_once();
  }

  sub_100111684(static WiFiDriverCapabilities.supportsDynamicSDB, 0x97u, v16, v18, v20, v22);
  swift_beginAccess();
  v23 = *(v11 + 16);

  return v23;
}

uint64_t AppleIO80211Driver.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AppleIO80211Driver.init(device:role:name:)(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = type metadata accessor for Logger();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 48) = 0u;
  *(v5 + 64) = 0u;
  *(v5 + 40) = a1;
  *(v5 + 32) = a2;
  *(v5 + 16) = a3;
  *(v5 + 24) = a4;

  Logger.init(subsystem:category:)();
  (*(v11 + 32))(v5 + OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger, v14, v10);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v26 = v18;
    *v17 = 136315138;

    v20 = AppleIO80211Driver.description.getter(v19);
    v22 = v21;

    v23 = sub_100002320(v20, v22, &v26);

    *(v17 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v15, v16, "Created %s", v17, 0xCu);
    sub_100002A00(v18);
  }

  return v5;
}

uint64_t AppleIO80211Driver.deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  if (*(v0 + 64))
  {
    v7 = *(v0 + 48);
    v8 = *(v1 + 48);
    swift_unownedRetainStrong();
    AppleDevice.stopMonitoringEvents(on:)(*(v1 + 56));
  }

  swift_endAccess();
  v9 = OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger;
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC7CoreP2P18AppleIO80211Driver_logger, v2);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v23 = v9;
    v13 = v12;
    v14 = swift_slowAlloc();
    v24 = v14;
    *v13 = 136315138;
    v15 = AppleIO80211Driver.description.getter(v14);
    v17 = sub_100002320(v15, v16, &v24);

    *(v13 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v10, v11, "Destroyed %s", v13, 0xCu);
    sub_100002A00(v14);

    v9 = v23;
  }

  v18 = *(v3 + 8);
  v18(v6, v2);
  v19 = *(v1 + 24);

  v20 = *(v1 + 40);

  sub_100119F14(*(v1 + 48), *(v1 + 56), *(v1 + 64));
  v21 = *(v1 + 72);

  v18((v1 + v9), v2);
  return v1;
}

uint64_t AppleIO80211Driver.__deallocating_deinit()
{
  AppleIO80211Driver.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t DeviceDriver<>.countryCode.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((*(a3 + 32))(a1, a3) == 4)
  {
    if (qword_10058A898 != -1)
    {
      swift_once();
    }

    return static CountryCode.unknown;
  }

  else
  {
    v9 = sub_10005DC58(&qword_10058D448, &qword_100486D28);
    sub_100110570(51, v9, 0, 0, a1, v9, a2, a3, a4);
    return v11;
  }
}

uint64_t DeviceDriver<>.update(countryCode:)(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = 0;
  v12 = a1;
  v13 = 0;
  type metadata accessor for apple80211_country_code_data(0);
  return sub_100110D80(51, &v11, a2, v9, a3, a4, a5);
}

uint64_t IO80211Driver<>.userspaceP2POptions.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_userspace_p2p_options_t(0);
  v7 = v6;
  v8 = *(a2 + 8);
  v9 = *(a3 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(389, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12;
}

uint64_t IO80211Driver<>.update(userspaceP2POptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 1;
  v14 = a1;
  type metadata accessor for apple80211_userspace_p2p_options_t(0);
  v8 = v7;
  v9 = *(a3 + 8);
  v10 = *(a4 + 16);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(389, &v13, a2, v8, v9, v10, AssociatedConformanceWitness);
}

uint64_t DeviceDriver<>.updateInterfaceState(for:active:)(uint64_t result, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (result <= 2u && result != 0)
  {
    if (result == 1)
    {
      v7 = 6;
    }

    else
    {
      v7 = 9;
    }

    v13[0] = a2 & 1;
    v13[1] = v7;
    v14 = 1;
    v15 = 0;
    type metadata accessor for apple80211_virtual_if_state(0);
    return sub_100110D80(503, v13, a3, v12, a4, *(a5 + 16), a6);
  }

  return result;
}

uint64_t DeviceDriver<>.setSDBEnable(_:flag:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v14[0] = 1;
  v14[1] = a1 & 1;
  if ((a2 & &_mh_execute_header) != 0)
  {
    v11 = 0;
  }

  else
  {
    v11 = a2;
  }

  v14[2] = v11;
  v14[3] = 0;
  type metadata accessor for apple80211_sdb_enable(0);
  result = sub_100110D80(558, v14, a3, v12, a4, *(a5 + 16), a6);
  if (v6)
  {
  }

  return result;
}

uint64_t DeviceDriver<>.updateBatteryInfo()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_10058A830 != -1)
  {
    swift_once();
  }

  v10[0] = 1;
  v10[1] = static PreferenceDefaults.hasBattery;
  type metadata accessor for apple80211_has_battery_t(0);
  return sub_100110D80(566, v10, a1, v8, a2, *(a3 + 16), a4);
}

BOOL sub_1000EED4C()
{
  v1 = *v0;
  sub_10010F904(0x75uLL, 0, 0);
  return v2 != 0;
}

BOOL IO80211Driver<>.awdlEnabled.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_sync_enabled(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(117, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12 != 0;
}

uint64_t sub_1000EEE8C()
{
  v1 = *v0;
  sub_10010FA00(0x94uLL, 0, 0);
  return v2;
}

uint64_t IO80211Driver<>.awdlSubstate.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_strategy(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(148, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  return v12;
}

uint64_t sub_1000EEFC0()
{
  v1 = *v0;
  v2 = sub_10010FB04(0xF4uLL, 0, 0);
  v4 = v3;
  v5 = WORD2(v2);
  v6 = sub_10003B238(HIWORD(v2));
  sub_10003B238(v5);
  sub_10003B238(v4);
  return v6 & 0xFFFFFFFFFFFFLL;
}

uint64_t IO80211Driver<>.peerPreferredChannels.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_preferred_channels(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(244, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  v11 = sub_10003B238(v14);
  sub_10003B238(v13);
  sub_10003B238(v15);
  return v11 & 0xFFFFFFFFFFFFLL;
}

void *IO80211Driver<>.awdlChannelSequence.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_sync_channel_sequence(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(129, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  memcpy(__dst, __src, 0x190uLL);
  return sub_100030938(__dst);
}

uint64_t IO80211Driver<>.activePorts.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_slowAlloc();
  v7 = *(a3 + 8);
  v8 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  result = sub_10010F5C4(466, v6, v6 + 0x2000, 0, 0, a1, v7, v8, AssociatedConformanceWitness);
  v11 = 0;
  v12 = _swiftEmptyArrayStorage;
  while (1)
  {
    v13 = *(v6 + v11);
    if (v13)
    {
      break;
    }

LABEL_2:
    if (++v11 == 0x2000)
    {

      return v12;
    }
  }

  v14 = 0;
  while (((1 << v14) & ~v13) != 0)
  {
LABEL_6:
    if (++v14 == 8)
    {
      goto LABEL_2;
    }
  }

  v15 = (8 * v11) + v14;
  if ((v15 & 0x10000) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100117180(0, *(v12 + 2) + 1, 1, v12);
      v12 = result;
    }

    v17 = *(v12 + 2);
    v16 = *(v12 + 3);
    if (v17 >= v16 >> 1)
    {
      result = sub_100117180((v16 > 1), v17 + 1, 1, v12);
      v12 = result;
    }

    *(v12 + 2) = v17 + 1;
    *&v12[2 * v17 + 32] = v15;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t IO80211Driver<>.trafficRegistration(for:to:desiredLatency:desiredChannel:desiredSecondaryChannel:options:ssidHash:active:)(uint64_t a1, uint64_t a2, int a3, __int16 a4, __int16 a5, uint64_t a6, uint64_t a7, char a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  memset(&v32[4], 0, 164);
  *v32 = 1;
  HIDWORD(v33) = 0;
  *&v32[168] = a8 & 1;
  *&v32[172] = sub_10000F23C(a6);
  LOWORD(v33) = a4;
  WORD1(v33) = a5;
  v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v18 = v17;
  KeyPath = swift_getKeyPath();

  v20 = sub_10000F344(v16, v18, v32, KeyPath, 0x80uLL);

  if ((v20 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  v21 = 127;
  if (v20 < 0x7F)
  {
    v21 = v20;
  }

  *&v32[12] = v21;
  *&v32[144] = a3;
  *&v32[4] = a2;
  v32[6] = BYTE2(a2);
  v32[7] = BYTE3(a2);
  v32[8] = BYTE4(a2);
  v32[9] = BYTE5(a2);
  if ((a7 & 0x1000000000000) == 0)
  {
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1004817D0;
    *(v22 + 32) = a7;
    *(v22 + 34) = BYTE2(a7);
    *(v22 + 35) = BYTE3(a7);
    *(v22 + 36) = BYTE4(a7);
    *(v22 + 37) = BYTE5(a7);
    v23 = sub_10002D874(v22);
    v25 = v24;

    *&v34[0] = v23;
    *(&v34[0] + 1) = v25;
    sub_1000BA0A4();
    DataProtocol.copyBytes(to:)();
    sub_1000124C8(*&v34[0], *(&v34[0] + 1));
  }

  v34[8] = *&v32[128];
  v34[9] = *&v32[144];
  v34[10] = *&v32[160];
  v35 = v33;
  v34[4] = *&v32[64];
  v34[5] = *&v32[80];
  v34[6] = *&v32[96];
  v34[7] = *&v32[112];
  v34[0] = *v32;
  v34[1] = *&v32[16];
  v34[2] = *&v32[32];
  v34[3] = *&v32[48];
  type metadata accessor for apple80211_awdl_peer_traffic_registration(0);
  v27 = v26;
  v28 = *(a11 + 8);
  v29 = *(a10 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(164, v34, a9, v27, v28, v29, AssociatedConformanceWitness);
}

uint64_t IO80211Driver<>.transmit(unicastMasterIndicationOptions:to:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = dword_1004874A8[a1];
  v15[0] = 1;
  v15[1] = v8;
  v16 = a2;
  v17 = BYTE2(a2);
  v18 = BYTE3(a2);
  v19 = BYTE4(a2);
  v20 = BYTE5(a2);
  type metadata accessor for apple80211_awdl_UMI_data(0);
  v10 = v9;
  v11 = *(a5 + 8);
  v12 = *(a4 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(417, v15, a3, v10, v11, v12, AssociatedConformanceWitness);
}

unint64_t sub_1000EF8C4()
{
  v1 = *v0;
  result = sub_10010FC00(0xD9uLL, 0, 0);
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    result >>= 32;
  }

  return result;
}

uint64_t IO80211Driver<>.operatingMode.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for apple80211_awdl_oper_mode(0);
  v7 = v6;
  v8 = *(a3 + 8);
  v9 = *(a2 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  sub_100110570(217, v7, 0, 0, a1, v7, v8, v9, AssociatedConformanceWitness);
  result = v12;
  if ((v12 & 0x80000000) != 0)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000EFA08(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *v1;
    return sub_100110B44(0xD9uLL, result << 32);
  }

  return result;
}

uint64_t IO80211Driver<>.updateOperatingMode(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v12[0] = 0;
    v12[1] = result;
    type metadata accessor for apple80211_awdl_oper_mode(0);
    v8 = v7;
    v9 = *(a4 + 8);
    v10 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(217, v12, a2, v8, v9, v10, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_1000EFB00(char a1)
{
  v4 = *v1;
  v3[2] = a1 & 1;
  v3[3] = &v4;
  return sub_1000ED5E8(sub_10011AE68, v3, 0x5379616C70726961, 0xEB000000006B6E69);
}

uint64_t sub_1000EFBC4(char a1)
{
  v2 = *v1;
  if (a1)
  {
    v3 = 0x100000001;
  }

  else
  {
    v3 = 1;
  }

  return sub_100110768(0xA3uLL, v3);
}

uint64_t IO80211Driver<>.setAirPlaySoloMode(_:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = 1;
  v14 = a1;
  type metadata accessor for apple80211_awdl_social_time_slots(0);
  v8 = v7;
  v9 = *(a4 + 8);
  v10 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  return sub_100110D80(163, &v13, a2, v8, v9, v10, AssociatedConformanceWitness);
}

uint64_t sub_1000EFCE0(uint64_t a1)
{
  v21 = 0u;
  v22 = 0u;
  v19 = 0u;
  v20 = 0u;
  v17 = 0u;
  v18 = 0u;
  v15 = 0u;
  v16 = 0u;
  v2 = *(a1 + 16);
  v3 = 64;
  if (v2 < 0x40)
  {
    v3 = *(a1 + 16);
  }

  LODWORD(v23) = 0;
  HIDWORD(v23) = v3;
  if (v2)
  {
    v4 = &v15 + 2;
    v5 = (a1 + 32);
    do
    {
      v7 = *v5;
      v5 += 2;
      v6 = v7;
      if (HIWORD(v7))
      {
        __break(1u);
      }

      *v4++ = v6;
      --v3;
    }

    while (v3);
  }

  v12[6] = v21;
  v12[7] = v22;
  v13 = v23;
  v12[2] = v17;
  v12[3] = v18;
  v12[4] = v19;
  v12[5] = v20;
  v12[0] = v15;
  v12[1] = v16;
  v8 = v1[5];
  v9 = v1[2];
  v10 = v1[3];

  AppleDevice.setRequest(requestType:data:on:)(0x1A3uLL, v12, &v14, 0, v9, v10);
}

uint64_t IO80211Driver<>.updateLTERestrictedChannels(_:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = 0u;
  v27 = 0u;
  v24 = 0u;
  v25 = 0u;
  v22 = 0u;
  v23 = 0u;
  v20 = 0u;
  v21 = 0u;
  v7 = *(result + 16);
  v8 = 64;
  if (v7 < 0x40)
  {
    v8 = *(result + 16);
  }

  LODWORD(v28) = 0;
  HIDWORD(v28) = v8;
  if (v7)
  {
    v9 = &v20 + 2;
    v10 = (result + 32);
    while (1)
    {
      v12 = *v10;
      v10 += 2;
      v11 = v12;
      if (HIWORD(v12))
      {
        break;
      }

      *v9++ = v11;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    v18[6] = v26;
    v18[7] = v27;
    v19 = v28;
    v18[2] = v22;
    v18[3] = v23;
    v18[4] = v24;
    v18[5] = v25;
    v18[0] = v20;
    v18[1] = v21;
    type metadata accessor for apple80211_lte_restricted_channels(0);
    v14 = v13;
    v15 = *(a4 + 8);
    v16 = *(a3 + 8);
    swift_getAssociatedTypeWitness();
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    return sub_100110D80(419, v18, a2, v14, v15, v16, AssociatedConformanceWitness);
  }

  return result;
}

uint64_t sub_1000EFF78(unsigned __int8 a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v6 = v5;
  *&v129[4] = 0;
  *&v129[18] = 0;
  *v129 = 1;
  *&v129[10] = a1 ^ 1u;
  swift_getKeyPath();
  v11 = dispatch thunk of AnyKeyPath._storedInlineOffset.getter();
  LOWORD(v13) = v12;

  if (v13)
  {
LABEL_319:
    __break(1u);
  }

  v14 = a3 >> 62;
  v15 = BYTE6(a5);
  if ((a3 >> 62) > 1)
  {
    if (v14 != 2)
    {
      goto LABEL_10;
    }

    v16 = *(a2 + 16);
    v17 = *(a2 + 24);
LABEL_9:
    if (v16 != v17)
    {
      goto LABEL_11;
    }

LABEL_10:
    *&v129[16] = 0;
    v18 = v122[5];
    v19 = v122[2];
    v20 = v122[3];

    AppleDevice.setRequest(requestType:data:on:)(0x78uLL, v129, &v130, 0, v19, v20);
  }

  if (v14)
  {
    v16 = a2;
    v17 = a2 >> 32;
    goto LABEL_9;
  }

  if ((a3 & 0xFF000000000000) == 0)
  {
    goto LABEL_10;
  }

LABEL_11:
  if (a5 >> 60 == 15)
  {
    if (v14 != 2)
    {
      if (v14 == 1)
      {
        LODWORD(v22) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_281:
          __break(1u);
          goto LABEL_282;
        }

        v22 = v22;
LABEL_27:
        v13 = v22 + 4;
        if (__OFADD__(v22, 4))
        {
LABEL_257:
          __break(1u);
          goto LABEL_258;
        }

        if ((v13 & 0x8000000000000000) != 0)
        {
LABEL_259:
          __break(1u);
          goto LABEL_260;
        }

        if (v13 >> 16)
        {
LABEL_261:
          __break(1u);
          goto LABEL_262;
        }

        v29 = v11 + 7;
        if (__OFADD__(v11, 7))
        {
LABEL_263:
          __break(1u);
          goto LABEL_264;
        }

        if (v14 != 2)
        {
          if (v14 == 1)
          {
            LODWORD(v30) = HIDWORD(a2) - a2;
            if (__OFSUB__(HIDWORD(a2), a2))
            {
LABEL_283:
              __break(1u);
              goto LABEL_284;
            }

            v30 = v30;
            goto LABEL_49;
          }

          goto LABEL_48;
        }

LABEL_45:
        v37 = *(a2 + 16);
        v36 = *(a2 + 24);
        v26 = __OFSUB__(v36, v37);
        v30 = v36 - v37;
        if (!v26)
        {
          goto LABEL_49;
        }

        __break(1u);
LABEL_48:
        v30 = BYTE6(a3);
LABEL_49:
        a4 = v29 + v30;
        if (__OFADD__(v29, v30))
        {
LABEL_266:
          __break(1u);
          goto LABEL_267;
        }

        v6 = swift_slowAlloc();
        if (v14 <= 1)
        {
          if (!v14)
          {
            v32 = BYTE6(a3);
            goto LABEL_81;
          }

          goto LABEL_78;
        }

        if (v14 != 2)
        {
          v32 = 0;
          goto LABEL_81;
        }

        v39 = *(a2 + 16);
        v38 = *(a2 + 24);
        v26 = __OFSUB__(v38, v39);
        v32 = v38 - v39;
        if (!v26)
        {
LABEL_81:
          v26 = __OFADD__(v32, 7);
          v46 = v32 + 7;
          if (!v26)
          {
            if ((v46 & 0x8000000000000000) == 0)
            {
              if (!(v46 >> 16))
              {
                *&v129[16] = v46;
                *v6 = *v129;
                *(v6 + 16) = *&v129[16];
                v47 = v6 + v11;
                *v47 = 1;
                *(v47 + 1) = v13;
                *(v47 + 3) = 0;
                *(v47 + 7) = 0;
                if (v14 <= 1)
                {
                  if (!v14)
                  {
                    __src = a2;
                    v124 = a3;
                    v125 = BYTE2(a3);
                    v126 = BYTE3(a3);
                    v127 = BYTE4(a3);
                    v128 = BYTE5(a3);
                    memcpy((v6 + v29), &__src, BYTE6(a3));
LABEL_116:
                    v59 = v122[5];
                    v60 = v122[2];
                    v61 = v122[3];

                    AppleDevice.setRequest(requestType:data:on:)(0x78uLL, v6, v6 + a4, 0, v60, v61);
                  }

LABEL_108:
                  v54 = a2;
                  v14 = (a2 >> 32) - a2;
                  if (a2 >> 32 >= a2)
                  {
                    v55 = __DataStorage._bytes.getter();
                    if (!v55)
                    {
                      __DataStorage._length.getter();
LABEL_321:
                      __break(1u);
                      goto LABEL_322;
                    }

                    v56 = v55;
                    v57 = __DataStorage._offset.getter();
                    if (!__OFSUB__(v54, v57))
                    {
                      a2 = v54 - v57 + v56;
                      v50 = __DataStorage._length.getter();
                      if (a2)
                      {
                        goto LABEL_112;
                      }

                      goto LABEL_321;
                    }

                    goto LABEL_291;
                  }

                  goto LABEL_289;
                }

                if (v14 != 2)
                {
                  goto LABEL_116;
                }

                v48 = *(a2 + 16);
                v13 = *(a2 + 24);
                a2 = __DataStorage._bytes.getter();
                if (a2)
                {
                  v49 = __DataStorage._offset.getter();
                  if (__OFSUB__(v48, v49))
                  {
LABEL_311:
                    __break(1u);
                    goto LABEL_312;
                  }

                  a2 += v48 - v49;
                }

                v26 = __OFSUB__(v13, v48);
                v14 = v13 - v48;
                if (v26)
                {
                  goto LABEL_290;
                }

                v11 = a3 & 0x3FFFFFFFFFFFFFFFLL;
                v50 = __DataStorage._length.getter();
                if (a2)
                {
LABEL_112:
                  if (v50 >= v14)
                  {
                    v58 = v14;
                  }

                  else
                  {
                    v58 = v50;
                  }

                  memmove((v6 + v29), a2, v58);
                  goto LABEL_116;
                }

                __break(1u);
LABEL_94:
                if (__OFSUB__(HIDWORD(a4), a4))
                {
LABEL_288:
                  __break(1u);
LABEL_289:
                  __break(1u);
LABEL_290:
                  __break(1u);
LABEL_291:
                  __break(1u);
                  goto LABEL_292;
                }

                v43 = HIDWORD(a4) - a4;
                goto LABEL_96;
              }

LABEL_269:
              __break(1u);
              goto LABEL_270;
            }

LABEL_268:
            __break(1u);
            goto LABEL_269;
          }

LABEL_267:
          __break(1u);
          goto LABEL_268;
        }

        __break(1u);
LABEL_57:
        LODWORD(v33) = HIDWORD(a4) - a4;
        if (__OFSUB__(HIDWORD(a4), a4))
        {
LABEL_286:
          __break(1u);
          goto LABEL_287;
        }

        v33 = v33;
        goto LABEL_60;
      }

LABEL_26:
      v22 = BYTE6(a3);
      goto LABEL_27;
    }

    v25 = *(a2 + 16);
    v24 = *(a2 + 24);
    v26 = __OFSUB__(v24, v25);
    v22 = v24 - v25;
    if (!v26)
    {
      goto LABEL_27;
    }

    __break(1u);
  }

  else if (v14 != 2)
  {
    if (v14 == 1)
    {
      LODWORD(v23) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_282:
        __break(1u);
        goto LABEL_283;
      }

      v23 = v23;
    }

    else
    {
      v23 = BYTE6(a3);
    }

    goto LABEL_36;
  }

  v28 = *(a2 + 16);
  v27 = *(a2 + 24);
  v26 = __OFSUB__(v27, v28);
  v23 = v27 - v28;
  if (v26)
  {
    __break(1u);
    goto LABEL_26;
  }

LABEL_36:
  v26 = __OFADD__(v23, 2);
  v31 = v23 + 2;
  if (v26)
  {
LABEL_258:
    __break(1u);
    goto LABEL_259;
  }

  v26 = __OFADD__(v31, 4);
  v32 = v31 + 4;
  if (v26)
  {
LABEL_260:
    __break(1u);
    goto LABEL_261;
  }

  v29 = a5 >> 62;
  if ((a5 >> 62) <= 1)
  {
    if (!v29)
    {
      v33 = BYTE6(a5);
      goto LABEL_60;
    }

    goto LABEL_57;
  }

  if (v29 != 2)
  {
    v33 = 0;
    goto LABEL_60;
  }

  v35 = *(a4 + 16);
  v34 = *(a4 + 24);
  v26 = __OFSUB__(v34, v35);
  v33 = v34 - v35;
  if (v26)
  {
    __break(1u);
    goto LABEL_45;
  }

LABEL_60:
  v13 = v32 + v33;
  if (__OFADD__(v32, v33))
  {
LABEL_262:
    __break(1u);
    goto LABEL_263;
  }

  if ((v13 & 0x8000000000000000) != 0)
  {
LABEL_264:
    __break(1u);
    goto LABEL_265;
  }

  if (v13 >> 16)
  {
LABEL_265:
    __break(1u);
    goto LABEL_266;
  }

  if (v14 == 2)
  {
    v42 = *(a2 + 16);
    v41 = *(a2 + 24);
    v40 = v41 - v42;
    if (__OFSUB__(v41, v42))
    {
LABEL_285:
      __break(1u);
      goto LABEL_286;
    }

LABEL_68:
    if ((v40 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v40 >> 16))
    {
      if (v29 <= 1)
      {
        goto LABEL_71;
      }

      goto LABEL_74;
    }

    __break(1u);
    goto LABEL_257;
  }

  if (v14 == 1)
  {
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_284:
      __break(1u);
      goto LABEL_285;
    }

    v40 = HIDWORD(a2) - a2;
    goto LABEL_68;
  }

  LOWORD(v40) = BYTE6(a3);
  if (v29 <= 1)
  {
LABEL_71:
    if (!v29)
    {
      v43 = v15;
      goto LABEL_100;
    }

    goto LABEL_94;
  }

LABEL_74:
  if (v29 != 2)
  {
    goto LABEL_99;
  }

  v45 = *(a4 + 16);
  v44 = *(a4 + 24);
  v43 = v44 - v45;
  if (__OFSUB__(v44, v45))
  {
    __break(1u);
LABEL_78:
    LODWORD(v32) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_287:
      __break(1u);
      goto LABEL_288;
    }

    v32 = v32;
    goto LABEL_81;
  }

LABEL_96:
  if ((v43 & 0x8000000000000000) != 0)
  {
LABEL_270:
    __break(1u);
    goto LABEL_271;
  }

  if (!(v43 >> 16))
  {
    goto LABEL_100;
  }

  __break(1u);
LABEL_99:
  v43 = 0;
LABEL_100:
  v121 = v11 + 5;
  if (__OFADD__(v11, 5))
  {
LABEL_271:
    __break(1u);
LABEL_272:
    __break(1u);
    goto LABEL_273;
  }

  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v53 = *(a2 + 16);
      v52 = *(a2 + 24);
      v26 = __OFSUB__(v52, v53);
      v51 = v52 - v53;
      if (v26)
      {
        __break(1u);
        goto LABEL_108;
      }
    }

    else
    {
      v51 = 0;
    }
  }

  else if (v14)
  {
    LODWORD(v51) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_292:
      __break(1u);
      goto LABEL_293;
    }

    v51 = v51;
  }

  else
  {
    v51 = BYTE6(a3);
  }

  v26 = __OFADD__(v121, v51);
  v62 = v121 + v51;
  if (v26)
  {
    goto LABEL_272;
  }

  v26 = __OFADD__(v62, 4);
  v63 = v62 + 4;
  if (v26)
  {
LABEL_273:
    __break(1u);
LABEL_274:
    __break(1u);
    goto LABEL_275;
  }

  v119 = v43;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v67 = *(a4 + 16);
      v66 = *(a4 + 24);
      v26 = __OFSUB__(v66, v67);
      v65 = v66 - v67;
      if (v26)
      {
LABEL_293:
        __break(1u);
        goto LABEL_294;
      }

      v64 = v40;
    }

    else
    {
      v64 = v40;
      v65 = 0;
    }
  }

  else if (v29)
  {
    LODWORD(v65) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_294:
      __break(1u);
      goto LABEL_295;
    }

    v64 = v40;
    v65 = v65;
  }

  else
  {
    v64 = v40;
    v65 = v15;
  }

  if (__OFADD__(v63, v65))
  {
    goto LABEL_274;
  }

  v118 = v63 + v65;
  result = swift_slowAlloc();
  if (v14 <= 1)
  {
    v68 = a5;
    if (!v14)
    {
      v69 = BYTE6(a3);
      goto LABEL_142;
    }

    goto LABEL_139;
  }

  v68 = a5;
  if (v14 != 2)
  {
    v69 = 0;
    goto LABEL_142;
  }

  v71 = *(a2 + 16);
  v70 = *(a2 + 24);
  v26 = __OFSUB__(v70, v71);
  v69 = v70 - v71;
  if (v26)
  {
    __break(1u);
LABEL_139:
    LODWORD(v69) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_295:
      __break(1u);
      goto LABEL_296;
    }

    v69 = v69;
  }

LABEL_142:
  v26 = __OFADD__(v69, 5);
  v72 = v69 + 5;
  if (v26)
  {
LABEL_275:
    __break(1u);
    goto LABEL_276;
  }

  v26 = __OFADD__(v72, 4);
  v73 = v72 + 4;
  if (v26)
  {
LABEL_276:
    __break(1u);
    goto LABEL_277;
  }

  if (v29 <= 1)
  {
    if (!v29)
    {
      v74 = BYTE6(v68);
      goto LABEL_154;
    }

    goto LABEL_151;
  }

  if (v29 != 2)
  {
    v74 = 0;
    goto LABEL_154;
  }

  v76 = *(a4 + 16);
  v75 = *(a4 + 24);
  v26 = __OFSUB__(v75, v76);
  v74 = v75 - v76;
  if (v26)
  {
    __break(1u);
LABEL_151:
    LODWORD(v74) = HIDWORD(a4) - a4;
    if (__OFSUB__(HIDWORD(a4), a4))
    {
LABEL_296:
      __break(1u);
      goto LABEL_297;
    }

    v74 = v74;
  }

LABEL_154:
  v26 = __OFADD__(v73, v74);
  v77 = v73 + v74;
  if (v26)
  {
LABEL_277:
    __break(1u);
    goto LABEL_278;
  }

  if ((v77 & 0x8000000000000000) != 0)
  {
LABEL_278:
    __break(1u);
    goto LABEL_279;
  }

  if (v77 >> 16)
  {
LABEL_279:
    __break(1u);
LABEL_280:
    __break(1u);
    goto LABEL_281;
  }

  *&v129[16] = v77;
  *result = *v129;
  *(result + 16) = *&v129[16];
  v78 = result + v11;
  *v78 = 2;
  *(v78 + 1) = v13;
  *(v78 + 3) = v64;
  *(v78 + 5) = 0;
  v120 = result;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      v80 = *(a2 + 16);
      v117 = *(a2 + 24);
      v81 = __DataStorage._bytes.getter();
      if (v81)
      {
        v82 = __DataStorage._offset.getter();
        if (__OFSUB__(v80, v82))
        {
LABEL_312:
          __break(1u);
          goto LABEL_313;
        }

        v81 += v80 - v82;
      }

      v26 = __OFSUB__(v117, v80);
      v83 = v117 - v80;
      if (v26)
      {
        goto LABEL_298;
      }

      result = __DataStorage._length.getter();
      if (!v81)
      {
LABEL_324:
        __break(1u);
        goto LABEL_325;
      }

      if (result >= v83)
      {
        v84 = v83;
      }

      else
      {
        v84 = result;
      }

      result = memmove((v120 + v121), v81, v84);
      v86 = *(a2 + 16);
      v85 = *(a2 + 24);
      v79 = v85 - v86;
      if (__OFSUB__(v85, v86))
      {
        goto LABEL_300;
      }

      v68 = a5;
    }

    else
    {
      v79 = 0;
    }
  }

  else if (v14)
  {
    if (a2 >> 32 < a2)
    {
LABEL_297:
      __break(1u);
LABEL_298:
      __break(1u);
LABEL_299:
      __break(1u);
LABEL_300:
      __break(1u);
LABEL_301:
      __break(1u);
      goto LABEL_302;
    }

    v87 = __DataStorage._bytes.getter();
    if (!v87)
    {
LABEL_322:
      result = __DataStorage._length.getter();
      goto LABEL_323;
    }

    v88 = v87;
    v89 = __DataStorage._offset.getter();
    if (__OFSUB__(a2, v89))
    {
      goto LABEL_299;
    }

    v90 = (a2 - v89 + v88);
    result = __DataStorage._length.getter();
    if (!v90)
    {
LABEL_323:
      __break(1u);
      goto LABEL_324;
    }

    if (result >= (a2 >> 32) - a2)
    {
      v91 = (a2 >> 32) - a2;
    }

    else
    {
      v91 = result;
    }

    result = memmove((v120 + v121), v90, v91);
    if (__OFSUB__(HIDWORD(a2), a2))
    {
      goto LABEL_301;
    }

    v79 = HIDWORD(a2) - a2;
    v68 = a5;
  }

  else
  {
    __src = a2;
    v124 = a3;
    v125 = BYTE2(a3);
    v126 = BYTE3(a3);
    v127 = BYTE4(a3);
    v79 = BYTE6(a3);
    v128 = BYTE5(a3);
    result = memcpy((result + v121), &__src, BYTE6(a3));
    v68 = a5;
  }

  if (__OFADD__(v121, v79))
  {
    goto LABEL_280;
  }

  v92 = v120;
  v93 = v120 + v121 + v79;
  *v93 = v119;
  *(v93 + 4) = 0;
  if (v29 > 1)
  {
    if (v29 == 2)
    {
      v29 = *(a4 + 16);
      v119 = *(a4 + 24);
      a4 = __DataStorage._bytes.getter();
      if (a4)
      {
        v95 = __DataStorage._offset.getter();
        if (__OFSUB__(v29, v95))
        {
LABEL_313:
          __break(1u);
          goto LABEL_314;
        }

        a4 += v29 - v95;
      }

      goto LABEL_216;
    }

    if (v14 <= 1)
    {
      if (v14)
      {
        LODWORD(v98) = HIDWORD(a2) - a2;
        if (__OFSUB__(HIDWORD(a2), a2))
        {
LABEL_316:
          __break(1u);
          goto LABEL_317;
        }

        v98 = v98;
      }

      else
      {
        v98 = BYTE6(a3);
      }

      goto LABEL_236;
    }

    goto LABEL_208;
  }

  if (!v29)
  {
    __src = a4;
    v124 = v68;
    v125 = BYTE2(v68);
    v126 = BYTE3(v68);
    v127 = BYTE4(v68);
    v128 = BYTE5(v68);
    if (v14 <= 1)
    {
      if (!v14)
      {
        v94 = BYTE6(a3);
LABEL_232:
        v26 = __OFADD__(v121, v94);
        v108 = v121 + v94;
        if (v26)
        {
LABEL_303:
          __break(1u);
          goto LABEL_304;
        }

        v26 = __OFADD__(v108, 4);
        v109 = v108 + 4;
        if (v26)
        {
LABEL_306:
          __break(1u);
          goto LABEL_307;
        }

        v110 = v92;
        memcpy((v92 + v109), &__src, BYTE6(v68));
LABEL_253:
        v114 = v122[5];
        v115 = v122[2];
        v116 = v122[3];

        AppleDevice.setRequest(requestType:data:on:)(0x78uLL, v110, v110 + v118, 0, v115, v116);
      }

LABEL_227:
      LODWORD(v94) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_315:
        __break(1u);
        goto LABEL_316;
      }

      v94 = v94;
      goto LABEL_232;
    }

    if (v14 != 2)
    {
      v94 = 0;
      goto LABEL_232;
    }

    v101 = *(a2 + 16);
    v100 = *(a2 + 24);
    v26 = __OFSUB__(v100, v101);
    v94 = v100 - v101;
    if (!v26)
    {
      goto LABEL_232;
    }

    __break(1u);
LABEL_208:
    if (v14 != 2)
    {
      v98 = 0;
LABEL_236:
      v26 = __OFADD__(v121, v98);
      v98 += v121;
      if (v26)
      {
LABEL_304:
        __break(1u);
        goto LABEL_305;
      }

      v110 = v120;
      if (v98 <= 0x7FFFFFFFFFFFFFFBLL)
      {
        goto LABEL_253;
      }

      __break(1u);
      goto LABEL_239;
    }

    v103 = *(a2 + 16);
    v102 = *(a2 + 24);
    v26 = __OFSUB__(v102, v103);
    v98 = v102 - v103;
    if (!v26)
    {
      goto LABEL_236;
    }

    __break(1u);
    goto LABEL_212;
  }

  v96 = a4;
  v29 = (a4 >> 32) - a4;
  if (a4 >> 32 < a4)
  {
LABEL_302:
    __break(1u);
    goto LABEL_303;
  }

  a4 = __DataStorage._bytes.getter();
  if (a4)
  {
    v97 = __DataStorage._offset.getter();
    if (__OFSUB__(v96, v97))
    {
LABEL_314:
      __break(1u);
      goto LABEL_315;
    }

    a4 += v96 - v97;
  }

  result = __DataStorage._length.getter();
  if (result >= v29)
  {
    v98 = v29;
  }

  else
  {
    v98 = result;
  }

  if (v14 <= 1)
  {
    v68 = v120;
    if (v14)
    {
LABEL_239:
      LODWORD(v99) = HIDWORD(a2) - a2;
      if (__OFSUB__(HIDWORD(a2), a2))
      {
LABEL_317:
        __break(1u);
        goto LABEL_318;
      }

      v99 = v99;
      goto LABEL_242;
    }

    v99 = BYTE6(a3);
LABEL_242:
    v26 = __OFADD__(v121, v99);
    v111 = v121 + v99;
    if (v26)
    {
LABEL_307:
      __break(1u);
      goto LABEL_308;
    }

    v26 = __OFADD__(v111, 4);
    v112 = v111 + 4;
    if (v26)
    {
LABEL_309:
      __break(1u);
      goto LABEL_310;
    }

    if (a4)
    {
      goto LABEL_252;
    }

    __break(1u);
LABEL_246:
    LODWORD(v106) = HIDWORD(a2) - a2;
    if (__OFSUB__(HIDWORD(a2), a2))
    {
LABEL_318:
      __break(1u);
      goto LABEL_319;
    }

    v106 = v106;
    goto LABEL_249;
  }

LABEL_212:
  v68 = v120;
  if (v14 != 2)
  {
    v99 = 0;
    goto LABEL_242;
  }

  v105 = *(a2 + 16);
  v104 = *(a2 + 24);
  v26 = __OFSUB__(v104, v105);
  v99 = v104 - v105;
  if (!v26)
  {
    goto LABEL_242;
  }

  __break(1u);
LABEL_216:
  if (__OFSUB__(v119, v29))
  {
LABEL_305:
    __break(1u);
    goto LABEL_306;
  }

  result = __DataStorage._length.getter();
  if (result >= (v119 - v29))
  {
    v98 = v119 - v29;
  }

  else
  {
    v98 = result;
  }

  if (v14 <= 1)
  {
    v68 = v120;
    if (!v14)
    {
      v106 = BYTE6(a3);
      goto LABEL_249;
    }

    goto LABEL_246;
  }

  v68 = v120;
  if (v14 == 2)
  {
    v92 = *(a2 + 16);
    v107 = *(a2 + 24);
    v26 = __OFSUB__(v107, v92);
    v106 = v107 - v92;
    if (v26)
    {
      __break(1u);
      goto LABEL_227;
    }
  }

  else
  {
    v106 = 0;
  }

LABEL_249:
  v26 = __OFADD__(v121, v106);
  v113 = v121 + v106;
  if (v26)
  {
LABEL_308:
    __break(1u);
    goto LABEL_309;
  }

  v26 = __OFADD__(v113, 4);
  v112 = v113 + 4;
  if (v26)
  {
LABEL_310:
    __break(1u);
    goto LABEL_311;
  }

  if (a4)
  {
LABEL_252:
    v110 = v68;
    memmove((v68 + v112), a4, v98);
    goto LABEL_253;
  }

LABEL_325:
  __break(1u);
  return result;
}