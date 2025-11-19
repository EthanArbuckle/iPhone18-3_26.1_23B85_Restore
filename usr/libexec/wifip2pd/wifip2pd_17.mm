Swift::Int AWDLActionFrame.RealtimeGroup.hashValue.getter()
{
  Hasher.init(_seed:)();
  AWDLActionFrame.RealtimeGroup.hash(into:)();
  return Hasher._finalize()();
}

double sub_1001543D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = AWDLActionFrame.RealtimeGroup.init(from:)(a1, v6);
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

double AWDLActionFrame.RealtimeGroup.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1001600CC(a1, v6);
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

uint64_t AWDLActionFrame.RealtimeGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  LOBYTE(v16) = *v1;
  sub_100031694(v14, v15);
  sub_100160B04();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v2)
  {
    return sub_100002A00(v14);
  }

  v16 = *(v1 + 1);
  v17 = *(v1 + 5);
  sub_100031694(v14, v15);
  sub_10008A490();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (*(v1 + 12) << 32 == 0x300000000)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v1 + 8);
  }

  if (v6 > 0xFF)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  sub_100031694(v14, v15);
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v7 = *(v3 + 16);
  if (v7 < -128)
  {
    goto LABEL_21;
  }

  if (v7 <= 127)
  {
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    LOBYTE(v16) = *(v3 + 24);
    sub_100031694(v14, v15);
    sub_100160B58();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v8 = *(v3 + 28);
    *(v3 + 32);
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    LOBYTE(v16) = *(v3 + 34);
    sub_100031694(v14, v15);
    sub_100160BAC();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    v9 = *(v3 + 35);
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v10 = *(v3 + 36);
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v11 = *(v3 + 37);
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v12 = *(v3 + 38);
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v13 = *(v3 + 39);
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    return sub_100002A00(v14);
  }

LABEL_22:
  __break(1u);
  return result;
}

Swift::Int sub_10015482C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

BOOL sub_100154870(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return _s7CoreP2P15AWDLActionFrameV13RealtimeGroupV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t sub_1001548BC(uint64_t a1)
{
  v2 = sub_100160C00();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001548F8(uint64_t a1)
{
  v2 = sub_100160C00();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ExtendedChannelSequence.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_10058E458, &qword_1004894E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100160C00();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

void AWDLActionFrame.PreferredChannels.PreferredChannel.hash(into:)(int a1, unint64_t a2)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(0x801004u >> ((a2 >> 29) & 0xF8));
  if (BYTE5(a2) <= 3u)
  {
    if (BYTE5(a2) == 2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a2) == 3)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(BYTE5(a2) & 1);
    goto LABEL_13;
  }

  if (BYTE5(a2) == 4)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (BYTE5(a2) == 5)
  {
    v3 = 4;
    goto LABEL_12;
  }

  if (BYTE5(a2) != 6)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  Hasher._combine(_:)(v3);
LABEL_13:
  Hasher._combine(_:)(BYTE6(a2));
}

Swift::Int AWDLActionFrame.PreferredChannels.PreferredChannel.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.PreferredChannel.hash(into:)(&v3, a1 & 0xFFFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_100154BF4()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.PreferredChannel.hash(into:)(&v6, v1 | (v2 << 32) | (v3 << 40) | (v4 << 48));
  return Hasher._finalize()();
}

Swift::Int sub_100154C78()
{
  v1 = *v0;
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.PreferredChannel.hash(into:)(&v6, v1 | (v2 << 32) | (v3 << 40) | (v4 << 48));
  return Hasher._finalize()();
}

void AWDLActionFrame.PreferredChannels.hash(into:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(0x801004u >> ((a2 >> 29) & 0xF8));
  if (BYTE5(a2) <= 3u)
  {
    if (BYTE5(a2) == 2)
    {
      v6 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a2) == 3)
    {
      v6 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(BYTE5(a2))
    {
      case 4u:
        v6 = 3;
        goto LABEL_12;
      case 5u:
        v6 = 4;
        goto LABEL_12;
      case 6u:
        v6 = 5;
LABEL_12:
        Hasher._combine(_:)(v6);
        goto LABEL_13;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(BYTE5(a2) & 1);
LABEL_13:

  sub_1000DF7BC(a1, a3);
}

Swift::Int AWDLActionFrame.PreferredChannels.hashValue.getter(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.hash(into:)(v5, a1 & 0xFFFFFFFFFFFFLL, a2);
  return Hasher._finalize()();
}

uint64_t sub_100154E48@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003DB6C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t AWDLActionFrame.PreferredChannels.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v14, v15);
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v3)
  {
    return sub_100002A00(v14);
  }

  if ((a2 & 0xFFFFFF00) != 0)
  {
    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    sub_100031694(v14, v15);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    Channel.operatingClass.getter(a2 & 0xFFFF000000FFLL);
    sub_100031694(v14, v15);
    result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v8 = *(a3 + 16);
    if (v8 <= 0xFF)
    {
      sub_100031694(v14, v15);
      result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v9 = (a3 + 38);
      v10 = v8 + 1;
      while (--v10)
      {
        v11 = *(v9 - 6);
        if (v11 > 0xFF)
        {
          goto LABEL_10;
        }

        v12 = *(v9 - 2);
        v13 = *(v9 - 1);
        v16 = *v9;
        sub_100031694(v14, v15);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        Channel.operatingClass.getter(v11 | (v12 << 32) | (v13 << 40));
        sub_100031694(v14, v15);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        v9 += 8;
        sub_100031694(v14, v15);
        result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      }

      return sub_100002A00(v14);
    }
  }

  __break(1u);
  return result;
}

Swift::Int sub_100155128()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.hash(into:)(v6, v1 | (v2 << 32) | (v3 << 40), v4);
  return Hasher._finalize()();
}

Swift::Int sub_1001551B0()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  AWDLActionFrame.PreferredChannels.hash(into:)(v6, v1 | (v2 << 32) | (v3 << 40), v4);
  return Hasher._finalize()();
}

CoreP2P::AWDLActionFrame::ProMode::Command_optional __swiftcall AWDLActionFrame.ProMode.Command.init(rawValue:)(Swift::UInt8 rawValue)
{
  if ((rawValue & 0xFC) != 0)
  {
    return 3;
  }

  else
  {
    return (0x2010003u >> (8 * rawValue));
  }
}

unsigned __int8 *sub_10015527C@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 <= 3)
  {
    v3 = 0x2010003u >> (8 * v2);
  }

  else
  {
    v3 = 3;
  }

  *a2 = v3;
  return result;
}

Swift::Int sub_100155364()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_1001553DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100155518@<X0>(_DWORD *a1@<X8>)
{
  v2 = sub_100286BF0();

  *a1 = v2;
  return result;
}

