uint64_t sub_10022732C()
{
  v1 = 1802401130;
  v2 = 0x7261507564706D61;
  if (*v0 != 2)
  {
    v2 = 7562093;
  }

  if (*v0)
  {
    v1 = 1868983913;
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

uint64_t sub_10022739C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100231EA8(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1002273C4(uint64_t a1)
{
  v2 = sub_10003BBB8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100227400(uint64_t a1)
{
  v2 = sub_10003BBB8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.HighThroughputCapability.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v17 = a4;
  v7 = sub_10005DC58(&qword_100591C88, &qword_10049C4C0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v16 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003BBB8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = a3;
    v14 = v17;
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v13;
    v19 = v14;
    v20 = 3;
    sub_10000AB0C(v13, v14);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v18, v19);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t IEEE80211InformationElement.HighThroughputCapability.hash(into:)(int a1, unint64_t a2)
{
  v2 = a2 >> 16;
  v3 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);

  return Data.hash(into:)();
}

Swift::Int IEEE80211InformationElement.HighThroughputCapability.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 16;
  v3 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100227794()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100227820()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 2);
  v4 = *(v0 + 4);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);

  return Data.hash(into:)();
}

Swift::Int sub_100227894()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  v4 = *(v0 + 2);
  v5 = *(v0 + 4);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Data.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_10022791C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003B994(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 4) = BYTE4(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t sub_100227984(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1] && *(a1 + 4) == *(a2 + 4))
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002279D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x64616F6C796170 && a2 == 0xE700000000000000)
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

uint64_t sub_100227A60(uint64_t a1)
{
  v2 = sub_10022EB04();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100227A9C(uint64_t a1)
{
  v2 = sub_10022EB04();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.ManagementMIC.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10005DC58(&qword_100591C98, &qword_10049C4C8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10022EB04();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000124C8(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

void *sub_100227C58@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_10022EB58(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.mcs.getter()
{
  v1 = *(v0 + 24);
  sub_10000AB0C(v1, *(v0 + 32));
  return v1;
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.mcs.setter(uint64_t a1, uint64_t a2)
{
  result = sub_1000124C8(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

double IEEE80211InformationElement.HighThroughputOperation.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022F614(a1, v6);
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

uint64_t sub_100227D54()
{
  v1 = 0x6F6974617265706FLL;
  if (*v0 != 1)
  {
    v1 = 7562093;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x437972616D697270;
  }
}

uint64_t sub_100227DB8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100232014(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100227DE0(uint64_t a1)
{
  v2 = sub_10022F7CC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100227E1C(uint64_t a1)
{
  v2 = sub_10022F7CC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t static IEEE80211InformationElement.HighThroughputOperation.__derived_struct_equals(_:_:)(void *a1, void *a2)
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

uint64_t IEEE80211InformationElement.HighThroughputOperation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = sub_10005DC58(&qword_100591CA8, &qword_10049C4D0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v14[-v8 - 8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10022F7CC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v18 = *(v3 + 8);
    v16 = *(v3 + 8);
    v15 = 1;
    sub_100142478(&v18, v14);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v16, *(&v16 + 1));
    v16 = *(v3 + 24);
    v17 = v16;
    v15 = 2;
    sub_100142478(&v17, v14);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v16, *(&v16 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);

  return Data.hash(into:)();
}

Swift::Int IEEE80211InformationElement.HighThroughputOperation.hashValue.getter()
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

Swift::Int sub_100228168()
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

uint64_t sub_1002281E8()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  Hasher._combine(_:)(*v0);
  Data.hash(into:)();

  return Data.hash(into:)();
}

Swift::Int sub_100228258()
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

double sub_1002282D4@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IEEE80211InformationElement.HighThroughputOperation.init(from:)(a1, v6);
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

uint64_t sub_100228334(void *a1, void *a2)
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

uint64_t sub_1002283B4()
{
  v1 = *v0;
  v2 = 1868983913;
  v3 = 0x474C686769487872;
  v4 = 0x70614D53434D7874;
  if (v1 != 3)
  {
    v4 = 0x474C686769487874;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x70614D53434D7872;
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

uint64_t sub_100228458@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10023213C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100228480(uint64_t a1)
{
  v2 = sub_10003CED4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002284BC(uint64_t a1)
{
  v2 = sub_10003CED4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.VeryHighThroughputCapability.encode(to:)(void *a1)
{
  v3 = sub_10005DC58(&qword_100591CB8, &qword_10049C4D8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003CED4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v7, v3);
  }

  v14 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v13 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v12 = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 4;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

void IEEE80211InformationElement.VeryHighThroughputCapability.hash(into:)(int a1, unint64_t a2, unsigned int a3)
{
  v3 = a3;
  v4 = HIDWORD(a2);
  v5 = HIWORD(a2);
  v6 = HIWORD(a3);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
}

Swift::Int IEEE80211InformationElement.VeryHighThroughputCapability.hashValue.getter(unint64_t a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = HIDWORD(a1);
  v5 = HIWORD(a1);
  v6 = HIWORD(a2);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

unint64_t sub_10022881C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003CC24(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_100228864(void *a1)
{
  v2 = *(v1 + 2);
  v3 = *v1;
  return IEEE80211InformationElement.VeryHighThroughputCapability.encode(to:)(a1);
}

Swift::Int sub_100228884()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 6);
  v4 = *(v0 + 8);
  v5 = *(v0 + 10);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_10022891C()
{
  v1 = *(v0 + 4);
  v2 = *(v0 + 6);
  v3 = *(v0 + 8);
  v4 = *(v0 + 10);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_100228988()
{
  v1 = *v0;
  v2 = *(v0 + 4);
  v3 = *(v0 + 6);
  v4 = *(v0 + 8);
  v5 = *(v0 + 10);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_100228A6C(uint64_t a1)
{
  v2 = sub_10022F820();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100228AA8(uint64_t a1)
{
  v2 = sub_10022F820();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.VeryHighThroughputOperation.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_100591CC8, &qword_10049C4E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10022F820();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

void IEEE80211InformationElement.RSNCapability.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(byte_10049EDE4[*(v0 + 2)]);
  v1 = *(v0 + 8);
  v2 = *(v1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(byte_10049EDE4[v4]);
      --v2;
    }

    while (v2);
  }

  v5 = *(v0 + 16);
  v6 = *(v5 + 16);
  Hasher._combine(_:)(v6);
  if (v6)
  {
    v7 = (v5 + 32);
    do
    {
      v8 = *v7++;
      Hasher._combine(_:)(v8 + 1);
      --v6;
    }

    while (v6);
  }

  Hasher._combine(_:)(*(v0 + 24));
  v9 = *(v0 + 32);
  v10 = *(v9 + 16);
  Hasher._combine(_:)(v10);
  if (v10)
  {
    v11 = (v9 + 40);
    do
    {
      v12 = *(v11 - 1);
      v13 = *v11;
      sub_10000AB0C(v12, *v11);
      Data.hash(into:)();
      sub_1000124C8(v12, v13);
      v11 += 2;
      --v10;
    }

    while (v10);
  }

  Hasher._combine(_:)(byte_10049EDE4[*(v0 + 40)]);
}

Swift::Int IEEE80211InformationElement.RSNCapability.hashValue.getter()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.RSNCapability.hash(into:)();
  return Hasher._finalize()();
}

double sub_100228ED4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = IEEE80211InformationElement.RSNCapability.init(from:)(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

double IEEE80211InformationElement.RSNCapability.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10022F9A0(a1, &v6);
  if (!v2)
  {
    v5 = v7[0];
    *a2 = v6;
    a2[1] = v5;
    result = *(v7 + 9);
    *(a2 + 25) = *(v7 + 9);
  }

  return result;
}

uint64_t IEEE80211InformationElement.RSNCapability.encode(to:)(void *a1)
{
  v3 = v1;
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v5 = *v1;
  sub_100031694(v10, v11);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (v2)
  {
    return sub_100002A00(v10);
  }

  v7 = *(v3 + 2);
  sub_100031694(v10, v11);
  sub_10022FD54();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v14 = *(v3 + 1);
  if (*(v14 + 16) >> 16)
  {
    __break(1u);
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_100031694(v10, v11);

  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v10, v11);
  sub_10005DC58(&qword_100591CE0, &qword_10049C4E8);
  sub_10022FDA8();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  result = sub_100016290(&v14, &qword_100591CE0, &qword_10049C4E8);
  v13 = *(v3 + 2);
  if (*(v13 + 16) >> 16)
  {
    goto LABEL_9;
  }

  sub_100031694(v10, v11);

  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v10, v11);
  sub_10005DC58(&qword_100591CF0, &qword_10049C4F0);
  sub_10022FE2C();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_100016290(&v13, &qword_100591CF0, &qword_10049C4F0);
  v8 = v3[12];
  sub_100031694(v10, v11);
  sub_10022FF04();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v12 = *(v3 + 4);
  if (!(*(v12 + 16) >> 16))
  {
    sub_100031694(v10, v11);

    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v10, v11);
    sub_10005DC58(&qword_100591D10, &qword_10049C4F8);
    sub_10022FF58();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100016290(&v12, &qword_100591D10, &qword_10049C4F8);
    v9 = *(v3 + 40);
    sub_100031694(v10, v11);
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    return sub_100002A00(v10);
  }

LABEL_10:
  __break(1u);
  return result;
}

Swift::Int sub_100229394()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.RSNCapability.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1002293D0(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return _s7CoreP2P27IEEE80211InformationElementO13RSNCapabilityV23__derived_struct_equalsySbAE_AEtFZ_0(&v5, &v7) & 1;
}

uint64_t sub_10022941C()
{
  result = sub_100286BD4(4);
  static IEEE80211InformationElement.ExtendedRSNCapability.protectedTWTOperationsSupport = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.protectedTWTOperationsSupport.unsafeMutableAddressor()
{
  if (qword_10058AAE0 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.protectedTWTOperationsSupport;
}

uint64_t sub_1002294B4()
{
  result = sub_100286BD4(5);
  static IEEE80211InformationElement.ExtendedRSNCapability.saeHashToElement = result;
  return result;
}

uint64_t sub_1002294FC()
{
  result = sub_100286BD4(8);
  static IEEE80211InformationElement.ExtendedRSNCapability.secureLTFSupported = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.secureLTFSupported.unsafeMutableAddressor()
{
  if (qword_10058AAF0 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.secureLTFSupported;
}

uint64_t sub_100229594()
{
  result = sub_100286BD4(9);
  static IEEE80211InformationElement.ExtendedRSNCapability.secureRTTSupported = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.secureRTTSupported.unsafeMutableAddressor()
{
  if (qword_10058AAF8 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.secureRTTSupported;
}

uint64_t sub_10022962C()
{
  result = sub_100286BD4(10);
  static IEEE80211InformationElement.ExtendedRSNCapability.urnmMFPR = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.urnmMFPR.unsafeMutableAddressor()
{
  if (qword_10058AB00 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.urnmMFPR;
}

uint64_t sub_1002296C4()
{
  result = sub_100286BD4(11);
  static IEEE80211InformationElement.ExtendedRSNCapability.protectedAnnounceSupport = result;
  return result;
}

uint64_t *IEEE80211InformationElement.ExtendedRSNCapability.protectedAnnounceSupport.unsafeMutableAddressor()
{
  if (qword_10058AB08 != -1)
  {
    swift_once();
  }

  return &static IEEE80211InformationElement.ExtendedRSNCapability.protectedAnnounceSupport;
}

uint64_t sub_100229774(uint64_t a1)
{
  v2 = sub_100230030();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002297B0(uint64_t a1)
{
  v2 = sub_100230030();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.ExtendedRSNCapability.encode(to:)(void *a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100591D28, &unk_10049C500);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v11 - v7;
  v9 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100230030();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[1] = a2;
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_100230084();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v8, v4);
}

void *sub_100229948@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = IEEE80211InformationElement.ExtendedRSNCapability.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_100229998()
{
  v1 = *v0;
  Hasher._combine(_:)(*(*v0 + 16));
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = (v1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }
}

uint64_t sub_100229A18@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v6 = *v2;

  sub_1000C2E7C(v4);

  *a2 = v6;
  return result;
}

uint64_t sub_100229A90@<X0>(uint64_t *a1@<X0>, void (*a2)(uint64_t)@<X3>, void *a3@<X8>)
{
  v6 = *a1;
  v8 = *v3;

  a2(v6);

  result = swift_bridgeObjectRelease_n();
  *a3 = v8;
  return result;
}

BOOL sub_100229B14(void *a1, uint64_t *a2)
{
  v4 = *a2;
  v9 = *v2;

  sub_1000C2E7C(v4);
  v5 = v9;
  v6 = sub_1000C2E80(v9, v4);
  if ((v6 & 1) == 0)
  {

    sub_10029F424(v7);
    v5 = v4;
  }

  *a1 = v5;
  return (v6 & 1) == 0;
}

uint64_t sub_100229BB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  v7 = *v2;
  swift_bridgeObjectRetain_n();
  sub_1000C2E7C(v4);

  v5 = v7;
  if (sub_1000C2E80(v7, _swiftEmptyArrayStorage))
  {

    v5 = 0;
  }

  else
  {
    result = sub_100238570(v4);
  }

  *a2 = v5;
  return result;
}

uint64_t sub_100229C5C(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v6 = *v1;

  sub_1000C2E7C(v2);
  v4 = sub_1000C2E80(v6, v3);

  return v4 & 1;
}

uint64_t sub_100229CC8(uint64_t *a1)
{
  v2 = *a1;
  v3 = *v1;
  v5 = *a1;

  sub_1000C2E7C(v3);
  LOBYTE(v2) = sub_1000C2E80(v5, v2);

  return v2 & 1;
}

uint64_t IEEE80211InformationElement.IEEE80211CipherSuite.encode(to:)(void *a1, char a2)
{
  v4 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v7, v8);
  sub_1001F5AF0();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v2)
  {
    sub_100031694(v7, v8);
    v5 = byte_10049EDE4[a2];
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v7);
}

uint64_t sub_100229E88@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P27IEEE80211InformationElementO0C11CipherSuiteO8rawValueAESgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_100229ECC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10049EDE4[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_100229F54()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10049EDE4[v1]);
  return Hasher._finalize()();
}

uint64_t sub_100229FA0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10022F110(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10022A148()
{
  if (*v0)
  {
    result = 0x65696B6F6F63;
  }

  else
  {
    result = 0x6B636162656D6F63;
  }

  *v0;
  return result;
}

uint64_t sub_10022A18C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6B636162656D6F63 && a2 == 0xED00007265746641;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65696B6F6F63 && a2 == 0xE600000000000000)
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

uint64_t sub_10022A26C(uint64_t a1)
{
  v2 = sub_100230100();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022A2A8(uint64_t a1)
{
  v2 = sub_100230100();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.Comeback.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v15 = a4;
  v7 = sub_10005DC58(&qword_100591D38, &unk_10049C510);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100230100();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v16 = a3;
    v17 = v15;
    v18 = 1;
    sub_10000AB0C(a3, v15);
    sub_1000B8088();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    sub_1000124C8(v16, v17);
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10022A480@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10022EE50(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.comeback.getter()
{
  v1 = v0[1];
  sub_1000E55A4(v1, v0[2], v0[3]);
  return v1;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.comeback.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_10002F75C(*(v3 + 8), *(v3 + 16), *(v3 + 24));
  *(v3 + 8) = a1;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  return result;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.ephemeralPublicKeyType.setter(uint64_t result)
{
  *(v1 + 33) = result;
  *(v1 + 34) = BYTE1(result) & 1;
  return result;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.ephemeralPublicKey.getter()
{
  v1 = *(v0 + 40);
  sub_10005D67C(v1, *(v0 + 48));
  return v1;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.ephemeralPublicKey.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100017554(*(v2 + 40), *(v2 + 48));
  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

void IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  if (*(v0 + 24) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 8);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v2);
    Data.hash(into:)();
  }

  v3 = *(v0 + 32);
  if (v3 == 2)
  {
    Hasher._combine(_:)(0);
    if ((*(v0 + 34) & 1) == 0)
    {
LABEL_6:
      v4 = *(v0 + 33);
      Hasher._combine(_:)(1u);
      goto LABEL_9;
    }
  }

  else
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)((v3 & 1) + 19);
    if ((*(v0 + 34) & 1) == 0)
    {
      goto LABEL_6;
    }
  }

  v4 = 0;
LABEL_9:
  Hasher._combine(_:)(v4);
  if (*(v0 + 48) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v5 = *(v0 + 40);
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hashValue.getter()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10022A784()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hash(into:)();
  return Hasher._finalize()();
}

double sub_10022A7C0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

double IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.init(from:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_10022F280(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.encode(to:)(void *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v25 = *(v1 + 24);
  v24 = *(v1 + 8);
  v4 = v25 >> 60 != 15;
  v5 = *(v1 + 32);
  if (v5 != 2 && *(v1 + 48) >> 60 != 15)
  {
    v4 |= 2u;
  }

  v26 = v4;
  sub_100031694(v22, v23);
  sub_100012400(&v24, &v20, &qword_10058DF78, &unk_100488530);
  sub_100230154();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (v2)
  {
    sub_100016290(&v24, &qword_10058DF78, &unk_100488530);
    return sub_100002A00(v22);
  }

  LOBYTE(v20) = *v1;
  sub_100031694(v22, v23);
  sub_1002301A8();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v20 = v24;
  v21 = v25;
  sub_100031694(v22, v23);
  sub_10005DC58(&qword_10058DF78, &unk_100488530);
  sub_1002301FC();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  sub_10002F75C(v20, *(&v20 + 1), v21);
  if (v5 == 2)
  {
    return sub_100002A00(v22);
  }

  v7 = *(v1 + 48);
  if (v7 >> 60 == 15 || (*(v1 + 34) & 1) != 0)
  {
    return sub_100002A00(v22);
  }

  v8 = *(v1 + 40);
  v9 = *(v1 + 33);
  LOBYTE(v20) = v5 & 1;
  sub_100031694(v22, v23);
  sub_10000AB0C(v8, v7);
  sub_1001F4ED8();
  result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  v10 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v10)
    {
      v11 = BYTE6(v7);
      goto LABEL_21;
    }

    goto LABEL_18;
  }

  if (v10 != 2)
  {
    v11 = 0;
    goto LABEL_21;
  }

  v13 = *(v8 + 16);
  v12 = *(v8 + 24);
  v14 = __OFSUB__(v12, v13);
  v11 = v12 - v13;
  if (v14)
  {
    __break(1u);
LABEL_18:
    LODWORD(v11) = HIDWORD(v8) - v8;
    if (__OFSUB__(HIDWORD(v8), v8))
    {
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
      goto LABEL_42;
    }

    v11 = v11;
  }

LABEL_21:
  v15 = v11 + 1;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
    goto LABEL_40;
  }

  sub_100031694(v22, v23);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  sub_100031694(v22, v23);
  result = dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  v16 = 0;
  if (v10 > 1)
  {
    if (v10 == 2)
    {
      v16 = *(v8 + 16);
    }
  }

  else if (v10)
  {
    v16 = v8;
  }

  if (((v15 - 1) & 0xFFFFFF00) != 0)
  {
    goto LABEL_41;
  }

  v17 = v16 + (v15 - 1);
  if (__OFADD__(v16, (v15 - 1)))
  {
LABEL_42:
    __break(1u);
    goto LABEL_43;
  }

  if (v10 > 1)
  {
    if (v10 == 2)
    {
      result = *(v8 + 16);
      v18 = *(v8 + 24);
    }

    else
    {
      v18 = 0;
      result = 0;
    }
  }

  else if (v10)
  {
    result = v8;
    v18 = v8 >> 32;
  }

  else
  {
    result = 0;
    v18 = BYTE6(v7);
  }

  if (v18 >= result && v17 >= result)
  {
    *&v20 = Data._Representation.subscript.getter();
    *(&v20 + 1) = v19;
    sub_100031694(v22, v23);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v20, *(&v20 + 1));
    sub_100017554(v8, v7);
    return sub_100002A00(v22);
  }

LABEL_43:
  __break(1u);
  return result;
}

BOOL sub_10022AC88(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t IEEE80211InformationElement.AuthenticationKeyManagementSuite.encode(to:)(void *a1)
{
  v2 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v6 = 3840;
  v7 = -84;
  sub_100031694(v4, v5);
  sub_1001F5AF0();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v1)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

uint64_t sub_10022ADE4@<X0>(char *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P27IEEE80211InformationElementO32AuthenticationKeyManagementSuiteO8rawValueAESgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_10022AE10@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10022EFA0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_10022AE68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701080931 && a2 == 0xE400000000000000)
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

uint64_t sub_10022AEF0(uint64_t a1)
{
  v2 = sub_1002302D4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022AF2C(uint64_t a1)
{
  v2 = sub_1002302D4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10022B050(uint64_t a1)
{
  v2 = sub_10023037C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10022B08C(uint64_t a1)
{
  v2 = sub_10023037C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10022B10C(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v17 = a6;
  v9 = sub_10005DC58(a4, a5);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v16 - v12;
  v14 = a1[4];
  sub_100029B34(a1, a1[3]);
  v17();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = a2;
  v19 = a3;
  sub_10000AB0C(a2, a3);
  sub_100230328();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000124C8(v18, v19);
  return (*(v10 + 8))(v13, v9);
}

void *sub_10022B304@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, void (*a4)(void)@<X5>, void *a5@<X8>)
{
  result = sub_10022ECCC(a1, a2, a3, a4);
  if (!v5)
  {
    *a5 = result;
    a5[1] = v8;
  }

  return result;
}

Swift::Int sub_10022B380()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10049EDDA[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_10022B408()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(byte_10049EDDA[v1]);
  return Hasher._finalize()();
}

uint64_t sub_10022B454@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10003CB60(*a1);
  *a2 = result;
  return result;
}

unsigned __int8 *sub_10022B548@<X0>(unsigned __int8 *result@<X0>, char *a2@<X8>)
{
  v2 = *result;
  if (v2 == 100)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (v2 == 8)
  {
    v4 = 0;
  }

  else
  {
    v4 = v3;
  }

  *a2 = v4;
  return result;
}

void sub_10022B568(char *a1@<X8>)
{
  if (*v1)
  {
    v2 = 100;
  }

  else
  {
    v2 = 8;
  }

  *a1 = v2;
}

Swift::Int sub_10022B584()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 100;
  }

  else
  {
    v2 = 8;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_10022B5D8()
{
  if (*v0)
  {
    v1 = 100;
  }

  else
  {
    v1 = 8;
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_10022B614()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 100;
  }

  else
  {
    v2 = 8;
  }

  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

double IEEE80211InformationElement.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10003BC0C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10022B784@<X0>(uint64_t a1@<X0>, char a2@<W1>, _OWORD *a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  v7 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v9 = v21;
  v10 = v22;
  v11 = sub_10003CB60(v20);
  if (v11 <= 4)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        v12 = 48;
      }

      else
      {
        v12 = 45;
      }
    }

    else if (v11 == 2)
    {
      v12 = 61;
    }

    else if (v11 == 3)
    {
      v12 = 140;
    }

    else
    {
      v12 = 191;
    }
  }

  else if (v11 > 7)
  {
    if (v11 == 8)
    {
      v12 = 255;
    }

    else
    {
      if (v11 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v18 = xmmword_10047CE70;
        *(v18 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v9, v10);
      }

      v12 = 76;
    }
  }

  else if (v11 == 5)
  {
    v12 = 192;
  }

  else if (v11 == 6)
  {
    v12 = 221;
  }

  else
  {
    v12 = 244;
  }

  if (v12 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v21, v22);
  v13 = sub_100033AA8(_swiftEmptyArrayStorage);
  v14 = type metadata accessor for BinaryDecoder();
  v15 = swift_allocObject();
  v16 = 0;
  v15[5] = &_swiftEmptyDictionarySingleton;
  v15[2] = v9;
  v15[3] = v10;
  v17 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(v9 + 16);
    }
  }

  else if (v17)
  {
    v16 = v9;
  }

  v15[4] = v16;
  swift_beginAccess();
  v15[5] = v13;
  v23 = v14;
  v24 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v20 = v15;
  sub_10022F9A0(&v20, &v25);
  result = sub_1000124C8(v9, v10);
  v19 = v26[0];
  *a3 = v25;
  a3[1] = v19;
  *(a3 + 25) = *(v26 + 9);
  return result;
}

void *sub_10022BA84(uint64_t a1, void *a2)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  v5 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  swift_endAccess();
  if (v2)
  {
    return a2;
  }

  v6 = v18;
  v7 = v19;
  v8 = sub_10003CB60(v17);
  if (v8 <= 4)
  {
    if (v8 <= 1)
    {
      if (v8)
      {
        v9 = 48;
      }

      else
      {
        v9 = 45;
      }
    }

    else if (v8 == 2)
    {
      v9 = 61;
    }

    else if (v8 == 3)
    {
      v9 = 140;
    }

    else
    {
      v9 = 191;
    }
  }

  else if (v8 > 7)
  {
    if (v8 == 8)
    {
      v9 = 255;
    }

    else
    {
      if (v8 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v15 = xmmword_10047CE70;
        *(v15 + 16) = 2;
        swift_willThrow();
        sub_1000124C8(v6, v7);
        return a2;
      }

      v9 = 76;
    }
  }

  else if (v8 == 5)
  {
    v9 = 192;
  }

  else if (v8 == 6)
  {
    v9 = 221;
  }

  else
  {
    v9 = 244;
  }

  if (v9 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v18, v19);
  v10 = sub_100033AA8(_swiftEmptyArrayStorage);
  v11 = type metadata accessor for BinaryDecoder();
  v12 = swift_allocObject();
  v13 = 0;
  v12[5] = &_swiftEmptyDictionarySingleton;
  v12[2] = v6;
  v12[3] = v7;
  v14 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v14 == 2)
    {
      v13 = *(v6 + 16);
    }
  }

  else if (v14)
  {
    v13 = v6;
  }

  v12[4] = v13;
  swift_beginAccess();
  v12[5] = v10;
  v20 = v11;
  v21 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v17 = v12;
  a2 = sub_10022F874(&v17);
  sub_1000124C8(v6, v7);
  return a2;
}

uint64_t sub_10022BD6C@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  v7 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v10 = v28;
  v9 = v29;
  v11 = sub_10003CB60(v27);
  if (v11 <= 4)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        v12 = 48;
      }

      else
      {
        v12 = 45;
      }
    }

    else if (v11 == 2)
    {
      v12 = 61;
    }

    else if (v11 == 3)
    {
      v12 = 140;
    }

    else
    {
      v12 = 191;
    }
  }

  else if (v11 > 7)
  {
    if (v11 == 8)
    {
      v12 = 255;
    }

    else
    {
      if (v11 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v18 = xmmword_10047CE70;
        *(v18 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v10, v9);
      }

      v12 = 76;
    }
  }

  else if (v11 == 5)
  {
    v12 = 192;
  }

  else if (v11 == 6)
  {
    v12 = 221;
  }

  else
  {
    v12 = 244;
  }

  if (v12 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v28, v29);
  v13 = sub_100033AA8(_swiftEmptyArrayStorage);
  v14 = type metadata accessor for BinaryDecoder();
  v15 = swift_allocObject();
  v16 = 0;
  v15[5] = &_swiftEmptyDictionarySingleton;
  v15[2] = v10;
  v15[3] = v9;
  v17 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(v10 + 16);
    }
  }

  else if (v17)
  {
    v16 = v10;
  }

  v15[4] = v16;
  swift_beginAccess();
  v15[5] = v13;
  v30 = v14;
  v31 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v27 = v15;
  v19 = sub_10003B994(&v27);
  v21 = v20;
  v23 = v22;
  v24 = HIDWORD(v19);
  v25 = v19 >> 16;
  v26 = v19;
  result = sub_1000124C8(v10, v9);
  *a3 = v26;
  *(a3 + 2) = v25;
  *(a3 + 4) = v24;
  *(a3 + 8) = v21;
  *(a3 + 16) = v23;
  return result;
}

uint64_t sub_10022C080@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  v7 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v9 = v21;
  v10 = v22;
  v11 = sub_10003CB60(v20);
  if (v11 <= 4)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        v12 = 48;
      }

      else
      {
        v12 = 45;
      }
    }

    else if (v11 == 2)
    {
      v12 = 61;
    }

    else if (v11 == 3)
    {
      v12 = 140;
    }

    else
    {
      v12 = 191;
    }
  }

  else if (v11 > 7)
  {
    if (v11 == 8)
    {
      v12 = 255;
    }

    else
    {
      if (v11 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v18 = xmmword_10047CE70;
        *(v18 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v9, v10);
      }

      v12 = 76;
    }
  }

  else if (v11 == 5)
  {
    v12 = 192;
  }

  else if (v11 == 6)
  {
    v12 = 221;
  }

  else
  {
    v12 = 244;
  }

  if (v12 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v21, v22);
  v13 = sub_100033AA8(_swiftEmptyArrayStorage);
  v14 = type metadata accessor for BinaryDecoder();
  v15 = swift_allocObject();
  v16 = 0;
  v15[5] = &_swiftEmptyDictionarySingleton;
  v15[2] = v9;
  v15[3] = v10;
  v17 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(v9 + 16);
    }
  }

  else if (v17)
  {
    v16 = v9;
  }

  v15[4] = v16;
  swift_beginAccess();
  v15[5] = v13;
  v23 = v14;
  v24 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v20 = v15;
  sub_10022F614(&v20, v25);
  result = sub_1000124C8(v9, v10);
  v19 = v25[1];
  *a3 = v25[0];
  *(a3 + 16) = v19;
  *(a3 + 32) = v26;
  return result;
}

uint64_t sub_10022C384(uint64_t a1, char a2)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  v5 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (!v2)
  {
    v7 = sub_10003CB60(v10);
    if (v7 <= 4)
    {
      if (v7 <= 1)
      {
        if (v7)
        {
          v8 = 48;
        }

        else
        {
          v8 = 45;
        }
      }

      else if (v7 == 2)
      {
        v8 = 61;
      }

      else if (v7 == 3)
      {
        v8 = 140;
      }

      else
      {
        v8 = 191;
      }
    }

    else if (v7 > 7)
    {
      if (v7 == 8)
      {
        v8 = 255;
      }

      else
      {
        if (v7 != 9)
        {
LABEL_24:
          sub_10000B02C();
          swift_allocError();
          *v9 = xmmword_10047CE70;
          *(v9 + 16) = 2;
          swift_willThrow();
          return sub_1000124C8(v11, v12);
        }

        v8 = 76;
      }
    }

    else if (v7 == 5)
    {
      v8 = 192;
    }

    else if (v7 == 6)
    {
      v8 = 221;
    }

    else
    {
      v8 = 244;
    }

    if (v8 == byte_10049EDDA[a2])
    {
      sub_10000AB0C(v11, v12);
      sub_100033AA8(_swiftEmptyArrayStorage);
      sub_1000124C8(v11, v12);
      sub_1000124C8(v11, v12);
    }

    goto LABEL_24;
  }

  return result;
}

