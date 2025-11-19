uint64_t sub_10098E010()
{
  v5 = dispatch thunk of CustomStringConvertible.description.getter();
  v0._countAndFlagsBits = 46;
  v0._object = 0xE100000000000000;
  String.append(_:)(v0);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 46;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  return v5;
}

uint64_t sub_10098E14C(void *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AFD18, &qword_1013CC268);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10098F0C8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v10[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v10[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10098E2EC()
{
  v1 = 0x726F6E696DLL;
  if (*v0 != 1)
  {
    v1 = 0x6E6F697369766572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x726F6A616DLL;
  }
}

uint64_t sub_10098E340@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10098EDE8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10098E368(uint64_t a1)
{
  v2 = sub_10098F0C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10098E3A4(uint64_t a1)
{
  v2 = sub_10098F0C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10098E3E0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10098EEF8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
  }

  return result;
}

uint64_t sub_10098E438(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  v8 = v6 >= v5 && *(a1 + 3) < *(a2 + 3);
  v9 = v5 < v6 || v8;
  if (v3 < v2)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

uint64_t sub_10098E48C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 < v2)
  {
    return 0;
  }

  if (v2 < v3)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  v8 = v5 < v6 || *(a2 + 3) >= *(a1 + 3);
  return v6 >= v5 && v8;
}

uint64_t sub_10098E4E4(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 < v3)
  {
    return 0;
  }

  if (v3 < v2)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  v8 = v6 < v5 || *(a1 + 3) >= *(a2 + 3);
  return v5 >= v6 && v8;
}

uint64_t sub_10098E53C(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v3 < v2)
  {
    return 1;
  }

  v5 = *(a1 + 2);
  v6 = *(a2 + 2);
  v8 = v5 >= v6 && *(a2 + 3) < *(a1 + 3);
  v9 = v6 < v5 || v8;
  if (v2 < v3)
  {
    return 0;
  }

  else
  {
    return v9;
  }
}

Swift::Int sub_10098E598()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_10098E608()
{
  v1 = *(v0 + 2);
  v2 = *(v0 + 3);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int sub_10098E654()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

unint64_t sub_10098E6F8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10098E9DC(*a1, a1[1]);
  if ((result & 0x100000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
  }

  return result;
}

unint64_t sub_10098E744()
{
  result = qword_1016AFCF0;
  if (!qword_1016AFCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCF0);
  }

  return result;
}

unint64_t sub_10098E798()
{
  result = qword_1016AFCF8;
  if (!qword_1016AFCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFCF8);
  }

  return result;
}

unint64_t sub_10098E7F0()
{
  result = qword_1016AFD00;
  if (!qword_1016AFD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD00);
  }

  return result;
}

unint64_t sub_10098E844(unint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_11;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 == 4)
      {
        goto LABEL_8;
      }

LABEL_11:
      v21 = 0;
      v20 = 1;
      return v21 | (v20 << 32);
    }

    __break(1u);
  }

  else
  {
    if (!v2)
    {
      if (BYTE6(a2) != 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      v7 = Data.subdata(in:)();
      v9 = v8;
      v10 = Data.subdata(in:)();
      v12 = v11;
      v13 = Data.subdata(in:)();
      v15 = v14;
      v16 = Data._Representation.subscript.getter();
      v17 = Data._Representation.subscript.getter() | (v16 << 8);
      v18 = Data._Representation.subscript.getter();
      v19 = Data._Representation.subscript.getter();
      sub_100016590(v13, v15);
      sub_100016590(v10, v12);
      sub_100016590(v7, v9);
      v20 = 0;
      v21 = v17 & 0xFFFFFFFF0000FFFFLL | (v18 << 16) & 0xFFFFFFFF00FFFFFFLL | (v19 << 24);
      return v21 | (v20 << 32);
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 4)
      {
        goto LABEL_8;
      }

      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10098E9DC(uint64_t a1, uint64_t a2)
{
  v33 = a1;
  v34 = a2;
  sub_1000DF96C();
  v2 = StringProtocol.components<A>(separatedBy:)();

  v4 = v2[2];
  if ((v4 & 0x7FFFFFFFFFFFFFFELL) != 2 || ((v5 = v2[4], v6 = v2[5], v7 = HIBYTE(v6) & 0xF, v8 = v5 & 0xFFFFFFFFFFFFLL, (v6 & 0x2000000000000000) != 0) ? (v9 = HIBYTE(v6) & 0xF) : (v9 = v5 & 0xFFFFFFFFFFFFLL), !v9))
  {
LABEL_73:

    goto LABEL_74;
  }

  if ((v6 & 0x1000000000000000) != 0)
  {
    v32 = v2[5];

    v11 = sub_1010DD968(v5, v6, 10);

    if ((v11 & 0x10000) == 0)
    {
      goto LABEL_64;
    }

    goto LABEL_73;
  }

  if ((v6 & 0x2000000000000000) != 0)
  {
    v33 = v2[4];
    v34 = v6 & 0xFFFFFFFFFFFFFFLL;
    if (v5 == 43)
    {
      if (v7)
      {
        if (--v7)
        {
          LOWORD(v11) = 0;
          v18 = &v33 + 1;
          while (1)
          {
            v19 = *v18 - 48;
            if (v19 > 9)
            {
              break;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              break;
            }

            v11 = (10 * v11) + v19;
            if ((v11 & 0x10000) != 0)
            {
              break;
            }

            ++v18;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }
    }

    else
    {
      if (v5 != 45)
      {
        if (v7)
        {
          LOWORD(v11) = 0;
          v21 = &v33;
          while (1)
          {
            v22 = *v21 - 48;
            if (v22 > 9)
            {
              break;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              break;
            }

            v11 = (10 * v11) + v22;
            if ((v11 & 0x10000) != 0)
            {
              break;
            }

            ++v21;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

      if (v7)
      {
        if (--v7)
        {
          LOWORD(v11) = 0;
          v14 = &v33 + 1;
          while (1)
          {
            v15 = *v14 - 48;
            if (v15 > 9)
            {
              break;
            }

            if (((10 * v11) & 0xF0000) != 0)
            {
              break;
            }

            v11 = (10 * v11) - v15;
            if ((v11 & 0xFFFF0000) != 0)
            {
              break;
            }

            ++v14;
            if (!--v7)
            {
              goto LABEL_63;
            }
          }
        }

        goto LABEL_62;
      }

LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
    }

    __break(1u);
LABEL_82:
    __break(1u);
    return result;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
    goto LABEL_77;
  }

  for (result = (v6 & 0xFFFFFFFFFFFFFFFLL) + 32; ; result = _StringObject.sharedUTF8.getter())
  {
    v10 = *result;
    if (v10 == 43)
    {
      if (v8 < 1)
      {
        goto LABEL_80;
      }

      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v11) = 0;
        if (!result)
        {
          goto LABEL_54;
        }

        v16 = (result + 1);
        while (1)
        {
          v17 = *v16 - 48;
          if (v17 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) + v17;
          if ((v11 & 0x10000) != 0)
          {
            break;
          }

          ++v16;
          if (!--v7)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v10 == 45)
    {
      if (v8 < 1)
      {
        __break(1u);
        goto LABEL_79;
      }

      v7 = v8 - 1;
      if (v8 != 1)
      {
        LOWORD(v11) = 0;
        if (!result)
        {
          goto LABEL_54;
        }

        v12 = (result + 1);
        while (1)
        {
          v13 = *v12 - 48;
          if (v13 > 9)
          {
            break;
          }

          if (((10 * v11) & 0xF0000) != 0)
          {
            break;
          }

          v11 = (10 * v11) - v13;
          if ((v11 & 0xFFFF0000) != 0)
          {
            break;
          }

          ++v12;
          if (!--v7)
          {
            goto LABEL_63;
          }
        }
      }
    }

    else if (v8)
    {
      LOWORD(v11) = 0;
      if (!result)
      {
LABEL_54:
        LOBYTE(v7) = 0;
        goto LABEL_63;
      }

      while (1)
      {
        v20 = *result - 48;
        if (v20 > 9)
        {
          break;
        }

        if (((10 * v11) & 0xF0000) != 0)
        {
          break;
        }

        v11 = (10 * v11) + v20;
        if ((v11 & 0x10000) != 0)
        {
          break;
        }

        ++result;
        if (!--v8)
        {
          goto LABEL_54;
        }
      }
    }

LABEL_62:
    LOWORD(v11) = 0;
    LOBYTE(v7) = 1;
LABEL_63:
    if (v7)
    {
      goto LABEL_73;
    }

LABEL_64:
    if (v2[2] >= 2uLL)
    {
      break;
    }

    __break(1u);
LABEL_77:
    ;
  }

  v23 = v2[6];
  v24 = v2[7];

  result = sub_1010DADF4(v23, v24);
  if ((result & 0x100) != 0)
  {
    goto LABEL_73;
  }

  v25 = result;
  if (v4 != 3)
  {

    v29 = 0;
    goto LABEL_71;
  }

  if (v2[2] < 3uLL)
  {
    goto LABEL_82;
  }

  v26 = v2[8];
  v27 = v2[9];

  v28 = sub_1010DADF4(v26, v27);
  if ((v28 & 0x100) == 0)
  {
    v29 = v28;
LABEL_71:
    v30 = 0;
    v31 = v11 | (v25 << 16) & 0xFFFFFFFF00FFFFFFLL | (v29 << 24);
    goto LABEL_75;
  }

LABEL_74:
  v31 = 0;
  v30 = 1;
LABEL_75:
  LOBYTE(v33) = v30;
  return v31 | (v30 << 32);
}

uint64_t sub_10098EDE8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6E696DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F697369766572 && a2 == 0xE800000000000000)
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

uint64_t sub_10098EEF8(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016AFD08, &qword_1013CC260);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v13 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10098F0C8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100007BAC(a1);
  }

  v16 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v15 = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100007BAC(a1);
  return (v10 << 16) | (v11 << 24) | v9;
}

unint64_t sub_10098F0C8()
{
  result = qword_1016AFD10;
  if (!qword_1016AFD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD10);
  }

  return result;
}

unint64_t sub_10098F130()
{
  result = qword_1016AFD20;
  if (!qword_1016AFD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD20);
  }

  return result;
}

unint64_t sub_10098F188()
{
  result = qword_1016AFD28;
  if (!qword_1016AFD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD28);
  }

  return result;
}

unint64_t sub_10098F1E0()
{
  result = qword_1016AFD30;
  if (!qword_1016AFD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFD30);
  }

  return result;
}

uint64_t sub_10098F23C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return _swift_task_switch(sub_10098F25C, v1, 0);
}

uint64_t sub_10098F25C()
{
  result = isUserAgent.getter();
  if ((result & 1) == 0)
  {
    v2 = *(*(v0 + 24) + 128);
    if (!v2)
    {
      __break(1u);
      return result;
    }

    sub_1009C0618(*(v0 + 16), v2);
  }

  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  sub_1000BC4D4(&qword_1016AFEB8, &qword_1013CC5A0);
  v5 = *(type metadata accessor for KeyGenerationBeaconInfo() - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_101385D80;
  sub_100991F98(v3, v8 + v7);
  type metadata accessor for Transaction();
  v9 = swift_task_alloc();
  *(v9 + 16) = v4;
  *(v9 + 24) = v8;
  static Transaction.named<A>(_:with:)();

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_10098F404(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return _swift_task_switch(sub_10098F428, v2, 0);
}

uint64_t sub_10098F428()
{
  result = isUserAgent.getter();
  if (result)
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_1000076D4(v2, qword_1016AFD38);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Unexpected isUserAgent is true on non-macOS platform!", v5, 2u);
    }

    sub_100991400();
    swift_allocError();
    *v6 = 3;
    swift_willThrow();
  }

  else
  {
    v7 = *(v0[4] + 128);
    if (!v7)
    {
      __break(1u);
      return result;
    }

    sub_1009C0A2C(v0[3], v7, v0[2]);
  }

  v8 = v0[1];

  return v8();
}

uint64_t sub_10098F5B8()
{
  if (isUserAgent.getter())
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v1 = type metadata accessor for Logger();
    sub_1000076D4(v1, qword_1016AFD38);
    v2 = Logger.logObject.getter();
    v3 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&_mh_execute_header, v2, v3, "Unexpected isUserAgent is true on non-macOS platform!", v4, 2u);
    }

    v5 = _swiftEmptyArrayStorage;
  }

  else
  {
    result = *(*(v0 + 16) + 128);
    if (!result)
    {
      __break(1u);
      return result;
    }

    v5 = sub_1009BFDBC(result);
  }

  v7 = *(v0 + 8);

  return v7(v5);
}

uint64_t sub_10098F738()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_1016AFD38);
  v1 = sub_1000076D4(v0, qword_1016AFD38);
  if (qword_101694AE8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000076D4(v0, qword_10177B758);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_10098F800(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_defaultActor_initialize();
  *(v2 + 112) = 0xD000000000000010;
  *(v2 + 120) = 0x80000001013CC3C0;
  *(v2 + 184) = 0;
  *(v2 + 192) = _swiftEmptyArrayStorage;
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  *&v18 = 0x7365547265646E75;
  *(&v18 + 1) = 0xE900000000000074;
  SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if (LOBYTE(v15[0]) == 1)
  {
    sub_1009921E4(a1, v2 + 144);
    result = isUserAgent.getter();
    if ((result & 1) == 0)
    {
      goto LABEL_5;
    }

LABEL_9:
    sub_10000B3A8(a1, &qword_1016AFEB0, &qword_1013CC568);

    *(v2 + 128) = 0;
    *(v2 + 136) = 0;
    return v3;
  }

  *(v2 + 176) = 0;
  *(v2 + 144) = 0u;
  *(v2 + 160) = 0u;
  result = isUserAgent.getter();
  if (result)
  {
    goto LABEL_9;
  }

LABEL_5:
  *(v2 + 128) = a2;
  if (a2)
  {
    sub_1009921E4(a1, v15);
    v7 = v16;
    if (v16)
    {
      v8 = v17;
      v9 = sub_1000035D0(v15, v16);
      *(&v19 + 1) = v7;
      v20 = *(v8 + 8);
      v10 = sub_1000280DC(&v18);
      (*(*(v7 - 8) + 16))(v10, v9, v7);
      swift_retain_n();
      sub_100007BAC(v15);
    }

    else
    {
      swift_retain_n();
      sub_10000B3A8(v15, &qword_1016AFEB0, &qword_1013CC568);
      v18 = 0u;
      v19 = 0u;
      v20 = 0;
    }

    v11 = type metadata accessor for BeaconKeyServiceBuilder(0);
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();
    v14 = sub_1008659A8(a2, &v18);

    sub_10000B3A8(a1, &qword_1016AFEB0, &qword_1013CC568);
    *(v3 + 136) = v14;
    return v3;
  }

  __break(1u);
  return result;
}

uint64_t sub_10098FA5C()
{
  v1 = *v0;
  v2 = type metadata accessor for OS_dispatch_queue.Attributes();
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v4 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9);
  v13 = v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v17 = v27 - v16;
  v18 = v0[23];
  if (v18)
  {
    v19 = *(v18 + 40);

    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  }

  else
  {
    v29 = 0x8000000101366A70;
    v30 = v15;
    v31 = v14;
    static DispatchQoS.background.getter();
    v28 = swift_allocObject();
    *(v28 + 16) = v1;
    v21 = swift_allocObject();
    *(v21 + 16) = v0;
    *(v21 + 24) = v1;
    type metadata accessor for XPCActivity();
    v22 = swift_allocObject();
    sub_1000BC4D4(&qword_1016A6010, &qword_101391C30);
    v23 = swift_allocObject();
    *(v23 + 16) = 0;
    *(v22 + 40) = v23;
    swift_unknownObjectWeakInit();
    *(v22 + 88) = 0;
    v24 = sub_100008BB8(0, &qword_101695570, OS_dispatch_queue_ptr);
    v27[0] = "party.BeaconKeyService";
    v27[1] = v24;
    *(v22 + 96) = 0;
    *(v22 + 104) = 0;
    (*(v30 + 16))(v13, v17, v31);
    (*(v5 + 104))(v8, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v4);
    v32 = _swiftEmptyArrayStorage;
    sub_100991F50(&qword_10169BB60, 255, &type metadata accessor for OS_dispatch_queue.Attributes);

    sub_1000BC4D4(&unk_101695580, &qword_101385D90);
    sub_1000BC51C();
    dispatch thunk of SetAlgebra.init<A>(_:)();
    *(v22 + 16) = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(v22 + 24) = 0xD000000000000026;
    v25 = v28;
    *(v22 + 32) = v29;
    *(v22 + 48) = sub_100991A08;
    *(v22 + 56) = v25;
    *(v22 + 64) = sub_100991A4C;
    *(v22 + 72) = v21;

    sub_100997398();

    (*(v30 + 8))(v17, v31);
    v26 = v0[23];
    v0[23] = v22;
  }
}

uint64_t sub_10098FEE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1000BC4D4(&qword_1016AFEA0, &qword_1013CC558);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v25 - v9;
  v11 = sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v15 = v25 - v14;
  result = *(a2 + 192);
  v17 = *(result + 16);
  if (v17)
  {
    v19 = *(v13 + 16);
    v18 = v13 + 16;
    v27 = v6;
    v28 = v19;
    v20 = v7;
    v21 = result + ((*(v18 + 64) + 32) & ~*(v18 + 64));
    v22 = *(v18 + 56);
    v25[2] = v3;
    v26 = v22;
    v23 = (v18 - 8);
    v24 = (v20 + 8);
    v25[1] = result;

    do
    {
      v28(v15, v21, v11);
      v29 = a3;

      AsyncStream.Continuation.yield(_:)();
      (*v23)(v15, v11);
      (*v24)(v10, v27);
      v21 += v26;
      --v17;
    }

    while (v17);
  }

  return result;
}

uint64_t sub_100990100(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v17 - v7;
  v9 = sub_1000BC4D4(&qword_101698C00, &qword_10138B570);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v12 = &v17 - v11;
  v13 = type metadata accessor for TaskPriority();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  (*(v5 + 16))(v8, a1, v4);
  v14 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v15 = swift_allocObject();
  *(v15 + 2) = 0;
  *(v15 + 3) = 0;
  *(v15 + 4) = a2;
  (*(v5 + 32))(&v15[v14], v8, v4);

  sub_10025EDD4(0, 0, v12, &unk_1013CC590, v15);
}

uint64_t sub_1009902EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560);
  v5[4] = v7;
  v8 = *(v7 - 8);
  v5[5] = v8;
  v9 = *(v8 + 64) + 15;
  v5[6] = swift_task_alloc();

  return _swift_task_switch(sub_1009903BC, a4, 0);
}

uint64_t sub_1009903BC()
{
  v1 = v0[2];
  (*(v0[5] + 16))(v0[6], v0[3], v0[4]);
  v2 = *(v1 + 192);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v1 + 192) = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_100A5E618(0, v2[2] + 1, 1, v2);
    *(v1 + 192) = v2;
  }

  v5 = v2[2];
  v4 = v2[3];
  if (v5 >= v4 >> 1)
  {
    v2 = sub_100A5E618(v4 > 1, v5 + 1, 1, v2);
  }

  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[4];
  v2[2] = v5 + 1;
  (*(v6 + 32))(v2 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v5, v7, v8);
  *(v1 + 192) = v2;

  v9 = v0[1];

  return v9();
}

uint64_t sub_10099050C()
{
  v1 = *(v0 + 16);
  sub_100008BB8(0, &qword_10169F448, NSFileManager_ptr);
  static NSFileManager.removeDirectory(url:)();
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_100990614;
  v3 = *(v0 + 16);

  return sub_100865F0C();
}

uint64_t sub_100990614()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10099070C()
{
  v1 = v0[15];

  v2 = v0[16];

  v3 = v0[17];

  sub_10000B3A8((v0 + 18), &qword_1016AFEB0, &qword_1013CC568);
  v4 = v0[23];

  v5 = v0[24];

  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t sub_10099077C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t sub_1009907C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100990810(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.initialLaunchProcessing()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.initialLaunchProcessing()(v6, a2);
}

uint64_t sub_1009908B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = async function pointer to ActorServiceProtocol.migrate(from:to:)[1];
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  v10 = type metadata accessor for BeaconKeyService();
  *v9 = v4;
  v9[1] = sub_100014744;

  return ActorServiceProtocol.migrate(from:to:)(a1, a2, v10, a4);
}

