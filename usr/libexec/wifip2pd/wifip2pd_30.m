uint64_t sub_10024E334(uint64_t a1, unsigned __int8 (*a2)(void, uint64_t, uint64_t))
{
  v2 = a2(0, 1, a1);
  if (v2 == 1)
  {
    return 1;
  }

  if (!v2)
  {
    return 0;
  }

  sub_10000B02C();
  swift_allocError();
  *v4 = xmmword_10047CE70;
  *(v4 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10024E424(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t))
{
  result = a3(a2, 2, a1);
  if (result > 3u)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = xmmword_10047CE70;
    *(v4 + 16) = 2;
    swift_willThrow();
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t NANAttribute.CipherSuiteInformation.Capabilities.gtksaReplayCounters.getter(char a1)
{
  v2 = sub_100038CD4(1, 2uLL, a1);
  if ((v2 - 1) >= 2)
  {
    result = 2;
    if (v2 && v2 != 3)
    {
      sub_10000B02C();
      swift_allocError();
      *v5 = xmmword_10047CE70;
      *(v5 + 16) = 2;
      swift_willThrow();
      result = swift_unexpectedError();
      __break(1u);
    }
  }

  else
  {
    v3 = sub_100038CD4(3, 1uLL, a1);
    if (v3 == 1)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }

    if (v3)
    {
      return v6;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t NANAttribute.CipherSuiteInformation.Capabilities.broadcastIntegrityProtocol.getter(char a1)
{
  v2 = sub_100038CD4(1, 2uLL, a1);
  result = 2;
  if (v2 >= 2)
  {
    if (v2 == 2)
    {
      result = sub_100038CD4(4, 1uLL, a1);
      if (result >= 2u)
      {
        sub_10000B02C();
        swift_allocError();
        *v4 = xmmword_10047CE70;
        *(v4 + 16) = 2;
        swift_willThrow();
        swift_unexpectedError();
        __break(1u);
LABEL_7:
        sub_10000B02C();
        swift_allocError();
        *v5 = xmmword_10047CE70;
        *(v5 + 16) = 2;
        swift_willThrow();
        result = swift_unexpectedError();
        __break(1u);
      }
    }

    else if (v2 != 3)
    {
      goto LABEL_7;
    }
  }

  return result;
}

uint64_t sub_10024E7E8()
{
  if (*v0)
  {
    result = 0x496873696C627570;
  }

  else
  {
    result = 0x7553726568706963;
  }

  *v0;
  return result;
}

uint64_t sub_10024E830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7553726568706963 && a2 == 0xEB00000000657469;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496873696C627570 && a2 == 0xE900000000000044)
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

uint64_t sub_10024E918(uint64_t a1)
{
  v2 = sub_100279110();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024E954(uint64_t a1)
{
  v2 = sub_100279110();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.CipherSuiteInformation.CipherSuite.encode(to:)(void *a1, char a2)
{
  v5 = sub_10005DC58(&qword_100592430, &qword_10049F948);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279110();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = a2;
  v12[14] = 0;
  sub_100279164();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[13] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANAttribute.CipherSuiteInformation.CipherSuite.hash(into:)(uint64_t a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2 + 1);
  Hasher._combine(_:)(v2);
}

Swift::Int NANAttribute.CipherSuiteInformation.CipherSuite.hashValue.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_10024EBD0()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10024EC30()
{
  v1 = v0[1];
  Hasher._combine(_:)(*v0 + 1);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10024EC74()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_10024ED18()
{
  if (*v0)
  {
    result = 0x7553726568706963;
  }

  else
  {
    result = 0x696C696261706163;
  }

  *v0;
  return result;
}

uint64_t sub_10024ED5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696C696261706163 && a2 == 0xEC00000073656974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7553726568706963 && a2 == 0xEC00000073657469)
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

uint64_t sub_10024EE3C(uint64_t a1)
{
  v2 = sub_1002791B8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024EE78(uint64_t a1)
{
  v2 = sub_1002791B8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.CipherSuiteInformation.__derived_struct_equals(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 == a3)
  {
    return sub_1000BE1B8(a2, a4);
  }

  else
  {
    return 0;
  }
}

uint64_t NANAttribute.CipherSuiteInformation.encode(to:)(void *a1, char a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_100592448, &qword_10049F950);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1002791B8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_10027920C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_10005DC58(&qword_100592460, &qword_10049F958);
    sub_100279260();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANAttribute.CipherSuiteInformation.hash(into:)(int a1, Swift::UInt8 a2, uint64_t a3)
{
  Hasher._combine(_:)(a2);
  v4 = *(a3 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a3 + 33);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      Hasher._combine(_:)(v6 + 1);
      Hasher._combine(_:)(v7);
      --v4;
    }

    while (v4);
  }
}

Swift::Int NANAttribute.CipherSuiteInformation.hashValue.getter(Swift::UInt8 a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = *(a2 + 16);
  Hasher._combine(_:)(v4);
  if (v4)
  {
    v5 = (a2 + 33);
    do
    {
      v6 = *(v5 - 1);
      v7 = *v5;
      v5 += 2;
      Hasher._combine(_:)(v6 + 1);
      Hasher._combine(_:)(v7);
      --v4;
    }

    while (v4);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10024F1AC()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  NANAttribute.CipherSuiteInformation.hash(into:)(&v4, v2, v1);
  return Hasher._finalize()();
}

uint64_t sub_10024F224@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10024F290(unsigned __int8 *a1, unsigned __int8 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void))
{
  if (*a1 == *a2)
  {
    return a5(*(a1 + 1), *(a2 + 1));
  }

  else
  {
    return 0;
  }
}

uint64_t NANAttribute.SecurityContextInformation.SecurityContextIdentifier.hash(into:)(int a1, __int16 a2)
{
  v2 = HIBYTE(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.SecurityContextInformation.SecurityContextIdentifier.hashValue.getter(__int16 a1)
{
  v1 = a1;
  v2 = HIBYTE(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10024F4B4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024F530()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 1);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);

  return Data.hash(into:)();
}

Swift::Int sub_10024F598()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10024F610@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100271D64(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t NANAttribute.SecurityContextInformation.SecurityContextIdentifier.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  result = dispatch thunk of Encoder.unkeyedContainer()();
  v9 = a4 >> 62;
  if ((a4 >> 62) <= 1)
  {
    if (!v9)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v9 == 2)
  {
    v11 = *(a3 + 16);
    v10 = *(a3 + 24);
    v12 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
LABEL_8:
    if (__OFSUB__(HIDWORD(a3), a3))
    {
      goto LABEL_17;
    }

    v12 = HIDWORD(a3) - a3;
LABEL_10:
    result = sub_10000AB0C(a3, a4);
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 >> 16)
      {
        __break(1u);
      }

      goto LABEL_13;
    }

    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

LABEL_13:
  sub_100031694(v13, v14);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v4)
  {
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v13, v14);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v13, v14);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  sub_1000124C8(a3, a4);
  return sub_100002A00(v13);
}

uint64_t sub_10024F85C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10024F8A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001004BD8D0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_10024F93C(uint64_t a1)
{
  v2 = sub_100279338();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024F978(uint64_t a1)
{
  v2 = sub_100279338();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.SecurityContextInformation.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100592478, &qword_10049F960);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279338();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10005DC58(&qword_100592488, &qword_10049F968);
  sub_10027938C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void *sub_10024FB7C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10026F04C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10024FDC4()
{
  if (*v0)
  {
    result = 0x797469746E656469;
  }

  else
  {
    result = 0x6556726568706963;
  }

  *v0;
  return result;
}

uint64_t sub_10024FE14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6556726568706963 && a2 == 0xED00006E6F697372;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x797469746E656469 && a2 == 0xEB0000000079654BLL)
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

uint64_t sub_10024FEFC(uint64_t a1)
{
  v2 = sub_100279464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10024FF38(uint64_t a1)
{
  v2 = sub_100279464();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANIdentityKey.== infix(_:_:)()
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v0 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v2, v3);
  sub_1000124C8(v2, v3);
  sub_1000124C8(v2, v3);
  return v0 & 1;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_1005924A0, &qword_10049F970);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279464();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10[15] = 0;
  sub_1002794B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    type metadata accessor for NANIdentityKey(0);
    sub_10027784C(&qword_1005924B8, type metadata accessor for NANIdentityKey);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v7, v3);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.hash(into:)()
{
  Hasher._combine(_:)(0);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  return sub_1000124C8(v1, v2);
}

Swift::Int NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v1, v2);
  return Hasher._finalize()();
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v4 = *(*(type metadata accessor for NANIdentityKey(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10005DC58(&qword_1005924C0, &qword_10049F978);
  v21 = *(v7 - 8);
  v22 = v7;
  v8 = *(v21 + 64);
  __chkstk_darwin();
  v10 = &v19 - v9;
  v11 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0) - 8) + 64);
  __chkstk_darwin();
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279464();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v19 = v13;
    v15 = v21;
    v24 = 0;
    sub_10027952C();
    v16 = v22;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v23 = 1;
    sub_10027784C(&qword_1005924D0, type metadata accessor for NANIdentityKey);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v15 + 8))(v10, v16);
    v17 = v19;
    sub_100262DC8(v6, v19, type metadata accessor for NANIdentityKey);
    sub_100262DC8(v17, v20, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
  }

  return sub_100002A00(a1);
}

Swift::Int sub_1002505F4()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  SymmetricKey.withUnsafeBytes<A>(_:)();
  Data.hash(into:)();
  sub_1000124C8(v1, v2);
  return Hasher._finalize()();
}

unint64_t sub_1002507B8()
{
  if (*v0)
  {
    result = 0xD000000000000013;
  }

  else
  {
    result = 0x616D74694279656BLL;
  }

  *v0;
  return result;
}

uint64_t sub_1002507FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x616D74694279656BLL && a2 == 0xE900000000000070;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001004BD8F0 == a2)
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

uint64_t sub_1002508E8(uint64_t a1)
{
  v2 = sub_100279580();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100250924(uint64_t a1)
{
  v2 = sub_100279580();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.encode(to:)(void *a1, __int16 a2)
{
  v5 = sub_10005DC58(&qword_1005924D8, &qword_10049F980);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279580();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v12[13] = 0;
  sub_1002795D4();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12[12] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.hash(into:)(int a1, unint64_t a2)
{
  v2 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
}

Swift::Int NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.Lifetime.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int sub_100250BC0()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void sub_100250C20()
{
  v1 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100250C60()
{
  v1 = *(v0 + 4);
  v2 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100250CBC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026DD40(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = HIDWORD(result);
  }

  return result;
}

uint64_t sub_100250D44()
{
  v1 = 5132393;
  if (*v0 != 1)
  {
    v1 = 1263814505;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444979656BLL;
  }
}

uint64_t sub_100250D8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1002846FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100250DB4(uint64_t a1)
{
  v2 = sub_100279628();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100250DF0(uint64_t a1)
{
  v2 = sub_100279628();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO07IGTKKeyJ0V5keyID3iPN4iGTKAMs6UInt16V_10Foundation0J0V9CryptoKit09SymmetricE0VtcfC_0@<Q0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  SymmetricKey.withUnsafeBytes<A>(_:)();
  v10 = type metadata accessor for SymmetricKey();
  (*(*(v10 - 8) + 8))(a4, v10);
  result = v12;
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = v12;
  return result;
}

uint64_t sub_100250FD8()
{
  v1 = 5132393;
  if (*v0 != 1)
  {
    v1 = 0x4B54474962;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x444979656BLL;
  }
}

uint64_t sub_100251024@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284810(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10025104C(uint64_t a1)
{
  v2 = sub_10027967C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100251088(uint64_t a1)
{
  v2 = sub_10027967C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO07IGTKKeyJ0V23__derived_struct_equalsySbAM_AMtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2 || (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[3];
  v7 = a2[4];

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v5, v6, v7);
}

uint64_t sub_100251178(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v6 = v4;
  v8 = sub_10005DC58(a2, a3);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v17 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v6;
  LOBYTE(v19) = 0;
  v15 = v17[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v21 = *(v6 + 4);
    v19 = *(v6 + 4);
    v22 = 1;
    sub_100142478(&v21, v18);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v19, *(&v19 + 1));
    v19 = *(v6 + 12);
    v20 = v19;
    v22 = 2;
    sub_100142478(&v20, v18);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v19, *(&v19 + 1));
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO07IGTKKeyJ0V4hash4intoys6HasherVz_tF_0()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return Data.hash(into:)();
}

Swift::Int _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V0eF7ElementV0E12SpecificDataO07IGTKKeyJ0V9hashValueSivg_0()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Data.hash(into:)();
  return Hasher._finalize()();
}

double sub_100251464@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  sub_10026DAD0(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

Swift::Int sub_1002514AC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10025152C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_10025159C()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

double sub_10025165C@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  sub_10026DAD0(a1, a2, a3, a4, v9);
  if (!v5)
  {
    result = *v9;
    v8 = v9[1];
    *a5 = v9[0];
    *(a5 + 16) = v8;
    *(a5 + 32) = v10;
  }

  return result;
}

uint64_t sub_1002516CC(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = a1[3];
  v3 = a1[4];
  v4 = a2[3];
  v5 = a2[4];
  if ((_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1[1], a1[2], a2[1], a2[2]) & 1) == 0)
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v4, v5);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0) - 8) + 64);
  __chkstk_darwin();
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0) - 8) + 64);
  __chkstk_darwin();
  v9 = v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_1002774DC(v2, v9, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v12 = *v9;
    v13 = *(v9 + 1);
    v14 = *(v9 + 2);
    v16 = *(v9 + 3);
    v15 = *(v9 + 4);
    v19[0] = v12;
    v21 = v13;
    v22 = v14;
    v23 = v16;
    v24 = v15;
    if (EnumCaseMultiPayload == 2)
    {
      sub_100031694(v25, v26);
      sub_100279724();
    }

    else
    {
      sub_100031694(v25, v26);
      sub_1002796D0();
    }

    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v13, v14);
    sub_1000124C8(v16, v15);
  }

  else if (EnumCaseMultiPayload)
  {
    v17 = *(v9 + 1);
    v19[0] = *v9;
    v20 = v17;
    sub_100031694(v25, v26);
    sub_100279778();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  else
  {
    sub_100262DC8(v9, v6, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    sub_100031694(v25, v26);
    sub_10027784C(&qword_100592528, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100277544(v6, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
  }

  return sub_100002A00(v25);
}

void NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.hash(into:)()
{
  v1 = v0;
  v2 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0) - 8) + 64);
  __chkstk_darwin();
  v4 = v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0) - 8) + 64);
  __chkstk_darwin();
  v7 = v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002774DC(v1, v7, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    v11 = *(v7 + 1);
    v12 = *(v7 + 2);
    v13 = *(v7 + 3);
    v14 = *(v7 + 4);
    v15 = *v7;
    if (EnumCaseMultiPayload == 2)
    {
      v16 = 2;
    }

    else
    {
      v16 = 3;
    }

    Hasher._combine(_:)(v16);
    Hasher._combine(_:)(v15);
    Data.hash(into:)();
    Data.hash(into:)();
    sub_1000124C8(v11, v12);
    sub_1000124C8(v13, v14);
  }

  else if (EnumCaseMultiPayload)
  {
    v17 = *(v7 + 1);
    v18 = *v7;
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(v18);
    Hasher._combine(_:)(v17);
  }

  else
  {
    sub_100262DC8(v7, v4, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(0);
    SymmetricKey.withUnsafeBytes<A>(_:)();
    v9 = v19[2];
    v10 = v19[3];
    Data.hash(into:)();
    sub_1000124C8(v9, v10);
    sub_100277544(v4, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
  }
}

unsigned __int8 *sub_100251D30@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 9)
  {
    v3 = 0;
  }

  else
  {
    v3 = 3;
  }

  if (v2 == 36)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (v2 == 37)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  *a2 = v5;
  return result;
}

Swift::Int sub_100251D7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x252409u >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_100251E0C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x252409u >> (8 * v1));
  return Hasher._finalize()();
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v3 = *(*(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0) - 8) + 64);
  __chkstk_darwin();
  v5 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v31 - v6;
  __chkstk_darwin();
  v9 = &v31 - v8;
  v10 = type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = a1[3];
  v15 = a1[4];
  v44 = a1;
  sub_100029B34(a1, v14);
  v16 = v36;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v16)
  {
    v31 = v7;
    v32 = v5;
    v33 = v9;
    v34 = v10;
    v36 = v13;
    sub_100031694(v42, v43);
    sub_1000317F0();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v17 = v37;
    v18 = HIBYTE(v37);
    v19 = v38;
    v20 = v36;
    *v36 = v37;
    v20[1] = v18;
    v21 = v19;
    v20[2] = v19;
    sub_100031694(v42, v43);
    sub_100279834();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v22 = v37;
    v20[3] = v37;
    v23 = v17 | (v18 << 8) | (v21 << 16);
    if (sub_1000319F0(0x9A6F50u, v23))
    {
      if (v22)
      {
        sub_100031694(v42, v43);
        if (v22 == 1)
        {
          type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData(0);
          sub_10027784C(&qword_100592548, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.NANIdentityKeyData);
          v24 = v33;
          UnkeyedDecodingContainer.inferredDecode<A>()();
          v26 = v34;
          v25 = v35;
        }

        else
        {
          sub_1002798DC();
          UnkeyedDecodingContainer.inferredDecode<A>()();
          v26 = v34;
          v25 = v35;
          v30 = v39;
          v24 = v31;
          *v31 = v37;
          *(v24 + 4) = v30;
        }

        swift_storeEnumTagMultiPayload();
        v20 = v36;
        sub_100262DC8(v24, &v36[*(v26 + 24)], type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
      }

      else
      {
        sub_100031694(v42, v43);
        sub_100279888();
        UnkeyedDecodingContainer.inferredDecode<A>()();
        v29 = v32;
        *v32 = v37;
        *(v29 + 8) = v40;
        *(v29 + 24) = v41;
        swift_storeEnumTagMultiPayload();
        sub_100262DC8(v29, &v20[*(v34 + 24)], type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
        v25 = v35;
      }

      sub_100002A00(v42);
      sub_100262DC8(v20, v25, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement);
    }

    else
    {
      sub_1000319F0(0xAC0F00u, v23);
      sub_10000B02C();
      swift_allocError();
      *v27 = xmmword_10047CE70;
      *(v27 + 16) = 2;
      swift_willThrow();
      sub_100002A00(v42);
    }
  }

  return sub_100002A00(v44);
}

uint64_t sub_10025248C()
{
  v1 = 0x6570795461746164;
  if (*v0 != 1)
  {
    v1 = 0x6174614479656BLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6911343;
  }
}

uint64_t sub_1002524E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284974(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100252508(uint64_t a1)
{
  v2 = sub_100279930();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100252544(uint64_t a1)
{
  v2 = sub_100279930();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592550, &unk_10049F998);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v14[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279930();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *(v3 + 2);
  v15 = *v3;
  v16 = v11;
  v14[12] = 0;
  sub_1001F5AF0();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v14[11] = *(v3 + 3);
    v14[10] = 1;
    sub_100279984();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0) + 24);
    v14[9] = 2;
    type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData(0);
    sub_10027784C(&qword_100592568, type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.hash(into:)()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100480F30;
  *(v3 + 32) = v1;
  *(v3 + 34) = v2;
  v4 = sub_10002D874(v3);
  v6 = v5;

  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  Hasher._combine(_:)(0x252409u >> (8 * *(v0 + 3)));
  v7 = v0 + *(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0) + 24);
  NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.hash(into:)();
}

Swift::Int NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = *(v0 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100480F30;
  *(v3 + 32) = v1;
  *(v3 + 34) = v2;
  v4 = sub_10002D874(v3);
  v6 = v5;

  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  Hasher._combine(_:)(0x252409u >> (8 * *(v0 + 3)));
  v7 = v0 + *(type metadata accessor for NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement(0) + 24);
  NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.KeyDescriptorElement.KeySpecificData.hash(into:)();
  return Hasher._finalize()();
}

double NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100272538(a1, v8);
  if (!v2)
  {
    v5 = v8[3];
    a2[2] = v8[2];
    a2[3] = v5;
    v6 = v8[5];
    a2[4] = v8[4];
    a2[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a2 = v8[0];
    a2[1] = v7;
  }

  return result;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = *v1;
  sub_100031694(v20, v21);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
    return sub_100002A00(v20);
  }

  v6 = *(v1 + 1);
  sub_100031694(v20, v21);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v7 = *(v3 + 2);
  sub_100031694(v20, v21);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v8 = *(v3 + 1);
  sub_100031694(v20, v21);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v25 = *(v3 + 1);
  v19 = *(v3 + 1);
  sub_100031694(v20, v21);
  sub_100142478(&v25, v18);
  sub_1000B8088();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v19, *(&v19 + 1));
  v24 = *(v3 + 2);
  v19 = *(v3 + 2);
  sub_100031694(v20, v21);
  sub_100142478(&v24, v18);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_1000124C8(v19, *(&v19 + 1));
  v9 = *(v3 + 6);
  sub_100031694(v20, v21);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v10 = *(v3 + 7);
  sub_100031694(v20, v21);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v23 = *(v3 + 4);
  v19 = *(v3 + 4);
  sub_100031694(v20, v21);
  sub_100142478(&v23, v18);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  result = sub_1000124C8(v19, *(&v19 + 1));
  v22 = *(v3 + 5);
  v12 = v22;
  v13 = *(&v22 + 1) >> 62;
  if ((*(&v22 + 1) >> 62) > 1)
  {
    if (v13 != 2)
    {
LABEL_14:
      sub_100031694(v20, v21);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v19 = v22;
      sub_100031694(v20, v21);
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v19, *(&v19 + 1));
      return sub_100002A00(v20);
    }

    v12 = *(v22 + 16);
    v14 = *(v22 + 24);
    v15 = v14 - v12;
    if (!__OFSUB__(v14, v12))
    {
      goto LABEL_11;
    }

    __break(1u);
  }

  else if (!v13)
  {
    goto LABEL_14;
  }

  v16 = __OFSUB__(HIDWORD(v12), v12);
  v17 = HIDWORD(v12) - v12;
  if (v16)
  {
    goto LABEL_17;
  }

  v15 = v17;
LABEL_11:
  result = sub_100142478(&v22, &v19);
  if ((v15 & 0x8000000000000000) == 0)
  {
    if (v15 >> 16)
    {
      __break(1u);
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_17:
  __break(1u);
  return result;
}

double NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.init(keyDescriptorElements:keyDescriptorEncyptionKey:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  result = sub_100276834(a1, a2, v9);
  if (!v3)
  {
    v6 = v9[3];
    a3[2] = v9[2];
    a3[3] = v6;
    v7 = v9[5];
    a3[4] = v9[4];
    a3[5] = v7;
    result = *v9;
    v8 = v9[1];
    *a3 = v9[0];
    a3[1] = v8;
  }

  return result;
}

uint64_t NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.hash(into:)()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 8));
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Data.hash(into:)();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + 48));
  Hasher._combine(_:)(*(v0 + 56));
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  Data.hash(into:)();
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.SharedKeyDescriptor.EAPOLKeyDescriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(*(v0 + 4));
  Hasher._combine(_:)(*(v0 + 8));
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  Data.hash(into:)();
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  Data.hash(into:)();
  Hasher._combine(_:)(*(v0 + 48));
  Hasher._combine(_:)(*(v0 + 56));
  v6 = *(v0 + 64);
  v7 = *(v0 + 72);
  Data.hash(into:)();
  v8 = *(v0 + 80);
  v9 = *(v0 + 88);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100252F84()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v12 = *(v0 + 7);
  v13 = *(v0 + 9);
  v16 = *(v0 + 10);
  v14 = *(v0 + 8);
  v15 = *(v0 + 11);
  v8 = *(v0 + 1);
  v9 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v12);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100253094()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v12 = *(v0 + 72);
  v13 = *(v0 + 64);
  v14 = *(v0 + 88);
  v15 = *(v0 + 80);
  if (*v0)
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 2);
  v10 = *(v0 + 4);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_100253188()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  v12 = *(v0 + 7);
  v13 = *(v0 + 9);
  v16 = *(v0 + 10);
  v14 = *(v0 + 8);
  v15 = *(v0 + 11);
  v8 = *(v0 + 1);
  v9 = *(v0 + 2);
  Hasher.init(_seed:)();
  if (v1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v12);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002532AC(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV08EAPOLKeyF0V23__derived_struct_equalsySbAG_AGtFZ_0(v9, v10) & 1;
}

unint64_t sub_10025331C()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x496873696C627570;
  }

  *v0;
  return result;
}

uint64_t sub_100253360@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496873696C627570 && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004BD910 == a2)
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