uint64_t sub_10022C5B8@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  v7 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v10 = v23;
  v9 = v24;
  v11 = sub_10003CB60(v22);
  if (v11 <= 4)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        v12 = 48;
      }

      else
      {
        v12 = 45;
      }
    }

    else if (v11 == 2)
    {
      v12 = 61;
    }

    else if (v11 == 3)
    {
      v12 = 140;
    }

    else
    {
      v12 = 191;
    }
  }

  else if (v11 > 7)
  {
    if (v11 == 8)
    {
      v12 = 255;
    }

    else
    {
      if (v11 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v18 = xmmword_10047CE70;
        *(v18 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v10, v9);
      }

      v12 = 76;
    }
  }

  else if (v11 == 5)
  {
    v12 = 192;
  }

  else if (v11 == 6)
  {
    v12 = 221;
  }

  else
  {
    v12 = 244;
  }

  if (v12 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v23, v24);
  v13 = sub_100033AA8(_swiftEmptyArrayStorage);
  v14 = type metadata accessor for BinaryDecoder();
  v15 = swift_allocObject();
  v16 = 0;
  v15[5] = &_swiftEmptyDictionarySingleton;
  v15[2] = v10;
  v15[3] = v9;
  v17 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(v10 + 16);
    }
  }

  else if (v17)
  {
    v16 = v10;
  }

  v15[4] = v16;
  swift_beginAccess();
  v15[5] = v13;
  v25 = v14;
  v26 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v22 = v15;
  v19 = sub_10022ECCC(&v22, &qword_100591FB0, &qword_10049ED88, sub_1002302D4);
  v21 = v20;
  result = sub_1000124C8(v10, v9);
  *a3 = v19;
  a3[1] = v21;
  return result;
}

uint64_t sub_10022C8E0@<X0>(uint64_t a1@<X0>, char a2@<W1>, void *a3@<X8>)
{
  sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
  swift_beginAccess();
  v7 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_10000CADC(&qword_100592000, &qword_10058CCE0, &unk_1004ABB80);
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  result = swift_endAccess();
  if (v3)
  {
    return result;
  }

  v10 = v23;
  v9 = v24;
  v11 = sub_10003CB60(v22);
  if (v11 <= 4)
  {
    if (v11 <= 1)
    {
      if (v11)
      {
        v12 = 48;
      }

      else
      {
        v12 = 45;
      }
    }

    else if (v11 == 2)
    {
      v12 = 61;
    }

    else if (v11 == 3)
    {
      v12 = 140;
    }

    else
    {
      v12 = 191;
    }
  }

  else if (v11 > 7)
  {
    if (v11 == 8)
    {
      v12 = 255;
    }

    else
    {
      if (v11 != 9)
      {
LABEL_26:
        sub_10000B02C();
        swift_allocError();
        *v18 = xmmword_10047CE70;
        *(v18 + 16) = 2;
        swift_willThrow();
        return sub_1000124C8(v10, v9);
      }

      v12 = 76;
    }
  }

  else if (v11 == 5)
  {
    v12 = 192;
  }

  else if (v11 == 6)
  {
    v12 = 221;
  }

  else
  {
    v12 = 244;
  }

  if (v12 != byte_10049EDDA[a2])
  {
    goto LABEL_26;
  }

  sub_10000AB0C(v23, v24);
  v13 = sub_100033AA8(_swiftEmptyArrayStorage);
  v14 = type metadata accessor for BinaryDecoder();
  v15 = swift_allocObject();
  v16 = 0;
  v15[5] = &_swiftEmptyDictionarySingleton;
  v15[2] = v10;
  v15[3] = v9;
  v17 = v9 >> 62;
  if ((v9 >> 62) > 1)
  {
    if (v17 == 2)
    {
      v16 = *(v10 + 16);
    }
  }

  else if (v17)
  {
    v16 = v10;
  }

  v15[4] = v16;
  swift_beginAccess();
  v15[5] = v13;
  v25 = v14;
  v26 = sub_10003CE48(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
  v22 = v15;
  v19 = sub_10022EB58(&v22);
  v21 = v20;
  result = sub_1000124C8(v10, v9);
  *a3 = v19;
  a3[1] = v21;
  return result;
}

uint64_t IEEE80211InformationElement.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = *(v2 + 16);
  v83.i64[0] = *(v2 + 8);
  v81.i64[0] = v4;
  v5 = sub_10005DC58(&qword_100591CC8, &qword_10049C4E0);
  v79 = *(v5 - 8);
  v6 = *(v79 + 64);
  __chkstk_darwin();
  v8 = &v78 - v7;
  v9 = sub_10005DC58(&qword_100591D28, &unk_10049C500);
  v80.i64[0] = *(v9 - 8);
  v10 = *(v80.i64[0] + 64);
  __chkstk_darwin();
  v12 = &v78 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v14 = sub_100033AA8(_swiftEmptyArrayStorage);
  v15 = type metadata accessor for BinaryEncoder();
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_100480A90;
  v82 = v16 + 16;
  v17 = *v2;
  v18 = vdupq_n_s64(*v2);
  v19 = vshlq_u64(v18, xmmword_100484210);
  v20 = v16;
  *(v16 + 32) = v14;
  v21 = vshlq_u64(v18, xmmword_100484220);
  v84 = v2;
  v22 = *(v2 + 56);
  if (v22 > 5)
  {
    if (*(v2 + 56) <= 8u)
    {
      v29 = v16;
      if (v22 == 6)
      {
        v103 = v17 & 0xFFFF000000000000 | ((v19.u8[0] | (v21.u8[0] << 8)) << 32) | v17 | ((v19.u8[8] | (v21.u8[8] << 8)) << 16);
        v104 = v83.i64[0];
        v105 = v81.i64[0];
        v45 = *(v84 + 40);
        v106 = *(v84 + 24);
        v107 = v45;
        v90 = v15;
        v91 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
        v89[0] = v20;

        v46 = v108;
        IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.encode(to:)(v89);
        v23 = v46;
        if (!v46)
        {
          goto LABEL_28;
        }
      }

      else
      {
        v30 = v108;
        if (v22 == 7)
        {
          v31 = vshlq_n_s64(v21, 8uLL);
          v32.i64[0] = 255;
          v32.i64[1] = 255;
          v33 = vandq_s8(v19, v32);
          v34.i64[0] = 65280;
          v34.i64[1] = 65280;
          v35 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(v31, v34), v33), xmmword_100484240), vandq_s8(v18, xmmword_100484230));
          v36 = vorrq_s8(v35, vdupq_laneq_s64(v35, 1)).u64[0];
          v90 = v15;
          v91 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
          v89[0] = v20;

          IEEE80211InformationElement.MessageIntegrityCode.encode(to:)(v89, v36, v83.u64[0]);
          v23 = v30;
          if (!v30)
          {
            goto LABEL_28;
          }
        }

        else
        {
          v80 = v21;
          v81 = v19;
          v56 = v19.u8[8];
          v83.i64[0] = v17;
          v90 = &type metadata for BinaryEncoder.UnkeyedContainer;
          v57 = sub_1000D12E4();
          v91 = v57;
          v89[0] = v20;
          sub_100031694(v89, &type metadata for BinaryEncoder.UnkeyedContainer);

          dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
          if (!v30)
          {
            sub_100031694(v89, v90);
            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            sub_100031694(v89, v90);
            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            v23 = 0;
            sub_100002A00(v89);
            v90 = &type metadata for BinaryEncoder.UnkeyedContainer;
            v91 = v57;
            v89[0] = v29;
            sub_100031694(v89, &type metadata for BinaryEncoder.UnkeyedContainer);

            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            v85 = v83.i64[0] & 0xFFFF000000000000 | ((v81.u8[0] | (v80.u8[0] << 8)) << 32) | v83.u16[0] | ((v56 | (v80.u8[8] << 8)) << 16);
            sub_100031694(v89, v90);
            sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
            sub_1002304FC();
            dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
            goto LABEL_28;
          }
        }
      }