uint64_t sub_100155560()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x737574617473;
  if (*v0 != 2)
  {
    v2 = 0x7367616C66;
  }

  if (*v0)
  {
    v1 = 0x646E616D6D6F63;
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

uint64_t sub_1001555D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100165890(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1001555FC(uint64_t a1)
{
  v2 = sub_100160C54();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100155638(uint64_t a1)
{
  v2 = sub_100160C54();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t AWDLActionFrame.ProMode.encode(to:)(void *a1, __int16 a2, int a3)
{
  v5 = HIBYTE(a2);
  v7 = sub_10005DC58(&qword_10058E468, &qword_1004894E8);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14[-v10];
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100160C54();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v18 = v5;
    v17 = 1;
    sub_100160CA8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = a3;
    v14[15] = 3;
    sub_100160CFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void AWDLActionFrame.ProMode.hash(into:)(int a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = a2 >> 8;
  v5 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4 + 1);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(a3);
}

Swift::Int AWDLActionFrame.ProMode.hashValue.getter(unint64_t a1, Swift::UInt32 a2)
{
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4 + 1);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

uint64_t sub_100155994@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10015FCD0(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = HIDWORD(result);
    *(a2 + 8) = v5;
  }

  return result;
}

Swift::Int sub_1001559F4()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100155A78()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
}

Swift::Int sub_100155AD4()
{
  v1 = *(v0 + 1);
  v2 = *(v0 + 4);
  v3 = *(v0 + 8);
  v4 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

BOOL sub_100155B54(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  return a1[1] == a2[1] && *(a1 + 1) == *(a2 + 1) && *(a1 + 2) == *(a2 + 2);
}

uint64_t sub_100155C40()
{
  if (*v0)
  {
    result = 0x6574617473;
  }

  else
  {
    result = 0x6E6F6973726576;
  }

  *v0;
  return result;
}

uint64_t sub_100155C78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6574617473 && a2 == 0xE500000000000000)
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

uint64_t sub_100155D50(uint64_t a1)
{
  v2 = sub_100160D50();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100155D8C(uint64_t a1)
{
  v2 = sub_100160D50();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static AWDLActionFrame.AirDrop.__derived_struct_equals(_:_:)(__int16 a1, __int16 a2)
{
  if (a1 == a2)
  {
    return ((a2 & 0x100) == 0) ^ ((a1 & 0x100) >> 8);
  }

  else
  {
    return 0;
  }
}

uint64_t AWDLActionFrame.AirDrop.encode(to:)(void *a1, __int16 a2)
{
  v3 = HIBYTE(a2);
  v5 = sub_10005DC58(&qword_10058E488, &qword_1004894F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100160D50();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12[14] = v3 & 1;
    v12[13] = 1;
    sub_100160DA4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void AWDLActionFrame.AirDrop.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2 & 1);
}

Swift::Int AWDLActionFrame.AirDrop.hashValue.getter(__int16 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

uint64_t sub_100156008@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10015FF04(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = BYTE1(result) & 1;
  }

  return result;
}

uint64_t sub_10015603C(void *a1)
{
  if (v1[1])
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return AWDLActionFrame.AirDrop.encode(to:)(a1, v2 | *v1);
}

Swift::Int sub_10015606C()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_1001560CC()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10015610C()
{
  v1 = v0[1];
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001561CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10048DBA0[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100156254()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10048DBA0[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1001562A0@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15AWDLActionFrameV13AWDLAttributeO13AttributeTypeO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t AWDLActionFrame.AWDLAttribute.encode(to:)(void *a1)
{
  v101 = a1;
  v98 = sub_10005DC58(&qword_10058E458, &qword_1004894E0);
  v96 = *(v98 - 8);
  v2 = *(v96 + 64);
  __chkstk_darwin();
  v92 = &v91 - v3;
  v99 = sub_10005DC58(&qword_10058E418, &qword_1004894D0);
  v97 = *(v99 - 8);
  v4 = *(v97 + 64);
  __chkstk_darwin();
  v93 = &v91 - v5;
  v6 = sub_10005DC58(&qword_10058E388, &qword_100489490);
  v94 = *(v6 - 8);
  v95 = v6;
  v7 = *(v94 + 64);
  __chkstk_darwin();
  v91 = &v91 - v8;
  v9 = *(*(type metadata accessor for AWDLActionFrame.DataPathState(0) - 8) + 64);
  __chkstk_darwin();
  v11 = &v91 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(type metadata accessor for AWDLActionFrame.ServiceResponse(0) - 8) + 64);
  __chkstk_darwin();
  v14 = &v91 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(type metadata accessor for AWDLActionFrame.AWDLAttribute(0) - 8) + 64);
  __chkstk_darwin();
  v17 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100033AA8(_swiftEmptyArrayStorage);
  v19 = type metadata accessor for BinaryEncoder();
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_100480A90;
  v100 = v20 + 16;
  v21 = v20;
  *(v20 + 32) = v18;
  v102 = v1;
  sub_10003B86C(v1, v17, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v23 = v119;
  v24 = v21;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_100039054(v17, v14, type metadata accessor for AWDLActionFrame.ServiceResponse);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.ServiceResponse.encode(to:)(v106);
      if (v23)
      {
        sub_10003B934(v14, type metadata accessor for AWDLActionFrame.ServiceResponse);
        goto LABEL_72;
      }

      v79 = type metadata accessor for AWDLActionFrame.ServiceResponse;
      v80 = v14;
      goto LABEL_56;
    case 2:
      v50 = *(v17 + 1);
      v109[0] = *v17;
      v109[1] = v50;
      v109[2] = *(v17 + 2);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.SynchronizationParameter.encode(to:)(v106);
      if (v23)
      {
        sub_100160E4C(v109);
        goto LABEL_72;
      }

      sub_100160E4C(v109);
      goto LABEL_57;
    case 3:
      v98 = *v17;
      v97 = *(v17 + 1);
      v96 = v17[4];
      v34 = v17[5];
      v35 = v17[6];
      v36 = v17[16];
      v37 = v17[24];
      v38 = v17[7];
      v99 = *(v17 + 1);
      v39 = *(v17 + 5);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      v105 = v36 & 1;
      LOBYTE(v103) = v37 & 1;
      v40 = v119;
      AWDLActionFrame.DeprecatedElectionParameter.encode(to:)(v106);
      v23 = v40;
      if (v40)
      {
        goto LABEL_72;
      }

      sub_100002A00(v106);
      v24 = v21;
      goto LABEL_58;
    case 4:
      v58 = *v17;
      v107 = &type metadata for BinaryEncoder.UnkeyedContainer;
      v108 = sub_1000D12E4();
      v106[0] = v21;

      sub_1001587A0(v106, 3u, v58);
      if (v23)
      {
        goto LABEL_44;
      }

      sub_100031694(v106, v107);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v106, v107);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      goto LABEL_57;
    case 5:
      v63 = *v17;
      v64 = *(v17 + 1);
      v65 = *(v17 + 2);
      LODWORD(v99) = *(v17 + 2);
      v47 = *(v17 + 2);
      v48 = *(v17 + 3);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;
      v24 = v21;

      v49 = v23;
      AWDLActionFrame.ServiceParameter.encode(to:)(v106, v63, v99, v47, v48);
      goto LABEL_37;
    case 6:
      sub_100039054(v17, v11, type metadata accessor for AWDLActionFrame.DataPathState);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.DataPathState.encode(to:)(v106);
      if (v23)
      {
        sub_10003B934(v11, type metadata accessor for AWDLActionFrame.DataPathState);
        goto LABEL_72;
      }

      v79 = type metadata accessor for AWDLActionFrame.DataPathState;
      v80 = v11;
LABEL_56:
      sub_10003B934(v80, v79);
      goto LABEL_57;
    case 7:
      v71 = *(v17 + 1);
      v70 = *(v17 + 2);
      v72 = *v17;
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.Arpa.encode(to:)(v106, v72, v71, v70);
      if (v23)
      {
        goto LABEL_44;
      }

      goto LABEL_47;
    case 8:
      v42 = *v17;
      v106[0] = v21;
      swift_retain_n();
      sub_10005DC58(&qword_10058E4C8, &qword_100489508);
      sub_10000CADC(&qword_10058E4D0, &qword_10058E4C8, &qword_100489508);
      v43 = v91;
      KeyedEncodingContainer.init<A>(_:)();
      v106[0] = v42;
      sub_10005DC58(&qword_10058E398, &qword_100489498);
      sub_10004B1E4(&qword_10058E3A0, sub_10008A490);
      v44 = v95;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v23)
      {
        (*(v94 + 8))(v43, v44);
      }

      (*(v94 + 8))(v43, v44);

      goto LABEL_58;
    case 9:
      v69 = *v17;
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.Version.encode(to:)(v106, v69);
      if (!v23)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 10:
      v32 = *(v17 + 1);
      v33 = *v17;
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.PeerMACAddressListBloomFilter.encode(to:)(v106, v33, v32);
      if (!v23)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    case 11:
      v41 = *(v17 + 1);
      v111[2] = *v17;
      v111[3] = v41;
      v112 = *(v17 + 4);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.NANSynchronization.encode(to:)(v106);
      if (!v23)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 12:
      v62 = *(v17 + 1);
      v113 = *v17;
      v114 = v62;
      v115 = *(v17 + 2);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.ElectionParameter.encode(to:)(v106);
      if (!v23)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 13:
      v31 = *(v17 + 1);
      v110[0] = *v17;
      v110[1] = v31;
      v111[0] = *(v17 + 2);
      *(v111 + 9) = *(v17 + 41);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      IEEE80211InformationElement.encode(to:)(v106);
      if (v23)
      {
        sub_1000C2E24(v110);
        goto LABEL_72;
      }

      sub_1000C2E24(v110);
      goto LABEL_57;
    case 14:
      v45 = *v17;
      v46 = v17[4];
      v47 = *(v17 + 1);
      v48 = *(v17 + 2);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v24;

      v49 = v23;
      IEEE80211InformationElement.HighThroughputCapability.encode(to:)(v106, v45 | (v46 << 32), v47, v48);
LABEL_37:
      v23 = v49;
      v66 = v47;
      v67 = v48;
      if (v49)
      {
        goto LABEL_71;
      }

      sub_1000124C8(v47, v48);
      goto LABEL_57;
    case 15:
      v27 = *v17;
      v106[0] = v21;

      sub_10005DC58(&qword_10058E4B8, &qword_100489500);
      sub_10000CADC(&qword_10058E4C0, &qword_10058E4B8, &qword_100489500);
      v28 = v93;
      KeyedEncodingContainer.init<A>(_:)();
      LOBYTE(v106[0]) = v27;
      sub_100160A5C();
      v29 = v99;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v23)
      {

        return (*(v97 + 8))(v28, v29);
      }

      (*(v97 + 8))(v28, v29);
      goto LABEL_58;
    case 16:
      v51 = v17[2];
      v52 = *(v17 + 3);
      v53 = *v17;
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.Ranging.encode(to:)(v106, v53 | (v51 << 16) | (v52 << 24));
      if (!v23)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 17:
      v68 = *(v17 + 1);
      v116 = *v17;
      v117 = v68;
      v118 = *(v17 + 4);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.RealtimeGroup.encode(to:)(v106);
      if (!v23)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 18:
      v74 = *v17;
      v75 = v17[4];
      v76 = v17[5];
      v77 = *(v17 + 1);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;
      v78 = v74 | (v75 << 32) | (v76 << 40);
      v24 = v21;

      AWDLActionFrame.PreferredChannels.encode(to:)(v106, v78, v77);
      if (!v23)
      {
        goto LABEL_47;
      }

      goto LABEL_44;
    case 19:
      v54 = *v17;
      v57 = v17 + 4;
      v56 = *(v17 + 1);
      v55 = *(v57 + 1);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.ProMode.encode(to:)(v106, v54, v55);
      if (!v23)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 20:
      v59 = *v17;
      v60 = v17[1];
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;
      if (v60)
      {
        v61 = 256;
      }

      else
      {
        v61 = 0;
      }

      AWDLActionFrame.AirDrop.encode(to:)(v106, v61 | v59);
      if (!v23)
      {
        goto LABEL_57;
      }

      goto LABEL_72;
    case 21:
      goto LABEL_58;
    case 22:
      v106[0] = v21;

      sub_10005DC58(&qword_10058E4A8, &qword_1004894F8);
      sub_10000CADC(&qword_10058E4B0, &qword_10058E4A8, &qword_1004894F8);
      v73 = v92;
      KeyedEncodingContainer.init<A>(_:)();
      (*(v96 + 8))(v73, v98);
      goto LABEL_58;
    default:
      v25 = *v17;
      v26 = *(v17 + 1);
      v107 = v19;
      v108 = sub_1000348B8(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v106[0] = v21;

      AWDLActionFrame.ServiceRequest.encode(to:)(v106, v25, v26);
      if (v23)
      {
LABEL_44:

        return sub_100002A00(v106);
      }

LABEL_47:

LABEL_57:
      sub_100002A00(v106);
LABEL_58:
      v81 = v101[4];
      sub_100029B34(v101, v101[3]);
      dispatch thunk of Encoder.unkeyedContainer()();
      v105 = AWDLActionFrame.AWDLAttribute.attributeType.getter();
      sub_100031694(v106, v107);
      sub_100160DF8();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      if (v23)
      {
        goto LABEL_72;
      }

      result = swift_beginAccess();
      v82 = *(v24 + 16);
      v83 = *(v24 + 24) >> 62;
      if (v83 > 1)
      {
        if (v83 != 2)
        {
          goto LABEL_70;
        }

        v85 = v82 + 16;
        v82 = *(v82 + 16);
        v84 = *(v85 + 8);
        v86 = v84 - v82;
        if (!__OFSUB__(v84, v82))
        {
          goto LABEL_68;
        }

        __break(1u);
      }

      else if (!v83)
      {
LABEL_70:
        sub_100031694(v106, v107);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        v90 = *(v24 + 24);
        v103 = *(v24 + 16);
        v89 = v103;
        v104 = v90;
        sub_100031694(v106, v107);
        sub_10000AB0C(v89, v90);
        sub_1000B8088();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        v66 = v103;
        v67 = v104;
LABEL_71:
        sub_1000124C8(v66, v67);
LABEL_72:

        return sub_100002A00(v106);
      }

      v87 = __OFSUB__(HIDWORD(v82), v82);
      v88 = HIDWORD(v82) - v82;
      if (v87)
      {
        goto LABEL_76;
      }

      v86 = v88;
LABEL_68:
      if ((v86 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      else if (!(v86 >> 16))
      {
        goto LABEL_70;
      }

      __break(1u);
LABEL_76:
      __break(1u);
      return result;
  }
}

uint64_t AWDLActionFrame.AWDLAttribute.attributeType.getter()
{
  v1 = *(*(type metadata accessor for AWDLActionFrame.AWDLAttribute(0) - 8) + 64);
  __chkstk_darwin();
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B86C(v0, v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 2;
      break;
    case 2:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 3;
      break;
    case 3:
      result = 4;
      break;
    case 4:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 10;
      break;
    case 5:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 5;
      break;
    case 6:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 7;
      break;
    case 7:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 8;
      break;
    case 8:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 11;
      break;
    case 9:
      result = 12;
      break;
    case 10:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 13;
      break;
    case 11:
      result = 14;
      break;
    case 12:
      result = 15;
      break;
    case 13:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 9;
      break;
    case 14:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 6;
      break;
    case 15:
      result = 16;
      break;
    case 16:
      result = 17;
      break;
    case 17:
      result = 18;
      break;
    case 18:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 20;
      break;
    case 19:
      result = 21;
      break;
    case 20:
      result = 22;
      break;
    case 21:
      return result;
    case 22:
      result = 19;
      break;
    default:
      sub_10003B934(v3, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      result = 1;
      break;
  }

  return result;
}

void AWDLActionFrame.AWDLAttribute.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for AWDLActionFrame.DataPathState(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v102 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for AWDLActionFrame.ServiceResponse(0) - 8) + 64);
  __chkstk_darwin();
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*(type metadata accessor for AWDLActionFrame.AWDLAttribute(0) - 8) + 64);
  __chkstk_darwin();
  v12 = &v102 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10003B86C(v2, v12, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      sub_100039054(v12, v9, type metadata accessor for AWDLActionFrame.ServiceResponse);
      Hasher._combine(_:)(2uLL);
      AWDLActionFrame.ServiceResponse.hash(into:)();
      sub_10003B934(v9, type metadata accessor for AWDLActionFrame.ServiceResponse);
      return;
    case 2u:
      v52 = *(v12 + 1);
      v121 = *v12;
      v122 = v52;
      v123[0] = *(v12 + 2);
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v121);
      Hasher._combine(_:)(WORD1(v121));
      Hasher._combine(_:)(BYTE4(v121));
      Hasher._combine(_:)(BYTE5(v121));
      Hasher._combine(_:)(WORD3(v121));
      Hasher._combine(_:)(WORD4(v121));
      Hasher._combine(_:)(WORD5(v121));
      Hasher._combine(_:)(WORD6(v121));
      Hasher._combine(_:)(HIWORD(v121));
      Hasher._combine(_:)(v122);
      Hasher._combine(_:)(BYTE2(v122));
      Hasher._combine(_:)(BYTE3(v122));
      Hasher._combine(_:)(BYTE4(v122));
      Hasher._combine(_:)(BYTE5(v122));
      v53 = BYTE7(v122);
      v54 = BYTE8(v122);
      v55 = BYTE9(v122);
      v56 = BYTE10(v122);
      v57 = BYTE11(v122);
      Hasher._combine(_:)(BYTE6(v122));
      Hasher._combine(_:)(v53);
      Hasher._combine(_:)(v54);
      Hasher._combine(_:)(v55);
      Hasher._combine(_:)(v56);
      Hasher._combine(_:)(v57);
      Hasher._combine(_:)(BYTE12(v122));
      Hasher._combine(_:)(BYTE13(v122));
      Hasher._combine(_:)(HIWORD(v122));
      Hasher._combine(_:)(v123[0]);
      ChannelSequence.hash(into:)(a1, *(&v123[0] + 1));
      sub_100160E4C(&v121);
      return;
    case 3u:
      v118 = *v12;
      v59 = *(v12 + 1);
      v60 = v12[4];
      v61 = v12[5];
      v62 = v12[6];
      v63 = v12[16];
      v64 = v12[24];
      v65 = v12[7];
      v119 = *(v12 + 1);
      v66 = *(v12 + 5);
      Hasher._combine(_:)(4uLL);
      LOBYTE(v121) = v63 & 1;
      v120 = v64 & 1;
      AWDLActionFrame.DeprecatedElectionParameter.hash(into:)(a1, v118 | (v59 << 16) | (v60 << 32) | (v61 << 40) | (v62 << 48) | (v65 << 56), v119, v63 & 1 | (v66 << 32), v64 & 1);
      return;
    case 4u:
      v48 = *v12;
      Hasher._combine(_:)(5uLL);
      ChannelSequence.hash(into:)(a1, v48);
      goto LABEL_33;
    case 5u:
      v72 = *(v12 + 2);
      v73 = *(v12 + 2);
      v74 = *(v12 + 3);
      v75 = *v12;
      v76 = *(v12 + 1);
      v77 = *(v12 + 2);
      Hasher._combine(_:)(6uLL);
      Hasher._combine(_:)(v75);
      Hasher._combine(_:)(v76);
      Hasher._combine(_:)(v77);
      Hasher._combine(_:)(v72);
      Data.hash(into:)();
      sub_1000124C8(v73, v74);
      return;
    case 6u:
      sub_100039054(v12, v6, type metadata accessor for AWDLActionFrame.DataPathState);
      Hasher._combine(_:)(7uLL);
      AWDLActionFrame.DataPathState.hash(into:)();
      sub_10003B934(v6, type metadata accessor for AWDLActionFrame.DataPathState);
      return;
    case 7u:
      v67 = *(v12 + 1);
      v68 = *(v12 + 2);
      v69 = *v12;
      Hasher._combine(_:)(8uLL);
      Hasher._combine(_:)(v69);
      String.hash(into:)();

      return;
    case 8u:
      v89 = *v12;
      Hasher._combine(_:)(9uLL);
      Hasher._combine(_:)(*(v89 + 16));
      v90 = *(v89 + 16);
      if (v90)
      {
        v91 = (v89 + 37);
        do
        {
          v92 = *(v91 - 5);
          v93 = *(v91 - 4);
          v94 = *(v91 - 3);
          v95 = *(v91 - 2);
          v96 = *(v91 - 1);
          v97 = *v91;
          v91 += 6;
          Hasher._combine(_:)(v92);
          Hasher._combine(_:)(v93);
          Hasher._combine(_:)(v94);
          Hasher._combine(_:)(v95);
          Hasher._combine(_:)(v96);
          Hasher._combine(_:)(v97);
          --v90;
        }

        while (v90);
      }

      goto LABEL_33;
    case 9u:
      v50 = *v12;
      v51 = v12[1];
      Hasher._combine(_:)(0xAuLL);
      Hasher._combine(_:)(v50);
      v25 = v51;
      goto LABEL_20;
    case 0xAu:
      v84 = *(v12 + 1);
      v85 = *v12;
      v86 = v12[1];
      Hasher._combine(_:)(0xBuLL);
      Hasher._combine(_:)(v85);
      Hasher._combine(_:)(v86);
      Hasher._combine(_:)(*(v84 + 16));
      v87 = *(v84 + 16);
      if (v87)
      {
        v88 = 32;
        do
        {
          Hasher._combine(_:)(*(v84 + v88++));
          --v87;
        }

        while (v87);
      }

      goto LABEL_33;
    case 0xBu:
      v110 = *(v12 + 2);
      LODWORD(v119) = *(v12 + 9);
      v31 = *v12;
      v32 = v12[2];
      v33 = v12[3];
      v34 = v12[4];
      v35 = v12[5];
      v36 = v12[6];
      v37 = v12[7];
      v38 = v12[8];
      v39 = v12[10];
      v102 = v12[9];
      v103 = v39;
      v40 = v12[12];
      v104 = v12[11];
      v105 = v40;
      v41 = v12[24];
      v106 = v12[13];
      v107 = v41;
      v42 = v12[26];
      v108 = v12[25];
      v109 = v42;
      v43 = v12[28];
      v111 = v12[27];
      v112 = v43;
      v44 = v12[30];
      v113 = v12[29];
      v114 = v44;
      v45 = v12[32];
      v115 = v12[31];
      v116 = v45;
      v46 = *(v12 + 17);
      v117 = v12[33];
      LODWORD(v118) = v46;
      Hasher._combine(_:)(0xCuLL);
      Hasher._combine(_:)(v31);
      Hasher._combine(_:)(v32);
      Hasher._combine(_:)(v33);
      Hasher._combine(_:)(v34);
      Hasher._combine(_:)(v35);
      Hasher._combine(_:)(v36);
      Hasher._combine(_:)(v37);
      Hasher._combine(_:)(v38);
      Hasher._combine(_:)(v102);
      Hasher._combine(_:)(v103);
      Hasher._combine(_:)(v104);
      Hasher._combine(_:)(v105);
      Hasher._combine(_:)(v106);
      Hasher._combine(_:)(v110);
      Hasher._combine(_:)(v107);
      Hasher._combine(_:)(v108);
      Hasher._combine(_:)(v109);
      Hasher._combine(_:)(v111);
      Hasher._combine(_:)(v112);
      Hasher._combine(_:)(v113);
      Hasher._combine(_:)(v114);
      Hasher._combine(_:)(v115);
      Hasher._combine(_:)(v116);
      Hasher._combine(_:)(v117);
      Hasher._combine(_:)(v118);
      v47 = v119;
      goto LABEL_37;
    case 0xCu:
      v49 = *(v12 + 1);
      v121 = *v12;
      v122 = v49;
      v123[0] = *(v12 + 2);
      Hasher._combine(_:)(0xDuLL);
      AWDLActionFrame.ElectionParameter.hash(into:)();
      return;
    case 0xDu:
      v79 = *(v12 + 1);
      v121 = *v12;
      v122 = v79;
      v123[0] = *(v12 + 2);
      *(v123 + 9) = *(v12 + 41);
      Hasher._combine(_:)(0xEuLL);
      IEEE80211InformationElement.hash(into:)(a1);
      sub_1000C2E24(&v121);
      return;
    case 0xEu:
      v26 = *(v12 + 1);
      v27 = *(v12 + 2);
      v28 = *v12;
      v29 = *(v12 + 1);
      v30 = v12[4];
      Hasher._combine(_:)(0xFuLL);
      Hasher._combine(_:)(v28);
      Hasher._combine(_:)(v29);
      Hasher._combine(_:)(v30);
      Data.hash(into:)();
      sub_1000124C8(v26, v27);
      return;
    case 0xFu:
      v58 = *v12;
      Hasher._combine(_:)(0x10uLL);
      goto LABEL_19;
    case 0x10u:
      v18 = *v12;
      v19 = v12[1];
      v20 = v12[2];
      v21 = v12[3];
      v22 = v12[4];
      v23 = v12[5];
      v24 = v12[6];
      Hasher._combine(_:)(0x11uLL);
      Hasher._combine(_:)(v18);
      Hasher._combine(_:)(v19);
      Hasher._combine(_:)(v20);
      Hasher._combine(_:)(v21);
      Hasher._combine(_:)(v22);
      Hasher._combine(_:)(v23);
      v25 = v24;
      goto LABEL_20;
    case 0x11u:
      v70 = *(v12 + 1);
      v121 = *v12;
      v122 = v70;
      *&v123[0] = *(v12 + 4);
      Hasher._combine(_:)(0x12uLL);
      AWDLActionFrame.RealtimeGroup.hash(into:)();
      return;
    case 0x12u:
      v80 = *v12;
      v81 = v12[4];
      v82 = v12[5];
      v83 = *(v12 + 1);
      Hasher._combine(_:)(0x14uLL);
      AWDLActionFrame.PreferredChannels.hash(into:)(a1, v80 | (v81 << 32) | (v82 << 40), v83);
      goto LABEL_33;
    case 0x13u:
      v98 = v12[1];
      v99 = *(v12 + 1);
      v100 = *(v12 + 2);
      v101 = *v12;
      Hasher._combine(_:)(0x15uLL);
      Hasher._combine(_:)(v101);
      Hasher._combine(_:)(v98 + 1);
      Hasher._combine(_:)(v99);
      v47 = v100;
LABEL_37:
      Hasher._combine(_:)(v47);
      return;
    case 0x14u:
      v58 = v12[1];
      v71 = *v12;
      Hasher._combine(_:)(0x16uLL);
      Hasher._combine(_:)(v71);
LABEL_19:
      v25 = v58;
LABEL_20:
      Hasher._combine(_:)(v25);
      return;
    case 0x15u:
      v78 = 0;
      goto LABEL_35;
    case 0x16u:
      v78 = 19;
LABEL_35:
      Hasher._combine(_:)(v78);
      break;
    default:
      v13 = *(v12 + 1);
      v14 = *v12;
      v15 = *(v12 + 1);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v14);
      Hasher._combine(_:)(v15);
      Hasher._combine(_:)(*(v13 + 16));
      v16 = *(v13 + 16);
      if (v16)
      {
        v17 = 32;
        do
        {
          Hasher._combine(_:)(*(v13 + v17++));
          --v16;
        }

        while (v16);
      }

LABEL_33:

      break;
  }
}

void AWDLActionFrame.hash(into:)(__int128 *a1, unint64_t a2, Swift::UInt32 a3, uint64_t a4)
{
  v6 = a2;
  v8 = a2 >> 16;
  v9 = HIDWORD(a2);
  Hasher._combine(_:)(8u);
  Hasher._combine(_:)(v6);
  if ((v6 & 0x100) != 0)
  {
    v10 = 3;
  }

  else
  {
    v10 = 0;
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(a3);
  v11 = *(a4 + 16);
  Hasher._combine(_:)(v11);
  if (v11)
  {
    v12 = *(type metadata accessor for AWDLActionFrame.AWDLAttribute(0) - 8);
    v13 = a4 + ((*(v12 + 80) + 32) & ~*(v12 + 80));
    v14 = *(v12 + 72);
    do
    {
      AWDLActionFrame.AWDLAttribute.hash(into:)(a1);
      v13 += v14;
      --v11;
    }

    while (v11);
  }
}

Swift::Int AWDLActionFrame.hashValue.getter(uint64_t a1, Swift::UInt32 a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  AWDLActionFrame.hash(into:)(v7, a1 & 0xFFFFFFFF00FF01FFLL, a2, a3);
  return Hasher._finalize()();
}

uint64_t sub_100158398(void *a1)
{
  v2 = 256;
  if (!v1[1])
  {
    v2 = 0;
  }

  v1[2];
  *(v1 + 1);
  return AWDLActionFrame.encode(to:)(a1, v2 | *v1, *(v1 + 2), *(v1 + 2));
}

uint64_t AWDLActionFrame.encode(to:)(void *a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v9, v10);
  sub_100160E7C();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    LOBYTE(v11) = a2;
    sub_100031694(v9, v10);
    sub_1001608B8();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    LOBYTE(v11) = HIBYTE(a2) & 1;
    sub_100031694(v9, v10);
    sub_100160ED0();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v9, v10);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v9, v10);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v9, v10);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v11 = a4;
    sub_100031694(v9, v10);
    sub_10005DC58(&qword_10058E4E8, &qword_100489510);
    sub_100160F24();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v9);
}