uint64_t sub_10025344C(uint64_t a1)
{
  v2 = sub_100279A10();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100253488(uint64_t a1)
{
  v2 = sub_100279A10();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.SharedKeyDescriptor.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592570, &qword_10049F9A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v16 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279A10();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v16[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = *(v3 + 56);
    v19 = *(v3 + 40);
    v20 = v13;
    v14 = *(v3 + 88);
    v21 = *(v3 + 72);
    v22 = v14;
    v15 = *(v3 + 24);
    v17 = *(v3 + 8);
    v18 = v15;
    v23 = 1;
    sub_100143F0C(v3, v16);
    sub_100279A64();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v16[2] = v19;
    v16[3] = v20;
    v16[4] = v21;
    v16[5] = v22;
    v16[0] = v17;
    v16[1] = v18;
    sub_100143EB8(v16);
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t NANAttribute.SharedKeyDescriptor.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v12 = *(v0 + 80);
  v13 = *(v0 + 72);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  if (*(v0 + 8))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 10);
  v10 = *(v0 + 12);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int NANAttribute.SharedKeyDescriptor.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);
  v5 = *(v0 + 48);
  v6 = *(v0 + 56);
  v7 = *(v0 + 64);
  v12 = *(v0 + 80);
  v13 = *(v0 + 72);
  v15 = *(v0 + 88);
  v14 = *(v0 + 96);
  if (*(v0 + 8))
  {
    v8 = 2;
  }

  else
  {
    v8 = 1;
  }

  v9 = *(v0 + 10);
  v10 = *(v0 + 12);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v1);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

__n128 NANAttribute.SharedKeyDescriptor.init(from:)@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10026DEFC(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v8;
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

Swift::Int sub_100253944()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 80);
  v15 = *(v0 + 72);
  v16 = *(v0 + 96);
  v17 = *(v0 + 88);
  v7 = *v0;
  v8 = *(v0 + 10);
  v9 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  if (v1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100253A64()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v7 = *(v0 + 48);
  v6 = *(v0 + 56);
  v12 = *(v0 + 64);
  v13 = *(v0 + 80);
  v16 = *(v0 + 88);
  v14 = *(v0 + 72);
  v15 = *(v0 + 96);
  v8 = *(v0 + 10);
  v9 = *(v0 + 12);
  Hasher._combine(_:)(*v0);
  if (v1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v12);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_100253B64()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v12 = *(v0 + 56);
  v13 = *(v0 + 64);
  v14 = *(v0 + 80);
  v15 = *(v0 + 72);
  v16 = *(v0 + 96);
  v17 = *(v0 + 88);
  v7 = *v0;
  v8 = *(v0 + 10);
  v9 = *(v0 + 12);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  if (v1)
  {
    v10 = 2;
  }

  else
  {
    v10 = 1;
  }

  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v2);
  Data.hash(into:)();
  Data.hash(into:)();
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100253C80(void *a1)
{
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 12);
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  return NANAttribute.SharedKeyDescriptor.encode(to:)(a1);
}

uint64_t sub_100253CCC(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v2;
  v12 = *(a1 + 96);
  v3 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v3;
  v4 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v4;
  v5 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v5;
  v6 = *(a2 + 32);
  v7 = *(a2 + 48);
  v8 = *(a2 + 64);
  v9 = *(a2 + 80);
  v14 = *(a2 + 96);
  v13[4] = v8;
  v13[5] = v9;
  v13[2] = v6;
  v13[3] = v7;
  return _s7CoreP2P12NANAttributeO19SharedKeyDescriptorV23__derived_struct_equalsySbAE_AEtFZ_0(v11, v13) & 1;
}

unint64_t sub_100253E0C()
{
  v1 = *v0;
  v2 = 0x444967736D6ELL;
  v3 = 0x6C6F72746E6F63;
  v4 = 0x6E6F73616572;
  if (v1 != 3)
  {
    v4 = 0xD00000000000001ELL;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100253EAC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284A8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100253ED4(uint64_t a1)
{
  v2 = sub_100279AB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100253F10(uint64_t a1)
{
  v2 = sub_100279AB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.MulticastScheduleChange.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, uint64_t a6, int a7, uint64_t a8)
{
  if (a1 == a5 && a2 == a6 && a3 == a7 && BYTE2(a3) == BYTE2(a7))
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(a4, a8);
  }

  else
  {
    return 0;
  }
}

uint64_t NANAttribute.MulticastScheduleChange.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5)
{
  v18 = a5;
  v19 = a3;
  v8 = sub_10005DC58(&qword_100592588, &qword_10049F9B0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v17 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279AB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = a4;
    v15 = v18;
    LOBYTE(v20) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOWORD(v20) = v14;
    v21 = 2;
    sub_100279B0C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v20) = BYTE2(v14);
    v21 = 3;
    sub_1002782D4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = v15;
    v21 = 4;
    sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
    sub_100278684();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

void NANAttribute.MulticastScheduleChange.hash(into:)(uint64_t a1, Swift::UInt64 a2, Swift::UInt64 a3, unsigned int a4, uint64_t a5)
{
  v6 = a4;
  v9 = HIWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v9);

  NANAttribute.PublicAvailability.hash(into:)(a1, a5);
}

Swift::Int NANAttribute.MulticastScheduleChange.hashValue.getter(Swift::UInt64 a1, Swift::UInt64 a2, unsigned int a3, uint64_t a4)
{
  v5 = a3;
  v8 = HIWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v8);
  NANAttribute.PublicAvailability.hash(into:)(v10, a4);
  return Hasher._finalize()();
}

uint64_t NANAttribute.MulticastScheduleChange.init(from:)(uint64_t *a1)
{
  result = sub_10026E918(a1);
  if (v1)
  {
    return v3 & 0xFFFFFF;
  }

  return result;
}

Swift::Int sub_100254314()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 18);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  NANAttribute.PublicAvailability.hash(into:)(v7, v3);
  return Hasher._finalize()();
}

void sub_1002543A8(uint64_t a1)
{
  v3 = *(v1 + 8);
  v4 = *(v1 + 24);
  v5 = *(v1 + 16);
  v6 = *(v1 + 18);
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);

  NANAttribute.PublicAvailability.hash(into:)(a1, v4);
}

Swift::Int sub_100254420()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 24);
  v4 = *(v0 + 16);
  v5 = *(v0 + 18);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  NANAttribute.PublicAvailability.hash(into:)(v7, v3);
  return Hasher._finalize()();
}

uint64_t sub_1002544B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026E918(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 18) = BYTE2(v6);
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_100254518(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16) && *(a1 + 18) == *(a2 + 18))
  {
    return _s7CoreP2P12NANAttributeO18PublicAvailabilityV23__derived_struct_equalsySbAE_AEtFZ_0(*(a1 + 24), *(a2 + 24));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100254574@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000021 && 0x80000001004BD970 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t sub_100254608(uint64_t a1)
{
  v2 = sub_100279B60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100254644(uint64_t a1)
{
  v2 = sub_100279B60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.PublicAvailability.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_1005925A0, &qword_10049F9B8);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279B60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
  sub_100278684();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

Swift::Int sub_1002547F8(uint64_t a1, void (*a2)(_BYTE *, uint64_t))
{
  Hasher.init(_seed:)();
  a2(v5, a1);
  return Hasher._finalize()();
}

Swift::Int sub_100254878(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *, uint64_t))
{
  v5 = *v3;
  Hasher.init(_seed:)();
  a3(v7, v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002548E8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *, uint64_t))
{
  v6 = *v4;
  Hasher.init(_seed:)();
  a4(v8, v6);
  return Hasher._finalize()();
}

void *sub_100254934@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10026D54C(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

Swift::Int sub_1002549B0(uint64_t a1, uint64_t a2, Swift::UInt8 a3)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a3);
  return Hasher._finalize()();
}

Swift::Int sub_100254A28(uint64_t a1, uint64_t a2, uint64_t a3, Swift::UInt8 a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a4);
  return Hasher._finalize()();
}

uint64_t NANAttribute.PairingIdentityResolution.init(cipherVersion:nonce:tag:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  result = sub_100275AC0(a1, a2, a3, a4);
  if (v4)
  {
    return v6;
  }

  return result;
}

uint64_t NANAttribute.PairingIdentityResolution.init(from:)(uint64_t *a1)
{
  result = sub_100271F90(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t sub_100254B74()
{
  v1 = 0x65636E6F6ELL;
  if (*v0 != 1)
  {
    v1 = 6775156;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6556726568706963;
  }
}

uint64_t sub_100254BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284C40(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100254BF8(uint64_t a1)
{
  v2 = sub_100279BB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100254C34(uint64_t a1)
{
  v2 = sub_100279BB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.PairingIdentityResolution.__derived_struct_equals(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, a5, a6) & 1) == 0)
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
}

uint64_t NANAttribute.PairingIdentityResolution.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5)
{
  v18 = a4;
  v19 = a5;
  v9 = sub_10005DC58(&qword_1005925B0, &qword_10049F9C0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v18 - v12;
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279BB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = 0;
  sub_1002794B8();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v5)
  {
    v16 = v18;
    v15 = v19;
    v20 = a2;
    v21 = a3;
    v22 = 1;
    sub_10000AB0C(a2, a3);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v20, v21);
    v20 = v16;
    v21 = v15;
    v22 = 2;
    sub_10000AB0C(v16, v15);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v20, v21);
  }

  return (*(v10 + 8))(v13, v9);
}

uint64_t NANAttribute.PairingIdentityResolution.hash(into:)()
{
  Hasher._combine(_:)(0);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int NANAttribute.PairingIdentityResolution.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100254FDC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100255058()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher._combine(_:)(0);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_1002550C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  Data.hash(into:)();
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100255140@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100271F90(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100255190(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  if ((_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*a1, a1[1], *a2, a2[1]) & 1) == 0)
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v4, v5);
}

__int16 *NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.unsafeMutableAddressor()
{
  if (qword_10058AB58 != -1)
  {
    swift_once();
  }

  return &static NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods;
}

uint64_t static NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods.getter()
{
  if (qword_10058AB58 != -1)
  {
    swift_once();
  }

  return static NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods;
}

CoreP2P::NANAttribute::PairingBootstrapping::Method_optional __swiftcall NANAttribute.PairingBootstrapping.Method.validAdvertisedMethod(from:)(CoreP2P::NANAttribute::PairingBootstrapping::Method from)
{
  if (v1 > 0x7Fu)
  {
    if (v1 == 128)
    {
      if ((from.rawValue & 8) != 0)
      {
        v2 = 0;
        v3 = 8;
        return (v3 | (v2 << 16));
      }
    }

    else if (v1 == 256)
    {
      if ((from.rawValue & 0x10) != 0)
      {
        v2 = 0;
        v3 = 16;
        return (v3 | (v2 << 16));
      }
    }

    else if (v1 == 0x8000 && (from.rawValue & 0x8000) != 0)
    {
      v2 = 0;
      v3 = 0x8000;
      return (v3 | (v2 << 16));
    }

LABEL_19:
    v3 = 0;
    v2 = 1;
    return (v3 | (v2 << 16));
  }

  if (v1 == 1)
  {
    if (from.rawValue)
    {
      v2 = 0;
      v3 = 1;
      return (v3 | (v2 << 16));
    }

    goto LABEL_19;
  }

  if (v1 == 32)
  {
    if ((from.rawValue & 2) != 0)
    {
      v2 = 0;
      v3 = 2;
      return (v3 | (v2 << 16));
    }

    goto LABEL_19;
  }

  if (v1 != 64 || (from.rawValue & 4) == 0)
  {
    goto LABEL_19;
  }

  v2 = 0;
  v3 = 4;
  return (v3 | (v2 << 16));
}

uint64_t static NANAttribute.PairingBootstrapping.Comeback.__derived_struct_equals(_:_:)(uint64_t a1, char a2, uint64_t a3, unint64_t a4, uint64_t a5, char a6, uint64_t a7, unint64_t a8)
{
  if ((a2 & 1) == 0)
  {
    if ((a6 & 1) != 0 || a1 != a5)
    {
      return 0;
    }

    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
  }

  if (a6)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a4, a7, a8);
  }

  return 0;
}

uint64_t NANAttribute.PairingBootstrapping.Comeback.hash(into:)(uint64_t a1, Swift::UInt64 a2, char a3)
{
  if (a3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
  }

  return Data.hash(into:)();
}

Swift::Int NANAttribute.PairingBootstrapping.Comeback.hashValue.getter(Swift::UInt64 a1, char a2)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10025571C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002557AC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  if (*(v0 + 8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v3 = *v0;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v3);
  }

  return Data.hash(into:)();
}

Swift::Int sub_100255830()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  if (v2 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v1);
  }

  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002558BC(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (v4)
  {
    if (!*(a2 + 8))
    {
      return 0;
    }
  }

  else
  {
    if (*a1 == *a2)
    {
      v8 = *(a2 + 8);
    }

    else
    {
      v8 = 1;
    }

    if (v8)
    {
      return 0;
    }
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v5, v6, *(a2 + 16), *(a2 + 24));
}

uint64_t NANAttribute.PairingBootstrapping.type.getter()
{
  if ((*(v0 + 1) & 0xFu) >= 3)
  {
    return 3;
  }

  else
  {
    return *(v0 + 1) & 0xF;
  }
}

uint64_t NANAttribute.PairingBootstrapping.comeback.getter()
{
  v1 = v0[1];
  sub_1001AD708(v1, v0[2], v0[3], v0[4]);
  return v1;
}

uint64_t NANAttribute.PairingBootstrapping.comeback.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = sub_1000449CC(*(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  *(v4 + 8) = a1;
  *(v4 + 16) = a2;
  *(v4 + 24) = a3;
  *(v4 + 32) = a4;
  return result;
}

double NANAttribute.PairingBootstrapping.init(dialogToken:type:status:reason:comeback:method:)@<D0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, _OWORD *a9@<X8>, __int16 a10)
{
  v17 = a2 & 0xF | (16 * a3);
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  LOBYTE(v21) = a1;
  BYTE1(v21) = v17;
  BYTE2(v21) = a4;
  *(&v21 + 1) = a5;
  *v22 = a6;
  *&v22[8] = a7;
  *&v22[16] = a8;
  *&v22[24] = a10;
  v23[0] = a1;
  v23[1] = v17;
  v23[2] = a4;
  v24 = a5;
  v25 = a6;
  v26 = a7;
  v27 = a8;
  v28 = a10;
  sub_10012A628(&v21, &v20);
  sub_1001440B0(v23);
  v18 = *v22;
  *a9 = v21;
  a9[1] = v18;
  result = *&v22[10];
  *(a9 + 26) = *&v22[10];
  return result;
}

double static NANAttribute.PairingBootstrapping.retryRequest(dialogToken:comebackCookie:method:)@<D0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, __int16 a4@<W3>, _OWORD *a5@<X8>)
{
  sub_10000AB0C(a2, a3);
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  v13[0] = a1;
  strcpy(&v13[1], "!");
  *&v13[8] = xmmword_10049F6F0;
  *&v13[24] = a2;
  *&v13[32] = a3;
  *&v13[40] = a4;
  v14 = a1;
  v15 = 33;
  v16 = xmmword_10049F6F0;
  v17 = a2;
  v18 = a3;
  v19 = a4;
  sub_10012A628(v13, &v12);
  sub_1001440B0(&v14);
  v10 = *&v13[16];
  *a5 = *v13;
  a5[1] = v10;
  result = *&v13[26];
  *(a5 + 26) = *&v13[26];
  return result;
}

double sub_100255B54@<D0>(char a1@<W0>, __int16 a2@<W1>, unsigned __int8 a3@<W2>, _OWORD *a4@<X8>)
{
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  LOBYTE(v11) = a1;
  *(&v11 + 1) = a3;
  *(&v11 + 1) = 0;
  *v12 = 0uLL;
  *&v12[16] = 0xF000000000000000;
  *&v12[24] = a2;
  v13[0] = a1;
  v13[1] = a3;
  v13[2] = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xF000000000000000;
  v18 = a2;
  sub_10012A628(&v11, &v10);
  sub_1001440B0(v13);
  v8 = *v12;
  *a4 = v11;
  a4[1] = v8;
  result = *&v12[10];
  *(a4 + 26) = *&v12[10];
  return result;
}

double static NANAttribute.PairingBootstrapping.rejectedResponse(dialogToken:method:reason:)@<D0>(char a1@<W0>, __int16 a2@<W1>, char a3@<W2>, _OWORD *a4@<X8>)
{
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  LOBYTE(v11) = a1;
  BYTE1(v11) = 18;
  BYTE2(v11) = a3;
  *(&v11 + 1) = 0;
  *v12 = 0uLL;
  *&v12[16] = 0xF000000000000000;
  *&v12[24] = a2;
  v13[0] = a1;
  v13[1] = 18;
  v13[2] = a3;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0xF000000000000000;
  v18 = a2;
  sub_10012A628(&v11, &v10);
  sub_1001440B0(v13);
  v8 = *v12;
  *a4 = v11;
  a4[1] = v8;
  result = *&v12[10];
  *(a4 + 26) = *&v12[10];
  return result;
}

double static NANAttribute.PairingBootstrapping.advertising(methods:)@<D0>(__int16 a1@<W0>, _OWORD *a2@<X8>)
{
  if (qword_10058AB58 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v3 = static NANAttribute.PairingBootstrapping.Method.validAdvertiseMethods & a1;
  sub_1000449CC(0, 0, 0, 0xF000000000000000);
  LOWORD(v8) = 0;
  BYTE2(v8) = 0;
  *(&v8 + 1) = 0;
  *v9 = 0uLL;
  *&v9[16] = 0xF000000000000000;
  *&v9[24] = v3;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0xF000000000000000;
  v16 = v3;
  sub_10012A628(&v8, &v7);
  sub_1001440B0(&v10);
  v4 = *v9;
  *a2 = v8;
  a2[1] = v4;
  result = *&v9[10];
  *(a2 + 26) = *&v9[10];
  return result;
}

void NANAttribute.PairingBootstrapping.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 2));
  if (*(v0 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 24);
    v3 = *(v0 + 16);
    Hasher._combine(_:)(1u);
    if (v3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v1);
    }

    Data.hash(into:)();
  }

  Hasher._combine(_:)(*(v0 + 40));
}

Swift::Int NANAttribute.PairingBootstrapping.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 2));
  if (*(v0 + 32) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 8);
    v2 = *(v0 + 24);
    v3 = *(v0 + 16);
    Hasher._combine(_:)(1u);
    if (v3)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v1);
    }

    Data.hash(into:)();
  }

  Hasher._combine(_:)(*(v0 + 40));
  return Hasher._finalize()();
}

Swift::Int sub_100255F40()
{
  Hasher.init(_seed:)();
  NANAttribute.PairingBootstrapping.hash(into:)();
  return Hasher._finalize()();
}

double NANAttribute.PairingBootstrapping.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100272138(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 10);
    *(a2 + 26) = *(v7 + 10);
  }

  return result;
}

uint64_t sub_100255FC0(void *a1)
{
  v3 = *v1;
  *v4 = v1[1];
  *&v4[10] = *(v1 + 26);
  return NANAttribute.PairingBootstrapping.encode(to:)(a1);
}

uint64_t NANAttribute.PairingBootstrapping.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = *v1;
  sub_100031694(v14, v15);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
    return sub_100002A00(v14);
  }

  LOBYTE(v13[0]) = *(v3 + 1);
  sub_100031694(v14, v15);
  sub_10005DC58(&qword_1005925C0, &qword_10049F9C8);
  sub_10000CADC(&qword_1005925C8, &qword_1005925C0, &qword_10049F9C8);
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  LOBYTE(v13[0]) = *(v3 + 2);
  sub_100031694(v14, v15);
  sub_1002782D4();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v7 = *(v3 + 32);
  if (v7 >> 60 == 15)
  {
LABEL_3:
    v13[0] = *(v3 + 40);
    sub_100031694(v14, v15);
    sub_100279C08();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    return sub_100002A00(v14);
  }

  v8 = *(v3 + 24);
  if (*(v3 + 16))
  {
    result = sub_10012A628(v3, v13);
  }

  else
  {
    if (*(v3 + 8) >> 16)
    {
LABEL_23:
      __break(1u);
      goto LABEL_24;
    }

    sub_100031694(v14, v15);
    sub_10012A628(v3, v13);
    result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  v9 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_20:
      sub_100031694(v14, v15);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v14, v15);
      sub_10012A628(v3, v13);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_1000124C8(v8, v7);
      sub_1001440B0(v3);
      goto LABEL_3;
    }

    v11 = *(v8 + 16);
    v10 = *(v8 + 24);
    v12 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_17;
    }

    __break(1u);
  }

  else if (!v9)
  {
    goto LABEL_20;
  }

  if (!__OFSUB__(HIDWORD(v8), v8))
  {
    v12 = HIDWORD(v8) - v8;
LABEL_17:
    if ((v12 & 0x8000000000000000) == 0)
    {
      if (v12 > 0xFF)
      {
        __break(1u);
      }

      goto LABEL_20;
    }

    __break(1u);
    goto LABEL_23;
  }

LABEL_24:
  __break(1u);
  return result;
}

BOOL sub_100256334(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 10) = *(a1 + 26);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 10) = *(a2 + 26);
  return _s7CoreP2P12NANAttributeO20PairingBootstrappingV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7);
}

uint64_t NANAttribute.VendorSpecific.oui.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 2) = BYTE2(result);
  return result;
}

uint64_t sub_1002563A0()
{
  if (*v0)
  {
    result = 1635017060;
  }

  else
  {
    result = 6911343;
  }

  *v0;
  return result;
}

uint64_t sub_1002563CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6911343 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t sub_1002564A8(uint64_t a1)
{
  v2 = sub_100279C5C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002564E4(uint64_t a1)
{
  v2 = sub_100279C5C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static NANAttribute.VendorSpecific.__derived_struct_equals(_:_:)(int a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unint64_t a6)
{
  if ((sub_1000319F0(a1 & 0xFFFFFF, a4 & 0xFFFFFF) & 1) == 0)
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
}

uint64_t NANAttribute.VendorSpecific.encode(to:)(void *a1, unsigned int a2, uint64_t a3, unint64_t a4)
{
  v18 = a4;
  v17 = a3;
  v4 = a2;
  v6 = a2 >> 8;
  v7 = HIWORD(a2);
  v8 = sub_10005DC58(&qword_1005925D8, &unk_10049F9D0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v16 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279C5C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v20) = v4;
  BYTE1(v20) = v6;
  BYTE2(v20) = v7;
  v22 = 0;
  sub_1001F5AF0();
  v14 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v14)
  {
    v20 = v17;
    v21 = v18;
    v22 = 1;
    sub_10000AB0C(v17, v18);
    sub_100230328();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v20, v21);
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t NANAttribute.VendorSpecific.hash(into:)(uint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a2 >> 8;
  v4 = HIWORD(a2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100480F30;
  *(v5 + 32) = v2;
  *(v5 + 33) = v3;
  *(v5 + 34) = v4;
  v6 = sub_10002D874(v5);
  v8 = v7;

  Data.hash(into:)();
  sub_1000124C8(v6, v8);

  return Data.hash(into:)();
}

Swift::Int NANAttribute.VendorSpecific.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_100480F30;
  *(v4 + 32) = v1;
  *(v4 + 33) = v2;
  *(v4 + 34) = v3;
  v5 = sub_10002D874(v4);
  v7 = v6;

  Data.hash(into:)();
  sub_1000124C8(v5, v7);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100256928()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100480F30;
  *(v5 + 32) = v1;
  *(v5 + 34) = v2;
  v6 = sub_10002D874(v5);
  v8 = v7;

  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1002569F4()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100480F30;
  *(v5 + 32) = v1;
  *(v5 + 34) = v2;
  v6 = sub_10002D874(v5);
  v8 = v7;

  Data.hash(into:)();
  sub_1000124C8(v6, v8);

  return Data.hash(into:)();
}

Swift::Int sub_100256AB4()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = *(v0 + 1);
  v4 = *(v0 + 2);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100480F30;
  *(v5 + 32) = v1;
  *(v5 + 34) = v2;
  v6 = sub_10002D874(v5);
  v8 = v7;

  Data.hash(into:)();
  sub_1000124C8(v6, v8);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100256B7C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10026C2AC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100256BE4(unsigned __int16 *a1, unsigned __int16 *a2)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2);
  v4 = *(a2 + 1);
  v5 = *(a2 + 2);
  if ((sub_1000319F0(*a1 | (*(a1 + 2) << 16), *a2 | (*(a2 + 2) << 16)) & 1) == 0)
  {
    return 0;
  }

  return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v2, v3, v4, v5);
}