uint64_t sub_10099099C()
{
  result = isUserAgent.getter();
  if (result)
  {
    v2 = v0[1];

    return v2();
  }

  else if (*(v0[2] + 136))
  {
    v3 = swift_task_alloc();
    v0[3] = v3;
    *v3 = v0;
    v3[1] = sub_100990A74;

    return sub_100865B70();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100990A74()
{
  v1 = *(*v0 + 24);
  v2 = *(*v0 + 16);
  v4 = *v0;

  return _swift_task_switch(sub_100990B84, v2, 0);
}

uint64_t sub_100990B84()
{
  v1 = *(v0 + 16);
  sub_10098FA5C();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100990BE8(uint64_t a1, uint64_t a2)
{
  v4 = async function pointer to ActorServiceProtocol.run()[1];
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = type metadata accessor for BeaconKeyService();
  *v5 = v2;
  v5[1] = sub_100014650;

  return ActorServiceProtocol.run()(v6, a2);
}

uint64_t sub_100990C90()
{
  v1 = *v0;
  type metadata accessor for BeaconKeyService();
  sub_100991F50(&unk_1016B1090, v2, type metadata accessor for BeaconKeyService);
  return ActorServiceProtocol.description.getter();
}

uint64_t sub_100990D88(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for KeyGenerationBeaconInfo();
  v3[5] = v4;
  v5 = *(v4 - 8);
  v3[6] = v5;
  v6 = *(v5 + 64) + 15;
  v3[7] = swift_task_alloc();
  v3[8] = swift_task_alloc();

  return _swift_task_switch(sub_100990E58, v2, 0);
}

uint64_t sub_100990E58()
{
  v1 = v0[3];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[6];
    v34 = v0[5];
    sub_10003301C(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v33 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v5 = v1 + v33;
    v31 = v0;
    v32 = *(v4 + 72);
    do
    {
      v36 = v2;
      v37 = v3;
      v7 = v0[7];
      v6 = v0[8];
      v35 = v5;
      sub_100991F98(v5, v7);
      v8 = getuid();
      sub_1000294F0(v8);
      v9 = *(type metadata accessor for BeaconIdentifier() + 20);
      v10 = type metadata accessor for UUID();
      (*(*(v10 - 8) + 16))(v6 + v9, v7 + v9, v10);
      v11 = v34[5];
      v12 = type metadata accessor for Date();
      (*(*(v12 - 8) + 16))(v6 + v11, v7 + v11, v12);
      v13 = (v7 + v34[6]);
      v14 = *v13;
      v15 = v13[1];
      v16 = v13[2];
      v17 = v13[3];
      v19 = v13[4];
      v18 = v13[5];
      v20 = *(v7 + v34[7]);
      sub_100991FFC(*v13, v15, v16, v17, v19, v18);
      v21 = v7;
      v3 = v37;
      sub_100992068(v21);
      v22 = (v6 + v34[6]);
      *v22 = v14;
      v22[1] = v15;
      v22[2] = v16;
      v22[3] = v17;
      v22[4] = v19;
      v22[5] = v18;
      *(v6 + v34[7]) = v20;
      v24 = v37[2];
      v23 = v37[3];
      if (v24 >= v23 >> 1)
      {
        sub_10003301C(v23 > 1, v24 + 1, 1);
        v3 = v37;
      }

      v25 = v31[8];
      v3[2] = v24 + 1;
      sub_100033DFC(v25, v3 + v33 + v24 * v32);
      v5 = v35 + v32;
      v2 = v36 - 1;
      v0 = v31;
    }

    while (v36 != 1);
  }

  v26 = isUserAgent.getter();
  if (v26)
  {

    v0[10] = 0;
    v27 = v0[4];
    v26 = sub_100991318;
    v28 = 0;

    return _swift_task_switch(v26, v27, v28);
  }

  v28 = *(v0[4] + 128);
  if (!v28)
  {
    __break(1u);
    goto LABEL_16;
  }

  v26 = sub_1009C0458(v0[2], v3, v28);
  if (!*(v0[4] + 136))
  {
LABEL_16:
    __break(1u);
    return _swift_task_switch(v26, v27, v28);
  }

  v29 = swift_task_alloc();
  v0[9] = v29;
  *v29 = v0;
  v29[1] = sub_1009911C0;

  return sub_1008671C8();
}

uint64_t sub_1009911C0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;

  if (v0)
  {
    v6 = v2[7];
    v5 = v2[8];

    v7 = *(v4 + 8);

    return v7();
  }

  else
  {
    v2[10] = 0;
    v9 = v2[4];

    return _swift_task_switch(sub_100991318, v9, 0);
  }
}

uint64_t sub_100991318()
{
  v1 = *(v0 + 80);
  v3 = *(v0 + 56);
  v2 = *(v0 + 64);
  type metadata accessor for Transaction();
  *(swift_task_alloc() + 16) = vextq_s8(*(v0 + 24), *(v0 + 24), 8uLL);
  static Transaction.named<A>(_:with:)();

  v4 = *(v0 + 8);

  return v4();
}

unint64_t sub_100991400()
{
  result = qword_1016AFE98;
  if (!qword_1016AFE98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFE98);
  }

  return result;
}

void sub_100991454(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5)
{
  Transaction.capture()();
  if (a3 == 6)
  {
    v13 = *(a4 + 184);
    *(a4 + 184) = 0;
  }

  else if (a3 == 2)
  {
    if (qword_101694AE0 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000076D4(v8, qword_1016AFD38);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "reevaluateXPCActivity: XPC activity fired for BeaconKeyService", v11, 2u);
    }

    type metadata accessor for Transaction();
    v12 = swift_allocObject();
    *(v12 + 16) = a4;
    *(v12 + 24) = a5;

    static Transaction.asyncTask(name:block:)();

    sub_1009971E8();
  }
}

void sub_100991618()
{
  if (*(*(v0 + 16) + 136))
  {
    v1 = swift_task_alloc();
    *(v0 + 24) = v1;
    *v1 = v0;
    v1[1] = sub_1009916B4;

    sub_1008671C8();
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1009916B4()
{
  v2 = *(*v1 + 24);
  v3 = *v1;
  *(v3 + 32) = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1009917E8, 0, 0);
  }

  else
  {
    v4 = *(v3 + 8);

    return v4();
  }
}

uint64_t sub_1009917E8()
{
  if (qword_101694AE0 != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 32);
  v2 = type metadata accessor for Logger();
  sub_1000076D4(v2, qword_1016AFD38);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 32);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = _convertErrorToNSError(_:)();
    *(v7 + 4) = v9;
    *v8 = v9;
    _os_log_impl(&_mh_execute_header, v3, v4, "validateKeys error: %@", v7, 0xCu);
    sub_10000B3A8(v8, &qword_10169BB30, &unk_10138B3C0);
  }

  else
  {
  }

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_100991984()
{
  v0 = type metadata accessor for Logger();
  sub_100044B3C(v0, qword_10177B758);
  sub_1000076D4(v0, qword_10177B758);
  return Logger.init(subsystem:category:)();
}

double sub_100991A08@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100991AEC(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

uint64_t sub_100991A54()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_100014650;

  return sub_1009915F8(v2);
}

void sub_100991AEC(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[1];
  v33 = a1[2];
  v31 = *a1;
  v32 = a1[3];
  v5 = a1[4];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v6 = qword_10177B348;
  v7 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v8 = sub_10107406C(v34);

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      if (qword_101694AE0 != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      sub_1000076D4(v15, qword_1016AFD38);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.default.getter();
      if (!os_log_type_enabled(v16, v17))
      {
        v4 = 0;
        v20 = 0;
        v21 = 0;
        v5 = 0;
        v18 = 2;
        goto LABEL_25;
      }

      v18 = 2;
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&_mh_execute_header, v16, v17, "BeaconKeyService unregistering XPC Activity: service is disabled.", v19, 2u);
      v4 = 0;
      v20 = 0;
      v21 = 0;
      v5 = 0;
      goto LABEL_22;
    }
  }

  if (*a1 == 2)
  {
    v22 = *(v6 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v23 = sub_101074824(v34);
    v20 = 60 * v23;
    if ((v23 * 60) >> 64 == (60 * v23) >> 63)
    {
      v24 = sub_101074840(v34);

      v21 = 60 * v24;
      if ((v24 * 60) >> 64 == (60 * v24) >> 63)
      {
        if (qword_101694AE0 == -1)
        {
LABEL_17:
          v25 = type metadata accessor for Logger();
          sub_1000076D4(v25, qword_1016AFD38);
          v16 = Logger.logObject.getter();
          v26 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v16, v26))
          {
            v5 = 7232;
            v4 = 3600;
            v18 = 257;
            goto LABEL_25;
          }

          v27 = swift_slowAlloc();
          *v27 = 134218496;
          v4 = 3600;
          *(v27 + 4) = 3600;
          *(v27 + 12) = 2048;
          *(v27 + 14) = v20;
          *(v27 + 22) = 2048;
          *(v27 + 24) = v21;
          _os_log_impl(&_mh_execute_header, v16, v26, "BeaconKeyService XPC criteria: delay %lld, gracePeriod %lld, interval %lld", v27, 0x20u);
          v5 = 7232;
          v18 = 257;
          goto LABEL_22;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (qword_101694AE0 == -1)
  {
    goto LABEL_20;
  }

  swift_once();
LABEL_20:
  v28 = type metadata accessor for Logger();
  sub_1000076D4(v28, qword_1016AFD38);
  v16 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  v21 = v32;
  v20 = v33;
  v18 = v31;
  if (os_log_type_enabled(v16, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&_mh_execute_header, v16, v29, "BeaconKeyService retaining existing XPCActivity criteria", v30, 2u);
LABEL_22:
  }

LABEL_25:

  *a2 = v18;
  a2[1] = v4;
  a2[2] = v20;
  a2[3] = v21;
  a2[4] = v5;
}

uint64_t sub_100991F50(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100991F98(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeyGenerationBeaconInfo();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100991FFC(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  if (a2 >> 60 != 15)
  {
    sub_100017D5C(result, a2);
    sub_100017D5C(a3, a4);

    return sub_1002DBC68(a5, a6);
  }

  return result;
}

uint64_t sub_100992068(uint64_t a1)
{
  v2 = type metadata accessor for KeyGenerationBeaconInfo();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1009920E0(uint64_t a1)
{
  v4 = *(sub_1000BC4D4(&qword_1016AFEA8, &qword_1013CC560) - 8);
  v5 = (*(v4 + 80) + 40) & ~*(v4 + 80);
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[4];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_100014744;

  return sub_1009902EC(a1, v6, v7, v8, v1 + v5);
}

uint64_t sub_1009921E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016AFEB0, &qword_1013CC568);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100992268()
{
  result = qword_1016AFEC0;
  if (!qword_1016AFEC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFEC0);
  }

  return result;
}

uint64_t sub_100992468(uint64_t a1)
{
  v3 = *(a1 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(a1);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = *(v3 + 16);
  v8(&v11 - v9, v1, a1);
  if (swift_dynamicCast())
  {
    return 1;
  }

  v8(v7, v1, a1);
  return swift_dynamicCast();
}

unint64_t sub_1009925A4(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6E776F6E6B6E752ELL;
    v6 = 0x6553686374616C2ELL;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1)
    {
      v5 = 0x6E774F7261656E2ELL;
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
    v1 = 0x636553646C69772ELL;
    v2 = 0x736142746E69682ELL;
    if (a1 != 7)
    {
      v2 = 0x67696C4179656B2ELL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000018;
    if (a1 != 4)
    {
      v3 = 0x697250646C69772ELL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_100992704@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1009939B8(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_1009927F0()
{
  _StringGuts.grow(_:)(21);
  v1._countAndFlagsBits = 0x3C636E795379654BLL;
  v1._object = 0xE800000000000000;
  String.append(_:)(v1);
  type metadata accessor for UUID();
  sub_100993DE4(&qword_101696930, &type metadata accessor for UUID);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 58;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  v4 = type metadata accessor for KeySyncMetadata();
  sub_1009922D4(*(v0 + v4[5]));
  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = v4[6];
  sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  _print_unlocked<A, B>(_:_:)();
  v7._countAndFlagsBits = 8250;
  v7._object = 0xE200000000000000;
  String.append(_:)(v7);
  v8 = v4[7];
  type metadata accessor for Date();
  sub_100993DE4(&qword_1016969A0, &type metadata accessor for Date);
  v9._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 62;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0;
}

uint64_t sub_1009929C0(void *a1, uint64_t a2, char a3)
{
  v6 = sub_1000BC4D4(&qword_1016AFFE0, &qword_1013CCAC8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009945A4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v16 = a3 & 1;
    v15 = 1;
    sub_10028EAF0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100992B70()
{
  v1 = 0x65636E6575716573;
  if (*v0 != 1)
  {
    v1 = 0x646C69577369;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65756C6156776172;
  }
}

uint64_t sub_100992BC8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10099429C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100992BF0(uint64_t a1)
{
  v2 = sub_1009945A4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100992C2C(uint64_t a1)
{
  v2 = sub_1009945A4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100992C68@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1009943B0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5 & 1;
    *(a2 + 9) = HIBYTE(v5) & 1;
  }

  return result;
}

Swift::Int sub_100992CE4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100992DA4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100992E50()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100992F0C@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100993B88(*a1);
  *a2 = result;
  return result;
}

void sub_100992F3C(unint64_t *a1@<X8>)
{
  v2 = 0xE400000000000000;
  v3 = 1701869940;
  v4 = 0x666E497865646E69;
  v5 = 0xE90000000000006FLL;
  if (*v1 != 2)
  {
    v4 = 0x6D617473656D6974;
    v5 = 0xE900000000000070;
  }

  if (!*v1)
  {
    v3 = 0xD000000000000010;
    v2 = 0x8000000101347590;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v5;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t sub_100992FB8()
{
  v1 = 1701869940;
  v2 = 0x666E497865646E69;
  if (*v0 != 2)
  {
    v2 = 0x6D617473656D6974;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000010;
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

unint64_t sub_100993030@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100993B88(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100993058(uint64_t a1)
{
  v2 = sub_1009939CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100993094(uint64_t a1)
{
  v2 = sub_1009939CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009930D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = type metadata accessor for Date();
  v40 = *(v3 - 8);
  v41 = v3;
  v4 = *(v40 + 64);
  __chkstk_darwin(v3);
  v6 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for UUID();
  v39 = *(v7 - 8);
  v8 = *(v39 + 64);
  __chkstk_darwin(v7);
  v43 = &v36 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = sub_1000BC4D4(&qword_1016AFEC8, &qword_1013CC6D0);
  v42 = *(v44 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v44);
  v12 = &v36 - v11;
  v13 = type metadata accessor for KeySyncMetadata();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v16 = &v36 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009939CC();
  v18 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return sub_100007BAC(a1);
  }

  v37 = v6;
  v51 = a1;
  v20 = v39;
  v19 = v40;
  v21 = v41;
  LOBYTE(v45) = 0;
  sub_100993DE4(&qword_101698300, &type metadata accessor for UUID);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = *(v20 + 32);
  v24 = v43;
  v43 = v7;
  v23(v16, v24, v7);
  LOBYTE(v48) = 1;
  sub_100993A20();
  v25 = v44;
  v26 = v12;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16[*(v13 + 20)] = v45;
  LOBYTE(v45) = 3;
  sub_100993DE4(&qword_101697F40, &type metadata accessor for Date);
  v27 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 32))(&v16[*(v13 + 28)], v27, v21);
  LOBYTE(v45) = 2;
  sub_100993A74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v13;
  v29 = v25;
  v30 = v26;
  v31 = v48;
  if (v49)
  {
    v46 = &type metadata for SecondaryIndex;
    v47 = sub_10022A4D4();
    *&v45 = v31;
    v32 = v38;
    v33 = v51;
    v34 = v42;
  }

  else
  {
    v32 = v38;
    v33 = v51;
    v34 = v42;
    if (v50)
    {
      v46 = &type metadata for PrimaryWildIndex;
      v35 = sub_10022A528();
    }

    else
    {
      v46 = &type metadata for PrimaryIndex;
      v35 = sub_10002A2B8();
    }

    v47 = v35;
    *&v45 = v31;
  }

  (*(v34 + 8))(v30, v29);
  sub_100031694(&v45, &v16[*(v28 + 24)]);
  sub_100993AC8(v16, v32);
  sub_100007BAC(v33);
  return sub_100993B2C(v16);
}

uint64_t sub_10099367C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AFEE8, &qword_1013CC6D8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009939CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = 0;
  type metadata accessor for UUID();
  sub_100993DE4(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for KeySyncMetadata();
    LOBYTE(v15) = *(v3 + v11[5]);
    v17 = 1;
    sub_10077F7F8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_10001F280(v3 + v11[6], &v15);
    v15 = sub_100993BD4(&v15);
    v16 = v12 & 0x101;
    v17 = 2;
    sub_100993D90();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = v11[7];
    LOBYTE(v15) = 3;
    type metadata accessor for Date();
    sub_100993DE4(&unk_101697F60, &type metadata accessor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t type metadata accessor for KeySyncMetadata()
{
  result = qword_1016AFF58;
  if (!qword_1016AFF58)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1009939B8(uint64_t result)
{
  if (result >= 9u)
  {
    return 9;
  }

  else
  {
    return result;
  }
}

unint64_t sub_1009939CC()
{
  result = qword_1016AFED0;
  if (!qword_1016AFED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFED0);
  }

  return result;
}

unint64_t sub_100993A20()
{
  result = qword_1016AFED8;
  if (!qword_1016AFED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFED8);
  }

  return result;
}

unint64_t sub_100993A74()
{
  result = qword_1016AFEE0;
  if (!qword_1016AFEE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFEE0);
  }

  return result;
}

uint64_t sub_100993AC8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for KeySyncMetadata();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100993B2C(uint64_t a1)
{
  v2 = type metadata accessor for KeySyncMetadata();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100993B88(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A618, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100993BD4(uint64_t *a1)
{
  sub_10001F280(a1, v13);
  v2 = sub_1000BC4D4(&qword_1016A5938, &qword_1013B3440);
  if (swift_dynamicCast())
  {
    v3 = a1[4];
    sub_1000035D0(a1, a1[3]);
    v4 = *(v3 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v2 = v12;
    v5 = a1[3];
    v6 = a1[4];
    sub_1000035D0(a1, v5);
    sub_10002BD40(v5, v6);
    sub_100007BAC(v13);
  }

  else
  {
    if ((swift_dynamicCast() & 1) == 0 && !swift_dynamicCast())
    {
      sub_100993E2C();
      swift_allocError();
      swift_willThrow();
      sub_100007BAC(v13);
      sub_100007BAC(a1);
      return v2;
    }

    sub_100007BAC(v13);
    v7 = a1[4];
    sub_1000035D0(a1, a1[3]);
    v8 = *(v7 + 56);
    dispatch thunk of RawRepresentable.rawValue.getter();
    v2 = v13[0];
    v9 = a1[3];
    v10 = a1[4];
    sub_1000035D0(a1, v9);
    sub_10002BD40(v9, v10);
  }

  sub_100007BAC(a1);
  return v2;
}

unint64_t sub_100993D90()
{
  result = qword_1016AFEF0;
  if (!qword_1016AFEF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFEF0);
  }

  return result;
}

uint64_t sub_100993DE4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100993E2C()
{
  result = qword_1016AFEF8;
  if (!qword_1016AFEF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFEF8);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for KeySyncMetadata.IndexInfo(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for KeySyncMetadata.IndexInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for KeySyncMetadata.IndexInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100993F74()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    result = sub_10073AB64();
    if (v2 <= 0x3F)
    {
      result = type metadata accessor for Date();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
        return 0;
      }
    }
  }

  return result;
}

unint64_t sub_10099402C()
{
  result = qword_1016AFF98;
  if (!qword_1016AFF98)
  {
    sub_1000BC580(&qword_1016A9158, &qword_1013BB0E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFF98);
  }

  return result;
}

unint64_t sub_100994094()
{
  result = qword_1016AFFA0;
  if (!qword_1016AFFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFA0);
  }

  return result;
}

unint64_t sub_1009940EC()
{
  result = qword_1016AFFA8;
  if (!qword_1016AFFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFA8);
  }

  return result;
}

unint64_t sub_100994144()
{
  result = qword_1016AFFB0;
  if (!qword_1016AFFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFB0);
  }

  return result;
}

unint64_t sub_10099419C()
{
  result = qword_1016AFFB8;
  if (!qword_1016AFFB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFB8);
  }

  return result;
}

unint64_t sub_1009941F4()
{
  result = qword_1016AFFC0;
  if (!qword_1016AFFC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFC0);
  }

  return result;
}

unint64_t sub_100994248()
{
  result = qword_1016AFFC8;
  if (!qword_1016AFFC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFC8);
  }

  return result;
}

uint64_t sub_10099429C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65756C6156776172 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x646C69577369 && a2 == 0xE600000000000000)
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

uint64_t sub_1009943B0(uint64_t *a1)
{
  v2 = sub_1000BC4D4(&qword_1016AFFD0, &qword_1013CCAC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009945A4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v13 = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v12 = 1;
  sub_10028EA9C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_1009945A4()
{
  result = qword_1016AFFD8;
  if (!qword_1016AFFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFD8);
  }

  return result;
}

unint64_t sub_10099460C()
{
  result = qword_1016AFFE8;
  if (!qword_1016AFFE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFE8);
  }

  return result;
}

unint64_t sub_100994664()
{
  result = qword_1016AFFF0;
  if (!qword_1016AFFF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFF0);
  }

  return result;
}

unint64_t sub_1009946BC()
{
  result = qword_1016AFFF8;
  if (!qword_1016AFFF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AFFF8);
  }

  return result;
}

uint64_t sub_1009947A0()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_100994824(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0150, &qword_1013CCCD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009954D0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for PeerTrustEnvelopeV1(0);
    v12 = (v3 + *(v11 + 20));
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + *(v11 + 24));
    v16 = v15[1];
    v19 = *v15;
    v20 = v16;
    v18[15] = 2;
    sub_100017D5C(v19, v16);
    sub_100313230();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_100016590(v19, v20);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100994A24@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = type metadata accessor for UUID();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4);
  v30 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = sub_1000BC4D4(&qword_1016B0140, &qword_1013CCCC8);
  v28 = *(v31 - 8);
  v7 = *(v28 + 64);
  __chkstk_darwin(v31);
  v9 = &v24 - v8;
  v10 = type metadata accessor for PeerTrustEnvelopeV1(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_1009954D0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v16 = v28;
  v15 = v29;
  v25 = v10;
  v26 = v13;
  LOBYTE(v32) = 0;
  sub_1000096E8(&qword_101698300);
  v18 = v30;
  v17 = v31;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v15 + 32))(v26, v18, v4);
  LOBYTE(v32) = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = &v26[*(v25 + 20)];
  *v20 = v19;
  v20[1] = v21;
  v33 = 2;
  sub_100313070();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v9, v17);
  v22 = v26;
  *&v26[*(v25 + 24)] = v32;
  sub_100995524(v22, v27);
  sub_100007BAC(a1);
  return sub_100995588(v22);
}

