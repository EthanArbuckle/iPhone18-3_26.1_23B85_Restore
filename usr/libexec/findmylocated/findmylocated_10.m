uint64_t sub_100105434(double *__dst, double *__src, double *a3, double *a4)
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
  if (v10 < v13)
  {
    v14 = 4 * v10;
    if (a4 != __dst || &__dst[v14] <= a4)
    {
      memmove(a4, __dst, v14 * 8);
    }

    v15 = &v4[v14];
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

      if (v4[2] < v6[2])
      {
        break;
      }

      v16 = v4;
      v17 = v7 == v4;
      v4 += 4;
      if (!v17)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v15)
      {
        goto LABEL_10;
      }
    }

    v16 = v6;
    v17 = v7 == v6;
    v6 += 4;
    if (v17)
    {
      goto LABEL_13;
    }

LABEL_12:
    v18 = *(v16 + 1);
    *v7 = *v16;
    *(v7 + 1) = v18;
    goto LABEL_13;
  }

  v19 = 4 * v13;
  if (a4 != __src || &__src[v19] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v15 = &v4[v19];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v20 = v5 + 4;
      if (*(v6 - 2) < *(v15 - 2))
      {
        v23 = v6 - 4;
        if (v20 != v6)
        {
          v24 = *(v6 - 1);
          *v5 = *v23;
          *(v5 + 1) = v24;
        }

        if (v15 <= v4 || (v6 -= 4, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v21 = v15 - 4;
      if (v20 != v15)
      {
        v22 = *(v15 - 1);
        *v5 = *v21;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v15 -= 4;
    }

    while (v21 > v4);
    v15 = v21;
  }

LABEL_35:
  v25 = (v15 - v4 + (v15 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0;
  if (v6 != v4 || v6 >= (v4 + v25))
  {
    memmove(v6, v4, v25);
  }

  return 1;
}

uint64_t sub_100105630(uint64_t a1, uint64_t a2, void **a3)
{
  v7 = a1 + 56;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 56);
  v11 = (v8 + 63) >> 6;

  v13 = 0;
  if (v10)
  {
    while (1)
    {
      v14 = v13;
LABEL_8:
      v15 = (*(a1 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v10)))));
      v16 = v15[1];
      v17[0] = *v15;
      v17[1] = v16;

      sub_1001012B0(v17, a2, a3);
      if (v3)
      {
        break;
      }

      v10 &= v10 - 1;

      v13 = v14;
      if (!v10)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    while (1)
    {
      v14 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
      }

      v10 = *(v7 + 8 * v14);
      ++v13;
      if (v10)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
  }

  return result;
}

void *sub_100105768()
{
  v0 = type metadata accessor for SecureLocationsCachedPayload();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SecureLocation();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5 - 8);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005AAF98, &qword_1004C4BB0);
  unsafeFromAsyncTask<A>(_:)();
  v10 = v20;
  v11 = v20[2];
  if (v11)
  {
    v20 = _swiftEmptyArrayStorage;
    sub_100239440(0, v11, 0);
    v12 = v20;
    v13 = *(v1 + 80);
    v19 = v10;
    v14 = v10 + ((v13 + 32) & ~v13);
    v15 = *(v1 + 72);
    do
    {
      sub_100106F1C(v14, v4, type metadata accessor for SecureLocationsCachedPayload);
      sub_100106F1C(&v4[*(v0 + 20)], v9, type metadata accessor for SecureLocation);
      sub_100106E44(v4, type metadata accessor for SecureLocationsCachedPayload);
      v20 = v12;
      v17 = v12[2];
      v16 = v12[3];
      if (v17 >= v16 >> 1)
      {
        sub_100239440(v16 > 1, v17 + 1, 1);
        v12 = v20;
      }

      v12[2] = v17 + 1;
      sub_100106DDC(v9, v12 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v17, type metadata accessor for SecureLocation);
      v14 += v15;
      --v11;
    }

    while (v11);
  }

  else
  {

    return _swiftEmptyArrayStorage;
  }

  return v12;
}

uint64_t type metadata accessor for SecureLocationsCachedPayload()
{
  result = qword_1005AB088;
  if (!qword_1005AB088)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100105A50(uint64_t a1, uint64_t a2, char *a3)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v7, v8, "LabelledLocations: saveLocationLabels %ld", v9, 0xCu);
  }

  else
  {
  }

  *(swift_allocObject() + 16) = a1;

  unsafeFromAsyncTask<A>(_:)();

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "LabelledLocations - SaveLocationLabels - calling completion with success", v12, 2u);
  }

  sub_1000C52F0(a2, a3);
}

uint64_t sub_100105D7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100003690;

  return sub_1004AEBA8(a1, v4);
}

uint64_t sub_100105E1C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6E6F697461636F6CLL && a2 == 0xE800000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEA00000000007354 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7630182 && a2 == 0xE300000000000000)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

double sub_100105F3C(uint64_t *a1)
{
  v4 = sub_10004B564(&qword_1005AB100, &qword_1004C4F90);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v14 - v7;
  v9 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_10010781C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100004984(a1);
  }

  else
  {
    v15 = 0;
    sub_1000F4D64();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v11 = v14[0];
    v12 = v14[1];
    LOBYTE(v14[0]) = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v2 = v13;
    v15 = 2;
    sub_100107870();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v5 + 8))(v8, v4);
    sub_100005F6C(v11, v12);
    sub_100004984(a1);
    sub_1000049D0(v11, v12);
  }

  return v2;
}

uint64_t sub_100106194(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6570795479656BLL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701080941 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC0000006F666E49)
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

uint64_t sub_1001062F4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10004B564(&qword_1005AAFA0, &qword_1004C4BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v22 - v8;
  v10 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100106608();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100004984(a1);
  }

  v29 = 0;
  sub_1000F4D64();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v26;
  v25 = v27;
  LOBYTE(v26) = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v13;
  v24 = v12;
  LOBYTE(v26) = 2;
  v14 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v15;
  v23 = v14;
  sub_10004B564(&qword_1005AAFB0, &qword_1004C4BD0);
  v29 = 3;
  sub_100106760(&qword_1005AAFB8, sub_10010665C);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v17 = v11;
  v18 = v11;
  v20 = v25;
  v19 = v26;
  sub_100005F6C(v18, v25);

  sub_100004984(a1);
  sub_1000049D0(v17, v20);

  *a2 = v17;
  *(a2 + 8) = v20;
  *(a2 + 16) = v24;
  *(a2 + 24) = v28 & 1;
  *(a2 + 32) = v23;
  *(a2 + 40) = v16;
  *(a2 + 48) = v19;
  return result;
}

unint64_t sub_100106608()
{
  result = qword_1005AAFA8;
  if (!qword_1005AAFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAFA8);
  }

  return result;
}

unint64_t sub_10010665C()
{
  result = qword_1005AAFC0;
  if (!qword_1005AAFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAFC0);
  }

  return result;
}

unint64_t sub_10010670C()
{
  result = qword_1005AAFD0;
  if (!qword_1005AAFD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAFD0);
  }

  return result;
}

uint64_t sub_100106760(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AAFB0, &qword_1004C4BD0);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001067D8()
{
  result = qword_1005AAFE0;
  if (!qword_1005AAFE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AAFE0);
  }

  return result;
}

uint64_t sub_10010684C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005AAC68, &unk_1004C46F0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001068BC(uint64_t a1, uint64_t a2)
{
  v5 = *(type metadata accessor for SecureLocation() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2 + ((*(v5 + 80) + 40) & ~*(v5 + 80));

  return sub_100101B68(a1, a2, v6, v7, v8, v9);
}

uint64_t sub_100106968(uint64_t *a1)
{
  v3 = sub_10004B564(&qword_1005AB0E0, &unk_1004C4F80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100011AEC(a1, a1[3]);
  sub_100107750();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[31] = 0;
    v8 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    sub_10004B564(&qword_1005AB0F0, &qword_1004CDC90);
    v10[15] = 1;
    sub_1001077A4(&qword_1005AB0F8, sub_1000F7CFC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100004984(a1);
  return v8;
}

uint64_t sub_100106B78()
{
  v1 = v0[3];

  v2 = v0[4];

  v3 = v0[6];

  return _swift_deallocObject(v0, 56, 7);
}

void sub_100106C00(uint64_t a1)
{
  v3 = *(type metadata accessor for SecureLocation() - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);
  v7 = *(v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v1 + 16);

  sub_1000FFBE8(a1, v8, v1 + v4, v6, v7);
}

uint64_t sub_100106CAC(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsCachedPayload() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_100003690;

  return sub_1004B08B8(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_100106DDC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100106E44(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_100106EA4(uint64_t a1)
{
  v3 = *(type metadata accessor for Date() - 8);
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1 + ((*(v3 + 80) + 40) & ~*(v3 + 80));

  sub_1000FCFF4(a1, v4, v5, v6, v7);
}

uint64_t sub_100106F1C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100106F84(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsCachedSharedKey(0) - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v9 = *v8;
  v10 = v8[1];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = sub_10000368C;

  return sub_1004B1814(a1, v6, v7, v1 + v5, v9, v10);
}

uint64_t sub_1001070BC()
{
  v1 = type metadata accessor for SecureLocationsCachedSharedKey(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = *(v0 + 16);
  swift_unknownObjectRelease();
  v6 = v0 + v3;
  v7 = type metadata accessor for UUID();
  (*(*(v7 - 8) + 8))(v0 + v3, v7);
  v8 = *(v0 + v3 + v1[5] + 8);

  v9 = v1[6];
  v10 = type metadata accessor for PrivateKey();
  v11 = *(v10 - 8);
  if (!(*(v11 + 48))(v0 + v3 + v9, 1, v10))
  {
    (*(v11 + 8))(v6 + v9, v10);
  }

  v12 = v1[7];
  v13 = type metadata accessor for HashedAdvertisement();
  v14 = *(v13 - 8);
  if (!(*(v14 + 48))(v6 + v12, 1, v13))
  {
    (*(v14 + 8))(v6 + v12, v13);
  }

  v15 = v1[8];
  v16 = type metadata accessor for Destination();
  v17 = *(v16 - 8);
  if (!(*(v17 + 48))(v6 + v15, 1, v16))
  {
    (*(v17 + 8))(v6 + v15, v16);
  }

  v18 = *(v6 + v1[9] + 8);

  v19 = v1[11];
  v20 = type metadata accessor for Date();
  v21 = *(v20 - 8);
  if (!(*(v21 + 48))(v6 + v19, 1, v20))
  {
    (*(v21 + 8))(v6 + v19, v20);
  }

  v22 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v23 = *(v0 + v22 + 8);

  return _swift_deallocObject(v0, v22 + 16, v2 | 7);
}

uint64_t sub_1001073FC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100107444(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t sub_1001074BC()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for SecureLocation();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 sub_100107540(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100107554(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 25))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 24);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 24);
  }

  v5 = v4 - 3;
  if (v3 < 2)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1001075A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 2;
    }
  }

  return result;
}

unint64_t sub_10010764C()
{
  result = qword_1005AB0C8;
  if (!qword_1005AB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0C8);
  }

  return result;
}

unint64_t sub_1001076A4()
{
  result = qword_1005AB0D0;
  if (!qword_1005AB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0D0);
  }

  return result;
}

unint64_t sub_1001076FC()
{
  result = qword_1005AB0D8;
  if (!qword_1005AB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0D8);
  }

  return result;
}

unint64_t sub_100107750()
{
  result = qword_1005AB0E8;
  if (!qword_1005AB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB0E8);
  }

  return result;
}

uint64_t sub_1001077A4(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10004B610(&qword_1005AB0F0, &qword_1004CDC90);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10010781C()
{
  result = qword_1005AB108;
  if (!qword_1005AB108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB108);
  }

  return result;
}

unint64_t sub_100107870()
{
  result = qword_1005AB110;
  if (!qword_1005AB110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB110);
  }

  return result;
}

unint64_t sub_1001078C4()
{
  result = qword_1005AB120;
  if (!qword_1005AB120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB120);
  }

  return result;
}

uint64_t sub_100107918(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100107994()
{
  result = qword_1005AB138;
  if (!qword_1005AB138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB138);
  }

  return result;
}

unint64_t sub_1001079EC()
{
  result = qword_1005AB140;
  if (!qword_1005AB140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB140);
  }

  return result;
}

unint64_t sub_100107A44()
{
  result = qword_1005AB148;
  if (!qword_1005AB148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB148);
  }

  return result;
}

unint64_t sub_100107A9C()
{
  result = qword_1005AB150;
  if (!qword_1005AB150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB150);
  }

  return result;
}

unint64_t sub_100107AF4()
{
  result = qword_1005AB158;
  if (!qword_1005AB158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB158);
  }

  return result;
}

unint64_t sub_100107B4C()
{
  result = qword_1005AB160;
  if (!qword_1005AB160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB160);
  }

  return result;
}

unint64_t sub_100107BA4()
{
  result = qword_1005AB168;
  if (!qword_1005AB168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB168);
  }

  return result;
}

unint64_t sub_100107BF8()
{
  result = qword_1005AB170;
  if (!qword_1005AB170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB170);
  }

  return result;
}

uint64_t sub_100107C6C(uint64_t a1)
{
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, a1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for SecureLocationsStewie.ServiceState.unknown(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x6E776F6E6B6E75;
  }

  else if (v7 == enum case for SecureLocationsStewie.ServiceState.available(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x6C62616C69617661;
  }

  else if (v7 == enum case for SecureLocationsStewie.ServiceState.unavailable(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x616C696176616E75;
  }

  else if (v7 == enum case for SecureLocationsStewie.ServiceState.unavailableLocationPublish(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0xD00000000000001ALL;
  }

  else if (v7 == enum case for SecureLocationsStewie.ServiceState.unavailableLocationServices(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0xD00000000000001BLL;
  }

  else if (v7 == enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0xD000000000000011;
  }

  else if (v7 == enum case for SecureLocationsStewie.ServiceState.throttled(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x656C74746F726874;
  }

  else if (v7 == enum case for SecureLocationsStewie.ServiceState.disabled(_:) || v7 == enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0x64656C6261736964;
  }

  else if (v7 == enum case for SecureLocationsStewie.ServiceState.notSetup(_:))
  {
    (*(v3 + 8))(a1, v2);
    return 0xD000000000000017;
  }

  else
  {
    v9 = *(v3 + 8);
    v9(a1, v2);
    v9(v6, v2);
    return 0x2D746C7561666564;
  }
}

uint64_t SecureLocationsStewie.ServiceState.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for SecureLocationsStewie.ServiceState.unknown(_:))
  {
    return 0x6E776F6E6B6E75;
  }

  if (v7 == enum case for SecureLocationsStewie.ServiceState.available(_:))
  {
    return 0x6C62616C69617661;
  }

  if (v7 == enum case for SecureLocationsStewie.ServiceState.unavailable(_:))
  {
    return 0x616C696176616E75;
  }

  if (v7 == enum case for SecureLocationsStewie.ServiceState.unavailableLocationPublish(_:))
  {
    return 0xD00000000000001ALL;
  }

  if (v7 == enum case for SecureLocationsStewie.ServiceState.unavailableLocationServices(_:))
  {
    return 0xD00000000000001BLL;
  }

  if (v7 == enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:))
  {
    return 0xD000000000000011;
  }

  if (v7 == enum case for SecureLocationsStewie.ServiceState.throttled(_:))
  {
    return 0x656C74746F726874;
  }

  v9 = v7;
  result = 0x64656C6261736964;
  if (v9 != enum case for SecureLocationsStewie.ServiceState.disabled(_:) && v9 != enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:))
  {
    if (v9 == enum case for SecureLocationsStewie.ServiceState.notSetup(_:))
    {
      return 0xD000000000000017;
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      return 0x2D746C7561666564;
    }
  }

  return result;
}

uint64_t sub_1001083A4(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = type metadata accessor for Date();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100005F04(a1, v7, &unk_1005AE5B0, &qword_1004C32F0);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_100002CE0(v7, &unk_1005AE5B0, &qword_1004C32F0);
    v13 = [objc_opt_self() standardUserDefaults];
    v14 = *(v2 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey);
    v15 = *(v2 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey + 8);
    v16 = String._bridgeToObjectiveC()();
    [v13 setDouble:v16 forKey:0.0];

    return sub_100002CE0(a1, &unk_1005AE5B0, &qword_1004C32F0);
  }

  else
  {
    (*(v9 + 32))(v12, v7, v8);
    Date.timeIntervalSince1970.getter();
    v19 = v18;
    v20 = [objc_opt_self() standardUserDefaults];
    v21 = *(v2 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey);
    v22 = *(v2 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey + 8);
    v23 = String._bridgeToObjectiveC()();
    [v20 setDouble:v23 forKey:v19];

    sub_100002CE0(a1, &unk_1005AE5B0, &qword_1004C32F0);
    return (*(v9 + 8))(v12, v8);
  }
}

char *sub_100108638(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v43 = a1;
  v44 = a3;
  v42 = a2;
  v45 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v45 - 8) + 64);
  __chkstk_darwin(v45);
  v36[2] = v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v40 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v9 = *(v40 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v40);
  v12 = v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix];
  *v13 = 0x3A656977657473;
  v13[1] = 0xE700000000000000;
  v14 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue;
  v37 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue;
  v36[3] = sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v36[1] = "MINDER_ALERT_BODY_WLAN";
  v38 = enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:);
  v15 = *(v9 + 104);
  v39 = v9 + 104;
  v41 = v15;
  v15(v12);
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  v36[5] = sub_10001DFF0(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  v36[4] = sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  v36[6] = sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v3[v14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient] = 0;
  *&v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient] = 0;
  v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie] = 0;
  v16 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  v17 = type metadata accessor for SecureLocationsStewie.ServiceState();
  (*(*(v17 - 8) + 56))(&v3[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
  v19 = type metadata accessor for SecureLocation();
  v20 = *(*(v19 - 8) + 56);
  v20(&v4[v18], 1, 1, v19);
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_publishCompletions] = _swiftEmptyArrayStorage;
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_meDeviceSubscription] = 0;
  v21 = &v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey];
  *v21 = 0xD000000000000017;
  v21[1] = 0x80000001004E14B0;
  v22 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastAvailabilityDate;
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 56))(&v4[v22], 1, 1, v23);
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts] = 1;
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer] = 0;
  v24 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold;
  v25 = objc_allocWithZone(type metadata accessor for CurrentLocationMonitor());
  *&v4[v24] = CurrentLocationMonitor.init(mode:desiredAccuracy:)(0, 0x4059000000000000, 0);
  v26 = v42;
  v20(&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastPublishedLocation], 1, 1, v19);
  v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] = 0;
  v27 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_radiosPreferencesQueue;
  v41(v12, v38, v40);
  static DispatchQoS.unspecified.getter();
  v46 = _swiftEmptyArrayStorage;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v29 = v43;
  v28 = v44;
  *&v4[v27] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_payloadManager] = v29;
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientSessionPool] = v26;
  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_keyManager] = v28;
  v30 = *&v4[v37];
  type metadata accessor for QueueSynchronizer();
  swift_allocObject();

  *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueueSynchronizer] = sub_10011DDB0(v30);
  result = [objc_allocWithZone(RadiosPreferences) initWithQueue:*&v4[v27]];
  if (result)
  {
    *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_radiosPreferences] = result;
    v32 = type metadata accessor for SecureLocationsStewieManager(0);
    v47.receiver = v4;
    v47.super_class = v32;
    v33 = objc_msgSendSuper2(&v47, "init");
    v34 = *&v33[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold] + OBJC_IVAR____TtC13findmylocated22CurrentLocationMonitor_delegate;
    swift_beginAccess();
    *(v34 + 8) = &off_100590368;
    swift_unknownObjectWeakAssign();
    v35 = v33;
    sub_100108CCC();
    sub_10010FE54();
    sub_100112068();
    sub_10001D6F0();
    sub_10010930C();

    return v35;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_100108CCC()
{
  v1 = v0;
  My = type metadata accessor for Feature.FindMy();
  v10[3] = My;
  v10[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v3 = sub_10000331C(v10);
  (*(*(My - 8) + 104))(v3, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  v4 = sub_100004984(v10);
  if (My)
  {
    v5 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueueSynchronizer];
    __chkstk_darwin(v4);
    v6._object = 0x80000001004E1680;
    v6._countAndFlagsBits = 0xD000000000000013;
    prohibitAsyncContext(functionName:)(v6);
    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v7 = *(v5 + 24);
    v8 = static OS_dispatch_queue.getSpecific<A>(key:)();
    if (v10[0])
    {
      v9 = *(v5 + 16);
      __chkstk_darwin(v8);
      OS_dispatch_queue.sync<A>(execute:)();
    }

    else
    {
      sub_100108EB4(v1);
    }
  }
}

void sub_100108EB4(_BYTE *a1)
{
  v2 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient;
  v3 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient];
  if (v3)
  {
    goto LABEL_5;
  }

  v4 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:*&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue]];
  v5 = *&a1[v2];
  *&a1[v2] = v4;
  v6 = v4;

  if (v6)
  {
    [v6 setDelegate:a1];
  }

  v3 = *&a1[v2];
  if (v3)
  {
LABEL_5:
    v29 = 0;
    v7 = v3;
    v8 = [v7 getStewieSupport:&v29];
    if (v8)
    {
      v9 = v8;
      v10 = v29;
      v11 = [v9 status];
      v12 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported;
      a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] = v11;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000A6F0(v13, qword_1005DFB98);
      v14 = a1;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v15, v16))
      {
        v28 = v7;
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v29 = v18;
        *v17 = 136446466;
        *(v17 + 4) = sub_10000D01C(*&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v29);
        *(v17 + 12) = 1024;
        *(v17 + 14) = a1[v12];

        _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s - support state %{BOOL}d", v17, 0x12u);
        sub_100004984(v18);
      }

      else
      {
      }
    }

    else
    {
      v19 = v29;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_10000A6F0(v20, qword_1005DFB98);
      v21 = a1;
      swift_errorRetain();
      v22 = Logger.logObject.getter();
      v23 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v22, v23))
      {
        v24 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        *v24 = 136446466;
        *(v24 + 4) = sub_10000D01C(*&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v29);
        *(v24 + 12) = 2080;
        swift_errorRetain();
        sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
        v25 = String.init<A>(describing:)();
        v27 = sub_10000D01C(v25, v26, &v29);

        *(v24 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s - unable to get support state %s", v24, 0x16u);
        swift_arrayDestroy();
      }

      else
      {
      }

      v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] = 0;
    }
  }
}

uint64_t sub_10010930C()
{
  v1 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v1 - 8);
  v25 = v1;
  v2 = *(v24 + 64);
  __chkstk_darwin(v1);
  v23 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v21 = *(v4 - 8);
  v22 = v4;
  v5 = *(v21 + 64);
  __chkstk_darwin(v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7F60 != -1)
  {
    swift_once();
  }

  aBlock[0] = *(*(qword_1005DFBF8 + 24) + 24);
  *(swift_allocObject() + 16) = v0;

  v13 = v0;
  sub_10004B564(&unk_1005AB520, &unk_1004C54A0);
  sub_10001DF0C(&qword_1005AA6F0, &unk_1005AB520, &unk_1004C54A0);
  v14 = Publisher<>.sink(receiveValue:)();

  v15 = *&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_meDeviceSubscription];
  *&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_meDeviceSubscription] = v14;

  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v9 + 8))(v12, v8);
  aBlock[4] = sub_1000D71EC;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590EE8;
  v17 = _Block_copy(aBlock);
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v18 = v23;
  v19 = v25;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);

  (*(v24 + 8))(v18, v19);
  return (*(v21 + 8))(v7, v22);
}

void sub_10010979C(unsigned __int8 *a1, void *a2)
{
  if ((*a1 | 4) == 4)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    v4 = a2;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(*&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
      v8 = "%{public}s - me device state is unknown or none";
LABEL_6:
      _os_log_impl(&_mh_execute_header, oslog, v5, v8, v6, 0xCu);
      sub_100004984(v7);

      return;
    }

LABEL_19:

    return;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v9 = sub_100021BB4();

  if ((v9 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);
    v17 = a2;
    oslog = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v19 = v7;
      *v6 = 136446210;
      *(v6 + 4) = sub_10000D01C(*&v17[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v17[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
      v8 = "%{public}s - me device status changed - device is not a location publishing device. not starting monitor";
      goto LABEL_6;
    }

    goto LABEL_19;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  v11 = a2;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v19 = v15;
    *v14 = 136446210;
    *(v14 + 4) = sub_10000D01C(*&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - device is location publishing device - requesting startMonitor", v14, 0xCu);
    sub_100004984(v15);
  }

  sub_10001D6F0();
}

void sub_100109B74()
{
  v1 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v16 - v3;
  if (*&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient])
  {
    v5 = type metadata accessor for Transaction();
    __chkstk_darwin(v5);
    *(&v16 - 2) = v0;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v6 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v6 - 8) + 56))(v4, 1, 1, v6);
    v7 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
    v8 = swift_allocError();
    (*(*(v7 - 8) + 104))(v9, enum case for SecureLocationsStewie.Error.initialization(_:), v7);
    sub_100114930(v4, v8);

    sub_100002CE0(v4, &unk_1005AB4C0, &qword_1004C3440);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    sub_10000A6F0(v10, qword_1005DFB98);
    v11 = v0;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v17 = v15;
      *v14 = 136446210;
      *(v14 + 4) = sub_10000D01C(*&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v17);
      _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - no dataClient. Not proceeding with requesting context", v14, 0xCu);
      sub_100004984(v15);
    }
  }
}