uint64_t (*NANAttribute.CustomDeviceInformation.CustomAttributes.flags.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 8) = *v1;
  return sub_100256CB0;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.datapathSubscribeID.setter(uint64_t result)
{
  *(v1 + 1) = result;
  *(v1 + 2) = BYTE1(result) & 1;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.publisherAuthenticationToken.getter()
{
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 28);
  v2 = *v1;
  sub_10005D67C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.publisherAuthenticationToken.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 28);
  result = sub_100017554(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encryptedSignature.getter()
{
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 32);
  v2 = *v1;
  sub_10005D67C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encryptedSignature.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 32);
  result = sub_100017554(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encryptedExtraServiceSpecificInfo.getter()
{
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 36);
  v2 = *v1;
  sub_10005D67C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encryptedExtraServiceSpecificInfo.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 36);
  result = sub_100017554(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.keepAliveDatapathIdentifiers.getter()
{
  v1 = *(v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 44));
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.keepAliveDatapathIdentifiers.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 44);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastLinkConditionResponse.getter()
{
  v1 = *(v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 52));
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastLinkConditionResponse.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 52);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastTxStatsInformation.getter()
{
  v1 = (v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 56));
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastTxStatsInformation.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = (v3 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 56));
  v8 = *v7;

  *v7 = a1;
  v7[1] = a2;
  v7[2] = a3;
  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastBlobData.getter()
{
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 60);
  v2 = *v1;
  sub_10005D67C(*v1, *(v1 + 8));
  return v2;
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.multicastBlobData.setter(uint64_t a1, uint64_t a2)
{
  v5 = v2 + *(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) + 60);
  result = sub_100017554(*v5, *(v5 + 8));
  *v5 = a1;
  *(v5 + 8) = a2;
  return result;
}

void *NANAttribute.CustomDeviceInformation.CustomAttributes.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v229 = a2;
  v227 = type metadata accessor for DispatchTimeInterval();
  v231 = *(v227 - 8);
  v4 = *(v231 + 64);
  __chkstk_darwin();
  v226 = (&v191 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v225 = &v191 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v217 = &v191 - v10;
  v11 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v216 = &v191 - v12;
  v237 = sub_10005DC58(&qword_10058BBE8, &qword_100481660);
  v239 = *(v237 - 8);
  v13 = *(v239 + 64);
  __chkstk_darwin();
  v240 = &v191 - v14;
  v15 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v224 = &v191 - v16;
  v17 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin();
  v220 = &v191 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v213 = &v191 - v22;
  v23 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v24 = *(*v23 + 64);
  __chkstk_darwin();
  v26 = &v191 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v26 = 0;
  v26[2] = 1;
  v27 = v23[8];
  v230 = v18;
  v29 = *(v18 + 56);
  v28 = v18 + 56;
  v211 = v29;
  v212 = v27;
  v221 = v17;
  v29(&v26[v27], 1, 1, v17);
  v30 = &v26[v23[9]];
  v241 = xmmword_100483C50;
  *v30 = xmmword_100483C50;
  v234 = &v26[v23[10]];
  v235 = v30;
  *v234 = xmmword_100483C50;
  v228 = &v26[v23[11]];
  *v228 = xmmword_100483C50;
  v31 = v23[12];
  v32 = type metadata accessor for UUID();
  v33 = *(v32 - 8);
  v34 = *(v33 + 56);
  v222 = v33 + 56;
  v223 = v31;
  v236 = v34;
  v34(&v26[v31], 1, 1, v32);
  v238 = v23[13];
  *&v26[v238] = _swiftEmptyArrayStorage;
  v35 = v23[14];
  v214 = *(v7 + 56);
  v215 = v35;
  v218 = v7 + 56;
  v219 = v6;
  v214(&v26[v35], 1, 1, v6);
  v36 = v23[15];
  *&v26[v36] = 0;
  v37 = &v26[v23[16]];
  *v37 = 0;
  *(v37 + 1) = 0;
  *(v37 + 2) = 0;
  v38 = v23[17];
  v242 = v26;
  v39 = &v26[v38];
  *&v26[v38] = v241;
  v40 = a1;
  v41 = a1[3];
  v42 = a1[4];
  *&v241 = v40;
  sub_100029B34(v40, v41);
  v43 = v243;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v43)
  {
    goto LABEL_4;
  }

  v232 = v32;
  v233 = v39;
  v204 = v37;
  v205 = v36;
  v203 = v28;
  sub_10005DC58(&qword_10058CF78, &qword_100484198);
  sub_100031694(v252, v252[3]);
  sub_1000D2B58();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v243 = 0;
  result = v248[0];
  v209 = *(v248[0] + 16);
  if (!v209)
  {
LABEL_128:

    v186 = v229;
    sub_100002A00(v252);
    v187 = v242;
    sub_1002774DC(v242, v186, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    sub_100002A00(v241);
    return sub_100277544(v187, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  }

  v45 = 0;
  v200 = 0;
  v201 = 0;
  v210 = v248[0] + 32;
  v197 = enum case for DispatchTimeInterval.seconds(_:);
  v46 = v232;
  v195 = (v231 + 32);
  v196 = (v231 + 104);
  v47 = v240;
  v207 = (v239 + 8);
  v194 = (v230 + 32);
  v48 = _swiftEmptyArrayStorage;
  v230 = v248[0];
  v49 = v233;
  while (1)
  {
    if (v45 >= result[2])
    {
      __break(1u);
LABEL_143:
      __break(1u);
      return result;
    }

    v55 = (v210 + 24 * v45);
    v56 = *(v55 + 1);
    v57 = *(v55 + 2);
    v58 = *v55;
    v239 = v57;
    if (v58 > 5)
    {
      break;
    }

    if (v58 <= 2)
    {
      if (!v58)
      {
        v75 = type metadata accessor for BinaryDecoder();
        v76 = swift_allocObject();
        v76[5] = &_swiftEmptyDictionarySingleton;
        v76[2] = v56;
        v76[3] = v57;
        v77 = v57 >> 62;
        if ((v57 >> 62) > 1)
        {
          v78 = 0;
          if (v77 == 2)
          {
            v78 = *(v56 + 16);
          }
        }

        else
        {
          v78 = v56;
          if (!v77)
          {
            v78 = 0;
          }
        }

        v76[4] = v78;
        swift_beginAccess();
        v76[5] = &_swiftEmptyDictionarySingleton;
        v250 = v75;
        v251 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v248[0] = v76;
        sub_10000AB0C(v56, v57);
        sub_10000AB0C(v56, v57);

        v128 = v243;
        v129 = UInt8.init(from:)();
        v243 = v128;
        if (v128)
        {

          sub_1000124C8(v56, v57);

          goto LABEL_3;
        }

        v130 = v129;

        sub_1000124C8(v56, v57);
        *v242 = v130;
        v54 = v48;
        goto LABEL_106;
      }

      if (v58 == 1)
      {
        v92 = type metadata accessor for BinaryDecoder();
        v93 = swift_allocObject();
        v94 = v93;
        v93[5] = &_swiftEmptyDictionarySingleton;
        v93[2] = v56;
        v93[3] = v57;
        v95 = v57 >> 62;
        if ((v57 >> 62) > 1)
        {
          v96 = 0;
          if (v95 == 2)
          {
            v96 = *(v56 + 16);
          }
        }

        else
        {
          v96 = v56;
          if (!v95)
          {
            v96 = 0;
          }
        }

        v93[4] = v96;
        swift_beginAccess();
        *(v94 + 40) = &_swiftEmptyDictionarySingleton;
        v250 = &type metadata for BinaryDecoder.UnkeyedContainer;
        v251 = sub_1000325F0();
        v248[0] = v94;
        v135 = *sub_100031694(v248, &type metadata for BinaryDecoder.UnkeyedContainer);
        v246 = v92;
        v247 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v245[0] = v135;
        v136 = v239;
        sub_10000AB0C(v56, v239);
        sub_10000AB0C(v56, v136);

        v137 = v243;
        v138 = UInt8.init(from:)();

        v243 = v137;
        if (v137)
        {

          v188 = v56;
          v189 = v136;
          goto LABEL_136;
        }

        sub_1000124C8(v56, v136);
        sub_100002A00(v248);
        v139 = v242;
        v242[1] = v138;
        v139[2] = 0;
        goto LABEL_77;
      }

      type metadata accessor for BinaryDecoder();
      v59 = swift_allocObject();
      v60 = 0;
      v59[5] = &_swiftEmptyDictionarySingleton;
      v59[2] = v56;
      v59[3] = v57;
      v202 = v59;
      v61 = v57 >> 62;
      if ((v57 >> 62) > 1)
      {
        if (v61 == 2)
        {
          v60 = *(v56 + 16);
        }
      }

      else if (v61)
      {
        v60 = v56;
      }

      v206 = v56;
      v110 = v202;
      *(v202 + 32) = v60;
      swift_beginAccess();
      *(v110 + 40) = &_swiftEmptyDictionarySingleton;
      v250 = &type metadata for BinaryDecoder.UnkeyedContainer;
      v251 = sub_1000325F0();
      v248[0] = v110;
      result = sub_100031694(v248, &type metadata for BinaryDecoder.UnkeyedContainer);
      v111 = *result;
      v113 = *(*result + 24);
      v112 = *(*result + 32);
      v114 = *(*result + 16);
      v115 = v113 >> 62;
      v208 = v48;
      if ((v113 >> 62) > 1)
      {
        if (v115 != 2)
        {
          if (!v112)
          {
LABEL_138:
            sub_10000B02C();
            swift_allocError();
            *v190 = 0;
            *(v190 + 8) = 0;
            *(v190 + 16) = 2;
            swift_willThrow();
            sub_10000AB0C(v206, v57);

LABEL_141:
            sub_100002A00(v248);
            goto LABEL_3;
          }

          v169 = 0;
          goto LABEL_118;
        }

        v116 = *(v114 + 24);
      }

      else if (v115)
      {
        v116 = v114 >> 32;
      }

      else
      {
        v116 = BYTE6(v113);
      }

      if (v112 == v116)
      {
        goto LABEL_138;
      }

      if (v115 == 2)
      {
        v169 = *(v114 + 24);
      }

      else if (v115 == 1)
      {
        v169 = v114 >> 32;
      }

      else
      {
        v169 = BYTE6(v113);
      }

LABEL_118:
      if (v169 < v112)
      {
        goto LABEL_143;
      }

      v170 = v111;
      v171 = v206;
      v172 = v239;
      sub_10000AB0C(v206, v239);
      sub_10000AB0C(v171, v172);

      v173 = Data._Representation.subscript.getter();
      v175 = v170;
      v176 = *(v170 + 16);
      v177 = *(v170 + 24);
      v178 = v177 >> 62;
      if ((v177 >> 62) > 1)
      {
        v47 = v240;
        v179 = v221;
        v180 = v208;
        if (v178 == 2)
        {
          v181 = *(v176 + 24);
        }

        else
        {
          v181 = 0;
        }
      }

      else
      {
        v47 = v240;
        v179 = v221;
        v180 = v208;
        if (v178)
        {
          v181 = v176 >> 32;
        }

        else
        {
          v181 = BYTE6(v177);
        }
      }

      v182 = v239;
      *(v175 + 32) = v181;
      v245[0] = v173;
      v245[1] = v174;
      v183 = v220;
      v184 = v243;
      P256.KeyAgreement.PublicKey.init<A>(rawRepresentation:)();
      v243 = v184;
      if (v184)
      {

        sub_1000124C8(v206, v182);
        goto LABEL_141;
      }

      sub_1000124C8(v206, v182);
      v185 = v213;
      (*v194)(v213, v183, v179);
      v211(v185, 0, 1, v179);
      sub_100002A00(v248);
      sub_1000B1B78(v185, &v242[v212], &unk_100595C40, &qword_100499070);
      v54 = v180;
      goto LABEL_106;
    }

    if (v58 == 3)
    {
      v50 = *v235;
      v51 = v235[1];
      sub_10000AB0C(v56, v57);
      v52 = v50;
      v53 = v235;
    }

    else
    {
      if (v58 != 4)
      {
        v66 = v45;
        v67 = v47;
        v68 = v228;
        v69 = *v228;
        v70 = *(v228 + 1);
        sub_10000AB0C(v56, v57);
        v71 = v69;
        v46 = v232;
        sub_100017554(v71, v70);
        v49 = v233;
        result = v230;
        *v68 = v56;
        v68[1] = v57;
        v47 = v67;
        v45 = v66;
        goto LABEL_9;
      }

      v102 = *v234;
      v51 = *(v234 + 1);
      sub_10000AB0C(v56, v57);
      v52 = v102;
      v53 = v234;
    }

    sub_100017554(v52, v51);
    result = v230;
    *v53 = v56;
    v53[1] = v57;
    v46 = v232;
    v49 = v233;
LABEL_9:
    v54 = v48;
LABEL_10:
    ++v45;
    v48 = v54;
    if (v45 == v209)
    {
      goto LABEL_128;
    }
  }

  v62 = v236;
  if (v58 > 8)
  {
    switch(v58)
    {
      case 9:
        sub_10000AB0C(v56, v57);
        sub_10000AB0C(v56, v57);
        v84 = v56;
        v85 = v57;
        v86 = sub_100033AA8(_swiftEmptyArrayStorage);
        v87 = type metadata accessor for BinaryDecoder();
        v88 = swift_allocObject();
        v88[5] = &_swiftEmptyDictionarySingleton;
        v88[2] = v84;
        v88[3] = v85;
        v89 = v85 >> 62;
        if ((v85 >> 62) > 1)
        {
          v90 = v84;
          v91 = 0;
          if (v89 == 2)
          {
            v91 = *(v84 + 16);
          }
        }

        else
        {
          v90 = v84;
          v91 = v84;
          if (!v89)
          {
            v91 = 0;
          }
        }

        v88[4] = v91;
        swift_beginAccess();
        v88[5] = v86;
        v250 = &type metadata for BinaryDecoder.UnkeyedContainer;
        v251 = sub_1000325F0();
        v248[0] = v88;
        v131 = *sub_100031694(v248, &type metadata for BinaryDecoder.UnkeyedContainer);
        v246 = v87;
        v247 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v245[0] = v131;

        v132 = v243;
        v133 = sub_100226288(v245);
        v243 = v132;
        if (v132)
        {

          v188 = v90;
          goto LABEL_133;
        }

        v134 = v133;

        sub_1000124C8(v90, v239);
        sub_100002A00(v248);

        *&v242[v205] = v134;
        v200 = v134;
LABEL_77:
        v54 = v48;
        goto LABEL_105;
      case 10:
        sub_10000AB0C(v56, v57);
        sub_10000AB0C(v56, v57);
        v103 = v56;
        v104 = v57;
        v105 = sub_100033AA8(_swiftEmptyArrayStorage);
        v106 = type metadata accessor for BinaryDecoder();
        v107 = swift_allocObject();
        v107[5] = &_swiftEmptyDictionarySingleton;
        v107[2] = v103;
        v107[3] = v104;
        v108 = v104 >> 62;
        v206 = v103;
        if ((v104 >> 62) > 1)
        {
          v109 = 0;
          if (v108 == 2)
          {
            v109 = *(v206 + 16);
          }
        }

        else
        {
          v109 = v103;
          if (!v108)
          {
            v109 = 0;
          }
        }

        v107[4] = v109;
        swift_beginAccess();
        v107[5] = v105;
        v250 = &type metadata for BinaryDecoder.UnkeyedContainer;
        v251 = sub_1000325F0();
        v248[0] = v107;
        v160 = *sub_100031694(v248, &type metadata for BinaryDecoder.UnkeyedContainer);
        v246 = v106;
        v247 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v245[0] = v160;

        v161 = v243;
        v162 = sub_100225EE0(v245);
        v243 = v161;
        if (v161)
        {

          v188 = v206;
LABEL_133:
          v189 = v239;
LABEL_136:
          sub_1000124C8(v188, v189);
          sub_100002A00(v248);
          goto LABEL_3;
        }

        v165 = v162;
        v166 = v163;
        v167 = v164;

        sub_1000124C8(v206, v239);
        sub_100002A00(v248);

        v168 = v204;
        *v204 = v165;
        v168[1] = v166;
        v201 = v165;
        v54 = v48;
        v168[2] = v167;
        goto LABEL_105;
      case 11:
        v72 = *v49;
        v73 = v49[1];
        sub_10000AB0C(v56, v57);
        v74 = v72;
        v46 = v232;
        sub_100017554(v74, v73);
        v49 = v233;
        result = v230;
        *v233 = v56;
        v49[1] = v57;
        break;
    }

    goto LABEL_9;
  }

  if (v58 == 6)
  {
    sub_10000AB0C(v56, v57);
    sub_10000AB0C(v56, v57);
    v79 = v243;
    sub_1002A5C4C(v56, v57, v248);
    v243 = v79;
    if (v79)
    {

      sub_1000124C8(v56, v57);
      sub_1000124C8(v56, v57);
      goto LABEL_3;
    }

    sub_1000124C8(v56, v57);
    v80 = v45;
    v81 = v47;
    v82 = v224;
    UUID.init(uuid:)();
    sub_1000124C8(v56, v57);
    v62(v82, 0, 1, v46);
    v83 = v82;
    v47 = v81;
    v45 = v80;
    sub_1000B1B78(v83, &v242[v223], &qword_10058F4D0, &qword_100491AB0);
    v54 = v48;
    result = v230;
    goto LABEL_107;
  }

  v208 = v48;
  if (v58 != 7)
  {
    type metadata accessor for BinaryDecoder();
    v63 = swift_allocObject();
    v64 = 0;
    v63[5] = &_swiftEmptyDictionarySingleton;
    v63[2] = v56;
    v63[3] = v57;
    v65 = v57 >> 62;
    if ((v57 >> 62) > 1)
    {
      if (v65 == 2)
      {
        v64 = *(v56 + 16);
      }
    }

    else if (v65)
    {
      v64 = v56;
    }

    v63[4] = v64;
    swift_beginAccess();
    v63[5] = &_swiftEmptyDictionarySingleton;
    v250 = &type metadata for BinaryDecoder.UnkeyedContainer;
    v117 = sub_1000325F0();
    v251 = v117;
    v248[0] = v63;
    v118 = *sub_100031694(v248, &type metadata for BinaryDecoder.UnkeyedContainer);
    v246 = &type metadata for BinaryDecoder.UnkeyedContainer;
    v247 = v117;
    v245[0] = v118;
    sub_100031694(v245, &type metadata for BinaryDecoder.UnkeyedContainer);
    v119 = v239;
    sub_10000AB0C(v56, v239);

    v206 = v56;
    sub_10000AB0C(v56, v119);

    v120 = v243;
    v121 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v120)
    {
      sub_100002A00(v245);

      sub_1000124C8(v206, v239);
      goto LABEL_141;
    }

    v122 = v226;
    v123 = v227;
    *v226 = v121;
    (*v196)(v122, v197, v123);
    v124 = v225;
    (*v195)(v225, v122, v123);
    sub_100031694(v245, v246);
    sub_10021F820();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v243 = 0;
    v125 = v219;
    *(v124 + *(v219 + 20)) = v244;
    sub_100002A00(v245);
    v126 = v217;
    sub_1002774DC(v124, v217, type metadata accessor for NANInternetSharingStatistics.Requester);

    sub_100277544(v124, type metadata accessor for NANInternetSharingStatistics.Requester);

    sub_1000124C8(v206, v239);
    v127 = v216;
    sub_100262DC8(v126, v216, type metadata accessor for NANInternetSharingStatistics.Requester);
    v214(v127, 0, 1, v125);
    sub_100002A00(v248);
    sub_1000B1B78(v127, &v242[v215], &unk_100596870, &unk_1004B0F60);
    v54 = v208;
LABEL_105:
    v47 = v240;
LABEL_106:
    result = v230;
    v46 = v232;
LABEL_107:
    v49 = v233;
    goto LABEL_10;
  }

  v193 = v45;
  v97 = v47;
  sub_10000AB0C(v56, v57);
  v98 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v99 = swift_allocObject();
  v100 = 0;
  v99[5] = &_swiftEmptyDictionarySingleton;
  v99[2] = v56;
  v99[3] = v57;
  v101 = v57 >> 62;
  if ((v57 >> 62) > 1)
  {
    if (v101 == 2)
    {
      v100 = *(v56 + 16);
    }
  }

  else if (v101)
  {
    v100 = v56;
  }

  v99[4] = v100;
  swift_beginAccess();
  v99[5] = v98;
  v141 = v99[2];
  v140 = v99[3];
  v206 = v56;
  sub_10000AB0C(v56, v57);
  v142 = v140 >> 62;
  v198 = v141 >> 32;
  v199 = v141;
  v54 = _swiftEmptyArrayStorage;
  v202 = BYTE6(v140);
  while (2)
  {
    v143 = v238;
LABEL_82:
    v144 = v99[4];
    if (v142 <= 1)
    {
      v145 = v202;
      v146 = v239;
      if (v142)
      {
        v145 = v198;
      }

      goto LABEL_87;
    }

    v146 = v239;
    if (v142 == 2)
    {
      v145 = *(v199 + 24);
LABEL_87:
      if (v144 >= v145)
      {
        goto LABEL_108;
      }
    }

    else if ((v144 & 0x8000000000000000) == 0)
    {
LABEL_108:

      sub_1000124C8(v206, v146);

      *&v242[v143] = v54;
      result = v230;
      v46 = v232;
      v49 = v233;
      v47 = v97;
      v45 = v193;
      goto LABEL_10;
    }

    v248[0] = v99;

    sub_10005DC58(&qword_1005925E8, &qword_10049F9E0);
    sub_10000CADC(&qword_1005925F0, &qword_1005925E8, &qword_10049F9E0);
    KeyedDecodingContainer.init<A>(_:)();
    LOBYTE(v248[0]) = 0;
    v147 = v237;
    v148 = v243;
    v149 = KeyedDecodingContainer.decode(_:forKey:)();
    if (!v148)
    {
      v150 = v149;
      LOBYTE(v245[0]) = 1;
      sub_10003804C();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*v207)(v97, v147);
      v2.i32[0] = v248[0];
      v152 = BYTE4(v248[0]);
      LODWORD(v243) = BYTE5(v248[0]);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v54 = sub_1001160AC(0, *(v54 + 2) + 1, 1, v54);
      }

      v153 = v150;
      v155 = *(v54 + 2);
      v154 = *(v54 + 3);
      v156 = v155 + 1;
      if (v155 >= v154 >> 1)
      {
        v192 = v155 + 1;
        v159 = sub_1001160AC((v154 > 1), v155 + 1, 1, v54);
        v156 = v192;
        v54 = v159;
        v153 = v150;
      }

      v157 = vmovl_u8(v2).u64[0];
      *(v54 + 2) = v156;
      v158 = &v54[8 * v155 - v155];
      *(v158 + 32) = v153;
      *(v158 + 33) = vuzp1_s8(v157, v157).u32[0];
      *(v158 + 37) = v152;
      *(v158 + 38) = v243;
      v243 = 0;
      v97 = v240;
      continue;
    }

    break;
  }

  (*v207)(v97, v147);
  v243 = 0;
  v245[0] = v148;
  swift_errorRetain();
  sub_10005DC58(&qword_10058C830, &qword_1004821F0);
  v151 = swift_dynamicCast();
  v143 = v238;
  if (!v151)
  {
    goto LABEL_130;
  }

  if (v249 == 2)
  {
    if ((v248[0] & 1) == 0)
    {
      goto LABEL_130;
    }

    v97 = v240;
    goto LABEL_82;
  }

  sub_1000B2594(v248[0], v248[1], v249);
LABEL_130:

  sub_1000124C8(v206, v239);
LABEL_3:
  sub_100002A00(v252);