LABEL_33:

      sub_100002A00(v89);
      return sub_100002A00(v92);
    }

    v29 = v16;
    if (v22 == 9)
    {
      v90 = &type metadata for BinaryEncoder.UnkeyedContainer;
      v91 = sub_1000D12E4();
      v89[0] = v20;
      sub_100031694(v89, &type metadata for BinaryEncoder.UnkeyedContainer);

      v47 = v108;
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      v23 = v47;
      if (!v47)
      {
        sub_100031694(v89, v90);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        sub_100031694(v89, v90);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        sub_100002A00(v89);
        swift_beginAccess();
        v87 = &type metadata for Data;
        v88 = &protocol witness table for Data;
        v48 = v83.i64[0];
        v49 = v81.i64[0];
        v85 = v83.i64[0];
        v86 = v81.i64[0];
        v50 = sub_100029B34(&v85, &type metadata for Data);
        v51 = *v50;
        v52 = v50[1];
        sub_10000AB0C(v48, v49);
        sub_100178A18(v51, v52);
        sub_100002A00(&v85);
        swift_endAccess();
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    if (v22 != 10)
    {
      v89[0] = v16;

      sub_10005DC58(&qword_100591DB0, &qword_10049C540);
      sub_10000CADC(&qword_100591DB8, &qword_100591DB0, &qword_10049C540);
      KeyedEncodingContainer.init<A>(_:)();
      (*(v79 + 8))(v8, v5);
      v23 = v108;
      goto LABEL_36;
    }

    v38 = vshlq_n_s64(v21, 8uLL);
    v39.i64[0] = 255;
    v39.i64[1] = 255;
    v40 = vandq_s8(v19, v39);
    v41.i64[0] = 65280;
    v41.i64[1] = 65280;
    v42 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(v38, v41), v40), xmmword_100484240), vandq_s8(v18, xmmword_100484230));
    v43 = vorrq_s8(v42, vdupq_laneq_s64(v42, 1)).u64[0];
    v90 = v15;
    v91 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v89[0] = v20;

    v44 = v108;
    IEEE80211InformationElement.ManagementMIC.encode(to:)(v89, v43, v83.u64[0]);
LABEL_32:
    v23 = v44;
    if (!v44)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (*(v2 + 56) > 2u)
  {
    v37 = v108;
    if (v22 == 3)
    {
      v99 = v17 & 0xFFFF000000000000 | ((v19.u8[0] | (v21.u8[0] << 8)) << 32) | v17 | ((v19.u8[8] | (v21.u8[8] << 8)) << 16);
      v100 = v83.i64[0];
      v101 = v81.i64[0];
      v102 = *(v84 + 24);
      v90 = v15;
      v91 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v29 = v20;
      v89[0] = v20;

      IEEE80211InformationElement.HighThroughputOperation.encode(to:)(v89);
      v23 = v37;
      if (!v37)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    v29 = v16;
    if (v22 == 4)
    {
      v90 = v15;
      v80 = v21;
      v81 = v19;
      v91 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
      v89[0] = v20;

      IEEE80211InformationElement.VeryHighThroughputCapability.encode(to:)(v89);
      v23 = v37;
      if (!v37)
      {
        goto LABEL_28;
      }

      goto LABEL_33;
    }

    v58 = vshlq_n_s64(v21, 8uLL);
    v59.i64[0] = 255;
    v59.i64[1] = 255;
    v60 = vandq_s8(v19, v59);
    v61.i64[0] = 65280;
    v61.i64[1] = 65280;
    v62 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(v58, v61), v60), xmmword_100484240), vandq_s8(v18, xmmword_100484230));
    v63 = vorrq_s8(v62, vdupq_laneq_s64(v62, 1)).u64[0];
    v90 = v15;
    v91 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v89[0] = v20;

    v44 = v37;
    IEEE80211InformationElement.WrappedData.encode(to:)(v89, v63, v83.u64[0]);
    goto LABEL_32;
  }

  v23 = v108;
  if (!*(v2 + 56))
  {
    v94 = v17 & 0xFFFF000000000000 | ((v19.u8[0] | (v21.u8[0] << 8)) << 32) | v17 | ((v19.u8[8] | (v21.u8[8] << 8)) << 16);
    v95 = v83.i64[0];
    v96 = v81.i64[0];
    v97 = *(v84 + 24);
    v98 = *(v84 + 40);
    v90 = v15;
    v91 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v29 = v20;
    v89[0] = v20;

    IEEE80211InformationElement.RSNCapability.encode(to:)(v89);
    if (!v23)
    {
      goto LABEL_28;
    }

    goto LABEL_33;
  }

  if (v22 != 1)
  {
    v53 = v21.u8[8];
    v54 = v19.u8[8];
    v90 = v15;
    v55 = v17;
    v91 = sub_10003CE48(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
    v29 = v20;
    v89[0] = v20;

    IEEE80211InformationElement.HighThroughputCapability.encode(to:)(v89, v55 & 0xFF0000FFFFLL | ((v54 & 0xFFFFFFFFFFFF00FFLL | (v53 << 8)) << 16), v83.i64[0], v81.u64[0]);
    if (!v23)
    {
LABEL_28:
      sub_100002A00(v89);
      goto LABEL_36;
    }

    goto LABEL_33;
  }

  v24 = vshlq_n_s64(v21, 8uLL);
  v25.i64[0] = 255;
  v25.i64[1] = 255;
  v26 = vandq_s8(v19, v25);
  v27.i64[0] = 65280;
  v27.i64[1] = 65280;
  v28 = vorrq_s8(vshlq_u64(vorrq_s8(vandq_s8(v24, v27), v26), xmmword_100484240), vandq_s8(v18, xmmword_100484230));
  v83 = vorrq_s8(v28, vdupq_laneq_s64(v28, 1));
  v89[0] = v16;

  sub_10005DC58(&qword_100591DC0, &unk_10049C548);
  sub_10000CADC(&qword_100591DC8, &qword_100591DC0, &unk_10049C548);
  KeyedEncodingContainer.init<A>(_:)();
  v89[0] = v83.i64[0];
  sub_10005DC58(&qword_10058D358, &unk_100486960);
  sub_100230084();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v23)
  {
    (*(v80.i64[0] + 8))(v12, v9);
LABEL_50:

    return sub_100002A00(v92);
  }

  (*(v80.i64[0] + 8))(v12, v9);
  v29 = v20;
LABEL_36:
  v64 = sub_10022B714();
  result = swift_beginAccess();
  v66 = *(v29 + 16);
  v67 = *(v29 + 24);
  v68 = v67 >> 62;
  if ((v67 >> 62) > 1)
  {
    v69 = 0;
    if (v68 != 2 || (v71 = v66 + 16, v66 = *(v66 + 16), v70 = *(v71 + 8), v72 = __OFSUB__(v70, v66), v69 = v70 - v66, !v72))
    {
LABEL_45:
      v74 = HIBYTE(v64) != 2;
      v75 = v69 + v74;
      if (__OFADD__(v69, v74))
      {
        __break(1u);
      }

      else
      {
        LOBYTE(v85) = v64;
        sub_100031694(v92, v93);
        sub_1002303D0();
        result = dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        if (v23)
        {
          goto LABEL_50;
        }

        if ((v75 & 0x8000000000000000) == 0)
        {
          if (v75 <= 0xFF)
          {
            sub_100031694(v92, v93);
            dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
            LOBYTE(v85) = HIBYTE(v64);
            sub_100031694(v92, v93);
            sub_10005DC58(&qword_100591D98, &unk_10049C530);
            sub_100230424();
            dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
            v77 = *(v29 + 24);
            v85 = *(v29 + 16);
            v76 = v85;
            v86 = v77;
            sub_100031694(v92, v93);
            sub_10000AB0C(v76, v77);
            sub_1000B8088();
            dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
            sub_1000124C8(v85, v86);
            goto LABEL_50;
          }

          goto LABEL_55;
        }
      }

      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    __break(1u);
  }

  else if (!v68)
  {
    v69 = BYTE6(v67);
    goto LABEL_45;
  }

  v72 = __OFSUB__(HIDWORD(v66), v66);
  v73 = HIDWORD(v66) - v66;
  if (!v72)
  {
    v69 = v73;
    goto LABEL_45;
  }

LABEL_56:
  __break(1u);
  return result;
}

void IEEE80211InformationElement.hash(into:)(__int128 *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = v1[5];
  v9 = *(v1 + 3);
  v10 = *(v1 + 1);
  v11 = *(v1 + 2);
  v13 = *(v1 + 3);
  v12 = *(v1 + 4);
  v14 = v1[40];
  v15 = v1[56];
  if (v15 <= 5)
  {
    if (v1[56] <= 2u)
    {
      if (!v1[56])
      {
        v41 = *(v1 + 1);
        v43 = *(v1 + 2);
        v45 = *(v1 + 3);
        v47 = *(v1 + 4);
        v49 = v1[40];
        Hasher._combine(_:)(0);
        IEEE80211InformationElement.RSNCapability.hash(into:)();
        return;
      }

      if (v15 == 1)
      {
        v16 = *(v1 + 3);
        Hasher._combine(_:)(1uLL);
        v17 = v3 | (v4 << 8) | (v5 << 16) | (v6 << 24) | (v7 << 32) | (v8 << 40) | (v16 << 48);
        v18 = *(v17 + 0x10);
        Hasher._combine(_:)(v18);
        if (v18)
        {
          v19 = (v17 + 32);
          do
          {
            v20 = *v19++;
            Hasher._combine(_:)(v20);
            --v18;
          }

          while (v18);
        }

        return;
      }

      v33 = v3 | (v4 << 8);
      v34 = *(v1 + 1);
      v35 = *(v1 + 2);
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v33);
      Hasher._combine(_:)(v5 | (v6 << 8));
      Hasher._combine(_:)(v7);
      goto LABEL_30;
    }

    if (v15 == 3)
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(v3);
      Data.hash(into:)();
LABEL_30:

      Data.hash(into:)();
      return;
    }

    v24 = *(v1 + 3);
    v25 = *(v1 + 1);
    if (v15 == 4)
    {
      Hasher._combine(_:)(4uLL);
      Hasher._combine(_:)(v3 | (v4 << 8) | (v5 << 16) | (v6 << 24));
      Hasher._combine(_:)(v7 | (v8 << 8));
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v25);
      Hasher._combine(_:)(WORD1(v25));
      return;
    }

    v22 = 6;
LABEL_29:
    Hasher._combine(_:)(v22);
    goto LABEL_30;
  }

  if (v1[56] > 8u)
  {
    if (v15 == 9)
    {
      v27 = *(v1 + 1);
      v28 = *(v1 + 2);
      Hasher._combine(_:)(0xAuLL);
      sub_10005DC58(&qword_10058B3C0, &qword_100481920);
      v29 = swift_allocObject();
      *(v29 + 16) = xmmword_100480F30;
      *(v29 + 32) = v3;
      *(v29 + 33) = v4;
      *(v29 + 34) = v5;
      v30 = sub_10002D874(v29);
      v32 = v31;

      Data.hash(into:)();
      sub_1000124C8(v30, v32);
    }

    else
    {
      if (v15 != 10)
      {
        Hasher._combine(_:)(5uLL);
        return;
      }

      v26 = *(v1 + 1);
      Hasher._combine(_:)(0xBuLL);
    }

    goto LABEL_30;
  }

  if (v15 == 6)
  {
    v42 = *(v1 + 1);
    v44 = *(v1 + 2);
    v46 = *(v1 + 3);
    v48 = *(v1 + 4);
    v50 = v1[40];
    *&v51 = *(v1 + 41);
    *(&v51 + 7) = *(v1 + 6);
    Hasher._combine(_:)(7uLL);
    IEEE80211InformationElement.PreAssociationSecurityNegotiationParameters.hash(into:)();
    return;
  }

  v21 = *(v1 + 3);
  if (v15 == 7)
  {
    v22 = 8;
    v23 = *(v1 + 1);
    goto LABEL_29;
  }

  Hasher._combine(_:)(9uLL);
  v36 = v3 | (v4 << 8) | (v5 << 16) | (v6 << 24) | (v7 << 32) | (v8 << 40) | (v21 << 48);
  v37 = *(v36 + 0x10);
  Hasher._combine(_:)(v37);
  if (v37)
  {
    v38 = *(type metadata accessor for NANAttribute(0) - 8);
    v39 = v36 + ((*(v38 + 80) + 32) & ~*(v38 + 80));
    v40 = *(v38 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v39 += v40;
      --v37;
    }

    while (v37);
  }
}

Swift::Int IEEE80211InformationElement.hashValue.getter()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10022DF04()
{
  Hasher.init(_seed:)();
  IEEE80211InformationElement.hash(into:)(v1);
  return Hasher._finalize()();
}

double sub_10022DF40@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  result = IEEE80211InformationElement.init(from:)(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    a2[2] = v7[0];
    result = *(v7 + 9);
    *(a2 + 41) = *(v7 + 9);
  }

  return result;
}

uint64_t sub_10022DF8C(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  *v5 = v1[2];
  *&v5[9] = *(v1 + 41);
  return IEEE80211InformationElement.encode(to:)(a1);
}

uint64_t sub_10022DFD0(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  v5[0] = *a1;
  v5[1] = v2;
  v6[0] = a1[2];
  *(v6 + 9) = *(a1 + 41);
  v3 = a2[1];
  v7[0] = *a2;
  v7[1] = v3;
  v8[0] = a2[2];
  *(v8 + 9) = *(a2 + 41);
  return static IEEE80211InformationElement.__derived_enum_equals(_:_:)(v5, v7) & 1;
}