uint64_t sub_100109E90(uint64_t a1, char *a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  *(v12 + 24) = a1;
  aBlock[4] = sub_10011F940;
  aBlock[5] = v12;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590E48;
  v13 = _Block_copy(aBlock);
  v14 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);
  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

void sub_10010A17C(char *a1, uint64_t a2)
{
  v4 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = aBlock - v6;
  v8 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = aBlock - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (sub_100112E80(0))
  {
    (*(v9 + 104))(v12, enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:), v8);
    sub_100022084(v12);
    (*(v9 + 8))(v12, v8);
    v13 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient;
    v14 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient];
    if (v14)
    {
      goto LABEL_10;
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      aBlock[0] = v20;
      *v19 = 136446210;
      *(v19 + 4) = sub_10000D01C(*&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s - re-creating CT client", v19, 0xCu);
      sub_100004984(v20);
    }

    v21 = [objc_allocWithZone(CoreTelephonyClient) initWithQueue:*&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue]];
    v22 = *&a1[v13];
    *&a1[v13] = v21;
    v23 = v21;

    if (v23)
    {
      [v23 setDelegate:v16];
    }

    v14 = *&a1[v13];
    if (v14)
    {
LABEL_10:
      v24 = objc_allocWithZone(CTStewieRequestContext);
      v25 = v14;
      v26 = [v24 init];
      [v26 setReason:6];
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_10000A6F0(v27, qword_1005DFB98);
      v28 = a1;
      v29 = Logger.logObject.getter();
      v30 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v29, v30))
      {
        v31 = swift_slowAlloc();
        v32 = swift_slowAlloc();
        aBlock[0] = v32;
        *v31 = 136446210;
        *(v31 + 4) = sub_10000D01C(*&v28[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v28[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
        _os_log_impl(&_mh_execute_header, v29, v30, "%{public}s - requesting context", v31, 0xCu);
        sub_100004984(v32);
      }

      v33 = swift_allocObject();
      *(v33 + 16) = v28;
      *(v33 + 24) = a2;
      aBlock[4] = sub_10011F988;
      aBlock[5] = v33;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1000A8DE8;
      aBlock[3] = &unk_100590E98;
      v34 = _Block_copy(aBlock);
      v35 = v28;

      [v25 requestStewieWithContext:v26 completion:v34];
      _Block_release(v34);
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      sub_10000A6F0(v15, qword_1005DFB98);
      v40 = v16;
      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        v44 = swift_slowAlloc();
        aBlock[0] = v44;
        *v43 = 136446210;
        *(v43 + 4) = sub_10000D01C(*&v40[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v40[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
        _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s - No CoreTelephonyClient", v43, 0xCu);
        sub_100004984(v44);
      }
    }
  }

  else
  {
    v36 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v36 - 8) + 56))(v7, 1, 1, v36);
    v37 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
    v38 = swift_allocError();
    (*(*(v37 - 8) + 104))(v39, enum case for SecureLocationsStewie.Error.cannotPublish(_:), v37);
    sub_100114930(v7, v38);

    sub_100002CE0(v7, &unk_1005AB4C0, &qword_1004C3440);
    Transaction.capture()();
  }
}

void sub_10010A88C(uint64_t a1, void *a2, void *a3)
{
  v6 = *a3;
  v7 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v27 - v13;
  if (a1)
  {
    swift_errorRetain();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    swift_errorRetain();
    v16 = a2;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v29 = a3;
      v20 = v19;
      v28 = swift_slowAlloc();
      v31[0] = v28;
      *v20 = 136446466;
      *(v20 + 4) = sub_10000D01C(*&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v31);
      *(v20 + 12) = 2080;
      v30 = a1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v21 = String.init<A>(describing:)();
      v23 = sub_10000D01C(v21, v22, v31);

      *(v20 + 14) = v23;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s - error requesting context %s", v20, 0x16u);
      swift_arrayDestroy();
    }

    v24 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v24 - 8) + 56))(v14, 1, 1, v24);
    swift_errorRetain();
    sub_100114930(v14, a1);

    sub_100002CE0(v14, &unk_1005AB4C0, &qword_1004C3440);
    v25 = type metadata accessor for SecureLocationsStewie.Error();
    v26 = (*(*(v25 - 8) + 56))(v10, 1, 1, v25);
    __chkstk_darwin(v26);
    *(&v27 - 2) = v16;
    *(&v27 - 1) = v10;
    static Transaction.named<A>(_:with:)();

    sub_100002CE0(v10, &qword_1005A9F00, &qword_1004C3448);
  }

  Transaction.capture()();
}

uint64_t sub_10010AC88(uint64_t a1, char *a2, uint64_t a3)
{
  v24 = a1;
  v27 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v27 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v27);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  v8 = *(v26 + 64);
  __chkstk_darwin(v28);
  v10 = &v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11 - 8);
  v15 = &v23 - v14;
  v25 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  sub_100005F04(a3, &v23 - v14, &qword_1005A9F00, &qword_1004C3448);
  v16 = (*(v12 + 80) + 24) & ~*(v12 + 80);
  v17 = (v13 + v16 + 7) & 0xFFFFFFFFFFFFFFF8;
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  sub_1000176A8(v15, v18 + v16, &qword_1005A9F00, &qword_1004C3448);
  *(v18 + v17) = v24;
  aBlock[4] = sub_10011F500;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590D08;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v21 = v27;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v29 + 8))(v7, v21);
  (*(v26 + 8))(v10, v28);
}

void sub_10010B050(void *a1, uint64_t a2, uint64_t a3)
{
  v62 = a3;
  v5 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v57 - v7;
  v9 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v59 = v57 - v11;
  v12 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v61 = *(v12 - 8);
  v13 = *(v61 + 64);
  v14 = __chkstk_darwin(v12);
  v15 = __chkstk_darwin(v14);
  v63 = v57 - v16;
  __chkstk_darwin(v15);
  v18 = v57 - v17;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_10000A6F0(v19, qword_1005DFB98);
  sub_100005F04(a2, v18, &qword_1005A9F00, &qword_1004C3448);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  v24 = os_log_type_enabled(v22, v23);
  v60 = v57 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (v24)
  {
    v25 = swift_slowAlloc();
    v57[1] = v20;
    v26 = v25;
    v27 = swift_slowAlloc();
    v58 = v8;
    v57[0] = v27;
    aBlock[0] = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_10000D01C(*&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
    *(v26 + 12) = 2080;
    sub_100005F04(v18, v63, &qword_1005A9F00, &qword_1004C3448);
    v28 = v21;
    v29 = String.init<A>(describing:)();
    v31 = v30;
    sub_100002CE0(v18, &qword_1005A9F00, &qword_1004C3448);
    v32 = sub_10000D01C(v29, v31, aBlock);

    *(v26 + 14) = v32;
    v21 = v28;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s - will exit context - error: %s", v26, 0x16u);
    swift_arrayDestroy();
    v8 = v58;
  }

  else
  {

    sub_100002CE0(v18, &qword_1005A9F00, &qword_1004C3448);
  }

  v33 = *&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_coreTelephonyClient];
  if (v33)
  {
    v34 = objc_allocWithZone(CTStewieExitContext);
    v35 = v33;
    v36 = [v34 init];
    [v36 setReason:2];
    v37 = v63;
    sub_100005F04(a2, v63, &qword_1005A9F00, &qword_1004C3448);
    v38 = (*(v61 + 80) + 24) & ~*(v61 + 80);
    v39 = swift_allocObject();
    *(v39 + 16) = v21;
    sub_1000176A8(v37, v39 + v38, &qword_1005A9F00, &qword_1004C3448);
    *(v39 + ((v13 + v38 + 7) & 0xFFFFFFFFFFFFFFF8)) = v62;
    aBlock[4] = sub_10011F704;
    aBlock[5] = v39;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000A8DE8;
    aBlock[3] = &unk_100590D58;
    v40 = _Block_copy(aBlock);
    v41 = v21;

    [v35 exitStewieWithContext:v36 completion:v40];
    _Block_release(v40);
  }

  else
  {
    v42 = a2;
    v43 = v21;
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      aBlock[0] = v47;
      *v46 = 136446210;
      *(v46 + 4) = sub_10000D01C(*&v43[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v43[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v44, v45, "%{public}s - will exit no telephony client", v46, 0xCu);
      sub_100004984(v47);
    }

    v48 = v60;
    sub_1001126B4();
    v49 = type metadata accessor for SecureLocation();
    v50 = v59;
    (*(*(v49 - 8) + 56))(v59, 1, 1, v49);
    v51 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
    swift_beginAccess();
    sub_100022364(v50, &v43[v51], &unk_1005AB3F0, &qword_1004C4BF0);
    swift_endAccess();
    v52 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v52 - 8) + 56))(v8, 1, 1, v52);
    sub_100005F04(v42, v48, &qword_1005A9F00, &qword_1004C3448);
    v53 = type metadata accessor for SecureLocationsStewie.Error();
    v54 = *(v53 - 8);
    if ((*(v54 + 48))(v48, 1, v53) == 1)
    {
      sub_100002CE0(v48, &qword_1005A9F00, &qword_1004C3448);
      v55 = 0;
    }

    else
    {
      sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
      v55 = swift_allocError();
      (*(v54 + 32))(v56, v48, v53);
    }

    sub_100114930(v8, v55);

    sub_100002CE0(v8, &unk_1005AB4C0, &qword_1004C3440);
    Transaction.capture()();
  }
}

void sub_10010B83C(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v49 - v8;
  v10 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v49 - v12;
  v14 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v52 = &v49 - v16;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000A6F0(v17, qword_1005DFB98);
  v19 = a2;
  swift_errorRetain();
  v50 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v51 = a3;
    v49 = v23;
    v54[0] = v23;
    *v22 = 136446466;
    *(v22 + 4) = sub_10000D01C(*&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v54);
    *(v22 + 12) = 2080;
    v53 = a1;
    swift_errorRetain();
    sub_10004B564(&qword_1005A9E10, &qword_1004D6790);
    v24 = String.init<A>(describing:)();
    v26 = v19;
    v27 = v9;
    v28 = v13;
    v29 = sub_10000D01C(v24, v25, v54);

    *(v22 + 14) = v29;
    v13 = v28;
    v9 = v27;
    v19 = v26;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s - exit completed error - %s", v22, 0x16u);
    swift_arrayDestroy();
    a3 = v51;
  }

  if (a1)
  {
    v30 = v19;
    swift_errorRetain();
    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v51 = a3;
      v54[0] = v34;
      *v33 = 136446466;
      *(v33 + 4) = sub_10000D01C(*&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v54);
      *(v33 + 12) = 2080;
      v53 = a1;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v35 = String.init<A>(describing:)();
      v50 = a1;
      v37 = v19;
      v38 = v9;
      v39 = v13;
      v40 = sub_10000D01C(v35, v36, v54);

      *(v33 + 14) = v40;
      v13 = v39;
      v9 = v38;
      v19 = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s - error exiting %s", v33, 0x16u);
      swift_arrayDestroy();
      a3 = v51;
    }

    else
    {
    }
  }

  sub_1001126B4();
  v41 = type metadata accessor for SecureLocation();
  v42 = v52;
  (*(*(v41 - 8) + 56))(v52, 1, 1, v41);
  v43 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
  swift_beginAccess();
  sub_100022364(v42, &v19[v43], &unk_1005AB3F0, &qword_1004C4BF0);
  swift_endAccess();
  v44 = type metadata accessor for SecureLocationsStewie.PublishResult();
  (*(*(v44 - 8) + 56))(v13, 1, 1, v44);
  sub_100005F04(a3, v9, &qword_1005A9F00, &qword_1004C3448);
  v45 = type metadata accessor for SecureLocationsStewie.Error();
  v46 = *(v45 - 8);
  if ((*(v46 + 48))(v9, 1, v45) == 1)
  {
    sub_100002CE0(v9, &qword_1005A9F00, &qword_1004C3448);
    v47 = 0;
  }

  else
  {
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
    v47 = swift_allocError();
    (*(v46 + 32))(v48, v9, v45);
  }

  sub_100114930(v13, v47);

  sub_100002CE0(v13, &unk_1005AB4C0, &qword_1004C3440);
  Transaction.capture()();
}

void sub_10010BEB0(uint64_t a1)
{
  v3 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v37 - v5;
  v7 = type metadata accessor for SecureLocation();
  v8 = *(*(v7 - 8) + 64);
  v9 = __chkstk_darwin(v7);
  v11 = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = v37 - v12;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  v15 = sub_10000A6F0(v14, qword_1005DFB98);
  sub_100021534(a1, v13, type metadata accessor for SecureLocation);
  v16 = v1;
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v37[1] = v15;
    v20 = v19;
    v38[0] = swift_slowAlloc();
    *v20 = 136446466;
    *(v20 + 4) = sub_10000D01C(*&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v38);
    *(v20 + 12) = 2080;
    sub_100021534(v13, v11, type metadata accessor for SecureLocation);
    v21 = String.init<A>(describing:)();
    v23 = v22;
    sub_10002178C(v13, type metadata accessor for SecureLocation);
    v24 = sub_10000D01C(v21, v23, v38);

    *(v20 + 14) = v24;
    _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s publishLocation called with %s", v20, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_10002178C(v13, type metadata accessor for SecureLocation);
  }

  v25 = *&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
  if (v25)
  {
    v26 = type metadata accessor for Transaction();
    __chkstk_darwin(v26);
    v37[-2] = v16;
    v37[-1] = a1;
    v27 = v25;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    v28 = enum case for SecureLocationsStewie.Error.initialization(_:);
    v29 = type metadata accessor for SecureLocationsStewie.Error();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v6, v28, v29);
    (*(v30 + 56))(v6, 0, 1, v29);
    v31 = type metadata accessor for Transaction();
    __chkstk_darwin(v31);
    v37[-2] = v16;
    v37[-1] = v6;
    static Transaction.named<A>(_:with:)();
    sub_100002CE0(v6, &qword_1005A9F00, &qword_1004C3448);
    v32 = v16;
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v36 = swift_slowAlloc();
      v38[0] = v36;
      *v35 = 136446210;
      *(v35 + 4) = sub_10000D01C(*&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v38);
      _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s no dataclient - not proceeding with publishLocation", v35, 0xCu);
      sub_100004984(v36);
    }
  }
}

uint64_t sub_10010C418(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v25 = *(v6 - 8);
  v7 = *(v25 + 64);
  __chkstk_darwin(v6);
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v23 = *(v10 - 8);
  v24 = v10;
  v11 = *(v23 + 64);
  __chkstk_darwin(v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for SecureLocation();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14 - 8);
  v22[1] = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  sub_100021534(a3, v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SecureLocation);
  v17 = (*(v15 + 80) + 32) & ~*(v15 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  *(v18 + 24) = a1;
  sub_10008DB80(v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v18 + v17);
  aBlock[4] = sub_10011F8C0;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590DF8;
  v19 = _Block_copy(aBlock);
  v20 = a2;

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v25 + 8))(v9, v6);
  (*(v23 + 8))(v13, v24);
}

void sub_10010C7B0(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = v37 - v7;
  v9 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = v37 - v11;
  if ((sub_100112E80(1) & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v37[0] = v27;
      *v26 = 136446210;
      *(v26 + 4) = sub_10000D01C(*&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v37);
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s - publishLocation(location:) - canPublishLocation is false.", v26, 0xCu);
      sub_100004984(v27);
    }

    v28 = enum case for SecureLocationsStewie.Error.cannotPublish(_:);
    v29 = type metadata accessor for SecureLocationsStewie.Error();
    v30 = *(v29 - 8);
    (*(v30 + 104))(v8, v28, v29);
    (*(v30 + 56))(v8, 0, 1, v29);
    v31 = type metadata accessor for Transaction();
    __chkstk_darwin(v31);
    v37[-2] = v23;
    v37[-1] = v8;
    static Transaction.named<A>(_:with:)();
    sub_100002CE0(v8, &qword_1005A9F00, &qword_1004C3448);
    goto LABEL_13;
  }

  sub_100021534(a3, v12, type metadata accessor for SecureLocation);
  v13 = type metadata accessor for SecureLocation();
  (*(*(v13 - 8) + 56))(v12, 0, 1, v13);
  v14 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
  swift_beginAccess();
  sub_100022364(v12, &a1[v14], &unk_1005AB3F0, &qword_1004C4BF0);
  swift_endAccess();
  v15 = a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie];
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  sub_10000A6F0(v16, qword_1005DFB98);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v37[0] = v21;
    *v20 = 136446466;
    *(v20 + 4) = sub_10000D01C(*&v17[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v17[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v37);
    *(v20 + 12) = 1024;
    *(v20 + 14) = v15;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s - publishLocation - isFindMyAConnectedService: %{BOOL}d", v20, 0x12u);
    sub_100004984(v21);
  }

  if (v15)
  {
    sub_10010CD7C();
LABEL_13:
    Transaction.capture()();
    return;
  }

  v32 = v17;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v37[0] = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_10000D01C(*&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v37);
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s - publish location called but not active service available", v35, 0xCu);
    sub_100004984(v36);
  }
}

void sub_10010CD7C()
{
  v1 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v45 - v3;
  v5 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v45 - v7;
  v9 = type metadata accessor for SecureLocation();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (&v45 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  v19 = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v18 = v19;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_10;
  }

  if (sub_100112E80(1))
  {
    v21 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
    swift_beginAccess();
    sub_100005F04(&v0[v21], v8, &unk_1005AB3F0, &qword_1004C4BF0);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      sub_100002CE0(v8, &unk_1005AB3F0, &qword_1004C4BF0);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_10000A6F0(v22, qword_1005DFB98);
      v23 = v0;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        v46 = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_10000D01C(*&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v46);
        _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s - no location for publish", v26, 0xCu);
        sub_100004984(v27);
      }
    }

    else
    {
      sub_10008DB80(v8, v13);
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v38 = type metadata accessor for Logger();
      sub_10000A6F0(v38, qword_1005DFB98);
      v39 = v0;
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v46 = v43;
        *v42 = 136446210;
        *(v42 + 4) = sub_10000D01C(*&v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v46);
        _os_log_impl(&_mh_execute_header, v40, v41, "%{public}s - Creating encrypted payload", v42, 0xCu);
        sub_100004984(v43);
      }

      v44 = type metadata accessor for Transaction();
      __chkstk_darwin(v44);
      *(&v45 - 2) = v39;
      *(&v45 - 1) = v13;
      static Transaction.named<A>(_:with:)();
      sub_10002178C(v13, type metadata accessor for SecureLocation);
    }

    return;
  }

  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_19;
  }

LABEL_10:
  v28 = type metadata accessor for Logger();
  sub_10000A6F0(v28, qword_1005DFB98);
  v29 = v0;
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v47 = v33;
    *v32 = 136446210;
    *(v32 + 4) = sub_10000D01C(*&v29[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v29[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v47);
    _os_log_impl(&_mh_execute_header, v30, v31, "%{public}s - _createEncryptedLocation - canPublishLocation is false.", v32, 0xCu);
    sub_100004984(v33);
  }

  v34 = enum case for SecureLocationsStewie.Error.cannotPublish(_:);
  v35 = type metadata accessor for SecureLocationsStewie.Error();
  v36 = *(v35 - 8);
  (*(v36 + 104))(v4, v34, v35);
  (*(v36 + 56))(v4, 0, 1, v35);
  v37 = type metadata accessor for Transaction();
  __chkstk_darwin(v37);
  *(&v45 - 2) = v29;
  *(&v45 - 1) = v4;
  static Transaction.named<A>(_:with:)();
  sub_100002CE0(v4, &qword_1005A9F00, &qword_1004C3448);
}

uint64_t sub_10010D52C(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = type metadata accessor for SecureLocation();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6 - 8);
  v9 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_payloadManager];
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  v11 = *(v9 + 32);
  sub_100021534(a3, &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SecureLocation);
  v12 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10011F818;
  *(v13 + 24) = v10;
  sub_10008DB80(&v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), v13 + v12);

  v14 = a2;

  sub_1000E69C8();
}