uint64_t sub_100994DD0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for UUID();
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&qword_1016B0128, &qword_1013CCCB8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for PeerTrustAckEnvelopeV1(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100995418();
  v16 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v21;
    sub_1000096E8(&qword_101698300);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_10099546C(v14, v20);
  }

  return sub_100007BAC(a1);
}

uint64_t sub_10099503C()
{
  v1 = 0xD000000000000011;
  if (*v0 != 1)
  {
    v1 = 0x6553646572616873;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t sub_1009950A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100995814(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009950D0(uint64_t a1)
{
  v2 = sub_1009954D0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10099510C(uint64_t a1)
{
  v2 = sub_1009954D0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100995194@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_100995224(uint64_t a1)
{
  v2 = sub_100995418();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100995260(uint64_t a1)
{
  v2 = sub_100995418();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009952B4(void *a1)
{
  v2 = sub_1000BC4D4(&qword_1016B0138, &qword_1013CCCC0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100995418();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for UUID();
  sub_1000096E8(&qword_101698330);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

unint64_t sub_100995418()
{
  result = qword_1016B0130;
  if (!qword_1016B0130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0130);
  }

  return result;
}

uint64_t sub_10099546C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustAckEnvelopeV1(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1009954D0()
{
  result = qword_1016B0148;
  if (!qword_1016B0148)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0148);
  }

  return result;
}

uint64_t sub_100995524(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PeerTrustEnvelopeV1(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100995588(uint64_t a1)
{
  v2 = type metadata accessor for PeerTrustEnvelopeV1(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_100995608()
{
  result = qword_1016B0158;
  if (!qword_1016B0158)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0158);
  }

  return result;
}

unint64_t sub_100995660()
{
  result = qword_1016B0160;
  if (!qword_1016B0160)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0160);
  }

  return result;
}

unint64_t sub_1009956B8()
{
  result = qword_1016B0168;
  if (!qword_1016B0168)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0168);
  }

  return result;
}

unint64_t sub_100995710()
{
  result = qword_1016B0170;
  if (!qword_1016B0170)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0170);
  }

  return result;
}

unint64_t sub_100995768()
{
  result = qword_1016B0178;
  if (!qword_1016B0178)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0178);
  }

  return result;
}

unint64_t sub_1009957C0()
{
  result = qword_1016B0180;
  if (!qword_1016B0180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0180);
  }

  return result;
}

uint64_t sub_100995814(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101351030 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6553646572616873 && a2 == 0xEC00000074657263)
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

__n128 sub_100995950@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100995A20(a1, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a2 + 32) = v6[2];
    *(a2 + 48) = v5;
    *(a2 + 64) = v6[4];
    result = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = result;
  }

  return result;
}

unint64_t sub_10099599C(uint64_t a1)
{
  *(a1 + 8) = sub_1009959CC();
  result = sub_100392A9C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1009959CC()
{
  result = qword_1016B0188;
  if (!qword_1016B0188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0188);
  }

  return result;
}

uint64_t sub_100995A20@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v64, v65);
  v6 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  if (v2)
  {
    sub_100007BAC(v64);
    return sub_100007BAC(a1);
  }

  v8 = v6;
  v9 = v7;
  sub_10015049C(v64, v65);
  v10 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v66 = v11;
  sub_10015049C(v64, v65);
  v58 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v59 = v12;
  sub_10015049C(v64, v65);
  v56 = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v57 = v13;
  sub_10015049C(v64, v65);
  result = dispatch thunk of BinaryDecodingContaining.decode(length:)();
  v16 = result;
  v17 = v15;
  v18 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    v22 = v18 == 2;
    v19 = v66;
    v23 = v58;
    v24 = v59;
    if (!v22)
    {
      goto LABEL_74;
    }

    v25 = *(v8 + 16);
    v26 = *(v8 + 24);
    v27 = __OFSUB__(v26, v25);
    v21 = v26 - v25;
    if (v27)
    {
      goto LABEL_66;
    }

    v20 = v10;
  }

  else
  {
    v19 = v66;
    v20 = v10;
    if (v18)
    {
      if (__OFSUB__(HIDWORD(v8), v8))
      {
LABEL_67:
        __break(1u);
        goto LABEL_68;
      }

      v21 = HIDWORD(v8) - v8;
    }

    else
    {
      v21 = BYTE6(v9);
    }

    v23 = v58;
    v24 = v59;
  }

  if (v21 != 32)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  v28 = v19 >> 62;
  if ((v19 >> 62) <= 1)
  {
    if (!v28)
    {
      v20 = BYTE6(v19);
LABEL_24:
      result = v56;
      v29 = v57;
      goto LABEL_25;
    }

LABEL_22:
    v27 = __OFSUB__(HIDWORD(v20), v20);
    LODWORD(v20) = HIDWORD(v20) - v20;
    if (v27)
    {
LABEL_68:
      __break(1u);
      goto LABEL_69;
    }

    v20 = v20;
    goto LABEL_24;
  }

  result = v56;
  v29 = v57;
  if (v28 != 2)
  {
LABEL_75:
    __break(1u);
    goto LABEL_76;
  }

  v32 = v20 + 16;
  v30 = *(v20 + 16);
  v31 = *(v32 + 8);
  v27 = __OFSUB__(v31, v30);
  v20 = v31 - v30;
  if (v27)
  {
    __break(1u);
    goto LABEL_22;
  }

LABEL_25:
  if (v20 != 113)
  {
    goto LABEL_75;
  }

  v33 = v24 >> 62;
  if ((v24 >> 62) <= 1)
  {
    if (!v33)
    {
      v23 = BYTE6(v24);
      goto LABEL_35;
    }

    goto LABEL_33;
  }

  if (v33 != 2)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  v36 = v23 + 16;
  v34 = *(v23 + 16);
  v35 = *(v36 + 8);
  v27 = __OFSUB__(v35, v34);
  v23 = v35 - v34;
  if (v27)
  {
    __break(1u);
LABEL_33:
    v27 = __OFSUB__(HIDWORD(v23), v23);
    LODWORD(v23) = HIDWORD(v23) - v23;
    if (v27)
    {
LABEL_69:
      __break(1u);
      goto LABEL_70;
    }

    v23 = v23;
  }

LABEL_35:
  if (v23 != 32)
  {
    goto LABEL_76;
  }

  v37 = v17 >> 62;
  if ((v17 >> 62) <= 1)
  {
    if (!v37)
    {
      v38 = BYTE6(v17);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  if (v37 != 2)
  {
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  v40 = *(v16 + 16);
  v39 = *(v16 + 24);
  v27 = __OFSUB__(v39, v40);
  v38 = v39 - v40;
  if (v27)
  {
    __break(1u);
LABEL_43:
    LODWORD(v38) = HIDWORD(v16) - v16;
    if (__OFSUB__(HIDWORD(v16), v16))
    {
LABEL_70:
      __break(1u);
      goto LABEL_71;
    }

    v38 = v38;
  }

LABEL_45:
  if (v38 != 1)
  {
    goto LABEL_77;
  }

  v41 = v29 >> 62;
  if ((v29 >> 62) <= 1)
  {
    if (!v41)
    {
      v42 = BYTE6(v29);
      goto LABEL_55;
    }

    goto LABEL_53;
  }

  if (v41 != 2)
  {
    goto LABEL_78;
  }

  v44 = *(result + 16);
  v43 = *(result + 24);
  v27 = __OFSUB__(v43, v44);
  v42 = v43 - v44;
  if (v27)
  {
    __break(1u);
LABEL_53:
    LODWORD(v42) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_71:
      __break(1u);
      goto LABEL_72;
    }

    v42 = v42;
  }

LABEL_55:
  if (v42 == 96)
  {
    v62 = result;
    v63 = v29;
    if (v41 == 2)
    {
      v47 = *(result + 16);
      v46 = *(result + 24);
      v45 = v46 - v47;
      if (__OFSUB__(v46, v47))
      {
LABEL_73:
        __break(1u);
        goto LABEL_74;
      }
    }

    else
    {
      if (v41 != 1)
      {
        v45 = BYTE6(v29);
        goto LABEL_63;
      }

      if (__OFSUB__(HIDWORD(result), result))
      {
LABEL_72:
        __break(1u);
        goto LABEL_73;
      }

      v45 = HIDWORD(result) - result;
    }

    sub_100017D5C(result, v29);
LABEL_63:
    v54 = v17;
    v55 = v16;
    result = 96 - v45;
    if (!__OFSUB__(96, v45))
    {
      v60 = sub_100845C88(result);
      v61 = v48;
      sub_100776394(&v60, 0);
      v49 = v60;
      v50 = v61;
      Data.append(_:)();
      sub_100016590(v56, v57);
      sub_100016590(v49, v50);
      v51 = v62;
      v52 = v63;
      sub_100007BAC(v64);
      result = sub_100007BAC(a1);
      *a2 = v8;
      a2[1] = v9;
      v53 = v66;
      a2[2] = v10;
      a2[3] = v53;
      a2[4] = v58;
      a2[5] = v59;
      a2[6] = v51;
      a2[7] = v52;
      a2[8] = v55;
      a2[9] = v54;
      return result;
    }

    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

LABEL_78:
  __break(1u);
  return result;
}

uint64_t sub_100995E7C(void *a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016B01B8, &qword_1013CD288);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = v11 - v7;
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100996680();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_1000BC4D4(&qword_1016B01A0, &qword_1013CD280);
  sub_100996728(&qword_1016B01C0, sub_1009967A0);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_100996008(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_1000BC4D4(&qword_1016B01F8, &qword_1013CD430);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100996B00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1009961B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73656369766564 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_10099623C(uint64_t a1)
{
  v2 = sub_100996680();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100996278(uint64_t a1)
{
  v2 = sub_100996680();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1009962B4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1009964CC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1009962FC()
{
  if (*v0)
  {
    result = 1684628597;
  }

  else
  {
    result = 0x444955556162;
  }

  *v0;
  return result;
}

uint64_t sub_10099632C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x444955556162 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1684628597 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_100996404(uint64_t a1)
{
  v2 = sub_100996B00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100996440(uint64_t a1)
{
  v2 = sub_100996B00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10099647C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10099691C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

void *sub_1009964CC(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B0190, &qword_1013CD278);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_1000035D0(a1, a1[3]);
  sub_100996680();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100007BAC(a1);
  }

  else
  {
    sub_1000BC4D4(&qword_1016B01A0, &qword_1013CD280);
    sub_100996728(&qword_1016B01A8, sub_1009966D4);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100007BAC(a1);
  }

  return v9;
}

unint64_t sub_100996680()
{
  result = qword_1016B0198;
  if (!qword_1016B0198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0198);
  }

  return result;
}

unint64_t sub_1009966D4()
{
  result = qword_1016B01B0;
  if (!qword_1016B01B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01B0);
  }

  return result;
}

uint64_t sub_100996728(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_1016B01A0, &qword_1013CD280);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1009967A0()
{
  result = qword_1016B01C8;
  if (!qword_1016B01C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01C8);
  }

  return result;
}

unint64_t sub_100996818()
{
  result = qword_1016B01D0;
  if (!qword_1016B01D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01D0);
  }

  return result;
}

unint64_t sub_100996870()
{
  result = qword_1016B01D8;
  if (!qword_1016B01D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01D8);
  }

  return result;
}

unint64_t sub_1009968C8()
{
  result = qword_1016B01E0;
  if (!qword_1016B01E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01E0);
  }

  return result;
}

uint64_t sub_10099691C(uint64_t *a1)
{
  v3 = sub_1000BC4D4(&qword_1016B01E8, &qword_1013CD428);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_100996B00();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100007BAC(a1);
  return v8;
}

unint64_t sub_100996B00()
{
  result = qword_1016B01F0;
  if (!qword_1016B01F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B01F0);
  }

  return result;
}

unint64_t sub_100996B68()
{
  result = qword_1016B0200;
  if (!qword_1016B0200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0200);
  }

  return result;
}

unint64_t sub_100996BC0()
{
  result = qword_1016B0208;
  if (!qword_1016B0208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0208);
  }

  return result;
}

unint64_t sub_100996C18()
{
  result = qword_1016B0210;
  if (!qword_1016B0210)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0210);
  }

  return result;
}

uint64_t sub_100996C7C()
{
  sub_10039722C();
  result = OS_os_log.init(subsystem:category:)();
  qword_10177B770 = result;
  return result;
}

uint64_t sub_100996CE4()
{
  type metadata accessor for XPCActivity();
  sub_10099A6AC();
  v1._countAndFlagsBits = CustomDebugStringConvertible.typeDescription.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 8250;
  v2._object = 0xE200000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = CustomDebugStringConvertible<>.addressDescription.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 23328;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 24));
  v5._countAndFlagsBits = 15965;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  return 60;
}

uint64_t sub_100996DC4(void *a1)
{
  v2 = a1[3];
  v3 = a1[4];
  v4 = String.utf8CString.getter();
  xpc_activity_unregister((v4 + 32));

  v5 = a1[12];
  v6 = a1[13];
  a1[12] = 0;
  a1[13] = 0;
  sub_1000BB27C(v5);
  swift_unknownObjectWeakAssign();
  static os_log_type_t.default.getter();
  if (qword_101694AF0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_101385D80;
  type metadata accessor for XPCActivity();

  v8 = String.init<A>(describing:)();
  v10 = v9;
  *(v7 + 56) = &type metadata for String;
  *(v7 + 64) = sub_100008C00();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_100996F14(_xpc_activity_s *a1)
{
  static os_log_type_t.default.getter();
  if (qword_101694AF0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_101385D80;
  type metadata accessor for XPCActivity();

  v3 = String.init<A>(describing:)();
  v5 = v4;
  *(v2 + 56) = &type metadata for String;
  v6 = sub_100008C00();
  *(v2 + 64) = v6;
  *(v2 + 32) = v3;
  *(v2 + 40) = v5;
  os_log(_:dso:log:_:_:)();

  v7 = *(a1 + 2);
  sub_1000BC4D4(&unk_1016B03C8, &qword_1013CD788);
  OS_dispatch_queue.sync<A>(execute:)();
  if (a1)
  {
    sub_1009979F4(a1);
    return swift_unknownObjectRelease();
  }

  else
  {
    v9 = MEMORY[0x58];
    static os_log_type_t.default.getter();
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10138BBE0;

    v11 = String.init<A>(describing:)();
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = v6;
    *(v10 + 32) = v11;
    *(v10 + 40) = v12;
    v14 = MEMORY[0x18];
    v13 = MEMORY[0x20];
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v6;
    *(v10 + 72) = v14;
    *(v10 + 80) = v13;

    os_log(_:dso:log:_:_:)();
    if (v9 == 1)
    {

      return sub_100997398();
    }

    else
    {
    }
  }
}

BOOL sub_100997210(uint64_t a1, xpc_activity_state_t a2)
{
  v4 = *(v2 + 16);
  sub_1000BC4D4(&unk_1016B03C8, &qword_1013CD788);
  OS_dispatch_queue.sync<A>(execute:)();
  if (activity)
  {
    v5 = xpc_activity_set_state(activity, a2);
    swift_unknownObjectRelease();
  }

  else
  {
    static os_log_type_t.error.getter();
    if (qword_101694AF0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_101385D80;
    type metadata accessor for XPCActivity();

    v7 = String.init<A>(describing:)();
    v9 = v8;
    *(v6 + 56) = &type metadata for String;
    *(v6 + 64) = sub_100008C00();
    *(v6 + 32) = v7;
    *(v6 + 40) = v9;
    os_log(_:dso:log:_:_:)();

    return 0;
  }

  return v5;
}

uint64_t sub_100997398()
{
  if (qword_101694FA8 != -1)
  {
    swift_once();
  }

  aBlock = 0x7365547265646E75;
  v6 = 0xE900000000000074;
  result = SynchronousCache.cachedValue<A>(key:computeBlock:)();
  if ((v11 & 1) == 0)
  {
    v2 = *(v0 + 16);
    v3 = swift_allocObject();
    *(v3 + 16) = sub_10099A628;
    *(v3 + 24) = v0;
    v9 = sub_10040B9F8;
    v10 = v3;
    aBlock = _NSConcreteStackBlock;
    v6 = 1107296256;
    v7 = sub_10013FE14;
    v8 = &unk_101640D88;
    v4 = _Block_copy(&aBlock);

    dispatch_sync(v2, v4);
    _Block_release(v4);
    LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

    if (v2)
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_100997558(void *a1)
{
  v2 = swift_allocObject();
  swift_weakInit();
  v3 = a1[12];
  v4 = a1[13];
  a1[12] = sub_10099A630;
  a1[13] = v2;

  sub_1000BB27C(v3);
  v6 = a1[3];
  v5 = a1[4];
  v10[4] = sub_10099A630;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100997768;
  v10[3] = &unk_101640DD8;
  v7 = _Block_copy(v10);

  v8 = String.utf8CString.getter();
  xpc_activity_register((v8 + 32), XPC_ACTIVITY_CHECK_IN, v7);

  _Block_release(v7);
}

uint64_t sub_100997694()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = type metadata accessor for Transaction();
    __chkstk_darwin(v1);
    static Transaction.named<A>(_:with:)();
  }

  return result;
}

uint64_t sub_100997768(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

uint64_t sub_1009977C8(uint64_t a1, xpc_activity_t activity, uint64_t a3)
{
  state = xpc_activity_get_state(activity);
  v5 = sub_100999F28(state);
  static os_log_type_t.default.getter();
  if (qword_101694AF0 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_10138B360;
  type metadata accessor for XPCActivity();

  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v6 + 56) = &type metadata for String;
  v10 = sub_100008C00();
  *(v6 + 64) = v10;
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  swift_unknownObjectRetain();
  sub_1000BC4D4(&qword_1016B0418, &qword_1013CD7A0);
  v11 = String.init<A>(describing:)();
  *(v6 + 96) = &type metadata for String;
  *(v6 + 104) = v10;
  *(v6 + 72) = v11;
  *(v6 + 80) = v12;
  v13 = String.init<A>(describing:)();
  *(v6 + 136) = &type metadata for String;
  *(v6 + 144) = v10;
  *(v6 + 112) = v13;
  *(v6 + 120) = v14;
  os_log(_:dso:log:_:_:)();

  if (!v5)
  {
    v16 = *(a3 + 40);
    __chkstk_darwin(v15);
    OSAllocatedUnfairLock.callAsFunction<A>(_:)();
    v5 = v5;
  }

  v17 = *(a3 + 72);
  return (*(a3 + 64))(a3, a1, v5);
}

unint64_t sub_1009979F4(_xpc_activity_s *a1)
{
  v2 = v1;
  v3 = a1;
  if (!xpc_activity_copy_criteria(a1))
  {
    goto LABEL_4;
  }

  v4 = swift_unknownObjectRetain();
  sub_100999DA4(v4, &v49);
  if (v49 != 2)
  {
    v55 = v49;
    v56 = v50;
    v57 = v51;
    v20 = *(v1 + 48);
    v21 = *(v1 + 56);
    v20(&v52, &v49);
    if (v52 == 2)
    {
      v22 = *(v2 + 16);
      v3 = swift_allocObject();
      *(v3 + 2) = sub_10099AA50;
      *(v3 + 3) = v2;
      *(&v47 + 1) = sub_10040B9F8;
      v48 = v3;
      aBlock = _NSConcreteStackBlock;
      *&aBlock_8 = 1107296256;
      *(&aBlock_8 + 1) = sub_10013FE14;
      *&v47 = &unk_101640D38;
      v23 = _Block_copy(&aBlock);

      dispatch_sync(v22, v23);
      _Block_release(v23);
      LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();
      swift_unknownObjectRelease();

      if ((v22 & 1) == 0)
      {
        return 6;
      }

      __break(1u);
    }

    else
    {
      aBlock = v52;
      aBlock_8 = v53;
      v47 = v54;
      v24 = sub_100999924(&aBlock, &v55);
      static os_log_type_t.default.getter();
      if (!v24)
      {
        if (qword_101694AF0 != -1)
        {
          swift_once();
        }

        sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
        v32 = swift_allocObject();
        *(v32 + 16) = xmmword_10138BBE0;
        type metadata accessor for XPCActivity();

        v33 = String.init<A>(describing:)();
        v35 = v34;
        *(v32 + 56) = &type metadata for String;
        v36 = sub_100008C00();
        *(v32 + 64) = v36;
        *(v32 + 32) = v33;
        *(v32 + 40) = v35;
        v37 = String.init<A>(describing:)();
        *(v32 + 96) = &type metadata for String;
        *(v32 + 104) = v36;
        *(v32 + 72) = v37;
        *(v32 + 80) = v38;
        os_log(_:dso:log:_:_:)();

        static os_log_type_t.default.getter();
        v39 = swift_allocObject();
        *(v39 + 16) = xmmword_10138BBE0;

        v40 = String.init<A>(describing:)();
        *(v39 + 56) = &type metadata for String;
        *(v39 + 64) = v36;
        *(v39 + 32) = v40;
        *(v39 + 40) = v41;
        v42 = String.init<A>(describing:)();
        *(v39 + 96) = &type metadata for String;
        *(v39 + 104) = v36;
        *(v39 + 72) = v42;
        *(v39 + 80) = v43;
        os_log(_:dso:log:_:_:)();

        sub_10099814C();
        xpc_activity_set_criteria(v3, v44);
        swift_unknownObjectRelease();
        goto LABEL_10;
      }

      if (qword_101694AF0 == -1)
      {
        goto LABEL_16;
      }
    }

    swift_once();
LABEL_16:
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_10138BBE0;
    type metadata accessor for XPCActivity();

    v26 = String.init<A>(describing:)();
    v28 = v27;
    *(v25 + 56) = &type metadata for String;
    v29 = sub_100008C00();
    *(v25 + 64) = v29;
    *(v25 + 32) = v26;
    *(v25 + 40) = v28;
    v30 = String.init<A>(describing:)();
    *(v25 + 96) = &type metadata for String;
    *(v25 + 104) = v29;
    *(v25 + 72) = v30;
    *(v25 + 80) = v31;
    os_log(_:dso:log:_:_:)();

LABEL_10:
    swift_unknownObjectRelease();
    state = xpc_activity_get_state(v3);
    return sub_100999F28(state);
  }

  swift_unknownObjectRelease();
LABEL_4:
  v5 = *(v1 + 48);
  v6 = *(v1 + 56);
  v55 = 2;
  v56 = 0u;
  v57 = 0u;
  v5(&v52, &v55);
  v7 = v52;
  if (v52 != 2)
  {
LABEL_7:
    aBlock = v7;
    aBlock_8 = v53;
    v47 = v54;
    static os_log_type_t.default.getter();
    if (qword_101694AF0 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_10138BBE0;
    type metadata accessor for XPCActivity();

    v11 = String.init<A>(describing:)();
    v13 = v12;
    *(v10 + 56) = &type metadata for String;
    v14 = sub_100008C00();
    *(v10 + 64) = v14;
    *(v10 + 32) = v11;
    *(v10 + 40) = v13;
    v15 = String.init<A>(describing:)();
    *(v10 + 96) = &type metadata for String;
    *(v10 + 104) = v14;
    *(v10 + 72) = v15;
    *(v10 + 80) = v16;
    os_log(_:dso:log:_:_:)();

    sub_10099814C();
    xpc_activity_set_criteria(v3, v17);
    goto LABEL_10;
  }

  v8 = *(v2 + 16);
  v3 = swift_allocObject();
  *(v3 + 2) = sub_10058A7BC;
  *(v3 + 3) = v2;
  *(&v47 + 1) = sub_1000D2FB0;
  v48 = v3;
  aBlock = _NSConcreteStackBlock;
  *&aBlock_8 = 1107296256;
  *(&aBlock_8 + 1) = sub_10013FE14;
  *&v47 = &unk_101640CE8;
  v9 = _Block_copy(&aBlock);

  dispatch_sync(v8, v9);
  _Block_release(v9);
  LOBYTE(v8) = swift_isEscapingClosureAtFileLocation();

  if (v8)
  {
    __break(1u);
    goto LABEL_7;
  }

  return 6;
}

void sub_10099814C()
{
  v1 = xpc_dictionary_create(0, 0, 0);
  v2 = v1;
  v3 = &XPC_ACTIVITY_PRIORITY_MAINTENANCE;
  if (!*v0)
  {
    v3 = &XPC_ACTIVITY_PRIORITY_UTILITY;
  }

  xpc_dictionary_set_string(v1, XPC_ACTIVITY_PRIORITY, *v3);
  v4 = *(v0 + 1);
  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REPEATING, *(v0 + 1));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_DELAY, *(v0 + 8));
  xpc_dictionary_set_int64(v2, XPC_ACTIVITY_GRACE_PERIOD, *(v0 + 16));
  if (v4 == 1)
  {
    xpc_dictionary_set_int64(v2, XPC_ACTIVITY_INTERVAL, *(v0 + 24));
  }

  v5 = *(v0 + 32);
  if (v5)
  {
    if (!XPC_ACTIVITY_POWER_NAP)
    {
      __break(1u);
      goto LABEL_51;
    }

    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_POWER_NAP, 1);
  }

  if ((v5 & 4) == 0)
  {
    goto LABEL_11;
  }

  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY, 1);
LABEL_11:
  if ((v5 & 2) == 0)
  {
    goto LABEL_14;
  }

  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_SHOULD_WAKE_DEVICE, 1);
LABEL_14:
  if ((v5 & 8) == 0)
  {
    goto LABEL_17;
  }

  if (!XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING, 1);
LABEL_17:
  if ((v5 & 0x10) == 0)
  {
    goto LABEL_20;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_A, 1);
LABEL_20:
  if ((v5 & 0x20) == 0)
  {
    goto LABEL_23;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_B, 1);
LABEL_23:
  if ((v5 & 0x40) == 0)
  {
    goto LABEL_26;
  }

  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRES_CLASS_C, 1);
LABEL_26:
  if ((v5 & 0x80) == 0)
  {
    goto LABEL_29;
  }

  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY, 1);