Swift::Int sub_100158610()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 2);
  v7 = v0 + 4;
  v5 = *(v0 + 1);
  v6 = *(v7 + 1);
  Hasher.init(_seed:)();
  v8 = 256;
  if (!v2)
  {
    v8 = 0;
  }

  AWDLActionFrame.hash(into:)(v10, v8 | v1 | (v3 << 16) | (v5 << 32), v6, v4);
  return Hasher._finalize()();
}

void sub_100158694(__int128 *a1)
{
  v2 = 256;
  if (!v1[1])
  {
    v2 = 0;
  }

  AWDLActionFrame.hash(into:)(a1, v2 | *v1 | (v1[2] << 16) | (*(v1 + 1) << 32), *(v1 + 2), *(v1 + 2));
}

Swift::Int sub_1001586C4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 2);
  v7 = v0 + 4;
  v5 = *(v0 + 1);
  v6 = *(v7 + 1);
  Hasher.init(_seed:)();
  v8 = 256;
  if (!v2)
  {
    v8 = 0;
  }

  AWDLActionFrame.hash(into:)(v10, v8 | v1 | (v3 << 16) | (v5 << 32), v6, v4);
  return Hasher._finalize()();
}

uint64_t sub_100158744(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 2);
  v3 = 256;
  if (a1[1])
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

  v5 = *(a1 + 2);
  v6 = v4 | *a1 | (a1[2] << 16) | (*(a1 + 1) << 32);
  if (!a2[1])
  {
    v3 = 0;
  }

  return static AWDLActionFrame.__derived_struct_equals(_:_:)(v6, v5, v2, v3 | *a2 | (a2[2] << 16) | (*(a2 + 1) << 32), *(a2 + 2), *(a2 + 2));
}

uint64_t sub_1001587A0(uint64_t result, unsigned __int8 a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
LABEL_43:
    __break(1u);
    return result;
  }

  if ((v4 - 1) > 0xFF)
  {
    __break(1u);
LABEL_40:
    __break(1u);
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  v7 = result;
  v8 = *(result + 32);
  sub_100031694(result, *(result + 24));
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v3)
  {
    return result;
  }

  v9 = *(v7 + 32);
  sub_100031694(v7, *(v7 + 24));
  sub_100165E9C();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v10 = *(v7 + 32);
  sub_100031694(v7, *(v7 + 24));
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v11 = *(v7 + 32);
  sub_100031694(v7, *(v7 + 24));
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v12 = *(v7 + 32);
  sub_100031694(v7, *(v7 + 24));
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (a2 - 2 >= 2)
  {
    if (a2)
    {
      for (i = (a3 + 32); ; i += 2)
      {
        v23 = *i | (*(i + 2) << 32);
        if ((v23 & 0xFF00000000) == 0x300000000)
        {
          v24 = *(v7 + 32);
          sub_100031694(v7, *(v7 + 24));
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          v25 = *(v7 + 32);
          sub_100031694(v7, *(v7 + 24));
          result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        }

        else
        {
          v26 = sub_10015F33C(SBYTE4(v23), BYTE5(v23));
          v27 = *(v7 + 32);
          sub_100031694(v7, *(v7 + 24));
          sub_100165EF0();
          dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
          result = sub_100038CD4(0, 2uLL, v26);
          if (result == 2 && v23 > 2)
          {
            LODWORD(v23) = v23 - 2;
          }

          else
          {
            result = sub_100038CD4(0, 2uLL, v26);
            if (v23 < 0xDE && result == 1)
            {
              LODWORD(v23) = v23 + 2;
            }
          }

          if (v23 > 0xFF)
          {
            goto LABEL_42;
          }

          v30 = *(v7 + 32);
          sub_100031694(v7, *(v7 + 24));
          result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        }

        if (!--v4)
        {
          return result;
        }
      }
    }

    for (j = a3 + 32; ; j += 8)
    {
      v20 = *(j + 4) << 32 == 0x300000000 ? 0 : *j;
      if (v20 > 0xFF)
      {
        break;
      }

      v21 = *(v7 + 32);
      sub_100031694(v7, *(v7 + 24));
      result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (!--v4)
      {
        return result;
      }
    }

    goto LABEL_40;
  }

  v13 = (a3 + 32);
  do
  {
    v14 = *v13 | (*(v13 + 2) << 32);
    if ((v14 & 0xFF00000000) == 0x300000000)
    {
      v15 = *(v7 + 32);
      sub_100031694(v7, *(v7 + 24));
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v16 = *(v7 + 32);
      sub_100031694(v7, *(v7 + 24));
    }

    else
    {
      if ((*v13 & 0xFFFFFF00) != 0)
      {
        goto LABEL_41;
      }

      v17 = *(v7 + 32);
      sub_100031694(v7, *(v7 + 24));
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      Channel.operatingClass.getter(v14);
      v18 = *(v7 + 32);
      sub_100031694(v7, *(v7 + 24));
    }

    result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    v13 += 2;
    --v4;
  }

  while (v4);
  return result;
}

uint64_t AWDLActionFrame.Header.channel.setter(uint64_t result)
{
  *(v1 + 12) = result;
  *(v1 + 16) = BYTE4(result);
  *(v1 + 17) = BYTE5(result);
  return result;
}

Swift::Int sub_100158D3C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100158D84()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t AWDLActionFrame.Header.dwellTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 32);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AWDLActionFrame.Header.dwellTime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 32);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AWDLActionFrame.Header.lifetime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 36);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AWDLActionFrame.Header.lifetime.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 36);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t AWDLActionFrame.Header.token.setter(int a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.rate.setter(int a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 44)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.rssi.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 48)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.mactime.setter(int a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 52)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.tsf.setter(uint64_t a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 56)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.chainRSSIPresent.setter(int a1)
{
  result = type metadata accessor for AWDLActionFrame.Header(0);
  *(v1 + *(result + 60)) = a1;
  return result;
}

uint64_t AWDLActionFrame.Header.chainRSSI.getter()
{
  v1 = *(v0 + *(type metadata accessor for AWDLActionFrame.Header(0) + 64));
}

uint64_t AWDLActionFrame.Header.chainRSSI.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for AWDLActionFrame.Header(0) + 64);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

void AWDLActionFrame.Header.hash(into:)()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v49 = *(v1 - 8);
  v2 = *(v49 + 64);
  __chkstk_darwin();
  v48 = (&v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v5 = (&v46 - v4);
  v6 = *(v0 + 1);
  v7 = *(v0 + 2);
  v8 = *(v0 + 3);
  v9 = *(v0 + 4);
  v10 = *(v0 + 5);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  v11 = *(v0 + 7);
  v12 = *(v0 + 8);
  v13 = *(v0 + 9);
  v14 = *(v0 + 10);
  v15 = *(v0 + 11);
  Hasher._combine(_:)(*(v0 + 6));
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  v16 = *(v0 + 16);
  v17 = *(v0 + 17);
  Hasher._combine(_:)(*(v0 + 12));
  Hasher._combine(_:)(0x801004u >> (8 * v16));
  if (v17 <= 3)
  {
    if (v17 != 2)
    {
      v18 = v49;
      if (v17 == 3)
      {
        v19 = 1;
        goto LABEL_11;
      }

      goto LABEL_14;
    }

    v20 = 0;
LABEL_13:
    Hasher._combine(_:)(v20);
    v18 = v49;
    goto LABEL_15;
  }

  if (v17 == 4)
  {
    v20 = 3;
    goto LABEL_13;
  }

  v18 = v49;
  if (v17 == 5)
  {
    v19 = 4;
    goto LABEL_11;
  }

  if (v17 == 6)
  {
    v19 = 5;
LABEL_11:
    Hasher._combine(_:)(v19);
    goto LABEL_15;
  }

LABEL_14:
  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(v17 & 1);
LABEL_15:
  Hasher._combine(_:)(*(v0 + 20));
  v21 = type metadata accessor for AWDLActionFrame.Header(0);
  v22 = v0 + v21[8];
  v47 = *(v18 + 16);
  v47(v5, v22, v1);
  v23 = *(v18 + 88);
  v24 = v23(v5, v1);
  v25 = enum case for DispatchTimeInterval.seconds(_:);
  if (v24 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v18 + 96))(v5, v1);
    v26 = *v5;
    v27 = 1000000000;
LABEL_19:
    v28 = v26 * v27;
    v29 = (v26 * v27) >> 64 != (v26 * v27) >> 63;
    v30 = v26 <= 0;
    v31 = 0x7FFFFFFFFFFFFFFFLL;
    if (v30)
    {
      v31 = 0x8000000000000000;
    }

    if (v29)
    {
      v32 = v31;
    }

    else
    {
      v32 = v28;
    }

    v33 = v48;
    goto LABEL_25;
  }

  if (v24 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v49 + 96))(v5, v1);
    v26 = *v5;
    v27 = 1000000;
    goto LABEL_19;
  }

  v33 = v48;
  if (v24 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v49 + 96))(v5, v1);
    v37 = 0x7FFFFFFFFFFFFFFFLL;
    if (*v5 <= 0)
    {
      v37 = 0x8000000000000000;
    }

    if ((*v5 * 1000) >> 64 == (1000 * *v5) >> 63)
    {
      v32 = 1000 * *v5;
    }

    else
    {
      v32 = v37;
    }
  }

  else if (v24 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v49 + 96))(v5, v1);
    v32 = *v5;
  }

  else
  {
    if (v24 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v49 + 8))(v5, v1);
    }

    v32 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_25:
  Hasher._combine(_:)(v32);
  v47(v33, v0 + v21[9], v1);
  v34 = v23(v33, v1);
  if (v34 == v25)
  {
    (*(v49 + 96))(v33, v1);
    v35 = *v33;
    v36 = 1000000000;
LABEL_37:
    v38 = v35 * v36;
    v39 = (v35 * v36) >> 64 != (v35 * v36) >> 63;
    v30 = v35 <= 0;
    v40 = 0x7FFFFFFFFFFFFFFFLL;
    if (v30)
    {
      v40 = 0x8000000000000000;
    }

    if (v39)
    {
      v41 = v40;
    }

    else
    {
      v41 = v38;
    }

    goto LABEL_42;
  }

  if (v34 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v49 + 96))(v33, v1);
    v35 = *v33;
    v36 = 1000000;
    goto LABEL_37;
  }

  if (v34 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v49 + 96))(v33, v1);
    v35 = *v33;
    v36 = 1000;
    goto LABEL_37;
  }

  if (v34 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v49 + 96))(v33, v1);
    v41 = *v33;
  }

  else
  {
    if (v34 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v49 + 8))(v33, v1);
    }

    v41 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_42:
  Hasher._combine(_:)(v41);
  Hasher._combine(_:)(*(v0 + v21[10]));
  Hasher._combine(_:)(*(v0 + v21[11]));
  Hasher._combine(_:)(*(v0 + v21[12]));
  Hasher._combine(_:)(*(v0 + v21[13]));
  Hasher._combine(_:)(*(v0 + v21[14]));
  Hasher._combine(_:)(*(v0 + v21[15]));
  v42 = *(v0 + v21[16]);
  Hasher._combine(_:)(*(v42 + 16));
  v43 = *(v42 + 16);
  if (v43)
  {
    v44 = (v42 + 32);
    do
    {
      v45 = *v44++;
      Hasher._combine(_:)(v45);
      --v43;
    }

    while (v43);
  }
}