LABEL_4:
  sub_100002A00(v241);
  return sub_100277544(v242, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v89 = &v88 - v6;
  v91 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v88 = *(v91 - 8);
  v7 = *(v88 + 64);
  __chkstk_darwin();
  v90 = &v88 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v93 = &v88 - v10;
  v11 = type metadata accessor for UUID();
  v94 = *(v11 - 8);
  v95 = v11;
  v12 = *(v94 + 64);
  __chkstk_darwin();
  v92 = &v88 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v96 = (&v88 - v14);
  v15 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v17 = &v88 - v16;
  v18 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v97 = *(v18 - 8);
  v19 = *(v97 + 8);
  __chkstk_darwin();
  v21 = &v88 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_allocObject();
  v23 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v24 = *v3;
  if (*v3)
  {
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v25 = swift_allocObject();
    *(v25 + 16) = xmmword_100480F40;
    *(v25 + 32) = v24;
    v26 = sub_10002D874(v25);
    v28 = v27;

    sub_100259C00(0, v26, v28, v22);
    if (v2)
    {
      sub_1000124C8(v26, v28);
    }

    sub_1000124C8(v26, v28);
  }

  if (v3[2])
  {
    v30 = v22;
    v31 = v2;
    goto LABEL_9;
  }

  v32 = v3[1];
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_100480F40;
  *(v33 + 32) = v32;
  v34 = sub_10002D874(v33);
  v36 = v35;

  v30 = v22;
  sub_100259C00(1, v34, v36, v22);
  v31 = v2;
  v37 = v34;
  if (!v2)
  {
    sub_1000124C8(v34, v36);
LABEL_9:
    v38 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    sub_100012400(&v3[v38[6]], v17, &unk_100595C40, &qword_100499070);
    v39 = v97;
    if ((*(v97 + 6))(v17, 1, v18) == 1)
    {
      sub_100016290(v17, &unk_100595C40, &qword_100499070);
    }

    else
    {
      (*(v39 + 32))(v21, v17, v18);
      v40 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
      v36 = v41;
      sub_100259C00(2, v40, v41, v30);
      if (v31)
      {
        (*(v39 + 8))(v21, v18);
LABEL_13:
        v37 = v40;
        goto LABEL_14;
      }

      (*(v39 + 8))(v21, v18);
      sub_1000124C8(v40, v36);
    }

    v42 = &v3[v38[7]];
    v43 = *(v42 + 1);
    v44 = v96;
    if (v43 >> 60 != 15)
    {
      v45 = *v42;
      sub_10000AB0C(*v42, *(v42 + 1));
      sub_100259C00(3, v45, v43, v30);
      if (v31)
      {
        goto LABEL_25;
      }

      sub_100017554(v45, v43);
    }

    v46 = &v3[v38[8]];
    v43 = *(v46 + 1);
    if (v43 >> 60 != 15)
    {
      v45 = *v46;
      sub_10000AB0C(*v46, *(v46 + 1));
      sub_100259C00(4, v45, v43, v30);
      if (v31)
      {
        goto LABEL_25;
      }

      sub_100017554(v45, v43);
    }

    v47 = &v3[v38[9]];
    v43 = *(v47 + 1);
    if (v43 >> 60 == 15)
    {
      v97 = v30;
LABEL_28:
      v48 = v93;
      sub_100012400(&v3[v38[10]], v93, &qword_10058F4D0, &qword_100491AB0);
      v49 = v94;
      v50 = v95;
      if ((*(v94 + 48))(v48, 1, v95) == 1)
      {
        sub_100016290(v48, &qword_10058F4D0, &qword_100491AB0);
        v51 = v97;
        goto LABEL_33;
      }

      (*(v49 + 32))(v44, v48, v50);
      v52 = v92;
      (*(v49 + 16))(v92, v44, v50);
      v53 = v49;
      v98[0] = UUID.uuid.getter();
      v98[1] = v54;
      v40 = sub_10004F3B0(v98, &v99);
      v36 = v55;
      v56 = *(v53 + 8);
      v56(v52, v50);
      v51 = v97;
      sub_100259C00(6, v40, v36, v97);
      if (!v31)
      {
        v56(v96, v50);
        sub_1000124C8(v40, v36);
LABEL_33:
        if (*(*&v3[v38[11]] + 16))
        {
          v57 = v38;
          v58 = sub_100033AA8(_swiftEmptyArrayStorage);
          v59 = type metadata accessor for BinaryEncoder();
          v60 = swift_allocObject();
          *(v60 + 16) = xmmword_100480A90;
          *(v60 + 32) = v58;
          v100 = v59;
          v101 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
          v98[0] = v60;
          sub_100279CB0();

          Array<A>.encode(to:)();
          if (v31)
          {
            goto LABEL_47;
          }

          sub_100002A00(v98);
          swift_beginAccess();
          v61 = *(v60 + 16);
          v62 = *(v60 + 24);
          sub_10000AB0C(v61, v62);

          sub_100259C00(7, v61, v62, v51);
          sub_1000124C8(v61, v62);
          v38 = v57;
        }

        v63 = v89;
        sub_100012400(&v3[v38[12]], v89, &unk_100596870, &unk_1004B0F60);
        if ((*(v88 + 48))(v63, 1, v91) == 1)
        {
          sub_100016290(v63, &unk_100596870, &unk_1004B0F60);
LABEL_39:
          v64 = *&v3[v38[13]];
          if (v64)
          {
            v65 = v38;
            v66 = sub_100033AA8(_swiftEmptyArrayStorage);
            v67 = type metadata accessor for BinaryEncoder();
            v68 = swift_allocObject();
            *(v68 + 16) = xmmword_100480A90;
            *(v68 + 32) = v66;
            v100 = v67;
            v101 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
            v98[0] = v68;

            NANMulticastLinkCondition.encode(to:)(v98, v64);
            if (v31)
            {
              goto LABEL_47;
            }

            sub_100002A00(v98);
            swift_beginAccess();
            v69 = *(v68 + 16);
            v70 = *(v68 + 24);
            sub_10000AB0C(v69, v70);

            sub_100259C00(9, v69, v70, v51);
            sub_1000124C8(v69, v70);
            v71 = 0;
            v38 = v65;
          }

          else
          {
            v71 = v31;
          }

          v76 = &v3[v38[14]];
          v77 = *v76;
          if (*v76)
          {
            v96 = v38;
            v97 = v3;
            v79 = v76[1];
            v78 = v76[2];
            v80 = sub_100033AA8(_swiftEmptyArrayStorage);
            v81 = type metadata accessor for BinaryEncoder();
            v82 = swift_allocObject();
            *(v82 + 16) = xmmword_100480A90;
            *(v82 + 32) = v80;
            v100 = v81;
            v101 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
            v98[0] = v82;

            NANMulticastTxStats.encode(to:)(v98, v77);
            if (v71)
            {
              goto LABEL_47;
            }

            sub_100002A00(v98);
            swift_beginAccess();
            v83 = *(v82 + 16);
            v84 = *(v82 + 24);
            sub_10000AB0C(v83, v84);

            sub_100259C00(10, v83, v84, v51);
            sub_1000124C8(v83, v84);
            v38 = v96;
            v3 = v97;
          }

          v85 = &v3[v38[15]];
          v43 = *(v85 + 1);
          if (v43 >> 60 == 15)
          {
          }

          v45 = *v85;
          sub_10000AB0C(*v85, *(v85 + 1));
          sub_100259C00(11, v45, v43, v51);
          goto LABEL_25;
        }

        sub_100262DC8(v63, v90, type metadata accessor for NANInternetSharingStatistics.Requester);
        v72 = sub_100033AA8(_swiftEmptyArrayStorage);
        type metadata accessor for BinaryEncoder();
        v73 = swift_allocObject();
        *(v73 + 16) = xmmword_100480A90;
        *(v73 + 32) = v72;
        v100 = &type metadata for BinaryEncoder.UnkeyedContainer;
        v101 = sub_1000D12E4();
        v98[0] = v73;

        v74 = DispatchTimeInterval.rawSeconds.getter();
        if (v74 < 0xFFFFFFFF80000000)
        {
          __break(1u);
        }

        else if (v74 <= 0x7FFFFFFF)
        {
          sub_100031694(v98, &type metadata for BinaryEncoder.UnkeyedContainer);
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          if (v31)
          {
            sub_100277544(v90, type metadata accessor for NANInternetSharingStatistics.Requester);
LABEL_47:

            sub_100002A00(v98);
          }

          v75 = *(v90 + *(v91 + 20));
          sub_100031694(v98, v100);
          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          sub_100002A00(v98);
          swift_beginAccess();
          v86 = *(v73 + 16);
          v87 = *(v73 + 24);
          sub_10000AB0C(v86, v87);

          sub_100259C00(8, v86, v87, v51);
          sub_100277544(v90, type metadata accessor for NANInternetSharingStatistics.Requester);
          sub_1000124C8(v86, v87);
          goto LABEL_39;
        }

        __break(1u);
      }

      v56(v96, v50);
      goto LABEL_13;
    }

    v45 = *v47;
    sub_10000AB0C(*v47, *(v47 + 1));
    sub_100259C00(5, v45, v43, v30);
    if (!v31)
    {
      v97 = v30;
      sub_100017554(v45, v43);
      goto LABEL_28;
    }

LABEL_25:
    sub_100017554(v45, v43);
  }

LABEL_14:
  sub_1000124C8(v37, v36);
}

uint64_t sub_100259C00(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4)
{
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
      v8 = __OFSUB__(v6, v7);
      v5 = v6 - v7;
      if (!v8)
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
      return result;
    }

LABEL_8:
    swift_beginAccess();
    v12 = *(a4 + 48);
    sub_100031694(a4 + 16, *(a4 + 40));
    sub_10000AB0C(a2, a3);
    sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
    sub_10000CADC(&qword_100592250, &qword_10058CF90, &qword_1004841A0);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    swift_endAccess();
    return sub_1000124C8(a2, a3);
  }

  if (!v4)
  {
    goto LABEL_8;
  }

  LODWORD(v5) = HIDWORD(a2) - a2;
  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    goto LABEL_11;
  }

  v5 = v5;
LABEL_7:
  if (v5 < 0xFFFF)
  {
    goto LABEL_8;
  }

  sub_10000B02C();
  swift_allocError();
  *v14 = 0;
  *(v14 + 8) = 0;
  *(v14 + 16) = 2;
  return swift_willThrow();
}

uint64_t NANAttribute.CustomDeviceInformation.CustomAttributes.customMirror.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v93 = a1;
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v90 = *(v3 - 8);
  v91 = v3;
  v4 = *(v90 + 64);
  __chkstk_darwin();
  v92 = &v80 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v89 = &v80 - v7;
  v8 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v87 = *(v8 - 8);
  v9 = *(v87 + 64);
  __chkstk_darwin();
  v81 = &v80 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v13 = &v80 - v12;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v80 = &v80 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v20 = &v80 - v19;
  v21 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v23 = &v80 - v22;
  v24 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v25 = *(*(v24 - 1) + 64);
  __chkstk_darwin();
  v88 = &v80 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002774DC(v2, v88, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v27 = *v2;
  v83 = v20;
  if (v27)
  {
    LODWORD(v111) = v27;
    v28 = &type metadata for NANAttribute.CustomDeviceInformation.Flags;
    v29 = 0xE500000000000000;
    v30 = 0x7367616C66;
  }

  else
  {
    v30 = 0;
    v29 = 0;
    v28 = 0;
    v111 = 0;
    v112 = 0;
    v113 = 0;
  }

  v109 = v30;
  v110 = v29;
  v114 = v28;
  if (v2[2])
  {
    v31 = 0;
    v32 = 0;
    v33 = 0;
    v117 = 0;
    v118 = 0;
    v119 = 0;
  }

  else
  {
    v32 = 0x80000001004BD670;
    LOBYTE(v117) = v2[1];
    v33 = &type metadata for UInt8;
    v31 = 0xD000000000000013;
  }

  v84 = v15;
  v85 = v14;
  v86 = v13;
  v115 = v31;
  v116 = v32;
  v120 = v33;
  v121 = 0x7974697275636573;
  v122 = 0xE800000000000000;
  sub_100012400(&v2[v24[6]], v23, &unk_100595C40, &qword_100499070);
  v34 = type metadata accessor for P256.KeyAgreement.PublicKey();
  result = (*(*(v34 - 8) + 48))(v23, 1, v34);
  v36 = 0uLL;
  if (result != 1)
  {
    result = sub_100016290(v23, &unk_100595C40, &qword_100499070);
    v36 = xmmword_10049F700;
  }

  v37 = 0;
  v102 = v36;
  v38 = 0x80000001004BD650;
  if (*&v2[v24[7] + 8] >> 60 == 15)
  {
    v39 = 0;
  }

  else
  {
    v39 = 0xD000000000000014;
  }

  if (*&v2[v24[7] + 8] >> 60 == 15)
  {
    v38 = 0;
  }

  v103 = v39;
  v104 = v38;
  v40 = 0x80000001004BD630;
  if (*&v2[v24[8] + 8] >> 60 == 15)
  {
    v41 = 0;
  }

  else
  {
    v41 = 0xD000000000000013;
  }

  if (*&v2[v24[8] + 8] >> 60 == 15)
  {
    v40 = 0;
  }

  v105 = v41;
  v106 = v40;
  v42 = vdup_n_s32(*&v2[v24[9] + 8] >> 60 == 15);
  v43.i64[0] = v42.u32[0];
  v43.i64[1] = v42.u32[1];
  v107 = vandq_s8(vcgezq_s64(vshlq_n_s64(v43, 0x3FuLL)), xmmword_10049F710);
  v44 = _swiftEmptyArrayStorage;
LABEL_20:
  v45 = 4;
  if (v37 > 4)
  {
    v45 = v37;
  }

  v46 = v45 + 1;
  v47 = 16 * v37 + 40;
  while (v37 != 4)
  {
    if (v46 == ++v37)
    {
      __break(1u);
      return result;
    }

    v48 = v47 + 16;
    v49 = *&v101[v47];
    v47 += 16;
    if (v49)
    {
      v82 = v2;
      v50 = v24;
      v51 = *(&v99 + v48 + 8);

      result = swift_isUniquelyReferenced_nonNull_native();
      v52 = v8;
      if ((result & 1) == 0)
      {
        result = sub_100115F7C(0, *(v44 + 2) + 1, 1, v44);
        v44 = result;
      }

      v54 = *(v44 + 2);
      v53 = *(v44 + 3);
      if (v54 >= v53 >> 1)
      {
        result = sub_100115F7C((v53 > 1), v54 + 1, 1, v44);
        v44 = result;
      }

      *(v44 + 2) = v54 + 1;
      v55 = &v44[16 * v54];
      *(v55 + 4) = v51;
      *(v55 + 5) = v49;
      v8 = v52;
      v24 = v50;
      v2 = v82;
      goto LABEL_20;
    }
  }

  sub_10005DC58(&unk_100599FD0, &qword_100482530);
  swift_arrayDestroy();
  *&v98 = v44;
  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
  v56 = BidirectionalCollection<>.joined(separator:)();
  v58 = v57;

  v125 = &type metadata for String;
  v123 = v56;
  v124 = v58;
  v59 = v83;
  sub_100012400(&v2[v24[10]], v83, &qword_10058F4D0, &qword_100491AB0);
  v61 = v84;
  v60 = v85;
  if ((*(v84 + 48))(v59, 1, v85) == 1)
  {
    v127 = 0u;
    v128 = 0u;
    v126 = 0u;
  }

  else
  {
    v62 = v80;
    (*(v61 + 32))(v80, v59, v60);
    strcpy(&v126, "keepAliveUUID");
    HIWORD(v126) = -4864;
    v63 = UUID.uuidString.getter();
    *(&v128 + 1) = &type metadata for String;
    *&v127 = v63;
    *(&v127 + 1) = v64;
    (*(v61 + 8))(v62, v60);
  }

  v65 = v86;
  v66 = *&v2[v24[11]];
  if (*(v66 + 16))
  {
    v129 = 0xD00000000000001CLL;
    v130 = 0x80000001004BD5F0;
    v67 = sub_10005DC58(&qword_100592600, &qword_10049F9E8);
  }

  else
  {
    v66 = 0;
    v67 = 0;
    v129 = 0;
    v130 = 0;
    v133 = 0;
    v132 = 0;
  }

  v131 = v66;
  v134 = v67;
  sub_100012400(&v2[v24[12]], v65, &unk_100596870, &unk_1004B0F60);
  if ((*(v87 + 48))(v65, 1, v8) == 1)
  {
    v136 = 0u;
    v137 = 0u;
    v135 = 0u;
  }

  else
  {
    v68 = v65;
    v69 = v81;
    sub_100262DC8(v68, v81, type metadata accessor for NANInternetSharingStatistics.Requester);
    *&v135 = 0xD000000000000019;
    *(&v135 + 1) = 0x80000001004BD610;
    *(&v137 + 1) = v8;
    v70 = sub_1000297D4(&v136);
    sub_100262DC8(v69, v70, type metadata accessor for NANInternetSharingStatistics.Requester);
  }

  v71 = _swiftEmptyArrayStorage;
  for (i = 32; i != 320; i += 48)
  {
    sub_100012400(&v108[i], &v98, &qword_100592608, &unk_10049F9F0);
    v94[0] = v98;
    v94[1] = v99;
    v94[2] = v100;
    if (*(&v98 + 1))
    {
      v95 = v98;
      v96 = v99;
      v97 = v100;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v71 = sub_100117CCC(0, v71[2] + 1, 1, v71);
      }

      v74 = v71[2];
      v73 = v71[3];
      if (v74 >= v73 >> 1)
      {
        v71 = sub_100117CCC((v73 > 1), v74 + 1, 1, v71);
      }

      v71[2] = v74 + 1;
      v75 = &v71[6 * v74];
      v76 = v95;
      v77 = v97;
      v75[3] = v96;
      v75[4] = v77;
      v75[2] = v76;
    }

    else
    {
      sub_100016290(v94, &qword_100592608, &unk_10049F9F0);
    }
  }

  sub_10005DC58(&qword_100592608, &unk_10049F9F0);
  swift_arrayDestroy();
  v78 = sub_1001F83AC(v71);

  *&v98 = v78;
  v79 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v79 - 8) + 56))(v89, 1, 1, v79);
  (*(v90 + 104))(v92, enum case for Mirror.AncestorRepresentation.generated(_:), v91);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

void NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NANInternetSharingStatistics.Requester();
  v49 = *(v4 - 8);
  v50 = v4;
  v5 = *(v49 + 64);
  __chkstk_darwin();
  v46 = &v45 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_100596870, &unk_1004B0F60) - 8) + 64);
  __chkstk_darwin();
  v48 = &v45 - v8;
  v9 = type metadata accessor for UUID();
  v47 = *(v9 - 8);
  v10 = *(v47 + 64);
  __chkstk_darwin();
  v45 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&qword_10058F4D0, &qword_100491AB0) - 8) + 64);
  __chkstk_darwin();
  v14 = &v45 - v13;
  v15 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v22 = &v45 - v21;
  Hasher._combine(_:)(*v1);
  if (v1[2])
  {
    v23 = 0;
  }

  else
  {
    v23 = v1[1];
    Hasher._combine(_:)(1u);
  }

  Hasher._combine(_:)(v23);
  v24 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  sub_100012400(&v1[v24[6]], v22, &unk_100595C40, &qword_100499070);
  if ((*(v16 + 48))(v22, 1, v15) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v16 + 32))(v19, v22, v15);
    Hasher._combine(_:)(1u);
    v25 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v27 = v26;
    Data.hash(into:)();
    sub_1000124C8(v25, v27);
    (*(v16 + 8))(v19, v15);
  }

  v28 = &v2[v24[7]];
  if (*(v28 + 1) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v29 = *v28;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v30 = &v2[v24[8]];
  if (*(v30 + 1) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v31 = *v30;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v32 = &v2[v24[9]];
  if (*(v32 + 1) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v33 = *v32;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  sub_100012400(&v2[v24[10]], v14, &qword_10058F4D0, &qword_100491AB0);
  v34 = v47;
  if ((*(v47 + 48))(v14, 1, v9) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v35 = v45;
    (*(v34 + 32))(v45, v14, v9);
    Hasher._combine(_:)(1u);
    sub_10027784C(&unk_10058BB00, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    (*(v34 + 8))(v35, v9);
  }

  sub_1000E05E0(a1, *&v2[v24[11]]);
  v36 = v48;
  sub_100012400(&v2[v24[12]], v48, &unk_100596870, &unk_1004B0F60);
  if ((*(v49 + 48))(v36, 1, v50) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v37 = v46;
    sub_100262DC8(v36, v46, type metadata accessor for NANInternetSharingStatistics.Requester);
    Hasher._combine(_:)(1u);
    NANInternetSharingStatistics.Requester.hash(into:)();
    sub_100277544(v37, type metadata accessor for NANInternetSharingStatistics.Requester);
  }

  v38 = *&v2[v24[13]];
  if (v38)
  {
    Hasher._combine(_:)(1u);
    _s7CoreP2P25NANMulticastLinkConditionV4hash4intoys6HasherVz_tF_0(a1, v38);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v39 = &v2[v24[14]];
  v40 = *v39;
  if (*v39)
  {
    v42 = v39[1];
    v41 = v39[2];
    Hasher._combine(_:)(1u);
    sub_1000D05AC(a1, v40);
    Hasher._combine(_:)(v42);
    Hasher._combine(_:)(v41);
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v43 = &v2[v24[15]];
  if (*(v43 + 1) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v44 = *v43;
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }
}

uint64_t sub_10025B028@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P12NANAttributeO23CustomDeviceInformationV12PlatformTypeO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_10025B054@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10026E6BC(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t NANAttribute.CustomDeviceInformation.Flags.description.getter(char a1)
{
  if (a1)
  {
    v2 = sub_100115F7C(0, 1, 1, _swiftEmptyArrayStorage);
    v4 = *(v2 + 2);
    v3 = *(v2 + 3);
    if (v4 >= v3 >> 1)
    {
      v2 = sub_100115F7C((v3 > 1), v4 + 1, 1, v2);
    }

    *(v2 + 2) = v4 + 1;
    v5 = &v2[16 * v4];
    strcpy(v5 + 32, "No SDB Support");
    v5[47] = -18;
  }

  else
  {
    v2 = _swiftEmptyArrayStorage;
  }

  if ((a1 & 2) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100115F7C(0, *(v2 + 2) + 1, 1, v2);
    }

    v7 = *(v2 + 2);
    v6 = *(v2 + 3);
    if (v7 >= v6 >> 1)
    {
      v2 = sub_100115F7C((v6 > 1), v7 + 1, 1, v2);
    }

    *(v2 + 2) = v7 + 1;
    v8 = &v2[16 * v7];
    *(v8 + 4) = 0xD000000000000018;
    *(v8 + 5) = 0x80000001004BD6E0;
    if ((a1 & 4) == 0)
    {
LABEL_8:
      if ((a1 & 8) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_21;
    }
  }

  else if ((a1 & 4) == 0)
  {
    goto LABEL_8;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100115F7C(0, *(v2 + 2) + 1, 1, v2);
  }

  v10 = *(v2 + 2);
  v9 = *(v2 + 3);
  if (v10 >= v9 >> 1)
  {
    v2 = sub_100115F7C((v9 > 1), v10 + 1, 1, v2);
  }

  *(v2 + 2) = v10 + 1;
  v11 = &v2[16 * v10];
  *(v11 + 4) = 0xD000000000000021;
  *(v11 + 5) = 0x80000001004BD6B0;
  if ((a1 & 8) == 0)
  {
LABEL_9:
    if ((a1 & 0x10) == 0)
    {
      goto LABEL_31;
    }

    goto LABEL_26;
  }

LABEL_21:
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100115F7C(0, *(v2 + 2) + 1, 1, v2);
  }

  v13 = *(v2 + 2);
  v12 = *(v2 + 3);
  if (v13 >= v12 >> 1)
  {
    v2 = sub_100115F7C((v12 > 1), v13 + 1, 1, v2);
  }

  *(v2 + 2) = v13 + 1;
  v14 = &v2[16 * v13];
  *(v14 + 4) = 0xD00000000000001FLL;
  *(v14 + 5) = 0x80000001004BD690;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_100115F7C(0, *(v2 + 2) + 1, 1, v2);
    }

    v16 = *(v2 + 2);
    v15 = *(v2 + 3);
    if (v16 >= v15 >> 1)
    {
      v2 = sub_100115F7C((v15 > 1), v16 + 1, 1, v2);
    }

    *(v2 + 2) = v16 + 1;
    v17 = &v2[16 * v16];
    *(v17 + 4) = 0x6570795472656550;
    *(v17 + 5) = 0xE800000000000000;
  }

LABEL_31:
  sub_10005DC58(&qword_10058CBE0, &qword_100482CF0);
  sub_10000CADC(&qword_10059A6F0, &qword_10058CBE0, &qword_100482CF0);
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 91;
}

uint64_t NANAttribute.CustomDeviceInformation.Flags.customMirror.getter(int a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  v13 = a1;
  v12 = _swiftEmptyArrayStorage;
  v10 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v10 - 8) + 56))(v9, 1, 1, v10);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10025B71C()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v12 = *v0;
  v11 = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t static NANAttribute.CustomDeviceInformation.Version.< infix(_:_:)(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1 >> 2;
  v3 = a2 >> 2;
  v4 = (a1 & 3u) < (a2 & 3u);
  if (v2 != v3)
  {
    v4 = 0;
  }

  return v2 < v3 || v4;
}

uint64_t NANAttribute.CustomDeviceInformation.Version.description.getter()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 46;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x5B6E6F6973726556;
}

uint64_t sub_10025BA5C(uint64_t a1)
{
  v2 = sub_100279D04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10025BA98(uint64_t a1)
{
  v2 = sub_100279D04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.CustomDeviceInformation.Version.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_100592610, &qword_10049FA00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279D04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t NANAttribute.CustomDeviceInformation.Version.init(from:)(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100592620, &qword_10049FA08);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_100279D04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v9;
}

uint64_t sub_10025BD58(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 2;
  v5 = (v2 & 3) < (v3 & 3);
  if (v4 != v3 >> 2)
  {
    v5 = 0;
  }

  return v4 < v3 >> 2 || v5;
}

uint64_t sub_10025BD8C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 2;
  if (v3 >> 2 < v2 >> 2)
  {
    return 0;
  }

  v6 = (v3 & 3) >= (v2 & 3);
  return v3 >> 2 != v4 || v6;
}

uint64_t sub_10025BDCC(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 2;
  if (v2 >> 2 < v3 >> 2)
  {
    return 0;
  }

  v6 = (v2 & 3) >= (v3 & 3);
  return v4 != v3 >> 2 || v6;
}

uint64_t sub_10025BE0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = v2 >> 2;
  v5 = (v3 & 3) < (v2 & 3);
  if (v3 >> 2 != v4)
  {
    v5 = 0;
  }

  return v3 >> 2 < v4 || v5;
}