LABEL_29:
  if ((v5 & 0x100) == 0)
  {
    goto LABEL_32;
  }

  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY, 1);
LABEL_32:
  if ((v5 & 0x2000) == 0)
  {
    goto LABEL_35;
  }

  v6 = xpc_dictionary_create(0, 0, 0);
  v7 = String.utf8CString.getter();
  v8 = String.utf8CString.getter();
  xpc_dictionary_set_string(v6, (v7 + 32), (v8 + 32));

  if (!XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  xpc_dictionary_set_value(v2, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA, v6);
  swift_unknownObjectRelease();
LABEL_35:
  if ((v5 & 0x200) != 0)
  {
    xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_ALLOW_BATTERY, 1);
  }

  if ((v5 & 0x400) != 0)
  {
    if (XPC_ACTIVITY_MEMORY_INTENSIVE)
    {
      xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_MEMORY_INTENSIVE, 1);
      goto LABEL_40;
    }

LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

LABEL_40:
  if ((v5 & 0x800) == 0)
  {
    goto LABEL_43;
  }

  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_CPU_INTENSIVE, 1);
LABEL_43:
  if ((v5 & 0x1000) == 0)
  {
    goto LABEL_46;
  }

  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_DISK_INTENSIVE, 1);
LABEL_46:
  if ((v5 & 0x4000) == 0)
  {
    return;
  }

  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
LABEL_63:
    __break(1u);
    return;
  }

  xpc_dictionary_set_BOOL(v2, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE, 1);
}

uint64_t sub_1009984C8()
{
  result = String.init(cString:)();
  qword_1016B0220 = result;
  *algn_1016B0228 = v1;
  return result;
}

uint64_t sub_1009984F8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x616E65746E69616DLL;
  }

  else
  {
    v4 = 0x7974696C697475;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v6 = 0x616E65746E69616DLL;
  }

  else
  {
    v6 = 0x7974696C697475;
  }

  if (*a2)
  {
    v7 = 0xEB0000000065636ELL;
  }

  else
  {
    v7 = 0xE700000000000000;
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

Swift::Int sub_1009985A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100998634()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1009986AC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100998734@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_10160A3A0, *a1);

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

void sub_100998794(uint64_t *a1@<X8>)
{
  v2 = 0x7974696C697475;
  if (*v1)
  {
    v2 = 0x616E65746E69616DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xEB0000000065636ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_10099888C()
{
  if (*v0)
  {
    result = 0x6E65746E69616D2ELL;
  }

  else
  {
    result = 0x7974696C6974752ELL;
  }

  *v0;
  return result;
}

uint64_t sub_100998980(__int16 a1)
{
  if ((a1 & 1) == 0)
  {
    v2 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  v2 = sub_100A5B2CC(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = sub_100A5B2CC((v3 > 1), v4 + 1, 1, v2);
  }

  *(v2 + 2) = v4 + 1;
  v5 = &v2[16 * v4];
  *(v5 + 4) = 0x614E7265776F702ELL;
  *(v5 + 5) = 0xE900000000000070;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100A5B2CC((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0x766544656B61772ELL;
    *(v8 + 5) = 0xEB00000000656369;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v10 = *(v2 + 2);
    v9 = *(v2 + 3);
    if (v10 >= v9 >> 1)
    {
      v2 = sub_100A5B2CC((v9 > 1), v10 + 1, 1, v2);
    }

    *(v2 + 2) = v10 + 1;
    v11 = &v2[16 * v10];
    *(v11 + 4) = 0xD00000000000001ALL;
    *(v11 + 5) = 0x8000000101366FC0;
  }

  if ((a1 & 8) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v13 = *(v2 + 2);
    v12 = *(v2 + 3);
    if (v13 >= v12 >> 1)
    {
      v2 = sub_100A5B2CC((v12 > 1), v13 + 1, 1, v2);
    }

    *(v2 + 2) = v13 + 1;
    v14 = &v2[16 * v13];
    *(v14 + 4) = 0xD000000000000017;
    *(v14 + 5) = 0x8000000101366FA0;
  }

  if ((a1 & 0x10) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100A5B2CC((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x657269757165722ELL;
    *(v17 + 5) = 0xEF417373616C4373;
    if ((a1 & 0x20) == 0)
    {
LABEL_26:
      if ((a1 & 0x40) == 0)
      {
        goto LABEL_27;
      }

      goto LABEL_46;
    }
  }

  else if ((a1 & 0x20) == 0)
  {
    goto LABEL_26;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v19 = *(v2 + 2);
  v18 = *(v2 + 3);
  if (v19 >= v18 >> 1)
  {
    v2 = sub_100A5B2CC((v18 > 1), v19 + 1, 1, v2);
  }

  *(v2 + 2) = v19 + 1;
  v20 = &v2[16 * v19];
  *(v20 + 4) = 0x657269757165722ELL;
  *(v20 + 5) = 0xEF427373616C4373;
  if ((a1 & 0x40) == 0)
  {
LABEL_27:
    if ((a1 & 0x80) == 0)
    {
      goto LABEL_28;
    }

    goto LABEL_51;
  }

LABEL_46:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v22 = *(v2 + 2);
  v21 = *(v2 + 3);
  if (v22 >= v21 >> 1)
  {
    v2 = sub_100A5B2CC((v21 > 1), v22 + 1, 1, v2);
  }

  *(v2 + 2) = v22 + 1;
  v23 = &v2[16 * v22];
  *(v23 + 4) = 0x657269757165722ELL;
  *(v23 + 5) = 0xEF437373616C4373;
  if ((a1 & 0x80) == 0)
  {
LABEL_28:
    if ((a1 & 0x100) == 0)
    {
      goto LABEL_29;
    }

    goto LABEL_56;
  }

LABEL_51:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v25 = *(v2 + 2);
  v24 = *(v2 + 3);
  if (v25 >= v24 >> 1)
  {
    v2 = sub_100A5B2CC((v24 > 1), v25 + 1, 1, v2);
  }

  *(v2 + 2) = v25 + 1;
  v26 = &v2[16 * v25];
  *(v26 + 4) = 0xD000000000000010;
  *(v26 + 5) = 0x8000000101366F80;
  if ((a1 & 0x100) == 0)
  {
LABEL_29:
    if ((a1 & 0x200) == 0)
    {
      goto LABEL_30;
    }

    goto LABEL_61;
  }

LABEL_56:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v28 = *(v2 + 2);
  v27 = *(v2 + 3);
  if (v28 >= v27 >> 1)
  {
    v2 = sub_100A5B2CC((v27 > 1), v28 + 1, 1, v2);
  }

  *(v2 + 2) = v28 + 1;
  v29 = &v2[16 * v28];
  *(v29 + 4) = 0xD00000000000001BLL;
  *(v29 + 5) = 0x8000000101366F60;
  if ((a1 & 0x200) == 0)
  {
LABEL_30:
    if ((a1 & 0x400) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_66;
  }

LABEL_61:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v31 = *(v2 + 2);
  v30 = *(v2 + 3);
  if (v31 >= v30 >> 1)
  {
    v2 = sub_100A5B2CC((v30 > 1), v31 + 1, 1, v2);
  }

  *(v2 + 2) = v31 + 1;
  v32 = &v2[16 * v31];
  strcpy(v32 + 32, ".allowBattery");
  *(v32 + 23) = -4864;
  if ((a1 & 0x400) == 0)
  {
LABEL_31:
    if ((a1 & 0x800) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_71;
  }

LABEL_66:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v34 = *(v2 + 2);
  v33 = *(v2 + 3);
  if (v34 >= v33 >> 1)
  {
    v2 = sub_100A5B2CC((v33 > 1), v34 + 1, 1, v2);
  }

  *(v2 + 2) = v34 + 1;
  v35 = &v2[16 * v34];
  *(v35 + 4) = 0xD000000000000010;
  *(v35 + 5) = 0x8000000101366F40;
  if ((a1 & 0x800) == 0)
  {
LABEL_32:
    if ((a1 & 0x1000) == 0)
    {
      goto LABEL_33;
    }

    goto LABEL_76;
  }

LABEL_71:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v37 = *(v2 + 2);
  v36 = *(v2 + 3);
  if (v37 >= v36 >> 1)
  {
    v2 = sub_100A5B2CC((v36 > 1), v37 + 1, 1, v2);
  }

  *(v2 + 2) = v37 + 1;
  v38 = &v2[16 * v37];
  strcpy(v38 + 32, ".cpuIntensive");
  *(v38 + 23) = -4864;
  if ((a1 & 0x1000) == 0)
  {
LABEL_33:
    if ((a1 & 0x2000) == 0)
    {
      goto LABEL_34;
    }

    goto LABEL_81;
  }

LABEL_76:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v40 = *(v2 + 2);
  v39 = *(v2 + 3);
  if (v40 >= v39 >> 1)
  {
    v2 = sub_100A5B2CC((v39 > 1), v40 + 1, 1, v2);
  }

  *(v2 + 2) = v40 + 1;
  v41 = &v2[16 * v40];
  strcpy(v41 + 32, ".diskIntensive");
  v41[47] = -18;
  if ((a1 & 0x2000) == 0)
  {
LABEL_34:
    if ((a1 & 0x4000) == 0)
    {
      goto LABEL_91;
    }

    goto LABEL_86;
  }

LABEL_81:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
  }

  v43 = *(v2 + 2);
  v42 = *(v2 + 3);
  if (v43 >= v42 >> 1)
  {
    v2 = sub_100A5B2CC((v42 > 1), v43 + 1, 1, v2);
  }

  *(v2 + 2) = v43 + 1;
  v44 = &v2[16 * v43];
  *(v44 + 4) = 0xD000000000000019;
  *(v44 + 5) = 0x8000000101366F20;
  if ((a1 & 0x4000) != 0)
  {
LABEL_86:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100A5B2CC(0, *(v2 + 2) + 1, 1, v2);
    }

    v46 = *(v2 + 2);
    v45 = *(v2 + 3);
    if (v46 >= v45 >> 1)
    {
      v2 = sub_100A5B2CC((v45 > 1), v46 + 1, 1, v2);
    }

    *(v2 + 2) = v46 + 1;
    v47 = &v2[16 * v46];
    *(v47 + 4) = 0xD000000000000012;
    *(v47 + 5) = 0x8000000101366F00;
  }

LABEL_91:
  sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
  sub_10012B138();
  v48 = BidirectionalCollection<>.joined(separator:)();
  v50 = v49;

  v51._countAndFlagsBits = v48;
  v51._object = v50;
  String.append(_:)(v51);

  v52._countAndFlagsBits = 93;
  v52._object = 0xE100000000000000;
  String.append(_:)(v52);
  return 91;
}

uint64_t sub_1009992C8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016B0400, &qword_1013CD798);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10099A484();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v23 = *v3;
  v22 = 0;
  sub_10099A580();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = v3[1];
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 1);
    v20 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = *(v3 + 2);
    v19 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = *(v3 + 3);
    v18 = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = *(v3 + 4);
    v16[15] = 5;
    sub_10099A5D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100999528()
{
  v1 = *v0;
  v2 = 0x797469726F697270;
  v3 = 0x7265506563617267;
  v4 = 0x6C61767265746E69;
  if (v1 != 4)
  {
    v4 = 0x736E6F6974706FLL;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E69746165706572;
  if (v1 != 1)
  {
    v5 = 0x79616C6564;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009995EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100999FEC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100999614(uint64_t a1)
{
  v2 = sub_10099A484();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100999650(uint64_t a1)
{
  v2 = sub_10099A484();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10099968C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10099A1F0(a1, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    *(a2 + 32) = v7;
  }

  return result;
}

BOOL sub_1009996EC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return sub_100999924(v5, v7);
}

uint64_t sub_100999738()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  v3 = *(v0 + 56);

  v4 = *(v0 + 72);

  sub_100477574(v0 + 80);
  v5 = *(v0 + 104);
  sub_1000BB27C(*(v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for XPCActivity()
{
  return objc_opt_self();
}

{
  return type metadata accessor for XPCActivity();
}

uint64_t sub_1009997D4(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[40])
  {
    return (*a1 + 255);
  }

  v3 = *a1;
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100999818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_100999878()
{
  result = qword_1016B03C0;
  if (!qword_1016B03C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03C0);
  }

  return result;
}

uint64_t sub_1009998F0@<X0>(uint64_t *a1@<X8>)
{
  result = swift_unknownObjectWeakLoadStrong();
  *a1 = result;
  return result;
}

BOOL sub_100999924(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == 0;
  if (*a1)
  {
    v5 = 0x616E65746E69616DLL;
  }

  else
  {
    v5 = 0x7974696C697475;
  }

  if (v4)
  {
    v6 = 0xE700000000000000;
  }

  else
  {
    v6 = 0xEB0000000065636ELL;
  }

  if (*a2)
  {
    v7 = 0x616E65746E69616DLL;
  }

  else
  {
    v7 = 0x7974696C697475;
  }

  if (*a2)
  {
    v8 = 0xEB0000000065636ELL;
  }

  else
  {
    v8 = 0xE700000000000000;
  }

  if (v5 == v7 && v6 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (((*(a1 + 1) ^ *(a2 + 1)) & 1) == 0 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24))
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

unint64_t sub_100999A48()
{
  result = qword_1016B03D8;
  if (!qword_1016B03D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03D8);
  }

  return result;
}

uint64_t sub_100999A9C(uint64_t result)
{
  if (!XPC_ACTIVITY_POWER_NAP)
  {
    __break(1u);
    goto LABEL_49;
  }

  v1 = result;
  result = xpc_dictionary_get_BOOL(result, XPC_ACTIVITY_POWER_NAP);
  if (!XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v2 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_SIGNIFICANT_USER_INACTIVITY);
  if (!XPC_ACTIVITY_SHOULD_WAKE_DEVICE)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v3 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_SHOULD_WAKE_DEVICE);
  if (!XPC_ACTIVITY_USES_DUET_POWER_BUDGETING)
  {
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v4 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_USES_DUET_POWER_BUDGETING);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_A)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v5 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_A);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_B)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  v6 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_B);
  if (!XPC_ACTIVITY_REQUIRES_CLASS_C)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  v7 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRES_CLASS_C);
  if (!XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v8 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_NETWORK_CONNECTIVITY);
  if (!XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY)
  {
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v9 = v2;
  if (v3)
  {
    v9 = v2 | 4;
  }

  if (v4)
  {
    v9 |= 2uLL;
  }

  if (v5)
  {
    v9 |= 8uLL;
  }

  if (v6)
  {
    v9 |= 0x10uLL;
  }

  if (v7)
  {
    v9 |= 0x20uLL;
  }

  if (v8)
  {
    v9 |= 0x40uLL;
  }

  if (result)
  {
    v10 = v9 | 0x80;
  }

  else
  {
    v10 = v9;
  }

  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_REQUIRE_INEXPENSIVE_NETWORK_CONNECTIVITY);
  if (result)
  {
    v11 = v10 | 0x100;
  }

  else
  {
    v11 = v10;
  }

  if (!XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA)
  {
    goto LABEL_57;
  }

  v12 = xpc_dictionary_get_dictionary(v1, XPC_ACTIVITY_DUET_ACTIVITY_SCHEDULER_DATA);
  if (v12)
  {
    v13 = v12;
    v14 = String.utf8CString.getter();
    string = xpc_dictionary_get_string(v13, (v14 + 32));

    swift_unknownObjectRelease();
    if (string)
    {
      v11 |= 0x2000uLL;
    }
  }

  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_ALLOW_BATTERY);
  if (!XPC_ACTIVITY_MEMORY_INTENSIVE)
  {
    goto LABEL_58;
  }

  v16 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_MEMORY_INTENSIVE);
  if (!XPC_ACTIVITY_CPU_INTENSIVE)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v17 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_CPU_INTENSIVE);
  if (!XPC_ACTIVITY_DISK_INTENSIVE)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v18 = result;
  result = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_DISK_INTENSIVE);
  if (!XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE)
  {
LABEL_61:
    __break(1u);
    return result;
  }

  v19 = v11 | 0x200;
  if (!v16)
  {
    v19 = v11;
  }

  if (v17)
  {
    v19 |= 0x400uLL;
  }

  if (v18)
  {
    v19 |= 0x800uLL;
  }

  if (result)
  {
    v20 = v19 | 0x1000;
  }

  else
  {
    v20 = v19;
  }

  v21 = xpc_dictionary_get_BOOL(v1, XPC_ACTIVITY_COMMUNICATES_WITH_PAIRED_DEVICE);
  swift_unknownObjectRelease();
  if (v21)
  {
    return v20 | 0x4000;
  }

  else
  {
    return v20;
  }
}

uint64_t sub_100999DA4@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (xpc_dictionary_get_string(a1, XPC_ACTIVITY_PRIORITY))
  {
    v4 = String.init(cString:)();
    if (qword_101694AF8 != -1)
    {
      v16 = v4;
      v17 = v5;
      swift_once();
      v4 = v16;
      v5 = v17;
    }

    if (v4 == qword_1016B0220 && v5 == *algn_1016B0228)
    {

      v8 = 0;
    }

    else
    {
      v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v8 = ~v7 & 1;
    }

    v14 = xpc_dictionary_get_BOOL(a1, XPC_ACTIVITY_REPEATING);
    int64 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_DELAY);
    v10 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_GRACE_PERIOD);
    v11 = xpc_dictionary_get_int64(a1, XPC_ACTIVITY_INTERVAL);
    result = sub_100999A9C(a1);
    v15 = 256;
    if (!v14)
    {
      v15 = 0;
    }

    v13 = v15 | v8;
  }

  else
  {
    swift_unknownObjectRelease();
    int64 = 0;
    v10 = 0;
    v11 = 0;
    result = 0;
    v13 = 2;
  }

  *a2 = v13;
  a2[1] = int64;
  a2[2] = v10;
  a2[3] = v11;
  a2[4] = result;
  return result;
}