Swift::Int sub_100159A98(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_100159AF8(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_100159B5C(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t sub_100159BA0(uint64_t *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:_:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + 8 * v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10015ADD0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_100159C80(void *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = *(*v2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();

  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v15 = v14;
      if (v13 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v15 == v16)
      {

        goto LABEL_12;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    v23 = *(*(v6 + 48) + 8 * v10);
    *a1 = v23;
    v24 = v23;
    return 0;
  }

  else
  {
LABEL_9:
    v19 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v25 = *v3;
    v21 = a2;
    sub_10015AEF0(v21, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v25;
    *a1 = v21;
    return 1;
  }
}

uint64_t sub_100159E2C(uint64_t a1, uint64_t a2)
{
  v38 = a1;
  v4 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = &v35 - v8;
  v36 = v2;
  v9 = *v2;
  v10 = *(*v2 + 40);
  Hasher.init(_seed:)();
  v11 = *(a2 + 8);
  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = *(a2 + 32);
  v15 = *(a2 + 40);
  v37 = a2;
  v16 = *(a2 + 41);
  v46 = v12;
  v47 = v11;
  String.lowercased()();
  String.hash(into:)();

  v41 = v14;
  v42 = v13;
  String.lowercased()();
  String.hash(into:)();

  if (v15)
  {
    v17 = 7365749;
  }

  else
  {
    v17 = 7365492;
  }

  String.hash(into:)();

  v39 = v16;
  Hasher._combine(_:)(v16);
  v18 = Hasher._finalize()();
  v48 = v9;
  v19 = -1 << *(v9 + 32);
  v20 = v18 & ~v19;
  v45 = v9 + 56;
  if ((*(v9 + 56 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20))
  {
    v40 = v17;
    v43 = ~v19;
    v44 = *(v4 + 72);
    while (1)
    {
      v21 = v44 * v20;
      sub_10003B86C(*(v48 + 48) + v44 * v20, v7, type metadata accessor for AWDLPeer.AdvertisedService);
      v22 = *(v7 + 2);
      v24 = *(v7 + 3);
      v23 = *(v7 + 4);
      v25 = v7[40];
      v26 = v7[41];
      v51 = *(v7 + 1);
      v52 = v22;
      v49 = v47;
      v50 = v46;
      sub_10005E2E4();
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      v51 = v24;
      v52 = v23;
      v49 = v42;
      v50 = v41;
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      if (v25)
      {
        v27 = 7365749;
      }

      else
      {
        v27 = 7365492;
      }

      if (v27 == v40)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v28 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRelease_n();
        if ((v28 & 1) == 0)
        {
          break;
        }
      }

      sub_10003B934(v7, type metadata accessor for AWDLPeer.AdvertisedService);
      if (v26 == v39)
      {
        sub_10003B934(v37, type metadata accessor for AWDLPeer.AdvertisedService);
        sub_10003B86C(*(v48 + 48) + v21, v38, type metadata accessor for AWDLPeer.AdvertisedService);
        return 0;
      }

LABEL_7:
      v20 = (v20 + 1) & v43;
      if (((*(v45 + ((v20 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v20) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    sub_10003B934(v7, type metadata accessor for AWDLPeer.AdvertisedService);
    goto LABEL_7;
  }

LABEL_18:
  v30 = v36;
  v31 = *v36;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v33 = v37;
  v34 = v35;
  sub_10003B86C(v37, v35, type metadata accessor for AWDLPeer.AdvertisedService);
  v51 = *v30;
  sub_10015B0D8(v34, v20, isUniquelyReferenced_nonNull_native);
  *v30 = v51;
  sub_100039054(v33, v38, type metadata accessor for AWDLPeer.AdvertisedService);
  return 1;
}

uint64_t sub_10015A268(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = *(*v2 + 40);
  v7 = static Hasher._hash(seed:bytes:count:)();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (*(*(v5 + 48) + v9) != a2)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    v11 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v14 = *v2;
    sub_10015B4C0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v14;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_10015A350(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(qword_100597D50, &unk_10048D5E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    v27 = v2;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    if (v9 >= 64)
    {
      bzero((v3 + 56), 8 * v12);
    }

    else
    {
      *v8 = -1 << v9;
    }

    v2 = v27;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10015A574(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_100597CE0, &qword_10048D610);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v20 = Hasher._finalize()();

      v21 = -1 << *(v6 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v13 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v13 + 8 * v23);
          if (v27 != -1)
          {
            v14 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v22) & ~*(v13 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero(v8, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v28;
    }

    v2 = v29;
    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10015A7F0(uint64_t a1)
{
  v2 = v1;
  v42 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin();
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058EC18, &qword_1004B1E90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v2;
    v40 = result;
    v11 = 0;
    v12 = (v7 + 56);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    v41 = v7;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v44 = (v15 - 1) & v15;
LABEL_17:
      v22 = *(v7 + 48);
      v43 = *(v42 + 72);
      sub_100039054(v22 + v43 * (v19 | (v11 << 6)), v6, type metadata accessor for AWDLPeer.AdvertisedService);
      v23 = v10[5];
      Hasher.init(_seed:)();
      v24 = *(v6 + 1);
      v25 = *(v6 + 2);
      v26 = *(v6 + 3);
      v27 = *(v6 + 4);
      v28 = v6[40];
      v29 = v6[41];
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v29);
      result = Hasher._finalize()();
      v10 = v40;
      v30 = -1 << *(v40 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v41;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_100039054(v6, v10[6] + v18 * v43, type metadata accessor for AWDLPeer.AdvertisedService);
      ++v10[2];
      v15 = v44;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v44 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    v37 = 1 << *(v7 + 32);
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    v2 = v39;
    *(v7 + 16) = 0;
  }

  *v2 = v10;
  return result;
}

uint64_t sub_10015ABA0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_10059B1A0, &qword_10048D5F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = (v3 + 56);
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v20 = -1 << *(v6 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v13 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v13 + 8 * v22);
          if (v26 != -1)
          {
            v14 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_9;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + v14) = v18;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v7 >= v12)
      {
        break;
      }

      v17 = v8[v7];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    v27 = 1 << *(v3 + 32);
    if (v27 >= 64)
    {
      bzero((v3 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v8 = -1 << v27;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v6;
  return result;
}

uint64_t sub_10015ADD0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10015A350(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001D4744();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10015B5E4(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015AEF0(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    sub_10015A574(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1001D4884();
      goto LABEL_16;
    }

    sub_10015B7D4(v7 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();

  v12 = -1 << *(v9 + 32);
  a2 = v11 & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    type metadata accessor for AWDLTrafficRegistrationService(0);
    do
    {
      v14 = *(*(v9 + 48) + 8 * a2);
      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;
      if (v15 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v17 == v18)
      {
        goto LABEL_19;
      }

      v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v20)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v13;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v21 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v21 + 48) + 8 * a2) = v6;
  v22 = *(v21 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (!v23)
  {
    *(v21 + 16) = v24;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015B0D8(uint64_t a1, unint64_t a2, char a3)
{
  v7 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin();
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v44 = v3;
  v45 = a1;
  v43 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_25;
  }

  if (a3)
  {
    v40 = v9;
    sub_10015A7F0(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_1001D49D4();
      goto LABEL_25;
    }

    v40 = v9;
    sub_10015BA28(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v16 = *(a1 + 8);
  v17 = *(a1 + 16);
  v18 = *(a1 + 24);
  v19 = *(a1 + 32);
  v20 = *(a1 + 40);
  v21 = *(a1 + 41);
  v50 = v17;
  v51 = v16;
  String.lowercased()();
  String.hash(into:)();

  v46 = v19;
  v47 = v18;
  String.lowercased()();
  String.hash(into:)();

  if (v20)
  {
    v22 = 7365749;
  }

  else
  {
    v22 = 7365492;
  }

  String.hash(into:)();

  v41 = v21;
  Hasher._combine(_:)(v21);
  v23 = Hasher._finalize()();
  v52 = v14;
  v24 = -1 << *(v14 + 32);
  a2 = v23 & ~v24;
  v49 = v14 + 56;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v42 = v22;
    v48 = ~v24;
    v25 = *(v7 + 72);
    while (1)
    {
      sub_10003B86C(*(v52 + 48) + v25 * a2, v11, type metadata accessor for AWDLPeer.AdvertisedService);
      v26 = *(v11 + 2);
      v28 = *(v11 + 3);
      v27 = *(v11 + 4);
      v29 = v11[40];
      v30 = v11[41];
      v55 = *(v11 + 1);
      v56 = v26;
      v53 = v51;
      v54 = v50;
      sub_10005E2E4();
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      v55 = v28;
      v56 = v27;
      v53 = v47;
      v54 = v46;
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
        break;
      }

      if (v29)
      {
        v31 = 7365749;
      }

      else
      {
        v31 = 7365492;
      }

      if (v31 == v42)
      {
        swift_bridgeObjectRelease_n();
      }

      else
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();
        swift_bridgeObjectRelease_n();
        if ((v32 & 1) == 0)
        {
          break;
        }
      }

      sub_10003B934(v11, type metadata accessor for AWDLPeer.AdvertisedService);
      if (v30 == v41)
      {
        ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_25;
      }

LABEL_14:
      a2 = (a2 + 1) & v48;
      if (((*(v49 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_25;
      }
    }

    sub_10003B934(v11, type metadata accessor for AWDLPeer.AdvertisedService);
    goto LABEL_14;
  }

LABEL_25:
  v33 = v45;
  v34 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100039054(v33, *(v34 + 48) + *(v43 + 72) * a2, type metadata accessor for AWDLPeer.AdvertisedService);
  v36 = *(v34 + 16);
  v37 = __OFADD__(v36, 1);
  v38 = v36 + 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v38;
  }

  return result;
}

uint64_t sub_10015B4C0(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10015ABA0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_1001D4BE0();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10015BDA8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + a2) != v4)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + a2) = v4;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10015B5E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(qword_100597D50, &unk_10048D5E0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + 8 * v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_10015B7D4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_100597CE0, &qword_10048D610);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
    v7 = 0;
    v8 = v3 + 56;
    v9 = 1 << *(v3 + 32);
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & *(v3 + 56);
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v18;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_10015BA28(uint64_t a1)
{
  v2 = v1;
  v41 = *(type metadata accessor for AWDLPeer.AdvertisedService(0) - 8);
  v4 = *(v41 + 64);
  __chkstk_darwin();
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_10058EC18, &qword_1004B1E90);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v2;
    v39 = result;
    v11 = 0;
    v12 = v7 + 56;
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 56);
    v16 = (v13 + 63) >> 6;
    v17 = result + 56;
    v40 = v7;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v43 = (v15 - 1) & v15;
LABEL_17:
      v22 = *(v7 + 48);
      v42 = *(v41 + 72);
      sub_10003B86C(v22 + v42 * (v19 | (v11 << 6)), v6, type metadata accessor for AWDLPeer.AdvertisedService);
      v23 = v10[5];
      Hasher.init(_seed:)();
      v24 = *(v6 + 1);
      v25 = *(v6 + 2);
      v26 = *(v6 + 3);
      v27 = *(v6 + 4);
      v28 = v6[40];
      v29 = v6[41];
      String.lowercased()();
      String.hash(into:)();

      String.lowercased()();
      String.hash(into:)();

      String.hash(into:)();

      Hasher._combine(_:)(v29);
      result = Hasher._finalize()();
      v10 = v39;
      v30 = -1 << *(v39 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      result = sub_100039054(v6, v10[6] + v18 * v42, type metadata accessor for AWDLPeer.AdvertisedService);
      ++v10[2];
      v15 = v43;
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v2 = v38;
        goto LABEL_28;
      }

      v21 = *(v12 + 8 * v11);
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v43 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_30:
    __break(1u);
  }

  else
  {

LABEL_28:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_10015BDA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_10005DC58(&unk_10059B1A0, &qword_10048D5F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:bytes:count:)();
      v19 = -1 << *(v6 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_28;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
      ++*(v6 + 16);
    }

    v15 = v7;
    while (1)
    {
      v7 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v7);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v2 = v6;
  }

  return result;
}

uint64_t _s7CoreP2P15AWDLActionFrameV15ServiceResponseO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v60 = type metadata accessor for DNSRecords.SRV();
  v4 = *(*(v60 - 1) + 64);
  __chkstk_darwin();
  v6 = &v57 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for AWDLActionFrame.ServiceResponse(0) - 8) + 64);
  __chkstk_darwin();
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v57 - v10;
  __chkstk_darwin();
  v13 = &v57 - v12;
  v14 = *(*(sub_10005DC58(&qword_10058ED50, &qword_10048D668) - 8) + 64);
  v15 = __chkstk_darwin();
  v17 = &v57 - v16;
  v18 = &v57 + *(v15 + 56) - v16;
  sub_10003B86C(a1, &v57 - v16, type metadata accessor for AWDLActionFrame.ServiceResponse);
  sub_10003B86C(a2, v18, type metadata accessor for AWDLActionFrame.ServiceResponse);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_10003B86C(v17, v11, type metadata accessor for AWDLActionFrame.ServiceResponse);
      v20 = *(v11 + 1);
      v66 = *v11;
      v67 = v20;
      v68 = *(v11 + 2);
      v69 = *(v11 + 6);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v21 = *(v18 + 1);
        v63[0] = *v18;
        v63[1] = v21;
        v64 = *(v18 + 2);
        v65 = *(v18 + 6);
        v22 = v67;
        v23 = v68;
        v24 = BYTE1(v68);
        v25 = v21;
        v26 = v64;
        v27 = BYTE1(v64);
        v62 = v66;
        v61 = v63[0];
        sub_10005E2E4();
        if (!StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(v22, *(&v22 + 1), v23 | (v24 << 8), v25, *(&v25 + 1), v26 | (v27 << 8)))
        {
          v28 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v68 + 1), v69, *(&v64 + 1), v65);
          sub_100083B14(v63);
          sub_100083B14(&v66);
          if ((v28 & 1) == 0)
          {
            goto LABEL_29;
          }

LABEL_28:
          sub_10003B934(v17, type metadata accessor for AWDLActionFrame.ServiceResponse);
          return 1;
        }

        sub_100083B14(v63);
        sub_100083B14(&v66);
        goto LABEL_29;
      }

      sub_100083B14(&v66);
    }

    else
    {
      sub_10003B86C(v17, v9, type metadata accessor for AWDLActionFrame.ServiceResponse);
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        sub_100039054(v18, v6, type metadata accessor for DNSRecords.SRV);
        v34 = *v9;
        v35 = *(v9 + 1);
        v36 = *(v9 + 3);
        v59 = *(v9 + 2);
        v58 = v36;
        v37 = v9[32];
        v38 = v9[33];
        v39 = *v6;
        v40 = *(v6 + 1);
        v41 = *(v6 + 2);
        v42 = *(v6 + 3);
        v43 = v6[32];
        v44 = v6[33];
        *&v66 = v34;
        *(&v66 + 1) = v35;
        *&v63[0] = v39;
        *(&v63[0] + 1) = v40;
        sub_10005E2E4();
        if (!StringProtocol.caseInsensitiveCompare<A>(_:)() && sub_100178C7C(v59, v58, v37 | (v38 << 8), v41, v42, v43 | (v44 << 8)))
        {
          v45 = v60[5];
          type metadata accessor for NWEndpoint.Port();
          sub_1000348B8(&qword_10058CF60, &type metadata accessor for NWEndpoint.Port);
          dispatch thunk of RawRepresentable.rawValue.getter();
          dispatch thunk of RawRepresentable.rawValue.getter();
          if (v66 == LOWORD(v63[0]))
          {
            if (v46 = v60[6], v47 = *&v9[v46], v48 = *&v9[v46 + 8], v49 = &v6[v46], v47 == *v49) && v48 == *(v49 + 1) || (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              if (*&v9[v60[7]] == *&v6[v60[7]] && *&v9[v60[8]] == *&v6[v60[8]])
              {
                sub_10003B934(v6, type metadata accessor for DNSRecords.SRV);
                sub_10003B934(v9, type metadata accessor for DNSRecords.SRV);
                goto LABEL_28;
              }
            }
          }
        }

        sub_10003B934(v6, type metadata accessor for DNSRecords.SRV);
        sub_10003B934(v9, type metadata accessor for DNSRecords.SRV);
LABEL_29:
        sub_10003B934(v17, type metadata accessor for AWDLActionFrame.ServiceResponse);
        return 0;
      }

      sub_10003B934(v9, type metadata accessor for DNSRecords.SRV);
    }
  }

  else
  {
    sub_10003B86C(v17, v13, type metadata accessor for AWDLActionFrame.ServiceResponse);
    v29 = *(v13 + 1);
    v30 = *(v13 + 2);
    v31 = *(v13 + 3);
    v32 = v13[32];
    v33 = v13[33];
    if (!swift_getEnumCaseMultiPayload())
    {
      v50 = *v13;
      v51 = *v18;
      v52 = *(v18 + 1);
      v53 = *(v18 + 3);
      v60 = *(v18 + 2);
      LODWORD(v59) = v18[32];
      v54 = v18[33];
      *&v66 = v50;
      *(&v66 + 1) = v29;
      *&v63[0] = v51;
      *(&v63[0] + 1) = v52;
      sub_10005E2E4();
      if (StringProtocol.caseInsensitiveCompare<A>(_:)())
      {
      }

      else
      {
        v55 = sub_100178C7C(v30, v31, v32 | (v33 << 8), v60, v53, v59 | (v54 << 8));

        if (v55)
        {
          goto LABEL_28;
        }
      }

      goto LABEL_29;
    }
  }

  sub_100016290(v17, &qword_10058ED50, &qword_10048D668);
  return 0;
}

uint64_t _s7CoreP2P15AWDLActionFrameV24SynchronizationParameterV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || *(a1 + 1) != *(a2 + 1) || a1[4] != a2[4] || a1[5] != a2[5] || *(a1 + 3) != *(a2 + 3) || *(a1 + 4) != *(a2 + 4) || *(a1 + 5) != *(a2 + 5) || *(a1 + 6) != *(a2 + 6) || *(a1 + 7) != *(a2 + 7) || *(a1 + 8) != *(a2 + 8) || a1[18] != a2[18] || a1[19] != a2[19] || a1[20] != a2[20] || a1[21] != a2[21])
  {
    return 0;
  }

  v6 = *(a1 + 13);
  v2 = *(a1 + 22) == *(a2 + 22) && *(a1 + 13) == *(a2 + 13);
  if (!v2 || a1[28] != a2[28] || a1[29] != a2[29] || *(a1 + 15) != *(a2 + 15) || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v3 = *(a1 + 5);
  v4 = *(a2 + 5);

  return _s7CoreP2P15AWDLActionFrameV28AWDLChannelSequenceParameterV23__derived_struct_equalsySbAE_AEtFZ_0(v3, v4);
}

uint64_t _s7CoreP2P15AWDLActionFrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v15 = *(a1 + 4);
  if (*a1 != *a2 || *(a1 + 4) != *(a2 + 4))
  {
    return 0;
  }

  v16 = *(a1 + 10);
  v3 = *(a1 + 6) == *(a2 + 6) && *(a1 + 10) == *(a2 + 10);
  if (!v3 || *(a1 + 12) != *(a2 + 12) || ((0x801004u >> (8 * *(a1 + 16))) & 0xFFC) != ((0x801004u >> (8 * *(a2 + 16))) & 0xFFC))
  {
    return 0;
  }

  v4 = *(a1 + 17);
  v5 = *(a2 + 17);
  if (v4 <= 3)
  {
    if (v4 == 2)
    {
      if (v5 != 2)
      {
        return 0;
      }

      goto LABEL_31;
    }

    if (v4 == 3)
    {
      if (v5 != 3)
      {
        return 0;
      }

      goto LABEL_31;
    }

LABEL_29:
    if (v5 - 2) < 5 || ((v5 ^ v4))
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 == 4)
  {
    if (v5 != 4)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 == 5)
  {
    if (v5 != 5)
    {
      return 0;
    }

    goto LABEL_31;
  }

  if (v4 != 6)
  {
    goto LABEL_29;
  }

  if (v5 != 6)
  {
    return 0;
  }

LABEL_31:
  if (*(a1 + 20) != *(a2 + 20))
  {
    return 0;
  }

  v8 = type metadata accessor for AWDLActionFrame.Header(0);
  v9 = v8[8];
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v10 = v8[9];
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0 || *(a1 + v8[10]) != *(a2 + v8[10]) || *(a1 + v8[11]) != *(a2 + v8[11]) || *(a1 + v8[12]) != *(a2 + v8[12]) || *(a1 + v8[13]) != *(a2 + v8[13]) || *(a1 + v8[14]) != *(a2 + v8[14]) || *(a1 + v8[15]) != *(a2 + v8[15]))
  {
    return 0;
  }

  v11 = v8[16];
  v12 = *(a1 + v11);
  v13 = *(a2 + v11);

  return sub_1000C2E80(v12, v13);
}

BOOL _s7CoreP2P15AWDLActionFrameV13RealtimeGroupV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v14 = *(a1 + 5);
  if (*(a1 + 1) != *(a2 + 1) || *(a1 + 5) != *(a2 + 5))
  {
    return 0;
  }

  v4 = *(a1 + 2) | (*(a1 + 6) << 32);
  v5 = *(a2 + 2) | (*(a2 + 6) << 32);
  v6 = v5 & 0xFF00000000;
  if ((v4 & 0xFF00000000) != 0x300000000)
  {
    if (v6 == 0x300000000)
    {
      return 0;
    }

    *(a1 + 6);
    *(a2 + 6);
    if (*(a1 + 2) != *(a2 + 2) || ((0x801004u >> ((v4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v5 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v10 = v4 >> 40;
    v11 = v5 >> 40;
    if (v10 <= 3)
    {
      if (v10 == 2)
      {
        if (v11 != 2)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (v10 == 3)
      {
        if (v11 != 3)
        {
          return 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      switch(v10)
      {
        case 4:
          if (v11 != 4)
          {
            return 0;
          }

          goto LABEL_9;
        case 5:
          if (v11 != 5)
          {
            return 0;
          }

          goto LABEL_9;
        case 6:
          if (v11 != 6)
          {
            return 0;
          }

          goto LABEL_9;
      }
    }

    if (v11 - 2) < 5 || ((v11 ^ v10))
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v6 != 0x300000000)
  {
    return 0;
  }

LABEL_9:
  if (*(a1 + 2) != *(a2 + 2) || a1[24] != a2[24])
  {
    return 0;
  }

  v7 = *(a1 + 7) | (*(a1 + 16) << 32);
  v8 = *(a2 + 7) | (*(a2 + 16) << 32);
  v9 = v8 & 0xFF00000000;
  if ((v7 & 0xFF00000000) == 0x300000000)
  {
    if (v9 == 0x300000000)
    {
      goto LABEL_13;
    }

    return 0;
  }

  if (v9 == 0x300000000)
  {
    return 0;
  }

  *(a1 + 16);
  *(a2 + 16);
  if (*(a1 + 7) != *(a2 + 7) || ((0x801004u >> ((v7 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v8 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  v12 = v7 >> 40;
  v13 = v8 >> 40;
  if (v12 <= 3)
  {
    if (v12 == 2)
    {
      if (v13 == 2)
      {
        goto LABEL_13;
      }

      return 0;
    }

    if (v12 == 3)
    {
      if (v13 == 3)
      {
        goto LABEL_13;
      }

      return 0;
    }
  }

  else
  {
    switch(v12)
    {
      case 4:
        if (v13 == 4)
        {
          goto LABEL_13;
        }

        return 0;
      case 5:
        if (v13 == 5)
        {
          goto LABEL_13;
        }

        return 0;
      case 6:
        if (v13 == 6)
        {
          goto LABEL_13;
        }

        return 0;
    }
  }

  if (v13 - 2) < 5 || ((v13 ^ v12))
  {
    return 0;
  }

LABEL_13:
  if (a1[34] != a2[34] || a1[35] != a2[35] || a1[36] != a2[36] || a1[37] != a2[37] || a1[38] != a2[38])
  {
    return 0;
  }

  return a1[39] == a2[39];
}

BOOL _s7CoreP2P15AWDLActionFrameV14ServiceRequestV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2, int a3, uint64_t a4)
{
  if (result != a3)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 != *(a4 + 16))
  {
    return 0;
  }

  if (!v4 || a2 == a4)
  {
    return 1;
  }

  v5 = (a2 + 32);
  v6 = (a4 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10015CDD4()
{
  result = qword_10058E318;
  if (!qword_10058E318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E318);
  }

  return result;
}

BOOL _s7CoreP2P15AWDLActionFrameV17ElectionParameterV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 4);
  v2 = *a1 == *a2 && *(a1 + 4) == *(a2 + 4);
  if (v2 && ((v8 = *(a1 + 10), *(a1 + 6) == *(a2 + 6)) ? (v3 = *(a1 + 10) == *(a2 + 10)) : (v3 = 0), v3 && *(a1 + 12) == *(a2 + 12) && *(a1 + 16) == *(a2 + 16) && sub_1001D8198(*(a1 + 20) | (*(a1 + 24) << 32), *(a2 + 20) | (*(a2 + 24) << 32)) && sub_1001D8198(*(a1 + 28) | (*(a1 + 32) << 32), *(a2 + 28) | (*(a2 + 32) << 32)) && *(a1 + 36) == *(a2 + 36) && *(a1 + 40) == *(a2 + 40)))
  {
    return *(a1 + 44) == *(a2 + 44);
  }

  else
  {
    return 0;
  }
}

BOOL sub_10015CF80(unint64_t a1, unint64_t a2)
{
  if (a1 != a2 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a2 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a1) <= 3u)
  {
    if (BYTE5(a1) == 2)
    {
      if (BYTE5(a2) == 2)
      {
        return BYTE6(a1) == BYTE6(a2);
      }
    }

    else
    {
      if (BYTE5(a1) != 3)
      {
        goto LABEL_19;
      }

      if (BYTE5(a2) == 3)
      {
        return BYTE6(a1) == BYTE6(a2);
      }
    }

    return 0;
  }

  if (BYTE5(a1) == 4)
  {
    if (BYTE5(a2) == 4)
    {
      return BYTE6(a1) == BYTE6(a2);
    }

    return 0;
  }

  if (BYTE5(a1) == 5)
  {
    if (BYTE5(a2) == 5)
    {
      return BYTE6(a1) == BYTE6(a2);
    }

    return 0;
  }

  if (BYTE5(a1) != 6)
  {
LABEL_19:
    if (BYTE5(a2) - 2 < 5 || (((a2 >> 40) ^ (a1 >> 40)) & 1) != 0)
    {
      return 0;
    }

    return BYTE6(a1) == BYTE6(a2);
  }

  if (BYTE5(a2) != 6)
  {
    return 0;
  }

  return BYTE6(a1) == BYTE6(a2);
}

uint64_t sub_10015D064(unint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  if (a1 != a3 || ((0x801004u >> ((a1 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a3 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a1) <= 3u)
  {
    if (BYTE5(a1) == 2)
    {
      if (BYTE5(a3) == 2)
      {
        return sub_1000BCAE0(a2, a4);
      }
    }

    else
    {
      if (BYTE5(a1) != 3)
      {
        goto LABEL_19;
      }

      if (BYTE5(a3) == 3)
      {
        return sub_1000BCAE0(a2, a4);
      }
    }

    return 0;
  }

  if (BYTE5(a1) == 4)
  {
    if (BYTE5(a3) == 4)
    {
      return sub_1000BCAE0(a2, a4);
    }

    return 0;
  }

  if (BYTE5(a1) == 5)
  {
    if (BYTE5(a3) == 5)
    {
      return sub_1000BCAE0(a2, a4);
    }

    return 0;
  }

  if (BYTE5(a1) != 6)
  {
LABEL_19:
    if (BYTE5(a3) - 2 >= 5 && (((a3 >> 40) ^ (a1 >> 40)) & 1) == 0)
    {
      return sub_1000BCAE0(a2, a4);
    }

    return 0;
  }

  if (BYTE5(a3) != 6)
  {
    return 0;
  }

  return sub_1000BCAE0(a2, a4);
}

BOOL _s7CoreP2P15AWDLActionFrameV18NANSynchronizationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && ((v6 = a1[3], *(a1 + 1) == *(a2 + 1)) ? (v2 = a1[3] == a2[3]) : (v2 = 0), v2 && ((v7 = a1[6], *(a1 + 2) == *(a2 + 2)) ? (v3 = a1[6] == a2[6]) : (v3 = 0), v3 && *(a1 + 2) == *(a2 + 2) && *(a1 + 24) == *(a2 + 24) && *(a1 + 25) == *(a2 + 25) && ((v8 = a1[15], *(a1 + 13) == *(a2 + 13)) ? (v4 = a1[15] == a2[15]) : (v4 = 0), v4 && *(a1 + 32) == *(a2 + 32) && *(a1 + 33) == *(a2 + 33) && a1[17] == a2[17]))))
  {
    return *(a1 + 9) == *(a2 + 9);
  }

  else
  {
    return 0;
  }
}

BOOL sub_10015D27C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a1 != a5 || WORD1(a1) != WORD1(a5) || BYTE4(a1) != BYTE4(a5) || BYTE5(a1) != BYTE5(a5))
  {
    return 0;
  }

  LOBYTE(v21) = BYTE6(a1);
  BYTE1(v21) = HIBYTE(a1);
  HIWORD(v21) = a2;
  LOBYTE(v22) = BYTE2(a2);
  HIBYTE(v22) = BYTE3(a2);
  LOBYTE(v19) = BYTE6(a5);
  BYTE1(v19) = HIBYTE(a5);
  HIWORD(v19) = a6;
  LOBYTE(v20) = BYTE2(a6);
  HIBYTE(v20) = BYTE3(a6);
  if (v21 != v19 || v22 != v20)
  {
    return 0;
  }

  *(&v10 + 1) = a3 & 1;
  *&v10 = a2;
  v9 = v10 >> 32;
  *(&v10 + 1) = a7 & 1;
  *&v10 = a6;
  if (!sub_1001D8198(v9, v10 >> 32))
  {
    return 0;
  }

  *(&v16 + 1) = a4 & 1;
  *&v16 = a3;
  v15 = v16 >> 32;
  *(&v16 + 1) = a8 & 1;
  *&v16 = a7;
  v17 = v16 >> 32;

  return sub_1001D8198(v15, v17);
}

BOOL _s7CoreP2P15AWDLActionFrameV29PeerMACAddressListBloomFilterV23__derived_struct_equalsySbAE_AEtFZ_0(_BOOL8 result, uint64_t a2, __int16 a3, uint64_t a4)
{
  if (result != a3)
  {
    return 0;
  }

  v4 = *(a2 + 16);
  if (v4 != *(a4 + 16))
  {
    return 0;
  }

  if (!v4 || a2 == a4)
  {
    return 1;
  }

  v5 = (a2 + 32);
  v6 = (a4 + 32);
  while (v4)
  {
    v8 = *v5++;
    v7 = v8;
    v9 = *v6++;
    result = v7 == v9;
    if (v7 != v9 || v4-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10015D490(unint64_t a1, int a2, uint64_t a3, uint64_t a4, int a5, uint64_t a6)
{
  if (a1 == a4 && !((a4 ^ a1) >> 32) && BYTE2(a1) == BYTE2(a4) && ((a1 >> 8) & 1) != ((a4 & 0x100) == 0) && a2 == a5)
  {
    return sub_1000BEE04(a3, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t _s7CoreP2P15AWDLActionFrameV13DataPathStateV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v86[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  v9 = *(*(sub_10005DC58(&unk_10059B170, &unk_1004B4D70) - 8) + 64);
  __chkstk_darwin();
  v11 = &v86[-v10 - 4];
  v12 = *(*(sub_10005DC58(&unk_1005973E0, &qword_10048D650) - 8) + 64);
  v13 = __chkstk_darwin();
  v15 = &v86[-v14 - 4];
  v16 = *(a2 + 2);
  if (a1[1])
  {
    if (!*(a2 + 2))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v16 = 1;
    }

    if (v16)
    {
      return 0;
    }
  }

  v17 = *(a1 + 1) | (a1[4] << 32);
  v18 = *(a2 + 1) | (a2[4] << 32);
  v19 = v18 & 0xFF00000000;
  if ((v17 & 0xFF00000000) != 0x300000000)
  {
    if (v19 == 0x300000000)
    {
      return 0;
    }

    a1[4];
    a2[4];
    if (*(a1 + 1) != *(a2 + 1) || ((0x801004u >> ((v17 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v18 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v21 = v17 >> 40;
    v22 = v18 >> 40;
    if (v21 <= 3)
    {
      if (v21 == 2)
      {
        if (v22 != 2)
        {
          return 0;
        }

        goto LABEL_9;
      }

      if (v21 == 3)
      {
        if (v22 != 3)
        {
          return 0;
        }

        goto LABEL_9;
      }
    }

    else
    {
      switch(v21)
      {
        case 4:
          if (v22 != 4)
          {
            return 0;
          }

          goto LABEL_9;
        case 5:
          if (v22 != 5)
          {
            return 0;
          }

          goto LABEL_9;
        case 6:
          if (v22 != 6)
          {
            return 0;
          }

          goto LABEL_9;
      }
    }

    if (v22 - 2) < 5 || ((v22 ^ v21))
    {
      return 0;
    }

    goto LABEL_9;
  }

  if (v19 != 0x300000000)
  {
    return 0;
  }

LABEL_9:
  v20 = *(a2 + 16);
  if (a1[8])
  {
    if ((a2[8] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[8])
    {
      return 0;
    }

    v23 = *(a1 + 5) | (a1[7] << 32);
    v24 = *(a2 + 5) | (a2[7] << 32);
    v25.i64[0] = 0xFFFFFFFFFFFFLL;
    v25.i64[1] = 0xFFFFFFFFFFFFLL;
    v26 = vandq_s8(vdupq_n_s64(v23), v25);
    v27 = vshlq_u64(v26, xmmword_1004817A0);
    v28 = vandq_s8(vdupq_n_s64(v24), v25);
    v29 = vshlq_u64(v28, xmmword_1004817A0);
    v30 = vshlq_u64(v28, xmmword_100481790);
    v87[0] = *(a1 + 5);
    *v26.i8 = vmovn_s64(vshlq_u64(v26, xmmword_100481790));
    *v27.i8 = vmovn_s64(v27);
    v27.i16[1] = v27.i16[2];
    v27.i16[2] = v26.i16[0];
    v27.i16[3] = v26.i16[2];
    *&v87[1] = vmovn_s16(v27).u32[0];
    v87[5] = BYTE5(v23);
    v86[0] = v24;
    *v26.i8 = vmovn_s64(v30);
    *v30.i8 = vmovn_s64(v29);
    v30.i16[1] = v30.i16[2];
    v30.i16[2] = v26.i16[0];
    v30.i16[3] = v26.i16[2];
    *&v86[1] = vmovn_s16(v30).u32[0];
    v86[5] = BYTE5(v24);
    if (*v87 != *v86 || *&v87[4] != *&v86[4])
    {
      return 0;
    }
  }

  v32 = *(a1 + 5) | (a1[12] << 32);
  v33 = *(a2 + 5) | (a2[12] << 32);
  v34 = v33 & 0xFF00000000;
  if ((v32 & 0xFF00000000) != 0x300000000)
  {
    if (v34 == 0x300000000)
    {
      return 0;
    }

    a1[12];
    a2[12];
    if (*(a1 + 5) != *(a2 + 5) || ((0x801004u >> ((v32 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v33 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v36 = v32 >> 40;
    v37 = v33 >> 40;
    if (v36 <= 3)
    {
      if (v36 == 2)
      {
        if (v37 != 2)
        {
          return 0;
        }

        goto LABEL_29;
      }

      if (v36 == 3)
      {
        if (v37 != 3)
        {
          return 0;
        }

        goto LABEL_29;
      }
    }

    else
    {
      switch(v36)
      {
        case 4:
          if (v37 != 4)
          {
            return 0;
          }

          goto LABEL_29;
        case 5:
          if (v37 != 5)
          {
            return 0;
          }

          goto LABEL_29;
        case 6:
          if (v37 != 6)
          {
            return 0;
          }

          goto LABEL_29;
      }
    }

    if (v37 - 2) < 5 || ((v37 ^ v36))
    {
      return 0;
    }

    goto LABEL_29;
  }

  if (v34 != 0x300000000)
  {
    return 0;
  }

LABEL_29:
  v35 = *(a2 + 32);
  if (a1[16])
  {
    if ((a2[16] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[16])
    {
      return 0;
    }

    v38 = *(a1 + 13) | (a1[15] << 32);
    v39 = *(a2 + 13) | (a2[15] << 32);
    v40.i64[0] = 0xFFFFFFFFFFFFLL;
    v40.i64[1] = 0xFFFFFFFFFFFFLL;
    v41 = vandq_s8(vdupq_n_s64(v38), v40);
    v42 = vshlq_u64(v41, xmmword_1004817A0);
    v43 = vandq_s8(vdupq_n_s64(v39), v40);
    v44 = vshlq_u64(v43, xmmword_1004817A0);
    v45 = vshlq_u64(v43, xmmword_100481790);
    v87[0] = *(a1 + 13);
    *v41.i8 = vmovn_s64(vshlq_u64(v41, xmmword_100481790));
    *v42.i8 = vmovn_s64(v42);
    v42.i16[1] = v42.i16[2];
    v42.i16[2] = v41.i16[0];
    v42.i16[3] = v41.i16[2];
    *&v87[1] = vmovn_s16(v42).u32[0];
    v87[5] = BYTE5(v38);
    v86[0] = v39;
    *v41.i8 = vmovn_s64(v45);
    *v45.i8 = vmovn_s64(v44);
    v45.i16[1] = v45.i16[2];
    v45.i16[2] = v41.i16[0];
    v45.i16[3] = v41.i16[2];
    *&v86[1] = vmovn_s16(v45).u32[0];
    v86[5] = BYTE5(v39);
    if (*v87 != *v86 || *&v87[4] != *&v86[4])
    {
      return 0;
    }
  }

  v47 = *(a1 + 6);
  v48 = *(a2 + 6);
  if (v47)
  {
    if (!v48)
    {
      return 0;
    }

    if (*(a1 + 5) != *(a2 + 5) || v47 != v48)
    {
      v49 = v13;
      v50 = *(a1 + 5);
      v51 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v13 = v49;
      if ((v51 & 1) == 0)
      {
        return 0;
      }
    }
  }

  else if (v48)
  {
    return 0;
  }

  v52 = *(a2 + 62);
  if (a1[31])
  {
    if ((a2[31] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[31])
    {
      return 0;
    }

    v53 = *(a1 + 14) | (a1[30] << 32);
    v54 = *(a2 + 14) | (a2[30] << 32);
    v55.i64[0] = 0xFFFFFFFFFFFFLL;
    v55.i64[1] = 0xFFFFFFFFFFFFLL;
    v56 = vandq_s8(vdupq_n_s64(v53), v55);
    v57 = vshlq_u64(v56, xmmword_1004817A0);
    v58 = vandq_s8(vdupq_n_s64(v54), v55);
    v59 = vshlq_u64(v58, xmmword_1004817A0);
    v60 = vshlq_u64(v58, xmmword_100481790);
    v87[0] = *(a1 + 14);
    *v56.i8 = vmovn_s64(vshlq_u64(v56, xmmword_100481790));
    *v57.i8 = vmovn_s64(v57);
    v57.i16[1] = v57.i16[2];
    v57.i16[2] = v56.i16[0];
    v57.i16[3] = v56.i16[2];
    *&v87[1] = vmovn_s16(v57).u32[0];
    v87[5] = BYTE5(v53);
    v86[0] = v54;
    *v56.i8 = vmovn_s64(v60);
    *v60.i8 = vmovn_s64(v59);
    v60.i16[1] = v60.i16[2];
    v60.i16[2] = v56.i16[0];
    v60.i16[3] = v56.i16[2];
    *&v86[1] = vmovn_s16(v60).u32[0];
    v86[5] = BYTE5(v54);
    if (*v87 != *v86 || *&v87[4] != *&v86[4])
    {
      return 0;
    }
  }

  if (*(a1 + 63) != *(a2 + 63))
  {
    return 0;
  }

  v62 = *(a1 + 64);
  v63 = *(a2 + 64);
  if (v62 == 47)
  {
    if (v63 != 47)
    {
      return 0;
    }
  }

  else if (v63 == 47 || dword_10048DBB8[v62] != dword_10048DBB8[v63])
  {
    return 0;
  }

  if (*(a1 + 65) != *(a2 + 65))
  {
    return 0;
  }

  v65 = v5;
  v66 = v13;
  v67 = *(a2 + 68);
  if (a1[34])
  {
    if (!*(a2 + 68))
    {
      return 0;
    }
  }

  else
  {
    if (a1[33] != a2[33])
    {
      v67 = 1;
    }

    if (v67)
    {
      return 0;
    }
  }

  v68 = *(a2 + 76);
  if (a1[38])
  {
    if (!*(a2 + 76))
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 18) != *(a2 + 18))
    {
      v68 = 1;
    }

    if (v68)
    {
      return 0;
    }
  }

  if (*(a1 + 77) != *(a2 + 77) || *(a1 + 78) != *(a2 + 78) || *(a1 + 79) != *(a2 + 79) || *(a1 + 80) != *(a2 + 80) || *(a1 + 81) != *(a2 + 81) || *(a1 + 82) != *(a2 + 82) || *(a1 + 83) != *(a2 + 83) || *(a1 + 84) != *(a2 + 84) || *(a1 + 85) != *(a2 + 85) || *(a1 + 86) != *(a2 + 86) || *(a1 + 87) != *(a2 + 87) || *(a1 + 88) != *(a2 + 88) || *(a1 + 89) != *(a2 + 89) || *(a1 + 90) != *(a2 + 90) || *(a1 + 91) != *(a2 + 91) || *(a1 + 92) != *(a2 + 92) || *(a1 + 93) != *(a2 + 93) || *(a1 + 94) != *(a2 + 94))
  {
    return 0;
  }

  v85 = type metadata accessor for AWDLActionFrame.DataPathState(0);
  v69 = v85[34];
  v70 = *(v66 + 48);
  sub_1001606DC(a1 + v69, v15);
  sub_1001606DC(a2 + v69, &v15[v70]);
  v71 = *(v65 + 48);
  if (v71(v15, 1, v4) == 1)
  {
    if (v71(&v15[v70], 1, v4) == 1)
    {
      sub_100016290(v15, &unk_10059B170, &unk_1004B4D70);
      goto LABEL_134;
    }

LABEL_132:
    sub_100016290(v15, &unk_1005973E0, &qword_10048D650);
    return 0;
  }

  sub_1001606DC(v15, v11);
  if (v71(&v15[v70], 1, v4) == 1)
  {
    (*(v65 + 8))(v11, v4);
    goto LABEL_132;
  }

  v72 = v65;
  (*(v65 + 32))(v8, &v15[v70], v4);
  sub_1000348B8(&qword_1005973F0, &type metadata accessor for DispatchTimeInterval);
  v73 = dispatch thunk of static Equatable.== infix(_:_:)();
  v74 = *(v72 + 8);
  v74(v8, v4);
  v74(v11, v4);
  sub_100016290(v15, &unk_10059B170, &unk_1004B4D70);
  if ((v73 & 1) == 0)
  {
    return 0;
  }

LABEL_134:
  v75 = v85[35];
  v76 = (a1 + v75);
  v77 = *(a1 + v75 + 4);
  v78 = (a2 + v75);
  v79 = *(a2 + v75 + 4);
  if (v77)
  {
    if (!v79)
    {
      return 0;
    }
  }

  else
  {
    if (*v76 != *v78)
    {
      LOBYTE(v79) = 1;
    }

    if (v79)
    {
      return 0;
    }
  }

  v80 = v85[36];
  v81 = (a1 + v80);
  v82 = *(a1 + v80 + 4);
  v83 = (a2 + v80);
  v84 = *(a2 + v80 + 4);
  if (v82)
  {
    if ((v84 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v81 != *v83)
    {
      v84 = 1;
    }

    if (v84)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t _s7CoreP2P15AWDLActionFrameV13AWDLAttributeO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v177 = a2;
  v176 = a1;
  v3 = *(*(type metadata accessor for AWDLActionFrame.DataPathState(0) - 8) + 64);
  __chkstk_darwin();
  v160 = (&v158 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(*(type metadata accessor for AWDLActionFrame.ServiceResponse(0) - 8) + 64);
  __chkstk_darwin();
  v159 = &v158 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175 = type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  v7 = *(*(v175 - 8) + 64);
  __chkstk_darwin();
  v174 = &v158 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v173 = &v158 - v9;
  __chkstk_darwin();
  v172 = &v158 - v10;
  __chkstk_darwin();
  v171 = &v158 - v11;
  __chkstk_darwin();
  v170 = &v158 - v12;
  __chkstk_darwin();
  v169 = &v158 - v13;
  __chkstk_darwin();
  v168 = (&v158 - v14);
  __chkstk_darwin();
  v167 = (&v158 - v15);
  __chkstk_darwin();
  v166 = (&v158 - v16);
  __chkstk_darwin();
  v165 = &v158 - v17;
  __chkstk_darwin();
  v164 = &v158 - v18;
  __chkstk_darwin();
  v162 = &v158 - v19;
  __chkstk_darwin();
  v21 = (&v158 - v20);
  __chkstk_darwin();
  v161 = &v158 - v22;
  __chkstk_darwin();
  v163 = (&v158 - v23);
  __chkstk_darwin();
  v25 = &v158 - v24;
  __chkstk_darwin();
  v27 = (&v158 - v26);
  __chkstk_darwin();
  v29 = &v158 - v28;
  __chkstk_darwin();
  v31 = (&v158 - v30);
  __chkstk_darwin();
  v33 = &v158 - v32;
  __chkstk_darwin();
  v35 = (&v158 - v34);
  v36 = *(*(sub_10005DC58(&qword_10058EC40, &qword_10048D5F8) - 8) + 64);
  v37 = __chkstk_darwin();
  v39 = &v158 - v38;
  v40 = &v158 + *(v37 + 56) - v38;
  sub_10003B86C(v176, &v158 - v38, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  v176 = v40;
  sub_10003B86C(v177, v40, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  v177 = v39;
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v44 = v177;
      sub_10003B86C(v177, v33, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v99 = v176;
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v100 = v159;
        sub_100039054(v99, v159, type metadata accessor for AWDLActionFrame.ServiceResponse);
        v75 = _s7CoreP2P15AWDLActionFrameV15ServiceResponseO21__derived_enum_equalsySbAE_AEtFZ_0(v33, v100);
        v101 = type metadata accessor for AWDLActionFrame.ServiceResponse;
        sub_10003B934(v100, type metadata accessor for AWDLActionFrame.ServiceResponse);
        v102 = v33;
        goto LABEL_72;
      }

      v150 = type metadata accessor for AWDLActionFrame.ServiceResponse;
      v151 = v33;
      goto LABEL_107;
    case 2u:
      v44 = v177;
      sub_10003B86C(v177, v31, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v76 = v31[1];
      v178 = *v31;
      v179 = v76;
      v180[0] = v31[2];
      v77 = v176;
      if (swift_getEnumCaseMultiPayload() == 2)
      {
        v78 = v77[1];
        v181 = *v77;
        v182 = v78;
        *v183 = v77[2];
        v75 = _s7CoreP2P15AWDLActionFrameV24SynchronizationParameterV23__derived_struct_equalsySbAE_AEtFZ_0(&v178, &v181);
        sub_100160E4C(&v178);
        sub_100160E4C(&v181);
        goto LABEL_89;
      }

      sub_100160E4C(&v178);
      goto LABEL_108;
    case 3u:
      v44 = v177;
      sub_10003B86C(v177, v29, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v2.i32[0] = *(v29 + 6);
      v81 = v29[10];
      v82 = v29[11];
      v83 = *(v29 + 3);
      v84 = v29[16];
      v85 = *(v29 + 5);
      v86 = v29[24];
      v87 = v176;
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_108;
      }

      if (*v29 != *v87 || *(v29 + 1) != *(v87 + 1) || v29[4] != v87[4] || v29[5] != v87[5])
      {
        goto LABEL_131;
      }

      v88 = vmovl_u8(v2).u64[0];
      v89 = *(v87 + 3);
      v90 = v87[16];
      v91 = *(v87 + 5);
      v92 = v87[24];
      v93 = *(v87 + 5);
      LODWORD(v181) = vuzp1_s8(v88, v88).u32[0];
      BYTE4(v181) = v81;
      BYTE5(v181) = v82;
      if (v181 != *(v87 + 6) || WORD2(v181) != v93)
      {
        goto LABEL_131;
      }

      LOBYTE(v181) = v90;
      if (!sub_1001D8198(v83 | (v84 << 32), v89 | (v90 << 32)))
      {
        goto LABEL_131;
      }

      LOBYTE(v181) = v92;
      if (!sub_1001D8198(v85 | (v86 << 32), v91 | (v92 << 32)))
      {
        goto LABEL_131;
      }

      goto LABEL_94;
    case 4u:
      v44 = v177;
      sub_10003B86C(v177, v27, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v65 = *v27;
      v66 = v176;
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_90;
      }

      v67 = _s7CoreP2P15AWDLActionFrameV28AWDLChannelSequenceParameterV23__derived_struct_equalsySbAE_AEtFZ_0(v65, *v66);
      goto LABEL_88;
    case 5u:
      v44 = v177;
      sub_10003B86C(v177, v25, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v112 = *(v25 + 1);
      v113 = *(v25 + 2);
      v114 = *(v25 + 2);
      v56 = *(v25 + 2);
      v55 = *(v25 + 3);
      v115 = v176;
      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_66;
      }

      v58 = *(v115 + 2);
      v59 = *(v115 + 3);
      if (*v25 == *v115 && v112 == *(v115 + 1) && v113 == *(v115 + 2) && v114 == *(v115 + 2))
      {
        goto LABEL_64;
      }

      goto LABEL_102;
    case 6u:
      v44 = v177;
      v124 = v163;
      sub_10003B86C(v177, v163, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v125 = v176;
      if (swift_getEnumCaseMultiPayload() == 6)
      {
        v126 = v160;
        sub_100039054(v125, v160, type metadata accessor for AWDLActionFrame.DataPathState);
        v75 = _s7CoreP2P15AWDLActionFrameV13DataPathStateV23__derived_struct_equalsySbAE_AEtFZ_0(v124, v126);
        v101 = type metadata accessor for AWDLActionFrame.DataPathState;
        sub_10003B934(v126, type metadata accessor for AWDLActionFrame.DataPathState);
        v102 = v124;
LABEL_72:
        sub_10003B934(v102, v101);
        goto LABEL_89;
      }

      v150 = type metadata accessor for AWDLActionFrame.DataPathState;
      v151 = v124;
LABEL_107:
      sub_10003B934(v151, v150);
      goto LABEL_108;
    case 7u:
      v44 = v177;
      v95 = v161;
      sub_10003B86C(v177, v161, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v97 = *(v95 + 1);
      v96 = *(v95 + 2);
      v98 = v176;
      if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_90;
      }

      if (*v95 != *v98)
      {
        v154 = *(v98 + 2);

        goto LABEL_130;
      }

      if (v97 == *(v98 + 1) && v96 == *(v98 + 2))
      {

        goto LABEL_94;
      }

      v155 = *(v98 + 2);
      v141 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_136;
    case 8u:
      v44 = v177;
      sub_10003B86C(v177, v21, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v142 = *v21;
      v143 = v176;
      if (swift_getEnumCaseMultiPayload() != 8)
      {
        goto LABEL_90;
      }

      v67 = _s7CoreP2P15AWDLActionFrameV12SyncTreePathV23__derived_struct_equalsySbAE_AEtFZ_0(v142, *v143);
LABEL_88:
      v75 = v67;

      goto LABEL_89;
    case 9u:
      v44 = v177;
      v72 = v162;
      sub_10003B86C(v177, v162, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v73 = v176;
      if (swift_getEnumCaseMultiPayload() != 9)
      {
        goto LABEL_108;
      }

      v75 = *v72 == *v73 && v72[1] == v73[1];
      goto LABEL_89;
    case 0xAu:
      v44 = v177;
      v135 = v164;
      sub_10003B86C(v177, v164, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v136 = v135[1];
      v137 = *(v135 + 1);
      v138 = v176;
      if (swift_getEnumCaseMultiPayload() != 10)
      {
        goto LABEL_90;
      }

      v139 = *v135;
      v140 = *(v138 + 1);
      if (v139 != *v138 || v136 != v138[1])
      {
        goto LABEL_129;
      }

      v141 = sub_1000C2E80(v137, *(v138 + 1));
      goto LABEL_136;
    case 0xBu:
      v44 = v177;
      v60 = v165;
      sub_10003B86C(v177, v165, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v61 = *(v60 + 16);
      v178 = *v60;
      v179 = v61;
      *&v180[0] = *(v60 + 32);
      v62 = v176;
      if (swift_getEnumCaseMultiPayload() != 11)
      {
        goto LABEL_108;
      }

      v63 = *(v62 + 16);
      v181 = *v62;
      v182 = v63;
      *v183 = *(v62 + 32);
      v64 = _s7CoreP2P15AWDLActionFrameV18NANSynchronizationV23__derived_struct_equalsySbAE_AEtFZ_0(&v178, &v181);
      goto LABEL_56;
    case 0xCu:
      v44 = v177;
      v68 = v166;
      sub_10003B86C(v177, v166, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v69 = v68[1];
      v178 = *v68;
      v179 = v69;
      v180[0] = v68[2];
      v70 = v176;
      if (swift_getEnumCaseMultiPayload() != 12)
      {
        goto LABEL_108;
      }

      v71 = v70[1];
      v181 = *v70;
      v182 = v71;
      *v183 = v70[2];
      v64 = _s7CoreP2P15AWDLActionFrameV17ElectionParameterV23__derived_struct_equalsySbAE_AEtFZ_0(&v178, &v181);
      goto LABEL_56;
    case 0xDu:
      v44 = v177;
      v120 = v167;
      sub_10003B86C(v177, v167, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v121 = v120[1];
      v178 = *v120;
      v179 = v121;
      v180[0] = v120[2];
      *(v180 + 9) = *(v120 + 41);
      v122 = v176;
      if (swift_getEnumCaseMultiPayload() != 13)
      {
        sub_1000C2E24(&v178);
        goto LABEL_108;
      }

      v123 = v122[1];
      v181 = *v122;
      v182 = v123;
      *v183 = v122[2];
      *&v183[9] = *(v122 + 41);
      v75 = static IEEE80211InformationElement.__derived_enum_equals(_:_:)(&v178, &v181);
      sub_1000C2E24(&v181);
      sub_1000C2E24(&v178);
LABEL_89:
      sub_10003B934(v44, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      return v75 & 1;
    case 0xEu:
      v44 = v177;
      v52 = v168;
      sub_10003B86C(v177, v168, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v53 = v52[1];
      v54 = *(v52 + 4);
      v56 = *(v52 + 1);
      v55 = *(v52 + 2);
      v57 = v176;
      if (swift_getEnumCaseMultiPayload() != 14)
      {
LABEL_66:
        sub_1000124C8(v56, v55);
        goto LABEL_108;
      }

      v58 = *(v57 + 1);
      v59 = *(v57 + 2);
      if (*v52 == *v57 && v53 == v57[1] && v54 == *(v57 + 4))
      {
LABEL_64:
        v116 = v58;
        v117 = v59;
        v118 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v56, v55, v58, v59);
        sub_1000124C8(v116, v117);
        sub_1000124C8(v56, v55);
        if (v118)
        {
          goto LABEL_94;
        }
      }

      else
      {
LABEL_102:
        sub_1000124C8(v58, v59);
        sub_1000124C8(v56, v55);
      }

      goto LABEL_131;
    case 0xFu:
      v44 = v177;
      v79 = v169;
      sub_10003B86C(v177, v169, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v80 = v176;
      if (swift_getEnumCaseMultiPayload() != 15)
      {
        goto LABEL_108;
      }

      v75 = *v79 == *v80;
      goto LABEL_89;
    case 0x10u:
      v44 = v177;
      v45 = v170;
      sub_10003B86C(v177, v170, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v2.i32[0] = *(v45 + 1);
      v46 = v45[5];
      v47 = v45[6];
      v48 = v176;
      if (swift_getEnumCaseMultiPayload() != 16)
      {
        goto LABEL_108;
      }

      if (*v45 != *v48)
      {
        goto LABEL_131;
      }

      v49 = vmovl_u8(v2).u64[0];
      v50 = *(v48 + 5);
      LODWORD(v181) = vuzp1_s8(v49, v49).u32[0];
      BYTE4(v181) = v46;
      BYTE5(v181) = v47;
      if (v181 != *(v48 + 1) || WORD2(v181) != v50)
      {
        goto LABEL_131;
      }

      goto LABEL_94;
    case 0x11u:
      v44 = v177;
      v103 = v171;
      sub_10003B86C(v177, v171, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v104 = *(v103 + 16);
      v178 = *v103;
      v179 = v104;
      *&v180[0] = *(v103 + 32);
      v105 = v176;
      if (swift_getEnumCaseMultiPayload() != 17)
      {
        goto LABEL_108;
      }

      v106 = *(v105 + 16);
      v181 = *v105;
      v182 = v106;
      *v183 = *(v105 + 32);
      v64 = _s7CoreP2P15AWDLActionFrameV13RealtimeGroupV23__derived_struct_equalsySbAE_AEtFZ_0(&v178, &v181);
LABEL_56:
      v75 = v64;
      goto LABEL_89;
    case 0x12u:
      v44 = v177;
      v127 = v172;
      sub_10003B86C(v177, v172, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v128 = *(v127 + 4);
      v129 = *(v127 + 5);
      v130 = *(v127 + 8);
      v131 = v176;
      if (swift_getEnumCaseMultiPayload() != 18)
      {
LABEL_90:

        goto LABEL_108;
      }

      v132 = *v127;
      v133 = *(v131 + 8);
      if (v132 != *v131 || ((0x801004u >> (8 * v128)) & 0xFFC) != ((0x801004u >> (8 * *(v131 + 4))) & 0xFFC))
      {
        goto LABEL_129;
      }

      v134 = *(v131 + 5);
      if (v129 <= 3)
      {
        if (v129 == 2)
        {
          if (v134 != 2)
          {
            goto LABEL_129;
          }

          goto LABEL_135;
        }

        if (v129 == 3)
        {
          if (v134 != 3)
          {
            goto LABEL_129;
          }

          goto LABEL_135;
        }
      }

      else
      {
        switch(v129)
        {
          case 4:
            if (v134 != 4)
            {
              goto LABEL_129;
            }

            goto LABEL_135;
          case 5:
            if (v134 != 5)
            {
              goto LABEL_129;
            }

            goto LABEL_135;
          case 6:
            if (v134 == 6)
            {
              goto LABEL_135;
            }

LABEL_129:

LABEL_130:

            goto LABEL_131;
        }
      }

      if (v134 - 2) < 5 || ((v134 ^ v129))
      {
        goto LABEL_129;
      }

LABEL_135:
      v141 = sub_1000BCAE0(v130, *(v131 + 8));
LABEL_136:
      v157 = v141;

      if (v157)
      {
LABEL_94:
        v144 = v44;
        goto LABEL_95;
      }

LABEL_131:
      v144 = v44;
LABEL_132:
      sub_10003B934(v144, type metadata accessor for AWDLActionFrame.AWDLAttribute);
LABEL_133:
      v75 = 0;
      return v75 & 1;
    case 0x13u:
      v44 = v177;
      v145 = v173;
      sub_10003B86C(v177, v173, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v146 = v145[1];
      v148 = *(v145 + 1);
      v147 = *(v145 + 2);
      v149 = v176;
      if (swift_getEnumCaseMultiPayload() != 19)
      {
        goto LABEL_108;
      }

      if (*v145 != *v149 || v146 != v149[1] || v148 != *(v149 + 1) || v147 != *(v149 + 2))
      {
        goto LABEL_131;
      }

      goto LABEL_94;
    case 0x14u:
      v44 = v177;
      v107 = v174;
      sub_10003B86C(v177, v174, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v108 = v176;
      if (swift_getEnumCaseMultiPayload() != 20)
      {
        goto LABEL_108;
      }

      v109 = v108[1];
      v110 = *v107 == *v108;
      v111 = v107[1] ^ v109 ^ 1;
      sub_10003B934(v44, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v75 = v110 & v111;
      return v75 & 1;
    case 0x15u:
      v119 = swift_getEnumCaseMultiPayload() == 21;
      goto LABEL_92;
    case 0x16u:
      v119 = swift_getEnumCaseMultiPayload() == 22;
LABEL_92:
      v44 = v177;
      if (!v119)
      {
        goto LABEL_108;
      }

      goto LABEL_94;
    default:
      sub_10003B86C(v177, v35, type metadata accessor for AWDLActionFrame.AWDLAttribute);
      v41 = v35[1];
      v42 = *(v35 + 1);
      v43 = v176;
      if (swift_getEnumCaseMultiPayload())
      {

        v44 = v177;
LABEL_108:
        sub_100016290(v44, &qword_10058EC40, &qword_10048D5F8);
        goto LABEL_133;
      }

      v152 = *(v43 + 1);
      if (*v35 == *v43 && v41 == v43[1])
      {
        v153 = sub_1000C2E80(v42, *(v43 + 1));

        v144 = v177;
        if (v153)
        {
LABEL_95:
          sub_10003B934(v144, type metadata accessor for AWDLActionFrame.AWDLAttribute);
          v75 = 1;
          return v75 & 1;
        }
      }

      else
      {

        v144 = v177;
      }

      goto LABEL_132;
  }
}

unint64_t sub_10015F33C(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 != 1)
    {
LABEL_7:
      sub_10000B02C();
      swift_allocError();
      *v6 = xmmword_10047CE70;
      *(v6 + 16) = 2;
      return swift_willThrow();
    }

    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  result = sub_100286B98(v4, 4, 4uLL);
  if (v2)
  {
    return result;
  }

  if (a2 - 4 < 3)
  {
    goto LABEL_7;
  }

  if (a2 == 2)
  {
    v12 = result;
    v13 = sub_100286B98(1u, 2, 2uLL);
    v9 = sub_100286B98(3u, 0, 2uLL);
    if ((v13 & ~v12) != 0)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0;
    }

    v11 = v14 | v12;
    goto LABEL_19;
  }

  v7 = result;
  if (a2 == 3)
  {
    v8 = sub_100286B98(2u, 2, 2uLL);
    v9 = sub_100286B98(3u, 0, 2uLL);
    if ((v8 & ~v7) != 0)
    {
      v10 = v8;
    }

    else
    {
      v10 = 0;
    }

    v11 = v10 | v7;
LABEL_19:
    if ((v9 & ~v11) != 0)
    {
      v15 = v9;
    }

    else
    {
      v15 = 0;
    }

    return v15 | v11;
  }

  v16 = sub_100286B98(3u, 2, 2uLL);
  if ((v16 & ~v7) != 0)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  v18 = v17 | v7;
  if (a2)
  {
    v19 = 2;
  }

  else
  {
    v19 = 1;
  }

  v20 = sub_100286B98(v19, 0, 2uLL);
  if ((v20 & ~v18) != 0)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  return v21 | v18;
}

uint64_t _s7CoreP2P15AWDLActionFrameV20MultiPeerBSSSteeringV17SteeringMessageIDO8rawValueAGSgs5UInt8V_tcfC_0(uint64_t result)
{
  if (result >= 7u)
  {
    return 7;
  }

  else
  {
    return result;
  }
}

uint64_t _s7CoreP2P15AWDLActionFrameV7VersionV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    if (a1 == 1)
    {
      return 0;
    }

    if (a1 == 2)
    {
      return 1;
    }
  }

  else
  {
    switch(a1)
    {
      case 0x10u:
        return 4;
      case 8u:
        return 3;
      case 4u:
        return 2;
    }
  }

  return 5;
}

uint64_t sub_10015F550(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058ED58, &unk_10048D670);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = a1[3];
  sub_100029B34(a1, v8);
  sub_10015CDD4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v12[31] = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[30] = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    v12[15] = 2;
    sub_100165E30(&qword_10058ECD0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_100002A00(a1);
    return v9 | (v11 << 16);
  }

  return v8;
}

uint64_t sub_10015F770(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058ECC8, &qword_10048D638);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12[-v6];
  v8 = a1[3];
  sub_100029B34(a1, v8);
  sub_10016090C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    v12[31] = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v12[30] = 1;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    sub_10005DC58(&qword_10058D358, &unk_100486960);
    v12[15] = 2;
    sub_100165E30(&qword_10058ECD0);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    sub_100002A00(a1);
    return v9 | (v11 << 8);
  }

  return v8;
}

void *sub_10015F990(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058EC90, &qword_10048D620);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11[-v6];
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_100160A08();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100165DDC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[15];
    sub_100002A00(a1);
  }

  return v9;
}

uint64_t sub_10015FB00(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058EC88, &qword_10048D618);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100160AB0();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v16 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[8] = 1;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v10 = v14[9];
  v11 = v14[10];
  v12 = v15;
  sub_100002A00(a1);
  return v9 | (v10 << 8) | (v11 << 16) | (v12 << 24);
}

uint64_t sub_10015FCD0(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058EC58, &qword_10048D608);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100160C54();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v13[31] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[29] = 1;
  sub_100165C38();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v13[30];
  v13[28] = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[15] = 3;
  sub_100165C8C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 | (v10 << 8) | (v11 << 32);
}

uint64_t sub_10015FF04(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058EC48, &qword_10048D600);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100160D50();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v13[15] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v13[13] = 1;
  sub_100165BE4();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v11 = v13[14];
  sub_100002A00(a1);
  if (v11)
  {
    v12 = 256;
  }

  else
  {
    v12 = 0;
  }

  return v12 & 0xFFFFFF00 | v9;
}

uint64_t sub_1001600CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v18, v19);
  sub_100165CE0();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v18, v19);
  sub_10003804C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v3.i32[0] = v15;
  sub_100031694(v18, v19);
  v7 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v8 = sub_10003B238(v7);
  sub_100031694(v18, v19);
  v9 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v18, v19);
  sub_100165D34();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v14 = v8;
  sub_100031694(v18, v19);
  v10 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v11 = sub_10003B238(v10);
  sub_100031694(v18, v19);
  sub_100165D88();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v18, v19);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v18, v19);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v18, v19);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v18, v19);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v18, v19);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v13 = vmovl_u8(v3).u64[0];
  sub_100002A00(v18);
  result = sub_100002A00(a1);
  *a2 = v15;
  *(a2 + 1) = vuzp1_s8(v13, v13).u32[0];
  *(a2 + 5) = v16;
  *(a2 + 6) = v17;
  *(a2 + 12) = WORD2(v14);
  *(a2 + 8) = v14;
  *(a2 + 16) = v9;
  *(a2 + 24) = v15;
  *(a2 + 32) = WORD2(v11);
  *(a2 + 28) = v11;
  *(a2 + 34) = v15;
  *(a2 + 35) = v15;
  *(a2 + 36) = v15;
  *(a2 + 37) = v15;
  *(a2 + 38) = v15;
  *(a2 + 39) = v15;
  return result;
}

unint64_t sub_100160538()
{
  result = qword_10058E328;
  if (!qword_10058E328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E328);
  }

  return result;
}

unint64_t sub_10016058C()
{
  result = qword_10058E338;
  if (!qword_10058E338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E338);
  }

  return result;
}

unint64_t sub_1001605E0()
{
  result = qword_10058E348;
  if (!qword_10058E348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E348);
  }

  return result;
}

unint64_t sub_100160634()
{
  result = qword_10058E350;
  if (!qword_10058E350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E350);
  }

  return result;
}

unint64_t sub_100160688()
{
  result = qword_10058E358;
  if (!qword_10058E358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E358);
  }

  return result;
}

uint64_t sub_1001606DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10016074C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_10059B170, &unk_1004B4D70);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1001607BC()
{
  result = qword_10058E370;
  if (!qword_10058E370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E370);
  }

  return result;
}

unint64_t sub_100160810()
{
  result = qword_10058E378;
  if (!qword_10058E378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E378);
  }

  return result;
}

unint64_t sub_100160864()
{
  result = qword_10058E380;
  if (!qword_10058E380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E380);
  }

  return result;
}

unint64_t sub_1001608B8()
{
  result = qword_10058E3D0;
  if (!qword_10058E3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E3D0);
  }

  return result;
}

unint64_t sub_10016090C()
{
  result = qword_10058E3E0;
  if (!qword_10058E3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E3E0);
  }

  return result;
}

unint64_t sub_100160960()
{
  result = qword_10058E3F8;
  if (!qword_10058E3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E3F8);
  }

  return result;
}

unint64_t sub_1001609B4()
{
  result = qword_10058E400;
  if (!qword_10058E400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E400);
  }

  return result;
}

unint64_t sub_100160A08()
{
  result = qword_10058E420;
  if (!qword_10058E420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E420);
  }

  return result;
}

unint64_t sub_100160A5C()
{
  result = qword_10058E428;
  if (!qword_10058E428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E428);
  }

  return result;
}

unint64_t sub_100160AB0()
{
  result = qword_10058E438;
  if (!qword_10058E438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E438);
  }

  return result;
}

unint64_t sub_100160B04()
{
  result = qword_10058E440;
  if (!qword_10058E440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E440);
  }

  return result;
}

unint64_t sub_100160B58()
{
  result = qword_10058E448;
  if (!qword_10058E448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E448);
  }

  return result;
}

unint64_t sub_100160BAC()
{
  result = qword_10058E450;
  if (!qword_10058E450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E450);
  }

  return result;
}

unint64_t sub_100160C00()
{
  result = qword_10058E460;
  if (!qword_10058E460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E460);
  }

  return result;
}

unint64_t sub_100160C54()
{
  result = qword_10058E470;
  if (!qword_10058E470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E470);
  }

  return result;
}

unint64_t sub_100160CA8()
{
  result = qword_10058E478;
  if (!qword_10058E478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E478);
  }

  return result;
}

unint64_t sub_100160CFC()
{
  result = qword_10058E480;
  if (!qword_10058E480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E480);
  }

  return result;
}

unint64_t sub_100160D50()
{
  result = qword_10058E490;
  if (!qword_10058E490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E490);
  }

  return result;
}

unint64_t sub_100160DA4()
{
  result = qword_10058E498;
  if (!qword_10058E498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E498);
  }

  return result;
}