void sub_10010D6D4(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v39 = a3;
  v8 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v38 = &v36 - v10;
  v11 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v37 = &v36 - v13;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFB98);
  v15 = a5;
  sub_10002CF44(a1, a2);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();

  sub_10001A794(a1, a2);
  v18 = os_log_type_enabled(v16, v17);
  v36 = a2;
  if (v18)
  {
    v19 = swift_slowAlloc();
    v41[0] = swift_slowAlloc();
    *v19 = 136446466;
    *(v19 + 4) = sub_10000D01C(*&v15[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v15[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v41);
    *(v19 + 12) = 2080;
    v40[0] = a1;
    v40[1] = a2;
    sub_10002CF44(a1, a2);
    sub_10004B564(&qword_1005AB500, &qword_1004C5470);
    v20 = String.init<A>(describing:)();
    v22 = sub_10000D01C(v20, v21, v41);

    *(v19 + 14) = v22;
    _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s - got encryptedLocation %s", v19, 0x16u);
    swift_arrayDestroy();
  }

  v23 = v39;
  if (v39)
  {
    v24 = v15;
    swift_errorRetain();
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v40[0] = swift_slowAlloc();
      *v27 = 136446466;
      *(v27 + 4) = sub_10000D01C(*&v24[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v24[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v40);
      *(v27 + 12) = 2080;
      v41[0] = v23;
      swift_errorRetain();
      sub_10004B564(&unk_1005AB510, &qword_1004C1AC0);
      v28 = String.init<A>(describing:)();
      v30 = sub_10000D01C(v28, v29, v40);

      *(v27 + 14) = v30;
      _os_log_impl(&_mh_execute_header, v25, v26, "%{public}s - error payload %s", v27, 0x16u);
      swift_arrayDestroy();
    }

    v31 = type metadata accessor for SecureLocationsStewie.PublishResult();
    v32 = v37;
    (*(*(v31 - 8) + 56))(v37, 1, 1, v31);
    swift_errorRetain();
    sub_100114930(v32, v23);

    sub_100002CE0(v32, &unk_1005AB4C0, &qword_1004C3440);
    v33 = type metadata accessor for SecureLocationsStewie.Error();
    v34 = v38;
    (*(*(v33 - 8) + 56))(v38, 1, 1, v33);
    v35 = type metadata accessor for Transaction();
    __chkstk_darwin(v35);
    *(&v36 - 2) = v24;
    *(&v36 - 1) = v34;
    static Transaction.named<A>(_:with:)();

    sub_100002CE0(v34, &qword_1005A9F00, &qword_1004C3448);
  }

  else
  {
    sub_10010DC10(a1, v36);
  }

  Transaction.capture()();
}

uint64_t sub_10010DC10(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_10011F3B8;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590BC8;
  v15 = _Block_copy(aBlock);
  v16 = v2;
  sub_10002CF44(a1, a2);
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

void sub_10010DEF8(char *a1, void **a2, unint64_t a3)
{
  v6 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v51 - v8;
  if ((sub_100112E80(1) & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for Logger();
    sub_10000A6F0(v12, qword_1005DFB98);
    v13 = a1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      aBlock = v17;
      *v16 = 136446210;
      *(v16 + 4) = sub_10000D01C(*&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s - publishEncryptedLocation - canPublishLocation returned false", v16, 0xCu);
      sub_100004984(v17);
    }

    v18 = enum case for SecureLocationsStewie.Error.cannotPublish(_:);
    v19 = type metadata accessor for SecureLocationsStewie.Error();
    v20 = *(v19 - 8);
    (*(v20 + 104))(v9, v18, v19);
    (*(v20 + 56))(v9, 0, 1, v19);
    v21 = type metadata accessor for Transaction();
    __chkstk_darwin(v21);
    *(&v51 - 2) = v13;
    *(&v51 - 1) = v9;
    goto LABEL_15;
  }

  if (a3 >> 60 == 15 || (v10 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient]) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    sub_10000A6F0(v22, qword_1005DFB98);
    sub_10002CF44(a2, a3);
    v23 = a1;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.default.getter();
    sub_10001A794(a2, a3);

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v59[0] = swift_slowAlloc();
      *v26 = 136446722;
      *(v26 + 4) = sub_10000D01C(*&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v59);
      *(v26 + 12) = 2080;
      aBlock = a2;
      v54 = a3;
      sub_10002CF44(a2, a3);
      sub_10004B564(&qword_1005AB500, &qword_1004C5470);
      v27 = String.init<A>(describing:)();
      v29 = sub_10000D01C(v27, v28, v59);

      *(v26 + 14) = v29;
      *(v26 + 22) = 2080;
      aBlock = *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
      v30 = aBlock;
      sub_10004B564(&qword_1005AB508, &unk_1004C5478);
      v31 = String.init<A>(describing:)();
      v33 = sub_10000D01C(v31, v32, v59);

      *(v26 + 24) = v33;
      _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s - publishEncryptedLocation - encryptedData: %s dataClient: %s", v26, 0x20u);
      swift_arrayDestroy();
    }

    v34 = enum case for SecureLocationsStewie.Error.sendMessage(_:);
    v35 = type metadata accessor for SecureLocationsStewie.Error();
    v36 = *(v35 - 8);
    (*(v36 + 104))(v9, v34, v35);
    (*(v36 + 56))(v9, 0, 1, v35);
    v37 = type metadata accessor for Transaction();
    __chkstk_darwin(v37);
    *(&v51 - 2) = v23;
    *(&v51 - 1) = v9;
LABEL_15:
    static Transaction.named<A>(_:with:)();
    sub_100002CE0(v9, &qword_1005A9F00, &qword_1004C3448);
    return;
  }

  v11 = objc_allocWithZone(CTStewieFindMyMessage);
  sub_10002CF44(a2, a3);
  sub_10002CF44(a2, a3);
  v52 = v10;
  v38 = sub_10011E568();
  sub_10001A794(a2, a3);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v39 = type metadata accessor for Logger();
  sub_10000A6F0(v39, qword_1005DFB98);
  v40 = a1;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    v44 = swift_slowAlloc();
    aBlock = v44;
    *v43 = 136446210;
    *(v43 + 4) = sub_10000D01C(*&v40[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v40[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
    _os_log_impl(&_mh_execute_header, v41, v42, "%{public}s - calling sendMessage", v43, 0xCu);
    sub_100004984(v44);
  }

  v45 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v46 = swift_allocObject();
  v47 = v52;
  *(v46 + 16) = v45;
  *(v46 + 24) = v47;
  v57 = sub_10011F3C4;
  v58 = v46;
  aBlock = _NSConcreteStackBlock;
  v54 = 1107296256;
  v55 = sub_10010FDB4;
  v56 = &unk_100590C18;
  v48 = _Block_copy(&aBlock);
  v49 = v47;
  v50 = v38;

  [v49 sendMessage:v50 completion:v48];
  sub_10001A794(a2, a3);

  _Block_release(v48);
}

void sub_10010E9DC(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v34 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v37 = *(Strong + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
    v17 = Strong;
    v18 = swift_allocObject();
    v18[2] = v17;
    v18[3] = a1;
    v18[4] = a4;
    aBlock[4] = sub_10011F3CC;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100020828;
    aBlock[3] = &unk_100590C68;
    v19 = _Block_copy(aBlock);
    v36 = v11;
    v20 = v19;
    v35 = v17;
    v21 = a1;
    v22 = a4;
    static DispatchQoS.unspecified.getter();
    v38 = _swiftEmptyArrayStorage;
    sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v20);
    (*(v7 + 8))(v10, v6);
    (*(v12 + 8))(v15, v36);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v23 = type metadata accessor for Logger();
    sub_10000A6F0(v23, qword_1005DFB98);
    v24 = a1;
    v25 = Logger.logObject.getter();
    v26 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      aBlock[0] = swift_slowAlloc();
      *v27 = 136315394;
      *(v27 + 4) = sub_10000D01C(0x3A656977657473, 0xE700000000000000, aBlock);
      *(v27 + 12) = 2080;
      v28 = v24;
      v29 = [v28 description];
      v30 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = sub_10000D01C(v30, v32, aBlock);

      *(v27 + 14) = v33;
      _os_log_impl(&_mh_execute_header, v25, v26, "%s - got ack for sendMessage but no self %s", v27, 0x16u);
      swift_arrayDestroy();
    }
  }
}

uint64_t sub_10010EE84(void *a1, void *a2, void (*a3)(void, void, void))
{
  v6 = sub_10004B564(&qword_1005A9F00, &qword_1004C3448);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v125 = &v107 - v8;
  v115 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v9 = *(*(v115 - 8) + 64);
  __chkstk_darwin(v115);
  v116 = &v107 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v114 = &v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v15 = *(*(v111 - 8) + 64);
  __chkstk_darwin(v111);
  v124 = &v107 - v16;
  v17 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v113 = &v107 - v19;
  v20 = type metadata accessor for SecureLocationsStewie.PublishResult();
  v127 = *(v20 - 8);
  v128 = v20;
  v21 = *(v127 + 64);
  __chkstk_darwin(v20);
  v121 = &v107 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  v122 = *(v23 - 8);
  v123 = v23;
  v24 = v122[8];
  v25 = __chkstk_darwin(v23);
  v112 = &v107 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v25);
  v120 = &v107 - v28;
  __chkstk_darwin(v27);
  v126 = &v107 - v29;
  v30 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v31 = *(*(v30 - 8) + 64);
  __chkstk_darwin(v30 - 8);
  v118 = &v107 - v32;
  v33 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v34 = *(*(v33 - 8) + 64);
  __chkstk_darwin(v33 - 8);
  v36 = &v107 - v35;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v37 = type metadata accessor for Logger();
  v38 = sub_10000A6F0(v37, qword_1005DFB98);
  v39 = a1;
  v40 = a2;
  v117 = v38;
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.default.getter();

  v43 = os_log_type_enabled(v41, v42);
  v119 = v12;
  if (v43)
  {
    v44 = swift_slowAlloc();
    v110 = a3;
    v45 = v44;
    v109 = swift_slowAlloc();
    v129[0] = v109;
    *v45 = 136446466;
    *(v45 + 4) = sub_10000D01C(*&v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v39[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v129);
    *(v45 + 12) = 2080;
    v46 = v40;
    v47 = v36;
    v48 = [v46 description];
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    LODWORD(v108) = v42;
    v50 = v11;
    v51 = v39;
    v52 = v49;
    v54 = v53;

    v36 = v47;
    v55 = v52;
    v39 = v51;
    v11 = v50;
    v56 = sub_10000D01C(v55, v54, v129);

    *(v45 + 14) = v56;
    v12 = v119;
    _os_log_impl(&_mh_execute_header, v41, v108, "%{public}s - sendMessage returned %s", v45, 0x16u);
    swift_arrayDestroy();

    a3 = v110;
  }

  v57 = *(v12 + 104);
  v57(v36, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v11);
  (*(v12 + 56))(v36, 0, 1, v11);
  v58 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  sub_100022364(v36, &v39[v58], &qword_1005AB4B0, &unk_1004C5410);
  swift_endAccess();
  if ([v40 success])
  {
    v59 = v126;
    static Date.trustedNow.getter(v126);
    v110 = v57;
    sub_10011445C();
    v60 = v120;
    Date.addingTimeInterval(_:)();
    v61 = v122;
    v109 = v11;
    v62 = v122[2];
    v63 = v113;
    v64 = v59;
    v65 = v123;
    v62(v113, v64, v123);
    v66 = v39;
    v108 = v61[7];
    v108(v63, 0, 1, v65);
    v62(v112, v60, v65);
    v67 = v121;
    SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();
    v68 = v127;
    v69 = v118;
    v70 = v67;
    v71 = v128;
    (*(v127 + 16))(v118, v70, v128);
    (*(v68 + 56))(v69, 0, 1, v71);
    sub_100114930(v69, 0);
    sub_100002CE0(v69, &unk_1005AB4C0, &qword_1004C3440);
    v62(v63, v126, v65);
    v108(v63, 0, 1, v65);
    sub_1001083A4(v63);
    v72 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
    swift_beginAccess();
    v73 = v124;
    sub_100005F04(&v66[v72], v124, &unk_1005AB3F0, &qword_1004C4BF0);
    v74 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastPublishedLocation;
    swift_beginAccess();
    sub_100022364(v73, &v66[v74], &unk_1005AB3F0, &qword_1004C4BF0);
    swift_endAccess();
    v75 = v114;
    v76 = v109;
    v110(v114, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v109);
    sub_100022084(v75);
    (*(v119 + 8))(v75, v76);
    sub_100111B9C();
    *&v66[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts] = 1;
    v77 = v115;
    v78 = v116;
    *v116 = 1;
    v79 = *(v77 + 20);
    v80 = enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:);
    v81 = type metadata accessor for LocalUserNotificationCategory();
    (*(*(v81 - 8) + 104))(v78 + v79, v80, v81);
    sub_10011E234(v78);
    sub_10002178C(v78, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
    sub_10011A9BC();
    v82 = v66;
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      v129[0] = swift_slowAlloc();
      *v85 = 136446466;
      *(v85 + 4) = sub_10000D01C(*&v82[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v82[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v129);
      *(v85 + 12) = 2080;
      sub_100005F04(&v66[v72], v73, &unk_1005AB3F0, &qword_1004C4BF0);
      v86 = String.init<A>(describing:)();
      v88 = sub_10000D01C(v86, v87, v129);

      *(v85 + 14) = v88;
      _os_log_impl(&_mh_execute_header, v83, v84, "%{public}s - successfully published %s", v85, 0x16u);
      swift_arrayDestroy();
    }

    v39 = v66;
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for Transaction();
    *(swift_allocObject() + 16) = 1;
    static Transaction.asyncTask(name:block:)();

    (*(v127 + 8))(v121, v128);
    v89 = v123;
    v90 = v122[1];
    v90(v120, v123);
    v90(v126, v89);
  }

  else
  {
    v91 = v39;
    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      v129[0] = v95;
      *v94 = 136446210;
      *(v94 + 4) = sub_10000D01C(*&v91[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v91[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v129);
      _os_log_impl(&_mh_execute_header, v92, v93, "%{public}s - failed to publish", v94, 0xCu);
      sub_100004984(v95);
    }

    v73 = v124;
    v96 = v118;
    (*(v127 + 56))(v118, 1, 1, v128);
    v97 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
    v98 = swift_allocError();
    (*(*(v97 - 8) + 104))(v99, enum case for SecureLocationsStewie.Error.sendMessage(_:), v97);
    sub_100114930(v96, v98);

    sub_100002CE0(v96, &unk_1005AB4C0, &qword_1004C3440);
    v100 = [a3 getState];
    sub_100116DE4(v100, 1);

    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for Transaction();
    *(swift_allocObject() + 16) = 0;
    static Transaction.asyncTask(name:block:)();
  }

  v101 = type metadata accessor for SecureLocation();
  (*(*(v101 - 8) + 56))(v73, 1, 1, v101);
  v102 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_location;
  swift_beginAccess();
  sub_100022364(v73, &v39[v102], &unk_1005AB3F0, &qword_1004C4BF0);
  swift_endAccess();
  v103 = type metadata accessor for SecureLocationsStewie.Error();
  v104 = v125;
  (*(*(v103 - 8) + 56))(v125, 1, 1, v103);
  v105 = type metadata accessor for Transaction();
  __chkstk_darwin(v105);
  *(&v107 - 2) = v39;
  *(&v107 - 1) = v104;
  static Transaction.named<A>(_:with:)();
  return sub_100002CE0(v104, &qword_1005A9F00, &qword_1004C3448);
}

uint64_t sub_10010FDB4(uint64_t a1, void *a2, uint64_t a3)
{
  v5 = *(a1 + 32);
  v4 = *(a1 + 40);
  if (a3)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v6 = a2;
  v5();
}

uint64_t sub_10010FE54()
{
  ObjectType = swift_getObjectType();
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19[-1] - v4;
  My = type metadata accessor for Feature.FindMy();
  v19[3] = My;
  v19[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v7 = sub_10000331C(v19);
  (*(*(My - 8) + 104))(v7, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  result = sub_100004984(v19);
  if (My)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    v10 = v0;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v19[0] = v14;
      *v13 = 136446210;
      *(v13 + 4) = sub_10000D01C(*&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v19);
      _os_log_impl(&_mh_execute_header, v11, v12, "%{public}s - setupPublishThrottleTimer", v13, 0xCu);
      sub_100004984(v14);
    }

    v15 = type metadata accessor for TaskPriority();
    (*(*(v15 - 8) + 56))(v5, 1, 1, v15);
    v16 = swift_allocObject();
    v16[2] = 0;
    v16[3] = 0;
    v16[4] = v10;
    v16[5] = ObjectType;
    v17 = v10;
    sub_1001D7F30(0, 0, v5, &unk_1004C5440, v16);

    return static XPCAlarm.unregister(identifier:)();
  }

  return result;
}

uint64_t sub_100110148(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v5[4] = swift_task_alloc();
  v7 = async function pointer to daemon.getter[1];
  v8 = swift_task_alloc();
  v5[5] = v8;
  *v8 = v5;
  v8[1] = sub_100110214;

  return daemon.getter();
}

uint64_t sub_100110214(uint64_t a1)
{
  v3 = *(*v1 + 40);
  v7 = *v1;
  *(*v1 + 48) = a1;

  type metadata accessor for Daemon();
  sub_10001DFF0(&qword_1005AB4E0, &type metadata accessor for Daemon);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10011036C, v5, v4);
}

uint64_t sub_10011036C()
{
  v1 = *(v0 + 48);
  *(v0 + 56) = Daemon.xpcAlarmEventHandler.getter();

  return _swift_task_switch(sub_1001103E0, 0, 0);
}

uint64_t sub_1001103E0()
{
  v27 = v0;
  v1 = *(v0 + 56);
  if (v1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000A6F0(v2, qword_1005DFB98);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v26 = v6;
      *v5 = 136446210;
      *(v5 + 4) = sub_10000D01C(0xD000000000000045, 0x80000001004DDE90, &v26);
      _os_log_impl(&_mh_execute_header, v3, v4, "Registering listener for %{public}s", v5, 0xCu);
      sub_100004984(v6);
    }

    v7 = *(v0 + 32);
    v8 = type metadata accessor for TaskPriority();
    v24 = *(v0 + 16);
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
    v9 = swift_allocObject();
    *(v9 + 16) = 0;
    *(v9 + 24) = 0;
    *(v9 + 32) = v1;
    *(v9 + 40) = v24;

    v10 = v24;
    sub_1001D7F30(0, 0, v7, &unk_1004C5450, v9);

    v11 = *(&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + 1);
    v25 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.addEventsToProcess(with:));
    v12 = swift_task_alloc();
    *(v0 + 64) = v12;
    *v12 = v0;
    v12[1] = sub_1001107B4;

    return v25(&off_10058ADA0);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v14 = *(v0 + 16);
    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = v14;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 16);
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_10000D01C(*(v19 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix), *(v19 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8), &v26);
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s - Daemon not registered XPC Alarm event handler", v20, 0xCu);
      sub_100004984(v21);
    }

    v22 = *(v0 + 32);

    v23 = *(v0 + 8);

    return v23();
  }
}

uint64_t sub_1001107B4()
{
  v1 = *(*v0 + 64);
  v3 = *v0;

  return _swift_task_switch(sub_1001108B0, 0, 0);
}

uint64_t sub_1001108B0()
{
  v1 = v0[7];

  v2 = v0[4];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100110918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a5;
  v6 = sub_10004B564(&qword_1005AB4E8, &qword_1004C5458);
  v5[5] = v6;
  v7 = *(v6 - 8);
  v5[6] = v7;
  v8 = *(v7 + 64) + 15;
  v9 = swift_task_alloc();
  v5[7] = v9;
  v10 = sub_10004B564(&unk_1005AB4F0, &unk_1004C5460);
  v5[8] = v10;
  v11 = *(v10 - 8);
  v5[9] = v11;
  v12 = *(v11 + 64) + 15;
  v5[10] = swift_task_alloc();
  v13 = *(&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + 1);
  v16 = (&async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:) + async function pointer to dispatch thunk of XPCAlarmEventHandler.asyncStream(name:));
  v14 = swift_task_alloc();
  v5[11] = v14;
  *v14 = v5;
  v14[1] = sub_100110ABC;

  return v16(v9, 0xD000000000000045, 0x80000001004DDE90);
}

uint64_t sub_100110ABC()
{
  v1 = *(*v0 + 88);
  v3 = *v0;

  return _swift_task_switch(sub_100110BB8, 0, 0);
}

uint64_t sub_100110BB8()
{
  v1 = v0[10];
  v3 = v0[6];
  v2 = v0[7];
  v4 = v0[5];
  AsyncStream.makeAsyncIterator()();
  (*(v3 + 8))(v2, v4);
  v0[12] = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix;
  v5 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100110CA0;
  v7 = v0[10];
  v8 = v0[8];

  return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v8);
}

uint64_t sub_100110CA0()
{
  v1 = *(*v0 + 104);
  v3 = *v0;

  return _swift_task_switch(sub_100110D9C, 0, 0);
}

uint64_t sub_100110D9C()
{
  v20 = v0;
  v2 = v0[2];
  v1 = v0[3];
  if (v1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = v0[4];
    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFB98);
    v5 = v3;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = v0[4] + v0[12];
      v9 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      *v9 = 136446466;
      *(v9 + 4) = sub_10000D01C(*v8, *(v8 + 8), &v19);
      *(v9 + 12) = 2082;
      v10 = sub_10000D01C(v2, v1, &v19);

      *(v9 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s - XPC alarm fired for %{public}s", v9, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    v14 = v0[4];
    sub_100111050();
    v15 = async function pointer to AsyncStream.Iterator.next(isolation:)[1];
    v16 = swift_task_alloc();
    v0[13] = v16;
    *v16 = v0;
    v16[1] = sub_100110CA0;
    v17 = v0[10];
    v18 = v0[8];

    return AsyncStream.Iterator.next(isolation:)(v0 + 2, 0, 0, v18);
  }

  else
  {
    v11 = v0[7];
    (*(v0[9] + 8))(v0[10], v0[8]);

    v12 = v0[1];

    return v12();
  }
}

uint64_t sub_100111050()
{
  ObjectType = swift_getObjectType();
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v2 - 8);
  v3 = *(v22 + 64);
  __chkstk_darwin(v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v6 = *(v21 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v21);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  v11 = v0;
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(*&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
    *(v14 + 12) = 2082;
    *(v14 + 14) = sub_10000D01C(0xD000000000000018, 0x80000001004E1760, aBlock);
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - %{public}s", v14, 0x16u);
    swift_arrayDestroy();
  }

  v15 = *&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v16 = swift_allocObject();
  *(v16 + 16) = v11;
  *(v16 + 24) = ObjectType;
  aBlock[4] = sub_10011F228;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590B28;
  v17 = _Block_copy(aBlock);
  v18 = v11;
  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v17);
  (*(v22 + 8))(v5, v2);
  (*(v6 + 8))(v9, v21);
}