uint64_t sub_10025BE40@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_100592620, &qword_10049FA08);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279D04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  result = sub_100002A00(a1);
  *a2 = v11;
  return result;
}

uint64_t sub_10025BFA0(void *a1)
{
  v3 = sub_10005DC58(&qword_100592610, &qword_10049FA00);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = *v1;
  sub_100029B34(a1, a1[3]);
  sub_100279D04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t NANAttribute.CustomDeviceInformation.init(version:platformType:flags:customAttributes:)@<X0>(char a1@<W0>, char a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 1) = a2;
  *(a5 + 4) = a3;
  v7 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  return sub_100262DC8(a4, a5 + *(v7 + 28), type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
}

unint64_t sub_10025C224()
{
  v1 = 0x6E6F6973726576;
  v2 = 0x7367616C66;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x6D726F6674616C70;
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

uint64_t sub_10025C2A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100284D5C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10025C2D0(uint64_t a1)
{
  v2 = sub_100279D78();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10025C30C(uint64_t a1)
{
  v2 = sub_100279D78();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANAttribute.CustomDeviceInformation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100592628, &qword_10049FA10);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100279D78();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = *v3;
  v17 = 0;
  sub_100279DCC();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v16 = v3[1];
    v15 = 1;
    sub_100279E20();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 1);
    v13[7] = 2;
    sub_100279E74();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11 = *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
    v13[6] = 3;
    type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
    sub_10027784C(&qword_100592650, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANAttribute.CustomDeviceInformation.hash(into:)(__int128 *a1)
{
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 4));
  v3 = v1 + *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(a1);
}

Swift::Int NANAttribute.CustomDeviceInformation.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  Hasher._combine(_:)(*(v0 + 4));
  v1 = v0 + *(type metadata accessor for NANAttribute.CustomDeviceInformation(0) + 28);
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(v3);
  return Hasher._finalize()();
}

uint64_t NANAttribute.CustomDeviceInformation.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_10005DC58(&qword_100592658, &qword_10049FA18);
  v27 = *(v8 - 8);
  v28 = v8;
  v9 = *(v27 + 64);
  __chkstk_darwin();
  v11 = &v23 - v10;
  v12 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin();
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = a1[3];
  v17 = a1[4];
  v29 = a1;
  sub_100029B34(a1, v16);
  sub_100279D78();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v24 = v12;
    v25 = v4;
    v18 = v27;
    v19 = v7;
    v35 = 0;
    sub_100279EC8();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *v15 = v36;
    v33 = 1;
    sub_100279F1C();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = v18;
    v15[1] = v34;
    v31 = 2;
    sub_100279F70();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v15 + 1) = v32;
    v30 = 3;
    sub_10027784C(&qword_10058CFB8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    v22 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v20 + 8))(v11, v22);
    sub_100262DC8(v19, &v15[*(v24 + 28)], type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
    sub_100262DC8(v15, v26, type metadata accessor for NANAttribute.CustomDeviceInformation);
  }

  return sub_100002A00(v29);
}

Swift::Int sub_10025CA0C(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v1);
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(*(v1 + 4));
  v3 = v1 + *(a1 + 28);
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(v5);
  return Hasher._finalize()();
}

void sub_10025CA88(__int128 *a1, uint64_t a2)
{
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 1));
  Hasher._combine(_:)(*(v2 + 4));
  v5 = v2 + *(a2 + 28);
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(a1);
}

Swift::Int sub_10025CAE4(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v2);
  Hasher._combine(_:)(*(v2 + 1));
  Hasher._combine(_:)(*(v2 + 4));
  v4 = v2 + *(a2 + 28);
  NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(v6);
  return Hasher._finalize()();
}

