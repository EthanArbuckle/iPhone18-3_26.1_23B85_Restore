uint64_t sub_10001979C(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, a1))
      {
        goto LABEL_16;
      }
    }

    if (!__OFSUB__(v4, v3))
    {
LABEL_13:
      __DataStorage._length.getter();
      return Data._Representation.replaceSubrange(_:with:count:)();
    }

    __break(1u);
LABEL_10:
    v5 = a1;
    if (a1 >> 32 >= a1)
    {
      if (!__DataStorage._bytes.getter() || !__OFSUB__(v5, __DataStorage._offset.getter()))
      {
        goto LABEL_13;
      }

LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  return Data._Representation.replaceSubrange(_:with:count:)();
}

uint64_t sub_100019974(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v5 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = *(a3 + 16);
      v7 = FileDescriptor._write(_:retryOnInterrupt:)();
      if ((v8 & 1) == 0)
      {
      }

      goto LABEL_10;
    }

    v10 = a1;
    v11 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    goto LABEL_8;
  }

  if (v5 == 2)
  {
    v10 = *(a1 + 16);
    v11 = *(a1 + 24);
LABEL_8:

    sub_100019F24(v10, v11, a2 & 0x3FFFFFFFFFFFFFFFLL, a3);
  }

  v12 = *(a3 + 16);
  v7 = FileDescriptor._write(_:retryOnInterrupt:)();
  if (v13)
  {
LABEL_10:
    v14 = v7;
    sub_100009B88();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v15 = v14;
  }
}

uint64_t sub_100019B64(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 8))
  {
    return (*a1 + 13);
  }

  v3 = (((*a1 >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*a1 >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_100019BB8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100019C40()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for IPv6Address();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

__n128 sub_100019D40(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100019D4C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019D9C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_100019DF0(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_100019E0C(void *result, int a2)
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

__n128 sub_100019E40(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 24);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_100019E6C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 100))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100019E8C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
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

  *(result + 100) = v3;
  return result;
}

void type metadata accessor for ctl_info()
{
  if (!qword_100028E50)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_100028E50);
    }
  }
}

uint64_t sub_100019F24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = __DataStorage._bytes.getter();
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_8;
    }
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
LABEL_8:
    __break(1u);
    return result;
  }

  __DataStorage._length.getter();
  v8 = *(a4 + 16);
  v9 = FileDescriptor._write(_:retryOnInterrupt:)();
  if (v10)
  {
    v11 = v9;
    sub_100009B88();
    swift_willThrowTypedImpl();
    swift_allocError();
    *v12 = v11;
  }
}