unint64_t sub_100999F28(unint64_t result)
{
  if (result >= 6)
  {
    _StringGuts.grow(_:)(38);

    v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v1);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100999FEC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x797469726F697270 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E69746165706572 && a2 == 0xE900000000000067 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7265506563617267 && a2 == 0xEB00000000646F69 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61767265746E69 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x736E6F6974706FLL && a2 == 0xE700000000000000)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_10099A1F0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_1000BC4D4(&qword_1016B03E0, &qword_1013CD790);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10099A484();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100007BAC(a1);
  }

  v25 = 0;
  sub_10099A4D8();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v11 = v26;
  v24 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 2;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 4;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 5;
  sub_10099A52C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v13 = v19;
  result = sub_100007BAC(a1);
  *a2 = v11;
  *(a2 + 1) = v12 & 1;
  v15 = v17;
  *(a2 + 8) = v18;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_10099A484()
{
  result = qword_1016B03E8;
  if (!qword_1016B03E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03E8);
  }

  return result;
}

unint64_t sub_10099A4D8()
{
  result = qword_1016B03F0;
  if (!qword_1016B03F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03F0);
  }

  return result;
}

unint64_t sub_10099A52C()
{
  result = qword_1016B03F8;
  if (!qword_1016B03F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B03F8);
  }

  return result;
}

unint64_t sub_10099A580()
{
  result = qword_1016B0408;
  if (!qword_1016B0408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0408);
  }

  return result;
}

unint64_t sub_10099A5D4()
{
  result = qword_1016B0410;
  if (!qword_1016B0410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0410);
  }

  return result;
}

unint64_t sub_10099A654@<X0>(_BYTE *a1@<X8>)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  swift_unknownObjectWeakAssign();
  *(v4 + 88) = 1;
  result = sub_1009979F4(v3);
  *a1 = result;
  return result;
}

unint64_t sub_10099A6AC()
{
  result = qword_1016B0420;
  if (!qword_1016B0420)
  {
    type metadata accessor for XPCActivity();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0420);
  }

  return result;
}

unint64_t sub_10099A734()
{
  result = qword_1016B0428;
  if (!qword_1016B0428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0428);
  }

  return result;
}

unint64_t sub_10099A78C()
{
  result = qword_1016B0430;
  if (!qword_1016B0430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0430);
  }

  return result;
}

unint64_t sub_10099A7E4()
{
  result = qword_1016B0438;
  if (!qword_1016B0438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0438);
  }

  return result;
}

unint64_t sub_10099A83C()
{
  result = qword_1016B0440;
  if (!qword_1016B0440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0440);
  }

  return result;
}

unint64_t sub_10099A894()
{
  result = qword_1016B0448;
  if (!qword_1016B0448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0448);
  }

  return result;
}

unint64_t sub_10099A8EC()
{
  result = qword_1016B0450;
  if (!qword_1016B0450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0450);
  }

  return result;
}

unint64_t sub_10099A944()
{
  result = qword_1016B0458;
  if (!qword_1016B0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0458);
  }

  return result;
}

unint64_t sub_10099A99C()
{
  result = qword_1016B0460;
  if (!qword_1016B0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0460);
  }

  return result;
}

unint64_t sub_10099A9F0()
{
  result = qword_1016B0468;
  if (!qword_1016B0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0468);
  }

  return result;
}

uint64_t type metadata accessor for BookmarkMetaData()
{
  result = qword_1016B04D8;
  if (!qword_1016B04D8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10099AAEC()
{
  sub_1008848D8();
  if (v0 <= 0x3F)
  {
    sub_10099AB78();
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10099AB78()
{
  if (!qword_1016B04E8)
  {
    type metadata accessor for KeyDropInterface.KeyAlignment(255);
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1016B04E8);
    }
  }
}

__n128 sub_10099ABD0@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v61 = 0u;
  if (static Task<>.isCancelled.getter())
  {
    v11 = 0;
    v10 = 0;
    v6 = 0xF000000000000000;
    v24 = 0uLL;
    v25 = 0uLL;
  }

  else
  {
    v4 = *(v1 + 16);
    v5 = *(v1 + 48);
    v68[2] = *(v1 + 32);
    v68[3] = v5;
    v69 = *(v1 + 64);
    v6 = v69;
    v68[0] = *v1;
    v68[1] = v4;
    v8 = *v1;
    v7 = *(v1 + 8);
    v55 = *(v1 + 24);
    v57 = *(v1 + 16);
    v9 = *(v1 + 56);
    v53 = (v1 + 56);
    v10 = *(&v5 + 1);
    v11 = v5;
    sub_100429C24(v68, &v62);
    sub_100017D5C(v10, v6);
    sub_100017D5C(v9, v6);
    if (qword_101694FA8 != -1)
    {
      swift_once();
    }

    v62 = 0x7365547265646E75;
    v63 = 0xE900000000000074;
    SynchronousCache.cachedValue<A>(key:computeBlock:)();
    v51 = v8;
    v52 = v7;
    v12 = sub_100A7563C(v9, v6, 1);
    v14 = v13;
    v15 = String.utf8Data.getter();
    v17 = v16;
    v18 = sub_100A79CBC(v12, v14, v15, v16, 72);
    v49 = v12;
    v50 = v14;
    sub_100495DF4(v18, v19, &v62);
    sub_100016590(v15, v17);
    v20 = v62;
    v21 = v63;
    if (v52 >> 60 == 15)
    {
      sub_100017D5C(v62, v63);
      v22 = sub_100A7A194(v57, v55);
      v27 = sub_100A7A73C(v22, 0, v20, v21);
      CCECCryptorRelease();
      sub_100016590(v20, v21);
      v28 = sub_100A7829C(v27, 0);
      v56 = v20;
      v30 = v29;
      sub_100017D5C(v28, v29);
      v58 = v30;
      v34 = sub_10049C0AC(v28, v30);
      v45 = v35;
      CCECCryptorRelease();
      sub_100016590(v28, v58);
      v36 = v51;
      v37 = v52;
    }

    else
    {
      sub_1002DBC68(v51, v52);
      sub_100017D5C(v20, v21);
      v23 = sub_100A7A194(v51, v52);
      v31 = sub_100A7A73C(v23, 1, v20, v21);
      CCECCryptorRelease();
      sub_100016590(v20, v21);
      v32 = sub_100A7829C(v31, 1);
      v59 = v33;
      v46 = sub_100A7829C(v31, 0);
      v44 = v39;
      sub_100017D5C(v32, v59);
      v42 = sub_10049BD68(v32, v59);
      v43 = v40;
      sub_100017D5C(v46, v44);
      v48 = sub_10049C0AC(v46, v44);
      v45 = v41;
      v56 = v20;
      CCECCryptorRelease();
      sub_100016590(v46, v44);
      sub_100016590(v32, v59);
      sub_100006654(v51, v52);
      v34 = v48;
      v36 = v42;
      v37 = v43;
    }

    v47 = v34;
    v62 = v36;
    v63 = v37;
    v64 = v34;
    v65 = v45;
    v66 = v49;
    v67 = v50;
    v38 = v36;
    sub_10099B218(&v62, (v2 + 48), v53, v70);
    v60 = v70[1];
    v61 = v70[0];
    v54 = v70[2];
    sub_100006654(v38, v37);
    sub_100016590(v47, v45);
    sub_100016590(v49, v50);
    sub_100016590(v56, v21);
    sub_100429C80(v68);
    sub_100016590(v9, v6);
    v25 = v54;
    v24 = v60;
  }

  *a1 = v11;
  *(a1 + 8) = v10;
  *(a1 + 16) = v6;
  result = v61;
  *(a1 + 24) = v61;
  *(a1 + 40) = v24;
  *(a1 + 56) = v25;
  return result;
}

uint64_t sub_10099B218@<X0>(uint64_t result@<X0>, void *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a2 == -1)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    ++*a2;
    v21 = *(result + 32);
    v7 = *a3;
    v8 = a3[1];
    *a3 = v21;
    sub_10012BFDC(&v21, &v20);
    sub_100016590(v7, v8);
    v9 = String.utf8Data.getter();
    v11 = v10;
    v12 = sub_100A79CBC(v21, *(&v21 + 1), v9, v10, 32);
    if (v4)
    {
      return sub_100016590(v9, v11);
    }

    else
    {
      sub_1004A4714(v12, v13, &v20);
      sub_100016590(v9, v11);
      v19 = v20;
      v14 = v6[2];
      v15 = v6[3];
      v17 = *v6;
      v16 = v6[1];
      sub_100017D5C(v14, v15);
      result = sub_1002DBC68(v17, v16);
      *&v18 = v14;
      *(&v18 + 1) = v15;
      *(a4 + 16) = v18;
      *a4 = v19;
      *(a4 + 32) = v17;
      *(a4 + 40) = v16;
    }
  }

  return result;
}

__n128 sub_10099B358@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 48);
  *(a1 + 32) = *(v1 + 32);
  *(a1 + 48) = v2;
  *(a1 + 64) = *(v1 + 64);
  result = *(v1 + 16);
  *a1 = *v1;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_10099B374(uint64_t a1)
{
  v9 = v1;
  sub_10099ABD0(v7);
  v3 = v7[3];
  *(a1 + 32) = v7[2];
  *(a1 + 48) = v3;
  *(a1 + 64) = v8;
  v4 = v7[1];
  *a1 = v7[0];
  *(a1 + 16) = v4;
  v5 = *(v1 + 8);

  return v5();
}

uint64_t sub_10099B404(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_10099B4D0;

  return (sub_100864B9C)(a1, a2, a3, v3 + 16);
}

uint64_t sub_10099B4D0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10099B5CC@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, unint64_t a10, unint64_t a11)
{
  v11 = a8;
  v51 = a2;
  if (!a11)
  {
    sub_10099BA60();
    swift_allocError();
    swift_willThrow();
    sub_100429C08(a7, v11, a10);
    sub_100016590(a5, a6);
    sub_100016590(a3, a4);
    return sub_100006654(a1, v51);
  }

  if (a10 >> 60 == 15)
  {
    v17 = a8;
    sub_100017D5C(a5, a6);
    v11 = a5;
    v18 = a6;
    v19 = a11;
  }

  else
  {
    v19 = a11 - a7;
    if (a11 >= a7)
    {
      sub_100017D5C(a8, a10);
      sub_100017D5C(v11, a10);
      if (qword_101695010 != -1)
      {
        swift_once();
      }

      v27 = type metadata accessor for Logger();
      sub_1000076D4(v27, qword_10177C348);
      sub_100017D5C(v11, a10);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = swift_slowAlloc();
        *v30 = 134218240;
        sub_100429C08(a7, v11, a10);
        *(v30 + 4) = a7;
        result = sub_100429C08(a7, v11, a10);
        *(v30 + 12) = 2048;
        if (a11 < v19)
        {
          __break(1u);
          return result;
        }

        *(v30 + 14) = a11 - v19;
        _os_log_impl(&_mh_execute_header, v28, v29, "KeyGenerationHint hint.index:%llu saved %llu ratchet iterations", v30, 0x16u);
      }

      else
      {
        sub_100429C08(a7, v11, a10);
        sub_100429C08(a7, v11, a10);
      }

      v17 = v11;
      v18 = a10;
    }

    else
    {
      sub_100017D5C(a8, a10);
      if (qword_101695010 != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      sub_1000076D4(v22, qword_10177C348);
      sub_100017D5C(v11, a10);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        *v25 = 134218240;
        v26 = a7;
        *(v25 + 4) = a7;
        sub_100429C08(a7, v11, a10);
        *(v25 + 12) = 2048;
        *(v25 + 14) = a11;
        _os_log_impl(&_mh_execute_header, v23, v24, "Ignoring KeyGenerationHint: hint.index (%llu) > initialRatchetsToSkip(%llu)", v25, 0x16u);
      }

      else
      {
        v26 = a7;
        sub_100429C08(a7, v11, a10);
      }

      v17 = v11;
      sub_100429C08(v26, v11, a10);
      v19 = a11 - 1;
      sub_100017D5C(a5, a6);
      v11 = a5;
      v18 = a6;
    }
  }

  v31 = sub_100A7563C(v11, v18, v19);
  if (v38)
  {
    sub_100429C08(a7, v17, a10);
    sub_100006654(a1, v51);
    sub_100016590(a3, a4);
    sub_100016590(a5, a6);
    return sub_100016590(v11, v18);
  }

  else
  {
    v33 = v31;
    v34 = v32;
    sub_100429C08(a7, v17, a10);
    sub_100016590(v11, v18);
    *&v45 = a1;
    *(&v45 + 1) = v51;
    *&v46 = a3;
    *(&v46 + 1) = a4;
    *&v47 = a5;
    *(&v47 + 1) = a6;
    *&v48 = a11;
    *(&v48 + 1) = v33;
    v49 = v34;
    v50[0] = a1;
    v50[1] = v51;
    v50[2] = a3;
    v50[3] = a4;
    v50[4] = a5;
    v50[5] = a6;
    v50[6] = a11;
    v50[7] = v33;
    v50[8] = v34;
    sub_100429C24(&v45, v44);
    result = sub_100429C80(v50);
    v35 = v48;
    *(a9 + 32) = v47;
    *(a9 + 48) = v35;
    *(a9 + 64) = v49;
    v36 = v46;
    *a9 = v45;
    *(a9 + 16) = v36;
  }

  return result;
}

unint64_t sub_10099BA60()
{
  result = qword_1016B0520;
  if (!qword_1016B0520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0520);
  }

  return result;
}

uint64_t sub_10099BAB4(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10099BADC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 72))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 24) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 24) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_10099BB30(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

unint64_t sub_10099BBA4()
{
  result = qword_1016B0528;
  if (!qword_1016B0528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0528);
  }

  return result;
}

unint64_t sub_10099BC0C()
{
  result = qword_1016B0530;
  if (!qword_1016B0530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0530);
  }

  return result;
}

ValueMetadata *sub_10099BC6C(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v1 = &type metadata for AirPodsSWPairingCompleteCommandPayload;
        sub_100391A98();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsMCFinalizePairingCommandPayload;
      sub_1009A1FAC();
    }

    else
    {
      v1 = &type metadata for AirPodsMCSendPairingStatusCommandPayload;
      sub_1009A1F58();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      sub_100391B40();
    }

    else
    {
      v1 = &type metadata for AirPodsLESendPairingDataCommandPayload;
      sub_1009A00A4();
    }
  }

  else if (a1)
  {
    v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
    sub_100391B94();
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

ValueMetadata *sub_10099BD44(unsigned __int8 a1)
{
  if (a1 > 3u)
  {
    if (a1 > 5u)
    {
      if (a1 == 6)
      {
        v1 = &type metadata for AirPodsPairingCompleteCommandPayload;
        sub_1009A0048();
      }

      else
      {
        v1 = &type metadata for UnpairCommandPayload;
        sub_10027EE90();
      }
    }

    else if (a1 == 4)
    {
      v1 = &type metadata for AirPodsLEFinalizePairingCommandPayload;
      sub_10099FFE8();
    }

    else
    {
      v1 = &type metadata for AirPodsLESendPairingStatusCommandPayload;
      sub_1009A00FC();
    }
  }

  else if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v1 = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      sub_100391B40();
    }

    else
    {
      v1 = &type metadata for AirPodsLESendPairingDataCommandPayload;
      sub_1009A00A4();
    }
  }

  else if (a1)
  {
    v1 = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
    sub_100391B94();
  }

  else
  {
    v1 = &type metadata for AccessoryGenericPayload;
    sub_10030FF74();
  }

  return v1;
}

uint64_t sub_10099BE5C@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, void (*a3)(_OWORD *__return_ptr, uint64_t, _WORD *)@<X2>, uint64_t a4@<X8>)
{
  v41 = a2;
  v42 = a3;
  v40 = a4;
  v6 = type metadata accessor for Endianness();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v11 = a1[4];
  v43 = a1;
  sub_1000035D0(a1, v12);
  dispatch thunk of BinaryDecoding.container()();
  sub_10015049C(v48, v48[3]);
  sub_1002053B0();
  dispatch thunk of BinaryDecodingContaining.decode<A>(_:)();
  if (v4)
  {
    v13 = v43;
  }

  else
  {
    v14 = v41;
    v15 = v42;
    v49 = v46[0];
    static Endianness.current.getter();
    FixedWidthInteger.convert(to:)();
    (*(v7 + 8))(v10, v6);
    v16 = v47[0];
    v17 = sub_100391628(v47[0]);
    if (v17 == 8)
    {
      static os_log_type_t.error.getter();
      v13 = v43;
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_101385D80;
      LOWORD(v47[0]) = v16;
      v19 = FixedWidthInteger.data.getter();
      v21 = v20;
      v22 = Data.hexString.getter();
      v24 = v23;
      sub_100016590(v19, v21);
      *(v18 + 56) = &type metadata for String;
      *(v18 + 64) = sub_100008C00();
      *(v18 + 32) = v22;
      *(v18 + 40) = v24;
      os_log(_:dso:log:_:_:)();

      sub_1009A022C();
      swift_allocError();
      *v25 = 1;
      swift_willThrow();
    }

    else
    {
      v26 = v17;
      v27 = v14();
      v29 = v28;
      v13 = v43;
      sub_10001F280(v43, v46);
      v47[3] = v27;
      v47[4] = v29;
      sub_1000280DC(v47);
      v30 = *(v29 + 8);
      dispatch thunk of BinaryDecodable.init(from:)();
      sub_10001F280(v47, v46);
      v15(v44, v26, v46);
      v31 = v44[11];
      v32 = v40;
      *(v40 + 160) = v44[10];
      *(v32 + 176) = v31;
      *(v32 + 192) = v44[12];
      *(v32 + 208) = v45;
      v33 = v44[7];
      *(v32 + 96) = v44[6];
      *(v32 + 112) = v33;
      v34 = v44[9];
      *(v32 + 128) = v44[8];
      *(v32 + 144) = v34;
      v35 = v44[3];
      *(v32 + 32) = v44[2];
      *(v32 + 48) = v35;
      v36 = v44[5];
      *(v32 + 64) = v44[4];
      *(v32 + 80) = v36;
      v37 = v44[1];
      *v32 = v44[0];
      *(v32 + 16) = v37;
      sub_100007BAC(v47);
    }
  }

  sub_100007BAC(v48);
  return sub_100007BAC(v13);
}

void sub_10099C228(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10099BC6C(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 <= 3u)
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          sub_10001F280(a2, &v48);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v33) = 0;
            sub_1001DACD4(&v62);
LABEL_23:
            v9 = v73;
            *(a3 + 160) = v72;
            *(a3 + 176) = v9;
            *(a3 + 192) = v74;
            *(a3 + 208) = v75;
            v10 = v69;
            *(a3 + 96) = v68;
            *(a3 + 112) = v10;
            v11 = v71;
            *(a3 + 128) = v70;
            *(a3 + 144) = v11;
            v12 = v65;
            *(a3 + 32) = v64;
            *(a3 + 48) = v12;
            v13 = v67;
            *(a3 + 64) = v66;
            *(a3 + 80) = v13;
            v14 = v63;
            *a3 = v62;
            *(a3 + 16) = v14;
            return;
          }

          goto LABEL_36;
        }

        sub_10001F280(a2, &v33);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v19;
          v49 = v20;
          sub_1009A1EBC(&v48);
          goto LABEL_21;
        }

        v19 = xmmword_10138BBF0;
        v20 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_36:
        sub_1009A022C();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
        sub_100007BAC(a2);
        return;
      }

      if (a1 != 2)
      {
        sub_10001F280(a2, v47);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          SharingCircleWildAdvertisementKey.init(key:)(&v48);
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = v61;
          v39 = v54;
          v40 = v55;
          v41 = v56;
          v42 = v57;
          v35 = v50;
          v36 = v51;
          v37 = v52;
          v38 = v53;
          v33 = v48;
          v34 = v49;
          sub_1009A1E1C(&v33);
          v72 = v43;
          v73 = v44;
          v74 = v45;
          v75 = v46;
          v68 = v39;
          v69 = v40;
          v70 = v41;
          v71 = v42;
          v64 = v35;
          v65 = v36;
          v66 = v37;
          v67 = v38;
          v7 = v33;
          v8 = v34;
          goto LABEL_22;
        }

        sub_1009A02D4(&v19);
        v58 = v29;
        v59 = v30;
        v60 = v31;
        v54 = v25;
        v55 = v26;
        v56 = v27;
        v57 = v28;
        v50 = v21;
        v51 = v22;
        v52 = v23;
        v53 = v24;
        v48 = v19;
        v49 = v20;
        v43 = v29;
        v44 = v30;
        v45 = v31;
        v39 = v25;
        v40 = v26;
        v41 = v27;
        v42 = v28;
        v35 = v21;
        v36 = v22;
        v37 = v23;
        v38 = v24;
        v61 = v32;
        v46 = v32;
        v33 = v19;
        v34 = v20;
        v15 = &unk_1016B06F8;
        v16 = &unk_1013CDFB0;
        v17 = &v33;
        goto LABEL_35;
      }

      sub_10001F280(a2, &v19);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v50 = v35;
        v51 = v36;
        v52 = v37;
        v48 = v33;
        v49 = v34;
        sub_1001DAAA0(&v48);
        goto LABEL_21;
      }

      v33 = xmmword_10138BBF0;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v48 = xmmword_10138BBF0;
      v49 = 0u;
      v15 = &unk_1016B0700;
      v16 = &unk_1013CDFB8;
LABEL_33:
      v17 = &v48;