uint64_t NANAttribute.AttributeType.customMirror.getter(char a1)
{
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = &v14 - v8;
  v15 = a1;
  v14 = _swiftEmptyArrayStorage;
  v10 = enum case for Mirror.DisplayStyle.enum(_:);
  v11 = type metadata accessor for Mirror.DisplayStyle();
  v12 = *(v11 - 8);
  (*(v12 + 104))(v9, v10, v11);
  (*(v12 + 56))(v9, 0, 1, v11);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_10025CDF8@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P12NANAttributeO13AttributeTypeO8rawValueAESgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_10025CEEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1004ABDA2[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10025CF74()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_1004ABDA2[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10025CFC0()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = &v13 - v7;
  v14 = *v0;
  v13 = _swiftEmptyArrayStorage;
  v9 = enum case for Mirror.DisplayStyle.enum(_:);
  v10 = type metadata accessor for Mirror.DisplayStyle();
  v11 = *(v10 - 8);
  (*(v11 + 104))(v8, v9, v10);
  (*(v11 + 56))(v8, 0, 1, v10);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t NANAttribute.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v479 = a2;
  v478 = type metadata accessor for NANAttribute(0);
  v3 = *(*(v478 - 8) + 64);
  __chkstk_darwin();
  v438 = &v432 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v473 = (&v432 - v5);
  __chkstk_darwin();
  v472 = (&v432 - v6);
  __chkstk_darwin();
  v470 = (&v432 - v7);
  __chkstk_darwin();
  v471 = (&v432 - v8);
  __chkstk_darwin();
  v480 = &v432 - v9;
  __chkstk_darwin();
  v466 = (&v432 - v10);
  __chkstk_darwin();
  v465 = &v432 - v11;
  __chkstk_darwin();
  v464 = (&v432 - v12);
  __chkstk_darwin();
  v463 = &v432 - v13;
  __chkstk_darwin();
  v461 = (&v432 - v14);
  __chkstk_darwin();
  v460 = &v432 - v15;
  __chkstk_darwin();
  v468 = (&v432 - v16);
  __chkstk_darwin();
  v469 = (&v432 - v17);
  __chkstk_darwin();
  v462 = (&v432 - v18);
  __chkstk_darwin();
  v467 = (&v432 - v19);
  __chkstk_darwin();
  v436 = &v432 - v20;
  __chkstk_darwin();
  v437 = (&v432 - v21);
  __chkstk_darwin();
  v459 = (&v432 - v22);
  __chkstk_darwin();
  v457 = &v432 - v23;
  __chkstk_darwin();
  v456 = &v432 - v24;
  __chkstk_darwin();
  v454 = &v432 - v25;
  __chkstk_darwin();
  v458 = (&v432 - v26);
  __chkstk_darwin();
  v452 = &v432 - v27;
  __chkstk_darwin();
  v451 = &v432 - v28;
  __chkstk_darwin();
  v455 = (&v432 - v29);
  __chkstk_darwin();
  v453 = (&v432 - v30);
  __chkstk_darwin();
  v449 = &v432 - v31;
  __chkstk_darwin();
  v447 = &v432 - v32;
  __chkstk_darwin();
  v446 = (&v432 - v33);
  __chkstk_darwin();
  v448 = &v432 - v34;
  __chkstk_darwin();
  v444 = (&v432 - v35);
  __chkstk_darwin();
  v450 = (&v432 - v36);
  __chkstk_darwin();
  v445 = (&v432 - v37);
  __chkstk_darwin();
  v443 = (&v432 - v38);
  __chkstk_darwin();
  v441 = &v432 - v39;
  __chkstk_darwin();
  v442 = (&v432 - v40);
  __chkstk_darwin();
  v440 = (&v432 - v41);
  __chkstk_darwin();
  v439 = (&v432 - v42);
  __chkstk_darwin();
  v477 = &v432 - v43;
  __chkstk_darwin();
  v476 = &v432 - v44;
  __chkstk_darwin();
  v474 = &v432 - v45;
  __chkstk_darwin();
  v475 = &v432 - v46;
  __chkstk_darwin();
  v48 = &v432 - v47;
  __chkstk_darwin();
  v50 = &v432 - v49;
  __chkstk_darwin();
  v52 = &v432 - v51;
  __chkstk_darwin();
  v54 = &v432 - v53;
  v55 = a1[4];
  sub_100029B34(a1, a1[3]);
  v56 = v513;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v56)
  {
    v57 = a1;
    return sub_100002A00(v57);
  }

  v432 = v52;
  v433 = v48;
  v434 = v50;
  v435 = v54;
  v58 = v480;
  v513 = a1;
  sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
  sub_100031694(v485, v485[3]);
  sub_10000CADC(&qword_10058CF88, &qword_10058CF90, &qword_1004841A0);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v61 = *(&v509 + 1);
  v60 = *v510;
  v62 = _s7CoreP2P12NANAttributeO13AttributeTypeO8rawValueAESgs5UInt8V_tcfC_0(v509);
  v63 = v479;
  switch(v62)
  {
    case 1:
      v217 = sub_100033AA8(_swiftEmptyArrayStorage);
      v218 = v61;
      v219 = type metadata accessor for BinaryDecoder();
      v220 = swift_allocObject();
      v221 = v60;
      v222 = v220;
      v223 = 0;
      v220[5] = &_swiftEmptyDictionarySingleton;
      v224 = v218;
      v220[2] = v218;
      v220[3] = v221;
      v225 = v221 >> 62;
      if ((v221 >> 62) > 1)
      {
        v73 = v434;
        if (v225 == 2)
        {
          v223 = *(v224 + 16);
        }
      }

      else
      {
        v73 = v434;
        if (v225)
        {
          v223 = v224;
        }
      }

      v220[4] = v223;
      swift_beginAccess();
      v222[5] = v217;
      *&v510[8] = v219;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v222;
      v409 = sub_10026FBF8(&v509);
      v428 = v513;
      *v73 = v409;
      v73[8] = v410;
      *(v73 + 3) = v411;
      goto LABEL_106;
    case 2:
      v187 = sub_100033AA8(_swiftEmptyArrayStorage);
      v188 = v61;
      v189 = type metadata accessor for BinaryDecoder();
      v190 = swift_allocObject();
      v191 = v60;
      v192 = v190;
      v193 = 0;
      v190[5] = &_swiftEmptyDictionarySingleton;
      v194 = v188;
      v190[2] = v188;
      v190[3] = v191;
      v195 = v191 >> 62;
      if ((v191 >> 62) > 1)
      {
        v73 = v433;
        if (v195 == 2)
        {
          v193 = *(v194 + 16);
        }
      }

      else
      {
        v73 = v433;
        if (v195)
        {
          v193 = v194;
        }
      }

      v190[4] = v193;
      swift_beginAccess();
      v192[5] = v187;
      *&v510[8] = v189;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v192;
      v403 = sub_10026C128(&v509);
      v428 = v513;
      *v73 = v403;
      goto LABEL_106;
    case 3:
      v203 = sub_100033AA8(_swiftEmptyArrayStorage);
      v204 = v61;
      v205 = type metadata accessor for BinaryDecoder();
      v206 = swift_allocObject();
      v207 = v60;
      v208 = v206;
      v209 = 0;
      v206[5] = &_swiftEmptyDictionarySingleton;
      v210 = v204;
      v206[2] = v204;
      v206[3] = v207;
      v211 = v207 >> 62;
      if ((v207 >> 62) > 1)
      {
        v58 = v475;
        if (v211 == 2)
        {
          v209 = *(v210 + 16);
        }
      }

      else
      {
        v58 = v475;
        if (v211)
        {
          v209 = v210;
        }
      }

      v206[4] = v209;
      swift_beginAccess();
      v208[5] = v203;
      v483 = v205;
      v484 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v482 = v208;
      sub_1002736B0(&v482, &v509);
      v404 = v511;
      v488 = *&v510[16];
      v489 = v511;
      v405 = v512;
      v490 = v512;
      v406 = *v510;
      v486 = v509;
      v407 = v509;
      v487 = *v510;
      *(v58 + 2) = *&v510[16];
      *(v58 + 3) = v404;
      *(v58 + 4) = v405;
      *v58 = v407;
      *(v58 + 1) = v406;
      goto LABEL_93;
    case 4:
      v149 = sub_100033AA8(_swiftEmptyArrayStorage);
      v150 = v61;
      v151 = type metadata accessor for BinaryDecoder();
      v152 = swift_allocObject();
      v153 = v60;
      v154 = v152;
      v155 = 0;
      v152[5] = &_swiftEmptyDictionarySingleton;
      v156 = v150;
      v152[2] = v150;
      v152[3] = v153;
      v157 = v153 >> 62;
      if ((v153 >> 62) > 1)
      {
        v73 = v474;
        if (v157 == 2)
        {
          v155 = *(v156 + 16);
        }
      }

      else
      {
        v73 = v474;
        if (v157)
        {
          v155 = v156;
        }
      }

      v152[4] = v155;
      swift_beginAccess();
      v154[5] = v149;
      *&v510[8] = v151;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v154;
      sub_100279FC4();
      dispatch thunk of Decodable.init(from:)();
      v428 = v513;
      *v73 = v481;
      goto LABEL_106;
    case 5:
      v254 = sub_100033AA8(_swiftEmptyArrayStorage);
      v255 = v61;
      v256 = type metadata accessor for BinaryDecoder();
      v257 = swift_allocObject();
      v258 = v60;
      v259 = v257;
      v260 = 0;
      v257[5] = &_swiftEmptyDictionarySingleton;
      v257[2] = v255;
      v257[3] = v258;
      v261 = v258 >> 62;
      if ((v258 >> 62) > 1)
      {
        v262 = v476;
        if (v261 == 2)
        {
          v260 = *(v255 + 16);
        }
      }

      else
      {
        v262 = v476;
        if (v261)
        {
          v260 = v255;
        }
      }

      v257[4] = v260;
      swift_beginAccess();
      v259[5] = v254;
      *&v510[8] = v256;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v259;
      sub_10026D6D0(&v509, &v491);
      v428 = v513;
      v412 = v492[0];
      *v262 = v491;
      v262[1] = v412;
      *(v262 + 25) = *(v492 + 9);
      swift_storeEnumTagMultiPayload();
      v413 = v262;
      goto LABEL_107;
    case 6:
      v282 = sub_100033AA8(_swiftEmptyArrayStorage);
      v283 = v61;
      v284 = type metadata accessor for BinaryDecoder();
      v285 = swift_allocObject();
      v286 = v60;
      v287 = v285;
      v288 = 0;
      v285[5] = &_swiftEmptyDictionarySingleton;
      v289 = v283;
      v285[2] = v283;
      v285[3] = v286;
      v290 = v286 >> 62;
      if ((v286 >> 62) > 1)
      {
        v73 = v477;
        if (v290 == 2)
        {
          v288 = *(v289 + 16);
        }
      }

      else
      {
        v73 = v477;
        if (v290)
        {
          v288 = v289;
        }
      }

      v285[4] = v288;
      swift_beginAccess();
      v287[5] = v282;
      *&v510[8] = v284;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v287;
      v414 = sub_10026B358(&v509);
      v428 = v513;
      *v73 = v414;
      v73[2] = BYTE2(v414);
      v73[3] = BYTE3(v414);
      v73[4] = BYTE4(v414);
      v73[5] = BYTE5(v414);
      v73[6] = BYTE6(v414);
      v73[8] = v415;
      v73[9] = v417;
      v73[10] = v416 & 1;
      *(v73 + 2) = v418;
      *(v73 + 3) = v419;
      goto LABEL_106;
    case 7:
      v212 = sub_100033AA8(_swiftEmptyArrayStorage);
      v213 = v60;
      v214 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v215 = BinaryDecoder.init(data:userInfo:)(v61, v213, v212);
      *&v510[8] = v214;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v215;
      sub_10026F628(&v509, v493);
      v216 = v493[1];
      v79 = v439;
      *v439 = v493[0];
      v79[1] = v216;
      *(v79 + 4) = v494;
      goto LABEL_79;
    case 8:
      v303 = sub_100033AA8(_swiftEmptyArrayStorage);
      v304 = v60;
      v305 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v306 = BinaryDecoder.init(data:userInfo:)(v61, v304, v303);
      *&v510[8] = v305;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v306;
      sub_10026F8B0(&v509, v495);
      v307 = v495[1];
      v79 = v440;
      *v440 = v495[0];
      v79[1] = v307;
      v79[2] = v495[2];
      goto LABEL_79;
    case 9:
      v169 = sub_100033AA8(_swiftEmptyArrayStorage);
      v170 = v60;
      v171 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v172 = BinaryDecoder.init(data:userInfo:)(v61, v170, v169);
      *&v510[8] = v171;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v172;
      v173 = sub_10026E78C(&v509);
      v79 = v442;
      *v442 = v173;
      *(v79 + 2) = BYTE2(v173) & 1;
      *(v79 + 1) = v174;
      *(v79 + 2) = v175;
      goto LABEL_79;
    case 10:
      v297 = sub_100033AA8(_swiftEmptyArrayStorage);
      v298 = v60;
      v299 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v300 = BinaryDecoder.init(data:userInfo:)(v61, v298, v297);
      *&v510[8] = v299;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v300;
      v301 = sub_10026E4D0(&v509);
      v79 = v441;
      *v441 = v301;
      *(v79 + 1) = v302;
      goto LABEL_79;
    case 11:
      v144 = sub_100033AA8(_swiftEmptyArrayStorage);
      v145 = v60;
      v146 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v147 = BinaryDecoder.init(data:userInfo:)(v61, v145, v144);
      *&v510[8] = v146;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v147;
      v148 = sub_1001B8D18(&v509);
      v79 = v443;
      *v443 = v148;
      goto LABEL_79;
    case 12:
      v162 = sub_100033AA8(_swiftEmptyArrayStorage);
      v163 = v60;
      v164 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v165 = BinaryDecoder.init(data:userInfo:)(v61, v163, v162);
      *&v510[8] = v164;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v165;
      v166 = sub_10026FDE0(&v509);
      v79 = v445;
      *v445 = v166;
      *(v79 + 2) = BYTE2(v166);
      *(v79 + 3) = BYTE3(v166);
      *(v79 + 4) = BYTE4(v166);
      *(v79 + 5) = BYTE5(v166);
      *(v79 + 1) = v167;
      *(v79 + 2) = v168;
      goto LABEL_79;
    case 13:
      v268 = sub_100033AA8(_swiftEmptyArrayStorage);
      v269 = v60;
      v270 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v271 = BinaryDecoder.init(data:userInfo:)(v61, v269, v268);
      *&v510[8] = v270;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v271;
      v272 = sub_10026C49C(&v509);
      v79 = v450;
      *v450 = v272;
      *(v79 + 2) = BYTE2(v272);
      *(v79 + 3) = BYTE3(v272);
      *(v79 + 4) = BYTE4(v272);
      *(v79 + 5) = BYTE5(v272);
      *(v79 + 1) = v273;
      *(v79 + 16) = v274;
      *(v79 + 17) = v275;
      *(v79 + 18) = v276;
      *(v79 + 19) = v277;
      *(v79 + 20) = v278;
      *(v79 + 21) = v279;
      *(v79 + 22) = v280;
      *(v79 + 23) = v281;
      goto LABEL_79;
    case 14:
      v128 = sub_100033AA8(_swiftEmptyArrayStorage);
      v129 = v60;
      v130 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v131 = BinaryDecoder.init(data:userInfo:)(v61, v129, v128);
      v483 = v130;
      v484 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v482 = v131;
      sub_100271900(&v482, &v509);
      v132 = *v510;
      v495[3] = v509;
      v495[4] = *v510;
      v133 = *&v510[16];
      v496 = *&v510[16];
      v79 = v444;
      *v444 = v509;
      v79[1] = v132;
      *(v79 + 4) = v133;
      goto LABEL_79;
    case 15:
      v196 = sub_100033AA8(_swiftEmptyArrayStorage);
      v197 = v60;
      v198 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v199 = BinaryDecoder.init(data:userInfo:)(v61, v197, v196);
      *&v510[8] = v198;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v199;
      v200 = sub_10026C6C0(&v509);
      LOBYTE(v482) = BYTE1(v200) & 1;
      v79 = v448;
      *v448 = v200;
      *(v79 + 1) = BYTE1(v200) & 1;
      *(v79 + 1) = WORD1(v200);
      *(v79 + 4) = BYTE4(v200);
      *(v79 + 5) = BYTE5(v200);
      *(v79 + 6) = BYTE6(v200);
      *(v79 + 4) = v201;
      *(v79 + 10) = v202;
      goto LABEL_79;
    case 16:
      v117 = sub_100033AA8(_swiftEmptyArrayStorage);
      v118 = v60;
      v119 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v120 = BinaryDecoder.init(data:userInfo:)(v61, v118, v117);
      v483 = v119;
      v484 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v482 = v120;
      sub_1002712F8(&v482, &v509);
      v121 = *v510;
      v497 = v509;
      v498 = *v510;
      v122 = *&v510[16];
      v499 = *&v510[16];
      v79 = v446;
      *v446 = v509;
      v79[1] = v121;
      v79[2] = v122;
      goto LABEL_79;
    case 17:
      v235 = sub_100033AA8(_swiftEmptyArrayStorage);
      v236 = v60;
      v237 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v238 = BinaryDecoder.init(data:userInfo:)(v61, v236, v235);
      *&v510[8] = v237;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v238;
      v180 = sub_100148B4C(&v509);
      v182 = 17;
      v79 = v447;
      goto LABEL_78;
    case 18:
      v291 = sub_100033AA8(_swiftEmptyArrayStorage);
      v292 = v60;
      v293 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v294 = BinaryDecoder.init(data:userInfo:)(v61, v292, v291);
      *&v510[8] = v293;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v294;
      v295 = sub_10026B818(&v509);
      v79 = v449;
      *v449 = v295;
      *(v79 + 1) = HIWORD(v295);
      *(v79 + 1) = v296;
      goto LABEL_79;
    case 19:
      v349 = sub_100033AA8(_swiftEmptyArrayStorage);
      v350 = v60;
      v351 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v352 = BinaryDecoder.init(data:userInfo:)(v61, v350, v349);
      *&v510[8] = v351;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v352;
      v353 = sub_10026B5D0(&v509);
      v79 = v453;
      *v453 = v353;
      *(v79 + 2) = BYTE2(v353);
      *(v79 + 3) = BYTE3(v353);
      *(v79 + 4) = BYTE4(v353);
      *(v79 + 5) = BYTE5(v353);
      *(v79 + 6) = BYTE6(v353);
      *(v79 + 1) = v354;
      goto LABEL_79;
    case 20:
      v246 = sub_100033AA8(_swiftEmptyArrayStorage);
      v247 = v60;
      v248 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v249 = BinaryDecoder.init(data:userInfo:)(v61, v247, v246);
      *&v510[8] = v248;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v249;
      v250 = NANAttribute.DeviceLink.init(from:)(&v509);
      LOBYTE(v482) = BYTE5(v250) & 1;
      LOBYTE(v481) = v251 & 1;
      v79 = v455;
      *v455 = v250;
      *(v79 + 2) = BYTE2(v250);
      *(v79 + 3) = BYTE3(v250);
      *(v79 + 4) = BYTE4(v250);
      *(v79 + 5) = v482;
      *(v79 + 1) = v252;
      *(v79 + 16) = v251 & 1;
      *(v79 + 3) = v253;
      goto LABEL_79;
    case 21:
      v263 = sub_100033AA8(_swiftEmptyArrayStorage);
      v264 = v60;
      v265 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v266 = BinaryDecoder.init(data:userInfo:)(v61, v264, v263);
      *&v510[8] = v265;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v266;
      v267 = sub_10026BF80(&v509);
      v79 = v451;
      *v451 = v267;
      *(v79 + 1) = HIWORD(v267);
      goto LABEL_79;
    case 22:
      v340 = sub_100033AA8(_swiftEmptyArrayStorage);
      v341 = v60;
      v342 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v343 = BinaryDecoder.init(data:userInfo:)(v61, v341, v340);
      *&v510[8] = v342;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v343;
      v180 = sub_100148B4C(&v509);
      v182 = 22;
      v79 = v452;
      goto LABEL_78;
    case 23:
      v360 = sub_100033AA8(_swiftEmptyArrayStorage);
      v361 = v60;
      v362 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v363 = BinaryDecoder.init(data:userInfo:)(v61, v361, v360);
      *&v510[8] = v362;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v363;
      v364 = NANAttribute.UnalignedSchedule.init(from:)(&v509);
      *&v482 = v365;
      *(&v482 + 1) = v366;
      v367 = *(&v482 + 4);
      LOBYTE(v482) = BYTE3(v365);
      v79 = v458;
      *v458 = v364;
      *(v79 + 1) = HIDWORD(v364);
      *(v79 + 2) = v368;
      *(v79 + 3) = v369;
      *(v79 + 8) = v365;
      *(v79 + 18) = BYTE2(v365);
      *(v79 + 19) = BYTE3(v365);
      *(v79 + 20) = v367;
      *(v79 + 14) = WORD2(v366);
      goto LABEL_79;
    case 24:
      v183 = sub_100033AA8(_swiftEmptyArrayStorage);
      v184 = v60;
      v185 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v186 = BinaryDecoder.init(data:userInfo:)(v61, v184, v183);
      *&v510[8] = v185;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v186;
      v180 = sub_100148B4C(&v509);
      v182 = 24;
      v79 = v454;
      goto LABEL_78;
    case 25:
      v176 = sub_100033AA8(_swiftEmptyArrayStorage);
      v177 = v60;
      v178 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v179 = BinaryDecoder.init(data:userInfo:)(v61, v177, v176);
      *&v510[8] = v178;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v179;
      v180 = sub_100148B4C(&v509);
      v182 = 25;
      v79 = v456;
      goto LABEL_78;
    case 26:
      v397 = sub_100033AA8(_swiftEmptyArrayStorage);
      v398 = v60;
      v399 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v400 = BinaryDecoder.init(data:userInfo:)(v61, v398, v397);
      *&v510[8] = v399;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v400;
      v401 = NANAttribute.RangingInformation.init(from:)(&v509);
      v79 = v457;
      *v457 = v401;
      *(v79 + 1) = WORD1(v401);
      *(v79 + 4) = BYTE4(v401) & 1;
      goto LABEL_79;
    case 27:
      v104 = sub_100033AA8(_swiftEmptyArrayStorage);
      v105 = v60;
      v106 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v107 = BinaryDecoder.init(data:userInfo:)(v61, v105, v104);
      *&v510[8] = v106;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v107;
      v108 = NANAttribute.RangingSetup.init(from:)(&v509);
      v79 = v459;
      *v459 = v108;
      *(v79 + 8) = v109 & 1;
      *(v79 + 2) = v110;
      goto LABEL_79;
    case 28:
      v370 = sub_100033AA8(_swiftEmptyArrayStorage);
      type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v371 = v60;
      v372 = BinaryDecoder.init(data:userInfo:)(v61, v60, v370);
      *&v510[8] = &type metadata for BinaryDecoder.UnkeyedContainer;
      *&v510[16] = sub_1000325F0();
      *&v509 = v372;
      sub_100031694(&v509, &type metadata for BinaryDecoder.UnkeyedContainer);
      v480 = v371;
      sub_10000AB0C(v61, v371);

      v373 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v427 = sub_100237864(v373 << 8, &v509);
      v428 = v513;
      sub_100002A00(&v509);

      sub_1000124C8(v61, v480);
      v429 = v437;
      *v437 = v427;
      swift_storeEnumTagMultiPayload();
      v430 = v429;
      v431 = v435;
      sub_100262DC8(v430, v435, type metadata accessor for NANAttribute);
      goto LABEL_110;
    case 29:
      sub_10000AB0C(v61, v60);
      v475 = _swiftEmptyArrayStorage;
      v374 = sub_100033AA8(_swiftEmptyArrayStorage);
      v375 = v60;
      v376 = v61;
      v377 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v473 = v376;
      v480 = v375;
      v378 = BinaryDecoder.init(data:userInfo:)(v376, v375, v374);
      *&v510[8] = &type metadata for BinaryDecoder.UnkeyedContainer;
      *&v510[16] = sub_1000325F0();
      *&v509 = v378;
      v379 = sub_100031694(&v509, &type metadata for BinaryDecoder.UnkeyedContainer);
      v380 = *v379;
      v381 = *(*v379 + 24);
      v382 = v381 >> 62;
      v477 = *(*v379 + 16);
      v476 = v477 >> 32;
      v383 = BYTE6(v381);
      v474 = v378;

      break;
    case 30:
      v308 = sub_100033AA8(_swiftEmptyArrayStorage);
      v309 = v60;
      v310 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v311 = BinaryDecoder.init(data:userInfo:)(v61, v309, v308);
      *&v510[8] = v310;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v311;
      v312 = sub_10026ED54(&v509);
      v79 = v467;
      *v467 = v312;
      *(v79 + 8) = v313;
      *(v79 + 9) = v314;
      *(v79 + 10) = v315;
      *(v79 + 11) = v316;
      *(v79 + 12) = v317;
      *(v79 + 13) = v318;
      *(v79 + 14) = v319;
      *(v79 + 15) = v320;
      *(v79 + 8) = v321;
      *(v79 + 9) = v322;
      goto LABEL_79;
    case 31:
      v226 = sub_100033AA8(_swiftEmptyArrayStorage);
      v227 = v60;
      v228 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v229 = BinaryDecoder.init(data:userInfo:)(v61, v227, v226);
      *&v510[8] = v228;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v229;
      v230 = sub_10026B094(&v509);
      v79 = v462;
      *v462 = v230;
      *(v79 + 8) = v231;
      *(v79 + 9) = v232;
      *(v79 + 5) = v233;
      *(v79 + 6) = v234;
      goto LABEL_79;
    case 32:
      v323 = sub_100033AA8(_swiftEmptyArrayStorage);
      v324 = v60;
      v325 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v326 = BinaryDecoder.init(data:userInfo:)(v61, v324, v323);
      *&v510[8] = v325;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v326;
      v327 = sub_10026BA2C(&v509);
      v79 = v469;
      *v469 = v327;
      *(v79 + 8) = v328;
      *(v79 + 9) = v329;
      *(v79 + 10) = v330;
      *(v79 + 11) = v331;
      *(v79 + 12) = v332;
      *(v79 + 13) = v333;
      *(v79 + 14) = v334;
      *(v79 + 8) = v335;
      *(v79 + 9) = v336;
      goto LABEL_79;
    case 33:
      v134 = sub_100033AA8(_swiftEmptyArrayStorage);
      v135 = v60;
      v136 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v137 = BinaryDecoder.init(data:userInfo:)(v61, v135, v134);
      *&v510[8] = v136;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v137;
      v138 = sub_10026BCD8(&v509);
      v79 = v468;
      *v468 = v138;
      *(v79 + 8) = v139;
      *(v79 + 5) = v140;
      *(v79 + 6) = v141;
      *(v79 + 2) = v142;
      *(v79 + 3) = v143;
      goto LABEL_79;
    case 34:
      v111 = sub_100033AA8(_swiftEmptyArrayStorage);
      v112 = v60;
      v113 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v114 = BinaryDecoder.init(data:userInfo:)(v61, v112, v111);
      *&v510[8] = v113;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v114;
      v115 = sub_10026E2E4(&v509);
      v79 = v460;
      *v460 = v115;
      *(v79 + 1) = v116;
      goto LABEL_79;
    case 35:
      v92 = sub_100033AA8(_swiftEmptyArrayStorage);
      v93 = v60;
      v94 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v95 = BinaryDecoder.init(data:userInfo:)(v61, v93, v92);
      *&v510[8] = v94;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v95;
      v96 = sub_10026F04C(&v509);
      v79 = v461;
      *v461 = v96;
      goto LABEL_79;
    case 36:
      v97 = sub_100033AA8(_swiftEmptyArrayStorage);
      v98 = v60;
      v99 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v100 = BinaryDecoder.init(data:userInfo:)(v61, v98, v97);
      *&v510[8] = v99;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v100;
      sub_10026DEFC(&v509, v501);
      v101 = v501[5];
      v79 = v463;
      *(v463 + 4) = v501[4];
      v79[5] = v101;
      *(v79 + 12) = v502;
      v102 = v501[1];
      *v79 = v501[0];
      v79[1] = v102;
      v103 = v501[3];
      v79[2] = v501[2];
      v79[3] = v103;
      goto LABEL_79;
    case 37:
      v83 = sub_100033AA8(_swiftEmptyArrayStorage);
      v84 = v60;
      v85 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v86 = BinaryDecoder.init(data:userInfo:)(v61, v84, v83);
      *&v510[8] = v85;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v86;
      v87 = sub_10026E918(&v509);
      v79 = v464;
      *v464 = v87;
      *(v79 + 1) = v88;
      *(v79 + 8) = v89;
      *(v79 + 18) = v90;
      *(v79 + 3) = v91;
      goto LABEL_79;
    case 38:
      v392 = sub_100033AA8(_swiftEmptyArrayStorage);
      v393 = v60;
      v394 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v395 = BinaryDecoder.init(data:userInfo:)(v61, v393, v392);
      *&v510[8] = v394;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v395;
      v180 = sub_100148B4C(&v509);
      v182 = 38;
      v79 = v465;
LABEL_78:
      *v79 = v182;
      *(v79 + 1) = v180;
      *(v79 + 2) = v181;
      goto LABEL_79;
    case 39:
      v344 = sub_100033AA8(_swiftEmptyArrayStorage);
      v345 = v60;
      v346 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v347 = BinaryDecoder.init(data:userInfo:)(v61, v345, v344);
      *&v510[8] = v346;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v347;
      v348 = sub_10026D54C(&v509);
      v79 = v466;
      *v466 = v348;
      goto LABEL_79;
    case 40:
      v158 = sub_100033AA8(_swiftEmptyArrayStorage);
      v159 = v60;
      v160 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v161 = BinaryDecoder.init(data:userInfo:)(v61, v159, v158);
      *&v510[8] = v160;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v161;
      *v58 = sub_10026C128(&v509);
LABEL_93:
      swift_storeEnumTagMultiPayload();
      v396 = v58;
      goto LABEL_80;
    case 41:
      v239 = sub_100033AA8(_swiftEmptyArrayStorage);
      v240 = v60;
      v241 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v242 = BinaryDecoder.init(data:userInfo:)(v61, v240, v239);
      v483 = v241;
      v484 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v482 = v242;
      sub_10027446C(&v482, &v509);
      v243 = *v510;
      v503 = v509;
      v504 = *v510;
      v244 = *&v510[16];
      v245 = v511;
      v505 = *&v510[16];
      v506 = v511;
      v79 = v471;
      *v471 = v509;
      v79[1] = v243;
      v79[2] = v244;
      v79[3] = v245;
      goto LABEL_79;
    case 42:
      v355 = sub_100033AA8(_swiftEmptyArrayStorage);
      v356 = v60;
      v357 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v358 = BinaryDecoder.init(data:userInfo:)(v61, v356, v355);
      *&v510[8] = v357;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v358;
      v359 = sub_10026EBAC(&v509);
      v79 = v470;
      *v470 = v359;
      goto LABEL_79;
    case 43:
      v74 = sub_100033AA8(_swiftEmptyArrayStorage);
      v75 = v60;
      v76 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v77 = BinaryDecoder.init(data:userInfo:)(v61, v75, v74);
      *&v510[8] = v76;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v77;
      v78 = sub_100271F90(&v509);
      v79 = v472;
      *v472 = v78;
      *(v79 + 1) = v80;
      *(v79 + 2) = v81;
      *(v79 + 3) = v82;
      goto LABEL_79;
    case 44:
      v123 = sub_100033AA8(_swiftEmptyArrayStorage);
      v124 = v60;
      v125 = type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v126 = BinaryDecoder.init(data:userInfo:)(v61, v124, v123);
      v483 = v125;
      v484 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v482 = v126;
      sub_100272138(&v482, &v509);
      *(v508 + 10) = *&v510[10];
      v507 = v509;
      v508[0] = *v510;
      v127 = *v510;
      v79 = v473;
      *v473 = v509;
      v79[1] = v127;
      *(v79 + 26) = *(v508 + 10);
LABEL_79:
      swift_storeEnumTagMultiPayload();
      v396 = v79;
LABEL_80:
      v431 = v435;
      sub_100262DC8(v396, v435, type metadata accessor for NANAttribute);
      v428 = v513;
      goto LABEL_81;
    case 45:
      sub_10000AB0C(v61, v60);
      v337 = sub_100033AA8(_swiftEmptyArrayStorage);
      type metadata accessor for BinaryDecoder();
      swift_allocObject();
      v338 = v60;
      v339 = BinaryDecoder.init(data:userInfo:)(v61, v60, v337);
      *&v510[8] = &type metadata for BinaryDecoder.UnkeyedContainer;
      *&v510[16] = sub_1000325F0();
      *&v509 = v339;
      sub_100031694(&v509, &type metadata for BinaryDecoder.UnkeyedContainer);
      sub_1000317F0();

      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      LODWORD(v480) = v482;
      LODWORD(v477) = BYTE1(v482);
      v420 = BYTE2(v482);
      sub_100031694(&v509, *&v510[8]);
      sub_1002323F0();
      UnkeyedDecodingContainer.inferredDecode<A>()();

      sub_1000124C8(v61, v338);
      v424 = v482;
      v425 = v438;
      *v438 = v480;
      v425[1] = v477;
      v425[2] = v420;
      *(v425 + 8) = v424;
      goto LABEL_109;
    case 46:
      sub_10000B02C();
      swift_allocError();
      *v402 = xmmword_10047CE70;
      *(v402 + 16) = 2;
      swift_willThrow();
      sub_1000124C8(v61, v60);
      sub_100002A00(v485);
      v57 = v513;
      return sub_100002A00(v57);
    default:
      v64 = sub_100033AA8(_swiftEmptyArrayStorage);
      v65 = v61;
      v66 = type metadata accessor for BinaryDecoder();
      v67 = swift_allocObject();
      v68 = v60;
      v69 = v67;
      v70 = 0;
      v67[5] = &_swiftEmptyDictionarySingleton;
      v71 = v65;
      v67[2] = v65;
      v67[3] = v68;
      v72 = v68 >> 62;
      if ((v68 >> 62) > 1)
      {
        v73 = v432;
        if (v72 == 2)
        {
          v70 = *(v71 + 16);
        }
      }

      else
      {
        v73 = v432;
        if (v72)
        {
          v70 = v71;
        }
      }

      v67[4] = v70;
      swift_beginAccess();
      v69[5] = v64;
      *&v510[8] = v66;
      *&v510[16] = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
      *&v509 = v69;
      v408 = sub_10003D970(&v509);
      v428 = v513;
      *v73 = v408;
LABEL_106:
      swift_storeEnumTagMultiPayload();
      v413 = v73;
LABEL_107:
      v431 = v435;
      sub_100262DC8(v413, v435, type metadata accessor for NANAttribute);
      goto LABEL_81;
  }

  while (1)
  {
    v384 = *(v380 + 32);
    if (v382 > 1)
    {
      break;
    }

    v385 = v383;
    if (v382)
    {
      v385 = v476;
    }

LABEL_69:
    if (v384 >= v385)
    {
      goto LABEL_108;
    }

LABEL_72:
    v483 = v377;
    v484 = sub_10027784C(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
    *&v482 = v380;

    v386 = UInt8.init(from:)();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v475 = sub_100115F68(0, *(v475 + 2) + 1, 1, v475);
    }

    v388 = *(v475 + 2);
    v387 = *(v475 + 3);
    v389 = (v388 + 1);
    if (v388 >= v387 >> 1)
    {
      v471 = *(v475 + 2);
      v472 = (v388 + 1);
      v391 = sub_100115F68((v387 > 1), v388 + 1, 1, v475);
      v388 = v471;
      v389 = v472;
      v475 = v391;
    }

    v390 = v475;
    *(v475 + 2) = v389;
    v390[v388 + 32] = v386;
  }

  if (v382 == 2)
  {
    v385 = *(v477 + 24);
    goto LABEL_69;
  }

  if (v384 < 0)
  {
    goto LABEL_72;
  }

LABEL_108:
  sub_10027039C(v475, v500);

  sub_1000124C8(v473, v480);
  v421 = v500[5];
  v425 = v436;
  *(v436 + 4) = v500[4];
  *(v425 + 5) = v421;
  *(v425 + 6) = v500[6];
  v422 = v500[1];
  *v425 = v500[0];
  *(v425 + 1) = v422;
  v423 = v500[3];
  *(v425 + 2) = v500[2];
  *(v425 + 3) = v423;
LABEL_109:
  swift_storeEnumTagMultiPayload();
  v426 = v425;
  v431 = v435;
  sub_100262DC8(v426, v435, type metadata accessor for NANAttribute);
  sub_100002A00(&v509);
  v428 = v513;
LABEL_110:
  v63 = v479;
LABEL_81:
  sub_100002A00(v485);
  sub_100262DC8(v431, v63, type metadata accessor for NANAttribute);
  v57 = v428;
  return sub_100002A00(v57);
}

uint64_t NANAttribute.encode(to:)(void *a1)
{
  v205 = a1;
  v2 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation(0) - 8) + 64);
  __chkstk_darwin();
  v201 = &v190 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v200 = sub_10005DC58(&qword_100592210, &unk_10049F880);
  v194 = *(v200 - 8);
  v4 = *(v194 + 64);
  __chkstk_darwin();
  v199 = &v190 - v5;
  v198 = sub_10005DC58(&qword_1005925A0, &qword_10049F9B8);
  v193 = *(v198 - 8);
  v6 = *(v193 + 64);
  __chkstk_darwin();
  v197 = &v190 - v7;
  v196 = sub_10005DC58(&qword_100592478, &qword_10049F960);
  v192 = *(v196 - 8);
  v8 = *(v192 + 64);
  __chkstk_darwin();
  v195 = &v190 - v9;
  v10 = sub_10005DC58(&qword_100592408, &qword_10049F938);
  v191 = *(v10 - 8);
  v11 = *(v191 + 64);
  __chkstk_darwin();
  v13 = &v190 - v12;
  v14 = sub_10005DC58(&qword_1005920B0, &qword_10049F7F8);
  v202 = *(v14 - 8);
  v203 = v14;
  v15 = *(v202 + 64);
  __chkstk_darwin();
  v17 = &v190 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v19 = &v190 - v18;
  v20 = *(*(type metadata accessor for NANAttribute(0) - 8) + 64);
  __chkstk_darwin();
  v22 = (&v190 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v23 = sub_100033AA8(_swiftEmptyArrayStorage);
  v206 = type metadata accessor for BinaryEncoder();
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_100480A90;
  v204 = v24 + 16;
  v208 = v24;
  *(v24 + 32) = v23;
  v25 = v1;
  sub_1002774DC(v1, v22, type metadata accessor for NANAttribute);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v91 = *v22;
      v92 = *(v22 + 8);
      v93 = *(v22 + 3);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v28 = v207;
      NANAttribute.Cluster.encode(to:)(v214, v91);
      goto LABEL_86;
    case 2u:
      v190 = v1;
      v77 = *v22;
      v27 = v208;
      v214[0] = v208;
      swift_retain_n();
      sub_10005DC58(&qword_100592698, &qword_10049FA28);
      sub_10000CADC(&qword_1005926A0, &qword_100592698, &qword_10049FA28);
      KeyedEncodingContainer.init<A>(_:)();
      v214[0] = v77;
      sub_10005DC58(&qword_1005920C0, &unk_10049F800);
      sub_1002776A0();
      v78 = v203;
      v79 = v207;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v79)
      {
        (*(v202 + 8))(v19, v78);
        goto LABEL_44;
      }

      (*(v202 + 8))(v19, v78);
      goto LABEL_102;
    case 3u:
      v190 = v1;
      v86 = *(v22 + 3);
      v217[2] = *(v22 + 2);
      v217[3] = v86;
      v217[4] = *(v22 + 4);
      v87 = *(v22 + 1);
      v217[0] = *v22;
      v217[1] = v87;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v88 = v207;
      NANAttribute.ServiceDescriptor.encode(to:)(v214);
      if (v88)
      {
        sub_100197EB4(v217);
        goto LABEL_128;
      }

      sub_100197EB4(v217);
      goto LABEL_114;
    case 4u:
      v190 = v1;
      LOWORD(v210) = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;
      sub_10027A27C();

      v56 = v207;
      dispatch thunk of Encodable.encode(to:)();
      if (!v56)
      {
        goto LABEL_114;
      }

      goto LABEL_128;
    case 5u:
      v190 = v1;
      v104 = *(v22 + 1);
      v218 = *v22;
      v219[0] = v104;
      *(v219 + 9) = *(v22 + 25);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v105 = v207;
      NANAttribute.WLANInfrastructure.encode(to:)(v214);
      if (v105)
      {
        sub_10027A24C(&v218);
        goto LABEL_128;
      }

      sub_10027A24C(&v218);
      goto LABEL_114;
    case 6u:
      v117 = *(v22 + 1);
      v210 = *v22;
      v211 = v117;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;
      v118 = v211;
      v119 = v210 | (BYTE4(v210) << 32) | (BYTE5(v210) << 40) | (BYTE6(v210) << 48);
      v120 = WORD4(v210);
      if (BYTE10(v210))
      {
        v121 = 0x10000;
      }

      else
      {
        v121 = 0;
      }

      v122 = v207;
      NANAttribute.P2POperation.encode(to:)(v214, v119, v120 | v121, v118, *(&v118 + 1));
      if (v122)
      {
        sub_10027A21C(&v210);
        goto LABEL_128;
      }

      v190 = v1;
      sub_10027A21C(&v210);
      goto LABEL_114;
    case 7u:
      v190 = v1;
      v89 = *(v22 + 1);
      v220[0] = *v22;
      v220[1] = v89;
      v221 = *(v22 + 4);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v90 = v207;
      NANAttribute.IBSS.encode(to:)(v214);
      if (v90)
      {
        sub_10027A1EC(v220);
        goto LABEL_128;
      }

      sub_10027A1EC(v220);
      goto LABEL_114;
    case 8u:
      v190 = v1;
      v129 = *(v22 + 1);
      v222[0] = *v22;
      v222[1] = v129;
      v222[2] = *(v22 + 2);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v130 = v207;
      NANAttribute.Mesh.encode(to:)(v214);
      if (v130)
      {
        sub_10027A1BC(v222);
        goto LABEL_128;
      }

      sub_10027A1BC(v222);
      goto LABEL_114;
    case 9u:
      v64 = *(v22 + 2);
      v65 = *(v22 + 1);
      v66 = *(v22 + 2);
      v67 = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;
      if (v64)
      {
        v68 = 0x10000;
      }

      else
      {
        v68 = 0;
      }

      v69 = v67 | v68;
      v70 = v207;
      NANAttribute.FurtherServiceDiscovery.encode(to:)(v214, v69, v65, v66);
      goto LABEL_48;
    case 0xAu:
      v127 = *(v22 + 1);
      v128 = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v54 = v207;
      NANAttribute.FurtherAvailabilityMap.encode(to:)(v214, v128, v127);
      goto LABEL_76;
    case 0xBu:
      v55 = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v28 = v207;
      CountryCode.encode(to:)(v214);
      goto LABEL_86;
    case 0xCu:
      v210 = *v22;
      *&v211 = *(v22 + 2);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;
      v60 = *(&v210 + 1);
      v59 = v211;
      v61 = v210 | (BYTE4(v210) << 32) | (BYTE5(v210) << 40);

      v62 = v60;
      v63 = v207;
      NANAttribute.Ranging.encode(to:)(v214, v61, v62, v59);
      if (v63)
      {
        sub_10027A18C(&v210);
        goto LABEL_128;
      }

      v190 = v25;
      sub_10027A18C(&v210);
      goto LABEL_114;
    case 0xDu:
      v112 = *v22;
      v113 = *(v22 + 4);
      v114 = *(v22 + 5);
      v115 = *(v22 + 1);
      v116 = *(v22 + 2);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v28 = v207;
      NANAttribute.ClusterDiscovery.encode(to:)(v214, v112 | (v113 << 32) | (v114 << 40), v115, v116);
      goto LABEL_86;
    case 0xEu:
      v190 = v1;
      v47 = *(v22 + 1);
      v223[0] = *v22;
      v223[1] = v47;
      v224 = *(v22 + 4);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v48 = v207;
      NANAttribute.ServiceDescriptorExtension.encode(to:)(v214);
      if (v48)
      {
        sub_100277A14(v223);
        goto LABEL_128;
      }

      sub_100277A14(v223);
      goto LABEL_114;
    case 0xFu:
      v203 = *v22;
      v80 = *(v22 + 1);
      v202 = v22[1];
      v81 = *(v22 + 4);
      v82 = *(v22 + 5);
      v83 = *(v22 + 6);
      v84 = v22[4];
      v85 = *(v22 + 10);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      LOBYTE(v210) = v80 & 1;
      v28 = v207;
      NANAttribute.DeviceCapability.encode(to:)(v214, v203 | (v202 << 16) | (v81 << 32) | (v82 << 40) | (v83 << 48) | ((v80 & 1) << 8), v84 | (v85 << 16));
      goto LABEL_86;
    case 0x10u:
      v190 = v1;
      v45 = *(v22 + 1);
      v225[0] = *v22;
      v225[1] = v45;
      v225[2] = *(v22 + 2);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v46 = v207;
      NANAttribute.Datapath.encode(to:)(v214);
      if (v46)
      {
        sub_10027A15C(v225);
        goto LABEL_128;
      }

      sub_10027A15C(v225);
      goto LABEL_114;
    case 0x11u:
      v97 = *v22;
      v98 = *(v22 + 1);
      v99 = v22[1];
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v54 = v207;
      NANAttribute.Availability.encode(to:)(v214, v97 | (v99 << 16), v98);
      goto LABEL_76;
    case 0x12u:
      v210 = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;
      v123 = *(&v210 + 1);
      v124 = v210 | (BYTE4(v210) << 32) | (BYTE5(v210) << 40) | (BYTE6(v210) << 48);

      v125 = v123;
      v126 = v207;
      NANAttribute.DataCluster.encode(to:)(v214, v124, v125);
      if (v126)
      {
        sub_10027A12C(&v210);
        goto LABEL_128;
      }

      v190 = v25;
      sub_10027A12C(&v210);
      goto LABEL_114;
    case 0x13u:
      v142 = *(v22 + 1);
      v210 = *v22;
      v211 = v142;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;
      v143 = BYTE4(v210);
      v144 = BYTE5(v210);
      v145 = *(&v210 + 1);
      v146 = v211;
      v147 = *(&v211 + 1);
      v148 = v210;

      LOBYTE(v212) = v144;
      v209 = v146;
      v149 = v145;
      v150 = v207;
      NANAttribute.DeviceLink.encode(to:)(v214, v148 | (v143 << 32) | (v144 << 40), v149, v146, v147);
      if (v150)
      {
        sub_10027A0FC(&v210);
        goto LABEL_128;
      }

      v190 = v25;
      sub_10027A0FC(&v210);
      goto LABEL_114;
    case 0x14u:
      v102 = *v22;
      v103 = v22[1];
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v28 = v207;
      NANAttribute.DeviceLinkQoS.encode(to:)(v214);
      goto LABEL_86;
    case 0x15u:
      v203 = *(v22 + 1);
      v106 = v22[8];
      v107 = *(v22 + 18);
      v108 = *(v22 + 19);
      v109 = *(v22 + 10);
      LODWORD(v202) = v22[14];
      v110 = *v22;
      v111 = *(v22 + 1);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      LOWORD(v210) = v106;
      BYTE2(v210) = v107;
      BYTE3(v210) = v108 & 1;
      *(&v210 + 4) = v109;
      WORD6(v210) = v202;
      v28 = v207;
      NANAttribute.UnalignedSchedule.encode(to:)(v214, v110 | (v111 << 32), v203, v210, *(&v210 + 1));
      goto LABEL_86;
    case 0x16u:
      v137 = *v22;
      v138 = v22[1];
      v139 = *(v22 + 4);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      LOBYTE(v210) = v139;
      v28 = v207;
      NANAttribute.RangingInformation.encode(to:)(v214, v137 | (v138 << 16) | (v139 << 32));
      goto LABEL_86;
    case 0x17u:
      v154 = *(v22 + 8);
      v155 = *(v22 + 2);
      v156 = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v54 = v207;
      NANAttribute.RangingSetup.encode(to:)(v214, v156, v154, v155);
      goto LABEL_76;
    case 0x18u:
      v190 = v1;
      v75 = *v22;
      v27 = v208;
      v214[0] = v208;
      swift_retain_n();
      sub_10005DC58(&qword_1005926C8, &qword_10049FA40);
      sub_10000CADC(&qword_1005926D0, &qword_1005926C8, &qword_10049FA40);
      KeyedEncodingContainer.init<A>(_:)();
      v214[0] = v75;
      sub_10005DC58(&qword_100592418, &qword_10049F940);
      sub_100279038();
      v76 = v207;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v76)
      {
        (*(v191 + 8))(v13, v10);
        goto LABEL_44;
      }

      (*(v191 + 8))(v13, v10);
      goto LABEL_102;
    case 0x19u:
      v190 = v1;
      v71 = *(v22 + 5);
      v226[4] = *(v22 + 4);
      v226[5] = v71;
      v226[6] = *(v22 + 6);
      v72 = *(v22 + 1);
      v226[0] = *v22;
      v226[1] = v72;
      v73 = *(v22 + 3);
      v226[2] = *(v22 + 2);
      v226[3] = v73;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v74 = v207;
      NANAttribute.ElementContainer.encode(to:)(v214);
      if (v74)
      {
        sub_10027A0CC(v226);
        goto LABEL_128;
      }

      sub_10027A0CC(v226);
      goto LABEL_114;
    case 0x1Au:
      v176 = *v22;
      v177 = *(v22 + 1);
      v178 = *(v22 + 4);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v28 = v207;
      NANAttribute.ExtendedWLANInfrastructure.encode(to:)(v214, v176, v177, v178);
      goto LABEL_86;
    case 0x1Bu:
      v40 = *v22;
      v41 = v22[6];
      v42 = *(v22 + 2);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v28 = v207;
      NANAttribute.ExtendedP2POperation.encode(to:)(v214, v40, v42 | (v41 << 32));
      goto LABEL_86;
    case 0x1Cu:
      v157 = *v22;
      v158 = *(v22 + 2);
      v159 = *(v22 + 12);
      v160 = *(v22 + 13);
      v161 = *(v22 + 14);
      v162 = *(v22 + 4);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v214[0] = v208;
      v163 = v158 | (v159 << 32) | (v160 << 40) | (v161 << 48);
      v27 = v208;

      v164 = v163;
      v28 = v207;
      NANAttribute.ExtendedIBSS.encode(to:)(v214, v157, v164, v162);
      goto LABEL_86;
    case 0x1Du:
      v165 = *(v22 + 1);
      v210 = *v22;
      v211 = v165;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;
      v166 = v210;
      v167 = v211;
      v168 = BYTE8(v210) | (WORD5(v210) << 16) | (WORD6(v210) << 32);

      v169 = v166;
      v170 = v207;
      NANAttribute.ExtendedMesh.encode(to:)(v214, v169, v168, v167, *(&v167 + 1));
      if (v170)
      {
        sub_10027A09C(&v210);
        goto LABEL_128;
      }

      v190 = v1;
      sub_10027A09C(&v210);
      goto LABEL_114;
    case 0x1Eu:
      v131 = *(v22 + 1);
      v132 = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v54 = v207;
      NANAttribute.CipherSuiteInformation.encode(to:)(v214, v132, v131);
      goto LABEL_76;
    case 0x1Fu:
      v190 = v1;
      v94 = *v22;
      v27 = v208;
      v214[0] = v208;
      swift_retain_n();
      sub_10005DC58(&qword_1005926B8, &qword_10049FA38);
      sub_10000CADC(&qword_1005926C0, &qword_1005926B8, &qword_10049FA38);
      v30 = v195;
      KeyedEncodingContainer.init<A>(_:)();
      v214[0] = v94;
      sub_10005DC58(&qword_100592488, &qword_10049F968);
      sub_10027938C();
      v31 = v196;
      v95 = v207;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v95)
      {
        v33 = v192;
        goto LABEL_43;
      }

      v179 = v192;
      goto LABEL_101;
    case 0x20u:
      v190 = v1;
      v133 = *(v22 + 5);
      v227[4] = *(v22 + 4);
      v227[5] = v133;
      v228 = *(v22 + 12);
      v134 = *(v22 + 1);
      v227[0] = *v22;
      v227[1] = v134;
      v135 = *(v22 + 3);
      v227[2] = *(v22 + 2);
      v227[3] = v135;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v136 = v207;
      NANAttribute.SharedKeyDescriptor.encode(to:)(v214);
      if (v136)
      {
        sub_100143F68(v227);
        goto LABEL_128;
      }

      sub_100143F68(v227);
      goto LABEL_114;
    case 0x21u:
      v49 = *v22;
      v50 = *(v22 + 1);
      v51 = v22[8];
      v52 = *(v22 + 18);
      v53 = *(v22 + 3);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v54 = v207;
      NANAttribute.MulticastScheduleChange.encode(to:)(v214, v49, v50, v51 | (v52 << 16), v53);