uint64_t sub_10001A014(uint64_t (*a1)(int64_t, uint64_t), uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
{
  if ((a6 & 0x1000000000000000) != 0)
  {
    return (a6 & 0x1000000000000000) >> 60;
  }

  if ((a6 & 0x2000000000000000) != 0)
  {
    v10 = HIBYTE(a6) & 0xF;
    v15[0] = a5;
    v15[1] = a6 & 0xFFFFFFFFFFFFFFLL;
    v9 = v15;
  }

  else if ((a5 & 0x1000000000000000) != 0)
  {
    v9 = ((a6 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v10 = a5 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v14 = a4;
    v12 = a3;
    v13 = a5;
    v9 = _StringObject.sharedUTF8.getter();
    a3 = v12;
    a5 = v13;
    a4 = v14;
  }

  result = sub_10001A0C4(v9, v10, a3, a4, a5, a6, a1);
  if (!v6)
  {
    return (a6 & 0x1000000000000000) >> 60;
  }

  return result;
}

uint64_t sub_10001A0C4(uint64_t result, uint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, uint64_t (*a7)(int64_t, uint64_t))
{
  v9 = result;
  v10 = (a5 >> 59) & 1;
  if ((a6 & 0x1000000000000000) == 0)
  {
    LOBYTE(v10) = 1;
  }

  v11 = 4 << v10;
  v12 = a3 & 0xC;
  v13 = a3;
  if (v12 == 4 << v10)
  {
    v26 = a3;
    v15 = a6;
    v16 = a4;
    result = sub_1000119D8(a3, a5, a6);
    a3 = v26;
    a4 = v16;
    a6 = v15;
    v13 = result;
    if ((v15 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v14 = v13 >> 16;
      if (v12 != v11)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v27 = a3;
  v28 = a4;
  v17 = a5 & 0xFFFFFFFFFFFFLL;
  if ((a6 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a6) & 0xF;
  }

  if (v17 < v13 >> 16)
  {
    goto LABEL_31;
  }

  v18 = a6;
  result = String.UTF8View._foreignDistance(from:to:)();
  a6 = v18;
  v14 = result;
  a4 = v28;
  a3 = v27;
  if (v12 == v11)
  {
LABEL_14:
    v19 = a6;
    v20 = a4;
    result = sub_1000119D8(a3, a5, a6);
    a4 = v20;
    a6 = v19;
    a3 = result;
  }

LABEL_6:
  if ((a4 & 0xC) == v11)
  {
    v21 = a3;
    v22 = a6;
    result = sub_1000119D8(a4, a5, a6);
    a3 = v21;
    a6 = v22;
    a4 = result;
    if ((v22 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a6 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a4 >> 16) - (a3 >> 16);
    goto LABEL_21;
  }

  v23 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v23 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v23 < a3 >> 16)
  {
    goto LABEL_29;
  }

  if (v23 < a4 >> 16)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    return result;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  if (__OFADD__(v14, result))
  {
    __break(1u);
    goto LABEL_28;
  }

  v24 = result;
  if (v14 + result < v14)
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v9)
  {
    v25 = v14 + v9;
  }

  else
  {
    v25 = 0;
  }

  return a7(v25, v24);
}

unint64_t sub_10001A2F0(unint64_t result, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = (a3 >> 59) & 1;
  if ((a4 & 0x1000000000000000) == 0)
  {
    LOBYTE(v4) = 1;
  }

  v5 = 4 << v4;
  if ((a2 & 0xC) == 4 << v4)
  {
    v7 = result;
    v8 = a3;
    v9 = a4;
    v10 = sub_1000119D8(a2, a3, a4);
    a3 = v8;
    a4 = v9;
    a2 = v10;
    result = v7;
  }

  if ((result & 0xC) == v5)
  {
    v11 = a2;
    v12 = a3;
    v13 = a4;
    result = sub_1000119D8(result, a3, a4);
    a3 = v12;
    a4 = v13;
    a2 = v11;
  }

  v6 = a3 & 0xFFFFFFFFFFFFLL;
  if ((a4 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a4) & 0xF;
  }

  if (a2 >> 14 > 4 * v6 || a2 >> 14 < result >> 14)
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10001A3C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

  result = recv(*(a4 + 16), (v8 + v9), v13, 0);
  if (result < 0)
  {
    v14 = result;
    v15 = errno.getter();
    sub_100009B88();
    swift_allocError();
    *v16 = v15;
    swift_willThrow();
    return v14;
  }

  return result;
}

uint64_t sub_10001A498(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      swift_retain_n();
      sub_100009B34(v7, v6);
      *&v32 = v7;
      WORD4(v32) = v6;
      BYTE10(v32) = BYTE2(v6);
      BYTE11(v32) = BYTE3(v6);
      BYTE12(v32) = BYTE4(v6);
      BYTE13(v32) = BYTE5(v6);
      BYTE14(v32) = BYTE6(v6);
      v9 = recv(*(a2 + 16), &v32, BYTE6(v6), 0);
      if (v9 < 0)
      {
        v22 = errno.getter();
        sub_100009B88();
        swift_allocError();
        *v23 = v22;
        swift_willThrow();
        v24 = v32;
        v25 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);

        *a1 = v24;
        a1[1] = v25;
      }

      else
      {
        v10 = v32;
        v11 = DWORD2(v32) | ((WORD6(v32) | (BYTE14(v32) << 16)) << 32);
        v12 = v9;

        result = v12;
        *a1 = v10;
        a1[1] = v11;
      }

      return result;
    }

    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    swift_retain_n();
    sub_100015A94(v7, v6);
    sub_100009B34(v7, v6);
    *a1 = xmmword_10001DAE0;
    sub_100009B34(0, 0xC000000000000000);
    v19 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v19 < v7)
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_25:
        __break(1u);
      }

      v27 = type metadata accessor for __DataStorage();
      v28 = *(v27 + 48);
      v29 = *(v27 + 52);
      swift_allocObject();
      v30 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v18 = v30;
      v3 = v2;
    }

    if (v19 >= v7)
    {

      v31 = sub_10001A3C4(v7, v7 >> 32, v18, a2);

      *a1 = v7;
      a1[1] = v18 | 0x4000000000000000;
      if (!v3)
      {
        return v31;
      }

      return result;
    }

    __break(1u);
    goto LABEL_24;
  }

  if (v8 == 2)
  {
    swift_retain_n();
    sub_100015A94(v7, v6);
    sub_100009B34(v7, v6);
    *&v32 = v7;
    *(&v32 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_10001DAE0;
    sub_100009B34(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v14 = *(&v32 + 1);
    v15 = *(v32 + 16);
    v16 = *(v32 + 24);

    v17 = sub_10001A3C4(v15, v16, *(&v32 + 1), a2);
    if (v3)
    {
    }

    else
    {
      v26 = v17;

      result = v26;
    }

    *a1 = v32;
    a1[1] = v14 | 0x8000000000000000;
  }

  else
  {
    *(&v32 + 7) = 0;
    *&v32 = 0;
    result = recv(*(a2 + 16), &v32, 0, 0);
    if (result < 0)
    {
      v20 = errno.getter();
      sub_100009B88();
      swift_allocError();
      *v21 = v20;
      return swift_willThrow();
    }
  }

  return result;
}

id sub_10001A90C()
{
  v1 = *(v0 + 16);
  v7 = 0;
  if ([v1 launchAndReturnError:&v7])
  {
    v2 = v7;
    [v1 waitUntilExit];
    result = [v1 terminationStatus];
    if (!result)
    {
      return result;
    }

    v4 = [v1 terminationStatus] | 0xC000000000000000;
    sub_1000186B0();
    swift_allocError();
    *v5 = v4;
  }

  else
  {
    v6 = v7;
    _convertNSErrorToError(_:)();
  }

  return swift_willThrow();
}

void *sub_10001A9E0(void *__src, size_t __len)
{
  if (__src)
  {
    if ((__len & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      return memmove(*(v2 + 40), __src, __len);
    }
  }

  return __src;
}

void sub_10001AB18(void *a1, _OWORD *a2)
{
  sub_100006A48(a1, a2);
  sub_100006ACC();
  v2 = __error();
  strerror(*v2);
  sub_100006A98();
  sub_100006A04();
  sub_100006AB4();
  __break(1u);
}

void sub_10001AC30(void *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  sub_100006A80();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001AD8C(uint64_t *a1, _OWORD *a2)
{
  *a1 = 0;
  a2[3] = 0u;
  a2[4] = 0u;
  a2[1] = 0u;
  a2[2] = 0u;
  *a2 = 0u;
  os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_ERROR);
  v4 = *__error();
  _os_log_send_and_compose_impl();
  v3 = *a1;
  _os_crash_msg();
  __break(1u);
}

void sub_10001AE74(void *a1, _OWORD *a2)
{
  sub_100006A48(a1, a2);
  sub_100006ACC();
  sub_100006AE4();
  sub_100006A04();
  sub_100006AB4();
  __break(1u);
}

void sub_10001AEE0(void *a1, _OWORD *a2)
{
  sub_100006A48(a1, a2);
  sub_100006ACC();
  sub_100006AE4();
  sub_100006A04();
  sub_100006AB4();
  __break(1u);
}

void sub_10001B000(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B06C(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B0D8(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B144(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B1B0(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B21C(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B288(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B2F4(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B380(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B3EC(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B458(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B4C4(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B530(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B59C(void *a1, _OWORD *a2)
{
  sub_1000069E0(a1, a2);
  sub_100006A80();
  sub_100006A28();
  sub_1000069BC();
  sub_100006A68();
  __break(1u);
}

void sub_10001B608(uint64_t a1, int a2, os_log_t log)
{
  v3 = *(a1 + 64);
  v4 = 136446466;
  v5 = v3;
  v6 = 1024;
  v7 = a2;
  _os_log_error_impl(&_mh_execute_header, log, OS_LOG_TYPE_ERROR, "%{public}s: Could not spawn child process: %{darwin.errno}d", &v4, 0x12u);
}

void sub_10001B694(void *a1, _OWORD *a2)
{
  sub_100006A48(a1, a2);
  sub_100006ACC();
  v2 = *__error();
  sub_100006A04();
  sub_100006AB4();
  __break(1u);
  __DataStorage.init(bytes:length:copy:deallocator:offset:)();
}