LABEL_35:
      sub_10000B3A8(v17, v15, v16);
      goto LABEL_36;
    }

    if (a1 > 5u)
    {
      if (a1 != 6)
      {
        sub_10001F280(a2, &v48);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          LOBYTE(v33) = 0;
          sub_1001DA870(&v62);
          goto LABEL_23;
        }

        goto LABEL_36;
      }

      sub_10001F280(a2, &v33);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v19 = xmmword_10138BBF0;
        sub_100006654(0, 0xF000000000000000);
        goto LABEL_36;
      }

      sub_100007BAC(a2);
      v48 = v19;
      sub_1009A1D78(&v48);
    }

    else
    {
      if (a1 != 4)
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v33;
          v49 = v34;
          v50 = v35;
          v51 = v36;
          sub_1001DA3BC(&v48);
          goto LABEL_21;
        }

        v33 = xmmword_10138BBF0;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = xmmword_10138BBF0;
        v49 = 0u;
        v15 = &unk_1016B0738;
        v16 = &unk_1013CDFE8;
        goto LABEL_33;
      }

      sub_10001F280(a2, v47);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        sub_100080B6C(&v19);
        v41 = v27;
        v42 = v28;
        v43 = v29;
        v44 = v30;
        v37 = v23;
        v38 = v24;
        v39 = v25;
        v40 = v26;
        v33 = v19;
        v34 = v20;
        v35 = v21;
        v36 = v22;
        v56 = v27;
        v57 = v28;
        v58 = v29;
        v59 = v30;
        v52 = v23;
        v53 = v24;
        v54 = v25;
        v55 = v26;
        v48 = v19;
        v49 = v20;
        v50 = v21;
        v51 = v22;
        v15 = &unk_1016B0740;
        v16 = &unk_1013CDFF0;
        goto LABEL_33;
      }

      sub_100007BAC(a2);
      SharingCircleWildAdvertisementKey.init(key:)(&v33);
      v56 = v41;
      v57 = v42;
      v58 = v43;
      v59 = v44;
      v52 = v37;
      v53 = v38;
      v54 = v39;
      v55 = v40;
      v48 = v33;
      v49 = v34;
      v50 = v35;
      v51 = v36;
      sub_1001DA318(&v48);
    }

LABEL_21:
    v72 = v58;
    v73 = v59;
    v74 = v60;
    v75 = v61;
    v68 = v54;
    v69 = v55;
    v70 = v56;
    v71 = v57;
    v64 = v50;
    v65 = v51;
    v66 = v52;
    v67 = v53;
    v7 = v48;
    v8 = v49;
LABEL_22:
    v62 = v7;
    v63 = v8;
    goto LABEL_23;
  }

  __break(1u);
}

void sub_10099C910(unsigned __int8 a1@<W0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_10099BD44(a1);
  sub_1000035D0(a2, a2[3]);
  if (v6 == swift_getDynamicType())
  {
    if (a1 > 3u)
    {
      if (a1 > 5u)
      {
        if (a1 == 6)
        {
          sub_10001F280(a2, &v48);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v33) = 0;
            sub_1004132E4(&v62);
            goto LABEL_23;
          }
        }

        else
        {
          sub_10001F280(a2, &v48);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v33) = 0;
            sub_1009A0280(&v62);
            goto LABEL_23;
          }
        }

        goto LABEL_35;
      }

      if (a1 == 4)
      {
        sub_10001F280(a2, v47);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          SharingCircleWildAdvertisementKey.init(key:)(&v33);
          v56 = v41;
          v57 = v42;
          v58 = v43;
          v59 = v44;
          v52 = v37;
          v53 = v38;
          v54 = v39;
          v55 = v40;
          v48 = v33;
          v49 = v34;
          v50 = v35;
          v51 = v36;
          sub_1001DA318(&v48);
LABEL_21:
          v72 = v58;
          v73 = v59;
          v74 = v60;
          v75 = v61;
          v68 = v54;
          v69 = v55;
          v70 = v56;
          v71 = v57;
          v64 = v50;
          v65 = v51;
          v66 = v52;
          v67 = v53;
          v7 = v48;
          v8 = v49;
LABEL_22:
          v62 = v7;
          v63 = v8;
          goto LABEL_23;
        }

        sub_100080B6C(&v19);
        v41 = v27;
        v42 = v28;
        v43 = v29;
        v44 = v30;
        v37 = v23;
        v38 = v24;
        v39 = v25;
        v40 = v26;
        v33 = v19;
        v34 = v20;
        v35 = v21;
        v36 = v22;
        v56 = v27;
        v57 = v28;
        v58 = v29;
        v59 = v30;
        v52 = v23;
        v53 = v24;
        v54 = v25;
        v55 = v26;
        v48 = v19;
        v49 = v20;
        v50 = v21;
        v51 = v22;
        v15 = &unk_1016B06F0;
        v16 = &unk_1013CDFA8;
      }

      else
      {
        sub_10001F280(a2, &v19);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v33;
          v49 = v34;
          v50 = v35;
          v51 = v36;
          sub_1001DA3BC(&v48);
          goto LABEL_21;
        }

        v33 = xmmword_10138BBF0;
        v34 = 0u;
        v35 = 0u;
        v36 = 0u;
        v50 = 0u;
        v51 = 0u;
        v48 = xmmword_10138BBF0;
        v49 = 0u;
        v15 = &unk_1016B06E8;
        v16 = &unk_1013CDFA0;
      }
    }

    else
    {
      if (a1 <= 1u)
      {
        if (!a1)
        {
          sub_10001F280(a2, &v48);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            sub_100007BAC(a2);
            LOBYTE(v33) = 0;
            sub_10041338C(&v62);
LABEL_23:
            v9 = v73;
            *(a3 + 160) = v72;
            *(a3 + 176) = v9;
            *(a3 + 192) = v74;
            *(a3 + 208) = v75;
            v10 = v69;
            *(a3 + 96) = v68;
            *(a3 + 112) = v10;
            v11 = v71;
            *(a3 + 128) = v70;
            *(a3 + 144) = v11;
            v12 = v65;
            *(a3 + 32) = v64;
            *(a3 + 48) = v12;
            v13 = v67;
            *(a3 + 64) = v66;
            *(a3 + 80) = v13;
            v14 = v63;
            *a3 = v62;
            *(a3 + 16) = v14;
            return;
          }

          goto LABEL_35;
        }

        sub_10001F280(a2, &v33);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          v48 = v19;
          v49 = v20;
          sub_1009A1EBC(&v48);
          goto LABEL_21;
        }

        v19 = xmmword_10138BBF0;
        v20 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_35:
        sub_1009A022C();
        swift_allocError();
        *v18 = 0;
        swift_willThrow();
        sub_100007BAC(a2);
        return;
      }

      if (a1 != 2)
      {
        sub_10001F280(a2, v47);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          sub_100007BAC(a2);
          SharingCircleWildAdvertisementKey.init(key:)(&v48);
          v43 = v58;
          v44 = v59;
          v45 = v60;
          v46 = v61;
          v39 = v54;
          v40 = v55;
          v41 = v56;
          v42 = v57;
          v35 = v50;
          v36 = v51;
          v37 = v52;
          v38 = v53;
          v33 = v48;
          v34 = v49;
          sub_1009A1E1C(&v33);
          v72 = v43;
          v73 = v44;
          v74 = v45;
          v75 = v46;
          v68 = v39;
          v69 = v40;
          v70 = v41;
          v71 = v42;
          v64 = v35;
          v65 = v36;
          v66 = v37;
          v67 = v38;
          v7 = v33;
          v8 = v34;
          goto LABEL_22;
        }

        sub_1009A02D4(&v19);
        v58 = v29;
        v59 = v30;
        v60 = v31;
        v54 = v25;
        v55 = v26;
        v56 = v27;
        v57 = v28;
        v50 = v21;
        v51 = v22;
        v52 = v23;
        v53 = v24;
        v48 = v19;
        v49 = v20;
        v43 = v29;
        v44 = v30;
        v45 = v31;
        v39 = v25;
        v40 = v26;
        v41 = v27;
        v42 = v28;
        v35 = v21;
        v36 = v22;
        v37 = v23;
        v38 = v24;
        v61 = v32;
        v46 = v32;
        v33 = v19;
        v34 = v20;
        v15 = &unk_1016B06F8;
        v16 = &unk_1013CDFB0;
        v17 = &v33;
        goto LABEL_34;
      }

      sub_10001F280(a2, &v19);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        sub_100007BAC(a2);
        v50 = v35;
        v51 = v36;
        v52 = v37;
        v48 = v33;
        v49 = v34;
        sub_1001DAAA0(&v48);
        goto LABEL_21;
      }

      v33 = xmmword_10138BBF0;
      v34 = 0u;
      v35 = 0u;
      v36 = 0u;
      v37 = 0u;
      v50 = 0u;
      v51 = 0u;
      v52 = 0u;
      v48 = xmmword_10138BBF0;
      v49 = 0u;
      v15 = &unk_1016B0700;
      v16 = &unk_1013CDFB8;
    }

    v17 = &v48;
LABEL_34:
    sub_10000B3A8(v17, v15, v16);
    goto LABEL_35;
  }

  __break(1u);
}

uint64_t sub_10099CFD0(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v10 = *(v2 + 176);
  v93[10] = *(v2 + 160);
  v93[11] = v10;
  v93[12] = *(v2 + 192);
  v94 = *(v2 + 208);
  v11 = *(v2 + 112);
  v93[6] = *(v2 + 96);
  v93[7] = v11;
  v12 = *(v2 + 144);
  v93[8] = *(v2 + 128);
  v93[9] = v12;
  v13 = *(v2 + 48);
  v93[2] = *(v2 + 32);
  v93[3] = v13;
  v14 = *(v2 + 80);
  v93[4] = *(v2 + 64);
  v93[5] = v14;
  v15 = *(v2 + 16);
  v93[0] = *v2;
  v93[1] = v15;
  v16 = sub_1009A0304(v93);
  if (v16 > 3)
  {
    if (v16 > 5)
    {
      if (v16 == 6)
      {
        v17 = 260;
      }

      else
      {
        v17 = 516;
      }
    }

    else if (v16 == 4)
    {
      sub_10004CA28(v93);
      v17 = 259;
    }

    else
    {
      v17 = 267;
    }
  }

  else if (v16 > 1)
  {
    if (v16 == 2)
    {
      sub_10004CA28(v93);
      v17 = 257;
    }

    else
    {
      sub_10004CA28(v93);
      v17 = 258;
    }
  }

  else if (v16)
  {
    sub_10004CA28(v93);
    v17 = 256;
  }

  else
  {
    sub_10004CA28(v93);
    v17 = 268;
  }

  LOWORD(v60) = v17;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v5 + 8))(v8, v4);
  LOWORD(v60) = v74;
  sub_10015049C(v89, v90);
  v18 = v95;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v18)
  {
    v19 = *(v2 + 176);
    v91[10] = *(v2 + 160);
    v91[11] = v19;
    v91[12] = *(v2 + 192);
    v92 = *(v2 + 208);
    v20 = *(v2 + 112);
    v91[6] = *(v2 + 96);
    v91[7] = v20;
    v21 = *(v2 + 144);
    v91[8] = *(v2 + 128);
    v91[9] = v21;
    v22 = *(v2 + 48);
    v91[2] = *(v2 + 32);
    v91[3] = v22;
    v23 = *(v2 + 80);
    v91[4] = *(v2 + 64);
    v91[5] = v23;
    v24 = *(v2 + 16);
    v91[0] = *v2;
    v91[1] = v24;
    v25 = sub_1009A0304(v91);
    if (v25 <= 3)
    {
      if (v25 > 1)
      {
        if (v25 == 2)
        {
          sub_10004CA28(v91);
          sub_10099F930(v88);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)(&v60);
            v84 = v70;
            v85 = v71;
            v86 = v72;
            v87 = v73;
            v80 = v66;
            v81 = v67;
            v82 = v68;
            v83 = v69;
            v76 = v62;
            v77 = v63;
            v78 = v64;
            v79 = v65;
            v74 = v60;
            v75 = v61;
            sub_10015049C(v89, v90);
            sub_10040F2C0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v56 = v84;
            v57 = v85;
            v58 = v86;
            v59 = v87;
            v52 = v80;
            v53 = v81;
            v54 = v82;
            v55 = v83;
            v48 = v76;
            v49 = v77;
            v50 = v78;
            v51 = v79;
            v46 = v74;
            v47 = v75;
            sub_1001DA914(&v46);
            return sub_100007BAC(v89);
          }

          sub_1009A02D4(&v32);
          v70 = v42;
          v71 = v43;
          v72 = v44;
          v66 = v38;
          v67 = v39;
          v68 = v40;
          v69 = v41;
          v62 = v34;
          v63 = v35;
          v64 = v36;
          v65 = v37;
          v60 = v32;
          v61 = v33;
          v56 = v42;
          v57 = v43;
          v58 = v44;
          v52 = v38;
          v53 = v39;
          v54 = v40;
          v55 = v41;
          v48 = v34;
          v49 = v35;
          v50 = v36;
          v51 = v37;
          v73 = v45;
          v59 = v45;
          v46 = v32;
          v47 = v33;
          v27 = &unk_1016B06F8;
          v28 = &unk_1013CDFB0;
        }

        else
        {
          sub_10004CA28(v91);
          sub_10099F930(v88);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            SharingCircleWildAdvertisementKey.init(key:)(&v60);
            v82 = v68;
            v83 = v69;
            v84 = v70;
            v85 = v71;
            v78 = v64;
            v79 = v65;
            v80 = v66;
            v81 = v67;
            v74 = v60;
            v75 = v61;
            v76 = v62;
            v77 = v63;
            sub_10015049C(v89, v90);
            sub_1001BF4A0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v54 = v82;
            v55 = v83;
            v56 = v84;
            v57 = v85;
            v50 = v78;
            v51 = v79;
            v52 = v80;
            v53 = v81;
            v46 = v74;
            v47 = v75;
            v48 = v76;
            v49 = v77;
            sub_1009A0384(&v46);
            return sub_100007BAC(v89);
          }

          sub_100080B6C(&v32);
          v68 = v40;
          v69 = v41;
          v70 = v42;
          v71 = v43;
          v64 = v36;
          v65 = v37;
          v66 = v38;
          v67 = v39;
          v60 = v32;
          v61 = v33;
          v62 = v34;
          v63 = v35;
          v54 = v40;
          v55 = v41;
          v56 = v42;
          v57 = v43;
          v50 = v36;
          v51 = v37;
          v52 = v38;
          v53 = v39;
          v46 = v32;
          v47 = v33;
          v48 = v34;
          v49 = v35;
          v27 = &unk_1016B06F0;
          v28 = &unk_1013CDFA8;
        }
      }

      else
      {
        if (!v25)
        {
          sub_10004CA28(v91);
          sub_10099F930(&v74);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if (swift_dynamicCast())
          {
            v60 = v46;
            v61 = v47;
            sub_10015049C(v89, v90);
            sub_100392AF0();
            dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
            v26 = v61;
            sub_100016590(v60, *(&v60 + 1));
            sub_100016590(v26, *(&v26 + 1));
            return sub_100007BAC(v89);
          }

          v46 = xmmword_10138BBF0;
          v47 = 0uLL;
          sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_47:
          sub_1009A022C();
          swift_allocError();
          *v29 = 0;
          swift_willThrow();
          return sub_100007BAC(v89);
        }

        sub_10004CA28(v91);
        sub_10099F930(&v32);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v76 = v62;
          v77 = v63;
          v78 = v64;
          v74 = v60;
          v75 = v61;
          sub_10015049C(v89, v90);
          sub_100392A9C();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v48 = v76;
          v49 = v77;
          v50 = v78;
          v46 = v74;
          v47 = v75;
          sub_1001DAB9C(&v46);
          return sub_100007BAC(v89);
        }

        v60 = xmmword_10138BBF0;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v64 = 0u;
        v48 = 0u;
        v49 = 0u;
        v50 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v27 = &unk_1016B0700;
        v28 = &unk_1013CDFB8;
      }

LABEL_46:
      sub_10000B3A8(&v46, v27, v28);
      goto LABEL_47;
    }

    if (v25 > 5)
    {
      if (v25 == 6)
      {
        sub_10099F930(&v74);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_10015049C(v89, v90);
        sub_1009A0330();
      }

      else
      {
        sub_10099F930(&v74);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_47;
        }

        sub_10015049C(v89, v90);
        sub_10027FBB8();
      }
    }

    else
    {
      if (v25 == 4)
      {
        sub_10004CA28(v91);
        sub_10099F930(&v32);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v74 = v60;
          v75 = v61;
          v76 = v62;
          v77 = v63;
          sub_10015049C(v89, v90);
          sub_1008894E4();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v46 = v74;
          v47 = v75;
          v48 = v76;
          v49 = v77;
          sub_1001DA6B0(&v46);
          return sub_100007BAC(v89);
        }

        v60 = xmmword_10138BBF0;
        v61 = 0u;
        v62 = 0u;
        v63 = 0u;
        v48 = 0u;
        v49 = 0u;
        v46 = xmmword_10138BBF0;
        v47 = 0u;
        v27 = &unk_1016B06E8;
        v28 = &unk_1013CDFA0;
        goto LABEL_46;
      }

      sub_10099F930(&v74);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_47;
      }

      sub_10015049C(v89, v90);
      sub_10030FB84();
    }

    dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  }

  return sub_100007BAC(v89);
}