void sub_10011147C(void *a1)
{
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v53 = *(v2 - 8);
  v3 = *(v53 + 64);
  __chkstk_darwin(v2);
  v46 = &v44[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5);
  v8 = &v44[-v7];
  v9 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v49 = &v44[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v13 = __chkstk_darwin(v11);
  v51 = &v44[-v14];
  __chkstk_darwin(v13);
  v16 = &v44[-v15];
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = sub_10000A6F0(v17, qword_1005DFB98);
  v19 = a1;
  v50 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = v5;
    v24 = swift_slowAlloc();
    v55 = v24;
    *v22 = 136446210;
    *(v22 + 4) = sub_10000D01C(*&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v55);
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s - throttle period complete", v22, 0xCu);
    sub_100004984(v24);
    v5 = v23;
  }

  static XPCAlarm.unregister(identifier:)();
  v25 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v26 = v53;
  v48 = *(v53 + 104);
  v48(v16, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v2);
  v47 = *(v26 + 56);
  v47(v16, 0, 1, v2);
  v27 = *(v5 + 48);
  v52 = v19;
  sub_100005F04(&v19[v25], v8, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v16, &v8[v27], &qword_1005AB4B0, &unk_1004C5410);
  v28 = *(v26 + 48);
  if (v28(v8, 1, v2) == 1)
  {
    sub_100002CE0(v16, &qword_1005AB4B0, &unk_1004C5410);
    v29 = v28(&v8[v27], 1, v2);
    v30 = v52;
    if (v29 == 1)
    {
      sub_100002CE0(v8, &qword_1005AB4B0, &unk_1004C5410);
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  v31 = v51;
  sub_100005F04(v8, v51, &qword_1005AB4B0, &unk_1004C5410);
  if (v28(&v8[v27], 1, v2) == 1)
  {
    sub_100002CE0(v16, &qword_1005AB4B0, &unk_1004C5410);
    (*(v53 + 8))(v31, v2);
    v30 = v52;
LABEL_10:
    sub_100002CE0(v8, &qword_1005AB4A8, &qword_1004C5408);
    goto LABEL_11;
  }

  v37 = v53;
  v38 = v46;
  (*(v53 + 32))(v46, &v8[v27], v2);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
  v45 = dispatch thunk of static Equatable.== infix(_:_:)();
  v39 = *(v37 + 8);
  v39(v38, v2);
  sub_100002CE0(v16, &qword_1005AB4B0, &unk_1004C5410);
  v39(v51, v2);
  sub_100002CE0(v8, &qword_1005AB4B0, &unk_1004C5410);
  v30 = v52;
  if (v45)
  {
LABEL_15:
    v40 = v49;
    v48(v49, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v2);
    v47(v40, 0, 1, v2);
    swift_beginAccess();
    sub_100022364(v40, &v30[v25], &qword_1005AB4B0, &unk_1004C5410);
    swift_endAccess();
    v41 = *&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
    if (v41)
    {
      v42 = v41;
      v43 = [v42 getState];
      sub_100116DE4();
    }

    return;
  }

LABEL_11:
  v32 = v30;
  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    v54 = v36;
    *v35 = 136446210;
    *(v35 + 4) = sub_10000D01C(*&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v32[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v54);
    _os_log_impl(&_mh_execute_header, v33, v34, "%{public}s - completed throttle deadline but not in throttled state.doing nothing", v35, 0xCu);
    sub_100004984(v36);
  }
}

uint64_t sub_100111B9C()
{
  v1 = v0;
  v2 = type metadata accessor for Date();
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - v8;
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = type metadata accessor for DispatchPredicate();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = (&v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v16 = v17;
  (*(v13 + 104))(v16, enum case for DispatchPredicate.onQueue(_:), v12);
  v18 = v17;
  LOBYTE(v17) = _dispatchPreconditionTest(_:)();
  (*(v13 + 8))(v16, v12);
  if (v17)
  {
    sub_10011445C();
    Date.addingTimeInterval(_:)();
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v19 = type metadata accessor for Logger();
  sub_10000A6F0(v19, qword_1005DFB98);
  v20 = v33;
  (*(v33 + 16))(v9, v11, v2);
  v21 = v1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v34 = v25;
    *v24 = 136446466;
    *(v24 + 4) = sub_10000D01C(*&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v21[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v34);
    *(v24 + 12) = 2048;
    static Date.trustedNow.getter(v6);
    Date.timeIntervalSince(_:)();
    v27 = v26;
    v28 = *(v33 + 8);
    v28(v6, v2);
    v28(v9, v2);
    *(v24 + 14) = v27;
    _os_log_impl(&_mh_execute_header, v22, v23, "%{public}s - entering throttle - remaining period %f", v24, 0x16u);
    sub_100004984(v25);
  }

  else
  {

    v28 = *(v20 + 8);
    v28(v9, v2);
  }

  String.utf8CString.getter();
  xpc_set_event();

  v29 = xpc_dictionary_create(0, 0, 0);
  result = Date.timeIntervalSince1970.getter();
  if ((*&v31 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_14;
  }

  if (v31 <= -9.22337204e18)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v31 >= 9.22337204e18)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v32 = 1000000000 * v31;
  if ((v31 * 1000000000) >> 64 == v32 >> 63)
  {
    xpc_dictionary_set_date(v29, "Date", v32);
    String.utf8CString.getter();
    xpc_set_event();
    swift_unknownObjectRelease();
    v28(v11, v2);
  }

LABEL_16:
  __break(1u);
  return result;
}

void sub_100112068()
{
  v1 = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueueSynchronizer];
  v2._object = 0x80000001004E1680;
  v2._countAndFlagsBits = 0xD000000000000013;
  prohibitAsyncContext(functionName:)(v2);
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v3 = *(v1 + 24);
  v4 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v6)
  {
    v5 = *(v1 + 16);
    __chkstk_darwin(v4);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    sub_100112184(v0);
  }
}

void sub_100112184(char *a1)
{
  v3 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v45[-1] - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v12 = &v45[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v45[-1] - v13;
  v15 = [objc_opt_self() standardUserDefaults];
  v16 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey];
  v17 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey + 8];
  v18 = String._bridgeToObjectiveC()();
  [v15 doubleForKey:v18];
  v20 = v19;

  if (v20 > 0.0)
  {
    Date.init(timeIntervalSince1970:)();
    static Date.trustedNow.getter(v12);
    Date.timeIntervalSince(_:)();
    v22 = v21;
    v23 = sub_10011445C();
    v46 = v7;
    if (v22 >= v23)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000A6F0(v36, qword_1005DFB98);
      v37 = a1;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v45[0] = v41;
        *v40 = 136446210;
        *(v40 + 4) = sub_10000D01C(*&v37[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v37[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v45);
        _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s - device not in throttle period", v40, 0xCu);
        sub_100004984(v41);
      }

      sub_100111050();
    }

    else
    {
      v24 = v23;
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000A6F0(v25, qword_1005DFB98);
      v26 = a1;
      v27 = Logger.logObject.getter();
      v28 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        v44 = v1;
        v30 = v29;
        v31 = swift_slowAlloc();
        v45[0] = v31;
        *v30 = 136446722;
        *(v30 + 4) = sub_10000D01C(*&v26[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v26[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v45);
        *(v30 + 12) = 2048;
        *(v30 + 14) = v22;
        *(v30 + 22) = 2048;
        *(v30 + 24) = v24;
        _os_log_impl(&_mh_execute_header, v27, v28, "%{public}s - still in throttle period %f. configuredThrottle %f", v30, 0x20u);
        sub_100004984(v31);
      }

      v32 = enum case for SecureLocationsStewie.ServiceState.throttled(_:);
      v33 = type metadata accessor for SecureLocationsStewie.ServiceState();
      v34 = *(v33 - 8);
      (*(v34 + 104))(v6, v32, v33);
      (*(v34 + 56))(v6, 0, 1, v33);
      v35 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
      swift_beginAccess();
      sub_100022364(v6, &v26[v35], &qword_1005AB4B0, &unk_1004C5410);
      swift_endAccess();
      sub_100111B9C();
    }

    v42 = *(v8 + 8);
    v43 = v46;
    v42(v12, v46);
    v42(v14, v43);
  }
}

void sub_1001126B4()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v50 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v50 - v8;
  v10 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v56 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v57 = &v50 - v15;
  __chkstk_darwin(v14);
  v17 = &v50 - v16;
  v18 = type metadata accessor for DispatchPredicate();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v18);
  v22 = (&v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v22 = v23;
  (*(v19 + 104))(v22, enum case for DispatchPredicate.onQueue(_:), v18);
  v24 = v23;
  LOBYTE(v23) = _dispatchPreconditionTest(_:)();
  (*(v19 + 8))(v22, v18);
  if ((v23 & 1) == 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v25 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v52 = *(v3 + 104);
  v52(v17, enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:), v2);
  v26 = *(v3 + 56);
  v53 = v3 + 56;
  v51 = v26;
  v26(v17, 0, 1, v2);
  v27 = *(v6 + 48);
  v54 = v25;
  v55 = v1;
  sub_100005F04(&v1[v25], v9, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v17, &v9[v27], &qword_1005AB4B0, &unk_1004C5410);
  v28 = *(v3 + 48);
  if (v28(v9, 1, v2) == 1)
  {
    sub_100002CE0(v17, &qword_1005AB4B0, &unk_1004C5410);
    if (v28(&v9[v27], 1, v2) == 1)
    {
      sub_100002CE0(v9, &qword_1005AB4B0, &unk_1004C5410);
      goto LABEL_9;
    }

LABEL_7:
    sub_100002CE0(v9, &qword_1005AB4A8, &qword_1004C5408);
    return;
  }

  v29 = v57;
  sub_100005F04(v9, v57, &qword_1005AB4B0, &unk_1004C5410);
  if (v28(&v9[v27], 1, v2) == 1)
  {
    sub_100002CE0(v17, &qword_1005AB4B0, &unk_1004C5410);
    (*(v3 + 8))(v29, v2);
    goto LABEL_7;
  }

  v30 = v50;
  (*(v3 + 32))(v50, &v9[v27], v2);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
  v31 = dispatch thunk of static Equatable.== infix(_:_:)();
  v32 = *(v3 + 8);
  v32(v30, v2);
  sub_100002CE0(v17, &qword_1005AB4B0, &unk_1004C5410);
  v32(v29, v2);
  sub_100002CE0(v9, &qword_1005AB4B0, &unk_1004C5410);
  if ((v31 & 1) == 0)
  {
    return;
  }

LABEL_9:
  if (qword_1005A7EE8 != -1)
  {
LABEL_19:
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  sub_10000A6F0(v33, qword_1005DFB98);
  v34 = v55;
  v35 = v55;
  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v58[0] = v39;
    *v38 = 136446210;
    *(v38 + 4) = sub_10000D01C(*&v35[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v35[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v58);
    _os_log_impl(&_mh_execute_header, v36, v37, "%{public}s - resetStateIfPublishInProgress - will reset", v38, 0xCu);
    sub_100004984(v39);
  }

  v40 = v56;
  v52(v56, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v2);
  v51(v40, 0, 1, v2);
  v41 = v54;
  swift_beginAccess();
  sub_100022364(v40, v34 + v41, &qword_1005AB4B0, &unk_1004C5410);
  swift_endAccess();
  v42 = *&v35[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_dataClient];
  if (v42)
  {
    v43 = v42;
    v44 = [v43 getState];
    sub_100116DE4(v44, 1);
  }

  else
  {
    v45 = v35;
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v58[0] = v49;
      *v48 = 136446210;
      *(v48 + 4) = sub_10000D01C(*&v45[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v45[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v58);
      _os_log_impl(&_mh_execute_header, v46, v47, "%{public}s - resetStateIfPublishInProgress - No data client available", v48, 0xCu);
      sub_100004984(v49);
    }
  }
}

uint64_t sub_100112E80(char a1)
{
  v3 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueueSynchronizer];
  v4._object = 0x80000001004E1680;
  v4._countAndFlagsBits = 0xD000000000000013;
  prohibitAsyncContext(functionName:)(v4);
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v5 = *(v3 + 24);
  v6 = static OS_dispatch_queue.getSpecific<A>(key:)();
  if (v9)
  {
    v7 = *(v3 + 16);
    __chkstk_darwin(v6);
    OS_dispatch_queue.sync<A>(execute:)();
  }

  else
  {
    sub_100112FB0(v1, a1 & 1, &v9);
  }

  return v9;
}

void sub_100112FB0(void *a1@<X0>, int a2@<W1>, char *a3@<X8>)
{
  v137 = a3;
  v129 = a2;
  v133 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v136 = *(v133 - 8);
  v4 = *(v136 + 64);
  __chkstk_darwin(v133);
  v130 = &v111[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v135 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v6 = *(*(v135 - 8) + 64);
  v7 = __chkstk_darwin(v135);
  v128 = &v111[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __chkstk_darwin(v7);
  v127 = &v111[-v10];
  v11 = __chkstk_darwin(v9);
  v131 = &v111[-v12];
  __chkstk_darwin(v11);
  v14 = &v111[-v13];
  v124 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v15 = *(*(v124 - 8) + 64);
  v16 = __chkstk_darwin(v124);
  v123 = &v111[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = __chkstk_darwin(v16);
  v125 = &v111[-v19];
  v20 = __chkstk_darwin(v18);
  v132 = &v111[-v21];
  v22 = __chkstk_darwin(v20);
  v126 = &v111[-v23];
  v24 = __chkstk_darwin(v22);
  v134 = &v111[-v25];
  v26 = __chkstk_darwin(v24);
  v28 = &v111[-v27];
  v29 = __chkstk_darwin(v26);
  v31 = &v111[-v30];
  v32 = __chkstk_darwin(v29);
  v34 = &v111[-v33];
  __chkstk_darwin(v32);
  v36 = &v111[-v35];
  My = type metadata accessor for Feature.FindMy();
  v138[3] = My;
  v138[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v38 = sub_10000331C(v138);
  (*(*(My - 8) + 104))(v38, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v138);
  if ((My & 1) == 0)
  {
    goto LABEL_11;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v39 = sub_100021148();

  if ((v39 & 1) == 0 || *(a1 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported) != 1)
  {
LABEL_11:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v55 = type metadata accessor for Logger();
    sub_10000A6F0(v55, qword_1005DFB98);
    v56 = a1;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_17;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v138[0] = v60;
    *v59 = 136446210;
    *(v59 + 4) = sub_10000D01C(*&v56[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v56[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v138);
    v61 = "%{public}s - canPublishLocation - feature disabled";
    goto LABEL_15;
  }

  v40 = sub_100021BB4();

  if ((v40 & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v63 = type metadata accessor for Logger();
    sub_10000A6F0(v63, qword_1005DFB98);
    v64 = a1;
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v57, v58))
    {
      goto LABEL_17;
    }

    v59 = swift_slowAlloc();
    v60 = swift_slowAlloc();
    v138[0] = v60;
    *v59 = 136446210;
    *(v59 + 4) = sub_10000D01C(*&v64[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v64[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v138);
    v61 = "%{public}s - canPublishLocation - not a location publishing device. ";
    goto LABEL_15;
  }

  v113 = v28;
  v41 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v42 = v136;
  v43 = *(v136 + 104);
  v112 = enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:);
  v44 = v133;
  v120 = v136 + 104;
  v118 = v43;
  v43(v36);
  v45 = *(v42 + 56);
  v119 = v42 + 56;
  v117 = v45;
  v45(v36, 0, 1, v44);
  v46 = *(v135 + 48);
  v122 = a1;
  v116 = v41;
  sub_100005F04(a1 + v41, v14, &qword_1005AB4B0, &unk_1004C5410);
  v115 = v46;
  sub_100005F04(v36, &v14[v46], &qword_1005AB4B0, &unk_1004C5410);
  v48 = v136 + 48;
  v47 = *(v136 + 48);
  v49 = v47(v14, 1, v44);
  v121 = v48;
  v114 = v47;
  if (v49 == 1)
  {
    sub_100002CE0(v36, &qword_1005AB4B0, &unk_1004C5410);
    v50 = v47(&v14[v115], 1, v44);
    v51 = v44;
    v52 = v113;
    if (v50 == 1)
    {
      sub_100002CE0(v14, &qword_1005AB4B0, &unk_1004C5410);
      v53 = v116;
      v54 = v134;
      if ((v129 & 1) == 0)
      {
LABEL_38:
        if (qword_1005A7EE8 != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        sub_10000A6F0(v80, qword_1005DFB98);
        v81 = v122;
        v57 = Logger.logObject.getter();
        v58 = static os_log_type_t.default.getter();

        if (!os_log_type_enabled(v57, v58))
        {
          goto LABEL_17;
        }

        v59 = swift_slowAlloc();
        v60 = swift_slowAlloc();
        v139 = v60;
        *v59 = 136446210;
        *(v59 + 4) = sub_10000D01C(*&v81[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v81[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v139);
        v61 = "%{public}s - canPublishLocation - publish already in progress";
        goto LABEL_15;
      }

      goto LABEL_26;
    }
  }

  else
  {
    sub_100005F04(v14, v34, &qword_1005AB4B0, &unk_1004C5410);
    if (v47(&v14[v115], 1, v44) != 1)
    {
      v76 = v44;
      v77 = v136;
      v78 = v130;
      (*(v136 + 32))(v130, &v14[v115], v76);
      sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
      LODWORD(v115) = dispatch thunk of static Equatable.== infix(_:_:)();
      v79 = *(v77 + 8);
      v79(v78, v76);
      sub_100002CE0(v36, &qword_1005AB4B0, &unk_1004C5410);
      v79(v34, v76);
      sub_100002CE0(v14, &qword_1005AB4B0, &unk_1004C5410);
      v51 = v76;
      v53 = v116;
      v54 = v134;
      v52 = v113;
      if ((v115 & 1) != 0 && (v129 & 1) == 0)
      {
        goto LABEL_38;
      }

      goto LABEL_26;
    }

    sub_100002CE0(v36, &qword_1005AB4B0, &unk_1004C5410);
    (*(v136 + 8))(v34, v44);
    v51 = v44;
    v52 = v113;
  }

  sub_100002CE0(v14, &qword_1005AB4A8, &qword_1004C5408);
  v53 = v116;
  v54 = v134;
LABEL_26:
  v118(v31, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v51);
  v117(v31, 0, 1, v51);
  v65 = *(v135 + 48);
  v66 = v131;
  sub_100005F04(v122 + v53, v131, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v31, &v66[v65], &qword_1005AB4B0, &unk_1004C5410);
  v67 = v114;
  if (v114(v66, 1, v51) == 1)
  {
    sub_100002CE0(v31, &qword_1005AB4B0, &unk_1004C5410);
    v68 = v67(&v66[v65], 1, v51) == 1;
    v69 = v66;
    v70 = v132;
    if (!v68)
    {
      goto LABEL_32;
    }

    sub_100002CE0(v69, &qword_1005AB4B0, &unk_1004C5410);
  }

  else
  {
    sub_100005F04(v66, v52, &qword_1005AB4B0, &unk_1004C5410);
    if (v67(&v66[v65], 1, v51) == 1)
    {
      sub_100002CE0(v31, &qword_1005AB4B0, &unk_1004C5410);
      (*(v136 + 8))(v52, v51);
      v69 = v66;
      v70 = v132;
LABEL_32:
      sub_100002CE0(v69, &qword_1005AB4A8, &qword_1004C5408);
      goto LABEL_33;
    }

    v84 = v136;
    v85 = &v66[v65];
    v86 = v66;
    v87 = v130;
    (*(v136 + 32))(v130, v85, v51);
    sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
    v88 = dispatch thunk of static Equatable.== infix(_:_:)();
    v89 = *(v84 + 8);
    v89(v87, v51);
    sub_100002CE0(v31, &qword_1005AB4B0, &unk_1004C5410);
    v89(v52, v51);
    v54 = v134;
    v53 = v116;
    v90 = v86;
    v67 = v114;
    sub_100002CE0(v90, &qword_1005AB4B0, &unk_1004C5410);
    v70 = v132;
    if ((v88 & 1) == 0)
    {
LABEL_33:
      v118(v54, enum case for SecureLocationsStewie.ServiceState.available(_:), v51);
      v117(v54, 0, 1, v51);
      v71 = *(v135 + 48);
      v72 = v127;
      sub_100005F04(v122 + v53, v127, &qword_1005AB4B0, &unk_1004C5410);
      v73 = v72;
      sub_100005F04(v54, &v72[v71], &qword_1005AB4B0, &unk_1004C5410);
      if (v67(v72, 1, v51) == 1)
      {
        sub_100002CE0(v54, &qword_1005AB4B0, &unk_1004C5410);
        v74 = v67(&v72[v71], 1, v51);
        v75 = v128;
        if (v74 == 1)
        {
          sub_100002CE0(v73, &qword_1005AB4B0, &unk_1004C5410);
          v62 = 1;
          goto LABEL_18;
        }
      }

      else
      {
        v82 = v126;
        sub_100005F04(v72, v126, &qword_1005AB4B0, &unk_1004C5410);
        if (v67(&v72[v71], 1, v51) != 1)
        {
          v101 = v136;
          v102 = &v72[v71];
          v103 = v130;
          (*(v136 + 32))(v130, v102, v51);
          sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
          LODWORD(v134) = dispatch thunk of static Equatable.== infix(_:_:)();
          v104 = *(v101 + 8);
          v104(v103, v51);
          sub_100002CE0(v54, &qword_1005AB4B0, &unk_1004C5410);
          v67 = v114;
          v104(v82, v51);
          v70 = v132;
          sub_100002CE0(v73, &qword_1005AB4B0, &unk_1004C5410);
          v75 = v128;
          if (v134)
          {
            goto LABEL_65;
          }

LABEL_45:
          v118(v70, v112, v51);
          v117(v70, 0, 1, v51);
          v83 = *(v135 + 48);
          sub_100005F04(v122 + v53, v75, &qword_1005AB4B0, &unk_1004C5410);
          sub_100005F04(v70, v75 + v83, &qword_1005AB4B0, &unk_1004C5410);
          if (v67(v75, 1, v51) == 1)
          {
            sub_100002CE0(v70, &qword_1005AB4B0, &unk_1004C5410);
            if (v67((v75 + v83), 1, v51) == 1)
            {
              sub_100002CE0(v75, &qword_1005AB4B0, &unk_1004C5410);
              if (v129)
              {
LABEL_65:
                v62 = 1;
                goto LABEL_18;
              }

LABEL_57:
              if (qword_1005A7EE8 != -1)
              {
                swift_once();
              }

              v94 = type metadata accessor for Logger();
              sub_10000A6F0(v94, qword_1005DFB98);
              v95 = v122;
              v57 = Logger.logObject.getter();
              v96 = static os_log_type_t.default.getter();

              if (!os_log_type_enabled(v57, v96))
              {
                goto LABEL_17;
              }

              v97 = swift_slowAlloc();
              v139 = swift_slowAlloc();
              *v97 = 136446466;
              *(v97 + 4) = sub_10000D01C(*&v95[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v95[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v139);
              *(v97 + 12) = 2080;
              sub_100005F04(v122 + v53, v123, &qword_1005AB4B0, &unk_1004C5410);
              v98 = String.init<A>(describing:)();
              v100 = sub_10000D01C(v98, v99, &v139);

              *(v97 + 14) = v100;
              _os_log_impl(&_mh_execute_header, v57, v96, "%{public}s - canPublishLocation - state is not available %s", v97, 0x16u);
              swift_arrayDestroy();

              goto LABEL_16;
            }
          }

          else
          {
            v93 = v125;
            sub_100005F04(v75, v125, &qword_1005AB4B0, &unk_1004C5410);
            if (v67((v75 + v83), 1, v51) != 1)
            {
              v105 = v136;
              v106 = v75 + v83;
              v107 = v130;
              (*(v136 + 32))(v130, v106, v51);
              sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
              v108 = dispatch thunk of static Equatable.== infix(_:_:)();
              v109 = v70;
              v110 = *(v105 + 8);
              v110(v107, v51);
              sub_100002CE0(v109, &qword_1005AB4B0, &unk_1004C5410);
              v110(v93, v51);
              v53 = v116;
              sub_100002CE0(v75, &qword_1005AB4B0, &unk_1004C5410);
              if (v108 & 1) != 0 && (v129)
              {
                goto LABEL_65;
              }

              goto LABEL_57;
            }

            sub_100002CE0(v70, &qword_1005AB4B0, &unk_1004C5410);
            (*(v136 + 8))(v93, v51);
          }

          sub_100002CE0(v75, &qword_1005AB4A8, &qword_1004C5408);
          goto LABEL_57;
        }

        sub_100002CE0(v54, &qword_1005AB4B0, &unk_1004C5410);
        (*(v136 + 8))(v82, v51);
        v75 = v128;
      }

      sub_100002CE0(v73, &qword_1005AB4A8, &qword_1004C5408);
      goto LABEL_45;
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v91 = type metadata accessor for Logger();
  sub_10000A6F0(v91, qword_1005DFB98);
  v92 = v122;
  v57 = Logger.logObject.getter();
  v58 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v57, v58))
  {
    goto LABEL_17;
  }

  v59 = swift_slowAlloc();
  v60 = swift_slowAlloc();
  v139 = v60;
  *v59 = 136446210;
  *(v59 + 4) = sub_10000D01C(*&v92[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v92[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v139);
  v61 = "%{public}s - canPublishLocation - publish is throttled";
LABEL_15:
  _os_log_impl(&_mh_execute_header, v57, v58, v61, v59, 0xCu);
  sub_100004984(v60);

LABEL_16:

LABEL_17:

  v62 = 0;
LABEL_18:
  *v137 = v62;
}

double sub_10011445C()
{
  v1 = type metadata accessor for SecureLocationsConfig();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = (&v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1004BA244();
  if (v6)
  {
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v7 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v7);
    v8 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_100021534(v7 + *(v8 + 28), v4, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v7);

    v9 = v4[13];
    sub_10002178C(v4, type metadata accessor for SecureLocationsConfig);
  }

  else
  {
    v10 = v5;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000A6F0(v11, qword_1005DFB98);
    v12 = v0;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      v19 = v16;
      *v15 = 136446466;
      *(v15 + 4) = sub_10000D01C(*&v12[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v12[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
      *(v15 + 12) = 2048;
      *(v15 + 14) = v10;
      _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s - using defaults override for timeBetweenPublish %ld", v15, 0x16u);
      sub_100004984(v16);
    }

    return v10;
  }

  return v9;
}

void sub_100114710(char *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  *(v6 + 24) = a3;
  v7 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_publishCompletions;
  swift_beginAccess();
  v8 = *&a1[v7];

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *&a1[v7] = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v8 = sub_1001FD2E8(0, v8[2] + 1, 1, v8);
    *&a1[v7] = v8;
  }

  v11 = v8[2];
  v10 = v8[3];
  if (v11 >= v10 >> 1)
  {
    v8 = sub_1001FD2E8((v10 > 1), v11 + 1, 1, v8);
  }

  v8[2] = v11 + 1;
  v12 = &v8[2 * v11];
  v12[4] = sub_10011F154;
  v12[5] = v6;
  *&a1[v7] = v8;
  swift_endAccess();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFB98);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = v18;
    *v17 = 136446210;
    *(v17 + 4) = sub_10000D01C(*&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v14[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s - added callback for location publish", v17, 0xCu);
    sub_100004984(v18);
  }
}

uint64_t sub_100114930(uint64_t a1, uint64_t a2)
{
  v23[0] = a2;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v26 = *(v4 - 8);
  v5 = *(v26 + 64);
  __chkstk_darwin(v4);
  v7 = v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v24 = *(v8 - 8);
  v25 = v8;
  v9 = *(v24 + 64);
  __chkstk_darwin(v8);
  v11 = v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12 - 8);
  v16 = v23 - v15;
  v23[1] = *&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  sub_100005F04(a1, v23 - v15, &unk_1005AB4C0, &qword_1004C3440);
  v17 = (*(v13 + 80) + 24) & ~*(v13 + 80);
  v18 = (v14 + v17 + 7) & 0xFFFFFFFFFFFFFFF8;
  v19 = swift_allocObject();
  *(v19 + 16) = v2;
  sub_1000176A8(v16, v19 + v17, &unk_1005AB4C0, &qword_1004C3440);
  *(v19 + v18) = v23[0];
  aBlock[4] = sub_10011EFEC;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005909E8;
  v20 = _Block_copy(aBlock);
  v21 = v2;
  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v27 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v26 + 8))(v7, v4);
  (*(v24 + 8))(v11, v25);
}

uint64_t sub_100114CE0(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005DFB98);
  v7 = a1;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v19 = v11;
    *v10 = 136446466;
    *(v10 + 4) = sub_10000D01C(*&v7[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v7[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
    *(v10 + 12) = 2048;
    v12 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_publishCompletions;
    swift_beginAccess();
    *(v10 + 14) = *(*&v7[v12] + 16);

    _os_log_impl(&_mh_execute_header, v8, v9, "%{public}s - calling completions %ld", v10, 0x16u);
    sub_100004984(v11);
  }

  else
  {
  }

  v13 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_publishCompletions;
  v14 = swift_beginAccess();
  v15 = *&v7[v13];
  __chkstk_darwin(v14);
  v18[2] = a2;
  v18[3] = a3;

  sub_10008E2F8(sub_10011F014, v18, v15);

  v16 = *&v7[v13];
  *&v7[v13] = _swiftEmptyArrayStorage;
}

uint64_t sub_100114F10(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v31 = a2;
  v32 = a3;
  v34 = type metadata accessor for DispatchWorkItemFlags();
  v37 = *(v34 - 8);
  v4 = *(v37 + 64);
  __chkstk_darwin(v34);
  v33 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v35 = *(v6 - 8);
  v36 = v6;
  v7 = *(v35 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v30 = *(v10 - 8);
  v11 = *(v30 + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v29 - v12;
  v14 = type metadata accessor for DispatchQoS.QoSClass();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a1;
  v19 = a1[1];
  v21 = swift_allocObject();
  *(v21 + 16) = v20;
  *(v21 + 24) = v19;
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v15 + 104))(v18, enum case for DispatchQoS.QoSClass.default(_:), v14);

  v22 = static OS_dispatch_queue.global(qos:)();
  (*(v15 + 8))(v18, v14);
  sub_100005F04(v31, v13, &unk_1005AB4C0, &qword_1004C3440);
  v23 = (*(v30 + 80) + 32) & ~*(v30 + 80);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_10011F030;
  *(v24 + 24) = v21;
  sub_1000176A8(v13, v24 + v23, &unk_1005AB4C0, &qword_1004C3440);
  *(v24 + ((v11 + v23 + 7) & 0xFFFFFFFFFFFFFFF8)) = v32;
  aBlock[4] = sub_10011F068;
  aBlock[5] = v24;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590A60;
  v25 = _Block_copy(aBlock);

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v27 = v33;
  v26 = v34;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v25);

  (*(v37 + 8))(v27, v26);
  (*(v35 + 8))(v9, v36);
}

void sub_1001153F4(char a1, void *a2)
{
  if (a1)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_10000A6F0(v3, qword_1005DFB98);
    v4 = a2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v15 = v8;
      *v7 = 136446210;
      *(v7 + 4) = sub_10000D01C(*&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v4[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v15);
      _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s - secure locations is setup - requesting startMonitor", v7, 0xCu);
      sub_100004984(v8);
    }

    sub_10001D6F0(DarwinNotification.init(name:value:), 0);
  }

  else
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFB98);
    v10 = a2;
    oslog = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v15 = v13;
      *v12 = 136446210;
      *(v12 + 4) = sub_10000D01C(*&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v10[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v15);
      _os_log_impl(&_mh_execute_header, oslog, v11, "%{public}s - setupSecureLocations returned as false. Cannot start monitor. Not retrying to avoid loop", v12, 0xCu);
      sub_100004984(v13);
    }
  }
}

uint64_t sub_10011568C(void (*a1)(uint64_t))
{
  v2 = type metadata accessor for SecureLocationsStewie.Error();
  sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
  v3 = swift_allocError();
  (*(*(v2 - 8) + 104))(v4, enum case for SecureLocationsStewie.Error.initialization(_:), v2);
  a1(v3);
}

uint64_t sub_100115794(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22[0] = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v14 = *(v23 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v23);
  v17 = v22 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22[1] = *&v5[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = v22[0];
  v19 = _Block_copy(aBlock);
  v20 = v5;

  static DispatchQoS.unspecified.getter();
  v24 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);
  (*(v10 + 8))(v13, v9);
  (*(v14 + 8))(v17, v23);
}

uint64_t sub_100115A6C(void *a1, uint64_t a2, uint64_t a3)
{
  v88 = a2;
  v89 = a3;
  v84 = type metadata accessor for DispatchWorkItemFlags();
  v94 = *(v84 - 8);
  v4 = *(v94 + 64);
  __chkstk_darwin(v84);
  v91 = &v74[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for DispatchQoS();
  v92 = *(v6 - 8);
  v93 = v6;
  v7 = *(v92 + 64);
  __chkstk_darwin(v6);
  v90 = &v74[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v86 = *(v9 - 8);
  v87 = v9;
  v10 = *(v86 + 64);
  __chkstk_darwin(v9);
  v85 = &v74[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v74[-v14];
  v16 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v83 = &v74[-((v18 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = __chkstk_darwin(v19);
  v22 = &v74[-v21];
  __chkstk_darwin(v20);
  v24 = &v74[-v23];
  v25 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  sub_100005F04(a1 + v25, v15, &qword_1005AB4B0, &unk_1004C5410);
  if ((*(v17 + 48))(v15, 1, v16) == 1)
  {
    sub_100002CE0(v15, &qword_1005AB4B0, &unk_1004C5410);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005DFB98);
    v27 = a1;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      v31 = swift_slowAlloc();
      aBlock = v31;
      *v30 = 136446210;
      *(v30 + 4) = sub_10000D01C(*&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      _os_log_impl(&_mh_execute_header, v28, v29, "%{public}s - no current state - responding as unknown", v30, 0xCu);
      sub_100004984(v31);
    }

    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v33 = v85;
    v32 = v86;
    v34 = v87;
    (*(v86 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v87);
    v35 = static OS_dispatch_queue.global(qos:)();
    (*(v32 + 8))(v33, v34);
    v36 = swift_allocObject();
    v37 = v89;
    *(v36 + 16) = v88;
    *(v36 + 24) = v37;
    v100 = sub_10011EF5C;
    v101 = v36;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_100020828;
    v99 = &unk_1005907B8;
    v38 = _Block_copy(&aBlock);

    v39 = v90;
    static DispatchQoS.unspecified.getter();
    v95 = _swiftEmptyArrayStorage;
    sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v40 = v91;
    v41 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v38);

    (*(v94 + 8))(v40, v41);
    (*(v92 + 8))(v39, v93);
  }

  else
  {
    v42 = *(v17 + 32);
    v81 = v17 + 32;
    v80 = v42;
    v42(v24, v15, v16);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFB98);
    v44 = *(v17 + 16);
    v82 = v24;
    v45 = v24;
    v46 = v44;
    v44(v22, v45, v16);
    v47 = a1;
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();

    v50 = os_log_type_enabled(v48, v49);
    v77 = v46;
    if (v50)
    {
      v51 = swift_slowAlloc();
      v75 = v49;
      v52 = v51;
      v76 = swift_slowAlloc();
      aBlock = v76;
      *v52 = 136446466;
      *(v52 + 4) = sub_10000D01C(*&v47[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v47[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &aBlock);
      *(v52 + 12) = 2080;
      v53 = v83;
      v46(v83, v22, v16);
      v54 = sub_100107C6C(v53);
      v56 = v55;
      v57 = *(v17 + 8);
      v78 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v79 = v57;
      v57(v22, v16);
      v58 = sub_10000D01C(v54, v56, &aBlock);
      v59 = v53;

      *(v52 + 14) = v58;
      _os_log_impl(&_mh_execute_header, v48, v75, "%{public}s - currentState %s", v52, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v60 = *(v17 + 8);
      v78 = (v17 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      v79 = v60;
      v60(v22, v16);
      v59 = v83;
    }

    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v62 = v85;
    v61 = v86;
    v63 = v87;
    (*(v86 + 104))(v85, enum case for DispatchQoS.QoSClass.default(_:), v87);
    v64 = static OS_dispatch_queue.global(qos:)();
    (*(v61 + 8))(v62, v63);
    v65 = v82;
    v77(v59, v82, v16);
    v66 = (*(v17 + 80) + 32) & ~*(v17 + 80);
    v67 = swift_allocObject();
    v68 = v89;
    *(v67 + 16) = v88;
    *(v67 + 24) = v68;
    v80(v67 + v66, v59, v16);
    v100 = sub_10011EF64;
    v101 = v67;
    aBlock = _NSConcreteStackBlock;
    v97 = 1107296256;
    v98 = sub_100020828;
    v99 = &unk_100590808;
    v69 = _Block_copy(&aBlock);

    v70 = v90;
    static DispatchQoS.unspecified.getter();
    v95 = _swiftEmptyArrayStorage;
    sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
    sub_10004B564(&unk_1005A9700, &qword_1004C3820);
    sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
    v71 = v91;
    v72 = v84;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v69);

    (*(v94 + 8))(v71, v72);
    (*(v92 + 8))(v70, v93);
    v79(v65, v16);
  }
}

uint64_t sub_1001165DC(void (*a1)(char *, void))
{
  v2 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 104))(v6, enum case for SecureLocationsStewie.ServiceState.unknown(_:), v2);
  a1(v6, 0);
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_100116704(char *a1, void (*a2)(char *, uint64_t), uint64_t a3)
{
  v47[1] = a3;
  v48 = a2;
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = v47 - v6;
  v8 = sub_10004B564(&unk_1005AB4C0, &qword_1004C3440);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v47 - v10;
  v12 = type metadata accessor for Date();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = __chkstk_darwin(v12);
  v17 = v47 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v15);
  v20 = v47 - v19;
  __chkstk_darwin(v18);
  v22 = v47 - v21;
  My = type metadata accessor for Feature.FindMy();
  v49[3] = My;
  v49[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v24 = sub_10000331C(v49);
  (*(*(My - 8) + 104))(v24, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v49);
  if ((My & 1) == 0)
  {
    goto LABEL_8;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v25 = sub_100021148();

  if ((v25 & 1) != 0 && a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported] == 1)
  {
    v26 = [objc_opt_self() standardUserDefaults];
    v27 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey];
    v28 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_LastPublishDateKey + 8];
    v29 = String._bridgeToObjectiveC()();
    [v26 doubleForKey:v29];
    v31 = v30;

    if (v31 > 0.0)
    {
      Date.init(timeIntervalSince1970:)();
      sub_10011445C();
      Date.addingTimeInterval(_:)();
      v32 = *(v13 + 16);
      v32(v7, v22, v12);
      (*(v13 + 56))(v7, 0, 1, v12);
      v32(v17, v20, v12);
      SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();
      v33 = type metadata accessor for SecureLocationsStewie.PublishResult();
      (*(*(v33 - 8) + 56))(v11, 0, 1, v33);
      v48(v11, 0);
      sub_100002CE0(v11, &unk_1005AB4C0, &qword_1004C3440);
      v34 = *(v13 + 8);
      v34(v20, v12);
      return (v34)(v22, v12);
    }

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_10000A6F0(v40, qword_1005DFB98);
    v41 = a1;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v49[0] = v45;
      *v44 = 136446210;
      *(v44 + 4) = sub_10000D01C(*&v41[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v41[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v49);
      _os_log_impl(&_mh_execute_header, v42, v43, "%{public}s - no last publish. allow immediate", v44, 0xCu);
      sub_100004984(v45);
    }

    (*(v13 + 56))(v7, 1, 1, v12);
    static Date.trustedNow.getter(v20);
    SecureLocationsStewie.PublishResult.init(lastPublished:nextAllowedPublish:)();
    v46 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v46 - 8) + 56))(v11, 0, 1, v46);
    v48(v11, 0);
  }

  else
  {
LABEL_8:
    v36 = type metadata accessor for SecureLocationsStewie.PublishResult();
    (*(*(v36 - 8) + 56))(v11, 1, 1, v36);
    v37 = type metadata accessor for SecureLocationsStewie.Error();
    sub_10001DFF0(&qword_1005A9EF8, &type metadata accessor for SecureLocationsStewie.Error);
    v38 = swift_allocError();
    (*(*(v37 - 8) + 104))(v39, enum case for SecureLocationsStewie.Error.disabled(_:), v37);
    v48(v11, v38);
  }

  return sub_100002CE0(v11, &unk_1005AB4C0, &qword_1004C3440);
}

uint64_t sub_100116DE4(char *a1, int a2)
{
  v3 = v2;
  v173 = a2;
  v168 = a1;
  v4 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4 - 8);
  v163 = &v156[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v6);
  v165 = &v156[-v8];
  v9 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v176 = *(v9 - 8);
  v10 = *(v176 + 64);
  __chkstk_darwin(v9);
  v12 = &v156[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v175 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v13 = *(*(v175 - 8) + 64);
  v14 = __chkstk_darwin(v175);
  v174 = &v156[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v16 = __chkstk_darwin(v14);
  v166 = &v156[-v17];
  __chkstk_darwin(v16);
  v19 = &v156[-v18];
  v171 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v20 = *(*(v171 - 8) + 64);
  v21 = __chkstk_darwin(v171);
  v172 = &v156[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v23 = __chkstk_darwin(v21);
  v170 = &v156[-v24];
  v25 = __chkstk_darwin(v23);
  v164 = &v156[-v26];
  v27 = __chkstk_darwin(v25);
  v167 = &v156[-v28];
  v29 = __chkstk_darwin(v27);
  v178 = &v156[-v30];
  v31 = __chkstk_darwin(v29);
  v33 = &v156[-v32];
  v34 = __chkstk_darwin(v31);
  v36 = &v156[-v35];
  __chkstk_darwin(v34);
  v179 = &v156[-v37];
  v38 = type metadata accessor for DispatchPredicate();
  v39 = *(v38 - 8);
  v40 = *(v39 + 64);
  __chkstk_darwin(v38);
  v42 = &v156[-((v41 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v43 = *(v3 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
  *v42 = v43;
  (*(v39 + 104))(v42, enum case for DispatchPredicate.onQueue(_:), v38);
  v44 = v43;
  LOBYTE(v43) = _dispatchPreconditionTest(_:)();
  v46 = *(v39 + 8);
  v45 = (v39 + 8);
  v46(v42, v38);
  if ((v43 & 1) == 0)
  {
    __break(1u);
    goto LABEL_83;
  }

  v47 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  v177 = v47;
  sub_100005F04(v3 + v47, v179, &qword_1005AB4B0, &unk_1004C5410);
  My = type metadata accessor for Feature.FindMy();
  v181[3] = My;
  v181[4] = sub_10001DFF0(&qword_1005A9EE8, &type metadata accessor for Feature.FindMy);
  v49 = sub_10000331C(v181);
  (*(*(My - 8) + 104))(v49, enum case for Feature.FindMy.fmNiftyCurve(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100004984(v181);
  v50 = v3;
  v169 = v12;
  if ((My & 1) == 0)
  {
    goto LABEL_10;
  }

  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v51 = sub_100021148();

  if ((v51 & 1) == 0 || *(v3 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isStewieSupported) != 1)
  {
LABEL_10:
    v57 = v176;
    v58 = v178;
    (*(v176 + 104))(v178, enum case for SecureLocationsStewie.ServiceState.disabled(_:), v9);
    (*(v57 + 56))(v58, 0, 1, v9);
    v12 = v177;
    swift_beginAccess();
    sub_100022364(v58, &v12[v3], &qword_1005AB4B0, &unk_1004C5410);
    swift_endAccess();
    goto LABEL_11;
  }

  v52 = v176;
  v53 = *(v176 + 104);
  v160 = v176 + 104;
  v159 = v53;
  v53(v36, enum case for SecureLocationsStewie.ServiceState.publishInProgress(_:), v9);
  v54 = *(v52 + 56);
  v162 = v52 + 56;
  v161 = v54;
  v54(v36, 0, 1, v9);
  v55 = *(v175 + 48);
  sub_100005F04(v50 + v177, v19, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v36, &v19[v55], &qword_1005AB4B0, &unk_1004C5410);
  v56 = *(v52 + 48);
  if (v56(v19, 1, v9) == 1)
  {
    sub_100002CE0(v36, &qword_1005AB4B0, &unk_1004C5410);
    if (v56(&v19[v55], 1, v9) == 1)
    {
      sub_100002CE0(v19, &qword_1005AB4B0, &unk_1004C5410);
LABEL_54:
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v122 = type metadata accessor for Logger();
      sub_10000A6F0(v122, qword_1005DFB98);
      v123 = v50;
      v124 = Logger.logObject.getter();
      v125 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v124, v125))
      {
        v126 = swift_slowAlloc();
        v168 = swift_slowAlloc();
        v181[0] = v168;
        *v126 = 136446466;
        *(v126 + 4) = sub_10000D01C(*&v123[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v123[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v181);
        *(v126 + 12) = 2080;
        v12 = v177;
        sub_100005F04(v50 + v177, v178, &qword_1005AB4B0, &unk_1004C5410);
        v127 = String.init<A>(describing:)();
        v129 = sub_10000D01C(v127, v128, v181);

        *(v126 + 14) = v129;
        _os_log_impl(&_mh_execute_header, v124, v125, "%{public}s - not updating state since existing state is %s", v126, 0x16u);
        swift_arrayDestroy();

        v3 = v50;
        v57 = v176;
        goto LABEL_11;
      }

      goto LABEL_64;
    }

    goto LABEL_33;
  }

  sub_100005F04(v19, v33, &qword_1005AB4B0, &unk_1004C5410);
  if (v56(&v19[v55], 1, v9) == 1)
  {
    sub_100002CE0(v36, &qword_1005AB4B0, &unk_1004C5410);
    (*(v176 + 8))(v33, v9);
LABEL_33:
    v158 = v56;
    sub_100002CE0(v19, &qword_1005AB4A8, &qword_1004C5408);
    goto LABEL_34;
  }

  v158 = v56;
  v120 = v176;
  (*(v176 + 32))(v12, &v19[v55], v9);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
  v157 = dispatch thunk of static Equatable.== infix(_:_:)();
  v121 = *(v120 + 8);
  v121(v12, v9);
  sub_100002CE0(v36, &qword_1005AB4B0, &unk_1004C5410);
  v121(v33, v9);
  sub_100002CE0(v19, &qword_1005AB4B0, &unk_1004C5410);
  if (v157)
  {
    goto LABEL_54;
  }

LABEL_34:
  v94 = v168;
  if (([v168 allowedServices] & 4) == 0)
  {
    if ([v94 status] == 1 && (objc_msgSend(v94, "reason") == 4 || objc_msgSend(v94, "reason") == 5))
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v95 = type metadata accessor for Logger();
      sub_10000A6F0(v95, qword_1005DFB98);
      v96 = v50;
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v181[0] = v100;
        *v99 = 136446210;
        *(v99 + 4) = sub_10000D01C(*&v96[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v96[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v181);
        _os_log_impl(&_mh_execute_header, v97, v98, "%{public}s - FindMy publish is not allowed due to geo reasons", v99, 0xCu);
        sub_100004984(v100);
      }

      v101 = [objc_opt_self() locationServicesEnabled];
      v102 = v96;
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.default.getter();

      v105 = os_log_type_enabled(v103, v104);
      if (v101)
      {
        if (v105)
        {
          v106 = swift_slowAlloc();
          v107 = swift_slowAlloc();
          v181[0] = v107;
          *v106 = 136446210;
          *(v106 + 4) = sub_10000D01C(*&v102[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v102[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v181);
          _os_log_impl(&_mh_execute_header, v103, v104, "%{public}s - Location services are enabled", v106, 0xCu);
          sub_100004984(v107);
        }

        v12 = v177;
        v108 = &enum case for SecureLocationsStewie.ServiceState.disabledInGeo(_:);
      }

      else
      {
        if (v105)
        {
          v147 = swift_slowAlloc();
          v148 = swift_slowAlloc();
          v181[0] = v148;
          *v147 = 136446210;
          *(v147 + 4) = sub_10000D01C(*&v102[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v102[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v181);
          _os_log_impl(&_mh_execute_header, v103, v104, "%{public}s - Location services are disabled", v147, 0xCu);
          sub_100004984(v148);
        }

        v12 = v177;
        v108 = &enum case for SecureLocationsStewie.ServiceState.unavailableLocationServices(_:);
      }
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v130 = type metadata accessor for Logger();
      sub_10000A6F0(v130, qword_1005DFB98);
      v131 = v50;
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = swift_slowAlloc();
        v181[0] = v135;
        *v134 = 136446210;
        *(v134 + 4) = sub_10000D01C(*&v131[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v131[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v181);
        _os_log_impl(&_mh_execute_header, v132, v133, "%{public}s - FindMy publish is not available", v134, 0xCu);
        sub_100004984(v135);
      }

      v12 = v177;
      v108 = &enum case for SecureLocationsStewie.ServiceState.unavailable(_:);
    }

    v149 = v178;
    v159(v178, *v108, v9);
    v161(v149, 0, 1, v9);
    swift_beginAccess();
    sub_100022364(v149, &v12[v50], &qword_1005AB4B0, &unk_1004C5410);
    swift_endAccess();
    sub_10011C040();
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v150 = type metadata accessor for Logger();
    sub_10000A6F0(v150, qword_1005DFB98);
    v3 = v50;
    v151 = v50;
    v152 = Logger.logObject.getter();
    v153 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v152, v153))
    {
      v154 = swift_slowAlloc();
      v155 = swift_slowAlloc();
      v181[0] = v155;
      *v154 = 136446210;
      *(v154 + 4) = sub_10000D01C(*&v151[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v151[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v181);
      _os_log_impl(&_mh_execute_header, v152, v153, "%{public}s - unregistered reminder notification timer", v154, 0xCu);
      sub_100004984(v155);
      v12 = v177;
    }

    v57 = v176;
    goto LABEL_11;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v109 = type metadata accessor for Logger();
  sub_10000A6F0(v109, qword_1005DFB98);
  v110 = v50;
  v111 = Logger.logObject.getter();
  v112 = static os_log_type_t.default.getter();

  v113 = os_log_type_enabled(v111, v112);
  v114 = v166;
  if (v113)
  {
    v115 = swift_slowAlloc();
    v116 = swift_slowAlloc();
    v181[0] = v116;
    *v115 = 136446210;
    *(v115 + 4) = sub_10000D01C(*&v110[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v110[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v181);
    _os_log_impl(&_mh_execute_header, v111, v112, "%{public}s - FindMy Publish is allowed", v115, 0xCu);
    sub_100004984(v116);
  }

  v117 = v167;
  v168 = v110;
  sub_100112068();
  v159(v117, enum case for SecureLocationsStewie.ServiceState.throttled(_:), v9);
  v161(v117, 0, 1, v9);
  v118 = *(v175 + 48);
  sub_100005F04(v50 + v177, v114, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v117, v114 + v118, &qword_1005AB4B0, &unk_1004C5410);
  v119 = v158;
  if (v158(v114, 1, v9) == 1)
  {
    sub_100002CE0(v117, &qword_1005AB4B0, &unk_1004C5410);
    if (v119(v114 + v118, 1, v9) == 1)
    {
      sub_100002CE0(v114, &qword_1005AB4B0, &unk_1004C5410);
LABEL_64:
      v3 = v50;
      v57 = v176;
      v12 = v177;
      goto LABEL_11;
    }
  }

  else
  {
    v136 = v164;
    sub_100005F04(v114, v164, &qword_1005AB4B0, &unk_1004C5410);
    if (v119(v114 + v118, 1, v9) != 1)
    {
      v57 = v176;
      (*(v176 + 32))(v12, v114 + v118, v9);
      sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
      LODWORD(v158) = dispatch thunk of static Equatable.== infix(_:_:)();
      v146 = *(v57 + 8);
      v146(v12, v9);
      sub_100002CE0(v167, &qword_1005AB4B0, &unk_1004C5410);
      v146(v136, v9);
      sub_100002CE0(v114, &qword_1005AB4B0, &unk_1004C5410);
      v3 = v50;
      v12 = v177;
      v137 = v168;
      if (v158)
      {
        goto LABEL_11;
      }

      goto LABEL_68;
    }

    sub_100002CE0(v117, &qword_1005AB4B0, &unk_1004C5410);
    (*(v176 + 8))(v136, v9);
  }

  sub_100002CE0(v114, &qword_1005AB4A8, &qword_1004C5408);
  v3 = v50;
  v57 = v176;
  v12 = v177;
  v137 = v168;
LABEL_68:
  v138 = v178;
  v159(v178, enum case for SecureLocationsStewie.ServiceState.available(_:), v9);
  v161(v138, 0, 1, v9);
  swift_beginAccess();
  sub_100022364(v138, &v12[v3], &qword_1005AB4B0, &unk_1004C5410);
  swift_endAccess();
  v139 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastAvailabilityDate;
  swift_beginAccess();
  v140 = v165;
  sub_100005F04(&v137[v139], v165, &unk_1005AE5B0, &qword_1004C32F0);
  v141 = type metadata accessor for Date();
  v142 = *(v141 - 8);
  v143 = (*(v142 + 48))(v140, 1, v141);
  sub_100002CE0(v140, &unk_1005AE5B0, &qword_1004C32F0);
  v12 = v177;
  if (v143 == 1)
  {
    v144 = v163;
    static Date.trustedNow.getter(v163);
    (*(v142 + 56))(v144, 0, 1, v141);
    swift_beginAccess();
    sub_100022364(v144, &v137[v139], &unk_1005AE5B0, &qword_1004C32F0);
    swift_endAccess();
    *&v137[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts] = 1;
    sub_10011A9BC();
    if (qword_1005A7EE0 != -1)
    {
      swift_once();
    }

    type metadata accessor for Transaction();
    v145 = swift_allocObject();
    *(v145 + 16) = 0;
    *(v145 + 24) = 1;
    static Transaction.asyncTask(name:block:)();

    v57 = v176;
  }

LABEL_11:
  v59 = v174;
  v60 = *(v175 + 48);
  sub_100005F04(v179, v174, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(&v12[v3], &v59[v60], &qword_1005AB4B0, &unk_1004C5410);
  v61 = *(v57 + 48);
  v45 = v3;
  if (v61(v59, 1, v9) == 1)
  {
    if (v61(&v59[v60], 1, v9) == 1)
    {
      sub_100002CE0(v59, &qword_1005AB4B0, &unk_1004C5410);
      goto LABEL_18;
    }

LABEL_16:
    sub_100002CE0(v59, &qword_1005AB4A8, &qword_1004C5408);
    goto LABEL_23;
  }

  v62 = v170;
  sub_100005F04(v59, v170, &qword_1005AB4B0, &unk_1004C5410);
  if (v61(&v59[v60], 1, v9) == 1)
  {
    (*(v57 + 8))(v62, v9);
    goto LABEL_16;
  }

  v63 = v169;
  (*(v57 + 32))(v169, &v59[v60], v9);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
  v64 = dispatch thunk of static Equatable.== infix(_:_:)();
  v65 = *(v57 + 8);
  v65(v63, v9);
  v65(v62, v9);
  sub_100002CE0(v59, &qword_1005AB4B0, &unk_1004C5410);
  if ((v64 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_18:
  if (v173)
  {
LABEL_23:
    if (qword_1005A7EE8 == -1)
    {
LABEL_24:
      v75 = type metadata accessor for Logger();
      sub_10000A6F0(v75, qword_1005DFB98);
      v76 = v172;
      sub_100005F04(v179, v172, &qword_1005AB4B0, &unk_1004C5410);
      v77 = v45;
      v78 = Logger.logObject.getter();
      v79 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v78, v79))
      {
        v80 = swift_slowAlloc();
        LODWORD(v176) = v79;
        v81 = v80;
        v177 = swift_slowAlloc();
        v180[0] = v177;
        *v81 = 136446978;
        *(v81 + 4) = sub_10000D01C(*&v77[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v77[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v180);
        *(v81 + 12) = 2080;
        v82 = v178;
        v175 = v77;
        sub_100005F04(v76, v178, &qword_1005AB4B0, &unk_1004C5410);
        v83 = String.init<A>(describing:)();
        v84 = v76;
        v85 = v83;
        v86 = v45;
        v88 = v87;
        sub_100002CE0(v84, &qword_1005AB4B0, &unk_1004C5410);
        v89 = sub_10000D01C(v85, v88, v180);

        *(v81 + 14) = v89;
        *(v81 + 22) = 2080;
        sub_100005F04(&v12[v86], v82, &qword_1005AB4B0, &unk_1004C5410);
        v90 = String.init<A>(describing:)();
        v92 = sub_10000D01C(v90, v91, v180);

        *(v81 + 24) = v92;
        *(v81 + 32) = 1024;
        *(v81 + 34) = v173 & 1;
        _os_log_impl(&_mh_execute_header, v78, v176, "%{public}s - stateChange old %s new %s forceNotify %{BOOL}d", v81, 0x26u);
        swift_arrayDestroy();
      }

      else
      {

        sub_100002CE0(v76, &qword_1005AB4B0, &unk_1004C5410);
      }

      sub_1000223CC();
      goto LABEL_28;
    }

LABEL_83:
    swift_once();
    goto LABEL_24;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v66 = type metadata accessor for Logger();
  sub_10000A6F0(v66, qword_1005DFB98);
  v67 = v45;
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.debug.getter();

  if (!os_log_type_enabled(v68, v69))
  {

LABEL_28:
    v74 = v179;
    return sub_100002CE0(v74, &qword_1005AB4B0, &unk_1004C5410);
  }

  v70 = swift_slowAlloc();
  v180[0] = swift_slowAlloc();
  *v70 = 136446466;
  *(v70 + 4) = sub_10000D01C(*&v67[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v67[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v180);
  *(v70 + 12) = 2080;
  sub_100005F04(v45 + v177, v178, &qword_1005AB4B0, &unk_1004C5410);
  v71 = String.init<A>(describing:)();
  v73 = sub_10000D01C(v71, v72, v180);

  *(v70 + 14) = v73;
  _os_log_impl(&_mh_execute_header, v68, v69, "%{public}s - no change in service state %s", v70, 0x16u);
  swift_arrayDestroy();

  v74 = v179;
  return sub_100002CE0(v74, &qword_1005AB4B0, &unk_1004C5410);
}

uint64_t sub_100118A5C()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsConfig();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v53 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v54 = &v53 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10004B564(&qword_1005AB4A8, &qword_1004C5408);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v53 - v12;
  v14 = sub_10004B564(&qword_1005AB4B0, &unk_1004C5410);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v20 = &v53 - v19;
  v21 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieServiceState;
  swift_beginAccess();
  (*(v6 + 104))(v20, enum case for SecureLocationsStewie.ServiceState.available(_:), v5);
  (*(v6 + 56))(v20, 0, 1, v5);
  v22 = *(v10 + 56);
  v23 = &v1[v21];
  v24 = v1;
  sub_100005F04(v23, v13, &qword_1005AB4B0, &unk_1004C5410);
  sub_100005F04(v20, &v13[v22], &qword_1005AB4B0, &unk_1004C5410);
  v25 = *(v6 + 48);
  if (v25(v13, 1, v5) == 1)
  {
    sub_100002CE0(v20, &qword_1005AB4B0, &unk_1004C5410);
    if (v25(&v13[v22], 1, v5) == 1)
    {
      sub_100002CE0(v13, &qword_1005AB4B0, &unk_1004C5410);
      goto LABEL_12;
    }

    goto LABEL_6;
  }

  sub_100005F04(v13, v18, &qword_1005AB4B0, &unk_1004C5410);
  if (v25(&v13[v22], 1, v5) == 1)
  {
    sub_100002CE0(v20, &qword_1005AB4B0, &unk_1004C5410);
    (*(v6 + 8))(v18, v5);
LABEL_6:
    sub_100002CE0(v13, &qword_1005AB4A8, &qword_1004C5408);
LABEL_7:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v26 = type metadata accessor for Logger();
    sub_10000A6F0(v26, qword_1005DFB98);
    v27 = v24;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_22;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55 = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_10000D01C(*&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v27[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v55);
    v32 = "%{public}s - find my service not connected to stewie. Not showing alert";
    goto LABEL_21;
  }

  v33 = v54;
  (*(v6 + 32))(v54, &v13[v22], v5);
  sub_10001DFF0(&qword_1005AB4B8, &type metadata accessor for SecureLocationsStewie.ServiceState);
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v6 + 8);
  v35(v33, v5);
  sub_100002CE0(v20, &qword_1005AB4B0, &unk_1004C5410);
  v35(v18, v5);
  sub_100002CE0(v13, &qword_1005AB4B0, &unk_1004C5410);
  if ((v34 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_12:
  if ((sub_100112E80(0) & 1) == 0)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v44 = type metadata accessor for Logger();
    sub_10000A6F0(v44, qword_1005DFB98);
    v45 = v24;
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v28, v29))
    {
      goto LABEL_22;
    }

    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v55 = v31;
    *v30 = 136446210;
    *(v30 + 4) = sub_10000D01C(*&v45[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v45[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v55);
    v32 = "%{public}s - canPublishLocation is false. Not showing alert";
LABEL_21:
    _os_log_impl(&_mh_execute_header, v28, v29, v32, v30, 0xCu);
    sub_100004984(v31);

LABEL_22:

    return 0;
  }

  v36 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts;
  v37 = v24;
  v38 = *&v24[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts];
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v39 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v39);
  v40 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  v41 = v53;
  sub_100021534(v39 + *(v40 + 28), v53, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v39);

  v42 = *(v41 + 96);
  sub_10002178C(v41, type metadata accessor for SecureLocationsConfig);
  if (v38 < v42)
  {
    return 1;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000A6F0(v46, qword_1005DFB98);
  v47 = v37;
  v48 = v37;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v55 = v52;
    *v51 = 136446466;
    *(v51 + 4) = sub_10000D01C(*&v48[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v48[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v55);
    *(v51 + 12) = 2048;
    *(v51 + 14) = *&v47[v36];

    _os_log_impl(&_mh_execute_header, v49, v50, "%{public}s - we have already shown %ld alerts", v51, 0x16u);
    sub_100004984(v52);
  }

  else
  {
  }

  return 0;
}

uint64_t sub_1001192AC()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v44 = v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v41 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v41);
  v43 = v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(v7);
  v42 = v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v45 = v37 - v12;
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (v37 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  v20 = _dispatchPreconditionTest(_:)();
  (*(v14 + 8))(v17, v13);
  if (v20)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v21 = type metadata accessor for Logger();
  sub_10000A6F0(v21, qword_1005DFB98);
  v22 = v0;
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();

  v25 = os_log_type_enabled(v23, v24);
  v40 = v1;
  if (v25)
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v46 = v27;
    *v26 = 136446210;
    *(v26 + 4) = sub_10000D01C(*&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v22[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v46);
    _os_log_impl(&_mh_execute_header, v23, v24, "%{public}s - checkinReminderNotificationTimer", v26, 0xCu);
    sub_100004984(v27);
  }

  v39 = 0x80000001004E15D0;
  v28 = v45;
  static DispatchQoS.default.getter();
  v29 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  type metadata accessor for XPCActivity_SPD();
  v31 = swift_allocObject();
  sub_10004B564(&qword_1005A8688, &qword_1004C5FA0);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *(v31 + 40) = v32;
  swift_unknownObjectWeakInit();
  *(v31 + 88) = 0;
  v33 = sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  v37[1] = "teLocUserNotification";
  v37[2] = v33;
  *(v31 + 96) = 0;
  *(v31 + 104) = 0;
  (*(v8 + 16))(v42, v28, v7);
  v34 = *(v4 + 104);
  v38 = v22;
  v34(v43, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v41);
  v46 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);

  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  v41 = v7;
  sub_10001DF0C(&qword_1005A8680, &unk_1005AB400, &unk_1004C0BF0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *(v31 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v31 + 24) = 0xD000000000000045;
  *(v31 + 32) = v39;
  *(v31 + 48) = sub_10011EC1C;
  *(v31 + 56) = v29;
  *(v31 + 64) = sub_10011EC24;
  *(v31 + 72) = v30;

  sub_10013AF2C();

  (*(v8 + 8))(v45, v41);

  v35 = *&v38[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer];
  *&v38[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer] = v31;
}

void sub_100119910(int64x2_t *a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *(Strong + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueueSynchronizer);
    __chkstk_darwin(Strong);
    v5._object = 0x80000001004E1680;
    v5._countAndFlagsBits = 0xD000000000000013;
    prohibitAsyncContext(functionName:)(v5);
    sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
    v6 = *(v4 + 24);
    v7 = static OS_dispatch_queue.getSpecific<A>(key:)();
    if (v12[0].i8[0])
    {
      v8 = *(v4 + 16);
      __chkstk_darwin(v7);
      sub_10004B564(&qword_1005AB4A0, &qword_1004C5400);
      OS_dispatch_queue.sync<A>(execute:)();
    }

    else
    {
      sub_100119ACC(v3, v12);
    }

    v10 = v12[0];
    v11 = v12[1];
    v9 = v13;
  }

  else
  {
    v9 = 0;
    v10 = xmmword_1004C52D0;
    v11 = 0uLL;
  }

  *a1 = v10;
  a1[1] = v11;
  a1[2].i64[0] = v9;
}

int64x2_t sub_100119ACC@<Q0>(char *a1@<X0>, int64x2_t *a2@<X8>)
{
  v5 = type metadata accessor for SecureLocationsConfig();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v9 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v9);
  v10 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_100021534(v9 + *(v10 + 28), v8, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v9);

  v11 = v8[11];
  sub_10002178C(v8, type metadata accessor for SecureLocationsConfig);
  if ((*&v11 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_19;
  }

  if (v11 <= -9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v11 >= 9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  sub_1004BA244();
  if (v13)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFB98);
    v16 = a1;
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v30 = v20;
      *v19 = 136446466;
      *(v19 + 4) = sub_10000D01C(*&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v16[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v30);
      *(v19 + 12) = 2048;
      *(v19 + 14) = v14;
      _os_log_impl(&_mh_execute_header, v17, v18, "%{public}s - using overriden value for alert delay %ld", v19, 0x16u);
      sub_100004984(v20);
    }
  }

  v21 = *&a1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts];
  v2 = v14 * v21;
  if ((v14 * v21) >> 64 == (v14 * v21) >> 63)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_15;
    }

    goto LABEL_22;
  }

LABEL_21:
  __break(1u);
LABEL_22:
  swift_once();
LABEL_15:
  v22 = type metadata accessor for Logger();
  sub_10000A6F0(v22, qword_1005DFB98);
  v23 = a1;
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v30 = v27;
    *v26 = 136446466;
    *(v26 + 4) = sub_10000D01C(*&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v30);
    *(v26 + 12) = 2048;
    *(v26 + 14) = v2;
    _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s - returning xpc activity for reminder notification with delay %lld", v26, 0x16u);
    sub_100004984(v27);
  }

  a2->i64[0] = 0;
  a2->i64[1] = v2;
  result = vdupq_n_s64(1uLL);
  a2[1] = result;
  a2[2].i64[0] = 514;
  return result;
}

void sub_100119F10(uint64_t a1, uint64_t a2, int a3)
{
  v55 = a3;
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v48 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    Transaction.capture()();
    return;
  }

  v16 = Strong;
  v53 = v14;
  v54 = a2;
  v17 = a1;
  v48 = v11;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  sub_10000A6F0(v18, qword_1005DFB98);
  v19 = v16;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();

  v22 = os_log_type_enabled(v20, v21);
  v23 = v55;
  v51 = v6;
  v52 = v5;
  v49 = v9;
  v50 = v10;
  if (v22)
  {
    v24 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v24 = 136446466;
    v25 = *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix];
    v26 = *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8];

    v27 = sub_10000D01C(v25, v26, aBlock);

    *(v24 + 4) = v27;
    *(v24 + 12) = 2080;
    LOBYTE(v56) = v23;
    v28 = String.init<A>(describing:)();
    v30 = sub_10000D01C(v28, v29, aBlock);

    *(v24 + 14) = v30;
    _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s - state block fired %s", v24, 0x16u);
    swift_arrayDestroy();
  }

  v31 = v17;
  v32 = v54;
  if (v23 == 3)
  {
    Transaction.capture()();
    sub_10013AD54();
LABEL_14:

    return;
  }

  if (v23 != 2)
  {
    Transaction.capture()();
    goto LABEL_14;
  }

  v33 = v19;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    aBlock[0] = v37;
    *v36 = 136446210;
    v38 = *&v33[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix];
    v39 = *&v33[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8];

    v40 = sub_10000D01C(v38, v39, aBlock);

    *(v36 + 4) = v40;
    _os_log_impl(&_mh_execute_header, v34, v35, "%{public}s - publishReminder timer fired", v36, 0xCu);
    sub_100004984(v37);
    v32 = v54;
  }

  v41 = v53;
  v42 = *&v33[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v43 = swift_allocObject();
  v43[2] = v32;
  v43[3] = v31;
  v43[4] = v33;
  aBlock[4] = sub_10011EC2C;
  aBlock[5] = v43;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590650;
  v44 = _Block_copy(aBlock);
  v45 = v33;

  static DispatchQoS.unspecified.getter();
  v56 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  v46 = v49;
  v47 = v52;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v44);
  (*(v51 + 8))(v46, v47);
  (*(v48 + 8))(v41, v50);
}

BOOL sub_10011A500(uint64_t a1, uint64_t a2, char *a3)
{
  v4 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v32 - v6;
  v8 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v12 = 1;
  v13 = *(v10 + 28);
  v14 = enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:);
  v15 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v15 - 8) + 104))(&v12[v13], v14, v15);
  LOBYTE(v14) = sub_10011E628(v12);
  sub_10002178C(v12, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  if (v14)
  {
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000A6F0(v16, qword_1005DFB98);
    v17 = a3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v34 = v21;
      *v20 = 136446210;
      *(v20 + 4) = sub_10000D01C(*&v17[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v17[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v34);
      _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s - reminderNotification is already present. Not showing alert", v20, 0xCu);
      sub_100004984(v21);
    }

    goto LABEL_13;
  }

  v22 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastPublishedLocation;
  swift_beginAccess();
  sub_100005F04(&a3[v22], v7, &unk_1005AB3F0, &qword_1004C4BF0);
  v23 = type metadata accessor for SecureLocation();
  LODWORD(v22) = (*(*(v23 - 8) + 48))(v7, 1, v23);
  sub_100002CE0(v7, &unk_1005AB3F0, &qword_1004C4BF0);
  if (v22 != 1)
  {
    v18 = *&a3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold];
    CurrentLocationMonitor.requestLocation()();
LABEL_13:

    goto LABEL_14;
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_10000A6F0(v24, qword_1005DFB98);
  v25 = a3;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v33 = v29;
    *v28 = 136446210;
    *(v28 + 4) = sub_10000D01C(*&v25[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v25[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v33);
    _os_log_impl(&_mh_execute_header, v26, v27, "%{public}s - no last published location to compare distance threshold", v28, 0xCu);
    sub_100004984(v29);
  }

  v30 = type metadata accessor for Transaction();
  __chkstk_darwin(v30);
  *(&v32 - 2) = v25;
  *(&v32 - 8) = 0;
  static Transaction.named<A>(_:with:)();
LABEL_14:
  Transaction.capture()();
  return sub_10013AD7C();
}

uint64_t sub_10011A9BC()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *&v0[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  (*(v2 + 8))(v5, v1);
  if (v6)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFB98);
  v9 = v0;
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v17[0] = v13;
    *v12 = 136446210;
    *(v12 + 4) = sub_10000D01C(*&v9[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v9[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], v17);
    _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s - scheduling notification timer", v12, 0xCu);
    sub_100004984(v13);
  }

  v14 = *&v9[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer];
  v15 = type metadata accessor for Transaction();
  __chkstk_darwin(v15);
  v17[-2] = v9;
  v17[-1] = v14;

  static Transaction.named<A>(_:with:)();
}

uint64_t sub_10011AC74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v19 = *(v6 - 8);
  v7 = *(v19 + 64);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for DispatchQoS();
  v10 = *(v18 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v18);
  v13 = &v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(a2 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue);
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a3;
  aBlock[4] = sub_10011EC0C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_100590588;
  v15 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v19 + 8))(v9, v6);
  (*(v10 + 8))(v13, v18);
}

uint64_t sub_10011AF68(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for DispatchWorkItemFlags();
  v22 = *(v3 - 8);
  v4 = *(v22 + 64);
  __chkstk_darwin(v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for DispatchQoS();
  v7 = *(v21 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v21);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  Transaction.capture()();
  sub_1000545A4(0, &qword_1005A96F0, OS_dispatch_queue_ptr);
  (*(v12 + 104))(v15, enum case for DispatchQoS.QoSClass.default(_:), v11);
  v16 = static OS_dispatch_queue.global(qos:)();
  (*(v12 + 8))(v15, v11);
  v17 = swift_allocObject();
  *(v17 + 16) = a2;
  aBlock[4] = sub_10011EC14;
  aBlock[5] = v17;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005905D8;
  v18 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v23 = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v22 + 8))(v6, v3);
  (*(v7 + 8))(v10, v21);
}

uint64_t sub_10011B320(uint64_t result)
{
  if (result)
  {
    v1 = *(result + 40);
    return OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  return result;
}

uint64_t sub_10011B380(uint64_t a1, char *a2, char a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v6 - 8);
  v7 = *(v20 + 64);
  __chkstk_darwin(v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  aBlock[4] = sub_10011E148;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005903F8;
  v15 = _Block_copy(aBlock);

  v16 = a2;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v20 + 8))(v9, v6);
  (*(v10 + 8))(v13, v19);
}

void sub_10011B674(uint64_t a1, void *a2, char a3)
{
  v6 = type metadata accessor for SecureLocationsConfig();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v73 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v73 - v20;
  if ((sub_100118A5C() & 1) == 0 && (a3 & 1) == 0)
  {
    if (qword_1005A7EE8 == -1)
    {
LABEL_4:
      v22 = type metadata accessor for Logger();
      sub_10000A6F0(v22, qword_1005DFB98);
      v23 = a2;
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v27 = swift_slowAlloc();
        aBlock[0] = v27;
        *v26 = 136446210;
        *(v26 + 4) = sub_10000D01C(*&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v23[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
        _os_log_impl(&_mh_execute_header, v24, v25, "%{public}s - conditions not satisfied for posting user notification", v26, 0xCu);
        sub_100004984(v27);
      }

      goto LABEL_28;
    }

LABEL_30:
    swift_once();
    goto LABEL_4;
  }

  v74 = v9;
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v28 = type metadata accessor for Logger();
  v29 = sub_10000A6F0(v28, qword_1005DFB98);
  v30 = a2;
  v73[0] = v29;
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.default.getter();

  v33 = os_log_type_enabled(v31, v32);
  v73[1] = a1;
  v75 = v30;
  v76 = v21;
  if (v33)
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    aBlock[0] = v35;
    *v34 = 136446210;
    *(v34 + 4) = sub_10000D01C(*&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v30[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
    _os_log_impl(&_mh_execute_header, v31, v32, "%{public}s - posting publish reminder notification", v34, 0xCu);
    sub_100004984(v35);

    v21 = v76;
  }

  *v21 = 1;
  v36 = *(v15 + 20);
  v37 = enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:);
  v38 = type metadata accessor for LocalUserNotificationCategory();
  (*(*(v38 - 8) + 104))(&v21[v36], v37, v38);
  v39 = v74;
  if (qword_1005A8598 != -1)
  {
    swift_once();
  }

  sub_100021534(v21, v19, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v40 = *v19;
  v41 = objc_allocWithZone(UNUserNotificationCenter);
  v42 = String._bridgeToObjectiveC()();

  v43 = [v41 initWithBundleIdentifier:v42];

  v44 = sub_100292238(v19);
  sub_10011DC64();
  UUID.uuidString.getter();
  (*(v11 + 8))(v14, v10);
  v45 = v44;
  v46 = String._bridgeToObjectiveC()();

  v47 = [objc_opt_self() requestWithIdentifier:v46 content:v45 trigger:0 destinations:7];

  [v43 addNotificationRequest:v47 withCompletionHandler:0];
  sub_10002178C(v19, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v48 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts;
  v49 = v75;
  v50 = *&v75[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts];
  if (qword_1005A7EE0 != -1)
  {
    swift_once();
  }

  a2 = type metadata accessor for Transaction();
  v51 = swift_allocObject();
  *(v51 + 16) = v50;
  *(v51 + 24) = 0;
  static Transaction.asyncTask(name:block:)();

  v52 = *&v49[v48];
  v53 = v52 + 1;
  if (__OFADD__(v52, 1))
  {
    __break(1u);
    goto LABEL_30;
  }

  *&v49[v48] = v53;
  if (qword_1005A7EF8 != -1)
  {
    swift_once();
  }

  v54 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

  os_unfair_lock_lock(v54);
  v55 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
  sub_100021534(v54 + *(v55 + 28), v39, type metadata accessor for SecureLocationsConfig);
  os_unfair_lock_unlock(v54);

  v56 = *(v39 + 96);
  sub_10002178C(v39, type metadata accessor for SecureLocationsConfig);
  v57 = v76;
  if (v53 >= v56)
  {
    goto LABEL_26;
  }

  v58 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer;
  v59 = *&v49[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer];
  if (!v59)
  {
LABEL_23:
    v66 = v49;
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = v57;
      v71 = swift_slowAlloc();
      aBlock[0] = v71;
      *v69 = 136446210;
      *(v69 + 4) = sub_10000D01C(*&v66[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v66[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], aBlock);
      _os_log_impl(&_mh_execute_header, v67, v68, "%{public}s - scheduled next reminder alert", v69, 0xCu);
      sub_100004984(v71);

      v72 = v70;
LABEL_27:
      sub_10002178C(v72, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
LABEL_28:
      Transaction.capture()();
      return;
    }

LABEL_26:
    v72 = v57;
    goto LABEL_27;
  }

  v60 = *(v59 + 16);
  v61 = swift_allocObject();
  *(v61 + 16) = sub_10011E210;
  *(v61 + 24) = v59;
  aBlock[4] = sub_1000C7A78;
  aBlock[5] = v61;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_100590470;
  v62 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v60, v62);
  _Block_release(v62);
  LOBYTE(v60) = swift_isEscapingClosureAtFileLocation();

  if ((v60 & 1) == 0)
  {
    v63 = *&v49[v58];
    v57 = v76;
    if (v63)
    {
      v64 = *(v63 + 40);
      v65 = *&v49[v58];

      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    }

    goto LABEL_23;
  }

  __break(1u);
}

uint64_t sub_10011C040()
{
  v1 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v4 = aBlock - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = aBlock - v7;
  v9 = type metadata accessor for Date();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastAvailabilityDate;
  swift_beginAccess();
  sub_100022364(v8, v0 + v10, &unk_1005AE5B0, &qword_1004C32F0);
  swift_endAccess();
  v11 = *(v0 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_notificationTimer);
  if (!v11)
  {
    goto LABEL_3;
  }

  v12 = *(v11 + 16);
  v13 = swift_allocObject();
  *(v13 + 16) = sub_10011FAE4;
  *(v13 + 24) = v11;
  aBlock[4] = sub_1000CAA0C;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10013EC94;
  aBlock[3] = &unk_100590538;
  v14 = _Block_copy(aBlock);
  swift_retain_n();

  dispatch_sync(v12, v14);
  _Block_release(v14);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if (v12)
  {
    __break(1u);
  }

  else
  {
LABEL_3:
    *(v0 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_cntProactiveAlerts) = 1;
    *v4 = 1;
    v16 = *(v1 + 20);
    v17 = enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:);
    v18 = type metadata accessor for LocalUserNotificationCategory();
    (*(*(v18 - 8) + 104))(&v4[v16], v17, v18);
    sub_10011E234(v4);
    return sub_10002178C(v4, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  }

  return result;
}

id sub_10011C368()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for SecureLocationsStewieManager(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

void sub_10011C574()
{
  sub_10011C74C(319, &qword_1005AB268, &type metadata accessor for SecureLocationsStewie.ServiceState);
  if (v1 <= 0x3F)
  {
    v7 = *(v0 - 8) + 64;
    sub_10011C74C(319, &unk_1005AB270, type metadata accessor for SecureLocation);
    if (v3 <= 0x3F)
    {
      v4 = *(v2 - 8) + 64;
      sub_10011C74C(319, &qword_1005AE6B0, &type metadata accessor for Date);
      if (v6 <= 0x3F)
      {
        v8 = *(v5 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_10011C74C(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_10011C848(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  v11 = v1;
  v12 = a1;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v21 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_10000D01C(*&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v21);
    *(v15 + 12) = 2112;
    *(v15 + 14) = v12;
    *v16 = v12;
    v18 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s - stateChanged %@", v15, 0x16u);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v17);
  }

  return sub_100116DE4(v12, 0);
}

void sub_10011CB4C(char a1)
{
  v3 = v1;
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = *&v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v9 = v10;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if (v10)
  {
    v2 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie;
    v3[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_isFindMyServiceConnectedToStewie] = (a1 & 4) != 0;
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFB98);
  v13 = v3;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v28 = v17;
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(*&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v13[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v28);
    *(v16 + 12) = 1024;
    *(v16 + 14) = v3[v2];

    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s - connectedServicesChanged: %{BOOL}d", v16, 0x12u);
    sub_100004984(v17);
  }

  else
  {
  }

  v18 = v3[v2];
  v19 = v13;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  v22 = os_log_type_enabled(v20, v21);
  if (v18 == 1)
  {
    if (v22)
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v28 = v24;
      *v23 = 136446210;
      *(v23 + 4) = sub_10000D01C(*&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v28);
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s - findMy is part of connected services. we can publish", v23, 0xCu);
      sub_100004984(v24);
    }

    sub_10010CD7C();
  }

  else
  {
    if (v22)
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v28 = v26;
      *v25 = 136446210;
      *(v25 + 4) = sub_10000D01C(*&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v19[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v28);
      _os_log_impl(&_mh_execute_header, v20, v21, "%{public}s - findMy is not connected", v25, 0xCu);
      sub_100004984(v26);
    }

    sub_1001126B4();
  }
}

uint64_t sub_10011CF88()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFB98);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136446210;
    *(v5 + 4) = sub_10000D01C(*&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v8);
    _os_log_impl(&_mh_execute_header, v3, v4, "%{public}s - supportChanged notification ", v5, 0xCu);
    sub_100004984(v6);
  }

  sub_100108CCC();
  return sub_10001D6F0();
}

void sub_10011D13C(uint64_t a1, uint64_t a2, void *a3)
{
  if (a3)
  {
    if (*(v3 + OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold) == a1)
    {
      v5 = type metadata accessor for Transaction();
      __chkstk_darwin(v5);
      v6 = a3;
      static Transaction.named<A>(_:with:)();
    }
  }
}

uint64_t sub_10011D210(uint64_t a1, char *a2, void *a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v21 = *(v6 - 8);
  v7 = *(v21 + 64);
  __chkstk_darwin(v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for DispatchQoS();
  v10 = *(v20 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v20);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = a3;
  aBlock[4] = sub_10011E11C;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100020828;
  aBlock[3] = &unk_1005903A8;
  v15 = _Block_copy(aBlock);

  v16 = a2;
  v17 = a3;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_10001DFF0(&unk_1005ABAC0, &type metadata accessor for DispatchWorkItemFlags);
  sub_10004B564(&unk_1005A9700, &qword_1004C3820);
  sub_10001DF0C(&qword_1005ABAD0, &unk_1005A9700, &qword_1004C3820);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v21 + 8))(v9, v6);
  (*(v10 + 8))(v13, v20);
}

void sub_10011D508(uint64_t a1, char *a2, void *a3)
{
  v44 = a1;
  v5 = type metadata accessor for SecureLocationsConfig();
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = (&v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10004B564(&unk_1005AB3F0, &qword_1004C4BF0);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v44 - v11;
  v13 = type metadata accessor for SecureLocation();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v44 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  v18 = OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_lastPublishedLocation;
  swift_beginAccess();
  sub_100005F04(&a2[v18], v12, &unk_1005AB3F0, &qword_1004C4BF0);
  if ((*(v14 + 48))(v12, 1, v13) == 1)
  {
    sub_100002CE0(v12, &unk_1005AB3F0, &qword_1004C4BF0);
    v19 = type metadata accessor for Transaction();
    __chkstk_darwin(v19);
    *(&v44 - 2) = a2;
    *(&v44 - 8) = 0;
    static Transaction.named<A>(_:with:)();
  }

  else
  {
    sub_10008DB80(v12, v17);
    v21 = v17[2];
    v20 = v17[3];
    v23 = v17[7];
    v22 = v17[8];
    v25 = v17[4];
    v24 = v17[5];
    v26 = v17[6];
    v27 = *(v13 + 52);
    v28 = objc_allocWithZone(CLLocation);
    isa = Date._bridgeToObjectiveC()().super.isa;
    v30 = [v28 initWithCoordinate:isa altitude:v20 horizontalAccuracy:v21 verticalAccuracy:v22 course:v24 speed:v25 timestamp:{v23, v26, v44}];

    [a3 distanceFromLocation:v30];
    v32 = v31;
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v33 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v33);
    v34 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_100021534(v33 + *(v34 + 28), v8, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v33);

    v35 = v8[14];
    sub_10002178C(v8, type metadata accessor for SecureLocationsConfig);
    if (v35 <= v32)
    {
      v42 = type metadata accessor for Transaction();
      __chkstk_darwin(v42);
      *(&v44 - 2) = a2;
      *(&v44 - 8) = 0;
      static Transaction.named<A>(_:with:)();
      v43 = *&a2[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_locationMonitorDistanceThreshold];
      CurrentLocationMonitor.stopMonitor()();
    }

    else
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_10000A6F0(v36, qword_1005DFB98);
      v37 = a2;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v45 = v41;
        *v40 = 136446722;
        *(v40 + 4) = sub_10000D01C(*&v37[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v37[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v45);
        *(v40 + 12) = 2048;
        *(v40 + 14) = v32;
        *(v40 + 22) = 2048;
        *(v40 + 24) = v35;
        _os_log_impl(&_mh_execute_header, v38, v39, "%{public}s - not posting publish reminder notification. distanceMoved %f is less than configThreshold %f", v40, 0x20u);
        sub_100004984(v41);
      }
    }

    sub_10002178C(v17, type metadata accessor for SecureLocation);
  }

  Transaction.capture()();
}

id sub_10011DAA4()
{
  v0 = type metadata accessor for LocalizationUtility.Table();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = MobileGestalt_get_current_device();
  if (result)
  {
    v6 = result;
    MobileGestalt_get_wapiCapability();

    (*(v1 + 104))(v4, enum case for LocalizationUtility.Table.default(_:), v0);
    v7 = static LocalizationUtility.localizedString(key:table:)();
    (*(v1 + 8))(v4, v0);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10011DBF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 20);
  v5 = type metadata accessor for LocalUserNotificationCategory();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

uint64_t sub_10011DC64()
{
  v0 = type metadata accessor for LocalUserNotificationCategory();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for LocalUserNotificationCategory.liteLocationPublishReminder(_:), v0);
  LocalUserNotificationCategory.rawValue.getter();
  (*(v1 + 8))(v4, v0);
  v5 = String.utf8Data.getter();
  v7 = v6;

  v9[0] = v5;
  v9[1] = v7;
  sub_1000CA210();
  DataProtocol.stableUUID.getter();
  return sub_1000049D0(v5, v7);
}

uint64_t sub_10011DDB0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (aBlock - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = sub_10004B564(&unk_1005AB410, qword_1004C53E0);
  v10 = *(v9 + 48);
  v11 = *(v9 + 52);
  swift_allocObject();
  *(v1 + 24) = DispatchSpecificKey.init()();
  *v8 = a1;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.notOnQueue(_:), v4);
  v12 = a1;
  LOBYTE(a1) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((a1 & 1) == 0)
  {
    __break(1u);
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  v13 = *(v2 + 24);

  OS_dispatch_queue.getSpecific<A>(key:)();

  if (LOBYTE(aBlock[0]) == 1)
  {
    *(v2 + 16) = v12;
    v14 = swift_allocObject();
    *(v14 + 16) = v12;
    *(v14 + 24) = v2;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_10011E8F8;
    *(v15 + 24) = v14;
    aBlock[4] = sub_1000CAA0C;
    aBlock[5] = v15;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_10013EC94;
    aBlock[3] = &unk_1005904E8;
    v16 = _Block_copy(aBlock);
    v17 = v12;

    dispatch_sync(v17, v16);

    _Block_release(v16);
    LOBYTE(v17) = swift_isEscapingClosureAtFileLocation();

    if ((v17 & 1) == 0)
    {
      return v2;
    }

    goto LABEL_6;
  }

LABEL_7:
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_10011E09C()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_10011E174()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_10000368C;

  return sub_1000D15E8(v2, v3);
}

char *sub_10011E234(uint64_t a1)
{
  v31 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v32 = &off_100590F10;
  v2 = sub_10000331C(v30);
  sub_100021534(a1, v2, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v3 = v31;
  v4 = v32;
  sub_100011AEC(v30, v31);
  (v4[12])(v3, v4);
  v5 = objc_allocWithZone(UNUserNotificationCenter);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = [v7 deliveredNotifications];
  sub_1000545A4(0, &unk_1005AB490, UNNotification_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v28[2] = v30;
  v10 = sub_10020D474(sub_10011EBD0, v28, v9);
  v11 = v10;
  if (!(v10 >> 62))
  {
    v12 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_13:

LABEL_14:
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v7 removeDeliveredNotificationsWithIdentifiers:isa];

    return sub_100004984(v30);
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_13;
  }

LABEL_3:
  v29 = _swiftEmptyArrayStorage;
  result = sub_10002B3C0(0, v12 & ~(v12 >> 63), 0);
  if ((v12 & 0x8000000000000000) == 0)
  {
    v27 = v7;
    v14 = 0;
    v15 = v29;
    do
    {
      if ((v11 & 0xC000000000000001) != 0)
      {
        v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        v16 = *(v11 + 8 * v14 + 32);
      }

      v17 = v16;
      v18 = [v17 request];
      v19 = [v18 identifier];
      v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v22 = v21;

      v29 = v15;
      v24 = v15[2];
      v23 = v15[3];
      if (v24 >= v23 >> 1)
      {
        sub_10002B3C0((v23 > 1), v24 + 1, 1);
        v15 = v29;
      }

      ++v14;
      v15[2] = v24 + 1;
      v25 = &v15[2 * v24];
      v25[4] = v20;
      v25[5] = v22;
    }

    while (v12 != v14);

    v7 = v27;
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

id sub_10011E568()
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

BOOL sub_10011E628(uint64_t a1)
{
  v15 = type metadata accessor for SecureLocationsStewiePublishReminderNotification(0);
  v16 = &off_100590F10;
  v2 = sub_10000331C(v14);
  sub_100021534(a1, v2, type metadata accessor for SecureLocationsStewiePublishReminderNotification);
  v3 = v15;
  v4 = v16;
  sub_100011AEC(v14, v15);
  (v4[12])(v3, v4);
  v5 = objc_allocWithZone(UNUserNotificationCenter);
  v6 = String._bridgeToObjectiveC()();

  v7 = [v5 initWithBundleIdentifier:v6];

  v8 = [v7 deliveredNotifications];
  sub_1000545A4(0, &unk_1005AB490, UNNotification_ptr);
  v9 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v13[2] = v14;
  v10 = sub_10020D474(sub_10011EBD0, v13, v9);
  if (v10 >> 62)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100004984(v14);
  return v11 != 0;
}

void sub_10011E810()
{
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_10000A6F0(v0, qword_1005DFB98);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "Not supported on this platform", v2, 2u);
  }
}

uint64_t sub_10011E8F8()
{
  v1 = *(v0 + 16);
  v2 = *(*(v0 + 24) + 24);
  return OS_dispatch_queue.setSpecific<A>(key:value:)();
}

void sub_10011E934(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *&v1[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_clientQueue];
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (qword_1005A7EE8 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v10 = type metadata accessor for Logger();
  sub_10000A6F0(v10, qword_1005DFB98);
  v11 = v1;
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();
  swift_unknownObjectRelease();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v14 = 136446466;
    *(v14 + 4) = sub_10000D01C(*&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix], *&v11[OBJC_IVAR____TtC13findmylocated28SecureLocationsStewieManager_stewieLogPrefix + 8], &v19);
    *(v14 + 12) = 2080;
    v18 = a1;
    swift_unknownObjectRetain();
    sub_10004B564(&unk_1005AB480, &qword_1004C53F8);
    v15 = String.init<A>(describing:)();
    v17 = sub_10000D01C(v15, v16, &v19);

    *(v14 + 14) = v17;
    _os_log_impl(&_mh_execute_header, v12, v13, "%{public}s - Anomalous - we are not expecting to receive any message %s", v14, 0x16u);
    swift_arrayDestroy();
  }
}

double sub_10011EC54@<D0>(uint64_t a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v4(v9);
  if (!v2)
  {
    v7 = v10;
    result = *v9;
    v8 = v9[1];
    *a1 = v9[0];
    *(a1 + 16) = v8;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_10011ECA0(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100023D38(a1, v6, v7, v1 + v5);
}

uint64_t sub_10011ED90()
{
  v1 = type metadata accessor for SecureLocationsStewie.ServiceState();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10011EE54(uint64_t a1)
{
  v4 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + 24);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100003690;

  return sub_100023D38(a1, v6, v7, v1 + v5);
}

uint64_t sub_10011EF64()
{
  v1 = *(type metadata accessor for SecureLocationsStewie.ServiceState() - 8);
  v2 = *(v0 + 24);
  return (*(v0 + 16))(v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80)), 0);
}

uint64_t sub_10011F030(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = a2;
  return v3(a1, &v6);
}

uint64_t sub_10011F068()
{
  v1 = *(sub_10004B564(&unk_1005AB4C0, &qword_1004C3440) - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = *(v0 + 24);
  return (*(v0 + 16))(v0 + v2, *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

uint64_t sub_10011F108()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10011F154(uint64_t a1, void *a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  return v3(a1, *a2);
}

void *sub_10011F1A0@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  result = v4(&v7);
  if (!v2)
  {
    *a1 = v7;
  }

  return result;
}

uint64_t sub_10011F200()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_10011F230(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_100110148(a1, v4, v5, v7, v6);
}

uint64_t sub_10011F2F0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_10000368C;

  return sub_100110918(a1, v4, v5, v6, v7);
}

uint64_t sub_10011F3D8()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_10000368C;

  return sub_1000D0FF4(v2);
}

uint64_t sub_10011F46C()
{
  v2 = *(v0 + 16);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_100003690;

  return sub_1000D0FF4(v2);
}

uint64_t sub_10011F528(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(uint64_t, unint64_t, uint64_t))
{
  v4 = *(sub_10004B564(a1, a2) - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v3 + 16);
  v7 = *(v3 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));

  return a3(v6, v3 + v5, v7);
}

uint64_t sub_10011F5C8(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), void (*a4)(void))
{
  v7 = *(sub_10004B564(a1, a2) - 8);
  v8 = *(v7 + 80);
  v9 = (v8 + 24) & ~v8;
  v10 = *(v7 + 64);

  v11 = a3(0);
  v12 = *(v11 - 8);
  if (!(*(v12 + 48))(v4 + v9, 1, v11))
  {
    (*(v12 + 8))(v4 + v9, v11);
  }

  v13 = (v10 + v9 + 7) & 0xFFFFFFFFFFFFFFF8;
  a4(*(v4 + v13));

  return _swift_deallocObject(v4, v13 + 8, v8 | 7);
}

void sub_10011F704(uint64_t a1)
{
  v3 = *(sub_10004B564(&qword_1005A9F00, &qword_1004C3448) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_10010B83C(a1, v5, v1 + v4);
}

uint64_t sub_10011F7CC(uint64_t a1)
{
  v3 = *(v1 + 16);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10011F820(uint64_t a1, uint64_t a2)
{
  v5 = *(*(type metadata accessor for SecureLocation() - 8) + 80);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);

  return sub_100104094(a1, a2, v6, v7);
}

void sub_10011F8C0()
{
  v1 = *(type metadata accessor for SecureLocation() - 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = v0 + ((*(v1 + 80) + 32) & ~*(v1 + 80));

  sub_10010C7B0(v2, v3, v4);
}

uint64_t sub_10011F948()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10011F9DC()
{
  result = type metadata accessor for LocalUserNotificationCategory();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_10011FBA8()
{
  v1 = 0x746867696C666E69;
  v2 = 0x64656C696166;
  if (*v0 != 2)
  {
    v2 = 0x676E69766F6D6572;
  }

  if (*v0)
  {
    v1 = 0x6574656C706D6F63;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

void sub_1001201C0(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, char *a5@<X8>)
{
  v74 = a5;
  v9 = type metadata accessor for SecureLocationsConfig();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = (&v67 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for Date();
  v70 = *(v13 - 8);
  v71 = v13;
  v14 = *(v70 + 64);
  __chkstk_darwin(v13);
  v72 = &v67 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SecureLocationsSubscription();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  v19 = __chkstk_darwin(v16);
  v69 = &v67 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v23 = &v67 - v22;
  __chkstk_darwin(v21);
  v73 = &v67 - v24;
  v25 = sub_100123034(a2, a3, a4);
  v27 = v26;
  swift_beginAccess();
  v28 = *(a1 + 24);
  if (!*(v28 + 16))
  {
    goto LABEL_11;
  }

  v29 = sub_1000110D8(v25, v27);
  if ((v30 & 1) == 0)
  {

LABEL_11:

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000A6F0(v37, qword_1005DFB98);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v75 = v41;
      *v40 = 141558275;
      *(v40 + 4) = 1752392040;
      *(v40 + 12) = 2081;
      *(v40 + 14) = sub_10000D01C(a2, a3, &v75);
      _os_log_impl(&_mh_execute_header, v38, v39, "subscribeAndFetch - no cached subscription for %{private,mask.hash}s", v40, 0x16u);
      sub_100004984(v41);
    }

    goto LABEL_37;
  }

  sub_10012329C(*(v28 + 56) + *(v17 + 72) * v29, v23, type metadata accessor for SecureLocationsSubscription);

  v31 = v73;
  sub_100123238(v23, v73);
  if (*(v31 + *(v16 + 28)) <= 1u)
  {
    if (!*(v31 + *(v16 + 28)))
    {

      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v32 = type metadata accessor for Logger();
      sub_10000A6F0(v32, qword_1005DFB98);
      v33 = Logger.logObject.getter();
      v34 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&_mh_execute_header, v33, v34, "subscribeAndFetch - should proceed is false because the subscription is already in flight", v35, 2u);
      }

      v36 = v31;
LABEL_46:
      sub_100123304(v36, type metadata accessor for SecureLocationsSubscription);
      v65 = 0;
      goto LABEL_38;
    }

    v47 = v72;
    static Date.trustedNow.getter(v72);
    Date.timeIntervalSince1970.getter();
    v49 = v48;
    v50 = v31 + *(v16 + 20);
    Date.timeIntervalSince1970.getter();
    v52 = v49 - v51;
    if (qword_1005A7EF8 != -1)
    {
      swift_once();
    }

    v53 = (qword_1005DFBC8 + OBJC_IVAR____TtC13findmylocated19SecureLocationsInfo_secureLocationsConfigMutex);

    os_unfair_lock_lock(v53);
    v54 = sub_10004B564(&qword_1005A9DE0, &qword_1004C32C0);
    sub_10012329C(v53 + *(v54 + 28), v12, type metadata accessor for SecureLocationsConfig);
    os_unfair_lock_unlock(v53);

    v55 = v12[6];
    sub_100123304(v12, type metadata accessor for SecureLocationsConfig);
    if (v52 < v55)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v56 = type metadata accessor for Logger();
      sub_10000A6F0(v56, qword_1005DFB98);
      v57 = v69;
      sub_10012329C(v31, v69, type metadata accessor for SecureLocationsSubscription);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        v68 = swift_slowAlloc();
        v75 = v68;
        *v60 = 136315650;
        v61 = sub_10000D01C(v25, v27, &v75);

        *(v60 + 4) = v61;
        *(v60 + 12) = 2080;
        if (*(v57 + *(v16 + 28)) > 1u)
        {
          if (*(v57 + *(v16 + 28)) == 2)
          {
            v62 = 0xE600000000000000;
            v63 = 0x64656C696166;
          }

          else
          {
            v62 = 0xE800000000000000;
            v63 = 0x676E69766F6D6572;
          }
        }

        else if (*(v57 + *(v16 + 28)))
        {
          v62 = 0xE900000000000064;
          v63 = 0x6574656C706D6F63;
        }

        else
        {
          v62 = 0xE800000000000000;
          v63 = 0x746867696C666E69;
        }

        sub_100123304(v57, type metadata accessor for SecureLocationsSubscription);
        v66 = sub_10000D01C(v63, v62, &v75);

        *(v60 + 14) = v66;
        *(v60 + 22) = 2048;
        *(v60 + 24) = v52;
        _os_log_impl(&_mh_execute_header, v58, v59, "subscribeAndFetch - should proceed is false for %s %s as time since last subscribe is within threshold %f", v60, 0x20u);
        swift_arrayDestroy();

        (*(v70 + 8))(v72, v71);
        v36 = v73;
      }

      else
      {

        sub_100123304(v57, type metadata accessor for SecureLocationsSubscription);
        (*(v70 + 8))(v47, v71);
        v36 = v31;
      }

      goto LABEL_46;
    }

    (*(v70 + 8))(v47, v71);
    goto LABEL_36;
  }

  if (*(v31 + *(v16 + 28)) == 2)
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    sub_10000A6F0(v42, qword_1005DFB98);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_35;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "subscribeAndFetch - should proceed is true because the subscription previously failed";
  }

  else
  {

    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_10000A6F0(v64, qword_1005DFB98);
    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v43, v44))
    {
      goto LABEL_35;
    }

    v45 = swift_slowAlloc();
    *v45 = 0;
    v46 = "subscribeAndFetch - should proceed is true because we are currently removing the subscription";
  }

  _os_log_impl(&_mh_execute_header, v43, v44, v46, v45, 2u);

LABEL_35:

LABEL_36:
  sub_100123304(v31, type metadata accessor for SecureLocationsSubscription);
LABEL_37:
  v65 = 1;
LABEL_38:
  *v74 = v65;
}

uint64_t sub_100120B64(uint64_t a1, uint64_t a2, void *a3, void *a4, int a5)
{
  v43 = a1;
  v9 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v41[-v11];
  v13 = type metadata accessor for SecureLocationsSubscription();
  v14 = *(v13 - 1);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v41[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = sub_100123034(a2, a3, a4);
  v19 = v18;
  v20 = v13[5];

  static Date.trustedNow.getter(v17 + v20);
  v21 = [a4 subscriptionMode];
  *v17 = a2;
  v17[1] = a3;
  *(v17 + v13[6]) = v21;
  v22 = v13[7];
  v42 = a5;
  *(v17 + v22) = a5;
  v23 = (v17 + v13[8]);
  *v23 = 0;
  v23[1] = 0;
  v24 = [a4 pushIdentifiers];
  sub_10004B564(&qword_1005A9630, &qword_1004C5680);
  v25 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  if (*(v25 + 16) && (v26 = sub_1000110D8(a2, a3), (v27 & 1) != 0) && (v28 = *(*(v25 + 56) + 8 * v26), , , v28[2]))
  {
    v30 = v28[4];
    v29 = v28[5];

    *v23 = v30;
    v23[1] = v29;
  }

  else
  {
  }

  sub_10012329C(v17, v12, type metadata accessor for SecureLocationsSubscription);
  (*(v14 + 56))(v12, 0, 1, v13);
  swift_beginAccess();

  v31 = v44;
  sub_100145C20(v12, v44, v19);
  swift_endAccess();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_10000A6F0(v32, qword_1005DFB98);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v45[0] = swift_slowAlloc();
    *v35 = 136315394;
    v36 = sub_10000D01C(v31, v19, v45);

    *(v35 + 4) = v36;
    *(v35 + 12) = 2080;
    if (v42 > 1u)
    {
      if (v42 == 2)
      {
        v37 = 0xE600000000000000;
        v38 = 0x64656C696166;
      }

      else
      {
        v37 = 0xE800000000000000;
        v38 = 0x676E69766F6D6572;
      }
    }

    else if (v42)
    {
      v37 = 0xE900000000000064;
      v38 = 0x6574656C706D6F63;
    }

    else
    {
      v37 = 0xE800000000000000;
      v38 = 0x746867696C666E69;
    }

    v39 = sub_10000D01C(v38, v37, v45);

    *(v35 + 14) = v39;
    _os_log_impl(&_mh_execute_header, v33, v34, "SubscribeAndFetch - set subscription state %s to %s", v35, 0x16u);
    swift_arrayDestroy();
  }

  else
  {
  }

  return sub_100123304(v17, type metadata accessor for SecureLocationsSubscription);
}

void sub_100121008(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v7 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v20 - v9;
  v11 = sub_100123034(a2, a3, a4);
  v13 = v12;
  swift_beginAccess();
  sub_1001FF0F8(v11, v13, v10);
  sub_100123364(v10);
  swift_endAccess();
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFB98);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v21 = v18;
    *v17 = 136315138;
    v19 = sub_10000D01C(v11, v13, &v21);

    *(v17 + 4) = v19;
    _os_log_impl(&_mh_execute_header, v15, v16, "SubscribeAndFetch - removed subscription %s", v17, 0xCu);
    sub_100004984(v18);
  }

  else
  {
  }
}

uint64_t sub_10012120C@<X0>(id a1@<X3>, uint64_t a2@<X0>, uint64_t a3@<X1>, void *a4@<X2>, uint64_t a5@<X8>)
{
  v7 = sub_100123034(a3, a4, a1);
  v9 = v8;
  swift_beginAccess();
  v10 = *(a2 + 24);
  if (*(v10 + 16) && (, v11 = sub_1000110D8(v7, v9), v13 = v12, , (v13 & 1) != 0))
  {
    v14 = *(v10 + 56);
    v15 = type metadata accessor for SecureLocationsSubscription();
    v16 = *(v15 - 8);
    sub_10012329C(v14 + *(v16 + 72) * v11, a5, type metadata accessor for SecureLocationsSubscription);

    return (*(v16 + 56))(a5, 0, 1, v15);
  }

  else
  {

    v18 = type metadata accessor for SecureLocationsSubscription();
    return (*(*(v18 - 8) + 56))(a5, 1, 1, v18);
  }
}

void sub_1001213A8(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v70 = a2;
  v76 = type metadata accessor for SecureLocationsSubscription();
  v74 = *(v76 - 8);
  v3 = *(v74 + 64);
  v4 = __chkstk_darwin(v76);
  v69 = &v67 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v68 = (&v67 - v7);
  v8 = __chkstk_darwin(v6);
  v78 = &v67 - v9;
  __chkstk_darwin(v8);
  v73 = &v67 - v10;
  v11 = sub_10004B564(&qword_1005AB7C8, &qword_1004C5688);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = &v67 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = (&v67 - v16);
  swift_beginAccess();
  v18 = *(a1 + 24);
  v21 = *(v18 + 64);
  v20 = v18 + 64;
  v19 = v21;
  v22 = 1 << *(*(a1 + 24) + 32);
  v23 = -1;
  if (v22 < 64)
  {
    v23 = ~(-1 << v22);
  }

  v24 = v23 & v19;
  v25 = (v22 + 63) >> 6;
  v75 = *(a1 + 24);

  v26 = 0;
  v71 = v17;
  v72 = v15;
  if (!v24)
  {
LABEL_5:
    if (v25 <= (v26 + 1))
    {
      v28 = (v26 + 1);
    }

    else
    {
      v28 = v25;
    }

    v29 = (v28 - 1);
    while (1)
    {
      v27 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v27 >= v25)
      {
        v45 = sub_10004B564(&qword_1005AB7D0, &qword_1004C5690);
        (*(*(v45 - 8) + 56))(v15, 1, 1, v45);
        v24 = 0;
        goto LABEL_13;
      }

      v24 = *(v20 + 8 * v27);
      ++v26;
      if (v24)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_30:
    swift_once();
    goto LABEL_26;
  }

  while (1)
  {
    v27 = v26;
LABEL_12:
    v30 = __clz(__rbit64(v24));
    v24 &= v24 - 1;
    v31 = v30 | (v27 << 6);
    v32 = (*(v75 + 48) + 16 * v31);
    v34 = *v32;
    v33 = v32[1];
    v35 = v73;
    sub_10012329C(*(v75 + 56) + *(v74 + 72) * v31, v73, type metadata accessor for SecureLocationsSubscription);
    v36 = sub_10004B564(&qword_1005AB7D0, &qword_1004C5690);
    v37 = *(v36 + 48);
    v38 = v72;
    *v72 = v34;
    *(v38 + 1) = v33;
    v39 = v35;
    v15 = v38;
    sub_100123238(v39, &v38[v37]);
    (*(*(v36 - 8) + 56))(v15, 0, 1, v36);

    v29 = v27;
    v17 = v71;
LABEL_13:
    sub_1000176A8(v15, v17, &qword_1005AB7C8, &qword_1004C5688);
    v40 = sub_10004B564(&qword_1005AB7D0, &qword_1004C5690);
    v77 = (*(*(v40 - 8) + 48))(v17, 1, v40);
    if (v77 == 1)
    {

      goto LABEL_25;
    }

    v41 = *v17;
    v42 = v17[1];
    v43 = v17 + *(v40 + 48);
    v44 = v78;
    sub_100123238(v43, v78);
    if (*(v44 + *(v76 + 24)) == 1)
    {
      break;
    }

    sub_100123304(v44, type metadata accessor for SecureLocationsSubscription);

    v26 = v29;
    if (!v24)
    {
      goto LABEL_5;
    }
  }

  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_10000A6F0(v46, qword_1005DFB98);
  v47 = v78;
  v48 = v68;
  sub_10012329C(v78, v68, type metadata accessor for SecureLocationsSubscription);
  v49 = v69;
  sub_10012329C(v47, v69, type metadata accessor for SecureLocationsSubscription);

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v76 = swift_slowAlloc();
    v79 = v76;
    *v52 = 141559043;
    *(v52 + 4) = 1752392040;
    *(v52 + 12) = 2081;
    v53 = sub_10000D01C(v41, v42, &v79);

    *(v52 + 14) = v53;
    *(v52 + 22) = 2160;
    *(v52 + 24) = 1752392040;
    *(v52 + 32) = 2081;
    v54 = *v48;
    v55 = v48[1];

    sub_100123304(v48, type metadata accessor for SecureLocationsSubscription);
    v56 = sub_10000D01C(v54, v55, &v79);

    *(v52 + 34) = v56;
    *(v52 + 42) = 2082;
    v58 = v69;
    v59 = sub_10011FC24(v57);
    v61 = v60;
    sub_100123304(v58, type metadata accessor for SecureLocationsSubscription);
    v62 = sub_10000D01C(v59, v61, &v79);

    *(v52 + 44) = v62;
    _os_log_impl(&_mh_execute_header, v50, v51, "SubscribeAndFetch - Found an active shallow subscription with key %{private,mask.hash}s -> %{private,mask.hash}s  %{public}s", v52, 0x34u);
    swift_arrayDestroy();
  }

  else
  {

    sub_100123304(v49, type metadata accessor for SecureLocationsSubscription);
    sub_100123304(v48, type metadata accessor for SecureLocationsSubscription);
  }

  sub_100123304(v47, type metadata accessor for SecureLocationsSubscription);
LABEL_25:
  v27 = v70;
  LODWORD(v15) = v77;
  if (qword_1005A7EE8 != -1)
  {
    goto LABEL_30;
  }

LABEL_26:
  v63 = type metadata accessor for Logger();
  sub_10000A6F0(v63, qword_1005DFB98);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v64, v65))
  {
    v66 = swift_slowAlloc();
    *v66 = 67109120;
    *(v66 + 4) = v15 != 1;
    _os_log_impl(&_mh_execute_header, v64, v65, "SubscribeAndFetch - hasActiveShallowSubscriptions %{BOOL}d", v66, 8u);
  }

  *v27 = v15 != 1;
}

uint64_t sub_100121B58(uint64_t a1, unint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v39 = &v35 - v10;
  v11 = type metadata accessor for SecureLocationsSubscription();
  v38 = *(v11 - 1);
  v12 = *(v38 + 64);
  __chkstk_darwin(v11);
  v14 = (&v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_1005A7EE8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = sub_10000A6F0(v15, qword_1005DFB98);

  v17 = a3;
  v37 = v16;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (!os_log_type_enabled(v18, v19))
  {

    goto LABEL_20;
  }

  v35 = a4;
  v20 = swift_slowAlloc();
  v40[0] = swift_slowAlloc();
  *v20 = 141558531;
  *(v20 + 4) = 1752392040;
  *(v20 + 12) = 2081;
  *(v20 + 14) = sub_10000D01C(a1, a2, v40);
  *(v20 + 22) = 2082;
  v21 = [v17 subscriptionMode];
  v36 = a1;
  if (v21 > 2)
  {
    switch(v21)
    {
      case 3:
        v22 = 0xE500000000000000;
        v23 = 0x72656E776FLL;
        goto LABEL_19;
      case 4:
        v22 = 0xEE00657669746361;
        v23 = 0x6F725072656E776FLL;
        goto LABEL_19;
      case 5:
        v22 = 0x80000001004DDB80;
        v23 = 0xD000000000000013;
        goto LABEL_19;
    }

LABEL_16:
    v22 = 0xE700000000000000;
    v23 = 0x6E776F6E6B6E75;
    goto LABEL_19;
  }

  if (!v21)
  {
    v22 = 0xE900000000000065;
    v23 = 0x76697463616F7270;
    goto LABEL_19;
  }

  if (v21 == 1)
  {
    v22 = 0xE700000000000000;
    v23 = 0x776F6C6C616873;
    goto LABEL_19;
  }

  if (v21 != 2)
  {
    goto LABEL_16;
  }

  v22 = 0xE400000000000000;
  v23 = 1702259052;
LABEL_19:
  v24 = sub_10000D01C(v23, v22, v40);

  *(v20 + 24) = v24;
  _os_log_impl(&_mh_execute_header, v18, v19, "SubscribeAndFetch - adding pending key subscription %{private,mask.hash}s in mode %{public}s", v20, 0x20u);
  swift_arrayDestroy();

  a1 = v36;
LABEL_20:
  v25 = v11[5];

  static Date.trustedNow.getter(v14 + v25);
  v26 = [v17 subscriptionMode];
  *v14 = a1;
  v14[1] = a2;
  *(v14 + v11[6]) = v26;
  *(v14 + v11[7]) = 0;
  v27 = (v14 + v11[8]);
  *v27 = 0;
  v27[1] = 0;
  v28 = [v17 subscriptionMode];
  if (v28 <= 1)
  {
    if (v28 <= 1)
    {
      goto LABEL_25;
    }

    goto LABEL_26;
  }

  if (v28 == 2)
  {
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "SubscribeAndFetch - key request in live - we don't currently do this. This is an anomaly";
      goto LABEL_30;
    }

LABEL_31:

    return sub_100123304(v14, type metadata accessor for SecureLocationsSubscription);
  }

  if (v28 != 5)
  {
LABEL_26:
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "SubscribeAndFetch unknown mode specified";
LABEL_30:
      _os_log_impl(&_mh_execute_header, v30, v31, v33, v32, 2u);

      goto LABEL_31;
    }

    goto LABEL_31;
  }

LABEL_25:
  v29 = v39;
  sub_10012329C(v14, v39, type metadata accessor for SecureLocationsSubscription);
  (*(v38 + 56))(v29, 0, 1, v11);
  swift_beginAccess();

  sub_100145C20(v29, a1, a2);
  swift_endAccess();
  return sub_100123304(v14, type metadata accessor for SecureLocationsSubscription);
}

uint64_t sub_100122118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char *a5@<X8>)
{
  v82 = a4;
  v79 = a2;
  v80 = a3;
  v81 = a5;
  v6 = type metadata accessor for Date();
  v75 = *(v6 - 8);
  v76 = v6;
  v7 = *(v75 + 64);
  __chkstk_darwin(v6);
  v9 = &v73 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for SecureLocationsSubscription();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v77 = &v73 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v74 = &v73 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __chkstk_darwin(v16);
  v20 = &v73 - v19;
  v21 = __chkstk_darwin(v18);
  v23 = &v73 - v22;
  v24 = __chkstk_darwin(v21);
  v26 = &v73 - v25;
  __chkstk_darwin(v24);
  v27 = *(v11 + 56);
  v83 = &v73 - v28;
  v27();
  v78 = a1;
  if (a1 != 5)
  {
    if (a1 == 1)
    {
      v26 = v23;
      v31 = v79;
      swift_beginAccess();
      v30 = *(v31 + 40);
      if (!*(v30 + 16))
      {
        goto LABEL_18;
      }

      goto LABEL_7;
    }

    if (a1)
    {
      if (qword_1005A7EE8 != -1)
      {
        swift_once();
      }

      v35 = type metadata accessor for Logger();
      sub_10000A6F0(v35, qword_1005DFB98);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v36, v37))
      {
        goto LABEL_68;
      }

      v38 = swift_slowAlloc();
      v39 = swift_slowAlloc();
      v85 = v39;
      *v38 = 136446210;
      if (v78 <= 2)
      {
        if (!v78)
        {
          v40 = 0x76697463616F7270;
          v41 = 0xE900000000000065;
          goto LABEL_66;
        }

        if (v78 == 2)
        {
          v41 = 0xE400000000000000;
          v40 = 1702259052;
          goto LABEL_66;
        }
      }

      else
      {
        switch(v78)
        {
          case 3:
            v41 = 0xE500000000000000;
            v40 = 0x72656E776FLL;
            goto LABEL_66;
          case 4:
            v40 = 0x6F725072656E776FLL;
            v41 = 0xEE00657669746361;
            goto LABEL_66;
          case 5:
            v40 = 0xD000000000000013;
            v41 = 0x80000001004DDB80;
LABEL_66:
            v70 = sub_10000D01C(v40, v41, &v85);

            *(v38 + 4) = v70;
            _os_log_impl(&_mh_execute_header, v36, v37, "SubscribeAndFetch hasPendingSubscription - unexpected subscription mode %{public}s", v38, 0xCu);
            sub_100004984(v39);
            goto LABEL_67;
        }
      }

      v41 = 0xE700000000000000;
      v40 = 0x6E776F6E6B6E75;
      goto LABEL_66;
    }
  }

  v29 = v79;
  swift_beginAccess();
  v30 = *(v29 + 32);
  if (!*(v30 + 16))
  {
    goto LABEL_18;
  }

LABEL_7:

  v32 = sub_1000110D8(v80, v82);
  if (v33)
  {
    sub_10012329C(*(v30 + 56) + *(v11 + 72) * v32, v26, type metadata accessor for SecureLocationsSubscription);
    sub_100123364(v83);

    v34 = 0;
    goto LABEL_19;
  }

LABEL_18:
  sub_100123364(v83);
  v34 = 1;
LABEL_19:
  (v27)(v26, v34, 1, v10);
  v42 = v83;
  sub_1000176A8(v26, v83, &qword_1005A9EC8, &unk_1004C3420);
  sub_100123414(v42, v20);
  if ((*(v11 + 48))(v20, 1, v10) == 1)
  {
    sub_100123364(v20);
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_10000A6F0(v43, qword_1005DFB98);

    v36 = Logger.logObject.getter();
    v44 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v36, v44))
    {
      goto LABEL_68;
    }

    v45 = swift_slowAlloc();
    v84[0] = swift_slowAlloc();
    *v45 = 136446723;
    if (v78 > 2)
    {
      if (v78 == 3)
      {
        v62 = 0xE500000000000000;
        v61 = 0x72656E776FLL;
LABEL_45:
        v63 = sub_10000D01C(v61, v62, v84);

        *(v45 + 4) = v63;
        *(v45 + 12) = 2160;
        *(v45 + 14) = 1752392040;
        *(v45 + 22) = 2081;
        *(v45 + 24) = sub_10000D01C(v80, v82, v84);
        _os_log_impl(&_mh_execute_header, v36, v44, "SubscribeAndFetch - no pendingKeyRequest in %{public}s for %{private,mask.hash}s", v45, 0x20u);
        swift_arrayDestroy();
LABEL_67:

LABEL_68:

LABEL_77:
        result = sub_100123364(v83);
        v60 = 0;
        goto LABEL_78;
      }

      v46 = 0x6F725072656E776FLL;
      v47 = 0xEE00657669746361;
      v49 = 0xD000000000000013;
      v48 = 0x80000001004DDB80;
      v50 = v78 == 4;
    }

    else
    {
      v46 = 0x76697463616F7270;
      v47 = 0xE900000000000065;
      v48 = 0xE700000000000000;
      v49 = 0x776F6C6C616873;
      if (v78 != 1)
      {
        v49 = 1702259052;
        v48 = 0xE400000000000000;
      }

      v50 = v78 == 0;
    }

    if (v50)
    {
      v61 = v46;
    }

    else
    {
      v61 = v49;
    }

    if (v50)
    {
      v62 = v47;
    }

    else
    {
      v62 = v48;
    }

    goto LABEL_45;
  }

  v51 = v77;
  sub_100123238(v20, v77);
  static Date.trustedNow.getter(v9);
  Date.timeIntervalSince1970.getter();
  v53 = v52;
  (*(v75 + 8))(v9, v76);
  v54 = v51 + *(v10 + 20);
  Date.timeIntervalSince1970.getter();
  v56 = v53 - v55;
  v57 = *(v51 + *(v10 + 24));
  if (v57 <= 1)
  {
    if (v57)
    {
      if (v57 != 1)
      {
        goto LABEL_35;
      }

      v58 = 240.0;
    }

    else
    {
      v58 = 86400.0;
    }

LABEL_47:
    if (v56 <= v58)
    {
      goto LABEL_36;
    }

LABEL_48:
    if (qword_1005A7EE8 != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    sub_10000A6F0(v64, qword_1005DFB98);

    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v84[0] = swift_slowAlloc();
      *v67 = 136446723;
      if (v78 > 2)
      {
        if (v78 == 3)
        {
          v68 = 0xE500000000000000;
          v69 = 0x72656E776FLL;
        }

        else if (v78 == 4)
        {
          v69 = 0x6F725072656E776FLL;
          v68 = 0xEE00657669746361;
        }

        else
        {
          v69 = 0xD000000000000013;
          v68 = 0x80000001004DDB80;
        }
      }

      else if (v78)
      {
        if (v78 == 1)
        {
          v68 = 0xE700000000000000;
          v69 = 0x776F6C6C616873;
        }

        else
        {
          v68 = 0xE400000000000000;
          v69 = 1702259052;
        }
      }

      else
      {
        v69 = 0x76697463616F7270;
        v68 = 0xE900000000000065;
      }

      v71 = sub_10000D01C(v69, v68, v84);

      *(v67 + 4) = v71;
      *(v67 + 12) = 2160;
      *(v67 + 14) = 1752392040;
      *(v67 + 22) = 2081;
      *(v67 + 24) = sub_10000D01C(v80, v82, v84);
      _os_log_impl(&_mh_execute_header, v65, v66, "SubscribeAndFetch - pendingKeyRequest in %{public}s for %{private,mask.hash}s is outside of expirationWindow - removing it", v67, 0x20u);
      swift_arrayDestroy();
    }

    if (v78 <= 1)
    {
      swift_beginAccess();
      v72 = v74;
      sub_1001FF0F8(v80, v82, v74);
      sub_100123364(v72);
      swift_endAccess();
    }

    sub_100123304(v51, type metadata accessor for SecureLocationsSubscription);
    goto LABEL_77;
  }

  if (v57 == 2 || v57 == 3)
  {
    v58 = 120.0;
    goto LABEL_47;
  }

LABEL_35:
  if (v56 > 0.0)
  {
    goto LABEL_48;
  }

LABEL_36:
  sub_100123304(v51, type metadata accessor for SecureLocationsSubscription);
  result = sub_100123364(v83);
  v60 = 1;
LABEL_78:
  *v81 = v60;
  return result;
}

uint64_t sub_100122BE8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 32);

  v3 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SecureLocationsSubscription()
{
  result = qword_1005AB778;
  if (!qword_1005AB778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100122CD0()
{
  type metadata accessor for Date();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SPSecureLocationSubscriptionMode(319);
    if (v1 <= 0x3F)
    {
      sub_1000F8F5C();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_100122D98()
{
  result = qword_1005AB7C0;
  if (!qword_1005AB7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005AB7C0);
  }

  return result;
}

void *sub_100122DEC()
{
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for DispatchQoS();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B518();
  (*(v6 + 104))(v9, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v5);
  static DispatchQoS.unspecified.getter();
  v11[1] = _swiftEmptyArrayStorage;
  sub_1001233CC(&qword_1005A8670, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10004B564(&unk_1005AB400, &unk_1004C0BF0);
  sub_10004B5AC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v0[2] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v0[3] = _swiftEmptyDictionarySingleton;
  v0[4] = _swiftEmptyDictionarySingleton;
  v0[5] = _swiftEmptyDictionarySingleton;
  return v0;
}

uint64_t sub_100123034(uint64_t a1, void *a2, id a3)
{
  v6 = [a3 clientApp];
  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  v8._countAndFlagsBits = 12079;
  v8._object = 0xE200000000000000;
  String.append(_:)(v8);

  v9 = [a3 subscriptionMode];
  if (v9 > 2)
  {
    switch(v9)
    {
      case 3:
        v10 = 0xE500000000000000;
        v11 = 0x72656E776FLL;
        goto LABEL_15;
      case 4:
        v10 = 0xEE00657669746361;
        v11 = 0x6F725072656E776FLL;
        goto LABEL_15;
      case 5:
        v10 = 0x80000001004DDB80;
        v11 = 0xD000000000000013;
        goto LABEL_15;
    }

LABEL_12:
    v10 = 0xE700000000000000;
    v11 = 0x6E776F6E6B6E75;
    goto LABEL_15;
  }

  if (!v9)
  {
    v10 = 0xE900000000000065;
    v11 = 0x76697463616F7270;
    goto LABEL_15;
  }

  if (v9 == 1)
  {
    v10 = 0xE700000000000000;
    v11 = 0x776F6C6C616873;
    goto LABEL_15;
  }

  if (v9 != 2)
  {
    goto LABEL_12;
  }

  v10 = 0xE400000000000000;
  v11 = 1702259052;
LABEL_15:

  v12._countAndFlagsBits = v11;
  v12._object = v10;
  String.append(_:)(v12);

  v13._countAndFlagsBits = 12079;
  v13._object = 0xE200000000000000;
  String.append(_:)(v13);

  v14._countAndFlagsBits = a1;
  v14._object = a2;
  String.append(_:)(v14);

  return v7;
}

uint64_t sub_100123238(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecureLocationsSubscription();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_10012329C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100123304(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100123364(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1001233CC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100123414(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005A9EC8, &unk_1004C3420);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

BOOL sub_100123484()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000A6F0(v6, qword_1005E0DE0);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "Session ended for outgoing live session, removing existing from cache", v9, 2u);
  }

  os_unfair_lock_lock((v1 + 32));
  v10 = *(v1 + 40);
  if (v10)
  {
    v11 = type metadata accessor for TaskPriority();
    (*(*(v11 - 8) + 56))(v5, 1, 1, v11);
    v12 = swift_allocObject();
    v12[2] = 0;
    v12[3] = 0;
    v12[4] = v10;
    sub_10020D620(0, 0, v5, &unk_1004C5780, v12);

    *(v1 + 40) = 0;
  }

  os_unfair_lock_unlock((v1 + 32));
  return v10 != 0;
}

uint64_t sub_100123668(uint64_t a1)
{
  v2 = v1;
  v4 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v17 - v6;
  if (qword_1005A8608 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005E0DE0);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "Session ended for outgoing live session, removing specific from cache", v11, 2u);
  }

  os_unfair_lock_lock((v2 + 32));
  v12 = *(v2 + 40);
  if (v12 && v12 == a1)
  {
    v14 = type metadata accessor for TaskPriority();
    v13 = 1;
    (*(*(v14 - 8) + 56))(v7, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v12;
    sub_10020D620(0, 0, v7, &unk_1004C5748, v15);

    *(v2 + 40) = 0;
  }

  else
  {
    v13 = 0;
  }

  os_unfair_lock_unlock((v2 + 32));
  return v13;
}

uint64_t sub_10012385C(unint64_t a1)
{
  v3 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v72 = v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v84 = v66 - v7;
  v8 = type metadata accessor for Destination();
  v9 = *(v8 - 8);
  v77 = v8;
  v78 = v9;
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v76 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_10004B564(&qword_1005AB940, &qword_1004C5830);
  v12 = *(*(v11 - 8) + 64);
  v13 = __chkstk_darwin(v11 - 8);
  v15 = v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v17 = v66 - v16;
  os_unfair_lock_lock((v1 + 48));
  v18 = *(v1 + 56);

  v82 = v1;
  os_unfair_lock_unlock((v1 + 48));
  if (qword_1005A7EE8 != -1)
  {
LABEL_33:
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  sub_10000A6F0(v19, qword_1005DFB98);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v73 = a1;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(v18 + 16);

    _os_log_impl(&_mh_execute_header, v20, v21, "Sending live location to %ld subscribers", v23, 0xCu);
  }

  else
  {
  }

  v24 = 0;
  v67 = v18;
  v26 = *(v18 + 64);
  v18 += 64;
  v25 = v26;
  v27 = 1 << *(v18 - 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  a1 = v28 & v25;
  v29 = (v27 + 63) >> 6;
  v66[1] = v78 + 16;
  v74 = v78 + 32;
  v68 = v10 + 7;
  v75 = v17;
  v70 = v18;
  v69 = v29;
  v71 = v15;
  while (1)
  {
    if (!a1)
    {
      if (v29 <= v24 + 1)
      {
        v31 = v24 + 1;
      }

      else
      {
        v31 = v29;
      }

      v10 = v31 - 1;
      while (1)
      {
        v30 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          break;
        }

        if (v30 >= v29)
        {
          v64 = sub_10004B564(&qword_1005AB948, &qword_1004C5838);
          (*(*(v64 - 8) + 56))(v15, 1, 1, v64);
          a1 = 0;
          v24 = v10;
          goto LABEL_21;
        }

        a1 = *(v18 + 8 * v30);
        ++v24;
        if (a1)
        {
          v24 = v30;
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_33;
    }

    v30 = v24;
LABEL_20:
    v32 = __clz(__rbit64(a1));
    a1 &= a1 - 1;
    v33 = v32 | (v30 << 6);
    v34 = v67;
    v35 = v77;
    v36 = v78;
    v37 = v76;
    (*(v78 + 16))(v76, *(v67 + 48) + *(v78 + 72) * v33, v77);
    v38 = *(*(v34 + 56) + 8 * v33);
    v39 = sub_10004B564(&qword_1005AB948, &qword_1004C5838);
    v40 = *(v39 + 48);
    (*(v36 + 32))(v15, v37, v35);
    *&v15[v40] = v38;
    (*(*(v39 - 8) + 56))(v15, 0, 1, v39);

    v17 = v75;
LABEL_21:
    sub_10012BFD8(v15, v17);
    v41 = sub_10004B564(&qword_1005AB948, &qword_1004C5838);
    if ((*(*(v41 - 8) + 48))(v17, 1, v41) == 1)
    {
    }

    v83 = *&v17[*(v41 + 48)];
    v42 = type metadata accessor for TaskPriority();
    v43 = *(v42 - 8);
    v80 = v42;
    v81 = v43;
    (*(v43 + 56))(v84, 1, 1, v42);
    v45 = v77;
    v44 = v78;
    v79 = *(v78 + 32);
    v46 = v76;
    v79(v76, v17, v77);
    v47 = (*(v44 + 80) + 96) & ~*(v44 + 80);
    v48 = (v68 + v47) & 0xFFFFFFFFFFFFFFF8;
    v49 = swift_allocObject();
    *(v49 + 16) = 0;
    *(v49 + 24) = 0;
    v50 = v73;
    v51 = v73[1];
    *(v49 + 32) = *v73;
    *(v49 + 48) = v51;
    *(v49 + 64) = *(v50 + 32);
    v52 = v83;
    *(v49 + 80) = *(v50 + 48);
    *(v49 + 88) = v52;
    v53 = v49 + v47;
    v54 = v45;
    v55 = v80;
    v56 = v81;
    v79(v53, v46, v54);
    *(v49 + v48) = v82;
    v57 = v72;
    sub_10007CE68(v84, v72);
    if ((*(v56 + 48))(v57, 1, v55) == 1)
    {
      sub_1000C980C(v50, v89);

      sub_100002CE0(v57, &qword_1005A9690, &qword_1004C2A00);
    }

    else
    {
      sub_1000C980C(v50, v89);

      TaskPriority.rawValue.getter();
      (*(v56 + 8))(v57, v55);
    }

    v58 = *(v49 + 16);
    v59 = *(v49 + 24);
    swift_unknownObjectRetain();

    v15 = v71;
    if (v58)
    {
      swift_getObjectType();
      v60 = dispatch thunk of Actor.unownedExecutor.getter();
      v62 = v61;
      swift_unknownObjectRelease();
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    sub_100002CE0(v84, &qword_1005A9690, &qword_1004C2A00);
    v63 = swift_allocObject();
    *(v63 + 16) = &unk_1004C5848;
    *(v63 + 24) = v49;
    if (v62 | v60)
    {
      v85 = 0;
      v86 = 0;
      v87 = v60;
      v88 = v62;
    }

    v17 = v75;
    swift_task_create();

    v18 = v70;
    v29 = v69;
  }
}