BOOL _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v28 = v2;
  v29 = v3;
  v26 = *(a1 + 8);
  v4 = *(a1 + 3);
  v27 = v4;
  v24 = *(a2 + 8);
  v5 = *(a2 + 3);
  v25 = v5;
  v6 = v26;
  v7 = v24;
  if (v4 >> 60 == 15)
  {
    if (v5 >> 60 == 15)
    {
      v8 = a1;
      v9 = a2;
      sub_100012400(&v26, v22, &qword_10058DF78, &unk_100488530);
      sub_100012400(&v24, v22, &qword_10058DF78, &unk_100488530);
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  if (v5 >> 60 == 15)
  {
LABEL_10:
    sub_100012400(&v26, v22, &qword_10058DF78, &unk_100488530);
    sub_100012400(&v24, v22, &qword_10058DF78, &unk_100488530);
    sub_10002F75C(v6, *(&v6 + 1), v4);
    v14 = *(&v7 + 1);
    v13 = v7;
    v15 = v5;
LABEL_21:
    sub_10002F75C(v13, v14, v15);
    return 0;
  }

  if (v26 != v24)
  {
    sub_100012400(&v26, v22, &qword_10058DF78, &unk_100488530);
    sub_100012400(&v24, v22, &qword_10058DF78, &unk_100488530);
    sub_10002F75C(v7, *(&v7 + 1), v5);
LABEL_20:
    v14 = *(&v6 + 1);
    v13 = v6;
    v15 = v4;
    goto LABEL_21;
  }

  v8 = a1;
  v9 = a2;
  sub_100012400(&v26, v22, &qword_10058DF78, &unk_100488530);
  sub_100012400(&v24, v22, &qword_10058DF78, &unk_100488530);
  v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(&v6 + 1), v4, *(&v7 + 1), v5);
  sub_10002F75C(v7, *(&v7 + 1), v5);
  if ((v16 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_5:
  sub_10002F75C(v6, *(&v6 + 1), v4);
  v10 = v8[32];
  v11 = v9[32];
  if (v10 == 2)
  {
    if (v11 != 2)
    {
      return 0;
    }
  }

  else if (v11 == 2 || ((v11 ^ v10) & 1) != 0)
  {
    return 0;
  }

  v17 = v9[34];
  if (v8[34])
  {
    if (!v9[34])
    {
      return 0;
    }
  }

  else
  {
    if (v8[33] != v9[33])
    {
      v17 = 1;
    }

    if (v17)
    {
      return 0;
    }
  }

  v22[0] = *(v8 + 40);
  v23 = *(v9 + 40);
  v18 = v22[0];
  v19 = v23;
  if (*(&v22[0] + 1) >> 60 != 15)
  {
    if (*(&v23 + 1) >> 60 == 15)
    {
      goto LABEL_30;
    }

    sub_100012400(v22, v21, &unk_10059AB80, &qword_10049ED90);
    sub_100012400(&v23, v21, &unk_10059AB80, &qword_10049ED90);
    v20 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v18, *(&v18 + 1), v19, *(&v19 + 1));
    sub_100017554(v19, *(&v19 + 1));
    sub_100017554(v18, *(&v18 + 1));
    return (v20 & 1) != 0;
  }

  if (*(&v23 + 1) >> 60 != 15)
  {
LABEL_30:
    sub_100012400(v22, v21, &unk_10059AB80, &qword_10049ED90);
    sub_100012400(&v23, v21, &unk_10059AB80, &qword_10049ED90);
    sub_100017554(v18, *(&v18 + 1));
    sub_100017554(v19, *(&v19 + 1));
    return 0;
  }

  sub_100012400(v22, v21, &unk_10059AB80, &qword_10049ED90);
  sub_100012400(&v23, v21, &unk_10059AB80, &qword_10049ED90);
  sub_100017554(v18, *(&v18 + 1));
  return 1;
}

unsigned __int16 *_s7CoreP2P27IEEE80211InformationElementO13RSNCapabilityV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int16 *result, unsigned __int16 *a2)
{
  if (*result != *a2)
  {
    return 0;
  }

  if (byte_10049EDE4[*(result + 2)] != byte_10049EDE4[*(a2 + 2)])
  {
    return 0;
  }

  v2 = *(result + 1);
  v3 = *(a2 + 1);
  v4 = *(v2 + 16);
  if (v4 != *(v3 + 16))
  {
    return 0;
  }

  if (v4)
  {
    v5 = v2 == v3;
  }

  else
  {
    v5 = 1;
  }

  if (v5)
  {
LABEL_12:
    v8 = result;
    if (sub_1000C2E80(*(result + 2), *(a2 + 2)) & 1) != 0 && v8[12] == a2[12] && (_s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(*(v8 + 4), *(a2 + 4)))
    {
      return (byte_10049EDE4[*(v8 + 40)] == byte_10049EDE4[*(a2 + 40)]);
    }

    return 0;
  }

  v6 = (v2 + 32);
  v7 = (v3 + 32);
  while (v4)
  {
    if (byte_10049EDE4[*v6] != byte_10049EDE4[*v7])
    {
      return 0;
    }

    ++v6;
    ++v7;
    if (!--v4)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P27IEEE80211InformationElementO21__derived_enum_equalsySbAC_ACtFZ_0(uint64_t result, unsigned __int8 *a2)
{
  v2 = *result;
  v3 = *(result + 1);
  v4 = *(result + 2);
  v5 = *(result + 2);
  v6 = *(result + 3) | (*(result + 7) << 32);
  v7 = *(result + 8);
  v8 = *(result + 16);
  v10 = *(result + 24);
  v9 = *(result + 32);
  v11 = *(result + 40);
  v12 = *(result + 56);
  if (v12 > 5)
  {
    if (*(result + 56) > 8u)
    {
      if (v12 == 9)
      {
        if (a2[56] != 9)
        {
          goto LABEL_85;
        }

        v38 = *(result + 8);
        v39 = *(a2 + 2);
        v58 = *(a2 + 1);
        v40 = a2[2];
        v41 = *a2;
        sub_10005DC58(&qword_10058B3C0, &qword_100481920);
        v42 = swift_allocObject();
        *(v42 + 16) = xmmword_100480F30;
        *(v42 + 32) = v2;
        *(v42 + 33) = v3;
        *(v42 + 34) = v4;
        v43 = sub_10002D874(v42);
        v45 = v44;

        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_100480F30;
        *(v46 + 32) = v41;
        *(v46 + 34) = v40;
        v47 = sub_10002D874(v46);
        v49 = v48;

        v50 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v43, v45, v47, v49);
        sub_1000124C8(v47, v49);
        sub_1000124C8(v43, v45);
        if ((v50 & 1) == 0)
        {
          goto LABEL_85;
        }

        v51 = v38;
        v52 = v8;
        v53 = v58;
        v54 = v39;
LABEL_77:

        return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v51, v52, v53, v54);
      }

      if (v12 != 10)
      {
        if (a2[56] != 11)
        {
          goto LABEL_85;
        }

        v57 = vorrq_s8(*(a2 + 24), *(a2 + 40));
        v27 = (*&vorr_s8(*v57.i8, *&vextq_s8(v57, v57, 8uLL)) | *(a2 + 2) | *(a2 + 1) | *a2) == 0;
        goto LABEL_82;
      }

      if (a2[56] != 10)
      {
        goto LABEL_85;
      }
    }

    else
    {
      if (v12 == 6)
      {
        v61[0] = *result;
        v61[1] = v3;
        v61[2] = v4;
        v62 = v6;
        v63 = BYTE4(v6);
        v64 = v7;
        v65 = v8;
        v66 = v10;
        v67 = v9;
        v68 = v11;
        *v69 = *(result + 41);
        *&v69[7] = *(result + 48);
        if (a2[56] == 6)
        {
          v35 = *(a2 + 1);
          v59[0] = *a2;
          v59[1] = v35;
          v59[2] = *(a2 + 2);
          v60 = *(a2 + 6);
          LOBYTE(result) = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV23__derived_struct_equalsySbAE_AEtFZ_0(v61, v59);
          return result & 1;
        }

        goto LABEL_85;
      }

      if (v12 != 7)
      {
        if (a2[56] == 8)
        {
          v56 = *a2;

          return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v2 | (v3 << 8) | (v5 << 16) | (v6 << 24), v56);
        }

        goto LABEL_85;
      }

      if (a2[56] != 7)
      {
LABEL_85:
        LOBYTE(result) = 0;
        return result & 1;
      }
    }

LABEL_76:
    v53 = *a2;
    v54 = *(a2 + 1);
    v51 = v2 | (v3 << 8) | (v5 << 16) | (v6 << 24);
    v52 = v7;
    goto LABEL_77;
  }

  if (*(result + 56) > 2u)
  {
    if (v12 == 3)
    {
      if (a2[56] == 3 && v2 == *a2)
      {
        v36 = *(a2 + 3);
        v37 = *(a2 + 4);
        if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(result + 8), v8, *(a2 + 1), *(a2 + 2)) & 1) != 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v10, v9, v36, v37))
        {
          goto LABEL_70;
        }
      }

      goto LABEL_85;
    }

    if (v12 == 4)
    {
      if (a2[56] != 4)
      {
        goto LABEL_85;
      }

      *(result + 7);
      if (((v4 << 16) | (*(result + 3) << 24) | (v3 << 8) | v2) == *a2)
      {
        *(result + 7);
        v22 = *(a2 + 2) == (*(result + 3) >> 8);
      }

      else
      {
        v22 = 0;
      }

      v23 = (v6 >> 24);
      v25 = v22 && v23 == *(a2 + 3) && *(a2 + 4) == *(result + 8);
      v26 = WORD1(v7);
      v27 = v25 && *(a2 + 5) == v26;
LABEL_82:
      LOBYTE(result) = v27;
      return result & 1;
    }

    if (a2[56] != 5)
    {
      goto LABEL_85;
    }

    goto LABEL_76;
  }

  if (!*(result + 56))
  {
    if (!a2[56] && (v2 | (v3 << 8)) == *a2 && byte_10049EDE4[*(result + 2)] == byte_10049EDE4[a2[2]])
    {
      v28 = *(a2 + 1);
      v29 = *(v7 + 16);
      if (v29 == *(v28 + 16))
      {
        v30 = *(a2 + 12);
        v31 = *(a2 + 4);
        v32 = a2[40];
        if (!v29 || v28 == v7)
        {
LABEL_50:
          if ((sub_1000C2E80(*(result + 16), *(a2 + 2)) & 1) != 0 && v30 == v10 && (_s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(v9, v31) & 1) != 0 && byte_10049EDE4[v11] == byte_10049EDE4[v32])
          {
            goto LABEL_70;
          }
        }

        else
        {
          v33 = (v7 + 32);
          v34 = (v28 + 32);
          while (byte_10049EDE4[*v33] == byte_10049EDE4[*v34])
          {
            ++v33;
            ++v34;
            if (!--v29)
            {
              goto LABEL_50;
            }
          }
        }
      }
    }

    goto LABEL_85;
  }

  if (v12 != 1)
  {
    if (a2[56] == 2)
    {
      v55 = *a2;
      if ((v2 | (v3 << 8)) == *a2)
      {
        *(result + 7);
        if ((v4 | (*(result + 3) << 8)) == WORD1(v55))
        {
          *(result + 7);
          if (BYTE1(*(result + 3)) == BYTE4(v55) && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(result + 8), v8, *(a2 + 1), *(a2 + 2)) & 1) != 0)
          {
            goto LABEL_70;
          }
        }
      }
    }

    goto LABEL_85;
  }

  if (a2[56] != 1)
  {
    goto LABEL_85;
  }

  v13 = *a2;
  v14 = v2 | (v3 << 8) | (v5 << 16) | (v6 << 24);
  v15 = *(v14 + 16);
  if (v15 != *(*a2 + 16))
  {
    goto LABEL_85;
  }

  if (!v15 || v13 == v14)
  {
LABEL_70:
    LOBYTE(result) = 1;
    return result & 1;
  }

  v16 = (v14 + 32);
  v17 = (v13 + 32);
  while (v15)
  {
    v19 = *v16++;
    v18 = v19;
    v20 = *v17++;
    result = v18 == v20;
    if (v18 != v20 || v15-- == 1)
    {
      return result & 1;
    }
  }

  __break(1u);
  __break(1u);
  return result;
}

uint64_t _s7CoreP2P27IEEE80211InformationElementO0C11CipherSuiteO8rawValueAESgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 > 0xDu)
  {
    return 13;
  }

  else
  {
    return byte_10049EDF1[a1];
  }
}

uint64_t _s7CoreP2P27IEEE80211InformationElementO32AuthenticationKeyManagementSuiteO8rawValueAESgs5UInt8V_tcfC_0(char a1)
{
  if ((a1 - 1) >= 0x19u)
  {
    return 25;
  }

  else
  {
    return (a1 - 1);
  }
}

unint64_t sub_10022EB04()
{
  result = qword_100591CA0;
  if (!qword_100591CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591CA0);
  }

  return result;
}

void *sub_10022EB58(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100591FF0, &qword_10049EDA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_10022EB04();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100039F68();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11;
    sub_100002A00(a1);
  }

  return v9;
}

void *sub_10022ECCC(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
{
  v7 = sub_10005DC58(a2, a3);
  v16 = *(v7 - 8);
  v8 = *(v16 + 64);
  __chkstk_darwin();
  v10 = &v15 - v9;
  v11 = a1[4];
  v12 = sub_100029B34(a1, a1[3]);
  a4();
  v13 = v12;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v4)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_1002323F0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v10, v7);
    v13 = v15;
    sub_100002A00(a1);
  }

  return v13;
}

uint64_t sub_10022EE50(uint64_t *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v8, v9);
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v3 = v7;
    sub_100031694(v8, v9);
    v4 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v5 = v9;
    sub_100031694(v8, v9);
    UnkeyedDecodingContainer.decodeData(with:)(v4, v5);
    sub_100002A00(v8);
  }

  sub_100002A00(a1);
  return v3;
}

uint64_t sub_10022EFA0(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    v4 = sub_100031694(v9, v10);
    sub_1000317F0();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    if (sub_1000319F0(v11 | (v12 << 16), 0xAC0F00u))
    {
      v4 = sub_100031694(v9, v10);
      v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v6 = _s7CoreP2P27IEEE80211InformationElementO32AuthenticationKeyManagementSuiteO8rawValueAESgs5UInt8V_tcfC_0(v5);
      if (v6 != 25)
      {
        v4 = v6;
        sub_100002A00(v9);
        sub_100002A00(a1);
        return v4;
      }
    }

    sub_10000B02C();
    swift_allocError();
    *v7 = xmmword_10047CE70;
    *(v7 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v9);
  }

  sub_100002A00(a1);
  return v4;
}

uint64_t sub_10022F110(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    v4 = sub_100031694(v9, v10);
    sub_1000317F0();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    if (sub_1000319F0(v11 | (v12 << 16), 0xAC0F00u))
    {
      v4 = sub_100031694(v9, v10);
      v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v6 = _s7CoreP2P27IEEE80211InformationElementO0C11CipherSuiteO8rawValueAESgs5UInt8V_tcfC_0(v5);
      if (v6 != 13)
      {
        v4 = v6;
        sub_100002A00(v9);
        sub_100002A00(a1);
        return v4;
      }
    }

    sub_10000B02C();
    swift_allocError();
    *v7 = xmmword_10047CE70;
    *(v7 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v9);
  }

  sub_100002A00(a1);
  return v4;
}

uint64_t sub_10022F280@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = 1;
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    sub_100002A00(a1);
    sub_10002F75C(0, 0, 0xF000000000000000);
    return sub_100017554(0, 0xF000000000000000);
  }

  sub_100031694(v37, v38);
  sub_100232444();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_100031694(v37, v38);
  v6 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if ((v6 & 0xFC) != 0)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  if (v28)
  {
    sub_100031694(v37, v38);
    sub_1002324C8();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v39 = v8;
    v10 = v28;
    v9 = v29;
    v11 = v30;
    sub_10002F75C(0, 0, 0xF000000000000000);
    if ((v28 & 2) == 0)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v39 = v8;
    v9 = 0;
    v10 = 0;
    v11 = 0xF000000000000000;
    if ((v28 & 2) == 0)
    {
LABEL_9:
      v12 = 0;
      v19 = 0xF000000000000000;
      v20 = 0;
      v13 = 2;
LABEL_10:
      v23 = v13;
      sub_100002A00(v37);
      LOBYTE(v24) = v39;
      *(&v24 + 1) = v10;
      *&v25 = v9;
      *(&v25 + 1) = v11;
      LOBYTE(v26) = v13;
      BYTE1(v26) = v12;
      v14 = v40;
      BYTE2(v26) = v40;
      *(&v26 + 1) = v20;
      v27 = v19;
      sub_100144054(&v24, &v28);
      sub_100002A00(a1);
      LOBYTE(v28) = v39;
      v29 = v10;
      v30 = v9;
      v31 = v11;
      v32 = v23;
      v33 = v12;
      v34 = v14;
      v35 = v20;
      v36 = v19;
      result = sub_100232498(&v28);
      v15 = v25;
      *a2 = v24;
      *(a2 + 16) = v15;
      *(a2 + 32) = v26;
      *(a2 + 48) = v27;
      return result;
    }
  }

  sub_100031694(v37, v38);
  sub_1001F7EC4();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_100031694(v37, v38);
  v21 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v37, v38);
  result = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v22 = result;
  v40 = 0;
  if (((v21 - 1) & 0xFFFFFF00) == 0)
  {
    v16 = v38;
    sub_100031694(v37, v38);
    v17 = UnkeyedDecodingContainer.decodeData(with:)((v21 - 1), v16);
    v13 = v28;
    v19 = v18;
    v20 = v17;
    sub_100017554(0, 0xF000000000000000);
    v12 = v22;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

uint64_t sub_10022F614@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v16, v17);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v17;
  sub_100031694(v16, v17);
  v7 = UnkeyedDecodingContainer.decodeData(with:)(5, v6);
  v9 = v8;
  v10 = v17;
  sub_100031694(v16, v17);
  v11 = UnkeyedDecodingContainer.decodeData(with:)(16, v10);
  v13 = v12;
  sub_100002A00(v16);
  sub_10000AB0C(v7, v9);
  sub_10000AB0C(v11, v13);
  sub_100002A00(a1);
  sub_1000124C8(v7, v9);
  result = sub_1000124C8(v11, v13);
  *a2 = v15;
  *(a2 + 8) = v7;
  *(a2 + 16) = v9;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  return result;
}

unint64_t sub_10022F7CC()
{
  result = qword_100591CB0;
  if (!qword_100591CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591CB0);
  }

  return result;
}

unint64_t sub_10022F820()
{
  result = qword_100591CD0;
  if (!qword_100591CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591CD0);
  }

  return result;
}

void *sub_10022F874(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    sub_100031694(v9, v9[3]);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_10005DC58(&qword_10058B3C0, &qword_100481920);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_100480F40;
    *(v6 + 32) = v5;
    v7 = sub_100226AE0(0, v5 & 0xF, v9);
    v10 = v6;
    sub_1002351C8(v7);
    v4 = v10;
    sub_100002A00(v9);
  }

  sub_100002A00(a1);
  return v4;
}

uint64_t sub_10022F9A0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v18, v19);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v21;
  sub_100031694(v18, v19);
  sub_10023251C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v7 = v21;
  sub_100031694(v18, v19);
  v8 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v9 = sub_100226C68(v8 << 16, v18, sub_1000C0534, sub_10023251C);
  v20 = v7;
  v10 = v9;
  sub_100031694(v18, v19);
  v11 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v17 = sub_100226C68(v11 << 16, v18, sub_1000C0504, sub_100232618);
  sub_100031694(v18, v19);
  sub_100232570();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v16 = v21;
  sub_100031694(v18, v19);
  v12 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v13 = sub_100226DFC(v12 << 16, v18);
  sub_100031694(v18, v19);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v14 = v21;
  sub_100002A00(v18);

  sub_100002A00(a1);

  *a2 = v6;
  *(a2 + 2) = v20;
  *(a2 + 8) = v10;
  *(a2 + 16) = v17;
  *(a2 + 24) = v16;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_10022FD54()
{
  result = qword_100591CD8;
  if (!qword_100591CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591CD8);
  }

  return result;
}

unint64_t sub_10022FDA8()
{
  result = qword_100591CE8;
  if (!qword_100591CE8)
  {
    sub_10005DD04(&qword_100591CE0, &qword_10049C4E8);
    sub_10022FD54();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591CE8);
  }

  return result;
}

unint64_t sub_10022FE2C()
{
  result = qword_100591CF8;
  if (!qword_100591CF8)
  {
    sub_10005DD04(&qword_100591CF0, &qword_10049C4F0);
    sub_10022FEB0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591CF8);
  }

  return result;
}

unint64_t sub_10022FEB0()
{
  result = qword_100591D00;
  if (!qword_100591D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D00);
  }

  return result;
}