uint64_t sub_10099DA9C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Endianness();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of BinaryEncoding.container()();
  v10 = *(v2 + 176);
  v93[10] = *(v2 + 160);
  v93[11] = v10;
  v93[12] = *(v2 + 192);
  v94 = *(v2 + 208);
  v11 = *(v2 + 112);
  v93[6] = *(v2 + 96);
  v93[7] = v11;
  v12 = *(v2 + 144);
  v93[8] = *(v2 + 128);
  v93[9] = v12;
  v13 = *(v2 + 48);
  v93[2] = *(v2 + 32);
  v93[3] = v13;
  v14 = *(v2 + 80);
  v93[4] = *(v2 + 64);
  v93[5] = v14;
  v15 = *(v2 + 16);
  v93[0] = *v2;
  v93[1] = v15;
  v16 = sub_1001DA684(v93);
  if (v16 > 3)
  {
    if (v16 > 5)
    {
      if (v16 == 7)
      {
        v17 = 516;
      }

      else
      {
        v17 = 267;
      }
    }

    else if (v16 == 4)
    {
      sub_10004CA28(v93);
      v17 = 259;
    }

    else
    {
      sub_10004CA28(v93);
      v17 = 260;
    }
  }

  else if (v16 > 1)
  {
    if (v16 == 2)
    {
      sub_10004CA28(v93);
      v17 = 257;
    }

    else
    {
      sub_10004CA28(v93);
      v17 = 258;
    }
  }

  else if (v16)
  {
    sub_10004CA28(v93);
    v17 = 256;
  }

  else
  {
    sub_10004CA28(v93);
    v17 = 268;
  }

  LOWORD(v60) = v17;
  static Endianness.current.getter();
  sub_1002053B0();
  FixedWidthInteger.convert(to:)();
  (*(v5 + 8))(v8, v4);
  LOWORD(v60) = v74;
  sub_10015049C(v89, v90);
  v18 = v95;
  dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
  if (!v18)
  {
    v19 = *(v2 + 176);
    v91[10] = *(v2 + 160);
    v91[11] = v19;
    v91[12] = *(v2 + 192);
    v92 = *(v2 + 208);
    v20 = *(v2 + 112);
    v91[6] = *(v2 + 96);
    v91[7] = v20;
    v21 = *(v2 + 144);
    v91[8] = *(v2 + 128);
    v91[9] = v21;
    v22 = *(v2 + 48);
    v91[2] = *(v2 + 32);
    v91[3] = v22;
    v23 = *(v2 + 80);
    v91[4] = *(v2 + 64);
    v91[5] = v23;
    v24 = *(v2 + 16);
    v91[0] = *v2;
    v91[1] = v24;
    v25 = sub_1001DA684(v91);
    if (v25 > 3)
    {
      if (v25 > 5)
      {
        if (v25 == 6)
        {
          sub_100C0256C(&v74);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_48;
          }

          sub_10015049C(v89, v90);
          sub_10030FB84();
        }

        else
        {
          sub_100C0256C(&v74);
          sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
          if ((swift_dynamicCast() & 1) == 0)
          {
            goto LABEL_48;
          }

          sub_10015049C(v89, v90);
          sub_10027FBB8();
        }

        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        return sub_100007BAC(v89);
      }

      if (v25 != 4)
      {
        sub_10004CA28(v91);
        sub_100C0256C(&v74);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v60 = v46;
          sub_10015049C(v89, v90);
          sub_1003928F8();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          sub_100016590(v60, *(&v60 + 1));
          return sub_100007BAC(v89);
        }

        v46 = xmmword_10138BBF0;
        sub_100006654(0, 0xF000000000000000);
        goto LABEL_48;
      }

      sub_10004CA28(v91);
      sub_100C0256C(&v32);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v74 = v60;
        v75 = v61;
        v76 = v62;
        v77 = v63;
        sub_10015049C(v89, v90);
        sub_1009A2000();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v46 = v74;
        v47 = v75;
        v48 = v76;
        v49 = v77;
        sub_1009A2054(&v46);
        return sub_100007BAC(v89);
      }

      v60 = xmmword_10138BBF0;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v48 = 0u;
      v49 = 0u;
      v46 = xmmword_10138BBF0;
      v47 = 0u;
      v27 = &unk_1016B0738;
      v28 = &unk_1013CDFE8;
    }

    else if (v25 > 1)
    {
      if (v25 == 2)
      {
        sub_10004CA28(v91);
        sub_100C0256C(v88);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          SharingCircleWildAdvertisementKey.init(key:)(&v60);
          v84 = v70;
          v85 = v71;
          v86 = v72;
          v87 = v73;
          v80 = v66;
          v81 = v67;
          v82 = v68;
          v83 = v69;
          v76 = v62;
          v77 = v63;
          v78 = v64;
          v79 = v65;
          v74 = v60;
          v75 = v61;
          sub_10015049C(v89, v90);
          sub_10040F2C0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v56 = v84;
          v57 = v85;
          v58 = v86;
          v59 = v87;
          v52 = v80;
          v53 = v81;
          v54 = v82;
          v55 = v83;
          v48 = v76;
          v49 = v77;
          v50 = v78;
          v51 = v79;
          v46 = v74;
          v47 = v75;
          sub_1001DA914(&v46);
          return sub_100007BAC(v89);
        }

        sub_1009A02D4(&v32);
        v70 = v42;
        v71 = v43;
        v72 = v44;
        v66 = v38;
        v67 = v39;
        v68 = v40;
        v69 = v41;
        v62 = v34;
        v63 = v35;
        v64 = v36;
        v65 = v37;
        v60 = v32;
        v61 = v33;
        v56 = v42;
        v57 = v43;
        v58 = v44;
        v52 = v38;
        v53 = v39;
        v54 = v40;
        v55 = v41;
        v48 = v34;
        v49 = v35;
        v50 = v36;
        v51 = v37;
        v73 = v45;
        v59 = v45;
        v46 = v32;
        v47 = v33;
        v27 = &unk_1016B06F8;
        v28 = &unk_1013CDFB0;
      }

      else
      {
        sub_10004CA28(v91);
        sub_100C0256C(v88);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          SharingCircleWildAdvertisementKey.init(key:)(&v60);
          v82 = v68;
          v83 = v69;
          v84 = v70;
          v85 = v71;
          v78 = v64;
          v79 = v65;
          v80 = v66;
          v81 = v67;
          v74 = v60;
          v75 = v61;
          v76 = v62;
          v77 = v63;
          sub_10015049C(v89, v90);
          sub_1008BC3E0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v54 = v82;
          v55 = v83;
          v56 = v84;
          v57 = v85;
          v50 = v78;
          v51 = v79;
          v52 = v80;
          v53 = v81;
          v46 = v74;
          v47 = v75;
          v48 = v76;
          v49 = v77;
          sub_1008BC2B4(&v46);
          return sub_100007BAC(v89);
        }

        sub_100080B6C(&v32);
        v68 = v40;
        v69 = v41;
        v70 = v42;
        v71 = v43;
        v64 = v36;
        v65 = v37;
        v66 = v38;
        v67 = v39;
        v60 = v32;
        v61 = v33;
        v62 = v34;
        v63 = v35;
        v54 = v40;
        v55 = v41;
        v56 = v42;
        v57 = v43;
        v50 = v36;
        v51 = v37;
        v52 = v38;
        v53 = v39;
        v46 = v32;
        v47 = v33;
        v48 = v34;
        v49 = v35;
        v27 = &unk_1016B0740;
        v28 = &unk_1013CDFF0;
      }
    }

    else
    {
      if (!v25)
      {
        sub_10004CA28(v91);
        sub_100C0256C(&v74);
        sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
        if (swift_dynamicCast())
        {
          v60 = v46;
          v61 = v47;
          sub_10015049C(v89, v90);
          sub_100392AF0();
          dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
          v26 = v61;
          sub_100016590(v60, *(&v60 + 1));
          sub_100016590(v26, *(&v26 + 1));
          return sub_100007BAC(v89);
        }

        v46 = xmmword_10138BBF0;
        v47 = 0uLL;
        sub_1000BB4DC(0, 0xF000000000000000, 0, 0);
LABEL_48:
        sub_1009A022C();
        swift_allocError();
        *v29 = 0;
        swift_willThrow();
        return sub_100007BAC(v89);
      }

      sub_10004CA28(v91);
      sub_100C0256C(&v32);
      sub_1000BC4D4(&qword_101697300, &unk_10138BE80);
      if (swift_dynamicCast())
      {
        v76 = v62;
        v77 = v63;
        v78 = v64;
        v74 = v60;
        v75 = v61;
        sub_10015049C(v89, v90);
        sub_100392A9C();
        dispatch thunk of BinaryEncodingContaining.encode<A>(_:)();
        v48 = v76;
        v49 = v77;
        v50 = v78;
        v46 = v74;
        v47 = v75;
        sub_1001DAB9C(&v46);
        return sub_100007BAC(v89);
      }

      v60 = xmmword_10138BBF0;
      v61 = 0u;
      v62 = 0u;
      v63 = 0u;
      v64 = 0u;
      v48 = 0u;
      v49 = 0u;
      v50 = 0u;
      v46 = xmmword_10138BBF0;
      v47 = 0u;
      v27 = &unk_1016B0700;
      v28 = &unk_1013CDFB8;
    }

    sub_10000B3A8(&v46, v27, v28);
    goto LABEL_48;
  }

  return sub_100007BAC(v89);
}

void sub_10099E5D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v252 = &v243 - v6;
  v7 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v251 = &v243 - v9;
  v10 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10);
  v247 = &v243 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v246 = &v243 - v15;
  v16 = __chkstk_darwin(v14);
  v245 = &v243 - v17;
  v18 = __chkstk_darwin(v16);
  v248 = &v243 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = &v243 - v21;
  v23 = __chkstk_darwin(v20);
  v249 = &v243 - v24;
  v25 = __chkstk_darwin(v23);
  v27 = &v243 - v26;
  v28 = __chkstk_darwin(v25);
  v253 = &v243 - v29;
  v30 = __chkstk_darwin(v28);
  v250 = &v243 - v31;
  v32 = __chkstk_darwin(v30);
  v256 = &v243 - v33;
  __chkstk_darwin(v32);
  v35 = &v243 - v34;
  if (qword_1016946B0 != -1)
  {
    swift_once();
  }

  v254 = v22;
  v255 = v27;
  v36 = type metadata accessor for Logger();
  v37 = sub_1000076D4(v36, qword_10177ACB0);
  sub_1009A1D14(a1, v35);
  v260[5] = v37;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.default.getter();
  v40 = os_log_type_enabled(v38, v39);
  v257 = a1;
  v258 = v10;
  if (v40)
  {
    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v260[0] = v42;
    *v41 = 136446210;
    v43 = &v35[*(v10 + 52)];
    if (*(v43 + 1) >> 60 == 15)
    {
      v44 = 0;
      v45 = 0xE000000000000000;
    }

    else
    {
      v46 = *v43;
      v44 = Data.hexString.getter();
      v45 = v47;
    }

    sub_1009A1CB8(v35);
    v48 = sub_1000136BC(v44, v45, v260);

    *(v41 + 4) = v48;
    _os_log_impl(&_mh_execute_header, v38, v39, "Received SeedS and S3 from server. Pairing token: %{public}s", v41, 0xCu);
    sub_100007BAC(v42);

    a1 = v257;
  }

  else
  {

    sub_1009A1CB8(v35);
  }

  v49 = *(a1 + 64);
  v50 = *(a1 + 72);
  v51 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3);
  v52 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3);
  v53 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8);
  *v51 = v49;
  v51[1] = v50;
  sub_100017D5C(v49, v50);
  sub_100006654(v52, v53);
  sub_100017D5C(v49, v50);
  v54 = Logger.logObject.getter();
  v55 = static os_log_type_t.default.getter();
  sub_100016590(v49, v50);
  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v260[0] = v57;
    *v56 = 136315138;
    v58 = Data.hexString.getter();
    v60 = sub_1000136BC(v58, v59, v260);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v54, v55, "S3: %s", v56, 0xCu);
    sub_100007BAC(v57);
  }

  v61 = v251;
  if (qword_1016946D8 != -1)
  {
    swift_once();
  }

  v62 = qword_10177ACE0;
  v63 = *algn_10177ACE8;
  v64 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_productInfo;
  swift_beginAccess();
  sub_1000D2A70(a2 + v64, v61, &qword_101697268, &qword_101394FE0);
  v65 = type metadata accessor for AccessoryProductInfo();
  if ((*(*(v65 - 8) + 48))(v61, 1, v65))
  {
    sub_10000B3A8(v61, &qword_101697268, &qword_101394FE0);
    v66 = 0;
    v67 = 0xF000000000000000;
  }

  else
  {
    v68 = (v61 + *(v65 + 100));
    v66 = *v68;
    v67 = v68[1];
    sub_10002E98C(*v68, v67);
    sub_10000B3A8(v61, &qword_101697268, &qword_101394FE0);
    if (v67 >> 60 != 15)
    {
      goto LABEL_17;
    }
  }

  sub_100017D5C(v62, v63);
  sub_100006654(v66, v67);
  v66 = v62;
  v67 = v63;
LABEL_17:
  sub_100017D5C(v66, v67);
  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  sub_100016590(v66, v67);
  v71 = os_log_type_enabled(v69, v70);
  v244 = v66;
  v243 = v67;
  if (v71)
  {
    v72 = swift_slowAlloc();
    v73 = swift_slowAlloc();
    v259[0] = v73;
    *v72 = 136315138;
    v74 = Data.hexString.getter();
    v76 = sub_1000136BC(v74, v75, v259);

    *(v72 + 4) = v76;
    _os_log_impl(&_mh_execute_header, v69, v70, "publicKeyData: %s", v72, 0xCu);
    sub_100007BAC(v73);
  }

  v78 = v257;
  v77 = v258;
  v79 = (v257 + v258[11]);
  v80 = *v79;
  v81 = v79[1];
  v82 = (v257 + v258[12]);
  v83 = *v82;
  v251 = v82[1];
  v84 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
  v85 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
  v86 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8);
  *v84 = v80;
  v84[1] = v81;
  sub_100017D5C(v80, v81);
  sub_100006654(v85, v86);
  v87 = *v82;
  v88 = v82[1];
  v89 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
  v90 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1);
  v91 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8);
  *v89 = *v82;
  v89[1] = v88;
  sub_100017D5C(v87, v88);
  sub_100006654(v90, v91);
  v92 = v77[9];
  v93 = type metadata accessor for UUID();
  v94 = *(v93 - 8);
  v95 = v78 + v92;
  v96 = v252;
  (*(v94 + 16))(v252, v95, v93);
  (*(v94 + 56))(v96, 0, 1, v93);
  v97 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_fmnaId;
  swift_beginAccess();
  sub_10002311C(v96, a2 + v97, &qword_1016980D0, &unk_10138F3B0);
  swift_endAccess();
  v98 = (v78 + v77[10]);
  v100 = *v98;
  v99 = v98[1];
  v101 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId);
  v102 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8);
  *v101 = v100;
  v101[1] = v99;

  v103 = v77[14];
  v104 = v83;
  *(a2 + 32) = *(v78 + v103);
  v105 = *(v78 + 48);
  v106 = *(v78 + 56);
  v107 = (a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
  v108 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
  v109 = *(a2 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
  *v107 = v105;
  v107[1] = v106;
  sub_100017D5C(v105, v106);
  v110 = v109;
  v111 = v251;
  sub_100006654(v108, v110);
  sub_100017D5C(v80, v81);
  sub_100017D5C(v83, v111);
  v112 = Logger.logObject.getter();
  v113 = static os_log_type_t.default.getter();
  if (!os_log_type_enabled(v112, v113))
  {
    sub_100016590(v83, v111);
    sub_100016590(v80, v81);
    v118 = v253;
    v119 = v256;
    goto LABEL_42;
  }

  v114 = v111;
  v115 = swift_slowAlloc();
  v116 = v115;
  *v115 = 134218240;
  v117 = v81 >> 62;
  v118 = v253;
  v119 = v256;
  if ((v81 >> 62) <= 1)
  {
    if (!v117)
    {
      v120 = BYTE6(v81);
      goto LABEL_31;
    }

    goto LABEL_28;
  }

  if (v117 != 2)
  {
    v120 = 0;
    goto LABEL_31;
  }

  v122 = *(v80 + 16);
  v121 = *(v80 + 24);
  v123 = __OFSUB__(v121, v122);
  v120 = v121 - v122;
  if (v123)
  {
    __break(1u);
LABEL_28:
    LODWORD(v120) = HIDWORD(v80) - v80;
    if (__OFSUB__(HIDWORD(v80), v80))
    {
      __break(1u);
LABEL_94:
      __break(1u);
      goto LABEL_95;
    }

    v120 = v120;
  }

LABEL_31:
  *(v115 + 4) = v120;
  sub_100016590(v80, v81);
  *(v116 + 12) = 2048;
  v124 = v114 >> 62;
  if ((v114 >> 62) > 1)
  {
    if (v124 != 2)
    {
      v125 = 0;
      goto LABEL_41;
    }

    v127 = *(v104 + 16);
    v126 = *(v104 + 24);
    v123 = __OFSUB__(v126, v127);
    v125 = v126 - v127;
    if (!v123)
    {
      goto LABEL_41;
    }

    __break(1u);
LABEL_38:
    LODWORD(v125) = HIDWORD(v104) - v104;
    if (__OFSUB__(HIDWORD(v104), v104))
    {
LABEL_95:
      __break(1u);
      goto LABEL_96;
    }

    v125 = v125;
    goto LABEL_41;
  }

  if (v124)
  {
    goto LABEL_38;
  }

  v125 = BYTE6(v114);
LABEL_41:
  *(v116 + 14) = v125;
  sub_100016590(v104, v114);
  _os_log_impl(&_mh_execute_header, v112, v113, "baaLeafCert count = %ld, baaIntermediateCert count = %ld", v116, 0x16u);

LABEL_42:

  v128 = v257;
  sub_1009A1D14(v257, v119);
  v129 = v250;
  sub_1009A1D14(v128, v250);
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v130, v131))
  {
    sub_1009A1CB8(v119);

    sub_1009A1CB8(v129);
    goto LABEL_55;
  }

  v132 = swift_slowAlloc();
  v133 = swift_slowAlloc();
  v259[0] = v133;
  *v132 = 134218242;
  v134 = *(v119 + 64);
  v135 = *(v119 + 72);
  v136 = v135 >> 62;
  if ((v135 >> 62) > 1)
  {
    if (v136 != 2)
    {
      v137 = 0;
      goto LABEL_54;
    }

    v139 = v134 + 16;
    v134 = *(v134 + 16);
    v138 = *(v139 + 8);
    v137 = v138 - v134;
    if (!__OFSUB__(v138, v134))
    {
      goto LABEL_54;
    }

    __break(1u);
LABEL_51:
    v123 = __OFSUB__(HIDWORD(v134), v134);
    v140 = HIDWORD(v134) - v134;
    if (!v123)
    {
      v137 = v140;
      goto LABEL_54;
    }

    goto LABEL_94;
  }

  if (v136)
  {
    goto LABEL_51;
  }

  v137 = BYTE6(v135);
LABEL_54:
  sub_1009A1CB8(v256);
  *(v132 + 4) = v137;
  *(v132 + 12) = 2080;
  v141 = *(v129 + 64);
  v142 = *(v129 + 72);
  v143 = Data.hexString.getter();
  v144 = v129;
  v146 = v145;
  sub_1009A1CB8(v144);
  v147 = sub_1000136BC(v143, v146, v259);

  *(v132 + 14) = v147;
  _os_log_impl(&_mh_execute_header, v130, v131, "S3 count %ld: %s", v132, 0x16u);
  sub_100007BAC(v133);

LABEL_55:
  sub_1009A1D14(v128, v118);
  v148 = v255;
  sub_1009A1D14(v128, v255);
  v149 = Logger.logObject.getter();
  v150 = static os_log_type_t.debug.getter();
  if (!os_log_type_enabled(v149, v150))
  {
    sub_1009A1CB8(v118);

    sub_1009A1CB8(v148);
    goto LABEL_68;
  }

  v151 = swift_slowAlloc();
  v152 = swift_slowAlloc();
  v259[0] = v152;
  *v151 = 134218242;
  v153 = (v118 + v258[11]);
  v154 = *v153;
  v155 = v153[1];
  v156 = v155 >> 62;
  if ((v155 >> 62) > 1)
  {
    if (v156 != 2)
    {
      v157 = 0;
      goto LABEL_67;
    }

    v159 = v154 + 16;
    v154 = *(v154 + 16);
    v158 = *(v159 + 8);
    v157 = v158 - v154;
    if (!__OFSUB__(v158, v154))
    {
      goto LABEL_67;
    }

    __break(1u);
LABEL_64:
    v123 = __OFSUB__(HIDWORD(v154), v154);
    v160 = HIDWORD(v154) - v154;
    if (!v123)
    {
      v157 = v160;
      goto LABEL_67;
    }

LABEL_96:
    __break(1u);
    goto LABEL_97;
  }

  if (v156)
  {
    goto LABEL_64;
  }

  v157 = BYTE6(v155);
LABEL_67:
  sub_1009A1CB8(v118);
  *(v151 + 4) = v157;
  *(v151 + 12) = 2080;
  v161 = v255;
  v162 = &v255[v258[11]];
  v163 = *v162;
  v164 = *(v162 + 1);
  v165 = Data.hexString.getter();
  v167 = v166;
  sub_1009A1CB8(v161);
  v168 = sub_1000136BC(v165, v167, v259);

  *(v151 + 14) = v168;
  _os_log_impl(&_mh_execute_header, v149, v150, "baaLeaf count %ld: %s", v151, 0x16u);
  sub_100007BAC(v152);

LABEL_68:
  v169 = v254;
  v170 = v249;
  sub_1009A1D14(v128, v249);
  sub_1009A1D14(v128, v169);
  v171 = Logger.logObject.getter();
  v172 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v171, v172))
  {
    v173 = swift_slowAlloc();
    v174 = swift_slowAlloc();
    v259[0] = v174;
    *v173 = 134218242;
    v175 = (v170 + v258[12]);
    v176 = *v175;
    v177 = v175[1];
    v178 = v177 >> 62;
    if ((v177 >> 62) > 1)
    {
      if (v178 != 2)
      {
        v179 = 0;
        goto LABEL_80;
      }

      v181 = v176 + 16;
      v176 = *(v176 + 16);
      v180 = *(v181 + 8);
      v179 = v180 - v176;
      if (!__OFSUB__(v180, v176))
      {
        goto LABEL_80;
      }

      __break(1u);
    }

    else if (!v178)
    {
      v179 = BYTE6(v177);
LABEL_80:
      sub_1009A1CB8(v170);
      *(v173 + 4) = v179;
      *(v173 + 12) = 2080;
      v183 = v254;
      v184 = &v254[v258[12]];
      v185 = *v184;
      v186 = *(v184 + 1);
      v187 = Data.hexString.getter();
      v189 = v188;
      sub_1009A1CB8(v183);
      v190 = sub_1000136BC(v187, v189, v259);

      *(v173 + 14) = v190;
      _os_log_impl(&_mh_execute_header, v171, v172, "baaIntermediate count %ld: %s", v173, 0x16u);
      sub_100007BAC(v174);

      goto LABEL_81;
    }

    v123 = __OFSUB__(HIDWORD(v176), v176);
    v182 = HIDWORD(v176) - v176;
    if (!v123)
    {
      v179 = v182;
      goto LABEL_80;
    }

LABEL_97:
    __break(1u);
    return;
  }

  sub_1009A1CB8(v170);

  sub_1009A1CB8(v169);
LABEL_81:
  v191 = v248;
  sub_1009A1D14(v128, v248);
  v192 = Logger.logObject.getter();
  v193 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v192, v193))
  {
    v194 = swift_slowAlloc();
    v195 = swift_slowAlloc();
    v259[0] = v195;
    *v194 = 136446210;
    v196 = *(v191 + 48);
    v197 = *(v191 + 56);
    v198 = Data.hexString.getter();
    v199 = v191;
    v200 = v198;
    v202 = v201;
    sub_1009A1CB8(v199);
    v203 = sub_1000136BC(v200, v202, v259);

    *(v194 + 4) = v203;
    _os_log_impl(&_mh_execute_header, v192, v193, "response.serverSeed: %{public}s", v194, 0xCu);
    sub_100007BAC(v195);
  }

  else
  {

    sub_1009A1CB8(v191);
  }

  v204 = v245;
  sub_1009A1D14(v128, v245);
  v205 = Logger.logObject.getter();
  v206 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v205, v206))
  {
    v207 = swift_slowAlloc();
    v208 = swift_slowAlloc();
    v259[0] = v208;
    *v207 = 136446210;
    v209 = *(v204 + 64);
    v210 = *(v204 + 72);
    v211 = Data.hexString.getter();
    v212 = v204;
    v213 = v211;
    v215 = v214;
    sub_1009A1CB8(v212);
    v216 = sub_1000136BC(v213, v215, v259);

    *(v207 + 4) = v216;
    _os_log_impl(&_mh_execute_header, v205, v206, "response.serverSignature: %{public}s", v207, 0xCu);
    sub_100007BAC(v208);
  }

  else
  {

    sub_1009A1CB8(v204);
  }

  v217 = v246;
  sub_1009A1D14(v128, v246);
  v218 = Logger.logObject.getter();
  v219 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v218, v219))
  {
    v220 = swift_slowAlloc();
    v221 = swift_slowAlloc();
    v259[0] = v221;
    *v220 = 136446210;
    v222 = (v217 + v258[11]);
    v223 = *v222;
    v224 = v222[1];
    v225 = Data.hexString.getter();
    v226 = v217;
    v227 = v225;
    v229 = v228;
    sub_1009A1CB8(v226);
    v230 = sub_1000136BC(v227, v229, v259);

    *(v220 + 4) = v230;
    _os_log_impl(&_mh_execute_header, v218, v219, "response.baaAccLeafCert: %{public}s", v220, 0xCu);
    sub_100007BAC(v221);
  }

  else
  {

    sub_1009A1CB8(v217);
  }

  v231 = v247;
  sub_1009A1D14(v128, v247);
  v232 = Logger.logObject.getter();
  v233 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v232, v233))
  {
    v234 = swift_slowAlloc();
    v235 = swift_slowAlloc();
    v259[0] = v235;
    *v234 = 136446210;
    v236 = (v231 + v258[12]);
    v237 = *v236;
    v238 = v236[1];
    v239 = Data.hexString.getter();
    v241 = v240;
    sub_1009A1CB8(v231);
    v242 = sub_1000136BC(v239, v241, v259);

    *(v234 + 4) = v242;
    _os_log_impl(&_mh_execute_header, v232, v233, "response.baaAccIntCA1: %{public}s", v234, 0xCu);
    sub_100007BAC(v235);

    sub_100016590(v244, v243);
  }

  else
  {
    sub_100016590(v244, v243);

    sub_1009A1CB8(v231);
  }
}