LABEL_76:
      if (v54)
      {

        return sub_100002A00(v214);
      }

      v190 = v25;

      goto LABEL_114;
    case 0x22u:
      v190 = v1;
      v43 = *v22;
      v27 = v208;
      v214[0] = v208;
      swift_retain_n();
      sub_10005DC58(&qword_1005926A8, &qword_10049FA30);
      sub_10000CADC(&qword_1005926B0, &qword_1005926A8, &qword_10049FA30);
      v30 = v197;
      KeyedEncodingContainer.init<A>(_:)();
      v214[0] = v43;
      sub_10005DC58(&qword_1005922A0, &qword_10049F8C0);
      sub_100278684();
      v31 = v198;
      v44 = v207;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v44)
      {
        v33 = v193;
        goto LABEL_43;
      }

      v179 = v193;
      goto LABEL_101;
    case 0x23u:
      v190 = v1;
      v34 = *v22;
      v27 = v208;
      v214[0] = v208;
      swift_retain_n();
      sub_10005DC58(&qword_100592698, &qword_10049FA28);
      sub_10000CADC(&qword_1005926A0, &qword_100592698, &qword_10049FA28);
      KeyedEncodingContainer.init<A>(_:)();
      v214[0] = v34;
      sub_10005DC58(&qword_1005920C0, &unk_10049F800);
      sub_1002776A0();
      v35 = v203;
      v36 = v207;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v36)
      {
        (*(v202 + 8))(v17, v35);
      }

      (*(v202 + 8))(v17, v35);

      goto LABEL_115;
    case 0x24u:
      v190 = v1;
      v37 = *(v22 + 1);
      v229[0] = *v22;
      v229[1] = v37;
      v38 = *(v22 + 3);
      v229[2] = *(v22 + 2);
      v229[3] = v38;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v39 = v207;
      NANAttribute.DatapathExtension.encode(to:)(v214);
      if (v39)
      {
        sub_10027A06C(v229);
        goto LABEL_128;
      }

      sub_10027A06C(v229);
      goto LABEL_114;
    case 0x25u:
      v190 = v1;
      v29 = *v22;
      v27 = v208;
      v214[0] = v208;
      swift_retain_n();
      sub_10005DC58(&qword_100592688, &qword_10049FA20);
      sub_10000CADC(&qword_100592690, &qword_100592688, &qword_10049FA20);
      v30 = v199;
      KeyedEncodingContainer.init<A>(_:)();
      v214[0] = v29;
      sub_10005DC58(&qword_10058D358, &unk_100486960);
      sub_100165E30(&qword_10058E320);
      v31 = v200;
      v32 = v207;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v32)
      {
        v179 = v194;
LABEL_101:
        (*(v179 + 8))(v30, v31);
LABEL_102:

        goto LABEL_115;
      }

      v33 = v194;
LABEL_43:
      (*(v33 + 8))(v30, v31);
LABEL_44:

    case 0x26u:
      v172 = *v22;
      v171 = *(v22 + 1);
      v65 = *(v22 + 2);
      v66 = *(v22 + 3);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v173 = v207;
      NANAttribute.PairingIdentityResolution.encode(to:)(v214, v172, v171, v65, v66);
      if (v173)
      {
        sub_1000124C8(v172, v171);
LABEL_84:
        v174 = v65;
        v175 = v66;
        goto LABEL_127;
      }

      v190 = v25;
      sub_1000124C8(v172, v171);
LABEL_113:
      sub_1000124C8(v65, v66);
      goto LABEL_114;
    case 0x27u:
      v190 = v1;
      v140 = *(v22 + 1);
      v230 = *v22;
      v231[0] = v140;
      *(v231 + 10) = *(v22 + 13);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v141 = v207;
      NANAttribute.PairingBootstrapping.encode(to:)(v214);
      if (v141)
      {
        sub_1001440B0(&v230);
        goto LABEL_128;
      }

      sub_1001440B0(&v230);
      goto LABEL_114;
    case 0x28u:
      v190 = v1;
      v57 = v201;
      sub_100262DC8(v22, v201, type metadata accessor for NANAttribute.CustomDeviceInformation);
      v215 = &type metadata for BinaryEncoder.UnkeyedContainer;
      v216 = sub_1000D12E4();
      v27 = v208;
      v214[0] = v208;
      sub_100031694(v214, &type metadata for BinaryEncoder.UnkeyedContainer);

      v58 = v207;
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      if (v58)
      {

        sub_100277544(v57, type metadata accessor for NANAttribute.CustomDeviceInformation);
        return sub_100002A00(v214);
      }

      sub_100031694(v214, v215);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v214, v215);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100002A00(v214);
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v214[0] = v27;

      NANAttribute.CustomDeviceInformation.encode(to:)(v214);
      sub_100277544(v57, type metadata accessor for NANAttribute.CustomDeviceInformation);
LABEL_114:
      sub_100002A00(v214);
      goto LABEL_115;
    case 0x29u:
      v100 = *(v22 + 2);
      v65 = *(v22 + 1);
      v66 = *(v22 + 2);
      v101 = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v70 = v207;
      NANAttribute.VendorSpecific.encode(to:)(v214, v101 | (v100 << 16), v65, v66);
LABEL_48:
      if (v70)
      {
        goto LABEL_84;
      }

      v190 = v25;
      goto LABEL_113;
    case 0x2Au:
      v190 = v1;
      v151 = *(v22 + 1);
      v152 = *(v22 + 2);
      v153 = v207;
      v27 = v208;
      sub_10023A868(v151, v152);
      if (v153)
      {

        return sub_1000124C8(v151, v152);
      }

      sub_1000124C8(v151, v152);
LABEL_115:
      v180 = v205[4];
      sub_100029B34(v205, v205[3]);
      dispatch thunk of Encoder.unkeyedContainer()();
      LOBYTE(v210) = NANAttribute.attributeType.getter();
      sub_100031694(v214, v215);
      sub_10027A018();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      result = swift_beginAccess();
      v181 = *(v27 + 16);
      v182 = *(v27 + 24) >> 62;
      if (v182 > 1)
      {
        if (v182 != 2)
        {
          goto LABEL_126;
        }

        v184 = v181 + 16;
        v181 = *(v181 + 16);
        v183 = *(v184 + 8);
        v185 = v183 - v181;
        if (!__OFSUB__(v183, v181))
        {
          goto LABEL_124;
        }

        __break(1u);
LABEL_122:
        v186 = __OFSUB__(HIDWORD(v181), v181);
        v187 = HIDWORD(v181) - v181;
        if (v186)
        {
          goto LABEL_132;
        }

        v185 = v187;
LABEL_124:
        if ((v185 & 0x8000000000000000) != 0)
        {
          __break(1u);
        }

        else if (!(v185 >> 16))
        {
          goto LABEL_126;
        }

        __break(1u);
LABEL_132:
        __break(1u);
        return result;
      }

      if (v182)
      {
        goto LABEL_122;
      }

LABEL_126:
      sub_100031694(v214, v215);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v189 = *(v27 + 24);
      v212 = *(v27 + 16);
      v188 = v212;
      v213 = v189;
      sub_100031694(v214, v215);
      sub_10000AB0C(v188, v189);
      sub_1000B8088();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      v174 = v212;
      v175 = v213;
LABEL_127:
      sub_1000124C8(v174, v175);
LABEL_128:

      return sub_100002A00(v214);
    default:
      v26 = *v22;
      v215 = v206;
      v216 = sub_10027784C(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v27 = v208;
      v214[0] = v208;

      v28 = v207;
      NANAttribute.MasterIndication.encode(to:)(v214);
LABEL_86:
      if (v28)
      {
        goto LABEL_128;
      }

      v190 = v25;
      goto LABEL_114;
  }
}