unint64_t sub_10022FF04()
{
  result = qword_100591D08;
  if (!qword_100591D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D08);
  }

  return result;
}

unint64_t sub_10022FF58()
{
  result = qword_100591D18;
  if (!qword_100591D18)
  {
    sub_10005DD04(&qword_100591D10, &qword_10049C4F8);
    sub_10022FFDC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D18);
  }

  return result;
}

unint64_t sub_10022FFDC()
{
  result = qword_100591D20;
  if (!qword_100591D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D20);
  }

  return result;
}

unint64_t sub_100230030()
{
  result = qword_100591D30;
  if (!qword_100591D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D30);
  }

  return result;
}

unint64_t sub_100230084()
{
  result = qword_10058E320;
  if (!qword_10058E320)
  {
    sub_10005DD04(&qword_10058D358, &unk_100486960);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E320);
  }

  return result;
}

unint64_t sub_100230100()
{
  result = qword_100591D40;
  if (!qword_100591D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D40);
  }

  return result;
}

unint64_t sub_100230154()
{
  result = qword_100591D48;
  if (!qword_100591D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D48);
  }

  return result;
}

unint64_t sub_1002301A8()
{
  result = qword_100591D50;
  if (!qword_100591D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D50);
  }

  return result;
}

unint64_t sub_1002301FC()
{
  result = qword_100591D58;
  if (!qword_100591D58)
  {
    sub_10005DD04(&qword_10058DF78, &unk_100488530);
    sub_100230280();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D58);
  }

  return result;
}

unint64_t sub_100230280()
{
  result = qword_100591D60;
  if (!qword_100591D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D60);
  }

  return result;
}

unint64_t sub_1002302D4()
{
  result = qword_100591D70;
  if (!qword_100591D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D70);
  }

  return result;
}

unint64_t sub_100230328()
{
  result = qword_100591D78;
  if (!qword_100591D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D78);
  }

  return result;
}

unint64_t sub_10023037C()
{
  result = qword_100591D88;
  if (!qword_100591D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D88);
  }

  return result;
}

unint64_t sub_1002303D0()
{
  result = qword_100591D90;
  if (!qword_100591D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591D90);
  }

  return result;
}

unint64_t sub_100230424()
{
  result = qword_100591DA0;
  if (!qword_100591DA0)
  {
    sub_10005DD04(&qword_100591D98, &unk_10049C530);
    sub_1002304A8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591DA0);
  }

  return result;
}

unint64_t sub_1002304A8()
{
  result = qword_100591DA8;
  if (!qword_100591DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591DA8);
  }

  return result;
}

unint64_t sub_1002304FC()
{
  result = qword_1005915F8;
  if (!qword_1005915F8)
  {
    sub_10005DD04(&qword_10058D430, &unk_1004AC7D0);
    sub_10003CE48(&qword_10058D458, type metadata accessor for NANAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005915F8);
  }

  return result;
}

unint64_t sub_1002305B4()
{
  result = qword_100591DD0;
  if (!qword_100591DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591DD0);
  }

  return result;
}

unint64_t sub_10023060C()
{
  result = qword_100591DD8;
  if (!qword_100591DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591DD8);
  }

  return result;
}

unint64_t sub_100230664()
{
  result = qword_100591DE0;
  if (!qword_100591DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591DE0);
  }

  return result;
}

unint64_t sub_1002306BC()
{
  result = qword_100591DE8;
  if (!qword_100591DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591DE8);
  }

  return result;
}

unint64_t sub_100230714()
{
  result = qword_100591DF0;
  if (!qword_100591DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591DF0);
  }

  return result;
}

unint64_t sub_10023076C()
{
  result = qword_100591DF8;
  if (!qword_100591DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591DF8);
  }

  return result;
}

unint64_t sub_1002307C4()
{
  result = qword_100591E00;
  if (!qword_100591E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E00);
  }

  return result;
}

unint64_t sub_100230818()
{
  result = qword_100591E08;
  if (!qword_100591E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E08);
  }

  return result;
}

unint64_t sub_100230870()
{
  result = qword_100591E10;
  if (!qword_100591E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E10);
  }

  return result;
}

unint64_t sub_1002308C8()
{
  result = qword_100591E18;
  if (!qword_100591E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E18);
  }

  return result;
}

unint64_t sub_10023091C()
{
  result = qword_100591E20;
  if (!qword_100591E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E20);
  }

  return result;
}

unint64_t sub_100230970(uint64_t a1)
{
  result = sub_100230998();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100230998()
{
  result = qword_100591E28;
  if (!qword_100591E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E28);
  }

  return result;
}

unint64_t sub_1002309F0()
{
  result = qword_100591E30;
  if (!qword_100591E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E30);
  }

  return result;
}

unint64_t sub_100230A48()
{
  result = qword_100591E38;
  if (!qword_100591E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E38);
  }

  return result;
}

unint64_t sub_100230AA0()
{
  result = qword_100591E40;
  if (!qword_100591E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E40);
  }

  return result;
}

unint64_t sub_100230AF8()
{
  result = qword_100591E48;
  if (!qword_100591E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E48);
  }

  return result;
}

unint64_t sub_100230B50()
{
  result = qword_100591E50;
  if (!qword_100591E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E50);
  }

  return result;
}

unint64_t sub_100230BA8()
{
  result = qword_100591E58;
  if (!qword_100591E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E58);
  }

  return result;
}

unint64_t sub_100230C00()
{
  result = qword_100591E60;
  if (!qword_100591E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E60);
  }

  return result;
}

unint64_t sub_100230C58()
{
  result = qword_100591E68;
  if (!qword_100591E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E68);
  }

  return result;
}

unint64_t sub_100230CB0()
{
  result = qword_100591E70;
  if (!qword_100591E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E70);
  }

  return result;
}

unint64_t sub_100230D08()
{
  result = qword_100591E78;
  if (!qword_100591E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E78);
  }

  return result;
}

unint64_t sub_100230D60()
{
  result = qword_100591E80;
  if (!qword_100591E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E80);
  }

  return result;
}

uint64_t sub_100230DB4(uint64_t a1)
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

uint64_t sub_100230DDC(uint64_t a1)
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

uint64_t sub_100230E04(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF5 && *(a1 + 57))
  {
    return (*a1 + 245);
  }

  v3 = *(a1 + 56);
  if (v3 <= 0xB)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100230E4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF4)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 245;
    if (a3 >= 0xF5)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF5)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_100230EA0(uint64_t result, unsigned int a2)
{
  if (a2 >= 0xB)
  {
    *result = a2 - 11;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    LOBYTE(a2) = 11;
  }

  *(result + 56) = a2;
  return result;
}

uint64_t sub_100230EF8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 40))
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

uint64_t sub_100230F4C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_100230FD4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10023101C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1002310A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 56))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
  if (v3 <= 2)
  {
    v4 = 2;
  }

  else
  {
    v4 = *(a1 + 32);
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

uint64_t sub_1002310FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211InformationElement.AuthenticationKeyManagementSuite(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE8)
  {
    goto LABEL_17;
  }

  if (a2 + 24 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 24) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 24;
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

      return (*a1 | (v4 << 8)) - 24;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 24;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v8 = v6 - 25;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211InformationElement.AuthenticationKeyManagementSuite(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE8)
  {
    v4 = 0;
  }

  if (a2 > 0xE7)
  {
    v5 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
    *result = a2 + 24;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1002313B0()
{
  result = qword_100591E88;
  if (!qword_100591E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E88);
  }

  return result;
}

unint64_t sub_100231408()
{
  result = qword_100591E90;
  if (!qword_100591E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E90);
  }

  return result;
}

unint64_t sub_100231460()
{
  result = qword_100591E98;
  if (!qword_100591E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591E98);
  }

  return result;
}

unint64_t sub_1002314B8()
{
  result = qword_100591EA0;
  if (!qword_100591EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EA0);
  }

  return result;
}

unint64_t sub_100231510()
{
  result = qword_100591EA8;
  if (!qword_100591EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EA8);
  }

  return result;
}

unint64_t sub_100231568()
{
  result = qword_100591EB0;
  if (!qword_100591EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EB0);
  }

  return result;
}

unint64_t sub_1002315BC()
{
  result = qword_100591EB8;
  if (!qword_100591EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EB8);
  }

  return result;
}

unint64_t sub_100231614()
{
  result = qword_100591EC0;
  if (!qword_100591EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EC0);
  }

  return result;
}

unint64_t sub_10023166C()
{
  result = qword_100591EC8;
  if (!qword_100591EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EC8);
  }

  return result;
}

unint64_t sub_1002316C4()
{
  result = qword_100591ED0;
  if (!qword_100591ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591ED0);
  }

  return result;
}

unint64_t sub_10023171C()
{
  result = qword_100591ED8;
  if (!qword_100591ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591ED8);
  }

  return result;
}

unint64_t sub_100231774()
{
  result = qword_100591EE0;
  if (!qword_100591EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EE0);
  }

  return result;
}

unint64_t sub_1002317CC()
{
  result = qword_100591EE8;
  if (!qword_100591EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EE8);
  }

  return result;
}

unint64_t sub_100231824()
{
  result = qword_100591EF0;
  if (!qword_100591EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EF0);
  }

  return result;
}

unint64_t sub_10023187C()
{
  result = qword_100591EF8;
  if (!qword_100591EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591EF8);
  }

  return result;
}

unint64_t sub_1002318D4()
{
  result = qword_100591F00;
  if (!qword_100591F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F00);
  }

  return result;
}

unint64_t sub_10023192C()
{
  result = qword_100591F08;
  if (!qword_100591F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F08);
  }

  return result;
}

unint64_t sub_100231984()
{
  result = qword_100591F10;
  if (!qword_100591F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F10);
  }

  return result;
}

unint64_t sub_1002319DC()
{
  result = qword_100591F18;
  if (!qword_100591F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F18);
  }

  return result;
}

unint64_t sub_100231A34()
{
  result = qword_100591F20;
  if (!qword_100591F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F20);
  }

  return result;
}

unint64_t sub_100231A8C()
{
  result = qword_100591F28;
  if (!qword_100591F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F28);
  }

  return result;
}

unint64_t sub_100231AE4()
{
  result = qword_100591F30;
  if (!qword_100591F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F30);
  }

  return result;
}

unint64_t sub_100231B3C()
{
  result = qword_100591F38;
  if (!qword_100591F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F38);
  }

  return result;
}

unint64_t sub_100231B94()
{
  result = qword_100591F40;
  if (!qword_100591F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F40);
  }

  return result;
}

unint64_t sub_100231BEC()
{
  result = qword_100591F48;
  if (!qword_100591F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F48);
  }

  return result;
}

unint64_t sub_100231C44()
{
  result = qword_100591F50;
  if (!qword_100591F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F50);
  }

  return result;
}

unint64_t sub_100231C9C()
{
  result = qword_100591F58;
  if (!qword_100591F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F58);
  }

  return result;
}

unint64_t sub_100231CF4()
{
  result = qword_100591F60;
  if (!qword_100591F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F60);
  }

  return result;
}

unint64_t sub_100231D4C()
{
  result = qword_100591F68;
  if (!qword_100591F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F68);
  }

  return result;
}

unint64_t sub_100231DA4()
{
  result = qword_100591F70;
  if (!qword_100591F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F70);
  }

  return result;
}

unint64_t sub_100231DFC()
{
  result = qword_100591F78;
  if (!qword_100591F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F78);
  }

  return result;
}

unint64_t sub_100231E54()
{
  result = qword_100591F80;
  if (!qword_100591F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F80);
  }

  return result;
}

uint64_t sub_100231EA8(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1802401130 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1868983913 && a2 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7261507564706D61 && a2 == 0xEF73726574656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7562093 && a2 == 0xE300000000000000)
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

uint64_t sub_100232014(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x437972616D697270 && a2 == 0xEE006C656E6E6168;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F6974617265706FLL && a2 == 0xE90000000000006ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7562093 && a2 == 0xE300000000000000)
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

uint64_t sub_10023213C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1868983913 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70614D53434D7872 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x474C686769487872 && a2 == 0xED00006574615249 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x70614D53434D7874 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x474C686769487874 && a2 == 0xED00006574615249)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

unint64_t sub_1002322F4()
{
  result = qword_100591F88;
  if (!qword_100591F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F88);
  }

  return result;
}

unint64_t sub_100232348()
{
  result = qword_100591F90;
  if (!qword_100591F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F90);
  }

  return result;
}

unint64_t sub_10023239C()
{
  result = qword_100591F98;
  if (!qword_100591F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591F98);
  }

  return result;
}

unint64_t sub_1002323F0()
{
  result = qword_100591FA8;
  if (!qword_100591FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591FA8);
  }

  return result;
}

unint64_t sub_100232444()
{
  result = qword_100591FB8;
  if (!qword_100591FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591FB8);
  }

  return result;
}

unint64_t sub_1002324C8()
{
  result = qword_100591FC0;
  if (!qword_100591FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591FC0);
  }

  return result;
}

unint64_t sub_10023251C()
{
  result = qword_100591FC8;
  if (!qword_100591FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591FC8);
  }

  return result;
}

unint64_t sub_100232570()
{
  result = qword_100591FD0;
  if (!qword_100591FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591FD0);
  }

  return result;
}

unint64_t sub_1002325C4()
{
  result = qword_100591FD8;
  if (!qword_100591FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591FD8);
  }

  return result;
}

unint64_t sub_100232618()
{
  result = qword_100591FE0;
  if (!qword_100591FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591FE0);
  }

  return result;
}

unint64_t sub_1002326A8()
{
  result = sub_100083180(&off_100556B10);
  qword_10059B688 = result;
  return result;
}

unint64_t sub_1002326D0()
{
  result = sub_100083180(&off_100556B70);
  qword_10059B690 = result;
  return result;
}