unint64_t sub_10099F930@<X0>(uint64_t *a1@<X8>)
{
  v3 = v1[11];
  v76[10] = v1[10];
  v76[11] = v3;
  v76[12] = v1[12];
  v77 = *(v1 + 26);
  v4 = v1[7];
  v76[6] = v1[6];
  v76[7] = v4;
  v5 = v1[9];
  v76[8] = v1[8];
  v76[9] = v5;
  v6 = v1[3];
  v76[2] = v1[2];
  v76[3] = v6;
  v7 = v1[5];
  v76[4] = v1[4];
  v76[5] = v7;
  v8 = v1[1];
  v76[0] = *v1;
  v76[1] = v8;
  v9 = sub_1009A0304(v76);
  if (v9 <= 3)
  {
    if (v9 > 1)
    {
      if (v9 == 2)
      {
        v37 = sub_10004CA28(v76);
        a1[3] = &type metadata for AirPodsLESendPairingDataCommandPayload;
        a1[4] = sub_1009A00A4();
        v38 = swift_allocObject();
        *a1 = v38;
        memmove((v38 + 16), v37, 0xD8uLL);
        v39 = v1[11];
        v72 = v1[10];
        v73 = v39;
        v74 = v1[12];
        v75 = *(v1 + 26);
        v40 = v1[7];
        v68 = v1[6];
        v69 = v40;
        v41 = v1[9];
        v70 = v1[8];
        v71 = v41;
        v42 = v1[3];
        v64 = v1[2];
        v65 = v42;
        v43 = v1[5];
        v66 = v1[4];
        v67 = v43;
        v44 = v1[1];
        v62 = *v1;
        v63 = v44;
        v34 = sub_10004CA28(&v62);
        v35 = &unk_1016B0720;
        v36 = &unk_1013CDFD0;
      }

      else
      {
        v53 = sub_10004CA28(v76);
        a1[3] = &type metadata for AirPodsLEFinalizePairingCommandPayload;
        a1[4] = sub_10099FFE8();
        v54 = swift_allocObject();
        *a1 = v54;
        memmove((v54 + 16), v53, 0xC0uLL);
        v55 = v1[11];
        v72 = v1[10];
        v73 = v55;
        v74 = v1[12];
        v75 = *(v1 + 26);
        v56 = v1[7];
        v68 = v1[6];
        v69 = v56;
        v57 = v1[9];
        v70 = v1[8];
        v71 = v57;
        v58 = v1[3];
        v64 = v1[2];
        v65 = v58;
        v59 = v1[5];
        v66 = v1[4];
        v67 = v59;
        v60 = v1[1];
        v62 = *v1;
        v63 = v60;
        v34 = sub_10004CA28(&v62);
        v35 = &unk_1016B0718;
        v36 = &unk_1013CDFC8;
      }
    }

    else
    {
      if (!v9)
      {
        v10 = sub_10004CA28(v76);
        a1[3] = &type metadata for AirPodsSendBeaconGroupDataCommandPayload;
        a1[4] = sub_100391B94();
        v11 = swift_allocObject();
        *a1 = v11;
        v12 = v10[1];
        *(v11 + 16) = *v10;
        *(v11 + 32) = v12;
        v13 = v1[1];
        v62 = *v1;
        v63 = v13;
        v14 = v1[5];
        v66 = v1[4];
        v67 = v14;
        v15 = v1[3];
        v64 = v1[2];
        v65 = v15;
        v16 = v1[9];
        v70 = v1[8];
        v71 = v16;
        v17 = v1[7];
        v68 = v1[6];
        v69 = v17;
        v75 = *(v1 + 26);
        v18 = v1[12];
        v73 = v1[11];
        v74 = v18;
        v72 = v1[10];
        v19 = sub_10004CA28(&v62);
        v20 = v19[2];
        v21 = v19[3];
        sub_100017D5C(*v19, v19[1]);
        return sub_100017D5C(v20, v21);
      }

      v45 = sub_10004CA28(v76);
      a1[3] = &type metadata for AirPodsLEInitiatePairingCommandPayload;
      a1[4] = sub_100391B40();
      v46 = swift_allocObject();
      *a1 = v46;
      memmove((v46 + 16), v45, 0x50uLL);
      v47 = v1[11];
      v72 = v1[10];
      v73 = v47;
      v74 = v1[12];
      v75 = *(v1 + 26);
      v48 = v1[7];
      v68 = v1[6];
      v69 = v48;
      v49 = v1[9];
      v70 = v1[8];
      v71 = v49;
      v50 = v1[3];
      v64 = v1[2];
      v65 = v50;
      v51 = v1[5];
      v66 = v1[4];
      v67 = v51;
      v52 = v1[1];
      v62 = *v1;
      v63 = v52;
      v34 = sub_10004CA28(&v62);
      v35 = &unk_10169EAC0;
      v36 = &unk_10139E338;
    }

    return sub_1000D2A70(v34, v61, v35, v36);
  }

  if (v9 > 5)
  {
    if (v9 == 6)
    {
      a1[3] = &type metadata for AirPodsPairingCompleteCommandPayload;
      result = sub_1009A0048();
    }

    else
    {
      a1[3] = &type metadata for UnpairCommandPayload;
      result = sub_10027EE90();
    }
  }

  else
  {
    if (v9 == 4)
    {
      v23 = sub_10004CA28(v76);
      a1[3] = &type metadata for AirPodsLESendPairingStatusCommandPayload;
      a1[4] = sub_1009A00FC();
      v24 = swift_allocObject();
      *a1 = v24;
      v25 = v23[3];
      v27 = *v23;
      v26 = v23[1];
      v24[3] = v23[2];
      v24[4] = v25;
      v24[1] = v27;
      v24[2] = v26;
      v28 = v1[11];
      v72 = v1[10];
      v73 = v28;
      v74 = v1[12];
      v75 = *(v1 + 26);
      v29 = v1[7];
      v68 = v1[6];
      v69 = v29;
      v30 = v1[9];
      v70 = v1[8];
      v71 = v30;
      v31 = v1[3];
      v64 = v1[2];
      v65 = v31;
      v32 = v1[5];
      v66 = v1[4];
      v67 = v32;
      v33 = v1[1];
      v62 = *v1;
      v63 = v33;
      v34 = sub_10004CA28(&v62);
      v35 = &unk_1016B0710;
      v36 = &unk_1013CDFC0;
      return sub_1000D2A70(v34, v61, v35, v36);
    }

    a1[3] = &type metadata for AccessoryGenericPayload;
    result = sub_10030FF74();
  }

  a1[4] = result;
  return result;
}

uint64_t sub_10099FDA8(void *a1)
{
  v13 = v1[10];
  v14 = v1[11];
  v15 = v1[12];
  v16 = *(v1 + 26);
  v9 = v1[6];
  v10 = v1[7];
  v11 = v1[8];
  v12 = v1[9];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v3 = *v1;
  v4 = v1[1];
  return sub_10099CFD0(a1);
}

double sub_10099FE14@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  sub_1009A03D8(a1, a2, a3, a4, v14);
  if (!v5)
  {
    v8 = v14[11];
    *(a5 + 160) = v14[10];
    *(a5 + 176) = v8;
    *(a5 + 192) = v14[12];
    *(a5 + 208) = v15;
    v9 = v14[7];
    *(a5 + 96) = v14[6];
    *(a5 + 112) = v9;
    v10 = v14[9];
    *(a5 + 128) = v14[8];
    *(a5 + 144) = v10;
    v11 = v14[3];
    *(a5 + 32) = v14[2];
    *(a5 + 48) = v11;
    v12 = v14[5];
    *(a5 + 64) = v14[4];
    *(a5 + 80) = v12;
    result = *v14;
    v13 = v14[1];
    *a5 = v14[0];
    *(a5 + 16) = v13;
  }

  return result;
}

uint64_t sub_10099FEB8(uint64_t *a1, void *a2, uint64_t a3, unint64_t a4)
{
  result = sub_100A7491C(a3, a4);
  if (!v4)
  {
    v10 = result;
    v11 = v8;
    v12 = v9;
    sub_100017D5C(result, v8);
    sub_10049613C(v10, v11, v15);
    v13 = v15[0];
    v14 = v15[1];
    a1[3] = &type metadata for CollaborativeKeyGen.v1.C2;
    a1[4] = sub_1001023A0();
    *a1 = v13;
    a1[1] = v14;
    a2[3] = type metadata accessor for CollaborativeKeyGen.v1.OwnerContext();
    a2[4] = &off_101645BA0;
    result = sub_100016590(v10, v11);
    *a2 = v12;
  }

  return result;
}

__n128 sub_10099FF98@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1009A1A8C(a1, a2, a3, v8);
  if (!v4)
  {
    v7 = v8[3];
    *(a4 + 32) = v8[2];
    *(a4 + 48) = v7;
    *(a4 + 64) = v8[4];
    result = v8[1];
    *a4 = v8[0];
    *(a4 + 16) = result;
  }

  return result;
}

unint64_t sub_10099FFE8()
{
  result = qword_1016B05C8;
  if (!qword_1016B05C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B05C8);
  }

  return result;
}

unint64_t sub_1009A0048()
{
  result = qword_1016B05D0;
  if (!qword_1016B05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B05D0);
  }

  return result;
}

unint64_t sub_1009A00A4()
{
  result = qword_1016B05D8;
  if (!qword_1016B05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B05D8);
  }

  return result;
}

unint64_t sub_1009A00FC()
{
  result = qword_1016B05E0;
  if (!qword_1016B05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B05E0);
  }

  return result;
}

unint64_t sub_1009A0154(uint64_t a1)
{
  *(a1 + 8) = sub_1009A0184();
  result = sub_1009A01D8();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1009A0184()
{
  result = qword_1016B06D0;
  if (!qword_1016B06D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B06D0);
  }

  return result;
}

unint64_t sub_1009A01D8()
{
  result = qword_1016B06D8;
  if (!qword_1016B06D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B06D8);
  }

  return result;
}

unint64_t sub_1009A022C()
{
  result = qword_1016B06E0;
  if (!qword_1016B06E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B06E0);
  }

  return result;
}

double sub_1009A0280(uint64_t a1)
{
  *a1 = 2;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0u;
  *(a1 + 184) = 0;
  result = -0.0;
  *(a1 + 192) = xmmword_1013A1630;
  *(a1 + 208) = 0x2000000000000000;
  return result;
}

double sub_1009A02D4(uint64_t a1)
{
  result = 0.0;
  *a1 = xmmword_10138BBF0;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 192) = 0u;
  *(a1 + 208) = 0;
  return result;
}

uint64_t sub_1009A0304(uint64_t a1)
{
  v1 = (*(a1 + 208) >> 59) & 6 | (*(a1 + 192) >> 63);
  if (v1 <= 4)
  {
    return v1;
  }

  else
  {
    return (*a1 + 5);
  }
}

unint64_t sub_1009A0330()
{
  result = qword_1016B0708;
  if (!qword_1016B0708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016B0708);
  }

  return result;
}

uint64_t sub_1009A03D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v135 = a4;
  v136 = a3;
  v9 = type metadata accessor for String.Encoding();
  v138 = *(v9 - 8);
  v139 = v9;
  v10 = *(v138 + 64);
  __chkstk_darwin(v9);
  v137 = &v128 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016B0728, &qword_1013CDFE0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v15 = &v128 - v14;
  v16 = type metadata accessor for AirPodsLEPairingLockCheckResponse();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v128 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v141 = a2;
  sub_10001F280(a2, &v143);
  v140 = sub_1000BC4D4(&qword_1016B0730, &unk_1013DE2E0);
  v21 = swift_dynamicCast();
  v22 = *(v17 + 56);
  if (v21)
  {
    v22(v15, 0, 1, v16);
    sub_1009A1C54(v15, v20);
    sub_10099E5D8(v20, a1);
    if (v5)
    {
LABEL_3:
      v23 = v20;
      return sub_1009A1CB8(v23);
    }

    v35 = OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_collaborativeKeyC2;
    swift_beginAccess();
    sub_1000D2A70(a1 + v35, &v143, &qword_101697378, &unk_101391940);
    v36 = *(&v144 + 1);
    if (!*(&v144 + 1))
    {
      sub_10000B3A8(&v143, &qword_101697378, &unk_101391940);
      sub_100413200();
      swift_allocError();
      *v63 = 8;
      swift_willThrow();
      goto LABEL_3;
    }

    v128 = a5;
    v134 = v20;
    v37 = v145;
    v38 = sub_1000035D0(&v143, *(&v144 + 1));
    v39 = *(v36 - 8);
    v40 = *(v39 + 64);
    __chkstk_darwin(v38);
    v42 = &v128 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v39 + 16))(v42);
    sub_10000B3A8(&v143, &qword_101697378, &unk_101391940);
    v43 = (*(*(*(v37 + 8) + 8) + 40))(v36);
    v45 = v44;
    (*(v39 + 8))(v42, v36);
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    v47 = sub_1000076D4(v46, qword_10177ACB0);
    sub_100017D5C(v43, v45);
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    sub_100016590(v43, v45);
    v50 = os_log_type_enabled(v48, v49);
    v51 = v43;
    v133 = v45;
    if (v50)
    {
      v52 = swift_slowAlloc();
      v130 = swift_slowAlloc();
      *&v143 = v130;
      *v52 = 136446210;
      v53 = Data.hexString.getter();
      v55 = sub_1000136BC(v53, v54, &v143);
      LODWORD(v129) = v49;
      v56 = v55;

      *(v52 + 4) = v56;
      v51 = v43;
      _os_log_impl(&_mh_execute_header, v48, v129, "sharedCommitment: %{public}s", v52, 0xCu);
      sub_100007BAC(v130);
    }

    if (*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_standalonePairing) == 1)
    {
      v137 = a1;
      v57 = type metadata accessor for __DataStorage();
      v58 = *(v57 + 48);
      v59 = *(v57 + 52);
      swift_allocObject();
      v60 = __DataStorage.init(length:)();
      *&v143 = 0x3C00000000;
      *(&v143 + 1) = v60;
      sub_1007765FC(&v143, 0);
      v61 = v143;
      v62 = *(&v143 + 1) | 0x4000000000000000;
    }

    else
    {
      if (!*(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8))
      {
        goto LABEL_21;
      }

      v64 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId);
      v65 = *(a1 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_maskedAppleId + 8);

      v66 = v137;
      static String.Encoding.utf8.getter();
      v61 = String.data(using:allowLossyConversion:)();
      v62 = v67;

      (*(v138 + 8))(v66, v139);
      if (v62 >> 60 == 15)
      {
LABEL_21:
        v68 = Logger.logObject.getter();
        v69 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v68, v69))
        {
          v70 = swift_slowAlloc();
          *v70 = 0;
          _os_log_impl(&_mh_execute_header, v68, v69, "Unable to decode masked apple ID", v70, 2u);
        }

        sub_100413200();
        swift_allocError();
        *v71 = 7;
        swift_willThrow();
        sub_100016590(v51, v133);
        v23 = v134;
        return sub_1009A1CB8(v23);
      }

      v137 = a1;
    }

    sub_100017D5C(v61, v62);
    v72 = Logger.logObject.getter();
    v73 = static os_log_type_t.default.getter();
    sub_100016590(v61, v62);
    v74 = os_log_type_enabled(v72, v73);
    v131 = v47;
    v132 = v51;
    v138 = v62;
    v139 = v61;
    if (v74)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *&v143 = v76;
      *v75 = 136446210;
      sub_100017D5C(v61, v62);
      v77 = Data.description.getter();
      v78 = v61;
      v79 = v77;
      v81 = v80;
      sub_100016590(v78, v62);
      v82 = sub_1000136BC(v79, v81, &v143);

      *(v75 + 4) = v82;
      _os_log_impl(&_mh_execute_header, v72, v73, "maskedIdentifier: %{public}s", v75, 0xCu);
      sub_100007BAC(v76);
    }

    v83 = v137;
    *&v143 = *(v137 + 32);
    sub_100102194();
    v84 = FixedWidthInteger.data.getter();
    v86 = v85;
    sub_100017D5C(v84, v85);
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.default.getter();
    sub_100016590(v84, v86);
    v89 = os_log_type_enabled(v87, v88);
    v129 = v86;
    v130 = v84;
    if (v89)
    {
      v90 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      *&v143 = v91;
      *v90 = 136446210;
      v92 = Data.hexString.getter();
      v94 = v83;
      v95 = sub_1000136BC(v92, v93, &v143);

      *(v90 + 4) = v95;
      v83 = v94;
      _os_log_impl(&_mh_execute_header, v87, v88, "response.pairingEpoch: %{public}s", v90, 0xCu);
      sub_100007BAC(v91);
    }

    v96 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed + 8);
    if (v96 >> 60 == 15 || (v97 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3 + 8), v97 >> 60 == 15) || (v98 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert + 8), v98 >> 60 == 15) || (v99 = (v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1), v100 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccIntCA1 + 8), v100 >> 60 == 15))
    {
      sub_10001F280(v141, &v143);
      v101 = Logger.logObject.getter();
      v102 = static os_log_type_t.error.getter();
      v103 = os_log_type_enabled(v101, v102);
      v104 = v130;
      if (v103)
      {
        v105 = swift_slowAlloc();
        v106 = swift_slowAlloc();
        v158 = v106;
        *v105 = 136446210;
        sub_10001F280(&v143, v142);
        v107 = String.init<A>(describing:)();
        v109 = v108;
        sub_100007BAC(&v143);
        v110 = sub_1000136BC(v107, v109, &v158);

        *(v105 + 4) = v110;
        _os_log_impl(&_mh_execute_header, v101, v102, "Invalid pairing lock data %{public}s", v105, 0xCu);
        sub_100007BAC(v106);
      }

      else
      {

        sub_100007BAC(&v143);
      }

      v112 = v133;
      v111 = v134;
      v113 = v132;
      sub_100413200();
      swift_allocError();
      *v114 = 2;
      swift_willThrow();
      sub_100016590(v104, v129);
      sub_100016590(v139, v138);
      sub_100016590(v113, v112);
      v23 = v111;
      return sub_1009A1CB8(v23);
    }

    v115 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSeed);
    v140 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_serverSignatureS3);
    v116 = v140;
    v141 = v115;
    v137 = *(v83 + OBJC_IVAR____TtC12searchpartyd20AccessoryPairingInfo_baaAccLeafCert);
    v117 = v137;
    v118 = *v99;
    sub_10002E98C(v115, v96);
    sub_10002E98C(v116, v97);
    sub_10002E98C(v117, v98);
    sub_10002E98C(v118, v100);
    v120 = v135;
    v119 = v136;
    sub_100017D5C(v136, v135);
    sub_1001BE9F4(v132, v133, v141, v96, v139, v138, v140, v97, v142, v137, v98, v118, v100, v130, v129, v119, v120);
    sub_1009A1CB8(v134);
    v151 = v142[8];
    v152 = v142[9];
    v153 = v142[10];
    v154 = v142[11];
    v147 = v142[4];
    v148 = v142[5];
    v149 = v142[6];
    v150 = v142[7];
    v143 = v142[0];
    v144 = v142[1];
    v145 = v142[2];
    v146 = v142[3];
    result = sub_1001DA318(&v143);
    v121 = v154;
    v122 = v128;
    *(v128 + 160) = v153;
    *(v122 + 176) = v121;
    *(v122 + 192) = v155;
    *(v122 + 208) = v156;
    v123 = v150;
    *(v122 + 96) = v149;
    *(v122 + 112) = v123;
    v124 = v152;
    *(v122 + 128) = v151;
    *(v122 + 144) = v124;
    v125 = v146;
    *(v122 + 32) = v145;
    *(v122 + 48) = v125;
    v126 = v148;
    *(v122 + 64) = v147;
    *(v122 + 80) = v126;
    v127 = v144;
    *v122 = v143;
    *(v122 + 16) = v127;
  }

  else
  {
    v22(v15, 1, 1, v16);
    sub_10000B3A8(v15, &qword_1016B0728, &qword_1013CDFE0);
    if (qword_1016946B0 != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    sub_1000076D4(v25, qword_10177ACB0);
    sub_10001F280(v141, &v143);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      v29 = swift_slowAlloc();
      v157 = v29;
      *v28 = 136446210;
      sub_10001F280(&v143, v142);
      v30 = String.init<A>(describing:)();
      v32 = v31;
      sub_100007BAC(&v143);
      v33 = sub_1000136BC(v30, v32, &v157);

      *(v28 + 4) = v33;
      _os_log_impl(&_mh_execute_header, v26, v27, "Invalid pairing lock response %{public}s", v28, 0xCu);
      sub_100007BAC(v29);
    }

    else
    {

      sub_100007BAC(&v143);
    }

    sub_100413200();
    swift_allocError();
    *v34 = 2;
    return swift_willThrow();
  }

  return result;
}