unint64_t sub_100160DF8()
{
  result = qword_10058E4A0;
  if (!qword_10058E4A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E4A0);
  }

  return result;
}

unint64_t sub_100160E7C()
{
  result = qword_10058E4D8;
  if (!qword_10058E4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E4D8);
  }

  return result;
}

unint64_t sub_100160ED0()
{
  result = qword_10058E4E0;
  if (!qword_10058E4E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E4E0);
  }

  return result;
}

unint64_t sub_100160F24()
{
  result = qword_10058E4F0;
  if (!qword_10058E4F0)
  {
    sub_10005DD04(&qword_10058E4E8, &qword_100489510);
    sub_1000348B8(&qword_10058E4F8, type metadata accessor for AWDLActionFrame.AWDLAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E4F0);
  }

  return result;
}

unint64_t sub_100160FDC()
{
  result = qword_10058E500;
  if (!qword_10058E500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E500);
  }

  return result;
}

unint64_t sub_100161034()
{
  result = qword_10058E508;
  if (!qword_10058E508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E508);
  }

  return result;
}

unint64_t sub_10016108C()
{
  result = qword_10058E510;
  if (!qword_10058E510)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E510);
  }

  return result;
}

unint64_t sub_10016112C()
{
  result = qword_10058E520;
  if (!qword_10058E520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E520);
  }

  return result;
}