uint64_t sub_1002326F8(uint64_t a1, char a2)
{
  if ((a2 & 1) == 0)
  {
LABEL_15:
    if (qword_10058AB10 != -1)
    {
      goto LABEL_32;
    }

    while (1)
    {
      v10 = 0;
      v3 = qword_10059B688;
      v11 = 1 << *(qword_10059B688 + 32);
      v12 = -1;
      if (v11 < 64)
      {
        v12 = ~(-1 << v11);
      }

      v13 = v12 & *(qword_10059B688 + 64);
      v14 = (v11 + 63) >> 6;
      while (v13)
      {
        v15 = v10;
LABEL_25:
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
        if (*(*(qword_10059B688 + 48) + ((v15 << 9) | (8 * v16))) == a1)
        {
          goto LABEL_26;
        }
      }

      while (1)
      {
        v15 = v10 + 1;
        if (__OFADD__(v10, 1))
        {
          break;
        }

        if (v15 >= v14)
        {
          return 0;
        }

        v13 = *(qword_10059B688 + 64 + 8 * v15);
        ++v10;
        if (v13)
        {
          v10 = v15;
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      v20 = a1;
      swift_once();
      a1 = v20;
    }
  }

  if (qword_10058AB18 != -1)
  {
    v21 = a1;
    swift_once();
    a1 = v21;
  }

  v2 = 0;
  v3 = qword_10059B690;
  v4 = 1 << *(qword_10059B690 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(qword_10059B690 + 64);
  v7 = (v4 + 63) >> 6;
  do
  {
    if (v6)
    {
      v8 = v2;
    }

    else
    {
      do
      {
        v8 = v2 + 1;
        if (__OFADD__(v2, 1))
        {
          goto LABEL_31;
        }

        if (v8 >= v7)
        {
          goto LABEL_15;
        }

        v6 = *(qword_10059B690 + 64 + 8 * v8);
        ++v2;
      }

      while (!v6);
      v2 = v8;
    }

    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
  }

  while (*(*(qword_10059B690 + 48) + ((v8 << 9) | (8 * v9))) != a1);
LABEL_26:
  if (*(v3 + 16) && (v17 = sub_100085268(a1), (v18 & 1) != 0))
  {
    return *(*(v3 + 56) + 8 * v17);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1002328E4()
{
  result = sub_1000831A8(&off_100556BD0);
  qword_10059B698 = result;
  return result;
}

unint64_t sub_10023290C()
{
  result = sub_1000832AC(&off_100556CB0);
  qword_10059B6A0 = result;
  return result;
}

double PHYDataRateCalculator.phyRateMbps.getter()
{
  if ((*(v0 + 48) & 1) == 0 && (*(v0 + 64) & 1) == 0 && (*(v0 + 80) & 1) == 0 && (*(v0 + 96) & 1) == 0 && (*(v0 + 112) & 1) == 0)
  {
    return *(v0 + 40) * *(v0 + 56) * *(v0 + 72) * *(v0 + 16) / (*(v0 + 88) + *(v0 + 104));
  }

  return result;
}

double PHYCapabilities.PHYDataRateMbps.getter()
{
  v1 = v0[1];
  if (v1 != 7 && (v0[16] & 1) == 0 && (v0[32] & 1) == 0)
  {
    v2 = v0[33];
    if (v2 != 2)
    {
      v3 = v1 - 2;
      if (v3 > 4)
      {
        v4 = 40;
      }

      else
      {
        v4 = *&asc_10049EE38[8 * v3];
      }

      sub_100232B10(*v0, v4, *(v0 + 1), *(v0 + 3), v2 & 1, v6);
      if (v8 != 2 && (v10 & 1) == 0 && (v12 & 1) == 0 && (v14 & 1) == 0 && (v16 & 1) == 0 && (v18 & 1) == 0)
      {
        return v9 * v11 * v13 * v7 / (v15 + v17);
      }
    }
  }

  return result;
}

uint64_t sub_100232B10@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  if ((a3 - 9) >= 0xFFFFFFFFFFFFFFF8 && a4 <= 0xB)
  {
    v19 = a4;
    v20 = a3;
    v21 = a2;
    v22 = result;
    result = sub_1002326F8(a2, 0);
    v8 = result;
    v44 = v23 & 1;
    if (a5)
    {
      v12 = 0x3FD999999999999ALL;
    }

    else
    {
      v12 = 0x3FE999999999999ALL;
    }

    if (!v22)
    {
      if (qword_10058AB20 != -1)
      {
        result = swift_once();
      }

      v27 = qword_10059B698;
      if (*(qword_10059B698 + 16) && (result = sub_100085268(v19 & 7), (v28 & 1) != 0))
      {
        v29 = 0;
        v9 = *(*(v27 + 56) + 8 * result);
      }

      else
      {
        v9 = 0;
        v29 = 1;
      }

      v43 = v29;
      if (qword_10058AB28 != -1)
      {
        result = swift_once();
      }

      v34 = qword_10059B6A0;
      v10 = *(qword_10059B6A0 + 16);
      if (!v10)
      {
        goto LABEL_39;
      }

      result = sub_100085268(v19 & 7);
      if (v37)
      {
        goto LABEL_32;
      }

      goto LABEL_38;
    }

    if (v22 == 1)
    {
      if (qword_10058AB20 != -1)
      {
        result = swift_once();
      }

      v24 = qword_10059B698;
      if (*(qword_10059B698 + 16) && (result = sub_100085268(v19), (v25 & 1) != 0))
      {
        v26 = 0;
        v9 = *(*(v24 + 56) + 8 * result);
      }

      else
      {
        v9 = 0;
        v26 = 1;
      }

      v43 = v26;
      if (qword_10058AB28 != -1)
      {
        result = swift_once();
      }

      v34 = qword_10059B6A0;
      v10 = *(qword_10059B6A0 + 16);
      if (!v10)
      {
        goto LABEL_39;
      }

      result = sub_100085268(v19);
      if (v35)
      {
LABEL_32:
        v36 = 0;
        v10 = *(*(v34 + 56) + 8 * result);
LABEL_40:
        v42 = v36;
        v11 = 0x400999999999999ALL;
LABEL_50:
        v15 = v44;
        v14 = v43;
        v13 = v42;
        v16 = v22;
        v17 = a5 & 1;
        goto LABEL_51;
      }

LABEL_38:
      v10 = 0;
LABEL_39:
      v36 = 1;
      goto LABEL_40;
    }

    if (qword_10058AB20 != -1)
    {
      swift_once();
    }

    v30 = qword_10059B698;
    if (*(qword_10059B698 + 16) && (v31 = sub_100085268(v19), (v32 & 1) != 0))
    {
      v33 = 0;
      v9 = *(*(v30 + 56) + 8 * v31);
    }

    else
    {
      v9 = 0;
      v33 = 1;
    }

    v43 = v33;
    result = sub_1002326F8(v21, 1);
    v8 = result;
    v44 = v38 & 1;
    if (qword_10058AB28 != -1)
    {
      result = swift_once();
    }

    v39 = qword_10059B6A0;
    v10 = *(qword_10059B6A0 + 16);
    if (v10)
    {
      result = sub_100085268(v19);
      if (v40)
      {
        v41 = 0;
        v10 = *(*(v39 + 56) + 8 * result);
LABEL_49:
        v42 = v41;
        v11 = 0x402999999999999ALL;
        goto LABEL_50;
      }

      v10 = 0;
    }

    v41 = 1;
    goto LABEL_49;
  }

  v21 = 0;
  v20 = 0;
  v19 = 0;
  v8 = 0;
  v9 = 0;
  v10 = 0;
  v11 = 0;
  v12 = 0;
  v13 = 0;
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 2;
LABEL_51:
  *a6 = v16;
  *(a6 + 8) = v21;
  *(a6 + 16) = v20;
  *(a6 + 24) = v19;
  *(a6 + 32) = v17;
  *(a6 + 40) = v8;
  *(a6 + 48) = v15;
  *(a6 + 56) = v9;
  *(a6 + 64) = v14;
  *(a6 + 72) = v10;
  *(a6 + 80) = v13;
  *(a6 + 88) = v11;
  *(a6 + 96) = 0;
  *(a6 + 104) = v12;
  *(a6 + 112) = 0;
  return result;
}

__n128 sub_100232EC4(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_100232EF0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_100232F44(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_100232FB8@<X0>(CoreP2P::WiFiInterfaceRole a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *v5;
  result = sub_100232FEC(a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

uint64_t sub_100232FEC(CoreP2P::WiFiInterfaceRole a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1)
  {
    v9 = *v4;
    v10 = v4[5];

    v11._countAndFlagsBits = a2;
    v11._object = a3;
    v12 = AppleDevice.findOrCreateInterface(for:on:with:)(a1, v11, (a4 & 0xFFFFFFFFFFFFLL));

    if (v12.value._object)
    {
      v13 = *(v9 + 48);
      v14 = *(v9 + 52);
      swift_allocObject();

      return AppleIO80211Driver.init(device:role:name:)(v15, a1, v12.value._countAndFlagsBits, v12.value._object);
    }

    v17 = 7;
  }

  else
  {
    v17 = 2;
  }

  sub_10000B02C();
  swift_allocError();
  *v18 = v17;
  *(v18 + 8) = 0;
  *(v18 + 16) = 1;
  return swift_willThrow();
}

uint64_t sub_10023310C(CoreP2P::WiFiInterfaceRole a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 == CoreP2P_WiFiInterfaceRole_infrastructure)
  {
    v17 = 2;
    goto LABEL_6;
  }

  v9 = *v4;
  v10 = v4[5];

  v11._countAndFlagsBits = a2;
  v11._object = a3;
  v12 = AppleDevice.findOrCreateInterface(for:on:with:)(a1, v11, (a4 & 0xFFFFFFFFFFFFLL));

  if (!v12.value._object || (v13 = *(v9 + 48), v14 = *(v9 + 52), swift_allocObject(), v15 = , (result = AppleBroadcomDriver.init(device:role:name:)(v15, a1, v12.value._countAndFlagsBits, v12.value._object)) == 0))
  {
    v17 = 7;
LABEL_6:
    sub_10000B02C();
    swift_allocError();
    *v18 = v17;
    *(v18 + 8) = 0;
    *(v18 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

uint64_t WiFiDriver<>.createInterface(for:on:macAddress:)@<X0>(unsigned int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v36 = a2;
  v37 = a3;
  v34 = a7;
  v38 = a1;
  v12 = a1;
  v13 = type metadata accessor for Optional();
  v32 = *(v13 - 8);
  v33 = v13;
  v14 = *(v32 + 64);
  __chkstk_darwin();
  v35 = v31 - v15;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v17 = *(AssociatedTypeWitness - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin();
  v20 = v31 - v19;
  if (!v12)
  {
    sub_10000B02C();
    swift_allocError();
    v29 = 2;
    goto LABEL_7;
  }

  v31[0] = v8;
  v31[1] = v7;
  v21 = *(a6 + 56);
  v21(a5, a6);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v23 = (*(AssociatedConformanceWitness + 88))(v38, v36, v37, a4 & 0xFFFFFFFFFFFFLL, AssociatedTypeWitness, AssociatedConformanceWitness);
  v25 = v24;
  (*(v17 + 8))(v20, AssociatedTypeWitness);
  if (!v25)
  {
LABEL_5:
    sub_10000B02C();
    swift_allocError();
    v29 = 7;
LABEL_7:
    *v28 = v29;
    *(v28 + 8) = 0;
    *(v28 + 16) = 1;
    return swift_willThrow();
  }

  v21(a5, a6);
  v26 = v35;
  (*(a6 + 48))(v20, v38, v23, v25, a5, a6);
  v27 = *(a5 - 8);
  if ((*(v27 + 48))(v26, 1, a5) == 1)
  {
    (*(v32 + 8))(v26, v33);
    goto LABEL_5;
  }

  return (*(v27 + 32))(v34, v26, a5);
}

uint64_t sub_100233570@<X0>(CoreP2P::WiFiInterfaceRole a1@<W0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v8 = *v5;
  result = sub_10023310C(a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL);
  if (!v6)
  {
    *a5 = result;
  }

  return result;
}

uint64_t InterfaceIdentifier.ipv6Address.getter(uint64_t a1, unint64_t a2)
{
  v4 = sub_10002D874(&off_100556D90);
  v6 = v5;
  v15 = v4;
  v16 = v5;
  v14[3] = &type metadata for Data;
  v14[4] = &protocol witness table for Data;
  v14[0] = a1;
  v14[1] = a2;
  v7 = sub_100029B34(v14, &type metadata for Data);
  v8 = *v7;
  v9 = v7[1];
  sub_10000AB0C(v4, v6);
  sub_10000AB0C(a1, a2);
  sub_100178A18(v8, v9);
  sub_1000124C8(v4, v6);
  sub_100002A00(v14);
  v10 = v15;
  v11 = v16;
  v12 = sub_1002A58C4(v15, v16);
  sub_1000124C8(v10, v11);
  return v12;
}

uint64_t InterfaceIdentifier.description.getter(uint64_t a1, unint64_t a2)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      return 0x3A30386566;
    }

    v6 = *(a1 + 16);
    v5 = *(a1 + 24);
  }

  else
  {
    if (v4)
    {
      v5 = a1 >> 32;
    }

    else
    {
      v5 = BYTE6(a2);
    }

    if (v4)
    {
      v6 = a1;
    }

    else
    {
      v6 = 0;
    }
  }

  result = 0x3A30386566;
  v36 = 0x3A30386566;
  v37 = 0xE500000000000000;
  if (v6 < v5)
  {
    v29 = a1 >> 32;
    v28 = v5;
    while (1)
    {
      if (__OFADD__(v6, 2))
      {
        v10 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v10 = v6 + 2;
      }

      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v11 = swift_allocObject();
      *(v11 + 16) = xmmword_100480F40;
      if (v4 == 2)
      {
        if (v6 < *(a1 + 16))
        {
          goto LABEL_46;
        }

        if (v6 >= *(a1 + 24))
        {
          goto LABEL_49;
        }

        v21 = __DataStorage._bytes.getter();
        if (!v21)
        {
          goto LABEL_58;
        }

        v22 = v21;
        v23 = __DataStorage._offset.getter();
        if (__OFSUB__(v6, v23))
        {
          goto LABEL_51;
        }

        v24 = v6 + 1;
        if (v6 + 1 < *(a1 + 16))
        {
          goto LABEL_53;
        }

        if (v24 >= *(a1 + 24))
        {
          goto LABEL_55;
        }

        v16 = *(v22 + v6 - v23);
        v25 = __DataStorage._bytes.getter();
        if (!v25)
        {
          goto LABEL_60;
        }

        v18 = v25;
        v26 = __DataStorage._offset.getter();
        v20 = v24 - v26;
        if (__OFSUB__(v24, v26))
        {
          goto LABEL_56;
        }
      }

      else
      {
        if (v4 != 1)
        {
          if (v6 >= BYTE6(a2))
          {
            __break(1u);
LABEL_46:
            __break(1u);
LABEL_47:
            __break(1u);
LABEL_48:
            __break(1u);
LABEL_49:
            __break(1u);
LABEL_50:
            __break(1u);
LABEL_51:
            __break(1u);
LABEL_52:
            __break(1u);
LABEL_53:
            __break(1u);
LABEL_54:
            __break(1u);
LABEL_55:
            __break(1u);
LABEL_56:
            __break(1u);
LABEL_57:
            __break(1u);
LABEL_58:
            __break(1u);
LABEL_59:
            __break(1u);
LABEL_60:
            __break(1u);
          }

          v30 = a1;
          v31 = a2;
          v32 = BYTE2(a2);
          v33 = BYTE3(a2);
          v34 = BYTE4(a2);
          v27 = v6 + 1;
          v35 = BYTE5(a2);
          if (v6 + 1 >= BYTE6(a2))
          {
            goto LABEL_48;
          }

          v16 = *(&v30 + v6);
          v30 = a1;
          v31 = a2;
          v32 = BYTE2(a2);
          v33 = BYTE3(a2);
          v34 = BYTE4(a2);
          v35 = BYTE5(a2);
          v8 = *(&v30 + v27);
          goto LABEL_13;
        }

        if (v6 < a1 || v6 >= v29)
        {
          goto LABEL_47;
        }

        v12 = __DataStorage._bytes.getter();
        if (!v12)
        {
          goto LABEL_57;
        }

        v13 = v12;
        v14 = __DataStorage._offset.getter();
        if (__OFSUB__(v6, v14))
        {
          goto LABEL_50;
        }

        v15 = v6 + 1;
        if (v6 + 1 < a1 || v15 >= v29)
        {
          goto LABEL_52;
        }

        v16 = *(v13 + v6 - v14);
        v17 = __DataStorage._bytes.getter();
        if (!v17)
        {
          goto LABEL_59;
        }

        v18 = v17;
        v19 = __DataStorage._offset.getter();
        v20 = v15 - v19;
        if (__OFSUB__(v15, v19))
        {
          goto LABEL_54;
        }
      }

      v8 = *(v18 + v20);
      v5 = v28;
LABEL_13:
      *(v11 + 56) = &type metadata for Int;
      *(v11 + 64) = &protocol witness table for Int;
      *(v11 + 32) = v8 | (v16 << 8);
      v9._countAndFlagsBits = String.init(format:_:)();
      String.append(_:)(v9);

      v6 = v10;
      if (v10 >= v5)
      {
        return v36;
      }
    }
  }

  return result;
}

uint64_t InterfaceIdentifier.customMirror.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v14[2] = a1;
  v14[3] = a2;
  v14[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 104))(v8, enum case for Mirror.AncestorRepresentation.generated(_:), v4);
  sub_10000AB0C(a1, a2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_100233C38()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = v13 - v7;
  v10 = *v0;
  v9 = v0[1];
  v13[2] = v10;
  v13[3] = v9;
  v13[1] = _swiftEmptyArrayStorage;
  v11 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10000AB0C(v10, v9);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t InterfaceIdentifier.init(_:)(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 == 15)
  {
    return 0;
  }

  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      v3 = BYTE6(a2);
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v2 == 2)
  {
    v5 = *(result + 16);
    v4 = *(result + 24);
    v6 = __OFSUB__(v4, v5);
    v3 = v4 - v5;
    if (!v6)
    {
      goto LABEL_12;
    }

    __break(1u);
LABEL_10:
    LODWORD(v3) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v3 = v3;
LABEL_12:
    if (v3 == 8)
    {
      return result;
    }
  }

  sub_100017554(result, a2);
  return 0;
}

uint64_t sub_100233EA4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = InterfaceIdentifier.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100233ED0(uint64_t *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    goto LABEL_13;
  }

  v4 = v18;
  sub_100031694(v17, v18);
  result = UnkeyedDecodingContainer.decodeData(with:)(8, v4);
  v3 = result;
  v7 = v6;
  v8 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v8 != 2)
    {
      goto LABEL_12;
    }

    v10 = *(result + 16);
    v9 = *(result + 24);
    v11 = __OFSUB__(v9, v10);
    v12 = v9 - v10;
    if (!v11)
    {
      if (v12 == 8)
      {
        goto LABEL_9;
      }

LABEL_12:
      v13 = type metadata accessor for DecodingError();
      swift_allocError();
      v15 = v14;
      v19 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
      *v15 = &type metadata for Data;
      v16 = a1[4];
      sub_100029B34(a1, a1[3]);
      dispatch thunk of Decoder.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v13 - 8) + 104))(v15, enum case for DecodingError.valueNotFound(_:), v13);
      swift_willThrow();
      sub_1000124C8(v3, v7);
      sub_100002A00(v17);
LABEL_13:
      sub_100002A00(a1);
      return v3;
    }

    __break(1u);
  }

  else
  {
    if (!v8)
    {
      if (BYTE6(v6) != 8)
      {
        goto LABEL_12;
      }

LABEL_9:
      sub_100002A00(v17);
      sub_100002A00(a1);
      return v3;
    }

    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result == 8)
      {
        goto LABEL_9;
      }

      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_1002340FC()
{
  result = qword_100592008;
  if (!qword_100592008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592008);
  }

  return result;
}

unint64_t ExtendableOptionSet.formIntersection(_:)(uint64_t (*a1)(_BYTE *, void), uint64_t *a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(*(a3 + 8) + 8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v9 = *(v18[0] + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v10 = *(v19 + 16);

  if (v10 < v9)
  {
    dispatch thunk of RawRepresentable.rawValue.getter();
    v11 = *(v18[0] + 16);

    dispatch thunk of RawRepresentable.rawValue.getter();
    v12 = *(v19 + 16);

    v13 = (*(a3 + 24))(v18, a2, a3);
    sub_100235DAC((v11 - v12));
    v13(v18, 0);
  }

  dispatch thunk of RawRepresentable.rawValue.getter();
  v14 = *(v18[0] + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v19 + 16);

  if (v14)
  {
    result = 0;
    do
    {
      if (v15 == result)
      {
        break;
      }

      v17 = result + 1;
      sub_100235DD4(result, result, v4, a1, a2, a3);
      result = v17;
    }

    while (v14 != v17);
  }

  return result;
}

uint64_t sub_100234374(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v6 = v4;
  v10 = *(*(a3 + 8) + 8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v23[0] + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v12 = *(v24 + 16);

  if (v11)
  {
    v13 = 0;
    do
    {
      if (v12 == v13)
      {
        break;
      }

      v14 = v13 + 1;
      a4(v13, v13, v6, a1, a2, a3);
      v13 = v14;
    }

    while (v11 != v14);
  }

  dispatch thunk of RawRepresentable.rawValue.getter();
  v15 = *(v23[0] + 16);

  dispatch thunk of RawRepresentable.rawValue.getter();
  v16 = *(v24 + 16);

  if (v15 < v16)
  {
    dispatch thunk of RawRepresentable.rawValue.getter();
    v18 = v24;
    dispatch thunk of RawRepresentable.rawValue.getter();

    dispatch thunk of RawRepresentable.rawValue.getter();

    dispatch thunk of RawRepresentable.rawValue.getter();
    v19 = *(v23[4] + 16);

    v20 = *(v24 + 16);
    if (v20 < v19)
    {
      __break(1u);
    }

    else
    {
      v21 = (2 * v20) | 1;
      v22 = (*(a3 + 24))(v23, a2, a3);
      sub_100234FC0(v18, v18 + 32, v19, v21);
      return v22(v23, 0);
    }
  }

  return result;
}

unint64_t ExtendableOptionSet.init(bitOffset:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v4 = result;
    v5 = result >> 3;
    v6 = (result >> 3) + 1;
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = v6;
    *(v7 + 32) = 0;
    v8 = v7 + 32;
    if (v4 >= 8)
    {
      bzero((v7 + 33), v5);
    }

    *(v8 + v5) |= 1 << (v4 & 7);
    v9 = *(a3 + 8);
    return dispatch thunk of OptionSet.init(rawValue:)();
  }

  return result;
}

uint64_t static OptionSet<>.withValue<A>(_:at:withBitCount:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  v10 = v9;
  v66 = a1;
  v61 = a9;
  v63 = a6;
  v16 = *(a6 + 8);
  v62 = a4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v60 = v58 - v19;
  v20 = *(a7 + 8);
  v58[2] = *(v20[3] + 16);
  v21 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v22 = *(a5 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin();
  v65 = v58 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin();
  v67 = v58 - v27;
  v64 = a2;
  v28 = __OFADD__(a2, a3);
  v29 = a2 + a3;
  if (v28)
  {
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v58[1] = v25;
  v58[3] = v9;
  v58[4] = AssociatedTypeWitness;
  v59 = a8;
  if (dispatch thunk of static FixedWidthInteger.bitWidth.getter() < v29)
  {
    goto LABEL_3;
  }

  if ((a3 & 0x8000000000000000) != 0)
  {
    goto LABEL_58;
  }

  if (a3)
  {
    v32 = 0;
    v33 = 0;
    v34 = v66;
    while (1)
    {
      v26 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v32 < 0x40)
      {
        v33 |= 1 << v32;
      }

      if (v26 == a3)
      {
        goto LABEL_14;
      }

      ++v32;
      if (v26 >= a3)
      {
        __break(1u);
        goto LABEL_13;
      }
    }

    __break(1u);
    goto LABEL_57;
  }

LABEL_13:
  v33 = 0;
  v34 = v66;
LABEL_14:
  v35 = v67;
  (*(v22 + 16))(v67, v34, a5);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_29;
  }

  v68 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      sub_100086E78();
      v10 = v65;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v36 = *(v20[4] + 8);
      goto LABEL_22;
    }
  }

  else
  {
    v37 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v38 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v37)
    {
      if (v38 > 64)
      {
        sub_100086E78();
        v10 = v65;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v39 = *(v20[4] + 8);
        v35 = v67;
LABEL_22:
        v40 = dispatch thunk of static Comparable.< infix(_:_:)();
        (*(v22 + 8))(v10, a5);
        if (v40)
        {
          goto LABEL_59;
        }

        goto LABEL_29;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v10 = v65;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v41 = *(v20[4] + 8);
      v35 = v67;
      v42 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v22 + 8))(v10, a5);
      if (v42)
      {
LABEL_59:
        __break(1u);
        goto LABEL_60;
      }
    }

    else
    {
      if (v38 >= 64)
      {
        v35 = v67;
        goto LABEL_29;
      }

      v35 = v67;
    }
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_29:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v68 = 0x7FFFFFFFFFFFFFFFLL;
    v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v43 & 1) == 0)
    {
      break;
    }

    if (v44 < 65)
    {
      goto LABEL_38;
    }