uint64_t NANAttribute.attributeType.getter()
{
  v1 = *(*(type metadata accessor for NANAttribute(0) - 8) + 64);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002774DC(v0, v3, type metadata accessor for NANAttribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  result = 0;
  switch(EnumCaseMultiPayload)
  {
    case 1:
      result = 1;
      break;
    case 2:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 2;
      break;
    case 3:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 3;
      break;
    case 4:
      result = 4;
      break;
    case 5:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 5;
      break;
    case 6:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 6;
      break;
    case 7:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 7;
      break;
    case 8:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 8;
      break;
    case 9:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 9;
      break;
    case 10:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 10;
      break;
    case 11:
      result = 11;
      break;
    case 12:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 12;
      break;
    case 13:
      result = 13;
      break;
    case 14:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 14;
      break;
    case 15:
      result = 15;
      break;
    case 16:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 16;
      break;
    case 17:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 18;
      break;
    case 18:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 19;
      break;
    case 19:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 20;
      break;
    case 20:
      result = 21;
      break;
    case 21:
      result = 23;
      break;
    case 22:
      result = 26;
      break;
    case 23:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 27;
      break;
    case 24:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 28;
      break;
    case 25:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 29;
      break;
    case 26:
      result = 30;
      break;
    case 27:
      result = 31;
      break;
    case 28:
      result = 32;
      break;
    case 29:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 33;
      break;
    case 30:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 34;
      break;
    case 31:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 35;
      break;
    case 32:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 36;
      break;
    case 33:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 37;
      break;
    case 34:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 39;
      break;
    case 35:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 40;
      break;
    case 36:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 41;
      break;
    case 37:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 42;
      break;
    case 38:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 43;
      break;
    case 39:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 44;
      break;
    case 40:
    case 41:
      sub_100277544(v3, type metadata accessor for NANAttribute);
      result = 45;
      break;
    case 42:
      v6 = *v3;
      sub_1000124C8(*(v3 + 1), *(v3 + 2));
      result = v6;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100262DC8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void NANAttribute.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v7 = &v240[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = *(*(type metadata accessor for NANAttribute(0) - 8) + 64);
  __chkstk_darwin();
  v10 = &v240[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  sub_1002774DC(v2, v10, type metadata accessor for NANAttribute);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      LODWORD(v250) = *(v10 + 3);
      v92 = *v10;
      v93 = *(v10 + 1);
      v94 = *(v10 + 2);
      v95 = *(v10 + 3);
      v96 = *(v10 + 4);
      v97 = *(v10 + 5);
      v98 = *(v10 + 6);
      v99 = *(v10 + 7);
      LODWORD(v249) = *(v10 + 8);
      Hasher._combine(_:)(1uLL);
      Hasher._combine(_:)(v92);
      Hasher._combine(_:)(v93);
      Hasher._combine(_:)(v94);
      Hasher._combine(_:)(v95);
      Hasher._combine(_:)(v96);
      Hasher._combine(_:)(v97);
      Hasher._combine(_:)(v98);
      Hasher._combine(_:)(v99);
      Hasher._combine(_:)(v249);
      Hasher._combine(_:)(v250);
      return;
    case 2u:
      v63 = *v10;
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(*(v63 + 16));
      v64 = *(v63 + 16);
      if (v64)
      {
        v65 = (v63 + 40);
        do
        {
          v66 = *(v65 - 1);
          v67 = *v65;
          sub_10000AB0C(v66, *v65);
          Data.hash(into:)();
          sub_1000124C8(v66, v67);
          v65 += 2;
          --v64;
        }

        while (v64);
      }

      goto LABEL_84;
    case 3u:
      v77 = *(v10 + 3);
      *&v252[16] = *(v10 + 2);
      v253 = v77;
      v254 = *(v10 + 4);
      v78 = *(v10 + 1);
      v251 = *v10;
      *v252 = v78;
      Hasher._combine(_:)(3uLL);
      NANAttribute.ServiceDescriptor.hash(into:)(a1);
      sub_100197EB4(&v251);
      return;
    case 4u:
      v41 = *v10;
      Hasher._combine(_:)(4uLL);
      goto LABEL_76;
    case 5u:
      v112 = *(v10 + 1);
      v251 = *v10;
      *v252 = v112;
      *&v252[9] = *(v10 + 25);
      Hasher._combine(_:)(5uLL);
      v113 = BYTE1(v251);
      v114 = BYTE2(v251);
      v115 = BYTE3(v251);
      v116 = BYTE4(v251);
      v117 = BYTE5(v251);
      Hasher._combine(_:)(v251);
      Hasher._combine(_:)(v113);
      Hasher._combine(_:)(v114);
      Hasher._combine(_:)(v115);
      Hasher._combine(_:)(v116);
      Hasher._combine(_:)(v117);
      v118 = BYTE7(v251);
      v119 = BYTE8(v251);
      v120 = BYTE9(v251);
      v121 = BYTE10(v251);
      v122 = BYTE11(v251);
      Hasher._combine(_:)(BYTE6(v251));
      Hasher._combine(_:)(v118);
      Hasher._combine(_:)(v119);
      Hasher._combine(_:)(v120);
      Hasher._combine(_:)(v121);
      Hasher._combine(_:)(v122);
      v123 = v252[2];
      v124 = v252[1];
      Hasher._combine(_:)(v252[0]);
      Hasher._combine(_:)(v124);
      Hasher._combine(_:)(v123);
      Data.hash(into:)();
      Hasher._combine(_:)(v252[24]);
      sub_10027A24C(&v251);
      return;
    case 6u:
      LODWORD(v249) = *(v10 + 10);
      v44 = *(v10 + 3);
      v250 = *(v10 + 2);
      v142 = *v10;
      v143 = *(v10 + 1);
      v144 = *(v10 + 2);
      v145 = *(v10 + 3);
      v146 = *(v10 + 4);
      v147 = *(v10 + 5);
      v148 = *(v10 + 6);
      LODWORD(v247) = *(v10 + 8);
      LODWORD(v248) = *(v10 + 9);
      Hasher._combine(_:)(6uLL);
      Hasher._combine(_:)(v142);
      Hasher._combine(_:)(v143);
      Hasher._combine(_:)(v144);
      Hasher._combine(_:)(v145);
      Hasher._combine(_:)(v146);
      Hasher._combine(_:)(v147);
      Hasher._combine(_:)(v148);
      Hasher._combine(_:)(v247);
      Hasher._combine(_:)(v248);
      Hasher._combine(_:)(v249);
      goto LABEL_68;
    case 7u:
      v79 = *(v10 + 1);
      v251 = *v10;
      *v252 = v79;
      *&v252[16] = *(v10 + 4);
      Hasher._combine(_:)(7uLL);
      v80 = BYTE1(v251);
      v81 = BYTE2(v251);
      v82 = BYTE3(v251);
      v83 = BYTE4(v251);
      v84 = BYTE5(v251);
      Hasher._combine(_:)(v251);
      Hasher._combine(_:)(v80);
      Hasher._combine(_:)(v81);
      Hasher._combine(_:)(v82);
      Hasher._combine(_:)(v83);
      Hasher._combine(_:)(v84);
      v85 = BYTE7(v251);
      v86 = BYTE8(v251);
      v87 = BYTE9(v251);
      v88 = BYTE10(v251);
      v89 = BYTE11(v251);
      Hasher._combine(_:)(BYTE6(v251));
      Hasher._combine(_:)(v85);
      Hasher._combine(_:)(v86);
      Hasher._combine(_:)(v87);
      Hasher._combine(_:)(v88);
      Hasher._combine(_:)(v89);
      v90 = v252[2];
      v91 = v252[1];
      Hasher._combine(_:)(v252[0]);
      Hasher._combine(_:)(v91);
      Hasher._combine(_:)(v90);
      Data.hash(into:)();
      sub_10027A1EC(&v251);
      return;
    case 8u:
      LODWORD(v247) = *(v10 + 10);
      v158 = *(v10 + 2);
      v159 = *(v10 + 3);
      v160 = *(v10 + 5);
      v250 = *(v10 + 4);
      v248 = v158;
      v249 = v160;
      v161 = *v10;
      v162 = *(v10 + 1);
      v163 = *(v10 + 2);
      v164 = *(v10 + 3);
      v165 = *(v10 + 4);
      v166 = *(v10 + 5);
      v167 = *(v10 + 8);
      LODWORD(v246) = *(v10 + 9);
      Hasher._combine(_:)(8uLL);
      Hasher._combine(_:)(v161);
      Hasher._combine(_:)(v162);
      Hasher._combine(_:)(v163);
      Hasher._combine(_:)(v164);
      Hasher._combine(_:)(v165);
      Hasher._combine(_:)(v166);
      Hasher._combine(_:)(v167);
      Hasher._combine(_:)(v246);
      Hasher._combine(_:)(v247);
      v168 = v248;
      Data.hash(into:)();
      v170 = v249;
      v169 = v250;
      Data.hash(into:)();
      sub_1000124C8(v168, v159);
      v57 = v169;
      v58 = v170;
      goto LABEL_70;
    case 9u:
      v52 = *(v10 + 2);
      v53 = *(v10 + 1);
      v54 = *(v10 + 2);
      v55 = *v10;
      v56 = *(v10 + 1);
      Hasher._combine(_:)(9uLL);
      Hasher._combine(_:)(v55);
      Hasher._combine(_:)(v56);
      Hasher._combine(_:)(v52);
      Data.hash(into:)();
      v57 = v53;
      v58 = v54;
      goto LABEL_70;
    case 0xAu:
      v156 = *(v10 + 1);
      v157 = *v10;
      Hasher._combine(_:)(0xAuLL);
      Hasher._combine(_:)(v157);
      sub_1000E0538(a1, v156);
      goto LABEL_84;
    case 0xBu:
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = 11;
      goto LABEL_18;
    case 0xCu:
      v43 = *(v10 + 1);
      v44 = *(v10 + 2);
      v45 = *v10;
      v46 = *(v10 + 1);
      v47 = *(v10 + 2);
      v48 = *(v10 + 3);
      v49 = *(v10 + 4);
      v50 = *(v10 + 5);
      Hasher._combine(_:)(0xCuLL);
      Hasher._combine(_:)(v45);
      Hasher._combine(_:)(v46);
      Hasher._combine(_:)(v47);
      Hasher._combine(_:)(v48);
      Hasher._combine(_:)(v49);
      v51 = v50;
      goto LABEL_62;
    case 0xDu:
      v133 = *(v10 + 1);
      v134 = *v10;
      v135 = *(v10 + 1);
      v136 = *(v10 + 2);
      v137 = *(v10 + 3);
      v138 = *(v10 + 4);
      v139 = *(v10 + 5);
      v140 = *(v10 + 16);
      v141 = *(v10 + 18);
      v244 = *(v10 + 17);
      v245 = v141;
      LODWORD(v246) = *(v10 + 19);
      LODWORD(v247) = *(v10 + 20);
      LODWORD(v248) = *(v10 + 21);
      LODWORD(v249) = *(v10 + 22);
      LODWORD(v250) = *(v10 + 23);
      Hasher._combine(_:)(0xDuLL);
      Hasher._combine(_:)(v134);
      Hasher._combine(_:)(v135);
      Hasher._combine(_:)(v136);
      Hasher._combine(_:)(v137);
      Hasher._combine(_:)(v138);
      Hasher._combine(_:)(v139);
      Hasher._combine(_:)(v133);
      Hasher._combine(_:)(v140);
      Hasher._combine(_:)(v244);
      Hasher._combine(_:)(v245);
      Hasher._combine(_:)(v246);
      Hasher._combine(_:)(v247);
      Hasher._combine(_:)(v248);
      Hasher._combine(_:)(v249);
      Hasher._combine(_:)(v250);
      return;
    case 0xEu:
      v35 = *(v10 + 1);
      v251 = *v10;
      *v252 = v35;
      *&v252[16] = *(v10 + 4);
      Hasher._combine(_:)(0xEuLL);
      NANAttribute.ServiceDescriptorExtension.hash(into:)();
      sub_100277A14(&v251);
      return;
    case 0xFu:
      v68 = *v10;
      v69 = *(v10 + 1);
      v70 = v10[1];
      v71 = *(v10 + 4);
      v72 = *(v10 + 5);
      v73 = *(v10 + 6);
      v74 = v10[4];
      v75 = *(v10 + 10);
      Hasher._combine(_:)(0xFuLL);
      if (v69)
      {
        v76 = 1;
      }

      else
      {
        v76 = 2 * v68;
      }

      Hasher._combine(_:)(v76);
      Hasher._combine(_:)(v70);
      Hasher._combine(_:)(v71);
      Hasher._combine(_:)(v72);
      Hasher._combine(_:)(v73);
      Hasher._combine(_:)(v74);
      Hasher._combine(_:)(v75);
      return;
    case 0x10u:
      v34 = *(v10 + 1);
      v251 = *v10;
      *v252 = v34;
      *&v252[16] = *(v10 + 2);
      Hasher._combine(_:)(0x10uLL);
      NANAttribute.Datapath.hash(into:)();
      sub_10027A15C(&v251);
      return;
    case 0x11u:
      v101 = *(v10 + 1);
      v102 = *v10;
      v103 = v10[1];
      Hasher._combine(_:)(0x11uLL);
      Hasher._combine(_:)(v102);
      Hasher._combine(_:)(v103);
      sub_1000E0374(a1, v101);
      goto LABEL_84;
    case 0x12u:
      v33 = *(v10 + 1);
      v149 = *v10;
      v150 = *(v10 + 1);
      v151 = *(v10 + 2);
      v152 = *(v10 + 3);
      v153 = *(v10 + 4);
      v154 = *(v10 + 5);
      v155 = *(v10 + 6);
      Hasher._combine(_:)(0x12uLL);
      Hasher._combine(_:)(v149);
      Hasher._combine(_:)(v150);
      Hasher._combine(_:)(v151);
      Hasher._combine(_:)(v152);
      Hasher._combine(_:)(v153);
      Hasher._combine(_:)(v154);
      Hasher._combine(_:)(v155);
      goto LABEL_83;
    case 0x13u:
      v195 = *(v10 + 4);
      v196 = *(v10 + 5);
      v250 = *(v10 + 1);
      v197 = *(v10 + 16);
      v33 = *(v10 + 3);
      v198 = *v10;
      v199 = *(v10 + 1);
      v200 = *(v10 + 2);
      v201 = *(v10 + 3);
      Hasher._combine(_:)(0x13uLL);
      Hasher._combine(_:)(v198);
      Hasher._combine(_:)(v199);
      Hasher._combine(_:)(v200);
      Hasher._combine(_:)(v201);
      if (v196)
      {
        v195 = 0;
      }

      else
      {
        Hasher._combine(_:)(1u);
      }

      Hasher._combine(_:)(v195);
      if (v197)
      {
        goto LABEL_81;
      }

      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v250);
      goto LABEL_83;
    case 0x14u:
      v110 = *v10;
      v111 = v10[1];
      Hasher._combine(_:)(0x14uLL);
      Hasher._combine(_:)(v110);
      Hasher._combine(_:)(v111);
      return;
    case 0x15u:
      v125 = *(v10 + 1);
      v126 = v10[8];
      v127 = *(v10 + 18);
      v128 = *(v10 + 19);
      v129 = *(v10 + 10);
      v130 = v10[14];
      v131 = *v10;
      v132 = *(v10 + 1);
      Hasher._combine(_:)(0x15uLL);
      LOWORD(v251) = v126;
      BYTE2(v251) = v127;
      BYTE3(v251) = v128 & 1;
      *(&v251 + 4) = v129;
      WORD6(v251) = v130;
      NANAttribute.UnalignedSchedule.hash(into:)(a1, v131 | (v132 << 32), v125, v251, *(&v251 + 1));
      return;
    case 0x16u:
      v41 = v10[1];
      v185 = *(v10 + 4);
      v186 = *v10;
      Hasher._combine(_:)(0x16uLL);
      Hasher._combine(_:)(v186);
      if (v185 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
LABEL_76:
        Hasher._combine(_:)(v41);
      }

      return;
    case 0x17u:
      v203 = *(v10 + 1);
      v204 = *(v10 + 8);
      v33 = *(v10 + 2);
      v205 = *v10;
      v206 = *(v10 + 1);
      v207 = *(v10 + 2);
      v208 = *(v10 + 3);
      Hasher._combine(_:)(0x17uLL);
      Hasher._combine(_:)(v205);
      Hasher._combine(_:)(v206);
      Hasher._combine(_:)(v207);
      Hasher._combine(_:)(v208);
      if (v204 == 1)
      {
LABEL_81:
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v203);
      }

      goto LABEL_83;
    case 0x18u:
      v62 = *v10;
      Hasher._combine(_:)(0x18uLL);
      NANAttribute.FineTimingMeasurementRangeReport.hash(into:)(a1, v62);
      goto LABEL_84;
    case 0x19u:
      v59 = *(v10 + 5);
      v254 = *(v10 + 4);
      v255 = v59;
      v256 = *(v10 + 6);
      v60 = *(v10 + 1);
      v251 = *v10;
      *v252 = v60;
      v61 = *(v10 + 3);
      *&v252[16] = *(v10 + 2);
      v253 = v61;
      Hasher._combine(_:)(0x19uLL);
      NANAttribute.ElementContainer.hash(into:)();
      sub_10027A0CC(&v251);
      return;
    case 0x1Au:
      v231 = *v10;
      v232 = *(v10 + 1);
      v233 = *(v10 + 2);
      v234 = *(v10 + 3);
      v235 = *(v10 + 4);
      v236 = *(v10 + 5);
      v237 = *(v10 + 6);
      v238 = *(v10 + 7);
      v241 = *(v10 + 8);
      v242 = *(v10 + 9);
      v243 = *(v10 + 10);
      v239 = *(v10 + 12);
      v244 = *(v10 + 11);
      v245 = v239;
      LODWORD(v246) = *(v10 + 13);
      LODWORD(v247) = *(v10 + 14);
      LODWORD(v248) = *(v10 + 15);
      LODWORD(v249) = v10[8];
      LODWORD(v250) = v10[9];
      Hasher._combine(_:)(0x1AuLL);
      Hasher._combine(_:)(v231);
      Hasher._combine(_:)(v232);
      Hasher._combine(_:)(v233);
      Hasher._combine(_:)(v234);
      Hasher._combine(_:)(v235);
      Hasher._combine(_:)(v236);
      Hasher._combine(_:)(v237);
      Hasher._combine(_:)(v238);
      v218 = v241;
      goto LABEL_73;
    case 0x1Bu:
      v24 = *v10;
      v25 = *(v10 + 1);
      v26 = *(v10 + 2);
      v27 = *(v10 + 3);
      v28 = *(v10 + 4);
      v29 = *(v10 + 5);
      v30 = *(v10 + 6);
      v31 = *(v10 + 7);
      LODWORD(v247) = *(v10 + 8);
      LODWORD(v248) = *(v10 + 9);
      LODWORD(v249) = v10[5];
      LODWORD(v250) = v10[6];
      Hasher._combine(_:)(0x1BuLL);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(v26);
      Hasher._combine(_:)(v27);
      Hasher._combine(_:)(v28);
      Hasher._combine(_:)(v29);
      Hasher._combine(_:)(v30);
      v32 = v31;
      goto LABEL_74;
    case 0x1Cu:
      v209 = *v10;
      v210 = *(v10 + 1);
      v211 = *(v10 + 2);
      v212 = *(v10 + 3);
      v213 = *(v10 + 4);
      v214 = *(v10 + 5);
      v215 = *(v10 + 6);
      v216 = *(v10 + 7);
      v242 = *(v10 + 8);
      v243 = *(v10 + 9);
      v217 = *(v10 + 11);
      v244 = *(v10 + 10);
      v245 = v217;
      LODWORD(v246) = *(v10 + 12);
      LODWORD(v247) = *(v10 + 13);
      LODWORD(v248) = *(v10 + 14);
      LODWORD(v249) = v10[8];
      LODWORD(v250) = v10[9];
      Hasher._combine(_:)(0x1CuLL);
      Hasher._combine(_:)(v209);
      Hasher._combine(_:)(v210);
      Hasher._combine(_:)(v211);
      Hasher._combine(_:)(v212);
      Hasher._combine(_:)(v213);
      Hasher._combine(_:)(v214);
      Hasher._combine(_:)(v215);
      v218 = v216;
LABEL_73:
      Hasher._combine(_:)(v218);
      Hasher._combine(_:)(v242);
      Hasher._combine(_:)(v243);
      Hasher._combine(_:)(v244);
      Hasher._combine(_:)(v245);
      v32 = v246;
LABEL_74:
      Hasher._combine(_:)(v32);
      Hasher._combine(_:)(v247);
      Hasher._combine(_:)(v248);
      Hasher._combine(_:)(v249);
      Hasher._combine(_:)(v250);
      return;
    case 0x1Du:
      v44 = *(v10 + 3);
      v250 = *(v10 + 2);
      v219 = *v10;
      v220 = *(v10 + 1);
      v221 = *(v10 + 2);
      v222 = *(v10 + 3);
      v223 = *(v10 + 4);
      v224 = *(v10 + 5);
      v225 = *(v10 + 6);
      LODWORD(v246) = *(v10 + 7);
      LODWORD(v247) = *(v10 + 8);
      LODWORD(v248) = v10[5];
      LODWORD(v249) = v10[6];
      Hasher._combine(_:)(0x1DuLL);
      Hasher._combine(_:)(v219);
      Hasher._combine(_:)(v220);
      Hasher._combine(_:)(v221);
      Hasher._combine(_:)(v222);
      Hasher._combine(_:)(v223);
      Hasher._combine(_:)(v224);
      Hasher._combine(_:)(v225);
      Hasher._combine(_:)(v246);
      Hasher._combine(_:)(v247);
      Hasher._combine(_:)(v248);
      Hasher._combine(_:)(v249);
LABEL_68:
      v226 = v250;
      Data.hash(into:)();
      v57 = v226;
      goto LABEL_69;
    case 0x1Eu:
      v171 = *(v10 + 1);
      v172 = *v10;
      Hasher._combine(_:)(0x1EuLL);
      Hasher._combine(_:)(v172);
      Hasher._combine(_:)(*(v171 + 16));
      v173 = *(v171 + 16);
      if (v173)
      {
        v174 = (v171 + 33);
        do
        {
          v175 = *(v174 - 1);
          v176 = *v174;
          v174 += 2;
          Hasher._combine(_:)(v175 + 1);
          Hasher._combine(_:)(v176);
          --v173;
        }

        while (v173);
      }

      goto LABEL_84;
    case 0x1Fu:
      v100 = *v10;
      Hasher._combine(_:)(0x1FuLL);
      NANAttribute.SecurityContextInformation.hash(into:)(a1, v100);
      goto LABEL_84;
    case 0x20u:
      v177 = *(v10 + 5);
      v254 = *(v10 + 4);
      v255 = v177;
      *&v256 = *(v10 + 12);
      v178 = *(v10 + 1);
      v251 = *v10;
      *v252 = v178;
      v179 = *(v10 + 3);
      *&v252[16] = *(v10 + 2);
      v253 = v179;
      Hasher._combine(_:)(0x20uLL);
      Hasher._combine(_:)(v251);
      v180 = *v252;
      v181 = *(&v253 + 1);
      v246 = v254;
      v250 = *(&v255 + 1);
      v247 = v255;
      v248 = *(&v254 + 1);
      v249 = v256;
      if (BYTE8(v251))
      {
        v182 = 2;
      }

      else
      {
        v182 = 1;
      }

      v183 = WORD5(v251);
      v184 = WORD6(v251);
      Hasher._combine(_:)(v182);
      Hasher._combine(_:)(v183);
      Hasher._combine(_:)(v184);
      Hasher._combine(_:)(v180);
      Data.hash(into:)();
      Data.hash(into:)();
      Hasher._combine(_:)(v181);
      Hasher._combine(_:)(v246);
      Data.hash(into:)();
      Data.hash(into:)();
      sub_100143F68(&v251);
      return;
    case 0x21u:
      v36 = *v10;
      v37 = *(v10 + 1);
      v38 = *(v10 + 3);
      v39 = v10[8];
      v40 = *(v10 + 18);
      Hasher._combine(_:)(0x21uLL);
      Hasher._combine(_:)(v36);
      Hasher._combine(_:)(v37);
      Hasher._combine(_:)(v39);
      Hasher._combine(_:)(v40);
      NANAttribute.PublicAvailability.hash(into:)(a1, v38);
      goto LABEL_84;
    case 0x22u:
      v33 = *v10;
      Hasher._combine(_:)(0x22uLL);
LABEL_83:
      NANAttribute.PublicAvailability.hash(into:)(a1, v33);
      goto LABEL_84;
    case 0x23u:
      v17 = *v10;
      Hasher._combine(_:)(0x23uLL);
      Hasher._combine(_:)(*(v17 + 16));
      v18 = *(v17 + 16);
      if (v18)
      {
        v19 = (v17 + 40);
        do
        {
          v20 = *(v19 - 1);
          v21 = *v19;
          sub_10000AB0C(v20, *v19);
          Data.hash(into:)();
          sub_1000124C8(v20, v21);
          v19 += 2;
          --v18;
        }

        while (v18);
      }

      goto LABEL_84;
    case 0x24u:
      v22 = *(v10 + 1);
      v251 = *v10;
      *v252 = v22;
      v23 = *(v10 + 3);
      *&v252[16] = *(v10 + 2);
      v253 = v23;
      Hasher._combine(_:)(0x24uLL);
      NANAttribute.DatapathExtension.hash(into:)();
      sub_10027A06C(&v251);
      return;
    case 0x25u:
      v14 = *v10;
      Hasher._combine(_:)(0x25uLL);
      Hasher._combine(_:)(*(v14 + 16));
      v15 = *(v14 + 16);
      if (v15)
      {
        v16 = 32;
        do
        {
          Hasher._combine(_:)(*(v14 + v16++));
          --v15;
        }

        while (v15);
      }

LABEL_84:

      return;
    case 0x26u:
      v227 = *v10;
      v228 = *(v10 + 1);
      v229 = *(v10 + 2);
      v230 = *(v10 + 3);
      Hasher._combine(_:)(0x26uLL);
      Hasher._combine(_:)(0);
      Data.hash(into:)();
      Data.hash(into:)();
      sub_1000124C8(v227, v228);
      v57 = v229;
      v58 = v230;
      goto LABEL_70;
    case 0x27u:
      v187 = *(v10 + 1);
      v188 = *(v10 + 2);
      v189 = *(v10 + 3);
      v190 = *(v10 + 4);
      v191 = v10[20];
      v192 = *v10;
      v193 = *(v10 + 1);
      v194 = *(v10 + 2);
      Hasher._combine(_:)(0x27uLL);
      Hasher._combine(_:)(v192);
      Hasher._combine(_:)(v193);
      Hasher._combine(_:)(v194);
      if (v190 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        if (v188)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v187);
        }

        Data.hash(into:)();
      }

      Hasher._combine(_:)(v191);
      sub_1000449CC(v187, v188, v189, v190);
      return;
    case 0x28u:
      sub_100262DC8(v10, v7, type metadata accessor for NANAttribute.CustomDeviceInformation);
      Hasher._combine(_:)(0x28uLL);
      Hasher._combine(_:)(*v7);
      Hasher._combine(_:)(v7[1]);
      Hasher._combine(_:)(*(v7 + 1));
      v42 = &v7[*(v4 + 28)];
      NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(a1);
      sub_100277544(v7, type metadata accessor for NANAttribute.CustomDeviceInformation);
      return;
    case 0x29u:
      v104 = *v10;
      v105 = *(v10 + 2);
      v43 = *(v10 + 1);
      v44 = *(v10 + 2);
      Hasher._combine(_:)(0x29uLL);
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v106 = swift_allocObject();
      *(v106 + 16) = xmmword_100480F30;
      *(v106 + 32) = v104;
      *(v106 + 34) = v105;
      v107 = sub_10002D874(v106);
      v109 = v108;

      Data.hash(into:)();
      sub_1000124C8(v107, v109);
      goto LABEL_63;
    case 0x2Au:
      v202 = *v10;
      v43 = *(v10 + 1);
      v44 = *(v10 + 2);
      Hasher._combine(_:)(0x2AuLL);
      v51 = byte_1004ABDA2[v202];
LABEL_62:
      Hasher._combine(_:)(v51);
LABEL_63:
      Data.hash(into:)();
      v57 = v43;
LABEL_69:
      v58 = v44;
LABEL_70:
      sub_1000124C8(v57, v58);
      break;
    default:
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = 0;
LABEL_18:
      Hasher._combine(_:)(v13);
      Hasher._combine(_:)(v11);
      Hasher._combine(_:)(v12);
      break;
  }
}

Swift::Int sub_1002641DC(void (*a1)(_BYTE *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int sub_10026423C(uint64_t a1, uint64_t a2, void (*a3)(_BYTE *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int sub_1002642A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(_BYTE *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

void *Array<A>.retrieve(allAttributes:)(char a1, uint64_t a2)
{
  v4 = *(*(type metadata accessor for NANAttribute(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v19 - v8;
  v10 = *(a2 + 16);
  if (!v10)
  {
    return _swiftEmptyArrayStorage;
  }

  v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v11 = a2 + v20;
  v12 = *(v7 + 72);
  v13 = _swiftEmptyArrayStorage;
  v21 = v6;
  do
  {
    sub_1002774DC(v11, v9, type metadata accessor for NANAttribute);
    if (byte_1004ABDA2[NANAttribute.attributeType.getter()] == byte_1004ABDA2[a1])
    {
      sub_100262DC8(v9, v6, type metadata accessor for NANAttribute);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = v13;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1000C0850(0, v13[2] + 1, 1);
        v13 = v22;
      }

      v16 = v13[2];
      v15 = v13[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000C0850(v15 > 1, v16 + 1, 1);
        v13 = v22;
      }

      v13[2] = v16 + 1;
      v17 = v13 + v20 + v16 * v12;
      v6 = v21;
      sub_100262DC8(v21, v17, type metadata accessor for NANAttribute);
    }

    else
    {
      sub_100277544(v9, type metadata accessor for NANAttribute);
    }

    v11 += v12;
    --v10;
  }

  while (v10);
  return v13;
}

uint64_t Array<A>.modify(attribute:using:)(char a1, uint64_t (*a2)(char *), unint64_t a3)
{
  v8 = *(type metadata accessor for NANAttribute(0) - 8);
  v9 = *(v8 + 64);
  result = __chkstk_darwin();
  v12 = v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v21 = *(*v3 + 16);
  if (v21)
  {
    v16[1] = a3;
    v17 = a2;
    v18 = v3;
    v19 = v4;
    v14 = 0;
    v20 = a1;
    while (1)
    {
      if (v14 >= v13[2])
      {
        __break(1u);
        goto LABEL_12;
      }

      a3 = (*(v8 + 80) + 32) & ~*(v8 + 80);
      a2 = (*(v8 + 72) * v14);
      sub_1002774DC(a2 + v13 + a3, v12, type metadata accessor for NANAttribute);
      v15 = NANAttribute.attributeType.getter();
      result = sub_100277544(v12, type metadata accessor for NANAttribute);
      if (byte_1004ABDA2[v15] == byte_1004ABDA2[v20])
      {
        break;
      }

      if (v21 == ++v14)
      {
        return result;
      }
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      goto LABEL_8;
    }

LABEL_12:
    result = sub_1000C2BDC(v13);
    v13 = result;
LABEL_8:
    if (v14 >= v13[2])
    {
      __break(1u);
    }

    else
    {
      result = v17(a2 + v13 + a3);
      *v18 = v13;
    }
  }

  return result;
}

uint64_t sub_100264734()
{
  result = *v0;
  v2 = *(v0 + 8);
  v3 = v2 >> 62;
  if ((v2 >> 62) > 1)
  {
    if (v3 != 2 || *(result + 16) == *(result + 24))
    {
      goto LABEL_29;
    }
  }

  else
  {
    v4 = BYTE6(v2);
    if (v3)
    {
      v4 = result >> 32;
      v5 = result;
    }

    else
    {
      v5 = 0;
    }

    if (v5 == v4)
    {
      goto LABEL_29;
    }
  }

  result = sub_10003C7E8(result, v2);
  if ((result & 0x100) == 0)
  {
    v6 = result;
    v7 = *v0;
    v8 = *(v0 + 8);
    v9 = v8 >> 62;
    if ((v8 >> 62) > 1)
    {
      v10 = 0;
      if (v9 == 2)
      {
        v10 = *(v7 + 16);
      }
    }

    else
    {
      v10 = v7;
      if (!v9)
      {
        v10 = 0;
      }
    }

    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
    }

    else
    {
      if (v9 > 1)
      {
        if (v9 == 2)
        {
          v12 = *(v7 + 24);
        }

        else
        {
          v12 = 0;
        }
      }

      else if (v9)
      {
        v12 = v7 >> 32;
      }

      else
      {
        v12 = BYTE6(v8);
      }

      sub_10000AB0C(*v0, *(v0 + 8));
      result = sub_1000124C8(v7, v8);
      if (v12 >= v11)
      {
        v13 = Data._Representation.subscript.getter();
        v15 = v14;
        sub_1000124C8(v7, v8);
        *v0 = v13;
        *(v0 + 8) = v15;
        return v6;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100264884@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v32, v33);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v31[0];
  sub_100031694(v32, v33);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v7 = v31[0];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  v9 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for CodingUserInfoKey();
  v11 = sub_100037644(v10, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v9 + 16) || (v12 = sub_10007CF6C(v11), (v13 & 1) == 0))
  {

LABEL_12:
    v19 = v33;
    sub_100031694(v32, v33);
    v20 = UnkeyedDecodingContainer.decodeData(with:)(v7, v19);
    v22 = v21;
LABEL_14:
    sub_100002A00(v32);
    *a2 = v6;
    *(a2 + 8) = v20;
    *(a2 + 16) = v22;
    return sub_100002A00(a1);
  }

  sub_100002B30(*(v9 + 56) + 32 * v12, v31);

  if (!swift_dynamicCast() || (v30 & 1) == 0)
  {
    goto LABEL_12;
  }

  v14 = v33;
  sub_100031694(v32, v33);
  result = UnkeyedDecodingContainer.decodeData(with:)((v7 + 3) & 0x1FFFC, v14);
  v17 = 0;
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v17 = *(result + 16);
    }
  }

  else if (v18)
  {
    v17 = result;
  }

  v23 = __OFADD__(v17, v7);
  v24 = v17 + v7;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    if (v18 > 1)
    {
      if (v18 == 2)
      {
        v25 = *(result + 16);
        v26 = *(result + 24);
      }

      else
      {
        v26 = 0;
        v25 = 0;
      }
    }

    else if (v18)
    {
      v25 = result;
      v26 = result >> 32;
    }

    else
    {
      v25 = 0;
      v26 = BYTE6(v16);
    }

    if (v26 >= v25 && v24 >= v25)
    {
      v27 = v16;
      v28 = result;
      v20 = Data._Representation.subscript.getter();
      v22 = v29;
      sub_1000124C8(v28, v27);
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}