unint64_t sub_100161184()
{
  result = qword_10058E528;
  if (!qword_10058E528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E528);
  }

  return result;
}

unint64_t sub_1001611DC()
{
  result = qword_10058E530;
  if (!qword_10058E530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E530);
  }

  return result;
}

unint64_t sub_100161238()
{
  result = qword_10058E540;
  if (!qword_10058E540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E540);
  }

  return result;
}

unint64_t sub_10016128C()
{
  result = qword_10058E548;
  if (!qword_10058E548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E548);
  }

  return result;
}

unint64_t sub_1001612E4()
{
  result = qword_10058E550;
  if (!qword_10058E550)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E550);
  }

  return result;
}

unint64_t sub_10016133C()
{
  result = qword_10058E558;
  if (!qword_10058E558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E558);
  }

  return result;
}

unint64_t sub_100161394()
{
  result = qword_10058E560;
  if (!qword_10058E560)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E560);
  }

  return result;
}

unint64_t sub_1001613EC()
{
  result = qword_10058E568;
  if (!qword_10058E568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E568);
  }

  return result;
}

unint64_t sub_100161490()
{
  result = qword_10058E580;
  if (!qword_10058E580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E580);
  }

  return result;
}

unint64_t sub_1001614E4()
{
  result = qword_10058E588;
  if (!qword_10058E588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E588);
  }

  return result;
}