LABEL_32:
    sub_100086E78();
    v45 = v65;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v46 = *(v20[4] + 8);
    v47 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v22 + 8))(v45, a5);
    if (v47)
    {
      __break(1u);
LABEL_34:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_39;
  }

  if (v44 >= 64)
  {
    goto LABEL_32;
  }

LABEL_38:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_39:
  v48 = dispatch thunk of BinaryInteger._lowWord.getter();
  v49 = v35;
  v50 = *(v22 + 8);
  v50(v49, a5);
  v10 = v48 & v33;
  LOBYTE(v48) = dispatch thunk of static BinaryInteger.isSigned.getter();
  v51 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v48 & 1) == 0)
  {
    if (v51 > 63)
    {
      if ((v10 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

      goto LABEL_3;
    }

    goto LABEL_43;
  }

  if (v51 <= 64)
  {
LABEL_43:
    if (v10 != dispatch thunk of BinaryInteger._lowWord.getter())
    {
      goto LABEL_3;
    }

LABEL_47:
    v26 = v64;
    if (v64 <= -65)
    {
      goto LABEL_48;
    }

    v56 = v59;
    if (v64 > 64)
    {
      v55 = 0;
      goto LABEL_55;
    }

    if ((v64 & 0x8000000000000000) == 0)
    {
      v55 = v10 << v64;
      if (v64 == 64)
      {
        v55 = 0;
      }

      goto LABEL_55;
    }

LABEL_60:
    if (v26 != -64)
    {
      v55 = v10 >> -v64;
      goto LABEL_49;
    }

LABEL_48:
    v55 = v10 >> 63;
LABEL_49:
    v56 = v59;
LABEL_55:
    v68 = v55;
    v57 = *(v56 + 8);
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(_:)();
    return dispatch thunk of OptionSet.init(rawValue:)();
  }

LABEL_46:
  v68 = v10;
  sub_100086E78();
  v52 = v65;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v53 = *(v20[2] + 8);
  v54 = dispatch thunk of static Equatable.== infix(_:_:)();
  v50(v52, a5);
  if (v54)
  {
    goto LABEL_47;
  }

LABEL_3:
  sub_10000B02C();
  swift_allocError();
  *v30 = 0;
  *(v30 + 8) = 0;
  *(v30 + 16) = 2;
  return swift_willThrow();
}

void *sub_100234D74(void *result, size_t a2)
{
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    if (!a2)
    {
      return _swiftEmptyArrayStorage;
    }

    v2 = result;
    v4 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v4 + 16) = a2;
    memset((v4 + 32), v2, a2);
    return v4;
  }

  return result;
}

uint64_t static OptionSet<>.withValue<A>(_:at:withBitCount:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X5>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7)
{
  v18 = a4;
  v19 = a5;
  v16 = a7;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = *(AssociatedTypeWitness - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin();
  v14 = &v16 - v13;
  dispatch thunk of RawRepresentable.rawValue.getter();
  static OptionSet<>.withValue<A>(_:at:withBitCount:)(v14, a1, a2, v17, AssociatedTypeWitness, v18, v16, v19, a6);
  return (*(v11 + 8))(v14, AssociatedTypeWitness);
}

uint64_t static OptionSet<>.withBool(_:at:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v13 = a1 & 1;
  v11 = sub_100148E98();
  return static OptionSet<>.withValue<A>(_:at:withBitCount:)(&v13, a2, 1uLL, a3, &type metadata for Int, a4, v11, a5, a6);
}

void sub_100234FC0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = a4 >> 1;
  v6 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
    __break(1u);
    goto LABEL_18;
  }

  v7 = *v4;
  v8 = *(*v4 + 16);
  v9 = v8 + v6;
  if (__OFADD__(v8, v6))
  {
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v12 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (!isUniquelyReferenced_nonNull_native)
  {
    goto LABEL_8;
  }

  v14 = *(v7 + 24) >> 1;
  if (v14 < v9)
  {
    goto LABEL_8;
  }

  if (v5 == a3)
  {
    while (v6 > 0)
    {
      __break(1u);
LABEL_8:
      if (v8 <= v9)
      {
        v15 = v8 + v6;
      }

      else
      {
        v15 = v8;
      }

      isUniquelyReferenced_nonNull_native = sub_100115F68(isUniquelyReferenced_nonNull_native, v15, 1, v7);
      v7 = isUniquelyReferenced_nonNull_native;
      v14 = *(isUniquelyReferenced_nonNull_native + 24) >> 1;
      if (v5 != a3)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_16;
  }

LABEL_12:
  v16 = *(v7 + 16);
  if (v14 - v16 < v6)
  {
    goto LABEL_19;
  }

  memcpy((v7 + v16 + 32), (a2 + a3), v6);
  if (v6 <= 0)
  {
LABEL_16:
    swift_unknownObjectRelease();
    *v4 = v7;
    return;
  }

  v17 = *(v7 + 16);
  v18 = __OFADD__(v17, v6);
  v19 = v17 + v6;
  if (!v18)
  {
    *(v7 + 16) = v19;
    goto LABEL_16;
  }

LABEL_20:
  __break(1u);
}

uint64_t sub_1002350D4(uint64_t result)
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

  result = sub_100115F7C(result, v11, 1, v3);
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

uint64_t sub_1002351C8(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100115F68(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002352B4(uint64_t result)
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
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  result = sub_100116D3C(result, v12, 1, v3);
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
  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + 10 * v8 + 32), (v6 + 32), 10 * v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1002353A8(uint64_t result)
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

  result = sub_10011727C(result, v11, 1, v3);
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

uint64_t sub_10023549C(uint64_t result)
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

  result = sub_1001175C0(result, v11, 1, v3);
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

uint64_t sub_100235590(uint64_t result)
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
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v16 = v4 + v2;
  }

  else
  {
    v16 = v4;
  }

  v3 = sub_1001176CC(isUniquelyReferenced_nonNull_native, v16, 1, v3);
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
  v9 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for WiFiAwarePairedDevice();
  v10 = *(result - 8);
  if (v9 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v12 = *(v10 + 72);
  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v13 = v3[2];
  v14 = __OFADD__(v13, v2);
  v15 = v13 + v2;
  if (!v14)
  {
    v3[2] = v15;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *Dictionary<>.serializeForCoreAnalytics()(void *a1)
{
  v4 = a1;
  type metadata accessor for Dictionary();
  sub_10005DC58(&qword_10058CC98, &qword_100482FA0);
  swift_getWitnessTable();
  if (*(Sequence.compactMap<A>(_:)() + 16))
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_100236478(v2, 1, &v4);

  return v4;
}

{
  v4 = a1;
  type metadata accessor for Dictionary();
  sub_10005DC58(&qword_10058CC98, &qword_100482FA0);
  swift_getWitnessTable();
  if (*(Sequence.compactMap<A>(_:)() + 16))
  {
    sub_10005DC58(&qword_10058F340, &qword_1004948F0);
    v1 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v4 = v1;

  sub_100236478(v2, 1, &v4);

  return v4;
}

uint64_t sub_100235924@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(*(TupleTypeMetadata2 - 8) + 64);
  __chkstk_darwin();
  v9 = v16 - v8;
  (*(v10 + 16))(v16 - v8, a1, TupleTypeMetadata2);
  v11 = *(TupleTypeMetadata2 + 48);
  sub_1000840B4();
  if (swift_dynamicCast())
  {
    v12 = v16[0];
    (*(*(a2 - 8) + 8))(v9, a2);
    result = dispatch thunk of RawRepresentable.rawValue.getter();
    v14 = v16[0];
    v15 = v16[1];
  }

  else
  {
    result = (*(*(a2 - 8) + 8))(v9, a2);
    v14 = 0;
    v15 = 0;
    v12 = 0;
  }

  *a3 = v14;
  a3[1] = v15;
  a3[2] = v12;
  return result;
}

uint64_t sub_100235AD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v7 = *(TupleTypeMetadata2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = v20 - v11;
  v13 = *(v7 + 16);
  v13(v20 - v11, a1, TupleTypeMetadata2);
  v14 = *(v12 + 1);

  v15 = *(TupleTypeMetadata2 + 48);
  sub_1000840B4();
  result = swift_dynamicCast();
  if (result)
  {
    v17 = v20[3];
    v13(v10, a1, TupleTypeMetadata2);
    v18 = *v10;
    v19 = *(v10 + 1);
    result = (*(*(a2 - 8) + 8))(&v10[*(TupleTypeMetadata2 + 48)], a2);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v17 = 0;
  }

  *a3 = v18;
  a3[1] = v19;
  a3[2] = v17;
  return result;
}

uint64_t sub_100235C90(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void), uint64_t *a5, uint64_t a6)
{
  v6 = a6;
  v10 = *(*(a6 + 8) + 8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v15 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  LOBYTE(a2) = *(v15 + a2 + 32);

  a4 = (*(v6 + 24))(v14, a5, v6);
  a5 = v12;
  v6 = *v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v6;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  result = sub_1000C28C4(v6);
  v6 = result;
  *a5 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(v6 + 16) > a1)
  {
    *(v6 + a1 + 32) |= a2;
    return a4(v14, 0);
  }

LABEL_11:
  __break(1u);
  return result;
}

char *sub_100235DAC(char *result)
{
  if (result)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v2 = *(*v1 + 16);
      v3 = v2 >= result;
      result = (v2 - result);
      if (v3)
      {
        return sub_1001AB41C(result, v2);
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100235DD4(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(_BYTE *, void), uint64_t *a5, uint64_t a6)
{
  v6 = a6;
  v10 = *(*(a6 + 8) + 8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v15 + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  LOBYTE(a2) = *(v15 + a2 + 32);

  a4 = (*(v6 + 24))(v14, a5, v6);
  a5 = v12;
  v6 = *v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v6;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  result = sub_1000C28C4(v6);
  v6 = result;
  *a5 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(v6 + 16) > a1)
  {
    *(v6 + a1 + 32) &= a2;
    return a4(v14, 0);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_100235EF0(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t (*a4)(void *, void), uint64_t *a5, uint64_t a6)
{
  v6 = a6;
  v10 = *(*(a6 + 8) + 8);
  dispatch thunk of RawRepresentable.rawValue.getter();
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (*(v14[0] + 16) <= a2)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  LOBYTE(a2) = *(v14[0] + a2 + 32);

  a4 = (*(v6 + 24))(v14, a5, v6);
  a5 = v12;
  v6 = *v12;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a5 = v6;
  if (result)
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_5;
    }

LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_9:
  result = sub_1000C28C4(v6);
  v6 = result;
  *a5 = result;
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_10;
  }

LABEL_5:
  if (*(v6 + 16) > a1)
  {
    *(v6 + a1 + 32) &= ~a2;
    return a4(v14, 0);
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t sub_10023600C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = v2[3];
  v4 = v2[4];
  v5 = v2[5];
  return sub_100235924(a1, v2[2], a2);
}

uint64_t ExtendableOptionSet.init<A>(bitOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v7 = v6;
  v34 = a2;
  v35 = a4;
  v33[1] = a6;
  v10 = *(a5 + 8);
  v11 = *(*(v10 + 24) + 16);
  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v13 = *(a3 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = v33 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v18 = v33 - v17;
  v19 = *(v13 + 16);
  v36 = a1;
  v19(v33 - v17, a1, a3);
  if (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || (swift_getAssociatedConformanceWitness(), dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)(), dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)(), v20 = *(*(v10 + 32) + 8), v21 = dispatch thunk of static Comparable.>= infix(_:_:)(), result = (*(v13 + 8))(v16, a3), (v21))
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 63)
    {
      goto LABEL_13;
    }

    v33[0] = v7;
    v37 = -1;
    v23 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v24 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v23)
    {
      if (v24 <= 64)
      {
        goto LABEL_11;
      }

      sub_1001EC2EC();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v25 = *(*(v10 + 32) + 8);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v13 + 8))(v16, a3);
      if ((v26 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v24 < 65)
      {
LABEL_12:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_13;
      }

      sub_1001EC2EC();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v27 = *(*(v10 + 32) + 8);
      v28 = dispatch thunk of static Comparable.< infix(_:_:)();
      (*(v13 + 8))(v16, a3);
      if ((v28 & 1) == 0)
      {
LABEL_13:
        v31 = dispatch thunk of BinaryInteger._lowWord.getter();
        v32 = *(v13 + 8);
        v32(v18, a3);
        ExtendableOptionSet.init(bitOffset:)(v31, v34, v35);
        return (v32)(v36, a3);
      }
    }

    __break(1u);
LABEL_11:
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v29 = *(*(v10 + 32) + 8);
    v30 = dispatch thunk of static Comparable.> infix(_:_:)();
    (*(v13 + 8))(v16, a3);
    if (v30)
    {
      goto LABEL_12;
    }

    goto LABEL_13;
  }

  __break(1u);
  return result;
}

uint64_t sub_100236478(void *a1, char a2, void *a3)
{
  v42 = a1[2];
  if (!v42)
  {
  }

  LOBYTE(v5) = a2;
  v7 = a1[4];
  v6 = a1[5];
  v8 = a1[6];
  v9 = *a3;

  v10 = v8;
  v11 = sub_1000102E8(v7, v6);
  v13 = v9[2];
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v17 = v12;
  if (v9[3] < v16)
  {
    sub_100190E74(v16, v5 & 1);
    v18 = *a3;
    v11 = sub_1000102E8(v7, v6);
    if ((v17 & 1) == (v19 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    v11 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v5)
  {
LABEL_7:
    if (v17)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v21 = v11;
  sub_1001977F8();
  v11 = v21;
  if (v17)
  {
LABEL_8:
    swift_allocError();
    swift_willThrow();
    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    goto LABEL_26;
  }

LABEL_11:
  v22 = *a3;
  *(*a3 + 8 * (v11 >> 6) + 64) |= 1 << v11;
  v23 = (v22[6] + 16 * v11);
  *v23 = v7;
  v23[1] = v6;
  *(v22[7] + 8 * v11) = v10;
  v24 = v22[2];
  v15 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v15)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    _StringGuts.grow(_:)(30);
    v40._object = 0x80000001004BD5D0;
    v40._countAndFlagsBits = 0xD00000000000001BLL;
    String.append(_:)(v40);
    _print_unlocked<A, B>(_:_:)();
    v41._countAndFlagsBits = 39;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
    return result;
  }

  v22[2] = v25;
  if (v42 != 1)
  {
    v5 = (a1 + 9);
    v26 = 1;
    while (v26 < a1[2])
    {
      v7 = *(v5 - 2);
      v6 = *(v5 - 1);
      v27 = *v5;
      v28 = *a3;

      v10 = v27;
      v29 = sub_1000102E8(v7, v6);
      v31 = v28[2];
      v32 = (v30 & 1) == 0;
      v15 = __OFADD__(v31, v32);
      v33 = v31 + v32;
      if (v15)
      {
        goto LABEL_23;
      }

      v17 = v30;
      if (v28[3] < v33)
      {
        sub_100190E74(v33, 1);
        v34 = *a3;
        v29 = sub_1000102E8(v7, v6);
        if ((v17 & 1) != (v35 & 1))
        {
          goto LABEL_5;
        }
      }

      if (v17)
      {
        goto LABEL_8;
      }

      v36 = *a3;
      *(*a3 + 8 * (v29 >> 6) + 64) |= 1 << v29;
      v37 = (v36[6] + 16 * v29);
      *v37 = v7;
      v37[1] = v6;
      *(v36[7] + 8 * v29) = v10;
      v38 = v36[2];
      v15 = __OFADD__(v38, 1);
      v39 = v38 + 1;
      if (v15)
      {
        goto LABEL_24;
      }

      ++v26;
      v36[2] = v39;
      v5 += 3;
      if (v42 == v26)
      {
      }
    }

    goto LABEL_25;
  }
}

__int128 *InfraStatistics.none.unsafeMutableAddressor()
{
  if (qword_10058AB30 != -1)
  {
    swift_once();
  }

  return &static InfraStatistics.none;
}

uint64_t TrafficClass.description.getter(unsigned __int8 a1)
{
  v1 = 0x756F72676B636142;
  v2 = 0x6563696F56;
  if (a1 != 2)
  {
    v2 = 0x6F65646956;
  }

  if (a1)
  {
    v1 = 0x6666452074736542;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_100236928@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P12TrafficClassO8rawValueACSgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_100236974()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *&aBk_0[8 * v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002369D0()
{
  v1 = *&aBk_0[8 * *v0];
  String.hash(into:)();
}

Swift::Int sub_100236A10()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = *&aBk_0[8 * v1];
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100236A78()
{
  v1 = 0x756F72676B636142;
  v2 = 0x6563696F56;
  if (*v0 != 2)
  {
    v2 = 0x6F65646956;
  }

  if (*v0)
  {
    v1 = 0x6666452074736542;
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

uint64_t TrafficType.description.getter(unsigned __int8 a1)
{
  v1 = 1701736270;
  v2 = 0x6E696D6165727453;
  if (a1 != 2)
  {
    v2 = 0x746164206B6C7542;
  }

  if (a1)
  {
    v1 = 0x6D6974206C616552;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100236C44()
{
  v1 = 1701736270;
  v2 = 0x6E696D6165727453;
  if (*v0 != 2)
  {
    v2 = 0x746164206B6C7542;
  }

  if (*v0)
  {
    v1 = 0x6D6974206C616552;
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

uint64_t TrafficState.description.getter(unsigned __int8 a1)
{
  v1 = 1701602377;
  v2 = 0x6E696D6165727453;
  v3 = 0x746164206B6C7542;
  if (a1 != 3)
  {
    v3 = 0x697469736E617254;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6D6974206C616552;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_100236D8C()
{
  v1 = *v0;
  v2 = 1701602377;
  v3 = 0x6E696D6165727453;
  v4 = 0x746164206B6C7542;
  if (v1 != 3)
  {
    v4 = 0x697469736E617254;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6D6974206C616552;
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

uint64_t InfrastructureQualityOfService.description.getter(char a1)
{
  v2._countAndFlagsBits = 0x2072656954;
  v2._object = 0xE500000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 10272;
  v4._object = 0xE200000000000000;
  String.append(_:)(v4);
  v5 = dbl_10049F668[a1];
  Double.write<A>(to:)();
  v6._countAndFlagsBits = 10533;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

Swift::Int sub_100236F34()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

Swift::Int sub_100236FAC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  return Hasher._finalize()();
}

uint64_t sub_100236FF0@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P30InfrastructureQualityOfServiceO8rawValueACSgSi_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t NANQualityOfService.description.getter(unsigned __int8 a1)
{
  if (a1 > 4u)
  {
    v8._countAndFlagsBits = 0x656D69546C616552;
    v8._object = 0xEA00000000002820;
    String.append(_:)(v8);
  }

  else
  {
    v2._countAndFlagsBits = 0x2072656954;
    v2._object = 0xE500000000000000;
    String.append(_:)(v2);
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    v4._countAndFlagsBits = 10272;
    v4._object = 0xE200000000000000;
    String.append(_:)(v4);
    v5 = qword_10049F688[a1];
  }

  Double.write<A>(to:)();
  v6._countAndFlagsBits = 10533;
  v6._object = 0xE200000000000000;
  String.append(_:)(v6);
  return 0;
}

double sub_10023727C()
{
  result = 0.0;
  xmmword_10059B6F8 = 0u;
  xmmword_10059B708 = 0u;
  xmmword_10059B6D8 = 0u;
  xmmword_10059B6E8 = 0u;
  xmmword_10059B6B8 = 0u;
  xmmword_10059B6C8 = 0u;
  static InfraStatistics.none = 0u;
  return result;
}

__n128 static InfraStatistics.none.getter@<Q0>(uint64_t a1@<X8>)
{
  if (qword_10058AB30 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = xmmword_10059B6F8;
  *(a1 + 64) = xmmword_10059B6E8;
  *(a1 + 80) = v1;
  *(a1 + 96) = xmmword_10059B708;
  v2 = xmmword_10059B6B8;
  *a1 = static InfraStatistics.none;
  *(a1 + 16) = v2;
  result = xmmword_10059B6D8;
  *(a1 + 32) = xmmword_10059B6C8;
  *(a1 + 48) = result;
  return result;
}

unint64_t _s7CoreP2P12TrafficClassO8rawValueACSgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100553A48, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t _s7CoreP2P30InfrastructureQualityOfServiceO8rawValueACSgSi_tcfC_0(unint64_t a1)
{
  if (a1 >= 5)
  {
    return 4;
  }

  else
  {
    return (0x302010004uLL >> (8 * a1));
  }
}

unint64_t sub_1002373F8()
{
  result = qword_100592010;
  if (!qword_100592010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592010);
  }

  return result;
}

unint64_t sub_100237480()
{
  result = qword_100592028;
  if (!qword_100592028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592028);
  }

  return result;
}

unint64_t sub_100237508()
{
  result = qword_100592040;
  if (!qword_100592040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592040);
  }

  return result;
}

unint64_t sub_10023758C()
{
  result = qword_100592058;
  if (!qword_100592058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592058);
  }

  return result;
}

unint64_t sub_1002375E0()
{
  result = qword_100592060;
  if (!qword_100592060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592060);
  }

  return result;
}

uint64_t sub_1002376B4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002376D4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

unint64_t sub_10023772C()
{
  result = qword_100592078;
  if (!qword_100592078)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100592078);
  }

  return result;
}

CoreP2P::NANAttribute::DeviceCapability::AnntenaCount __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> NANAttribute.DeviceCapability.AnntenaCount.init(txAnntenaCount:rxAnntenaCount:)(Swift::Int txAnntenaCount, Swift::Int rxAnntenaCount)
{
  v3.rawValue = v2;
  sub_10005DC58(&qword_10058B3C8, &qword_10047F4E0);
  inited = swift_initStackObject();
  *(inited + 24) = 4;
  v7 = sub_100238A18(txAnntenaCount, 0, 4uLL);
  if (v2)
  {
    *(inited + 16) = 0;
  }

  else
  {
    v8 = v7;
    *(inited + 32) = v7;
    v9 = sub_100238A18(rxAnntenaCount, 4, 4uLL);
    if ((v9 & ~v8) != 0)
    {
      v11 = v9;
    }

    else
    {
      v11 = 0;
    }

    v3.rawValue = v11 | v8;
    swift_setDeallocating();
  }

  return v3;
}

void *sub_100237864(__int16 a1, uint64_t a2)
{
  v3 = (HIBYTE(a1) - a1);
  v14 = HIBYTE(a1);
  if (HIBYTE(a1) < a1)
  {
    v4 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v4 = (HIBYTE(a1) - a1);
  }

  if (!v4)
  {
    return _swiftEmptyArrayStorage;
  }

  v6 = a1;
  result = sub_1000C04C4(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    LODWORD(v8) = v14 - v6;
    if (v14 >= v6)
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    for (i = -v8; ; ++i)
    {
      v10 = *(a2 + 32);
      sub_100031694(a2, *(a2 + 24));
      sub_100285984();
      result = UnkeyedDecodingContainer.inferredDecode<A>()();
      if (v2)
      {

        return _swiftEmptyArrayStorage;
      }

      v15 = *v16;
      HIWORD(v15) = *&v16[6];
      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        result = sub_1000C04C4((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      v13[4] = v15;
      *(v13 + 38) = *&v16[6];
      if (v14 < v6)
      {
        break;
      }

      if (!i)
      {
        goto LABEL_20;
      }

      if (!--v3)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
  }

  __break(1u);
  return result;
}

Swift::Int sub_1002379F4(uint64_t a1)
{
  Hasher.init(_seed:)();
  v2 = *(a1 + 16);
  Hasher._combine(_:)(v2);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3++;
      Hasher._combine(_:)(v4);
      --v2;
    }

    while (v2);
  }

  return Hasher._finalize()();
}

Swift::Int sub_100237A68()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_100237B90(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 32);
    do
    {
      v5 = *v4++;
      Hasher._combine(_:)(v5);
      --v3;
    }

    while (v3);
  }

  return Hasher._finalize()();
}

BOOL sub_100237BFC(unint64_t a1, __int16 a2, uint64_t a3, __int16 a4)
{
  if ((a2 & 0x100) == 0)
  {
    return (a4 & 0x100) == 0 && a1 == a3;
  }

  if ((a4 & 0x100) == 0)
  {
    return 0;
  }

  result = 0;
  if (a1 == a3 && WORD1(a1) == WORD1(a3) && BYTE4(a1) == BYTE4(a3))
  {
    if (a2)
    {
      if (a4)
      {
        return 1;
      }
    }

    else if ((a4 & 1) == 0 && !((a3 ^ a1) >> 48))
    {
      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t sub_100237C88(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v6 = a6;
  if ((a3 & 0x10000) != 0)
  {
    if ((a6 & 0x10000) != 0)
    {
      sub_100277790(a1, a2, a3, 1);
      sub_100277790(a4, a5, v6, 1);
      sub_100277790(a1, a2, a3, 1);
      if ((_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a1, a2, a4, a5) & 1) != 0 && a3 == v6)
      {
        sub_1001842C4(a1, a2, a3, 1);
        sub_1001842C4(a4, a5, v6, 1);
        LODWORD(v6) = ((v6 & 0x100) == 0) ^ ((a3 & 0x100) >> 8);
      }

      else
      {
        sub_1001842C4(a4, a5, v6, 1);
        sub_1001842C4(a1, a2, a3, 1);
        LOBYTE(v6) = 0;
      }

      v12 = a1;
      v13 = a2;
      v14 = a3;
      v15 = 1;
      goto LABEL_14;
    }
  }

  else if ((a6 & 0x10000) == 0)
  {
    sub_100277790(a1, a2, a3, 0);
    sub_100277790(a4, a5, v6, 0);
    sub_100277790(a1, a2, a3, 0);
    if (_s7CoreP2P15AWDLActionFrameV12SyncTreePathV23__derived_struct_equalsySbAE_AEtFZ_0(a1, a4))
    {
      sub_1001842C4(a1, a2, a3, 0);
      sub_1001842C4(a4, a5, v6, 0);
      LOBYTE(v6) = a5 ^ a2 ^ 1;
    }

    else
    {
      sub_1001842C4(a4, a5, v6, 0);
      sub_1001842C4(a1, a2, a3, 0);
      LOBYTE(v6) = 0;
    }

    v12 = a1;
    v13 = a2;
    v14 = a3;
    v15 = 0;
LABEL_14:
    sub_1001842C4(v12, v13, v14, v15);
    return v6 & 1;
  }

  sub_100277790(a1, a2, a3, BYTE2(a3) & 1);
  sub_100277790(a4, a5, v6, BYTE2(v6) & 1);
  sub_1001842C4(a1, a2, a3, BYTE2(a3) & 1);
  sub_1001842C4(a4, a5, v6, BYTE2(v6) & 1);
  LOBYTE(v6) = 0;
  return v6 & 1;
}

uint64_t sub_100237EE0(uint64_t *a1, uint64_t a2)
{
  v3 = a2;
  v5 = *v2;
  v13 = *v2;
  v6 = *(*v2 + 16);
  v7 = *(a2 + 16);
  if (v6 <= v7)
  {

    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_100235DAC((v6 - v7));
    v5 = v13;
    v6 = *(v13 + 16);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v8 = 0;
  while (v7 != v8)
  {
    v9 = *(v3 + 32 + v8);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000C28C4(v5);
      v5 = result;
    }

    if (v8 >= *(v5 + 16))
    {
      __break(1u);
      return result;
    }

    *(v5 + v8++ + 32) &= v9;
    if (v6 == v8)
    {
      break;
    }
  }

LABEL_11:
  v11 = sub_1000C2E80(v5, v3);
  if (v11)
  {
    v3 = v5;
  }

  else
  {

    sub_10029F424(v12);
  }

  *a1 = v3;
  return (v11 & 1) == 0;
}

uint64_t sub_100238038(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *v2;
  v13 = *v2;
  v6 = *(*v2 + 16);
  v7 = *(a1 + 16);
  if (v6 <= v7)
  {
    swift_bridgeObjectRetain_n();
    v8 = v5;
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  else
  {
    swift_bridgeObjectRetain_n();
    sub_100235DAC((v6 - v7));
    v8 = v13;
    v6 = *(v13 + 16);
    if (!v6)
    {
      goto LABEL_11;
    }
  }

  v9 = 0;
  while (v7 != v9)
  {
    v10 = *(a1 + 32 + v9);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000C28C4(v8);
      v8 = result;
    }

    if (v9 >= *(v8 + 16))
    {
      __break(1u);
      return result;
    }

    *(v8 + v9++ + 32) &= v10;
    if (v6 == v9)
    {
      break;
    }
  }

LABEL_11:

  a2(v12);

  if (sub_1000C2E80(v8, _swiftEmptyArrayStorage))
  {

    return 0;
  }

  return v8;
}

void sub_100238184(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2);
  v5 = *(a1 + 16);
  if (v4)
  {
    for (i = 0; i != v4; ++i)
    {
      if (v5 == i)
      {
        break;
      }

      v7 = *(a1 + 32 + i);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_1000C28C4(v3);
      }

      if (i >= *(v3 + 2))
      {
        __break(1u);
        return;
      }

      v3[i + 32] &= ~v7;
      *v1 = v3;
    }

    v8 = *(v3 + 2);
    if (v8 >= v5)
    {
      return;
    }
  }

  else
  {
    v8 = 0;
    if (!v5)
    {
      return;
    }
  }

  sub_100234FC0(v9, a1 + 32, v8, (2 * v5) | 1);
}

uint64_t sub_100238290(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);

  if (!v4)
  {
    v10 = 0;
LABEL_13:
    v7 = v2;
LABEL_14:
    if (v10 >= v5)
    {
    }

    else
    {
      sub_100234FC0(a1, a1 + 32, v10, (2 * v5) | 1);
    }

    v12 = *(v7 + 16);
    if (v4 <= v12)
    {

      v13 = *(v2 + 16);
      if (!v13)
      {
LABEL_27:

        return v2;
      }
    }

    else
    {

      sub_100235DAC((v4 - v12));
      v13 = *(v2 + 16);
      if (!v13)
      {
        goto LABEL_27;
      }
    }

    v14 = 0;
    while (v12 != v14)
    {
      v15 = *(v7 + 32 + v14);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000C28C4(v2);
        v2 = result;
      }

      if (v14 >= *(v2 + 16))
      {
        goto LABEL_29;
      }

      *(v2 + v14++ + 32) &= v15;
      if (v13 == v14)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_27;
  }

  if (!v5)
  {
    v10 = v4;
    goto LABEL_13;
  }

  v6 = 0;
  v7 = v2;
  while (1)
  {
    v8 = *(a1 + 32 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000C28C4(v7);
      v7 = result;
    }

    v10 = *(v7 + 16);
    if (v6 >= v10)
    {
      break;
    }

    *(v7 + v6 + 32) &= ~v8;
    if (v4 - 1 != v6 && v5 - 1 != v6++)
    {
      continue;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_100238468(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v4 = *(a2 + 16);
  v5 = *(a1 + 16);
  if (v4 <= v5)
  {

    if (!v4)
    {
      goto LABEL_11;
    }
  }

  else
  {

    sub_100235DAC((v4 - v5));
    v2 = a2;
    v4 = *(a2 + 16);
    if (!v4)
    {
      goto LABEL_11;
    }
  }

  v6 = 0;
  v7 = a1 + 32;
  while (v5 != v6)
  {
    v8 = *(v7 + v6);
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_1000C28C4(v2);
      v2 = result;
    }

    if (v6 >= *(v2 + 16))
    {
      __break(1u);
      return result;
    }

    *(v2 + v6++ + 32) &= v8;
    if (v4 == v6)
    {
      break;
    }
  }

LABEL_11:
  v10 = sub_1000C2E80(v2, _swiftEmptyArrayStorage);

  return v10 & 1;
}

uint64_t sub_100238588(uint64_t a1, void (*a2)(uint64_t))
{
  v5 = *v2;
  v6 = *(*v2 + 16);
  v7 = *(a1 + 16);
  swift_bridgeObjectRetain_n();

  v15 = a2;
  if (v6 && v7)
  {
    v8 = 0;
    v9 = v6 - 1;
    v10 = v5;
    while (1)
    {
      v11 = *(a1 + 32 + v8);
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1000C28C4(v10);
        v10 = result;
      }

      v6 = *(v10 + 16);
      if (v8 >= v6)
      {
        break;
      }

      *(v10 + v8 + 32) &= ~v11;
      if (v9 != v8 && v7 - 1 != v8++)
      {
        continue;
      }

      goto LABEL_12;
    }

    __break(1u);
  }

  else
  {
    v10 = v5;
LABEL_12:
    if (v6 < v7)
    {

      sub_100234FC0(v14, a1 + 32, v6, (2 * v7) | 1);
    }

    v15(v10);
  }

  return result;
}

unint64_t sub_1002386F4(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = result;
    v2 = result >> 3;
    v3 = (result >> 3) + 1;
    result = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(result + 16) = v3;
    *(result + 32) = 0;
    v4 = result + 32;
    if (v1 >= 8)
    {
      v5 = result;
      bzero((result + 33), v2);
      result = v5;
    }

    *(v4 + v2) |= 1 << (v1 & 7);
  }

  return result;
}

__n128 NANAttribute.CustomDeviceInformation.CustomAttributes.init()@<Q0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 1;
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v3 = v2[6];
  v4 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[7]) = xmmword_100483C50;
  *(a1 + v2[8]) = xmmword_100483C50;
  *(a1 + v2[9]) = xmmword_100483C50;
  v5 = v2[10];
  v6 = type metadata accessor for UUID();
  (*(*(v6 - 8) + 56))(a1 + v5, 1, 1, v6);
  *(a1 + v2[11]) = _swiftEmptyArrayStorage;
  v7 = v2[12];
  v8 = type metadata accessor for NANInternetSharingStatistics.Requester();
  (*(*(v8 - 8) + 56))(a1 + v7, 1, 1, v8);
  *(a1 + v2[13]) = 0;
  v9 = (a1 + v2[14]);
  *v9 = 0;
  v9[1] = 0;
  v9[2] = 0;
  result = xmmword_100483C50;
  *(a1 + v2[15]) = xmmword_100483C50;
  return result;
}