unint64_t sub_10016153C()
{
  result = qword_10058E590;
  if (!qword_10058E590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E590);
  }

  return result;
}

unint64_t sub_100161594()
{
  result = qword_10058E598;
  if (!qword_10058E598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E598);
  }

  return result;
}

unint64_t sub_1001615EC()
{
  result = qword_10058E5A0;
  if (!qword_10058E5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5A0);
  }

  return result;
}

unint64_t sub_100161640()
{
  result = qword_10058E5A8;
  if (!qword_10058E5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5A8);
  }

  return result;
}

unint64_t sub_100161698()
{
  result = qword_10058E5B0;
  if (!qword_10058E5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5B0);
  }

  return result;
}

unint64_t sub_1001616F0()
{
  result = qword_10058E5B8;
  if (!qword_10058E5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5B8);
  }

  return result;
}

unint64_t sub_100161748()
{
  result = qword_10058E5C0;
  if (!qword_10058E5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5C0);
  }

  return result;
}

unint64_t sub_1001617A0()
{
  result = qword_10058E5C8;
  if (!qword_10058E5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5C8);
  }

  return result;
}

unint64_t sub_1001617F8()
{
  result = qword_10058E5D0;
  if (!qword_10058E5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5D0);
  }

  return result;
}

unint64_t sub_100161850()
{
  result = qword_10058E5D8;
  if (!qword_10058E5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5D8);
  }

  return result;
}

unint64_t sub_1001618A8()
{
  result = qword_10058E5E0;
  if (!qword_10058E5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5E0);
  }

  return result;
}

unint64_t sub_100161900()
{
  result = qword_10058E5E8;
  if (!qword_10058E5E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5E8);
  }

  return result;
}

unint64_t sub_100161958()
{
  result = qword_10058E5F0;
  if (!qword_10058E5F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5F0);
  }

  return result;
}

unint64_t sub_1001619B0()
{
  result = qword_10058E5F8;
  if (!qword_10058E5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E5F8);
  }

  return result;
}

unint64_t sub_100161A04()
{
  result = qword_10058E600;
  if (!qword_10058E600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E600);
  }

  return result;
}

unint64_t sub_100161A5C()
{
  result = qword_10058E608;
  if (!qword_10058E608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E608);
  }

  return result;
}

unint64_t sub_100161AB4()
{
  result = qword_10058E610;
  if (!qword_10058E610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E610);
  }

  return result;
}

unint64_t sub_100161B0C()
{
  result = qword_10058E618;
  if (!qword_10058E618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E618);
  }

  return result;
}

unint64_t sub_100161B60()
{
  result = qword_10058E620;
  if (!qword_10058E620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E620);
  }

  return result;
}

unint64_t sub_100161BB8()
{
  result = qword_10058E628;
  if (!qword_10058E628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E628);
  }

  return result;
}

unint64_t sub_100161C10()
{
  result = qword_10058E630;
  if (!qword_10058E630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E630);
  }

  return result;
}

unint64_t sub_100161C68()
{
  result = qword_10058E638;
  if (!qword_10058E638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E638);
  }

  return result;
}

unint64_t sub_100161CBC()
{
  result = qword_10058E640;
  if (!qword_10058E640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E640);
  }

  return result;
}

unint64_t sub_100161D14()
{
  result = qword_10058E648;
  if (!qword_10058E648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E648);
  }

  return result;
}

unint64_t sub_100161D6C()
{
  result = qword_10058E650;
  if (!qword_10058E650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E650);
  }

  return result;
}

unint64_t sub_100161DC4()
{
  result = qword_10058E658;
  if (!qword_10058E658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E658);
  }

  return result;
}

unint64_t sub_100161E1C()
{
  result = qword_10058E660;
  if (!qword_10058E660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E660);
  }

  return result;
}

unint64_t sub_100161E74()
{
  result = qword_10058E668;
  if (!qword_10058E668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E668);
  }

  return result;
}

unint64_t sub_100161ECC()
{
  result = qword_10058E670;
  if (!qword_10058E670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E670);
  }

  return result;
}

unint64_t sub_100161F24()
{
  result = qword_10058E678;
  if (!qword_10058E678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E678);
  }

  return result;
}

unint64_t sub_100161F7C()
{
  result = qword_10058E680;
  if (!qword_10058E680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E680);
  }

  return result;
}

unint64_t sub_100161FD0()
{
  result = qword_10058E688;
  if (!qword_10058E688)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E688);
  }

  return result;
}

unint64_t sub_100162028()
{
  result = qword_10058E690;
  if (!qword_10058E690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E690);
  }

  return result;
}

unint64_t sub_100162080()
{
  result = qword_10058E698;
  if (!qword_10058E698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E698);
  }

  return result;
}

unint64_t sub_1001620D8()
{
  result = qword_10058E6A0;
  if (!qword_10058E6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E6A0);
  }

  return result;
}

unint64_t sub_100162130()
{
  result = qword_10058E6A8;
  if (!qword_10058E6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E6A8);
  }

  return result;
}

unint64_t sub_100162188()
{
  result = qword_10058E6B0;
  if (!qword_10058E6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E6B0);
  }

  return result;
}

unint64_t sub_100162228()
{
  result = qword_10058E6C0;
  if (!qword_10058E6C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E6C0);
  }

  return result;
}

unint64_t sub_100162280()
{
  result = qword_10058E6C8;
  if (!qword_10058E6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E6C8);
  }

  return result;
}

unint64_t sub_1001622D8()
{
  result = qword_10058E6D0;
  if (!qword_10058E6D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E6D0);
  }

  return result;
}

unint64_t sub_10016232C()
{
  result = qword_10058E6D8;
  if (!qword_10058E6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E6D8);
  }

  return result;
}

unint64_t sub_100162384()
{
  result = qword_10058E6E0;
  if (!qword_10058E6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E6E0);
  }

  return result;
}

uint64_t sub_100162460()
{
  result = type metadata accessor for DNSRecords.SRV();
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 sub_1001624F4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_100162508(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100162528(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

void sub_100162598()
{
  sub_1001631EC(319, &qword_10058E800, &type metadata for CountryCode, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_1001631EC(319, &qword_10058E808, &type metadata for Channel, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_1001631EC(319, &qword_10058E810, &type metadata for WiFiAddress, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        sub_1001631EC(319, &qword_100599180, &type metadata for String, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1001631EC(319, &qword_10058E818, &type metadata for AWDLActionFrame.DataPathState.UnicastMasterIndicationOptions, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1001631EC(319, &qword_10058E820, &type metadata for UInt16, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1001631EC(319, &qword_10058E828, &type metadata for UInt32, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_100162818();
                if (v7 <= 0x3F)
                {
                  swift_cvw_initStructMetadataWithLayoutString();
                }
              }
            }
          }
        }
      }
    }
  }
}

void sub_100162818()
{
  if (!qword_10058E830)
  {
    type metadata accessor for DispatchTimeInterval();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10058E830);
    }
  }
}

uint64_t getEnumTagSinglePayload for NANSubReasonCode(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xD2)
  {
    goto LABEL_17;
  }

  if (a2 + 46 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 46) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 46;
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

      return (*a1 | (v4 << 8)) - 46;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 46;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x2F;
  v8 = v6 - 47;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANSubReasonCode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 46 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 46) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xD2)
  {
    v4 = 0;
  }

  if (a2 > 0xD1)
  {
    v5 = ((a2 - 210) >> 8) + 1;
    *result = a2 + 46;
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
    *result = a2 + 46;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100162A80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 40))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 12);
  if (v3 <= 3)
  {
    v4 = 3;
  }

  else
  {
    v4 = *(a1 + 12);
  }

  v5 = v4 - 4;
  if (v3 < 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_100162AD4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 3;
    }
  }

  return result;
}

_DWORD *initializeBufferWithCopyOfBuffer for AWDLActionFrame.PreferredChannels.PreferredChannel(_DWORD *result, int *a2)
{
  v2 = *a2;
  *(result + 3) = *(a2 + 3);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.PreferredChannels.PreferredChannel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 7))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.PreferredChannels.PreferredChannel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 6) = 0;
    *(result + 4) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 7) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 7) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.ProMode(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 12))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 1);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.ProMode(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 12) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 12) = 0;
    }

    if (a2)
    {
      *(result + 1) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.AirDrop(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 65281 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65281 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65281;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65281;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.AirDrop(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65281 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65281 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 16) + 1;
    *result = a2 - 255;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_100162E4C()
{
  result = type metadata accessor for AWDLActionFrame.ServiceResponse(319);
  if (v1 <= 0x3F)
  {
    result = type metadata accessor for AWDLActionFrame.DataPathState(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.AWDLAttribute.AttributeType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEA)
  {
    goto LABEL_17;
  }

  if (a2 + 22 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 22) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 22;
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

      return (*a1 | (v4 << 8)) - 22;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 22;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x17;
  v8 = v6 - 23;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.AWDLAttribute.AttributeType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 22 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 22) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEA)
  {
    v4 = 0;
  }

  if (a2 > 0xE9)
  {
    v5 = ((a2 - 234) >> 8) + 1;
    *result = a2 + 22;
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
    *result = a2 + 22;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1001630F8()
{
  type metadata accessor for DispatchTimeInterval();
  if (v0 <= 0x3F)
  {
    sub_1001631EC(319, &unk_10058E9F0, &type metadata for Int8, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1001631EC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AWDLActionFrame.ElectionParameter.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AWDLActionFrame.ElectionParameter.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANDataHostAssistRequest.Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF7)
  {
    goto LABEL_17;
  }

  if (a2 + 9 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 9) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 9;
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

      return (*a1 | (v4 << 8)) - 9;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 9;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v8 = v6 - 10;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for NANDataHostAssistRequest.Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF7)
  {
    v4 = 0;
  }

  if (a2 > 0xF6)
  {
    v5 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
    *result = a2 + 9;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1001635D0()
{
  result = qword_10058EA50;
  if (!qword_10058EA50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA50);
  }

  return result;
}

unint64_t sub_100163628()
{
  result = qword_10058EA58;
  if (!qword_10058EA58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA58);
  }

  return result;
}

unint64_t sub_100163680()
{
  result = qword_10058EA60;
  if (!qword_10058EA60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA60);
  }

  return result;
}

unint64_t sub_1001636D4()
{
  result = qword_10058EA68;
  if (!qword_10058EA68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA68);
  }

  return result;
}

unint64_t sub_10016372C()
{
  result = qword_10058EA70;
  if (!qword_10058EA70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA70);
  }

  return result;
}

unint64_t sub_100163788()
{
  result = qword_10058EA80;
  if (!qword_10058EA80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA80);
  }

  return result;
}

unint64_t sub_1001637DC()
{
  result = qword_10058EA88;
  if (!qword_10058EA88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA88);
  }

  return result;
}

unint64_t sub_100163834()
{
  result = qword_10058EA90;
  if (!qword_10058EA90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA90);
  }

  return result;
}

unint64_t sub_100163890()
{
  result = qword_10058EAA0;
  if (!qword_10058EAA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAA0);
  }

  return result;
}

unint64_t sub_1001638E8()
{
  result = qword_10058EAA8;
  if (!qword_10058EAA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAA8);
  }

  return result;
}

unint64_t sub_100163940()
{
  result = qword_10058EAB0;
  if (!qword_10058EAB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAB0);
  }

  return result;
}

unint64_t sub_100163998()
{
  result = qword_10058EAB8;
  if (!qword_10058EAB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAB8);
  }

  return result;
}

unint64_t sub_1001639F0()
{
  result = qword_10058EAC0;
  if (!qword_10058EAC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAC0);
  }

  return result;
}

unint64_t sub_100163A48()
{
  result = qword_10058EAC8;
  if (!qword_10058EAC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAC8);
  }

  return result;
}

unint64_t sub_100163AA0()
{
  result = qword_10058EAD0;
  if (!qword_10058EAD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAD0);
  }

  return result;
}

unint64_t sub_100163AF8()
{
  result = qword_10058EAD8;
  if (!qword_10058EAD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAD8);
  }

  return result;
}

unint64_t sub_100163B50()
{
  result = qword_10058EAE0;
  if (!qword_10058EAE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAE0);
  }

  return result;
}

unint64_t sub_100163BA8()
{
  result = qword_10058EAE8;
  if (!qword_10058EAE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAE8);
  }

  return result;
}

unint64_t sub_100163C00()
{
  result = qword_10058EAF0;
  if (!qword_10058EAF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAF0);
  }

  return result;
}

unint64_t sub_100163C58()
{
  result = qword_10058EAF8;
  if (!qword_10058EAF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EAF8);
  }

  return result;
}

unint64_t sub_100163CB0()
{
  result = qword_10058EB00;
  if (!qword_10058EB00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB00);
  }

  return result;
}

unint64_t sub_100163D08()
{
  result = qword_10058EB08;
  if (!qword_10058EB08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB08);
  }

  return result;
}

unint64_t sub_100163D60()
{
  result = qword_10058EB10;
  if (!qword_10058EB10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB10);
  }

  return result;
}

unint64_t sub_100163DB8()
{
  result = qword_10058EB18;
  if (!qword_10058EB18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB18);
  }

  return result;
}

unint64_t sub_100163E10()
{
  result = qword_10058EB20;
  if (!qword_10058EB20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB20);
  }

  return result;
}

unint64_t sub_100163E68()
{
  result = qword_10058EB28;
  if (!qword_10058EB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB28);
  }

  return result;
}

unint64_t sub_100163EC0()
{
  result = qword_10058EB30;
  if (!qword_10058EB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB30);
  }

  return result;
}

unint64_t sub_100163F18()
{
  result = qword_10058EB38;
  if (!qword_10058EB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB38);
  }

  return result;
}

unint64_t sub_100163F70()
{
  result = qword_10058EB40;
  if (!qword_10058EB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB40);
  }

  return result;
}

unint64_t sub_100163FC8()
{
  result = qword_10058EB48;
  if (!qword_10058EB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB48);
  }

  return result;
}

unint64_t sub_100164020()
{
  result = qword_10058EB50;
  if (!qword_10058EB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB50);
  }

  return result;
}

unint64_t sub_100164078()
{
  result = qword_10058EB58;
  if (!qword_10058EB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB58);
  }

  return result;
}

unint64_t sub_1001640D0()
{
  result = qword_10058EB60;
  if (!qword_10058EB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB60);
  }

  return result;
}

unint64_t sub_100164128()
{
  result = qword_10058EB68;
  if (!qword_10058EB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB68);
  }

  return result;
}

unint64_t sub_100164180()
{
  result = qword_10058EB70;
  if (!qword_10058EB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB70);
  }

  return result;
}

unint64_t sub_1001641D8()
{
  result = qword_10058EB78;
  if (!qword_10058EB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB78);
  }

  return result;
}

unint64_t sub_100164230()
{
  result = qword_10058EB80;
  if (!qword_10058EB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB80);
  }

  return result;
}

unint64_t sub_100164288()
{
  result = qword_10058EB88;
  if (!qword_10058EB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB88);
  }

  return result;
}

unint64_t sub_1001642E0()
{
  result = qword_10058EB90;
  if (!qword_10058EB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB90);
  }

  return result;
}

unint64_t sub_100164338()
{
  result = qword_10058EB98;
  if (!qword_10058EB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EB98);
  }

  return result;
}

unint64_t sub_100164390()
{
  result = qword_10058EBA0;
  if (!qword_10058EBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBA0);
  }

  return result;
}

unint64_t sub_1001643E8()
{
  result = qword_10058EBA8;
  if (!qword_10058EBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBA8);
  }

  return result;
}

unint64_t sub_100164440()
{
  result = qword_10058EBB0;
  if (!qword_10058EBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBB0);
  }

  return result;
}

unint64_t sub_100164498()
{
  result = qword_10058EBB8;
  if (!qword_10058EBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBB8);
  }

  return result;
}

unint64_t sub_1001644F0()
{
  result = qword_10058EBC0;
  if (!qword_10058EBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBC0);
  }

  return result;
}

unint64_t sub_100164548()
{
  result = qword_10058EBC8;
  if (!qword_10058EBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBC8);
  }

  return result;
}

unint64_t sub_1001645A0()
{
  result = qword_10058EBD0;
  if (!qword_10058EBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBD0);
  }

  return result;
}

uint64_t sub_1001645F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0x6574736575716572 && a2 == 0xEF74657366664F64;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574736575716572 && a2 == 0xEF6874676E654C64 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
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

uint64_t sub_10016471C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x74696D736E617274 && a2 == 0xEF6C656E6E616843;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E756F436E776F64 && a2 == 0xEB00000000726574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004B9BE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6D69546472617567 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B9C00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004B9C20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001004B9C40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B9C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B9C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001004B9CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001004B9CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B9CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001004B9D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0x72657473616DLL && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0x65636E6573657270 && a2 == 0xEC00000065646F4DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001004B9D30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B9D50 == a2)
  {

    return 19;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_100164D48(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697463656C65 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x65636E6174736964 && a2 == 0xEF706F546D6F7246 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6465767265736572 && a2 == 0xED0000646C656946 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x73736572646461 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x657473614D706F74 && a2 == 0xEF63697274654D72 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004B9BC0 == a2)
  {

    return 6;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_100164FB4(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7367616C66 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D69546C6C657764 && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B9A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1752462195 && a2 == 0xE400000000000000)
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

uint64_t sub_100165124(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000014 && 0x80000001004B9A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E756F63 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6D6F6F6C62 && a2 == 0xE500000000000000)
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

uint64_t sub_100165240(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E756F43706F68 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4E656372756F73 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4972657473756C63 && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001004B9A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001004B9AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004B9AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001004B9AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001004B9B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001004B9B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001004B9B50 == a2)
  {

    return 9;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 9;
    }

    else
    {
      return 10;
    }
  }
}

uint64_t sub_10016557C(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65646F4E746F6F72 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4E746E65726170 && a2 == 0xEA00000000006564 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004B9B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746E756F43706F68 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7274654D746F6F72 && a2 == 0xEA00000000006369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x7274654D666C6573 && a2 == 0xEA00000000006369 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6E6F697463656C65 && a2 == 0xEA00000000004449 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x6E6F697463656C65 && a2 == 0xED00007367616C46 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004B9BA0 == a2)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t sub_100165890(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x737574617473 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7367616C66 && a2 == 0xE500000000000000)
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

unint64_t sub_1001659EC()
{
  result = qword_10058EBD8;
  if (!qword_10058EBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBD8);
  }

  return result;
}

unint64_t sub_100165A40()
{
  result = qword_10058EBE0;
  if (!qword_10058EBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBE0);
  }

  return result;
}

unint64_t sub_100165A94()
{
  result = qword_10058EBE8;
  if (!qword_10058EBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBE8);
  }

  return result;
}

unint64_t sub_100165AE8()
{
  result = qword_10058EBF0;
  if (!qword_10058EBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBF0);
  }

  return result;
}

unint64_t sub_100165B3C()
{
  result = qword_10058EBF8;
  if (!qword_10058EBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EBF8);
  }

  return result;
}

unint64_t sub_100165B90()
{
  result = qword_10058EC00;
  if (!qword_10058EC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC00);
  }

  return result;
}