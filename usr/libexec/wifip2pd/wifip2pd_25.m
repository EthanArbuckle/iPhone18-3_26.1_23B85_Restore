uint64_t sub_1001F03AC(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  if ((v6 & 0x2000000000000000) != 0)
  {
    if (v9 & 0x2000000000000000) != 0 && v5 == v8 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v6 & 0xDFFFFFFFFFFFFFFFLL, v7, v9 & 0xDFFFFFFFFFFFFFFFLL))
    {
      return 1;
    }
  }

  else if (v9 & 0x2000000000000000) == 0 && ((v8 ^ v5) & 1) == 0 && (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v4, v6, v7, v9))
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1001F0428(__int16 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *a1;
  v9 = *(a1 + 2);
  v10 = a1[12];
  v11 = *(a1 + 4);
  v12 = *(a1 + 40);
  sub_10005DC58(&qword_10058D640, &unk_100488520);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100480F30;
  *(v13 + 32) = v8;
  *(v13 + 34) = v9;
  *(v13 + 40) = *(a1 + 4);
  *(v13 + 56) = v10;
  *(v13 + 64) = v11;
  *(v13 + 72) = v12;
  *(v13 + 88) = 0;
  *(v13 + 96) = a2;
  *(v13 + 152) = 1;
  v14 = *(a3 + 16);
  *(v13 + 160) = *a3;
  *(v13 + 176) = v14;
  *(v13 + 192) = *(a3 + 32);
  *(v13 + 208) = *(a3 + 48);
  *(v13 + 216) = 6;
  v16 = v13;
  sub_1002353A8(a4);
  return v16;
}

uint64_t sub_1001F0534(uint64_t a1)
{
  v2 = sub_1001F4F80();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F0570(uint64_t a1)
{
  v2 = sub_1001F4F80();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1001F0634@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001F45DC(a1, &qword_100590F68, &qword_100497A90, sub_1001F4F80);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001F06A8(uint64_t a1)
{
  v2 = sub_1001F4FD4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F06E4(uint64_t a1)
{
  v2 = sub_1001F4FD4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F0764(void *a1, uint64_t a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = sub_10005DC58(a3, a4);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v15 - v11;
  v13 = a1[4];
  sub_100029B34(a1, a1[3]);
  a5();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[3] = a2;
  sub_10005DC58(&unk_100597510, &qword_100495350);
  sub_1001F7DF8(&qword_100590C70, sub_1001F4E30);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

void *sub_1001F0940@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001F45DC(a1, &qword_100590F60, &qword_100497A88, sub_1001F4FD4);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

uint64_t sub_1001F09B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
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

uint64_t sub_1001F0A3C(uint64_t a1)
{
  v2 = sub_1001F5028();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001F0A78(uint64_t a1)
{
  v2 = sub_1001F5028();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1001F0AB8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v10[0] = *v3;
        v10[1] = v5;
        v11[0] = v3[2];
        *(v11 + 9) = *(v3 + 41);
        v6 = v4[1];
        v12[0] = *v4;
        v12[1] = v6;
        v13[0] = v4[2];
        *(v13 + 9) = *(v4 + 41);
        sub_1000C2DC8(v10, v9);
        sub_1000C2DC8(v12, v9);
        v7 = _s7CoreP2P27IEEE80211InformationElementO21__derived_enum_equalsySbAC_ACtFZ_0(v10, v12);
        sub_1000C2E24(v12);
        sub_1000C2E24(v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

Swift::Int sub_1001F0BF4(uint64_t a1)
{
  Hasher.init(_seed:)();
  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(v3, a1);
  return Hasher._finalize()();
}

Swift::Int sub_1001F0C80()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001F0CC8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(v3, v1);
  return Hasher._finalize()();
}

void *sub_1001F0D0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1001F45DC(a1, &qword_100590F48, &qword_100497A80, sub_1001F5028);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void IEEE80211Frame.Management.Authentication.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v7 = (((a4 & 0x1000000000000000) != 0) | (2 * a5));
  if (v7 <= 1)
  {
    v10 = v7 != 0;
  }

  else
  {
    if (v7 != 2)
    {
      if (v7 == 3)
      {
        Hasher._combine(_:)(3uLL);
        if ((a4 & 0x2000000000000000) != 0)
        {
          Hasher._combine(_:)(1uLL);
          v9 = a2;
        }

        else
        {
          Hasher._combine(_:)(0);
          v9 = (a2 & 1) + 19;
        }

        Hasher._combine(_:)(v9);

        Data.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(4uLL);
        Hasher._combine(_:)(a2);
        Hasher._combine(_:)(WORD1(a2));
        Hasher._combine(_:)(word_100497ABA[a2 << 24 >> 56]);
      }

      return;
    }

    v10 = 2;
  }

  Hasher._combine(_:)(v10);

  _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(a1, a2);
}

Swift::Int IEEE80211Frame.Management.Authentication.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  Hasher.init(_seed:)();
  IEEE80211Frame.Management.Authentication.hash(into:)(v9, a1, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int sub_1001F0F14()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  IEEE80211Frame.Management.Authentication.hash(into:)(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

Swift::Int sub_1001F0F88()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  Hasher.init(_seed:)();
  IEEE80211Frame.Management.Authentication.hash(into:)(v6, v1, v2, v3, v4);
  return Hasher._finalize()();
}

uint64_t sub_1001F0FE8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1001F5414(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t IEEE80211Frame.Management.Authentication.init(from:)(uint64_t *a1)
{
  result = sub_1001F5414(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t IEEE80211Frame.Management.Authentication.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v9 = (((a4 & 0x1000000000000000) != 0) | (2 * a5));
  if (v9 <= 1)
  {
    if (((a4 & 0x1000000000000000) != 0) | (2 * a5))
    {
      sub_100031694(v11, v12);
      sub_1001F5830();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      if (!v5)
      {
        sub_100031694(v11, v12);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        sub_100031694(v11, v12);
        sub_1001F5884();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        sub_100031694(v11, v12);
        sub_1001F59D4();
        goto LABEL_28;
      }
    }

    else
    {
      sub_100031694(v11, v12);
      sub_1001F5830();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      if (!v5)
      {
        sub_100031694(v11, v12);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        sub_100031694(v11, v12);
        sub_1001F5884();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        sub_100031694(v11, v12);
        sub_1001F5A28();
        goto LABEL_28;
      }
    }
  }

  else if (v9 == 2)
  {
    sub_100031694(v11, v12);
    sub_1001F5830();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (!v5)
    {
      sub_100031694(v11, v12);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v11, v12);
      sub_1001F5884();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_100031694(v11, v12);
      sub_1001F5980();
      goto LABEL_28;
    }
  }

  else if (v9 == 3)
  {
    sub_100031694(v11, v12);
    sub_1001F5830();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (!v5)
    {
      if ((a4 & 0x2000000000000000) != 0)
      {
        sub_100031694(v11, v12);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        sub_100031694(v11, v12);
        sub_1001F5884();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        sub_100031694(v11, v12);
        sub_1001F58D8();
      }

      else
      {
        sub_100031694(v11, v12);
        dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
        sub_100031694(v11, v12);
        sub_1001F5884();
        dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
        sub_100031694(v11, v12);
        sub_1001F592C();
      }

LABEL_28:
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    }
  }

  else
  {
    sub_100031694(v11, v12);
    sub_1001F5830();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    if (!v5)
    {
      sub_100031694(v11, v12);
      dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
      sub_100031694(v11, v12);
      sub_1001F5884();
      goto LABEL_28;
    }
  }

  return sub_100002A00(v11);
}

Swift::Int sub_1001F16CC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x7F7E0907060504uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_1001F176C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x7F7E0907060504uLL >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_1001F1840()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(9u);
  return Hasher._finalize()();
}

Swift::Int sub_1001F18AC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(9u);
  return Hasher._finalize()();
}

void IEEE80211Frame.Management.ActionFrame.Contents.hash(into:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 >> 30)
  {
    if (a2 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);

      AWDLActionFrame.hash(into:)(a1, a2 & 0xFFFFFFFF00FF01FFLL, a3, a4);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);

    NANActionFrame.hash(into:)(a1, a2, a3);
  }
}

Swift::Int IEEE80211Frame.Management.ActionFrame.Contents.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);
      AWDLActionFrame.hash(into:)(v7, a1 & 0xFFFFFFFF00FF01FFLL, a2, a3);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    NANActionFrame.hash(into:)(v7, a1, a2);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1001F1B0C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v2 >> 30)
  {
    if (v2 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);
      AWDLActionFrame.hash(into:)(v5, v2 & 0xFFFFFFFF00FF01FFLL, v1, v3);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    NANActionFrame.hash(into:)(v5, v2, v1);
  }

  return Hasher._finalize()();
}

void sub_1001F1BB4(__int128 *a1)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = *v1 >> 30;
  if (v5)
  {
    if (v5 == 1)
    {
      v6 = v1[2];
      Hasher._combine(_:)(2uLL);

      AWDLActionFrame.hash(into:)(a1, v4 & 0xFFFFFFFF00FF01FFLL, v3, v6);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);

    NANActionFrame.hash(into:)(a1, v4, v3);
  }
}

Swift::Int sub_1001F1C8C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v2 >> 30)
  {
    if (v2 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);
      AWDLActionFrame.hash(into:)(v5, v2 & 0xFFFFFFFF00FF01FFLL, v1, v3);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    NANActionFrame.hash(into:)(v5, v2, v1);
  }

  return Hasher._finalize()();
}

uint64_t IEEE80211Frame.Management.ActionFrame.contents.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = v3[2];
  v8 = v3[3];
  result = sub_100048C4C(v3[1]);
  v3[1] = a1;
  v3[2] = a2;
  v3[3] = a3;
  return result;
}

uint64_t IEEE80211Frame.Management.ActionFrame.nanActionFrame.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC0000000) != 0)
  {
    return 0;
  }

  v2 = a2;
  sub_1001F5A7C(a2);
  return v2;
}

uint64_t IEEE80211Frame.Management.ActionFrame.nanActionFrame.setter(uint64_t result, uint64_t a2)
{
  if (a2)
  {
    if ((v2[1] & 0xC0000000) != 0)
    {
    }

    else
    {
      v3 = result;
      v5 = v2[2];
      v4 = v2[3];
      result = sub_100048C4C(v2[1]);
      v2[1] = v3;
      v2[2] = a2;
      v2[3] = 0;
    }
  }

  return result;
}

uint64_t (*IEEE80211Frame.Management.ActionFrame.nanActionFrame.modify(void *a1))(unsigned __int8 *a1, char a2)
{
  a1[2] = v1;
  v3 = *(v1 + 8);
  if ((v3 & 0xC0000000) != 0)
  {
    v4 = 0;
    v5 = 0;
  }

  else
  {
    v7 = v1 + 16;
    v5 = *(v1 + 16);
    v6 = *(v7 + 8);
    v4 = v3;
    sub_1001F5A7C(v3);
  }

  *a1 = v4;
  a1[1] = v5;
  return sub_1001F1F18;
}

uint64_t sub_1001F1F18(unsigned __int8 *a1, char a2)
{
  result = *(a1 + 1);
  if (a2)
  {
    if (result)
    {
      v4 = *(a1 + 2);
      v5 = v4[1];
      if ((v5 & 0xC0000000) == 0)
      {
        v6 = *a1;
        v7 = v4[2];
        v8 = v4[3];
        v9 = result;

        sub_100048C4C(v5);
        v4[1] = v6;
        v4[2] = v9;
        v4[3] = 0;
      }
    }
  }

  else
  {
    if (!result)
    {
      return result;
    }

    v10 = *(a1 + 2);
    if ((v10[1] & 0xC0000000) == 0)
    {
      v11 = *a1;
      v12 = v10[2];
      v13 = v10[3];
      v14 = result;
      result = sub_100048C4C(v10[1]);
      v10[1] = v11;
      v10[2] = v14;
      v10[3] = 0;
      return result;
    }
  }
}

unint64_t IEEE80211Frame.Management.ActionFrame.awdlActionFrame.getter(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0xC0000000) != 0x40000000)
  {
    return 0;
  }

  v2 = a2 & 0xFFFFFFFF00FF01FFLL;
  sub_1001F5A7C(a2);
  return v2;
}

uint64_t IEEE80211Frame.Management.ActionFrame.awdlActionFrame.setter(uint64_t result, unsigned int a2, uint64_t a3)
{
  if (a3)
  {
    if ((v3[1] & 0xC0000000) == 0x40000000)
    {
      v4 = a2;
      v5 = result & 0xFFFFFFFF00FF01FFLL | 0x40000000;
      v6 = v3[2];
      v7 = v3[3];
      result = sub_100048C4C(v3[1]);
      v3[1] = v5;
      v3[2] = v4;
      v3[3] = a3;
    }

    else
    {
    }
  }

  return result;
}

uint64_t (*IEEE80211Frame.Management.ActionFrame.awdlActionFrame.modify(unint64_t *a1))(uint64_t result, char a2)
{
  a1[3] = v1;
  v3 = v1[1];
  if ((v3 & 0xC0000000) == 0x40000000)
  {
    v4 = v1[2];
    v5 = v1[3];
    v6 = v3 & 0xFFFFFFFF00FF01FFLL;
    v7 = v4;
    sub_1001F5A7C(v3);
  }

  else
  {
    v6 = 0;
    v7 = 0;
    v5 = 0;
  }

  *a1 = v6;
  a1[1] = v7;
  a1[2] = v5;
  return sub_1001F217C;
}

uint64_t sub_1001F217C(uint64_t result, char a2)
{
  v2 = *(result + 16);
  if (a2)
  {
    if (v2)
    {
      v3 = *(result + 24);
      v4 = v3[1];
      if ((v4 & 0xC0000000) == 0x40000000)
      {
        v5 = *(result + 8);
        v6 = *result & 0xFFFFFFFF00FF01FFLL | 0x40000000;
        v7 = v3[2];
        v8 = v3[3];
        v9 = *(result + 16);

        sub_100048C4C(v4);
        v3[1] = v6;
        v3[2] = v5;
        v3[3] = v2;
      }
    }
  }

  else
  {
    if (!v2)
    {
      return result;
    }

    v10 = *(result + 24);
    if ((v10[1] & 0xC0000000) == 0x40000000)
    {
      v11 = *(result + 8);
      v12 = *result & 0xFFFFFFFF00FF01FFLL | 0x40000000;
      v13 = v10[2];
      v14 = v10[3];
      result = sub_100048C4C(v10[1]);
      v10[1] = v12;
      v10[2] = v11;
      v10[3] = v2;
      return result;
    }
  }
}

void IEEE80211Frame.Management.ActionFrame.hash(into:)(__int128 *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Hasher._combine(_:)(0x7F7E0907060504uLL >> (8 * a2));
  if (a3 >> 30)
  {
    if (a3 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);

      AWDLActionFrame.hash(into:)(a1, a3 & 0xFFFFFFFF00FF01FFLL, a4, a5);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);

    NANActionFrame.hash(into:)(a1, a3, a4);
  }
}

Swift::Int IEEE80211Frame.Management.ActionFrame.hashValue.getter(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x7F7E0907060504uLL >> (8 * a1));
  if (a2 >> 30)
  {
    if (a2 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);
      AWDLActionFrame.hash(into:)(v9, a2 & 0xFFFFFFFF00FF01FFLL, a3, a4);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    NANActionFrame.hash(into:)(v9, a2, a3);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1001F243C()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x7F7E0907060504uLL >> (8 * v1));
  if (v3 >> 30)
  {
    if (v3 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);
      AWDLActionFrame.hash(into:)(v6, v3 & 0xFFFFFFFF00FF01FFLL, v2, v4);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    NANActionFrame.hash(into:)(v6, v3, v2);
  }

  return Hasher._finalize()();
}

void sub_1001F2510(__int128 *a1)
{
  v2 = v1;
  v5 = *(v2 + 8);
  v4 = *(v2 + 16);
  v6 = *(v2 + 24);
  Hasher._combine(_:)(0x7F7E0907060504uLL >> (8 * *v2));
  if (v5 >> 30)
  {
    if (v5 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);

      AWDLActionFrame.hash(into:)(a1, v5 & 0xFFFFFFFF00FF01FFLL, v4, v6);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);

    NANActionFrame.hash(into:)(a1, v5, v4);
  }
}

Swift::Int sub_1001F25F0()
{
  v1 = *v0;
  v3 = *(v0 + 1);
  v2 = *(v0 + 2);
  v4 = *(v0 + 3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0x7F7E0907060504uLL >> (8 * v1));
  if (v3 >> 30)
  {
    if (v3 >> 30 == 1)
    {
      Hasher._combine(_:)(2uLL);
      AWDLActionFrame.hash(into:)(v6, v3 & 0xFFFFFFFF00FF01FFLL, v2, v4);
    }

    else
    {
      Hasher._combine(_:)(0);
    }
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    NANActionFrame.hash(into:)(v6, v3, v2);
  }

  return Hasher._finalize()();
}

uint64_t sub_1001F26C0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10003132C(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1001F271C(void *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  return IEEE80211Frame.Management.ActionFrame.encode(to:)(a1, *v1, v1[1]);
}

uint64_t IEEE80211Frame.Management.ActionFrame.encode(to:)(void *a1, uint64_t a2, unsigned int a3)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v8, v9);
  sub_1001F5A9C();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v3)
  {
    if (a3 >> 30)
    {
      if (a3 >> 30 != 1)
      {
        sub_10000B02C();
        swift_allocError();
        *v7 = xmmword_10047CE70;
        *(v7 + 16) = 2;
        swift_willThrow();
        return sub_100002A00(v8);
      }

      sub_100031694(v8, v9);
      sub_1001F5AF0();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_100031694(v8, v9);
      sub_1001F5B44();
    }

    else
    {
      sub_100031694(v8, v9);
      sub_1001F5B98();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_100031694(v8, v9);
      sub_1001F5AF0();
      dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
      sub_100031694(v8, v9);
      sub_1001F5BEC();
    }

    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v8);
}

void IEEE80211Frame.Management.hash(into:)(__int128 *a1)
{
  v2 = v1;
  v5 = *v2;
  v4 = *(v2 + 8);
  v6 = *(v2 + 16);
  v7 = *(v2 + 24);
  if (*(v2 + 32) > 1u)
  {
    if (*(v2 + 32) == 2)
    {
      v8 = *(v2 + 31);
      v9 = *(v2 + 29);
      v10 = *(v2 + 25);
      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(0x7F7E0907060504uLL >> (8 * v5));
      if (v4 >> 30)
      {
        if (v4 >> 30 == 1)
        {
          Hasher._combine(_:)(2uLL);

          AWDLActionFrame.hash(into:)(a1, v4 & 0xFFFFFFFF00FF01FFLL, v6, v7 | ((v10 | ((v9 | (v8 << 16)) << 32)) << 8));
        }

        else
        {
          Hasher._combine(_:)(0);
        }
      }

      else
      {
        Hasher._combine(_:)(1uLL);

        NANActionFrame.hash(into:)(a1, v4, v6);
      }
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      Hasher._combine(_:)(byte_100497B36[v5]);
    }
  }

  else if (*(v2 + 32))
  {
    Hasher._combine(_:)(1uLL);

    IEEE80211Frame.Management.Authentication.hash(into:)(a1, v5, v4, v6, v7);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v5);
    Hasher._combine(_:)(v4);
    Hasher._combine(_:)(WORD1(v4));

    _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO11PASNConfirmV4hash4intoys6HasherVz_tF_0(a1, v6);
  }
}

Swift::Int IEEE80211Frame.Management.hashValue.getter()
{
  Hasher.init(_seed:)();
  IEEE80211Frame.Management.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1001F2C0C()
{
  Hasher.init(_seed:)();
  IEEE80211Frame.Management.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1001F2C48(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v6 = *(a1 + 32);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v8 = *(a2 + 32);
  return static IEEE80211Frame.Management.__derived_enum_equals(_:_:)(v5, v7) & 1;
}

__n128 IEEE80211Frame.init(header:contents:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  result = *a4;
  v6 = *(a4 + 16);
  *(a5 + 24) = *a4;
  *(a5 + 40) = v6;
  *(a5 + 56) = *(a4 + 32);
  return result;
}

double IEEE80211Frame.init(from:)@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1001F507C(a1, v6);
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

uint64_t IEEE80211Frame.encode(to:)(void *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  v8 = *v1;
  v12 = *(v1 + 2);
  sub_100031694(v15, v16);
  sub_1001F5C40();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v2)
  {
    v4 = *(v1 + 56);
    if (v4 > 0xFC)
    {
LABEL_3:
      sub_10000B02C();
      swift_allocError();
      *v5 = xmmword_10047CE70;
      *(v5 + 16) = 2;
      swift_willThrow();
      return sub_100002A00(v15);
    }

    v6 = *(v1 + 24);
    if (*(v1 + 56) > 1u)
    {
      if (v4 != 2)
      {
        goto LABEL_3;
      }

      v9 = *(v1 + 24);
      *v11 = *(v1 + 25);
      *&v11[15] = *(v1 + 40);
      sub_100031694(v15, v16);
      sub_1001F5CE8();
    }

    else
    {
      v10 = *(v1 + 25);
      if (*(v1 + 56))
      {
        v14 = *(v1 + 41);
        sub_100031694(v15, v16);
        sub_1001F5C94();
      }

      else
      {
        v13 = *(v1 + 5);
        sub_100031694(v15, v16);
        sub_1001F5D3C();
      }
    }

    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  }

  return sub_100002A00(v15);
}

void IEEE80211Frame.hash(into:)(__int128 *a1)
{
  IEEE80211Frame.Header.hash(into:)(a1, *v1, *(v1 + 8), *(v1 + 16));
  v3 = *(v1 + 56);
  switch(v3)
  {
    case 253:
      v4 = 3;
      goto LABEL_7;
    case 254:
      v4 = 2;
      goto LABEL_7;
    case 255:
      v4 = 1;
LABEL_7:
      Hasher._combine(_:)(v4);
      return;
  }

  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  Hasher._combine(_:)(0);
  IEEE80211Frame.Management.hash(into:)(a1);
}

Swift::Int IEEE80211Frame.hashValue.getter()
{
  Hasher.init(_seed:)();
  v1 = *(v0 + 2);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  v6 = *(v0 + 8);
  v7 = *(v0 + 9);
  v8 = *(v0 + 10);
  v13 = *(v0 + 11);
  v14 = *(v0 + 12);
  v15 = *(v0 + 13);
  v16 = *(v0 + 14);
  v17 = *(v0 + 15);
  v18 = *(v0 + 16);
  v19 = *(v0 + 17);
  v20 = *(v0 + 18);
  v21 = *(v0 + 19);
  v22 = *(v0 + 20);
  v23 = *(v0 + 21);
  v24 = *(v0 + 22);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(v21);
  Hasher._combine(_:)(v22);
  Hasher._combine(_:)(v23);
  Hasher._combine(_:)(v24);
  v9 = *(v0 + 56);
  switch(v9)
  {
    case 253:
      v10 = 3;
      break;
    case 254:
      v10 = 2;
      break;
    case 255:
      v10 = 1;
      break;
    default:
      v11 = *(v0 + 40);
      *&v25[9] = *(v0 + 24);
      *&v25[11] = v11;
      v26 = v9;
      Hasher._combine(_:)(0);
      IEEE80211Frame.Management.hash(into:)(v25);
      return Hasher._finalize()();
  }

  Hasher._combine(_:)(v10);
  return Hasher._finalize()();
}

void sub_1001F31C4(__int128 *a1)
{
  v5 = *(v1 + 24);
  v6 = *(v1 + 40);
  v3 = *(v1 + 56);
  IEEE80211Frame.Header.hash(into:)(a1, *v1, *(v1 + 8), *(v1 + 16));
  switch(v3)
  {
    case 253:
      v4 = 3;
      goto LABEL_7;
    case 254:
      v4 = 2;
      goto LABEL_7;
    case 255:
      v4 = 1;
LABEL_7:
      Hasher._combine(_:)(v4);
      return;
  }

  Hasher._combine(_:)(0);
  IEEE80211Frame.Management.hash(into:)(a1);
}

Swift::Int sub_1001F3270()
{
  v7 = *(v0 + 24);
  v8 = *(v0 + 40);
  v1 = *(v0 + 56);
  v3 = *v0;
  v2 = *(v0 + 8);
  v4 = *(v0 + 16);
  Hasher.init(_seed:)();
  IEEE80211Frame.Header.hash(into:)(v9, v3, v2, v4);
  switch(v1)
  {
    case 253:
      v5 = 3;
      break;
    case 254:
      v5 = 2;
      break;
    case 255:
      v5 = 1;
      break;
    default:
      *&v9[9] = v7;
      *&v9[11] = v8;
      v10 = v1;
      Hasher._combine(_:)(0);
      IEEE80211Frame.Management.hash(into:)(v9);
      return Hasher._finalize()();
  }

  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_1001F3340(uint64_t a1, uint64_t a2)
{
  v7 = *(a1 + 56);
  v2 = *(a1 + 40);
  v6[0] = *(a1 + 24);
  v6[1] = v2;
  v9 = *(a2 + 56);
  v3 = *(a2 + 40);
  v8[0] = *(a2 + 24);
  v8[1] = v3;
  if (_s7CoreP2P14IEEE80211FrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(*a1, *(a1 + 8), *(a1 + 16), *a2, *(a2 + 8), *(a2 + 16)))
  {
    v4 = static IEEE80211Frame.Contents.__derived_enum_equals(_:_:)(v6, v8);
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

BOOL _s7CoreP2P14IEEE80211FrameV6HeaderV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 != a4 || WORD1(a1) != WORD1(a4))
  {
    return 0;
  }

  LOBYTE(v15) = BYTE4(a1);
  BYTE1(v15) = BYTE5(a1);
  BYTE2(v15) = BYTE6(a1);
  HIBYTE(v15) = HIBYTE(a1);
  LOBYTE(v10) = BYTE4(a4);
  BYTE1(v10) = BYTE5(a4);
  BYTE2(v10) = BYTE6(a4);
  HIBYTE(v10) = HIBYTE(a4);
  if (v15 != v10 || a2 != a5)
  {
    return 0;
  }

  LOBYTE(v16) = BYTE2(a2);
  BYTE1(v16) = BYTE3(a2);
  BYTE2(v16) = BYTE4(a2);
  HIBYTE(v16) = BYTE5(a2);
  LOBYTE(v18) = BYTE6(a2);
  HIBYTE(v18) = HIBYTE(a2);
  LOBYTE(v11) = BYTE2(a5);
  BYTE1(v11) = BYTE3(a5);
  BYTE2(v11) = BYTE4(a5);
  HIBYTE(v11) = BYTE5(a5);
  LOBYTE(v13) = BYTE6(a5);
  HIBYTE(v13) = HIBYTE(a5);
  if (v16 != v11 || v18 != v13)
  {
    return 0;
  }

  LOWORD(v17) = a3;
  BYTE2(v17) = BYTE2(a3);
  HIBYTE(v17) = BYTE3(a3);
  LOBYTE(v19) = BYTE4(a3);
  HIBYTE(v19) = BYTE5(a3);
  LOWORD(v12) = a6;
  BYTE2(v12) = BYTE2(a6);
  HIBYTE(v12) = BYTE3(a6);
  LOBYTE(v14) = BYTE4(a6);
  HIBYTE(v14) = BYTE5(a6);
  return v17 == v12 && v19 == v14 && (a6 ^ a3) >> 48 == 0;
}

uint64_t _s7CoreP2P14IEEE80211FrameV8ContentsO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 32);
  if (v2 == 253)
  {
    return a2[32] == 253;
  }

  if (v2 == 254)
  {
    return a2[32] == 254;
  }

  if (v2 != 255)
  {
    v4 = a2[32];
    if (v4 > 0xFC)
    {
      return 0;
    }

    v7 = *a1;
    v6 = *(a1 + 8);
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    v10 = *a2;
    v11 = *(a2 + 1);
    v12 = *(a2 + 2);
    v13 = a2[24];
    if (*(a1 + 32) <= 1u)
    {
      v14 = *(a2 + 1) | ((*(a2 + 5) | (a2[7] << 16)) << 32);
      if (*(a1 + 32))
      {
        if (v4 == 1 && (_s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO21__derived_enum_equalsySbAG_AGtFZ_0(*a1, v6, v8, v9, v10 | (v14 << 8), v11, v12, v13) & 1) != 0)
        {
          return 1;
        }
      }

      else if (!v4 && v7 == (v10 | (v14 << 8)) && *(a1 + 8) == v11 && WORD1(v6) == WORD1(v11) && (sub_1000BED14(*(a1 + 16), v12) & 1) != 0)
      {
        return 1;
      }

      return 0;
    }

    if (v2 != 2)
    {
      return v4 == 3 && byte_100497B36[v7] == byte_100497B36[v10];
    }

    if (v4 != 2 || ((0x7F7E0907060504uLL >> (8 * v7)) & 0x7F) != ((0x7F7E0907060504uLL >> (8 * v10)) & 0x7F))
    {
      return 0;
    }

    if (v6 >> 30)
    {
      v15 = *(a2 + 25) | ((*(a2 + 29) | (a2[31] << 16)) << 32);
      if (v6 >> 30 == 1)
      {
        if (*(a2 + 1) & 0xC0000000) == 0x40000000 && *(a1 + 8) == v11 && ((v6 >> 8) & 1) != ((*(a2 + 1) & 0x100) == 0) && BYTE2(v6) == BYTE2(v11) && !((v11 ^ v6) >> 32) && v8 == v12 && (sub_1000BEE04(v9 | ((*(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32)) << 8), v13 | (v15 << 8)))
        {
          return 1;
        }
      }

      else if ((*(a2 + 1) & 0xC0000000) == 0x80000000 && v11 == 0x80000000 && !(v13 | (v15 << 8) | v12))
      {
        return 1;
      }

      return 0;
    }

    if ((v11 & 0xC0000000) != 0)
    {
      return 0;
    }

    v16 = *(a2 + 1);
    if (*(a1 + 8) == 14)
    {
      if (v16 != 14)
      {
        return 0;
      }
    }

    else if (v16 == 14 || byte_100497B28[v6] != byte_100497B28[v11])
    {
      return 0;
    }

    return (_s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 16), *(a2 + 2)) & 1) != 0;
  }

  return a2[32] == 255;
}

uint64_t _s7CoreP2P14IEEE80211FrameV10ManagementO06ActionD0V23__derived_struct_equalsySbAG_AGtFZ_0(char a1, unint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (((0x7F7E0907060504uLL >> (8 * a1)) & 0x7F) != ((0x7F7E0907060504uLL >> (8 * a5)) & 0x7F))
  {
    return 0;
  }

  if (a2 >> 30)
  {
    if (a2 >> 30 == 1)
    {
      if (a6 & 0xC0000000) == 0x40000000 && a2 == a6 && ((a2 >> 8) & 1) != ((a6 & 0x100) == 0) && BYTE2(a2) == BYTE2(a6) && !((a6 ^ a2) >> 32) && a3 == a7 && (sub_1000BEE04(a4, a8))
      {
        return 1;
      }
    }

    else if ((a6 & 0xC0000000) == 0x80000000 && a6 == 0x80000000 && !(a8 | a7))
    {
      return 1;
    }
  }

  else if ((a6 & 0xC0000000) == 0)
  {
    if (a2 == 14)
    {
      if (a6 != 14)
      {
        return 0;
      }
    }

    else if (a6 == 14 || byte_100497B28[a2] != byte_100497B28[a6])
    {
      return 0;
    }

    if (_s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a3, a7))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s7CoreP2P14IEEE80211FrameV10ManagementO06ActionD0V8ContentsO21__derived_enum_equalsySbAI_AItFZ_0(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if (a1 >> 30)
  {
    if (a1 >> 30 == 1)
    {
      if (a4 & 0xC0000000) == 0x40000000 && a1 == a4 && !((a4 ^ a1) >> 32) && ((a1 >> 8) & 1) != ((a4 & 0x100) == 0) && BYTE2(a1) == BYTE2(a4) && a2 == a5 && (sub_1000BEE04(a3, a6))
      {
        return 1;
      }
    }

    else if ((a4 & 0xC0000000) == 0x80000000 && a4 == 0x80000000 && !(a6 | a5))
    {
      return 1;
    }
  }

  else if ((a4 & 0xC0000000) == 0)
  {
    if (a1 == 14)
    {
      if (a4 != 14)
      {
        return 0;
      }
    }

    else if (a4 == 14 || byte_100497B28[a1] != byte_100497B28[a4])
    {
      return 0;
    }

    if (_s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a5))
    {
      return 1;
    }
  }

  return 0;
}

uint64_t _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO21__derived_enum_equalsySbAG_AGtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  v8 = (((a3 & 0x1000000000000000) != 0) | (2 * a4));
  if (v8 <= 1)
  {
    if (((a3 & 0x1000000000000000) != 0) | (2 * a4))
    {
      if ((((a7 & 0x1000000000000000) != 0) | (2 * a8)) != 1)
      {
        goto LABEL_43;
      }

      v31 = *(a1 + 16);
      if (v31 != *(a5 + 16))
      {
        goto LABEL_43;
      }

      if (!v31 || a1 == a5)
      {
        goto LABEL_42;
      }

      v32 = (a1 + 32);
      v33 = (a5 + 32);
      do
      {
        v34 = *v32;
        v35 = v32[1];
        v36 = v32[2];
        *&v44[9] = *(v32 + 41);
        v43 = v35;
        *v44 = v36;
        v42 = v34;
        v37 = *v33;
        v38 = v33[1];
        v39 = v33[2];
        *(v47 + 9) = *(v33 + 41);
        v46 = v38;
        v47[0] = v39;
        v45 = v37;
        sub_1000C2DC8(&v42, v41);
        sub_1000C2DC8(&v45, v41);
        v21 = static IEEE80211InformationElement.__derived_enum_equals(_:_:)(&v42, &v45);
        sub_1000C2E24(&v45);
        sub_1000C2E24(&v42);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v32 += 4;
        v33 += 4;
        --v31;
      }

      while (v31);
    }

    else
    {
      if (((a7 & 0x1000000000000000) != 0) | (2 * a8))
      {
        goto LABEL_43;
      }

      v12 = *(a1 + 16);
      if (v12 != *(a5 + 16))
      {
        goto LABEL_43;
      }

      if (!v12 || a1 == a5)
      {
        goto LABEL_42;
      }

      v13 = (a1 + 32);
      v14 = (a5 + 32);
      do
      {
        v15 = *v13;
        v16 = v13[1];
        v17 = v13[2];
        *&v44[9] = *(v13 + 41);
        v43 = v16;
        *v44 = v17;
        v42 = v15;
        v18 = *v14;
        v19 = v14[1];
        v20 = v14[2];
        *(v47 + 9) = *(v14 + 41);
        v46 = v19;
        v47[0] = v20;
        v45 = v18;
        sub_1000C2DC8(&v42, v41);
        sub_1000C2DC8(&v45, v41);
        v21 = static IEEE80211InformationElement.__derived_enum_equals(_:_:)(&v42, &v45);
        sub_1000C2E24(&v45);
        sub_1000C2E24(&v42);
        if ((v21 & 1) == 0)
        {
          break;
        }

        v13 += 4;
        v14 += 4;
        --v12;
      }

      while (v12);
    }
  }

  else if (v8 == 2)
  {
    if ((((a7 & 0x1000000000000000) != 0) | (2 * a8)) != 2)
    {
      goto LABEL_43;
    }

    v22 = *(a1 + 16);
    if (v22 != *(a5 + 16))
    {
      goto LABEL_43;
    }

    if (!v22 || a1 == a5)
    {
      goto LABEL_42;
    }

    v23 = (a1 + 32);
    v24 = (a5 + 32);
    do
    {
      v25 = *v23;
      v26 = v23[1];
      v27 = v23[2];
      *&v44[9] = *(v23 + 41);
      v43 = v26;
      *v44 = v27;
      v42 = v25;
      v28 = *v24;
      v29 = v24[1];
      v30 = v24[2];
      *(v47 + 9) = *(v24 + 41);
      v46 = v29;
      v47[0] = v30;
      v45 = v28;
      sub_1000C2DC8(&v42, v41);
      sub_1000C2DC8(&v45, v41);
      v21 = static IEEE80211InformationElement.__derived_enum_equals(_:_:)(&v42, &v45);
      sub_1000C2E24(&v45);
      sub_1000C2E24(&v42);
      if ((v21 & 1) == 0)
      {
        break;
      }

      v23 += 4;
      v24 += 4;
      --v22;
    }

    while (v22);
  }

  else
  {
    if (v8 == 3)
    {
      if ((((a7 & 0x1000000000000000) != 0) | (2 * a8)) == 3)
      {
        if ((a3 & 0x2000000000000000) != 0)
        {
          if ((a7 & 0x2000000000000000) == 0 || a1 != a5)
          {
            goto LABEL_43;
          }

          v9 = a2;
          v10 = a3 & 0xCFFFFFFFFFFFFFFFLL;
          v11 = a7 & 0xCFFFFFFFFFFFFFFFLL;
        }

        else
        {
          if (a7 & 0x2000000000000000) != 0 || ((a5 ^ a1))
          {
            goto LABEL_43;
          }

          v9 = a2;
          v10 = a3 & 0xEFFFFFFFFFFFFFFFLL;
          v11 = a7 & 0xEFFFFFFFFFFFFFFFLL;
        }

        if (_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v10, a6, v11))
        {
LABEL_42:
          v21 = 1;
          return v21 & 1;
        }
      }

LABEL_43:
      v21 = 0;
      return v21 & 1;
    }

    if ((((a7 & 0x1000000000000000) != 0) | (2 * a8)) != 4)
    {
      goto LABEL_43;
    }

    v21 = 0;
    if (a5 == a1 && WORD1(a1) == WORD1(a5))
    {
      v21 = word_100497ABA[a1 << 24 >> 56] == word_100497ABA[a5 << 24 >> 56];
    }
  }

  return v21 & 1;
}

uint64_t _s7CoreP2P14IEEE80211FrameV10ManagementO21__derived_enum_equalsySbAE_AEtFZ_0(uint64_t a1, char *a2)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v6 = *(a1 + 24);
  if (*(a1 + 32) > 1u)
  {
    if (*(a1 + 32) != 2)
    {
      if (a2[32] == 3)
      {
        v7 = byte_100497B36[v4] == byte_100497B36[*a2];
        return v7 & 1;
      }

      goto LABEL_44;
    }

    if (a2[32] != 2 || ((0x7F7E0907060504uLL >> (8 * v4)) & 0x7F) != ((0x7F7E0907060504uLL >> (8 * *a2)) & 0x7F))
    {
      goto LABEL_44;
    }

    v19 = *(a2 + 1);
    v18 = *(a2 + 2);
    if (v3 >> 30)
    {
      v20 = *(a2 + 3);
      if (v3 >> 30 == 1)
      {
        if ((v19 & 0xC0000000) != 0x40000000 || *(a1 + 8) != v19 || ((v3 >> 8) & 1) == ((v19 & 0x100) == 0) || BYTE2(v3) != BYTE2(v19) || (v19 ^ v3) >> 32 || v5 != v18 || (sub_1000BEE04(v6 | ((*(a1 + 25) | ((*(a1 + 29) | (*(a1 + 31) << 16)) << 32)) << 8), v20) & 1) == 0)
        {
          goto LABEL_44;
        }
      }

      else if ((v19 & 0xC0000000) != 0x80000000 || v19 != 0x80000000 || v20 | v18)
      {
        goto LABEL_44;
      }
    }

    else
    {
      if ((v19 & 0xC0000000) != 0)
      {
        goto LABEL_44;
      }

      v27 = *(a2 + 1);
      if (*(a1 + 8) == 14)
      {
        if (v27 != 14)
        {
          goto LABEL_44;
        }
      }

      else if (v27 == 14 || byte_100497B28[v3] != byte_100497B28[v19])
      {
        goto LABEL_44;
      }

      if ((_s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 16), v18) & 1) == 0)
      {
LABEL_44:
        v7 = 0;
        return v7 & 1;
      }
    }

LABEL_43:
    v7 = 1;
    return v7 & 1;
  }

  if (!*(a1 + 32))
  {
    if (!a2[32])
    {
      v7 = 0;
      if (v4 != *a2 || __PAIR64__(*(a2 + 5), *(a2 + 4)) != __PAIR64__(WORD1(v3), v3))
      {
        return v7 & 1;
      }

      v8 = *(a2 + 2);
      v9 = *(v5 + 16);
      if (v9 == *(v8 + 16))
      {
        if (v9 && v8 != v5)
        {
          v10 = (v5 + 32);
          v11 = (v8 + 32);
          do
          {
            v12 = *v10;
            v13 = v10[1];
            v14 = v10[2];
            *&v30[9] = *(v10 + 41);
            v29[1] = v13;
            *v30 = v14;
            v29[0] = v12;
            v15 = *v11;
            v16 = v11[1];
            v17 = v11[2];
            *&v32[9] = *(v11 + 41);
            v31[1] = v16;
            *v32 = v17;
            v31[0] = v15;
            sub_1000C2DC8(v29, v28);
            sub_1000C2DC8(v31, v28);
            v7 = _s7CoreP2P27IEEE80211InformationElementO21__derived_enum_equalsySbAC_ACtFZ_0(v29, v31);
            sub_1000C2E24(v31);
            sub_1000C2E24(v29);
            if ((v7 & 1) == 0)
            {
              break;
            }

            v10 += 4;
            v11 += 4;
            --v9;
          }

          while (v9);
          return v7 & 1;
        }

        goto LABEL_43;
      }
    }

    goto LABEL_44;
  }

  if (a2[32] != 1)
  {
    goto LABEL_44;
  }

  v21 = *(a2 + 1);
  v22 = *(a2 + 2);
  v23 = *a2;
  v24 = a2[24];
  v25 = *a1;

  return _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO21__derived_enum_equalsySbAG_AGtFZ_0(v25, v3, v5, v6, v23, v21, v22, v24);
}

uint64_t _s7CoreP2P14IEEE80211FrameV0D4TypeO010ManagementE0O8rawValueAGSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 > 0xEu)
  {
    return 14;
  }

  else
  {
    return byte_100497B44[a1];
  }
}

unint64_t sub_1001F4184()
{
  result = qword_100590C50;
  if (!qword_100590C50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C50);
  }

  return result;
}

unint64_t sub_1001F41D8()
{
  result = qword_100590C58;
  if (!qword_100590C58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C58);
  }

  return result;
}

uint64_t _s7CoreP2P14IEEE80211FrameV10ManagementO14AuthenticationO0F9AlgorithmO8rawValueAISgs6UInt16V_tcfC_0(uint64_t result)
{
  if ((result & 0xFFF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

uint64_t sub_1001F4240(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100590F78, &qword_100497AA0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100029B34(a1, v8);
  sub_1001F4E84();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v11 = 0;
    sub_1001F7EC4();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v10[8];
    v11 = 1;
    sub_100039F68();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v8;
}

uint64_t sub_1001F4418(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100590F70, &qword_100497A98);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100029B34(a1, v8);
  sub_1001F4F2C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[16] = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v10[15] = 1;
    sub_100039F68();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v8;
}

void *sub_1001F45DC(uint64_t *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void))
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
    sub_10005DC58(&unk_100597510, &qword_100495350);
    sub_1001F7DF8(&qword_100590F50, sub_1001F7E70);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v10, v7);
    v13 = v17;
    sub_100002A00(a1);
  }

  return v13;
}

uint64_t sub_1001F47A0(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_100590F88, &qword_100497AA8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001F4DDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[31] = 0;
  v8 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[30] = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10[29] = 2;
  KeyedDecodingContainer.decode(_:forKey:)();
  sub_10005DC58(&unk_100597510, &qword_100495350);
  v10[28] = 3;
  sub_1001F7DF8(&qword_100590F50, sub_1001F7E70);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100002A00(a1);
  return v8;
}

unint64_t sub_1001F4A00(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100590F90, &qword_100497AB0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v12 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001F4184();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v20 = 0;
  sub_1001F7F18();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  LOBYTE(v17) = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 2;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v16 = v17;
  v15 = BYTE1(v17);
  v14 = BYTE2(v17);
  v13 = HIBYTE(v17);
  v12[11] = v18;
  v12[10] = v19;
  v20 = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[9] = v17;
  v12[8] = BYTE1(v17);
  v12[7] = BYTE2(v17);
  v12[6] = HIBYTE(v17);
  v12[5] = v18;
  v12[4] = v19;
  v20 = 4;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v12[3] = v17;
  v12[1] = v18;
  v12[2] = v19;
  LOBYTE(v17) = 5;
  KeyedDecodingContainer.decode(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  sub_100002A00(a1);
  return v9 & 0xFFFFFFFF0000FFFFLL | (v10 << 16) | (v16 << 32) | (v15 << 40) | (v14 << 48) | (v13 << 56);
}

unint64_t sub_1001F4DDC()
{
  result = qword_100590C68;
  if (!qword_100590C68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C68);
  }

  return result;
}

unint64_t sub_1001F4E30()
{
  result = qword_100590C78;
  if (!qword_100590C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C78);
  }

  return result;
}

unint64_t sub_1001F4E84()
{
  result = qword_100590C88;
  if (!qword_100590C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C88);
  }

  return result;
}

unint64_t sub_1001F4ED8()
{
  result = qword_100590C90;
  if (!qword_100590C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590C90);
  }

  return result;
}

unint64_t sub_1001F4F2C()
{
  result = qword_100590CA0;
  if (!qword_100590CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CA0);
  }

  return result;
}

unint64_t sub_1001F4F80()
{
  result = qword_100590CB0;
  if (!qword_100590CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CB0);
  }

  return result;
}

unint64_t sub_1001F4FD4()
{
  result = qword_100590CC0;
  if (!qword_100590CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CC0);
  }

  return result;
}

unint64_t sub_1001F5028()
{
  result = qword_100590CD0;
  if (!qword_100590CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CD0);
  }

  return result;
}

uint64_t sub_1001F507C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v22, v23);
  sub_1001F7A5C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v24[0] = *v21;
  *(v24 + 14) = *&v21[14];
  v7 = sub_1000E5540(2uLL, 2uLL, v20);
  if (v7 <= 1)
  {
    if (v7)
    {
      v11 = 0;
      v9 = 0;
      v10 = 0;
      v13 = 0;
      v12 = -1;
      goto LABEL_15;
    }

    v8 = IEEE80211Frame.Header.FrameControl.managementSubtype.getter(v20);
    if (v8 <= 0xBu)
    {
      if (v8 == 7)
      {
        sub_100031694(v22, v23);
        sub_1001F7B58();
        UnkeyedDecodingContainer.inferredDecode<A>()();
        v13 = 0;
        v12 = 0;
        v10 = v16;
        v9 = v17;
        v11 = v18;
        goto LABEL_15;
      }

      if (v8 == 10)
      {
        sub_100031694(v22, v23);
        sub_1001F7B04();
        UnkeyedDecodingContainer.inferredDecode<A>()();
        v10 = v16;
        v9 = v17;
        v11 = v18;
        v12 = 1;
        v13 = v19;
LABEL_15:
        sub_100002A00(v22);
        result = sub_100002A00(a1);
        *a2 = v20;
        *(a2 + 2) = v24[0];
        *(a2 + 16) = *(v24 + 14);
        *(a2 + 24) = v10;
        *(a2 + 32) = v9;
        *(a2 + 40) = v11;
        *(a2 + 48) = v13;
        *(a2 + 56) = v12;
        return result;
      }

LABEL_19:
      v11 = 0;
      v9 = 0;
      v13 = 0;
      v10 = v8;
      v12 = 3;
      goto LABEL_15;
    }

    if (v8 == 12)
    {
      sub_100031694(v22, v23);
      sub_1001F7AB0();
      UnkeyedDecodingContainer.inferredDecode<A>()();
      v10 = v16;
      v9 = v17;
      v11 = v18;
      v12 = 2;
      v13 = v19;
      goto LABEL_15;
    }

    if (v8 != 14)
    {
      goto LABEL_19;
    }

    sub_10000B02C();
    swift_allocError();
    *v14 = xmmword_10047CE70;
    *(v14 + 16) = 2;
    swift_willThrow();
    sub_100002A00(v22);
    return sub_100002A00(a1);
  }

  if (v7 == 2)
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    v13 = 0;
    v12 = -2;
    goto LABEL_15;
  }

  if (v7 == 3)
  {
    v11 = 0;
    v9 = 0;
    v10 = 0;
    v13 = 0;
    v12 = -3;
    goto LABEL_15;
  }

  sub_10000B02C();
  swift_allocError();
  *v15 = xmmword_10047CE70;
  *(v15 + 16) = 2;
  swift_willThrow();
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_1001F5414(uint64_t *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    goto LABEL_6;
  }

  sub_100031694(v7, v8);
  sub_1001F7BAC();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  sub_100031694(v7, v8);
  v3 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v7, v8);
  sub_1001F7C00();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  if (((1 << v6) & 0x77) != 0)
  {
    v3 = v6 | (v3 << 16) | (v6 << 32);
LABEL_10:
    sub_100002A00(v7);
    sub_100002A00(a1);
    return v3;
  }

  if (v6 == 3)
  {
    if (v3 == 2)
    {
      if (v6 - 1 >= 0x29 && v6 - 43 >= 0xC)
      {
        sub_100031694(v7, v8);
        sub_1001F7C54();
        UnkeyedDecodingContainer.inferredDecode<A>()();
        v3 = v6;
        goto LABEL_10;
      }
    }

    else if (v3 == 1 && v6 - 1 >= 0x29 && v6 - 43 >= 0xC)
    {
      sub_100031694(v7, v8);
      sub_1001F7CA8();
      UnkeyedDecodingContainer.inferredDecode<A>()();
      v3 = v6;
      goto LABEL_10;
    }
  }

  else if (!v6)
  {
    switch(v3)
    {
      case 3u:
        sub_100031694(v7, v8);
        sub_1001F7CFC();
        UnkeyedDecodingContainer.inferredDecode<A>()();
        v3 = v6;
        goto LABEL_10;
      case 2u:
        sub_100031694(v7, v8);
        sub_1001F7D50();
        UnkeyedDecodingContainer.inferredDecode<A>()();
        v3 = v6;
        goto LABEL_10;
      case 1u:
        sub_100031694(v7, v8);
        sub_1001F7DA4();
        UnkeyedDecodingContainer.inferredDecode<A>()();
        v3 = v6;
        goto LABEL_10;
    }

    sub_10000B02C();
    swift_allocError();
    *v5 = 0;
    *(v5 + 8) = 0;
    goto LABEL_27;
  }

  sub_10000B02C();
  swift_allocError();
  *v5 = xmmword_10047CE70;
LABEL_27:
  *(v5 + 16) = 2;
  swift_willThrow();
  sub_100002A00(v7);
LABEL_6:
  sub_100002A00(a1);
  return v3;
}

unint64_t sub_1001F5830()
{
  result = qword_100590CD8;
  if (!qword_100590CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CD8);
  }

  return result;
}

unint64_t sub_1001F5884()
{
  result = qword_100590CE0;
  if (!qword_100590CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CE0);
  }

  return result;
}

unint64_t sub_1001F58D8()
{
  result = qword_100590CE8;
  if (!qword_100590CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CE8);
  }

  return result;
}

unint64_t sub_1001F592C()
{
  result = qword_100590CF0;
  if (!qword_100590CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CF0);
  }

  return result;
}

unint64_t sub_1001F5980()
{
  result = qword_100590CF8;
  if (!qword_100590CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590CF8);
  }

  return result;
}

unint64_t sub_1001F59D4()
{
  result = qword_100590D00;
  if (!qword_100590D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D00);
  }

  return result;
}

unint64_t sub_1001F5A28()
{
  result = qword_100590D08;
  if (!qword_100590D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D08);
  }

  return result;
}

uint64_t sub_1001F5A7C(uint64_t result)
{
  if (result >> 30 <= 1)
  {
  }

  return result;
}

unint64_t sub_1001F5A9C()
{
  result = qword_100590D10;
  if (!qword_100590D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D10);
  }

  return result;
}

unint64_t sub_1001F5AF0()
{
  result = qword_100590D18;
  if (!qword_100590D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D18);
  }

  return result;
}

unint64_t sub_1001F5B44()
{
  result = qword_100590D20;
  if (!qword_100590D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D20);
  }

  return result;
}

unint64_t sub_1001F5B98()
{
  result = qword_100590D28;
  if (!qword_100590D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D28);
  }

  return result;
}

unint64_t sub_1001F5BEC()
{
  result = qword_100590D30;
  if (!qword_100590D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D30);
  }

  return result;
}

unint64_t sub_1001F5C40()
{
  result = qword_100590D38;
  if (!qword_100590D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D38);
  }

  return result;
}

unint64_t sub_1001F5C94()
{
  result = qword_100590D40;
  if (!qword_100590D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D40);
  }

  return result;
}

unint64_t sub_1001F5CE8()
{
  result = qword_100590D48;
  if (!qword_100590D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D48);
  }

  return result;
}

unint64_t sub_1001F5D3C()
{
  result = qword_100590D50;
  if (!qword_100590D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D50);
  }

  return result;
}

unint64_t sub_1001F5D94()
{
  result = qword_100590D58;
  if (!qword_100590D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D58);
  }

  return result;
}

unint64_t sub_1001F5DEC()
{
  result = qword_100590D60;
  if (!qword_100590D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D60);
  }

  return result;
}

unint64_t sub_1001F5E44()
{
  result = qword_100590D68;
  if (!qword_100590D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D68);
  }

  return result;
}

unint64_t sub_1001F5E9C()
{
  result = qword_100590D70;
  if (!qword_100590D70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D70);
  }

  return result;
}

unint64_t sub_1001F5EF0()
{
  result = qword_100590D78;
  if (!qword_100590D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D78);
  }

  return result;
}

unint64_t sub_1001F5F48()
{
  result = qword_100590D80;
  if (!qword_100590D80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D80);
  }

  return result;
}

unint64_t sub_1001F5FA0()
{
  result = qword_100590D88;
  if (!qword_100590D88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D88);
  }

  return result;
}

unint64_t sub_1001F5FF8()
{
  result = qword_100590D90;
  if (!qword_100590D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D90);
  }

  return result;
}

unint64_t sub_1001F6050()
{
  result = qword_100590D98;
  if (!qword_100590D98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590D98);
  }

  return result;
}

unint64_t sub_1001F60A8()
{
  result = qword_100590DA0;
  if (!qword_100590DA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DA0);
  }

  return result;
}

unint64_t sub_1001F6100()
{
  result = qword_100590DA8;
  if (!qword_100590DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DA8);
  }

  return result;
}

unint64_t sub_1001F6158()
{
  result = qword_100590DB0;
  if (!qword_100590DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DB0);
  }

  return result;
}

unint64_t sub_1001F61B0()
{
  result = qword_100590DB8;
  if (!qword_100590DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DB8);
  }

  return result;
}

unint64_t sub_1001F6208()
{
  result = qword_100590DC0;
  if (!qword_100590DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DC0);
  }

  return result;
}

unint64_t sub_1001F6260()
{
  result = qword_100590DC8;
  if (!qword_100590DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DC8);
  }

  return result;
}

unint64_t sub_1001F62B8()
{
  result = qword_100590DD0;
  if (!qword_100590DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DD0);
  }

  return result;
}

unint64_t sub_1001F6310()
{
  result = qword_100590DD8;
  if (!qword_100590DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DD8);
  }

  return result;
}

unint64_t sub_1001F6368()
{
  result = qword_100590DE0;
  if (!qword_100590DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DE0);
  }

  return result;
}

unint64_t sub_1001F63C0()
{
  result = qword_100590DE8;
  if (!qword_100590DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DE8);
  }

  return result;
}

unint64_t sub_1001F6418()
{
  result = qword_100590DF0;
  if (!qword_100590DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DF0);
  }

  return result;
}

unint64_t sub_1001F6470()
{
  result = qword_100590DF8;
  if (!qword_100590DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590DF8);
  }

  return result;
}

unint64_t sub_1001F64C8()
{
  result = qword_100590E00;
  if (!qword_100590E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E00);
  }

  return result;
}

unint64_t sub_1001F6520()
{
  result = qword_100590E08;
  if (!qword_100590E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E08);
  }

  return result;
}

unint64_t sub_1001F6578()
{
  result = qword_100590E10;
  if (!qword_100590E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E10);
  }

  return result;
}

unint64_t sub_1001F65D0()
{
  result = qword_100590E18;
  if (!qword_100590E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E18);
  }

  return result;
}

__n128 sub_1001F6624(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1001F6640(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 57))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 56);
  if (v3 >= 0xFD)
  {
    v4 = 253;
  }

  else
  {
    v4 = *(a1 + 56);
  }

  v5 = (v4 ^ 0xFF) - 3;
  if (v3 <= 3)
  {
    v6 = -1;
  }

  else
  {
    v6 = v5;
  }

  return (v6 + 1);
}

uint64_t sub_1001F6698(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -3 - a2;
    }
  }

  return result;
}

uint64_t sub_1001F6740(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 33))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 32);
  if (v3 > 3)
  {
    v4 = (v3 ^ 0xFF) + 1;
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 4)
  {
    return v4 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1001F6788(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -3 - a2;
    }
  }

  return result;
}

uint64_t sub_1001F67D8(uint64_t result, unsigned int a2)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
  }

  else if (a2)
  {
    *(result + 32) = -a2;
  }

  return result;
}

uint64_t sub_1001F6814(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 33))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 32);
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

uint64_t sub_1001F685C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 253;
    *(result + 8) = 0;
    if (a3 >= 0xFD)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001F68CC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x1FC && *(a1 + 25))
  {
    return (*a1 + 508);
  }

  v3 = (((*(a1 + 16) & 0x1000000000000000) != 0) | (2 * *(a1 + 24))) ^ 0x1FF;
  if (v3 >= 0x1FB)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1001F6920(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x1FB)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 508;
    if (a3 >= 0x1FC)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x1FC)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = (-a2 & 1) << 60;
      *(result + 24) = -a2 >> 1;
    }
  }

  return result;
}

uint64_t sub_1001F6988(uint64_t result, unsigned int a2)
{
  *(result + 16) = *(result + 16) & 0xEFFFFFFFFFFFFFFFLL | ((a2 & 1) << 60);
  *(result + 24) = a2 >> 1;
  return result;
}

uint64_t sub_1001F69D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 2);
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

uint64_t sub_1001F6A20(uint64_t result, int a2, int a3)
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
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = -a2 << 16;
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

void *sub_1001F6A78(void *result, char a2)
{
  v2 = result[2] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 1) << 61);
  *result = *result;
  result[2] = v2;
  return result;
}

uint64_t sub_1001F6AB8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && a1[24])
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

uint64_t sub_1001F6AFC(uint64_t result, unsigned int a2, unsigned int a3)
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
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1001F6B90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFE && *(a1 + 32))
  {
    return (*a1 + 32766);
  }

  HIDWORD(v3) = (*(a1 + 8) >> 17) & 0x1F80 | (*(a1 + 8) >> 9);
  LODWORD(v3) = *(a1 + 8);
  v4 = (v3 >> 30) ^ 0x7FFF;
  if (v4 >= 0x7FFD)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1001F6BF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 32766;
    *(result + 8) = 0;
    if (a3 >= 0x7FFE)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFE)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0;
      *(result + 24) = 0;
      *(result + 8) = (((-a2 >> 2) & 0x1FFF | ((-a2 & 0x7FFF) << 13)) << 17) & 0xFF000000 | ((((-a2 >> 2) & 0x1FFF | ((-a2 & 0x7FFF) << 13)) & 0x7FLL) << 9);
    }
  }

  return result;
}

uint64_t sub_1001F6C90(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFE && *(a1 + 24))
  {
    return (*a1 + 32766);
  }

  HIDWORD(v3) = (*a1 >> 17) & 0x1F80 | (*a1 >> 9);
  LODWORD(v3) = *a1;
  v4 = (v3 >> 30) ^ 0x7FFF;
  if (v4 >= 0x7FFD)
  {
    v4 = -1;
  }

  return v4 + 1;
}

uint64_t sub_1001F6CF4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 32766;
    if (a3 >= 0x7FFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = 0;
      *result = (((-a2 >> 2) & 0x1FFF | ((-a2 & 0x7FFF) << 13)) << 17) & 0xFF000000 | ((((-a2 >> 2) & 0x1FFF | ((-a2 & 0x7FFF) << 13)) & 0x7FLL) << 9);
    }
  }

  return result;
}

unint64_t *sub_1001F6D70(unint64_t *result, unsigned int a2)
{
  if (a2 < 2)
  {
    *result = *result & 0xFFFFFFFF00FF01FFLL | (a2 << 30);
  }

  else
  {
    result[1] = 0;
    result[2] = 0;
    *result = ((a2 - 2) << 7) & 0xFF0000 | (a2 - 2) & 0x1FFLL | (((a2 - 2) >> 17) << 32) | 0x80000000;
  }

  return result;
}

unint64_t sub_1001F6E40()
{
  result = qword_100590E20;
  if (!qword_100590E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E20);
  }

  return result;
}

unint64_t sub_1001F6E98()
{
  result = qword_100590E28;
  if (!qword_100590E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E28);
  }

  return result;
}

unint64_t sub_1001F6EF0()
{
  result = qword_100590E30;
  if (!qword_100590E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E30);
  }

  return result;
}

unint64_t sub_1001F6F48()
{
  result = qword_100590E38;
  if (!qword_100590E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E38);
  }

  return result;
}

unint64_t sub_1001F6FA0()
{
  result = qword_100590E40;
  if (!qword_100590E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E40);
  }

  return result;
}

unint64_t sub_1001F6FF8()
{
  result = qword_100590E48;
  if (!qword_100590E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E48);
  }

  return result;
}

unint64_t sub_1001F7050()
{
  result = qword_100590E50;
  if (!qword_100590E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E50);
  }

  return result;
}

unint64_t sub_1001F70A8()
{
  result = qword_100590E58;
  if (!qword_100590E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E58);
  }

  return result;
}

unint64_t sub_1001F7100()
{
  result = qword_100590E60;
  if (!qword_100590E60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E60);
  }

  return result;
}

unint64_t sub_1001F7158()
{
  result = qword_100590E68;
  if (!qword_100590E68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E68);
  }

  return result;
}

unint64_t sub_1001F71B0()
{
  result = qword_100590E70;
  if (!qword_100590E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E70);
  }

  return result;
}

unint64_t sub_1001F7208()
{
  result = qword_100590E78;
  if (!qword_100590E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E78);
  }

  return result;
}

unint64_t sub_1001F7260()
{
  result = qword_100590E80;
  if (!qword_100590E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E80);
  }

  return result;
}

unint64_t sub_1001F72B8()
{
  result = qword_100590E88;
  if (!qword_100590E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E88);
  }

  return result;
}

unint64_t sub_1001F7310()
{
  result = qword_100590E90;
  if (!qword_100590E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E90);
  }

  return result;
}

unint64_t sub_1001F7368()
{
  result = qword_100590E98;
  if (!qword_100590E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590E98);
  }

  return result;
}

unint64_t sub_1001F73C0()
{
  result = qword_100590EA0;
  if (!qword_100590EA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EA0);
  }

  return result;
}

unint64_t sub_1001F7418()
{
  result = qword_100590EA8;
  if (!qword_100590EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EA8);
  }

  return result;
}

unint64_t sub_1001F7470()
{
  result = qword_100590EB0;
  if (!qword_100590EB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EB0);
  }

  return result;
}

unint64_t sub_1001F74C8()
{
  result = qword_100590EB8;
  if (!qword_100590EB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EB8);
  }

  return result;
}

unint64_t sub_1001F7520()
{
  result = qword_100590EC0;
  if (!qword_100590EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EC0);
  }

  return result;
}

uint64_t sub_1001F7574(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F43656D617266 && a2 == 0xEC0000006C6F7274;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F697461727564 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7265766965636572 && a2 == 0xEF73736572646441 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004BD0F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004BD110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x65636E6575716573 && a2 == 0xEF6C6F72746E6F43)
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

uint64_t sub_1001F7794(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E496E6F63616562 && a2 == 0xEE006C6176726574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x73746E656D656C65 && a2 == 0xE800000000000000)
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

unint64_t sub_1001F790C()
{
  result = qword_100590EC8;
  if (!qword_100590EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EC8);
  }

  return result;
}

unint64_t sub_1001F7960()
{
  result = qword_100590ED8;
  if (!qword_100590ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590ED8);
  }

  return result;
}

unint64_t sub_1001F79B4()
{
  result = qword_100590EE0;
  if (!qword_100590EE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EE0);
  }

  return result;
}

unint64_t sub_1001F7A08()
{
  result = qword_100590EE8;
  if (!qword_100590EE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EE8);
  }

  return result;
}

unint64_t sub_1001F7A5C()
{
  result = qword_100590EF0;
  if (!qword_100590EF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EF0);
  }

  return result;
}

unint64_t sub_1001F7AB0()
{
  result = qword_100590EF8;
  if (!qword_100590EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590EF8);
  }

  return result;
}

unint64_t sub_1001F7B04()
{
  result = qword_100590F00;
  if (!qword_100590F00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F00);
  }

  return result;
}

unint64_t sub_1001F7B58()
{
  result = qword_100590F08;
  if (!qword_100590F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F08);
  }

  return result;
}

unint64_t sub_1001F7BAC()
{
  result = qword_100590F10;
  if (!qword_100590F10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F10);
  }

  return result;
}

unint64_t sub_1001F7C00()
{
  result = qword_100590F18;
  if (!qword_100590F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F18);
  }

  return result;
}

unint64_t sub_1001F7C54()
{
  result = qword_100590F20;
  if (!qword_100590F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F20);
  }

  return result;
}

unint64_t sub_1001F7CA8()
{
  result = qword_100590F28;
  if (!qword_100590F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F28);
  }

  return result;
}

unint64_t sub_1001F7CFC()
{
  result = qword_100590F30;
  if (!qword_100590F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F30);
  }

  return result;
}

unint64_t sub_1001F7D50()
{
  result = qword_100590F38;
  if (!qword_100590F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F38);
  }

  return result;
}

unint64_t sub_1001F7DA4()
{
  result = qword_100590F40;
  if (!qword_100590F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F40);
  }

  return result;
}

uint64_t sub_1001F7DF8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&unk_100597510, &qword_100495350);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1001F7E70()
{
  result = qword_100590F58;
  if (!qword_100590F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F58);
  }

  return result;
}

unint64_t sub_1001F7EC4()
{
  result = qword_100590F80;
  if (!qword_100590F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F80);
  }

  return result;
}

unint64_t sub_1001F7F18()
{
  result = qword_100590F98;
  if (!qword_100590F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590F98);
  }

  return result;
}

unint64_t sub_1001F7F6C()
{
  result = qword_100590FB0;
  if (!qword_100590FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590FB0);
  }

  return result;
}

void __swiftcall Int32.getAuditToken()(audit_token_t_optional *__return_ptr retstr)
{
  sub_1001F8828(v1, v4);
  v3 = v4[1];
  *retstr->value.val = v4[0];
  *&retstr->value.val[4] = v3;
  retstr->is_nil = v5;
}

void *sub_1001F803C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C0444(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v8 = *v3;
      v9 = *(v3 + 2);
      v10 = *(v3 + 1);

      sub_10005DC58(&qword_10058D678, &unk_1004872B8);
      sub_10005DC58(&qword_10058CD10, &qword_100483028);
      swift_dynamicCast();
      v5 = _swiftEmptyArrayStorage[2];
      v4 = _swiftEmptyArrayStorage[3];
      if (v5 >= v4 >> 1)
      {
        sub_1000C0444((v4 > 1), v5 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v5 + 1;
      v6 = &_swiftEmptyArrayStorage[2 * v5];
      v6[32] = v11;
      v6[33] = v12;
      v6[34] = v13;
      *(v6 + 5) = v14;
      v3 += 8;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1001F8188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C06A4(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      sub_10000AB0C(*v3, *(v3 + 8));
      sub_10005DC58(&qword_10058CC10, &qword_100482F10);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000C06A4((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

void *sub_1001F82A8(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v14 = _swiftEmptyArrayStorage;
    sub_1000C0464(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100002B30(v4, v11);
      swift_dynamicCast();
      v5 = v12;
      v6 = v13;
      v14 = v2;
      v8 = v2[2];
      v7 = v2[3];
      if (v8 >= v7 >> 1)
      {
        sub_1000C0464((v7 > 1), v8 + 1, 1);
        v2 = v14;
      }

      v2[2] = v8 + 1;
      v9 = &v2[2 * v8];
      v9[4] = v5;
      v9[5] = v6;
      v4 += 32;
      --v1;
    }

    while (v1);
  }

  return v2;
}

void *sub_1001F83AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = _swiftEmptyArrayStorage;
  if (v1)
  {
    v15 = _swiftEmptyArrayStorage;
    sub_1000C0830(0, v1, 0);
    v2 = _swiftEmptyArrayStorage;
    v4 = a1 + 32;
    do
    {
      sub_100012400(v4, v11, &qword_10058BB40, &unk_100480E70);
      sub_10005DC58(&qword_10058BB40, &unk_100480E70);
      sub_10005DC58(&qword_10058CC58, &qword_100482F60);
      swift_dynamicCast();
      v15 = v2;
      v6 = v2[2];
      v5 = v2[3];
      if (v6 >= v5 >> 1)
      {
        sub_1000C0830((v5 > 1), v6 + 1, 1);
        v2 = v15;
      }

      v2[2] = v6 + 1;
      v7 = &v2[6 * v6];
      v8 = v12;
      v9 = v14;
      v7[3] = v13;
      v7[4] = v9;
      v7[2] = v8;
      v4 += 48;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1001F84F4()
{
  v0 = type metadata accessor for Logger();
  sub_100068888(v0, qword_10059B5B8);
  sub_100037644(v0, qword_10059B5B8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1001F85C4(uint64_t a1, void (*a2)(uint64_t), _DWORD *a3)
{
  v5 = type metadata accessor for ProcessCodeSigningFlags.ValueSet();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  v8 = __chkstk_darwin(v5);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  a2(v8);
  v11 = ProcessCodeSigningFlags.ValueSet.rawValue.getter();
  result = (*(v6 + 8))(v10, v5);
  if ((v11 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(v11))
  {
    *a3 = v11;
    return result;
  }

  __break(1u);
  return result;
}

void sub_1001F8828(int a1@<W0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for String.Encoding();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  *task_info_out = 0u;
  v21 = 0u;
  task_info_outCnt = 8;
  tn = 0;
  task_name_for_pid(mach_task_self_, a1, &tn);
  v6 = task_info(tn, 0xFu, task_info_out, &task_info_outCnt);
  if (!v6)
  {
    v16 = *task_info_out;
    v17 = v21;
    goto LABEL_12;
  }

  if (qword_10058AA08 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_100037644(v7, qword_10059B5B8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v8, v9))
  {
LABEL_10:

    v16 = 0uLL;
    v17 = 0uLL;
LABEL_12:
    *a2 = v16;
    *(a2 + 16) = v17;
    *(a2 + 32) = v6 != 0;
    return;
  }

  v10 = swift_slowAlloc();
  v11 = swift_slowAlloc();
  v22 = v11;
  *v10 = 67109378;
  *(v10 + 4) = v6;
  *(v10 + 8) = 2080;
  if (mach_error_string(v6))
  {
    static String.Encoding.ascii.getter();
    v12 = String.init(cString:encoding:)();
    if (v13)
    {
      v14 = v13;
    }

    else
    {
      v12 = 0x206E776F6E6B6E55;
      v14 = 0xED0000726F727245;
    }

    v15 = sub_100002320(v12, v14, &v22);

    *(v10 + 10) = v15;
    _os_log_impl(&_mh_execute_header, v8, v9, "task_info() failed: %d : [%s]", v10, 0x12u);
    sub_100002A00(v11);

    goto LABEL_10;
  }

  __break(1u);
}

double Int32.peerCodeIdentity.getter@<D0>(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_1001F9118(a1, v5);
  result = *v5;
  v4 = v5[1];
  *a2 = v5[0];
  *(a2 + 16) = v4;
  *(a2 + 32) = v6;
  return result;
}

Swift::Bool __swiftcall Int32.checkEntitlement(for_:capabilities:)(Swift::String for_, Swift::String capabilities)
{
  v3 = v2;
  object = capabilities._object;
  countAndFlagsBits = capabilities._countAndFlagsBits;
  sub_1001F8828(v2, &v49);
  if (v50)
  {
    if (qword_10058AA08 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100037644(v6, qword_10059B5B8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 67109120;
      *(v9 + 4) = v3;
      _os_log_impl(&_mh_execute_header, v7, v8, "Failed to get audit token for PID: %d", v9, 8u);
    }

    return 0;
  }

  v45 = v49;
  token = v49;
  v10 = SecTaskCreateWithAuditToken(0, &token);
  if (!v10)
  {
    if (qword_10058AA08 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_42;
  }

  v11 = v10;
  error = 0;
  v12 = String._bridgeToObjectiveC()();
  v13 = SecTaskCopyValueForEntitlement(v11, v12, &error);

  if (!v13)
  {
    v35 = error;
    if (error)
    {
      if (qword_10058AA08 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_100037644(v36, qword_10059B5B8);
      v37 = v35;
      v38 = Logger.logObject.getter();
      v39 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v38, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        *v40 = 138412290;
        type metadata accessor for CFError(0);
        sub_1001F92B0();
        swift_allocError();
        *v42 = v37;
        v43 = v37;
        v44 = _swift_stdlib_bridgeErrorToNSError();
        *(v40 + 4) = v44;
        *v41 = v44;
        _os_log_impl(&_mh_execute_header, v38, v39, "SecTaskCopyValueForEntitlement error %@", v40, 0xCu);
        sub_100016290(v41, &qword_10058B780, &qword_100480AC0);

        return 0;
      }
    }

LABEL_39:

    return 0;
  }

  v14 = swift_unknownObjectRetain();
  v15 = CFGetTypeID(v14);
  if (v15 == CFBooleanGetTypeID())
  {
    type metadata accessor for CFBoolean(0);
    swift_unknownObjectRetain();
    v16 = swift_dynamicCastUnknownClassUnconditional();
    Value = CFBooleanGetValue(v16);

    if (Value)
    {

      swift_unknownObjectRelease_n();
      return 1;
    }
  }

  v26 = CFGetTypeID(v13);
  swift_unknownObjectRelease();
  if (v26 != CFArrayGetTypeID())
  {

    swift_unknownObjectRelease();
    return 0;
  }

  *token.val = v13;
  swift_unknownObjectRetain();
  sub_10005DC58(&qword_10058CBD0, &qword_100482CA8);
  if ((swift_dynamicCast() & 1) == 0)
  {
    swift_unknownObjectRelease();
    goto LABEL_39;
  }

  v27 = *&v46[0];
  v28 = *(*&v46[0] + 16);
  if (v28)
  {
    v29 = 0;
    v30 = *&v46[0] + 32;
    while (v29 < *(v27 + 16))
    {
      sub_100002B30(v30, &token);
      sub_100085188(&token, v46);
      if (!swift_dynamicCast())
      {
        swift_unknownObjectRelease();

        goto LABEL_39;
      }

      ++v29;

      v30 += 32;
      if (v28 == v29)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_42:
    swift_once();
LABEL_13:
    v19 = type metadata accessor for Logger();
    sub_100037644(v19, qword_10059B5B8);
    v11 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      *&v46[0] = v22;
      *v21 = 136315138;
      token = v45;
      type metadata accessor for audit_token_t(0);
      v23 = String.init<A>(describing:)();
      v25 = sub_100002320(v23, v24, v46);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v11, v20, "Failed to create SecTask from Audit Token: %s", v21, 0xCu);
      sub_100002A00(v22);
    }

    goto LABEL_39;
  }

LABEL_22:
  v31 = sub_1001F82A8(v27);

  v32 = v31 + 5;
  v33 = v31[2] + 1;
  do
  {
    if (!--v33)
    {
      break;
    }

    if (*(v32 - 1) == countAndFlagsBits && *v32 == object)
    {
      break;
    }

    v32 += 2;
  }

  while ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0);

  swift_unknownObjectRelease();
  return v33 != 0;
}

void sub_1001F9118(int a1@<W0>, uint64_t a2@<X8>)
{
  sub_1001F8828(a1, v13);
  if (v14)
  {
    if (qword_10058AA08 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_100037644(v4, qword_10059B5B8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 67109120;
      *(v7 + 4) = a1;
      _os_log_impl(&_mh_execute_header, v5, v6, "Failed to get audit token for PID: %d", v7, 8u);
    }

    v8 = 0;
    v9 = 0;
    goto LABEL_10;
  }

  sub_100018DD0(v13[0], v13[1], v13[2], v13[3], &v15);
  v9 = v16;
  if (!v16)
  {
    v8 = 0;
LABEL_10:
    v12 = 0;
    v11 = 0;
    v10 = 0;
    goto LABEL_11;
  }

  v10 = v18;
  v11 = *(&v17 + 1);
  v12 = v17;
  v8 = v15;
  v19[0] = v15;
  v19[1] = v16;

  sub_10008378C(v19);
  v20 = v17;
  sub_100016290(&v20, &unk_100599FD0, &qword_100482530);
LABEL_11:
  *a2 = v8;
  *(a2 + 8) = v9;
  *(a2 + 16) = v12;
  *(a2 + 24) = v11;
  *(a2 + 32) = v10;
}

unint64_t sub_1001F92B0()
{
  result = qword_100590FC8;
  if (!qword_100590FC8)
  {
    type metadata accessor for CFError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590FC8);
  }

  return result;
}

uint64_t sub_1001F9308(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1001F9350(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001F93A4(uint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v9[0] = a1;
    v9[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    v3 = String.count.getter();
    v4 = v9;
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    _StringGuts._slowWithCString<A>(_:)();
  }

  v2 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v3 = String.count.getter();
  v4 = (v2 + 32);
LABEL_6:
  v5 = sub_1002AAFAC(v4, v3);
  v7 = v6;
  sub_1001FAF04(v5, v6);
  sub_1000124C8(v5, v7);
}

uint64_t NANServiceName.hash.getter()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v10 = String.lowercased()();

  sub_1001F93A4(v10._countAndFlagsBits, v10._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v1 + 8))(v4, v0);
  v11 = v13[1];
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t static NANServiceName.== infix(_:_:)()
{
  v0 = String.lowercased()();
  v1 = String.lowercased()();
  if (v0._countAndFlagsBits == v1._countAndFlagsBits && v0._object == v1._object)
  {
    v2 = 1;
  }

  else
  {
    v2 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v2 & 1;
}

uint64_t sub_1001F9738(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 1;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = _StringGuts.foreignErrorCorrectedScalar(startingAt:)();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = _StringObject.sharedUTF8.getter();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if ((v17 & 1) == 0)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 0;
  return v18 & 1;
}

uint64_t NANServiceName.hash(into:)()
{
  String.lowercased()();
  String.hash(into:)();
}

uint64_t NANServiceName.Hash.init(serviceName:)()
{
  v0 = type metadata accessor for SHA256Digest();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SHA256();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v10 = String.lowercased()();

  sub_1001F93A4(v10._countAndFlagsBits, v10._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v1 + 8))(v4, v0);
  v11 = v13[1];
  (*(v6 + 8))(v9, v5);
  return v11;
}

uint64_t sub_1001F9B94(_BYTE *a1)
{
  v2 = String.count.getter();
  v3 = sub_1002AAFAC(a1, v2);
  v5 = v4;
  sub_1001FAF04(v3, v4);
  return sub_1000124C8(v3, v5);
}

uint64_t sub_1001F9C04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = sub_10005DC58(&qword_10058C7F8, &unk_100482000);
  v14[3] = v6;
  v14[4] = sub_1000B2394();
  v7 = swift_allocObject();
  v14[0] = v7;
  *(v7 + 16) = xmmword_100497BD0;
  *(v7 + 32) = a1;
  *(v7 + 40) = a2;
  v8 = sub_100029B34(v14, v6);
  v10 = *v8;
  v11 = v8[1];
  Slice<>.withUnsafeBytes<A>(_:)();
  result = sub_100002A00(v14);
  *a3 = v12;
  a3[1] = v13;
  return result;
}

uint64_t NANServiceName.Hash.init(_:_:_:_:_:_:)(char a1, char a2, char a3, char a4, char a5, char a6)
{
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1004817D0;
  *(v12 + 32) = a1;
  *(v12 + 33) = a2;
  *(v12 + 34) = a3;
  *(v12 + 35) = a4;
  *(v12 + 36) = a5;
  *(v12 + 37) = a6;
  v13 = sub_10002D874(v12);

  return v13;
}

uint64_t NANServiceName.Hash.description.getter(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v19 = *(v4 - 8);
  v5 = *(v19 + 64);
  __chkstk_darwin();
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2 >> 62 == 2)
  {
    v8 = *(a1 + 16);
  }

  sub_10000AB0C(a1, a2);
  Data.Iterator.init(_:at:)();
  sub_1001FB9FC(&qword_10058C7C0, &type metadata accessor for Data.Iterator);
  dispatch thunk of IteratorProtocol.next()();
  if (v24)
  {
    v9 = 0;
  }

  else
  {
    v9 = 0;
    v10 = 0xE000000000000000;
    v20 = xmmword_100480F40;
    do
    {
      v11 = v23;
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v12 = swift_allocObject();
      *(v12 + 16) = v20;
      *(v12 + 56) = &type metadata for UInt8;
      *(v12 + 64) = &protocol witness table for UInt8;
      *(v12 + 32) = v11;
      v13 = String.init(format:_:)();
      v15 = v14;
      v21 = v9;
      v22 = v10;

      v16._countAndFlagsBits = v13;
      v16._object = v15;
      String.append(_:)(v16);

      v9 = v21;
      v10 = v22;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v24 != 1);
  }

  (*(v19 + 8))(v7, v4);
  return v9;
}

uint64_t sub_1001FA020(uint64_t a1)
{
  v2 = sub_1001FB600();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001FA05C(uint64_t a1)
{
  v2 = sub_1001FB600();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANServiceName.Hash.encode(to:)(void *a1, uint64_t a2, unint64_t a3)
{
  v6 = sub_10005DC58(&qword_100590FD8, &qword_100497BE8);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v13 - v9;
  v11 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001FB600();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = a2;
  v14 = a3;
  sub_10000AB0C(a2, a3);
  sub_1000B8088();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  sub_1000124C8(v13, v14);
  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1001FA200@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1001FB4A0(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_1001FA264@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x676E69727473 && a2 == 0xE600000000000000)
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

uint64_t sub_1001FA2E8(uint64_t a1)
{
  v2 = sub_1001FB654();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1001FA324(uint64_t a1)
{
  v2 = sub_1001FB654();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANServiceName.encode(to:)(void *a1)
{
  v2 = sub_10005DC58(&qword_100590FE8, &qword_100497BF0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001FB654();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int NANServiceName.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t NANServiceName.init(from:)(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_100590FF8, &qword_100497BF8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v11 - v6;
  v8 = a1[4];
  v9 = sub_100029B34(a1, a1[3]);
  sub_1001FB654();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100002A00(a1);
  return v9;
}

Swift::Int sub_1001FA668()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001FA6D0()
{
  v1 = *v0;
  v2 = v0[1];
  String.lowercased()();
  String.hash(into:)();
}

Swift::Int sub_1001FA724()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001FA788@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_100590FF8, &qword_100497BF8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001FB654();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  (*(v6 + 8))(v9, v5);
  result = sub_100002A00(a1);
  *a2 = v11;
  a2[1] = v13;
  return result;
}

uint64_t sub_1001FA904(void *a1)
{
  v3 = sub_10005DC58(&qword_100590FE8, &qword_100497BF0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v12 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1001FB654();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_1001FAA40(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  v5 = a2[1];
  v6 = String.lowercased()();
  v7 = String.lowercased()();
  if (v6._countAndFlagsBits == v7._countAndFlagsBits && v6._object == v7._object)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t NANServiceName.customMirror.getter(uint64_t a1, uint64_t a2)
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

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001FACEC()
{
  String.append(_:)(*v0);
  v1._countAndFlagsBits = 39;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  return 39;
}

uint64_t sub_1001FAD3C()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = v13 - v7;
  v9 = *v0;
  v10 = v0[1];
  v13[2] = v9;
  v13[3] = v10;
  v13[1] = _swiftEmptyArrayStorage;
  v11 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1001FAF04(uint64_t a1, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v2)
    {
      type metadata accessor for SHA256();
      sub_1001FB9FC(&qword_10059AB90, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v4 = a1;
    v5 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1001FB0E4(v4, v5);
  }

  if (v2 == 2)
  {
    v4 = *(a1 + 16);
    v5 = *(a1 + 24);
    return sub_1001FB0E4(v4, v5);
  }

  type metadata accessor for SHA256();
  sub_1001FB9FC(&qword_10059AB90, &type metadata accessor for SHA256);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t sub_1001FB0E4(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      __DataStorage._length.getter();
      type metadata accessor for SHA256();
      sub_1001FB9FC(&qword_10059AB90, &type metadata accessor for SHA256);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P14NANServiceNameVyACSgSScfC_0(uint64_t a1, unint64_t a2)
{
  v4 = *(type metadata accessor for CharacterSet() - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v22[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin();
  v9 = &v22[-v8];
  __chkstk_darwin();
  v11 = &v22[-v10];
  v12 = __chkstk_darwin();
  v14 = &v22[-v13];
  v15 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {
    v19 = v12;
    if (String.UTF8View._foreignCount()() <= 254)
    {
      v20 = String.UTF8View._foreignCount()();
      v12 = v19;
      if (v20 != 1)
      {
        return a1;
      }

      goto LABEL_7;
    }

LABEL_13:

    return 0;
  }

  if (v15 >= 0xFF)
  {
    goto LABEL_13;
  }

  if (v15 == 1)
  {
LABEL_7:
    v16 = v12;
    static CharacterSet.letters.getter();
    static CharacterSet.decimalDigits.getter();
    CharacterSet.union(_:)();
    v17 = *(v4 + 8);
    v17(v7, v16);
    v17(v9, v16);
    CharacterSet.init(charactersIn:)();
    CharacterSet.union(_:)();
    v17(v9, v16);
    v17(v11, v16);
    __chkstk_darwin();
    *&v22[-16] = v14;

    v18 = sub_1001F9738(sub_1001FB9A8, &v22[-32], a1, a2);

    if (v18)
    {
      v17(v14, v16);
      return a1;
    }

    v17(v14, v16);
    return 0;
  }

  return a1;
}

uint64_t sub_1001FB4A0(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    v5 = v16;
    sub_100031694(v15, v16);
    v6 = UnkeyedDecodingContainer.decodeData(with:)(6, v5);
    v9 = v7 >> 62;
    if ((v7 >> 62) > 1)
    {
      if (v9 != 2)
      {
        goto LABEL_13;
      }

      v12 = v6;
      v6 = *(v6 + 16);
      v10 = v12;
      v13 = *(v12 + 24);
    }

    else
    {
      if (!v9)
      {
        v10 = v6;
        v11 = v7;
LABEL_14:
        v4 = Data.subdata(in:)();
        sub_1000124C8(v10, v11);
        sub_100002A00(v15);
        sub_100002A00(a1);
        return v4;
      }

      v14 = v6;
      v6 = v6;
      v10 = v14;
      v13 = v14 >> 32;
    }

    v11 = v7;
    if (v13 >= v6)
    {
      goto LABEL_14;
    }

    __break(1u);
LABEL_13:
    v11 = v7;
    v10 = v6;
    goto LABEL_14;
  }

  sub_100002A00(a1);
  return v4;
}

unint64_t sub_1001FB600()
{
  result = qword_100590FE0;
  if (!qword_100590FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590FE0);
  }

  return result;
}

unint64_t sub_1001FB654()
{
  result = qword_100590FF0;
  if (!qword_100590FF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590FF0);
  }

  return result;
}

unint64_t sub_1001FB6AC()
{
  result = qword_100591000;
  if (!qword_100591000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591000);
  }

  return result;
}

unint64_t sub_1001FB704()
{
  result = qword_100591008;
  if (!qword_100591008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591008);
  }

  return result;
}

unint64_t sub_1001FB79C()
{
  result = qword_100591010;
  if (!qword_100591010)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591010);
  }

  return result;
}

unint64_t sub_1001FB7F4()
{
  result = qword_100591018;
  if (!qword_100591018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591018);
  }

  return result;
}

unint64_t sub_1001FB84C()
{
  result = qword_100591020;
  if (!qword_100591020)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591020);
  }

  return result;
}

unint64_t sub_1001FB8A4()
{
  result = qword_100591028;
  if (!qword_100591028)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591028);
  }

  return result;
}

unint64_t sub_1001FB8FC()
{
  result = qword_100591030;
  if (!qword_100591030)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591030);
  }

  return result;
}

unint64_t sub_1001FB954()
{
  result = qword_100591038;
  if (!qword_100591038)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591038);
  }

  return result;
}

uint64_t sub_1001FB9A8(unsigned int *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  return CharacterSet.contains(_:)() & 1;
}

uint64_t sub_1001FB9DC(_BYTE *a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_1001F9B94(a1);
}

uint64_t sub_1001FB9FC(unint64_t *a1, void (*a2)(uint64_t))
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

CoreP2P::LinkStatsUpdate __swiftcall LinkStatsUpdate.init(txPackets:rxPackets:snr:cca:mcs:)(Swift::UInt64 txPackets, Swift::UInt64 rxPackets, Swift::UInt8 snr, Swift::UInt8 cca, Swift::UInt8 mcs)
{
  v5 = snr | (cca << 8) | (mcs << 16);
  result.rxPackets = rxPackets;
  result.txPackets = txPackets;
  result.snr = v5;
  result.cca = BYTE1(v5);
  result.mcs = BYTE2(v5);
  return result;
}

Swift::Int __swiftcall TransmissionParameters.getRateTableIndex(_:)(Swift::UInt8 a1)
{
  v1 = a1 / 5u;
  if (v1 >= 7)
  {
    return 7;
  }

  else
  {
    return v1;
  }
}

Swift::Void __swiftcall TransmissionParameters.nextTransmissionParameters(snr:)(Swift::UInt8_optional snr)
{
  v2 = *v1;
  if ((*&snr & 0x100) != 0 || !snr.value)
  {
    goto LABEL_9;
  }

  v3 = snr.value / 5u;
  if (v3 >= 7)
  {
    v3 = 7;
  }

  v4 = *(&off_100556858 + v3 + 4);
  if (v4[2] < 2uLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = v4[5];
  if (v5 <= v2)
  {
    if (v4[4] <= v2)
    {
      return;
    }

    LOBYTE(v5) = v2 + 1;
    if ((((v2 + 1) >> 8) & 1) == 0)
    {
      goto LABEL_13;
    }

LABEL_16:
    __break(1u);
    return;
  }

  if (v5 > 0xFF)
  {
    __break(1u);
LABEL_9:
    if (v2 > 0xA)
    {
      return;
    }

    LOBYTE(v5) = v2 + 1;
  }

LABEL_13:
  *v1 = v5;
}

Swift::Void __swiftcall TransmissionParameters.previousTransmissionParameters(snr:)(Swift::UInt8_optional snr)
{
  v2 = *v1;
  if ((*&snr & 0x100) != 0 || !snr.value)
  {
    goto LABEL_9;
  }

  v3 = snr.value / 5u;
  if (v3 >= 7)
  {
    v3 = 7;
  }

  v4 = *(&off_100556858 + v3 + 4);
  v5 = v4[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_17;
  }

  v6 = v4[4];
  if (v6 >= v2)
  {
    if (v5 != 1)
    {
      if (v4[5] >= v2)
      {
        return;
      }

      LOBYTE(v6) = v2 - 1;
      if (((v2 - 1) & 0xFFFFFF00) == 0)
      {
        goto LABEL_14;
      }

LABEL_18:
      __break(1u);
      return;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v6 < 0)
  {
    __break(1u);
LABEL_9:
    if (!v2)
    {
      return;
    }

    LOBYTE(v6) = v2 - 1;
  }

LABEL_14:
  *v1 = v6;
}

Swift::Void __swiftcall TransmissionParameters.updateTransmissionParameters(per:forSNR:)(Swift::Double per, Swift::UInt8 forSNR)
{
  v3 = forSNR / 5u;
  if (v3 >= 7)
  {
    v3 = 7;
  }

  v4 = *(&off_100556858 + v3 + 4);
  v5 = v4[2];
  if (!v5)
  {
    __break(1u);
    goto LABEL_20;
  }

  v6 = v4[4];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v6 > 0xFF)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v7 = *v2;
  if (v7 > v6)
  {
LABEL_17:
    *v2 = v6;
    return;
  }

  if (v5 == 1)
  {
    goto LABEL_22;
  }

  v6 = v4[5];
  if ((v6 & 0x8000000000000000) != 0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v6 > 0xFF)
  {
LABEL_24:
    __break(1u);
    return;
  }

  if (v7 < v6)
  {
    goto LABEL_17;
  }

  if (per == 0.0 && v7 <= 0xA)
  {
    LOBYTE(v6) = v7 + 1;
    goto LABEL_17;
  }

  if (per == 1.0 && *v2)
  {
    LOBYTE(v6) = v7 - 1;
    goto LABEL_17;
  }
}

void TransmissionParameters.hash(into:)(int a1, unint64_t a2)
{
  Hasher._combine(_:)(a2);
  if (BYTE1(a2) <= 3u)
  {
    if (BYTE1(a2) == 2)
    {
      v3 = 0;
      goto LABEL_12;
    }

    if (BYTE1(a2) == 3)
    {
      v3 = 1;
      goto LABEL_12;
    }

LABEL_14:
    Hasher._combine(_:)(2uLL);
    Hasher._combine(_:)(BYTE1(a2) & 1);
    goto LABEL_13;
  }

  if (BYTE1(a2) == 4)
  {
    v3 = 3;
    goto LABEL_12;
  }

  if (BYTE1(a2) == 5)
  {
    v3 = 4;
    goto LABEL_12;
  }

  if (BYTE1(a2) != 6)
  {
    goto LABEL_14;
  }

  v3 = 5;
LABEL_12:
  Hasher._combine(_:)(v3);
LABEL_13:
  Hasher._combine(_:)(BYTE2(a2));
  Hasher._combine(_:)(BYTE3(a2));
  Hasher._combine(_:)(HIDWORD(a2) & 1);
}

Swift::Int TransmissionParameters.hashValue.getter(uint64_t a1)
{
  Hasher.init(_seed:)();
  TransmissionParameters.hash(into:)(&v3, a1 & 0x1FFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_1001FBDC0()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  v6 = &_mh_execute_header;
  if (!v5)
  {
    v6 = 0;
  }

  TransmissionParameters.hash(into:)(&v8, v6 | (v4 << 24) | (v3 << 16) | (v2 << 8) | v1);
  return Hasher._finalize()();
}

void sub_1001FBE40(int a1)
{
  v2 = &_mh_execute_header;
  if (!v1[4])
  {
    v2 = 0;
  }

  TransmissionParameters.hash(into:)(a1, v2 | (v1[3] << 24) | (v1[2] << 16) | (v1[1] << 8) | *v1);
}

Swift::Int sub_1001FBE74()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  v6 = &_mh_execute_header;
  if (!v5)
  {
    v6 = 0;
  }

  TransmissionParameters.hash(into:)(&v8, v6 | (v4 << 24) | (v3 << 16) | (v2 << 8) | v1);
  return Hasher._finalize()();
}

uint64_t sub_1001FBEF0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  if (a1[4])
  {
    v6 = &_mh_execute_header;
  }

  else
  {
    v6 = 0;
  }

  v7 = v6 | (v5 << 24) | (v4 << 16) | (v3 << 8);
  if (a2[4])
  {
    v8 = &_mh_execute_header;
  }

  else
  {
    v8 = 0;
  }

  return sub_1001FC278(v7 | v2, v8 | (a2[3] << 24) | (a2[2] << 16) | (a2[1] << 8) | *a2);
}

BOOL static LinkStatsUpdate.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5, int a6)
{
  v6 = BYTE1(a3) == BYTE1(a6) && BYTE2(a3) == BYTE2(a6);
  if (a3 != a6)
  {
    v6 = 0;
  }

  if (a2 != a5)
  {
    v6 = 0;
  }

  return a1 == a4 && v6;
}

void LinkStatsUpdate.hash(into:)(int a1, Swift::UInt64 a2, Swift::UInt64 a3, unsigned int a4)
{
  v4 = a4;
  v6 = a4 >> 8;
  v7 = HIWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(a3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

Swift::Int LinkStatsUpdate.hashValue.getter(Swift::UInt64 a1, Swift::UInt64 a2, unsigned int a3)
{
  v3 = a3;
  v6 = a3 >> 8;
  v7 = HIWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

Swift::Int sub_1001FC0A4()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

void sub_1001FC138()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 17);
  v4 = *(v0 + 18);
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
}

Swift::Int sub_1001FC1A0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 17);
  v5 = *(v0 + 18);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  return Hasher._finalize()();
}

uint64_t sub_1001FC278(unint64_t a1, unint64_t a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  if (BYTE1(a1) <= 3u)
  {
    if (BYTE1(a1) == 2)
    {
      if (BYTE1(a2) != 2)
      {
        return 0;
      }

      goto LABEL_17;
    }

    if (BYTE1(a1) == 3)
    {
      if (BYTE1(a2) != 3)
      {
        return 0;
      }

      goto LABEL_17;
    }

    goto LABEL_19;
  }

  if (BYTE1(a1) == 4)
  {
    if (BYTE1(a2) != 4)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (BYTE1(a1) == 5)
  {
    if (BYTE1(a2) != 5)
    {
      return 0;
    }

    goto LABEL_17;
  }

  if (BYTE1(a1) != 6)
  {
LABEL_19:
    if (BYTE1(a2) - 2 >= 5)
    {
      if (BYTE2(a2) ^ BYTE2(a1)) | (BYTE3(a2) ^ BYTE3(a1)) || (((a2 >> 8) ^ (a1 >> 8)))
      {
        return 0;
      }

      return BYTE4(a1) & 1 ^ ((a2 & &_mh_execute_header) == 0);
    }

    return 0;
  }

  if (BYTE1(a2) != 6)
  {
    return 0;
  }

LABEL_17:
  if (!((BYTE2(a2) ^ BYTE2(a1)) | (BYTE3(a2) ^ BYTE3(a1))))
  {
    return BYTE4(a1) & 1 ^ ((a2 & &_mh_execute_header) == 0);
  }

  return 0;
}

unint64_t sub_1001FC38C()
{
  result = qword_100591040;
  if (!qword_100591040)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591040);
  }

  return result;
}

unint64_t sub_1001FC3E4()
{
  result = qword_100591048;
  if (!qword_100591048)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591048);
  }

  return result;
}

unint64_t sub_1001FC43C()
{
  result = qword_100591050;
  if (!qword_100591050)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591050);
  }

  return result;
}

unint64_t sub_1001FC494()
{
  result = qword_100591058;
  if (!qword_100591058)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591058);
  }

  return result;
}

unint64_t sub_1001FC4EC()
{
  result = qword_100591060;
  if (!qword_100591060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591060);
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TransmissionParameters(uint64_t result, int *a2)
{
  v2 = *a2;
  *(result + 4) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for TransmissionParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 5))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 4);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for TransmissionParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 4) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 5) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 5) = 0;
    }

    if (a2)
    {
      *(result + 4) = a2 + 1;
    }
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for LinkStatsUpdate(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for LinkStatsUpdate(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 19))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for LinkStatsUpdate(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 19) = v3;
  return result;
}

uint64_t sub_1001FC690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
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

double BinaryEncoder.__allocating_init(userInfo:)(uint64_t a1)
{
  v2 = swift_allocObject();
  result = 0.0;
  *(v2 + 16) = xmmword_100480A90;
  *(v2 + 32) = a1;
  return result;
}

uint64_t static BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v7 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryEncoder();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100480A90;
  v9 = v8 + 16;
  *(v8 + 32) = v7;
  BinaryEncoder.encode<A>(_:)(a1, a2, a3);
  if (!v3)
  {
    swift_beginAccess();
    v9 = *(v8 + 16);
    sub_10000AB0C(v9, *(v8 + 24));
  }

  return v9;
}

{
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v20 - v10;
  v12 = *(a2 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v11, a1, v7);
  if ((*(v12 + 48))(v11, 1, a2) == 1)
  {
    (*(v8 + 8))(v11, v7);
    return 0;
  }

  else
  {
    (*(v12 + 32))(v15, v11, a2);
    v17 = sub_100033AA8(_swiftEmptyArrayStorage);
    type metadata accessor for BinaryEncoder();
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100480A90;
    *(v18 + 32) = v17;
    BinaryEncoder.encode<A>(_:)(v15, a2, a3);
    (*(v12 + 8))(v15, a2);
    if (v3)
    {
    }

    else
    {
      swift_beginAccess();
      v19 = *(v18 + 16);
      sub_10000AB0C(v19, *(v18 + 24));

      return v19;
    }
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> UnkeyedEncodingContainer.encodeStringWithUInt8SizePrefix(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;

  v5 = sub_10016FD40(countAndFlagsBits, object);
  v7 = v5;
  v8 = v6;
  v9 = v6 >> 62;
  if ((v6 >> 62) > 1)
  {
    if (v9 != 2)
    {
LABEL_11:
      v10 = 0;
      goto LABEL_12;
    }

    v12 = *(v5 + 16);
    v11 = *(v5 + 24);
    v10 = v11 - v12;
    if (!__OFSUB__(v11, v12))
    {
      goto LABEL_12;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v10 = BYTE6(v6);
    goto LABEL_12;
  }

  v10 = BYTE4(v5) - v5;
  if (__OFSUB__(HIDWORD(v5), v5))
  {
    __break(1u);
    goto LABEL_11;
  }

LABEL_12:
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    sub_10000AB0C(v7, v8);
    sub_1002B9AE4(v10, v7, v8, &v14);
    v13 = v14;
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(v13, *(&v13 + 1));
  }

  sub_1000124C8(v7, v8);
}

uint64_t sub_1001FCC48(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  v5 = *(v4 + 16);
  v6 = *(v4 + 24);
  *(v4 + 16) = v2;
  *(v4 + 24) = v3;
  sub_10000AB0C(v2, v3);
  return sub_1000124C8(v5, v6);
}

uint64_t BinaryEncoder.data.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);
  sub_10000AB0C(v1, *(v0 + 24));
  return v1;
}

uint64_t BinaryEncoder.userInfo.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
}

uint64_t BinaryEncoder.userInfo.setter(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = a1;
}

uint64_t BinaryEncoder.init(userInfo:)(uint64_t a1)
{
  *(v1 + 16) = xmmword_100480A90;
  *(v1 + 32) = a1;
  return v1;
}

Swift::Void __swiftcall BinaryEncoder.reserveCapacity(_:)(Swift::Int a1)
{
  swift_beginAccess();
  Data._Representation.reserveCapacity(_:)(a1);
  swift_endAccess();
}

uint64_t sub_1001FCE40@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for BinaryEncoder();
  a2[4] = sub_1001FED58();
  *a2 = a1;
}

uint64_t sub_1001FCE8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  a2[3] = type metadata accessor for BinaryEncoder();
  a2[4] = sub_1001FED58();
  *a2 = a1;
}

uint64_t sub_1001FCF04@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  a2[3] = &type metadata for BinaryEncoder.UnkeyedContainer;
  a2[4] = sub_1000D12E4();
  *a2 = a1;
}

uint64_t sub_1001FCF98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6[0] = a1;
  v6[1] = a2;
  return sub_1001FEE24(v6, *v4, *(a4 + 16), &type metadata for String, *(a4 + 24), &protocol witness table for String);
}

uint64_t sub_1001FD21C(char a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v12 = a1;
  v8 = *v6;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  a5();
  return sub_1001FEDF8(&v12, v8, v9, a6);
}

uint64_t sub_1001FD2D0(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v12 = a1;
  v8 = *v6;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  a5();
  return sub_1001FEDF8(&v12, v8, v9, a6);
}

uint64_t sub_1001FD384(int a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v12 = a1;
  v8 = *v6;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  a5();
  return sub_1001FEDF8(&v12, v8, v9, a6);
}

uint64_t sub_1001FD438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(void), uint64_t a6)
{
  v12 = a1;
  v8 = *v6;
  v9 = *(a3 + 16);
  v10 = *(a3 + 24);
  a5();
  return sub_1001FEDF8(&v12, v8, v9, a6);
}

uint64_t sub_1001FD7F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = *v5;
  v7 = *(a5 + 16);
  v8 = *(a5 + 24);
  return sub_1001FCED8();
}

uint64_t sub_1001FD808@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1001FCF04(*v2, a2);
}

uint64_t sub_1001FD818@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1001FCE8C(*v2, a2);
}

uint64_t sub_1001FD828@<X0>(uint64_t a1@<X1>, void *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  return sub_1001FCE40(*v2, a2);
}

uint64_t sub_1001FD890()
{
  v1 = *v0;
  result = swift_beginAccess();
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  v5 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (!v5)
    {
      return BYTE6(v4);
    }

    goto LABEL_8;
  }

  result = 0;
  if (v5 == 2)
  {
    v7 = v3 + 16;
    v3 = *(v3 + 16);
    v6 = *(v7 + 8);
    result = v6 - v3;
    if (__OFSUB__(v6, v3))
    {
      __break(1u);
LABEL_8:
      v8 = __OFSUB__(HIDWORD(v3), v3);
      v9 = HIDWORD(v3) - v3;
      if (v8)
      {
        __break(1u);
      }

      else
      {
        return v9;
      }
    }
  }

  return result;
}

uint64_t sub_1001FDD08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = *v3;
  a3[3] = a1;
  a3[4] = a2;
  *a3 = v4;
}

uint64_t sub_1001FDD1C@<X0>(void *a1@<X8>)
{
  v3 = *v1;
  a1[3] = type metadata accessor for BinaryEncoder();
  a1[4] = sub_1001FED58();
  *a1 = v3;
}

uint64_t sub_1001FDD68()
{
  v1 = *v0;
  v3[3] = type metadata accessor for BinaryEncoder();
  v3[4] = sub_1001FED58();
  v3[0] = v1;

  Bool.encode(to:)();
  return sub_100002A00(v3);
}

uint64_t sub_1001FDDDC()
{
  v1 = *v0;
  v3[3] = type metadata accessor for BinaryEncoder();
  v3[4] = sub_1001FED58();
  v3[0] = v1;

  String.encode(to:)();
  return sub_100002A00(v3);
}

uint64_t sub_1001FDE58()
{
  v1 = *v0;
  v3[3] = type metadata accessor for BinaryEncoder();
  v3[4] = sub_1001FED58();
  v3[0] = v1;

  Float.encode(to:)();
  return sub_100002A00(v3);
}

uint64_t BinaryEncoder.container<A>(keyedBy:)()
{
  type metadata accessor for BinaryEncoder.KeyedContainer();

  swift_getWitnessTable();
  return KeyedEncodingContainer.init<A>(_:)();
}

uint64_t sub_1001FE03C@<X0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  a2[3] = &type metadata for BinaryEncoder.UnkeyedContainer;
  a2[4] = a1();
  *a2 = v2;
}

uint64_t BinaryEncoder.encode(_:)(uint64_t a1, unint64_t a2)
{
  swift_beginAccess();
  v8[3] = &type metadata for Data;
  v8[4] = &protocol witness table for Data;
  v8[0] = a1;
  v8[1] = a2;
  v4 = sub_100029B34(v8, &type metadata for Data);
  v5 = *v4;
  v6 = v4[1];
  sub_10000AB0C(a1, a2);
  sub_100178A18(v5, v6);
  sub_100002A00(v8);
  return swift_endAccess();
}

uint64_t sub_1001FE158(char a1)
{
  v8 = a1;
  v1 = sub_10004F3B0(&v8, v9);
  v3 = v2;
  swift_beginAccess();
  v9[3] = &type metadata for Data;
  v9[4] = &protocol witness table for Data;
  v9[0] = v1;
  v9[1] = v3;
  v4 = sub_100029B34(v9, &type metadata for Data);
  v5 = *v4;
  v6 = v4[1];
  sub_10000AB0C(v1, v3);
  sub_100178A18(v5, v6);
  sub_1000124C8(v1, v3);
  sub_100002A00(v9);
  return swift_endAccess();
}

uint64_t sub_1001FE254(__int16 a1)
{
  v8 = a1;
  v1 = sub_10004F3B0(&v8, v9);
  v3 = v2;
  swift_beginAccess();
  v9[3] = &type metadata for Data;
  v9[4] = &protocol witness table for Data;
  v9[0] = v1;
  v9[1] = v3;
  v4 = sub_100029B34(v9, &type metadata for Data);
  v5 = *v4;
  v6 = v4[1];
  sub_10000AB0C(v1, v3);
  sub_100178A18(v5, v6);
  sub_1000124C8(v1, v3);
  sub_100002A00(v9);
  return swift_endAccess();
}

uint64_t sub_1001FE350(int a1)
{
  v8 = a1;
  v1 = sub_10004F3B0(&v8, v9);
  v3 = v2;
  swift_beginAccess();
  v9[3] = &type metadata for Data;
  v9[4] = &protocol witness table for Data;
  v9[0] = v1;
  v9[1] = v3;
  v4 = sub_100029B34(v9, &type metadata for Data);
  v5 = *v4;
  v6 = v4[1];
  sub_10000AB0C(v1, v3);
  sub_100178A18(v5, v6);
  sub_1000124C8(v1, v3);
  sub_100002A00(v9);
  return swift_endAccess();
}

uint64_t sub_1001FE44C(uint64_t a1)
{
  v8 = a1;
  v1 = sub_10004F3B0(&v8, v9);
  v3 = v2;
  swift_beginAccess();
  v9[3] = &type metadata for Data;
  v9[4] = &protocol witness table for Data;
  v9[0] = v1;
  v9[1] = v3;
  v4 = sub_100029B34(v9, &type metadata for Data);
  v5 = *v4;
  v6 = v4[1];
  sub_10000AB0C(v1, v3);
  sub_100178A18(v5, v6);
  sub_1000124C8(v1, v3);
  sub_100002A00(v9);
  return swift_endAccess();
}

uint64_t BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of FixedWidthInteger.littleEndian.getter();
  sub_1001FC690(v7, sub_1001FED38, v2, a2, &type metadata for Never, &type metadata for () + 8, &protocol witness table for Never, v8);
  return (*(v4 + 8))(v7, a2);
}

uint64_t sub_1001FE698(uint64_t a1, uint64_t a2)
{
  v2 = sub_10004F3B0(a1, a2);
  v4 = v3;
  swift_beginAccess();
  v9[3] = &type metadata for Data;
  v9[4] = &protocol witness table for Data;
  v9[0] = v2;
  v9[1] = v4;
  v5 = sub_100029B34(v9, &type metadata for Data);
  v6 = *v5;
  v7 = v5[1];
  sub_10000AB0C(v2, v4);
  sub_100178A18(v6, v7);
  sub_1000124C8(v2, v4);
  sub_100002A00(v9);
  return swift_endAccess();
}

uint64_t BinaryEncoder.encode<A>(_:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v32 = a3;
  v5 = type metadata accessor for UUID();
  v31 = *(v5 - 8);
  v6 = *(v31 + 64);
  __chkstk_darwin();
  v8 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v30 - v9;
  __chkstk_darwin();
  v12 = &v30 - v11;
  v13 = *(a2 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v16, a1, a2);
  if (swift_dynamicCast())
  {
    v17 = v39;
    v18 = v40;
    swift_beginAccess();
    v37 = &type metadata for Data;
    v38 = &protocol witness table for Data;
    v34 = v17;
    v35 = v18;
    v19 = sub_100029B34(&v34, &type metadata for Data);
    v20 = *v19;
    v21 = v19[1];
    sub_10000AB0C(v17, v18);
    sub_100178A18(v20, v21);
    sub_100002A00(&v34);
    swift_endAccess();
    sub_1000124C8(v17, v18);
  }

  else if (swift_dynamicCast())
  {
    v22 = v31;
    (*(v31 + 32))(v10, v12, v5);
    (*(v22 + 16))(v8, v10, v5);
    v34 = UUID.uuid.getter();
    v35 = v23;
    v24 = sub_10004F3B0(&v34, &v36);
    v31 = *(v22 + 8);
    v32 = v25;
    (v31)(v8, v5);
    swift_beginAccess();
    v37 = &type metadata for Data;
    v38 = &protocol witness table for Data;
    v26 = v32;
    v34 = v24;
    v35 = v32;
    v27 = sub_100029B34(&v34, &type metadata for Data);
    v28 = v27[1];
    v30 = *v27;
    sub_10000AB0C(v24, v26);
    sub_100178A18(v30, v28);
    sub_100002A00(&v34);
    swift_endAccess();
    sub_1000124C8(v24, v32);
    (v31)(v10, v5);
  }

  else
  {
    v37 = type metadata accessor for BinaryEncoder();
    v38 = sub_1001FED58();
    v34 = v33;

    dispatch thunk of Encodable.encode(to:)();
    sub_100002A00(&v34);
  }

  return (*(v13 + 8))(v16, a2);
}

void *BinaryEncoder.deinit()
{
  sub_1000124C8(v0[2], v0[3]);
  v1 = v0[4];

  return v0;
}

uint64_t BinaryEncoder.__deallocating_deinit()
{
  sub_1000124C8(v0[2], v0[3]);
  v1 = v0[4];

  return swift_deallocClassInstance();
}

uint64_t sub_1001FEBBC()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 32);
}

uint64_t sub_1001FEC54@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = &type metadata for BinaryEncoder.UnkeyedContainer;
  a2[4] = a1();
  *a2 = v4;
}

unint64_t sub_1001FECE4()
{
  result = qword_100591068;
  if (!qword_100591068)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591068);
  }

  return result;
}

unint64_t sub_1001FED58()
{
  result = qword_10058CFC0;
  if (!qword_10058CFC0)
  {
    type metadata accessor for BinaryEncoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CFC0);
  }

  return result;
}

uint64_t sub_1001FEDAC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t RoutingSocket.init()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for RoutingSocket();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  Logger.init(subsystem:category:)();
  *&v6[*(v2 + 20)] = 0;
  type metadata accessor for Socket();
  swift_allocObject();
  v7 = Socket.init(domain:type:proto:)(17, 3, 0);
  if (!v7)
  {
    goto LABEL_4;
  }

  v8 = v7;
  v9 = fcntl(_:_:)(*(v7 + 4), 3);
  if (fcntl(_:_:_:)(*(v8 + 4), 4, v9 | 4))
  {

LABEL_4:
    v10 = type metadata accessor for Logger();
    (*(*(v10 - 8) + 8))(v6, v10);
    return (*(v3 + 56))(a1, 1, 1, v2);
  }

  *&v6[*(v2 + 24)] = v8;
  sub_100200420(v6, a1);
  (*(v3 + 56))(a1, 0, 1, v2);
  return sub_100200484(v6);
}

uint64_t RoutingSocket.macAddress(for:)(int *a1)
{
  v37 = xmmword_100480A90;
  v32 = 0u;
  memset(v33, 0, sizeof(v33));
  v30 = 0u;
  v31 = 0u;
  v29[0] = 67436544;
  v29[1] = 0x1100000807;
  v4 = *(type metadata accessor for RoutingSocket() + 20);
  DWORD1(v30) = *(v1 + v4) + 1;
  *(v1 + v4) = DWORD1(v30);
  v5 = a1[8] & 1;
  if (a1[8])
  {
    v6 = 140;
  }

  else
  {
    v6 = 128;
  }

  LOWORD(v29[0]) = v6;
  Data._Representation.append(contentsOf:)();
  v7 = *a1;
  if (v5)
  {
    *v34 = 7708;
    *&v34[12] = *(a1 + 1);
    v35 = a1[3];
    v36 = 0;
    *&v34[8] = v7;
  }

  else
  {
    *&v34[8] = 0;
    *v34 = 528;
    *&v34[4] = v7;
  }

  Data._Representation.append(contentsOf:)();
  *&v34[2] = 0x600060000uLL;
  *&v34[18] = 0;
  *v34 = 4628;
  Data._Representation.append(contentsOf:)();
  sub_10020077C(&v37, v1);
  if (v2)
  {
    return sub_1000124C8(v37, *(&v37 + 1));
  }

  v27 = 0;
  v26 = 0;
  v28 = 1;
  v8 = v37;
  v9 = *(&v37 + 1) >> 62;
  if ((*(&v37 + 1) >> 62) > 1)
  {
    if (v9 != 2)
    {
      memset(v25, 0, 14);
      v11 = v25;
      v10 = v25;
      goto LABEL_30;
    }

    v12 = *(v37 + 16);
    v13 = *(v37 + 24);
    v14 = __DataStorage._bytes.getter();
    if (v14)
    {
      v15 = __DataStorage._offset.getter();
      if (__OFSUB__(v12, v15))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v14 += v12 - v15;
    }

    v16 = __OFSUB__(v13, v12);
    v17 = v13 - v12;
    if (!v16)
    {
      goto LABEL_22;
    }

    __break(1u);
  }

  else if (!v9)
  {
    v25[0] = v37;
    LODWORD(v25[1]) = DWORD2(v37);
    WORD2(v25[1]) = WORD6(v37);
    v10 = v25 + BYTE14(v37);
    v11 = v25;
    goto LABEL_30;
  }

  v17 = (v8 >> 32) - v8;
  if (v8 >> 32 < v8)
  {
    __break(1u);
    goto LABEL_35;
  }

  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v18 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v18))
    {
      v14 += v8 - v18;
      goto LABEL_22;
    }

LABEL_36:
    __break(1u);
  }

LABEL_22:
  v19 = __DataStorage._length.getter();
  if (v19 >= v17)
  {
    v20 = v17;
  }

  else
  {
    v20 = v19;
  }

  v21 = (v20 + v14);
  if (v14)
  {
    v10 = v21;
  }

  else
  {
    v10 = 0;
  }

  v11 = v14;
LABEL_30:
  sub_100200090(v11, v10, v29, &v26);
  if (v28)
  {
    sub_10000B02C();
    swift_allocError();
    *v22 = 0;
    *(v22 + 8) = 0;
    *(v22 + 16) = 2;
    swift_willThrow();
    return sub_1000124C8(v37, *(&v37 + 1));
  }

  v24 = v26 | (v27 << 32);
  sub_1000124C8(v8, *(&v8 + 1));
  LOBYTE(v29[0]) = 0;
  return v24;
}

Swift::Bool __swiftcall NSXPCConnection.has(capability:for:)(Swift::String capability, Swift::String a2)
{
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 valueForEntitlement:v3];

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
    sub_1002014E0();
    if (swift_dynamicCast())
    {
      if ([v8 count] < 1)
      {
      }

      else
      {
        v5 = String._bridgeToObjectiveC()();
        v6 = [v8 containsObject:v5];

        if (v6)
        {
          return 1;
        }
      }
    }
  }

  else
  {
    sub_100016290(v11, &qword_10058BA80, &qword_1004818C0);
  }

  return 0;
}

uint64_t NWConnection.send<A>(_:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for NWConnection.SendCompletion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for JSONEncoder();
  v12 = *(v11 + 48);
  v13 = *(v11 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  v14 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v16 = v15;
  v35 = a2;
  v36 = v3;

  v17 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v17 != 2)
    {
      goto LABEL_12;
    }

    v20 = *(v14 + 16);
    v19 = *(v14 + 24);
    v21 = __OFSUB__(v19, v20);
    v18 = v19 - v20;
    if (!v21)
    {
LABEL_10:
      if ((v18 & 0x8000000000000000) == 0)
      {
        goto LABEL_13;
      }

      __break(1u);
LABEL_12:
      v18 = 0;
      goto LABEL_13;
    }

    __break(1u);
LABEL_8:
    LODWORD(v18) = HIDWORD(v14) - v14;
    if (__OFSUB__(HIDWORD(v14), v14))
    {
      __break(1u);
    }

    v18 = v18;
    goto LABEL_10;
  }

  if (v17)
  {
    goto LABEL_8;
  }

  v18 = BYTE6(v16);
LABEL_13:
  v33 = a3;
  v37 = bswap64(v18);
  v22 = sub_10004F3B0(&v37, &v38);
  v24 = v23;
  v40 = v22;
  v41 = v23;
  v39[3] = &type metadata for Data;
  v39[4] = &protocol witness table for Data;
  v39[0] = v14;
  v39[1] = v16;
  v25 = sub_100029B34(v39, &type metadata for Data);
  v26 = *v25;
  v27 = v25[1];
  v34 = v14;
  sub_10000AB0C(v22, v24);
  sub_10000AB0C(v14, v16);
  sub_100178A18(v26, v27);
  sub_100002A00(v39);
  v28 = v40;
  v29 = v41;
  v30 = swift_allocObject();
  v31 = v33;
  *(v30 + 16) = v35;
  *(v30 + 24) = v31;
  *v10 = sub_100201690;
  v10[1] = v30;
  (*(v7 + 104))(v10, enum case for NWConnection.SendCompletion.contentProcessed(_:), v6);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  sub_1000124C8(v28, v29);
  sub_1000124C8(v34, v16);
  sub_1000124C8(v22, v24);
  return (*(v7 + 8))(v10, v6);
}

uint64_t NWConnection.send(_:errorHandler:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = type metadata accessor for NWConnection.SendCompletion();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = (&v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = swift_allocObject();
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  *v10 = sub_10020152C;
  v10[1] = v11;
  (*(v7 + 104))(v10, enum case for NWConnection.SendCompletion.contentProcessed(_:), v6);
  type metadata accessor for NWConnection.ContentContext();

  static NWConnection.ContentContext.defaultMessage.getter();
  NWConnection.send(content:contentContext:isComplete:completion:)();

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_1001FFAF8(uint64_t a1, void (*a2)(uint64_t))
{
  v4 = *(*(sub_10005DC58(&qword_100591358, &qword_100498860) - 8) + 64);
  __chkstk_darwin();
  v6 = &v14 - v5;
  v7 = type metadata accessor for NWError();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1002015C8(a1, v6);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    return sub_100016290(v6, &qword_100591358, &qword_100498860);
  }

  (*(v8 + 32))(v11, v6, v7);
  sub_100201638();
  v13 = Error.localizedDescription.getter();
  a2(v13);

  return (*(v8 + 8))(v11, v7);
}

char *Socket.init(domain:type:proto:)(int a1, int a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = socket(a1, a2, a3);
  *(v4 + 16) = v13;
  if ((v13 & 0x80000000) == 0)
  {
    return v4;
  }

  Logger.init(subsystem:category:)();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v14, v15))
  {

    goto LABEL_6;
  }

  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v24 = v17;
  *v16 = 136315138;
  v18 = errno.getter();
  result = strerror(v18);
  if (result)
  {
    v20 = String.init(cString:)();
    v22 = sub_100002320(v20, v21, &v24);

    *(v16 + 4) = v22;
    _os_log_impl(&_mh_execute_header, v14, v15, "Failed to create socket: %s", v16, 0xCu);
    sub_100002A00(v17);

LABEL_6:
    (*(v9 + 8))(v12, v8);
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t Socket.__allocating_init(rawValue:)(int a1)
{
  result = swift_allocObject();
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    *(result + 16) = a1;
  }

  return result;
}

uint64_t Socket.init(rawValue:)(uint64_t result)
{
  if ((result & 0x80000000) != 0)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 16) = result;
    return v1;
  }

  return result;
}

uint64_t Socket.__deallocating_deinit()
{
  close(*(v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t sub_1001FFF7C(_DWORD *a1, uint64_t a2, uint64_t a3)
{
  result = type metadata accessor for RoutingSocket();
  if (!a1)
  {
    goto LABEL_16;
  }

  v7 = result;
  v8 = *(result + 24);
  v9 = a2 - a1;
  result = write(*(*(a3 + v8) + 16), a1, v9);
  if (result < 0)
  {
    if (result >= 0xFFFFFFFF80000000)
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      result = read(*(*(a3 + v8) + 16), a1, v9);
      if (result < 1)
      {
        break;
      }

      if (a1[5] == *(a3 + *(v7 + 20)))
      {
        return result;
      }
    }
  }

  if ((result & 0x8000000000000000) == 0)
  {
    return result;
  }

  if (result < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

LABEL_10:
  if (result == -1)
  {
    v10 = errno.getter();
  }

  else
  {
    v10 = result;
  }

  sub_10000B02C();
  swift_allocError();
  *v11 = v10;
  *(v11 + 8) = 0;
  *(v11 + 16) = 0;
  return swift_willThrow();
}

uint64_t sub_100200090(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (*(a4 + 6) == 1)
  {
    v4 = a2 - result;
    v5 = 92;
    while (1)
    {
      v8 = v5 + 16;
      if (__OFADD__(v5, 16))
      {
        break;
      }

      if (!result)
      {
        if (v8 >= 1)
        {
          return result;
        }

LABEL_27:
        __break(1u);
LABEL_28:
        __break(1u);
      }

      if (v4 < v8)
      {
        return result;
      }

      v9 = result + v5;
      v10 = *(result + v5);
      if (*(result + v5 + 1) != 18)
      {
        goto LABEL_3;
      }

      if (__OFADD__(v5, v10))
      {
        goto LABEL_26;
      }

      if (v10 == 20 && v4 >= v5 + v10)
      {
        v11 = *(v9 + 5);
        v12 = *(v9 + 6);
        v27 = *(v9 + 8);
        v28 = *(v9 + 16);
        v25 = v27;
        v26 = v28;
        v13 = result;
        v14 = a4;
        if (v12)
        {
          if (v12 <= 0xE)
          {
            memset(__dst, 0, sizeof(__dst));
            v24 = v12;
            memcpy(__dst, &v25 + v11, v12);
            v19 = *__dst;
            v20 = v22 & 0xF00000000000000 | *&__dst[8] | ((*&__dst[12] | (v24 << 16)) << 32);
            v22 = v20;
          }

          else
          {
            v15 = type metadata accessor for __DataStorage();
            v16 = *(v15 + 48);
            v17 = *(v15 + 52);
            swift_allocObject();
            v18 = __DataStorage.init(bytes:length:)();
            v19 = v12 << 32;
            v20 = v18 | 0x4000000000000000;
          }
        }

        else
        {
          v19 = 0;
          v20 = 0xC000000000000000;
        }

        v21 = sub_1000172CC(v19, v20);
        *v14 = v21;
        *(v14 + 4) = WORD2(v21);
        *(v14 + 6) = BYTE6(v21) & 1;
        v7 = __OFADD__(v5, 20);
        v5 += 20;
        if (v7)
        {
          goto LABEL_28;
        }

        a4 = v14;
        result = v13;
        if ((v21 & 0x1000000000000) == 0)
        {
          return result;
        }
      }

      else
      {
LABEL_3:
        if (v10 <= 0x10)
        {
          v6 = 16;
        }

        else
        {
          v6 = *(result + v5);
        }

        v7 = __OFADD__(v5, v6);
        v5 += v6;
        if (v7)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  return result;
}

uint64_t sub_100200284(_DWORD *a1, uint64_t a2, uint64_t a3, int a4)
{
  result = type metadata accessor for RoutingSocket();
  if (!a1)
  {
    goto LABEL_24;
  }

  v9 = result;
  v10 = *(result + 24);
  v11 = a2 - a1;
  v12 = write(*(*(a3 + v10) + 16), a1, v11);
  if (v12 < 0)
  {
    v13 = v12;
    if (errno.getter() != 3 || a4 != 2)
    {
      result = errno.getter();
      if (result != 17 || a4 != 1)
      {
        if (v13 >= 0xFFFFFFFF80000000)
        {
          if (v13 != -1)
          {
            v14 = v13;
            goto LABEL_20;
          }

LABEL_19:
          v14 = errno.getter();
          goto LABEL_20;
        }

        __break(1u);
        goto LABEL_23;
      }
    }
  }

  while (1)
  {
    result = read(*(*(a3 + v10) + 16), a1, v11);
    if (result < 1)
    {
      break;
    }

    if (a1[5] == *(a3 + *(v9 + 20)))
    {
      return result;
    }
  }

  if (result < 0)
  {
    v14 = result;
    result = errno.getter();
    if (result != 35)
    {
      result = errno.getter();
      if (result != 35)
      {
        if (v14 >= 0xFFFFFFFF80000000)
        {
          if (v14 != -1)
          {
            v14 = v14;
LABEL_20:
            sub_10000B02C();
            swift_allocError();
            *v15 = v14;
            *(v15 + 8) = 0;
            *(v15 + 16) = 0;
            return swift_willThrow();
          }

          goto LABEL_19;
        }

LABEL_23:
        __break(1u);
LABEL_24:
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t sub_100200420(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for RoutingSocket();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100200484(uint64_t a1)
{
  v2 = type metadata accessor for RoutingSocket();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_1002004E0(uint64_t *a1, uint64_t a2, int a3)
{
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {

      sub_1000124C8(v7, v6);
      *&v24 = v7;
      *(&v24 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100480A90;
      sub_1000124C8(0, 0xC000000000000000);
      sub_100200A08(&v24, a2, a3);
      v9 = v24;
      v10 = *(&v24 + 1) | 0x4000000000000000;
    }

    else
    {
      sub_1000124C8(v7, v6);
      *&v24 = v7;
      WORD4(v24) = v6;
      BYTE10(v24) = BYTE2(v6);
      BYTE11(v24) = BYTE3(v6);
      BYTE12(v24) = BYTE4(v6);
      BYTE13(v24) = BYTE5(v6);
      BYTE14(v24) = BYTE6(v6);
      sub_100200284(&v24, &v24 + BYTE6(v6), a2, a3);
      v9 = v24;
      v10 = DWORD2(v24) | ((WORD6(v24) | (BYTE14(v24) << 16)) << 32);
    }

    *a1 = v9;
    a1[1] = v10;
    return;
  }

  if (v8 != 2)
  {
    *(&v24 + 7) = 0;
    *&v24 = 0;
    sub_100200284(&v24, &v24, a2, a3);
    return;
  }

  sub_1000124C8(v7, v6);
  *&v24 = v7;
  *(&v24 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_100480A90;
  sub_1000124C8(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v11 = *(&v24 + 1);
  v13 = *(v24 + 16);
  v12 = *(v24 + 24);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  v17 = v13 - v16;
  if (__OFSUB__(v13, v16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v18 = __OFSUB__(v12, v13);
  v19 = v12 - v13;
  if (v18)
  {
    goto LABEL_17;
  }

  v20 = __DataStorage._length.getter();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  sub_100200284((v15 + v17), v15 + v17 + v21, a2, a3);
  *a1 = v24;
  a1[1] = v11 | 0x8000000000000000;
}

void sub_10020077C(uint64_t *a1, uint64_t a2)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) <= 1)
  {
    if (v6)
    {

      sub_1000124C8(v5, v4);
      *&v21 = v5;
      *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_100480A90;
      sub_1000124C8(0, 0xC000000000000000);
      sub_100200AD4(&v21, a2);
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
      sub_1001FFF7C(&v21, &v21 + BYTE6(v4), a2);
      v7 = v21;
      v8 = DWORD2(v21) | ((WORD6(v21) | (BYTE14(v21) << 16)) << 32);
    }

    *a1 = v7;
    a1[1] = v8;
    return;
  }

  if (v6 != 2)
  {
    *(&v21 + 7) = 0;
    *&v21 = 0;
    sub_1001FFF7C(&v21, &v21, a2);
    return;
  }

  sub_1000124C8(v5, v4);
  *&v21 = v5;
  *(&v21 + 1) = v4 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_100480A90;
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

  sub_1001FFF7C((v13 + v15), v13 + v15 + v19, a2);
  *a1 = v21;
  a1[1] = v9 | 0x8000000000000000;
}

void sub_100200A08(int *a1, uint64_t a2, int a3)
{
  Data.InlineSlice.ensureUniqueReference()();
  v6 = *a1;
  v7 = a1[1];
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = *(a1 + 1);

  v9 = __DataStorage._bytes.getter();
  if (!v9)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v10 = v9;
  v11 = __DataStorage._offset.getter();
  v12 = v6 - v11;
  if (__OFSUB__(v6, v11))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v13 = v7 - v6;
  v14 = __DataStorage._length.getter();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  sub_100200284((v10 + v12), v10 + v12 + v15, a2, a3);
}

void sub_100200AD4(int *a1, uint64_t a2)
{
  Data.InlineSlice.ensureUniqueReference()();
  v4 = *a1;
  v5 = a1[1];
  if (v5 < v4)
  {
    __break(1u);
    goto LABEL_9;
  }

  v6 = *(a1 + 1);

  v7 = __DataStorage._bytes.getter();
  if (!v7)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v8 = v7;
  v9 = __DataStorage._offset.getter();
  v10 = v4 - v9;
  if (__OFSUB__(v4, v9))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v11 = v5 - v4;
  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  sub_1001FFF7C((v8 + v10), v8 + v10 + v13, a2);
}

void sub_100200B90(uint64_t a1, unsigned int a2)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058D690, &qword_1004872F0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004817D0;
  *(inited + 32) = xmmword_100498810;
  *(inited + 48) = 1;
  v95 = 0;
  LODWORD(v11) = sysctl((inited + 32), 6u, 0, &v95, 0, 0);
  if ((v11 & 0x80000000) != 0)
  {
LABEL_57:
    v68 = v11;

    sub_10000B02C();
    swift_allocError();
    *v69 = v68;
    *(v69 + 8) = 0;
LABEL_60:
    *(v69 + 16) = 0;
    swift_willThrow();
    return;
  }

  v12 = malloc(v95);
  if (!v12)
  {

    sub_10000B02C();
    swift_allocError();
    *v69 = xmmword_100481830;
    goto LABEL_60;
  }

  v13 = v12;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    inited = sub_10011686C(0, 6, 0, inited);
  }

  LODWORD(v11) = sysctl((inited + 32), 6u, v13, &v95, 0, 0);
  if ((v11 & 0x80000000) == 0)
  {
    v84 = v9;
    v85 = v5;
    v88 = v2;
    v87 = a1;
    v15 = 0;
    v16 = v95;
    v86 = bswap32(a2) >> 16;
    v17 = (v6 + 16);
    v18 = (v6 + 8);
    v19 = 92;
    *&v14 = 136315394;
    while (1)
    {
      while (1)
      {
        if (v16 < v19)
        {
LABEL_58:

          free(v13);
          return;
        }

        v20 = &v13[v15];
        v21 = *&v13[v15];
        v22 = v13[v15 + 2];
        v96 = *&v13[v15 + 4];
        v23 = *&v13[v15 + 40];
        v24 = *&v13[v15 + 72];
        v92 = *&v13[v15 + 56];
        v93 = v24;
        v94 = *&v13[v15 + 88];
        v25 = *&v13[v15 + 24];
        v91 = v23;
        v90 = v25;
        v26 = __OFADD__(v15, v21);
        v15 += v21;
        if (v26)
        {
          __break(1u);
LABEL_63:
          __break(1u);
LABEL_64:
          __break(1u);
LABEL_65:
          __break(1u);
LABEL_66:
          __break(1u);
        }

        if (v16 < v15)
        {
          goto LABEL_58;
        }

        if (v21 >= 0x8C)
        {
          break;
        }

        v19 = v15 + 92;
        if (__OFADD__(v15, 92))
        {
          goto LABEL_56;
        }
      }

      v83 = a2;
      v27 = v19 + 28;
      if (__OFADD__(v19, 28))
      {
        goto LABEL_63;
      }

      v28 = &v13[v19];
      v29 = *(v28 + 1);
      v76 = *(v28 + 2);
      v77 = v29;
      LODWORD(v78) = *(v28 + 6);
      v30 = v13[v27 + 5];
      v31 = v13[v27 + 6];
      v98 = *&v13[v27 + 8];
      v99 = *&v13[v27 + 16];
      v82 = v17;
      v81 = v18;
      v80 = v14;
      if (v31)
      {
        if (v31 <= 0xE)
        {
          *(&__dst + 6) = 0;
          *&__dst = 0;
          BYTE14(__dst) = v31;
          memcpy(&__dst, &v98 + v30, v31);
          v36 = __dst;
          v38 = v79 & 0xF00000000000000 | DWORD2(__dst) | ((WORD6(__dst) | (BYTE14(__dst) << 16)) << 32);
          v37 = v38;
          goto LABEL_21;
        }

        v32 = type metadata accessor for __DataStorage();
        v33 = *(v32 + 48);
        v34 = *(v32 + 52);
        swift_allocObject();
        v35 = __DataStorage.init(bytes:length:)();
        v36 = v31 << 32;
        v37 = v35 | 0x4000000000000000;
      }

      else
      {
        v36 = 0;
        v37 = 0xC000000000000000;
      }

      v38 = v79;
LABEL_21:
      v11 = sub_1000172CC(v36, v37);
      a2 = v83;
      v79 = v38;
      if (v78 != v83)
      {
        if (HIWORD(v83))
        {
          goto LABEL_64;
        }

        if (v86 != WORD1(v77))
        {
          goto LABEL_54;
        }
      }

      if ((v87 & 0x1000000000000) != 0)
      {
        if ((v11 & 0x1000000000000) != 0)
        {
          goto LABEL_54;
        }
      }

      else if ((v11 & 0x1000000000000) == 0)
      {
        LODWORD(__dst) = v87;
        WORD2(__dst) = WORD2(v87);
        LODWORD(v98) = v11;
        BYTE4(v98) = BYTE4(v11);
        BYTE5(v98) = BYTE5(v11);
        if (v87 == v11 && WORD2(v87) == WORD2(v98))
        {
          goto LABEL_54;
        }
      }

      v40 = type metadata accessor for RoutingSocket();
      v41 = *(v40 + 20);
      *(v20 + 4) = v96;
      v42 = v91;
      *(v20 + 24) = v90;
      v43 = v92;
      *(v20 + 72) = v93;
      v44 = v89;
      v45 = *(v89 + v41) + 1;
      *(v89 + v41) = v45;
      *(v20 + 56) = v43;
      *v20 = v21;
      v20[2] = v22;
      v20[3] = 2;
      *(v20 + 5) = v45;
      *(v20 + 22) = v94;
      *(v20 + 40) = v42;
      v46 = *(v44 + *(v40 + 24));
      v47 = write(*(v46 + 16), v20, v21);
      if (v47 < 0 && (v48 = v47, v49 = errno.getter(), v50 = v48, a2 = v83, v49 != 3))
      {
        if (v50 < 0xFFFFFFFF80000000)
        {
          goto LABEL_65;
        }

        v52 = v85;
        v53 = v84;
        if (v50 == -1)
        {
          v51 = errno.getter();
        }

        else
        {
          v51 = v50;
        }
      }

      else
      {
        while (1)
        {
          v11 = read(*(v46 + 16), v20, v21);
          if (v11 < 1)
          {
            break;
          }

          if (*(v20 + 5) == v45)
          {
            goto LABEL_54;
          }
        }

        if ((v11 & 0x8000000000000000) == 0)
        {
          goto LABEL_54;
        }

        v51 = v11;
        LODWORD(v11) = errno.getter();
        if (v11 == 35)
        {
          goto LABEL_54;
        }

        LODWORD(v11) = errno.getter();
        if (v11 == 35)
        {
          goto LABEL_54;
        }

        if (v51 < 0xFFFFFFFF80000000)
        {
          goto LABEL_66;
        }

        if (v51 == -1)
        {
          v51 = errno.getter();
        }

        else
        {
          v51 = v51;
        }

        v52 = v85;
        v53 = v84;
      }

      sub_10000B02C();
      swift_allocError();
      *v54 = v51;
      *(v54 + 8) = 0;
      *(v54 + 16) = 0;
      swift_willThrow();
      v88 = 0;
      (*v82)(v53, v89, v52);
      swift_errorRetain();
      v55 = Logger.logObject.getter();
      v56 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v55, v56))
      {
        v57 = swift_slowAlloc();
        v73 = v57;
        v75 = swift_slowAlloc();
        v78 = swift_slowAlloc();
        v98 = v78;
        *v57 = v80;
        v58 = swift_slowAlloc();
        v74 = v55;
        *&__dst = v77;
        *(&__dst + 1) = v76;
        inet_ntop(30, &__dst, v58, 0x2Eu);
        LOBYTE(v57) = v56;
        *&__dst = String.init(cString:)();
        *(&__dst + 1) = v59;

        v60._countAndFlagsBits = 0;
        v60._object = 0xE000000000000000;
        String.append(_:)(v60);

        v61 = __dst;

        v62 = sub_100002320(v61, *(&v61 + 1), &v98);

        v63 = v73;
        *(v73 + 1) = v62;
        *(v63 + 6) = 2112;
        v64 = v63;
        swift_errorRetain();
        v65 = _swift_stdlib_bridgeErrorToNSError();
        *(v64 + 14) = v65;
        v66 = v75;
        *v75 = v65;
        v67 = v74;
        _os_log_impl(&_mh_execute_header, v74, v57, "Failed to remove from NDP entry for %s because %@", v64, 0x16u);
        sub_100016290(v66, &qword_10058B780, &qword_100480AC0);

        sub_100002A00(v78);

        LODWORD(v11) = (*v81)(v84, v85);
      }

      else
      {

        LODWORD(v11) = (*v81)(v53, v52);
      }

      a2 = v83;
LABEL_54:
      v19 = v15 + 92;
      v17 = v82;
      v18 = v81;
      v14 = v80;
      if (__OFADD__(v15, 92))
      {
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }
    }
  }

  v70 = v11;

  sub_10000B02C();
  swift_allocError();
  *v71 = v70;
  *(v71 + 8) = 0;
  *(v71 + 16) = 0;
  swift_willThrow();
  free(v13);
}

unint64_t sub_1002014E0()
{
  result = qword_100591210;
  if (!qword_100591210)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100591210);
  }

  return result;
}

uint64_t sub_100201548()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Socket();
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1002015C8(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&qword_100591358, &qword_100498860);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100201638()
{
  result = qword_100591360;
  if (!qword_100591360)
  {
    type metadata accessor for NWError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591360);
  }

  return result;
}

uint64_t DispatchTimeInterval.nanDiscoveryWindowCount.getter()
{
  v0 = type metadata accessor for DispatchTimeInterval();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin();
  v4 = (&v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_100028EF8();
  *v4 = 0x80000;
  (*(v1 + 104))(v4, enum case for DispatchTimeInterval.microseconds(_:), v0);
  v6 = sub_100028EF8();
  result = (*(v1 + 8))(v4, v0);
  if (v6)
  {
    if (v5 != 0x8000000000000000 || v6 != -1)
    {
      return v5 / v6;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t DispatchTimeInterval.rawSeconds.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000;
LABEL_7:
    v10 = v8 * v9;
    if ((v8 * v9) >> 64 != (v8 * v9) >> 63)
    {
      if (v8 <= 0)
      {
        return 0x8000000000000000;
      }

      return 0x7FFFFFFFFFFFFFFFLL;
    }

    goto LABEL_12;
  }

  if (v7 != enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    if (v7 == enum case for DispatchTimeInterval.never(_:))
    {
      return 0x7FFFFFFFFFFFFFFFLL;
    }

    (*(v3 + 8))(v6, v2);
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  (*(v3 + 96))(v6, v2);
  v10 = *v6;
LABEL_12:
  if (v10 > 0x1DCD64FFFFFFFFFFLL)
  {
    return 0x7FFFFFFFFFFFFFFFLL;
  }

  if (v10 <= -2147483649000000000)
  {
    return 0x8000000000000000;
  }

  return v10 / 1000000000;
}

uint64_t static DispatchTime.+= infix(_:_:)(uint64_t a1)
{
  v2 = type metadata accessor for DispatchTime();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 32))(v6, a1, v2);
  + infix(_:_:)();
  return (*(v3 + 8))(v6, v2);
}

Swift::Int DispatchTime.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

Swift::Int sub_100201BA8()
{
  Hasher.init(_seed:)();
  v0 = DispatchTime.rawValue.getter();
  Hasher._combine(_:)(v0);
  return Hasher._finalize()();
}

uint64_t DispatchTime.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = v16 - v8;
  v10 = type metadata accessor for DispatchTime();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  (*(v13 + 16))(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v1, v10);
  v16[1] = _swiftEmptyArrayStorage;
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_100202110(uint64_t a1)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v10 = v16 - v9;
  v11 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  (*(v13 + 16))(v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v1, a1);
  v16[1] = _swiftEmptyArrayStorage;
  v14 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v14 - 8) + 56))(v10, 1, 1, v14);
  (*(v4 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t static DispatchTimeInterval.hours(_:)@<X0>(uint64_t result@<X0>, void *a2@<X8>)
{
  if ((result * 3600) >> 64 == (3600 * result) >> 63)
  {
    *a2 = 3600 * result;
    v3 = enum case for DispatchTimeInterval.seconds(_:);
    v4 = type metadata accessor for DispatchTimeInterval();
    v5 = *(*(v4 - 8) + 104);

    return v5(a2, v3, v4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t static DispatchTimeInterval.zero.getter@<X0>(void *a1@<X8>)
{
  *a1 = 0;
  v2 = enum case for DispatchTimeInterval.nanoseconds(_:);
  v3 = type metadata accessor for DispatchTimeInterval();
  v4 = *(*(v3 - 8) + 104);

  return v4(a1, v2, v3);
}

void DispatchTimeInterval.hash(into:)()
{
  v1 = type metadata accessor for DispatchTimeInterval();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v2 + 16))(v5, v0, v1);
  v6 = (*(v2 + 88))(v5, v1);
  if (v6 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000000000;
LABEL_7:
    v9 = v7 * v8;
    v10 = (v7 * v8) >> 64 != (v7 * v8) >> 63;
    v11 = v7 <= 0;
    v12 = 0x7FFFFFFFFFFFFFFFLL;
    if (v11)
    {
      v12 = 0x8000000000000000;
    }

    if (v10)
    {
      v13 = v12;
    }

    else
    {
      v13 = v9;
    }

    goto LABEL_12;
  }

  if (v6 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000000;
    goto LABEL_7;
  }

  if (v6 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v7 = *v5;
    v8 = 1000;
    goto LABEL_7;
  }

  if (v6 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v2 + 96))(v5, v1);
    v13 = *v5;
  }

  else
  {
    if (v6 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v2 + 8))(v5, v1);
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_12:
  Hasher._combine(_:)(v13);
}

uint64_t static DispatchTimeInterval.+ infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v18 = a1;
  v19 = a2;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = v3[13];
  v8(v6, enum case for DispatchTimeInterval.never(_:), v2);
  sub_100029568(&qword_1005973F0, &type metadata accessor for DispatchTimeInterval);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = v3[1];
  v10(v6, v2);
  if (v9 & 1) != 0 || (v8(v6, v7, v2), v11 = dispatch thunk of static Equatable.== infix(_:_:)(), v10(v6, v2), (v11) || (v12 = sub_100028EF8(), v13 = sub_100028EF8(), v14 = v12 + v13, __OFADD__(v12, v13)))
  {
    v16 = v19;
    v17 = v7;
  }

  else
  {
    v16 = v19;
    *v19 = v14;
    v17 = enum case for DispatchTimeInterval.nanoseconds(_:);
  }

  return (v8)(v16, v17, v2);
}

uint64_t static DispatchTimeInterval.- infix(_:_:)@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v18 = a1;
  v19 = a2;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin();
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = enum case for DispatchTimeInterval.never(_:);
  v8 = v3[13];
  v8(v6, enum case for DispatchTimeInterval.never(_:), v2);
  sub_100029568(&qword_1005973F0, &type metadata accessor for DispatchTimeInterval);
  v9 = dispatch thunk of static Equatable.== infix(_:_:)();
  v10 = v3[1];
  v10(v6, v2);
  if (v9 & 1) != 0 || (v8(v6, v7, v2), v11 = dispatch thunk of static Equatable.== infix(_:_:)(), v10(v6, v2), (v11) || (v12 = sub_100028EF8(), v13 = sub_100028EF8(), v14 = v12 - v13, __OFSUB__(v12, v13)))
  {
    v16 = v19;
    v17 = v7;
  }

  else
  {
    v16 = v19;
    *v19 = v14;
    v17 = enum case for DispatchTimeInterval.nanoseconds(_:);
  }

  return (v8)(v16, v17, v2);
}

double DispatchTimeInterval.timeInterval.getter()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchTimeInterval();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v3 + 16))(v6, v1, v2);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000000;
LABEL_7:
    v10 = v8 * v9;
    v11 = (v8 * v9) >> 64 != (v8 * v9) >> 63;
    v12 = v8 <= 0;
    v13 = 0x7FFFFFFFFFFFFFFFLL;
    if (v12)
    {
      v13 = 0x8000000000000000;
    }

    if (!v11)
    {
      v13 = v10;
    }

    return v13 / 1000000000.0;
  }

  if (v7 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v8 = *v6;
    v9 = 1000;
    goto LABEL_7;
  }

  if (v7 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v3 + 96))(v6, v2);
    v13 = *v6;
  }

  else
  {
    if (v7 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v3 + 8))(v6, v2);
    }

    v13 = 0x7FFFFFFFFFFFFFFFLL;
  }

  return v13 / 1000000000.0;
}

Swift::Int DispatchTimeInterval.hashValue.getter()
{
  Hasher.init(_seed:)();
  DispatchTimeInterval.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100202D10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 0;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 1;
  }

  v14 = sub_100028EF8();
  return v14 < sub_100028EF8();
}

BOOL sub_100202E84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 1;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 0;
  }

  v14 = sub_100028EF8();
  return v14 >= sub_100028EF8();
}

BOOL sub_100202FF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 1;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 0;
  }

  v14 = sub_100028EF8();
  return v14 >= sub_100028EF8();
}

BOOL sub_10020316C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = v4[8];
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = enum case for DispatchTimeInterval.never(_:);
  v9 = v4[13];
  (v9)(v7, enum case for DispatchTimeInterval.never(_:));
  v10 = static DispatchTimeInterval.== infix(_:_:)();
  v11 = v4[1];
  v11(v7, a3);
  if (v10)
  {
    return 0;
  }

  v9(v7, v8, a3);
  v13 = static DispatchTimeInterval.== infix(_:_:)();
  v11(v7, a3);
  if (v13)
  {
    return 1;
  }

  v14 = sub_100028EF8();
  return v14 < sub_100028EF8();
}

uint64_t sub_100203358(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void (*a5)(char *, uint64_t))
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(a1);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v12, a1);
  a5(v12, a2);
  return (*(v9 + 8))(v12, a3);
}

Swift::Int sub_100203454()
{
  Hasher.init(_seed:)();
  DispatchTimeInterval.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100203490()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v12);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100061590();
  v11[0] = "in";
  v11[1] = v8;
  static DispatchQoS.userInteractive.getter();
  v9 = sub_100477144("wifip2pd.nan");
  v13 = &_swiftEmptyArrayStorage;
  sub_100029568(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.nan = result;
  return result;
}

uint64_t sub_100203730()
{
  v10 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v10 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin();
  v3 = v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = *(*(type metadata accessor for OS_dispatch_queue.Attributes() - 8) + 64);
  __chkstk_darwin();
  v5 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  v6 = sub_100061590();
  v9[0] = "Extensions.swift";
  v9[1] = v6;
  static DispatchQoS.userInteractive.getter();
  v7 = sub_100477144("wifip2pd.awdl");
  v11 = _swiftEmptyArrayStorage;
  sub_100029568(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v10);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.awdl = result;
  return result;
}

uint64_t sub_1002039D0()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v12);
  v3 = v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v8 = sub_100061590();
  v11[0] = "wifip2pd.nan-main";
  v11[1] = v8;
  static DispatchQoS.userInteractive.getter();
  v9 = sub_100477144("wifip2pd.p2p");
  v13 = &_swiftEmptyArrayStorage;
  sub_100029568(&qword_10058AC68, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_10005DC58(&qword_10058AC70, &qword_1004AE1F0);
  sub_10000CADC(&qword_10058AC78, &qword_10058AC70, &qword_1004AE1F0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static OS_dispatch_queue.p2p = result;
  return result;
}

id sub_100203C70(void *a1, void **a2)
{
  if (*a1 == -1)
  {
    v3 = *a2;
  }

  else
  {
    swift_once();
    v3 = *a2;
  }

  return v3;
}

uint64_t sub_100203CD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v24 = a2;
  v22 = a4;
  v23 = a1;
  v21 = a6;
  sub_10005DD04(&qword_10058C830, &qword_1004821F0);
  v8 = type metadata accessor for Result();
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v21 - v12;
  v14 = swift_allocBox();
  v16 = v15;
  v17 = *(v8 - 8);
  (*(v17 + 56))(v15, 1, 1, v8);
  v18 = swift_allocObject();
  v18[2] = a5;
  v18[3] = a3;
  v19 = v23;
  v18[4] = v22;
  sub_100203F28(sub_1002046CC, v18, v19, v24, v14, v25, a5);
  LOBYTE(a5) = swift_isEscapingClosureAtFileLocation();

  if (a5)
  {
    __break(1u);
  }

  else
  {
    swift_beginAccess();
    (*(v10 + 16))(v13, v16, v9);
    result = (*(v17 + 48))(v13, 1, v8);
    if (result != 1)
    {
      (*(v17 + 32))(v21, v13, v8);
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_100203F28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v26[1] = a6;
  v13 = type metadata accessor for DispatchWorkItemFlags();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin();
  v17 = v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = *(*(type metadata accessor for DispatchQoS() - 8) + 64);
  __chkstk_darwin();
  (*(v20 + 16))(v26 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  (*(v14 + 16))(v17, a4, v13);
  v21 = swift_allocObject();
  v21[2] = a7;
  v21[3] = a5;
  v21[4] = a1;
  v21[5] = a2;
  aBlock[4] = sub_1002046F4;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_10000C8B8;
  aBlock[3] = &unk_100569898;
  _Block_copy(aBlock);
  v22 = type metadata accessor for DispatchWorkItem();
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();

  DispatchWorkItem.init(qos:flags:block:)();

  OS_dispatch_queue.asyncAndWait(execute:)();
}

uint64_t sub_100204188(uint64_t a1, void (*a2)(void))
{
  sub_10005DD04(&qword_10058C830, &qword_1004821F0);
  v3 = type metadata accessor for Result();
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  __chkstk_darwin();
  v8 = &v11[-v7];
  v9 = swift_projectBox();
  a2();
  swift_storeEnumTagMultiPayload();
  (*(*(v3 - 8) + 56))(v8, 0, 1, v3);
  swift_beginAccess();
  return (*(v5 + 40))(v9, v8, v4);
}

uint64_t OS_dispatch_queue.asyncAndWait<A>(qos:flags:_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  sub_10005DD04(&qword_10058C830, &qword_1004821F0);
  v12 = type metadata accessor for Result();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v18 - v15;
  sub_100203CD0(a1, a2, a3, a4, a5, &v18 - v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a5 - 8) + 32))(a6, v16, a5);
  }

  (*(v13 + 8))(v16, v12);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

{
  v17 = a6;
  sub_10005DD04(&qword_10058C830, &qword_1004821F0);
  v11 = *(*(type metadata accessor for Result() - 8) + 64);
  __chkstk_darwin();
  v13 = (&v16 - v12);
  sub_100203CD0(a1, a2, a3, a4, a5, &v16 - v12);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    return (*(*(a5 - 8) + 32))(v17, v13, a5);
  }

  v14 = *v13;
  return swift_willThrow();
}

uint64_t sub_1002046CC()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1002046F4()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 40);
  return sub_100204188(*(v0 + 24), *(v0 + 32));
}

uint64_t static OWEKeys.== infix(_:_:)()
{
  v0 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v2 = v1;
  v3 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v5 = v4;
  v6 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v0, v2, v3, v4);
  sub_1000124C8(v3, v5);
  sub_1000124C8(v0, v2);
  return v6 & 1;
}

uint64_t OWEKeys.init(privateKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t sub_1002047F8()
{
  result = sub_10016FD40(0xD000000000000012, 0x80000001004BD2F0);
  qword_10059B5E8 = result;
  unk_10059B5F0 = v1;
  return result;
}

uint64_t sub_100204834()
{
  result = sub_10002D874(&off_1005568B8);
  qword_100591370 = result;
  *algn_100591378 = v1;
  return result;
}

uint64_t OWEKeys.generatePMK(for:asClient:)(uint64_t a1, int a2)
{
  v59 = a2;
  v3 = type metadata accessor for SymmetricKey();
  v61 = *(v3 - 8);
  v62 = v3;
  v4 = *(v61 + 64);
  __chkstk_darwin();
  v6 = &v53 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v60 = *(v7 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin();
  v10 = &v53 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&qword_10058FE48, &qword_100493928) - 8) + 64);
  __chkstk_darwin();
  v13 = &v53 - v12;
  v14 = type metadata accessor for SharedSecret();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v53 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.sharedSecretFromKeyAgreement(with:)();
  v53 = v7;
  v54 = v2;
  v58 = v6;
  (*(v15 + 56))(v13, 0, 1, v14);
  v55 = v18;
  v56 = v15;
  v19 = *(v15 + 32);
  v57 = v14;
  v19(v18, v13, v14);
  if (v59)
  {
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v20 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v22 = v21;
    (*(v60 + 8))(v10, v53);
    v23 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v25 = v24;
    *&v68 = v20;
    *(&v68 + 1) = v22;
    v66 = &type metadata for Data;
    v67 = &protocol witness table for Data;
    *&v65 = v23;
    *(&v65 + 1) = v24;
    v26 = sub_100029B34(&v65, &type metadata for Data);
    v27 = *v26;
    v28 = v26[1];
    sub_10000AB0C(v20, v22);
    sub_10000AB0C(v23, v25);
    sub_100178A18(v27, v28);
    v29 = v23;
    v30 = v25;
  }

  else
  {
    v20 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v22 = v31;
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v32 = P256.KeyAgreement.PublicKey.rawRepresentation.getter();
    v34 = v33;
    (*(v60 + 8))(v10, v53);
    *&v68 = v20;
    *(&v68 + 1) = v22;
    v66 = &type metadata for Data;
    v67 = &protocol witness table for Data;
    *&v65 = v32;
    *(&v65 + 1) = v34;
    v35 = sub_100029B34(&v65, &type metadata for Data);
    v36 = *v35;
    v37 = v35[1];
    sub_10000AB0C(v20, v22);
    sub_10000AB0C(v32, v34);
    sub_100178A18(v36, v37);
    v29 = v32;
    v30 = v34;
  }

  sub_1000124C8(v29, v30);
  sub_1000124C8(v20, v22);
  sub_100002A00(&v65);
  v38 = v68;
  v39 = v58;
  type metadata accessor for SHA256();
  v40 = v62;
  if (qword_10058AA48 != -1)
  {
    swift_once();
  }

  v41 = xmmword_100591370;
  v68 = v38;
  v66 = &type metadata for Data;
  v67 = &protocol witness table for Data;
  v65 = xmmword_100591370;
  v42 = sub_100029B34(&v65, &type metadata for Data);
  v43 = *v42;
  v44 = v42[1];
  sub_10000AB0C(v38, *(&v38 + 1));
  sub_10000AB0C(v41, *(&v41 + 1));
  sub_100178A18(v43, v44);
  sub_100002A00(&v65);
  v65 = v68;
  if (qword_10058AA40 != -1)
  {
    swift_once();
  }

  v63 = qword_10059B5E8;
  v64 = qword_10059B5F0;
  sub_10000AB0C(qword_10059B5E8, qword_10059B5F0);
  sub_1002054D0(&qword_10059AB90, &type metadata accessor for SHA256);
  sub_1000BA0A4();
  v45 = v55;
  SharedSecret.hkdfDerivedSymmetricKey<A, B, C>(using:salt:sharedInfo:outputByteCount:)();
  sub_1000124C8(v63, v64);
  sub_1000124C8(v65, *(&v65 + 1));
  SymmetricKey.withUnsafeBytes<A>(_:)();
  sub_1000124C8(v38, *(&v38 + 1));
  (*(v61 + 8))(v39, v40);
  (*(v56 + 8))(v45, v57);
  v47 = *(&v65 + 1);
  result = v65;
  v48 = *(&v65 + 1) >> 62;
  if ((*(&v65 + 1) >> 62) <= 1)
  {
    if (!v48)
    {
      v49 = BYTE14(v65);
      goto LABEL_17;
    }

    goto LABEL_15;
  }

  if (v48 == 2)
  {
    v51 = *(v65 + 16);
    v50 = *(v65 + 24);
    v52 = __OFSUB__(v50, v51);
    v49 = v50 - v51;
    if (!v52)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_15:
    LODWORD(v49) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
      __break(1u);
      return result;
    }

    v49 = v49;
LABEL_17:
    if (v49 == 32)
    {
      return result;
    }
  }

  sub_1000124C8(result, v47);
  return 0;
}

uint64_t OWEKeys.customMirror.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Mirror.AncestorRepresentation();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v9 = v14 - v8;
  v10 = *(*(type metadata accessor for OWEKeys() - 8) + 64);
  __chkstk_darwin();
  sub_1001B2234(v1, v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  (*(v3 + 104))(v6, enum case for Mirror.AncestorRepresentation.generated(_:), v2);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t OWEKeys.hash(into:)()
{
  v0 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v2 = v1;
  Data.hash(into:)();

  return sub_1000124C8(v0, v2);
}

Swift::Int OWEKeys.hashValue.getter()
{
  Hasher.init(_seed:)();
  v0 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v2 = v1;
  Data.hash(into:)();
  sub_1000124C8(v0, v2);
  return Hasher._finalize()();
}

Swift::Int sub_100205170()
{
  Hasher.init(_seed:)();
  v0 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v2 = v1;
  Data.hash(into:)();
  sub_1000124C8(v0, v2);
  return Hasher._finalize()();
}

uint64_t sub_1002051CC(uint64_t a1)
{
  v3 = type metadata accessor for Mirror.AncestorRepresentation();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v10 = v15 - v9;
  v11 = *(*(a1 - 8) + 64);
  __chkstk_darwin();
  sub_1001B2234(v1, v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15[1] = _swiftEmptyArrayStorage;
  v13 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  (*(v4 + 104))(v7, enum case for Mirror.AncestorRepresentation.generated(_:), v3);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1002053D4(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058FE48, &qword_100493928);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for OWEKeys()
{
  result = qword_1005913E0;
  if (!qword_1005913E0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1002054D0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100205540()
{
  result = type metadata accessor for P256.KeyAgreement.PrivateKey();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *NANServiceInfo.genericServiceProtocol.getter(char a1, uint64_t a2, unint64_t a3)
{
  if (a1 != 2)
  {
    return 0;
  }

  sub_10000AB0C(a2, a3);
  v5 = sub_1000D201C(a2, a3);
  sub_1000124C8(a2, a3);
  return v5;
}

uint64_t NANServiceInfo.init(information:filter:)(uint64_t a1, uint64_t a2)
{
  NANGenericServiceProtocol.packetData(for:)(a2, a1);

  return 2;
}

uint64_t sub_100205734()
{
  v1 = 0x6465767265736552;
  v2 = 0x20636972656E6547;
  if (*v0 != 2)
  {
    v2 = 0x7474614D20415343;
  }

  if (*v0)
  {
    v1 = 0x72756F6A6E6F42;
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

uint64_t NANServiceInfo.csaMatterPayload.getter(char a1, uint64_t a2, unint64_t a3)
{
  if (a1 != 3)
  {
    return 0;
  }

  v3 = a2;
  sub_10000AB0C(a2, a3);
  return v3;
}

uint64_t static NANServiceInfo.__derived_struct_equals(_:_:)(char a1, uint64_t a2, unint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if (a1 == a4)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a3, a5, a6);
  }

  else
  {
    return 0;
  }
}

uint64_t NANServiceInfo.hash(into:)(int a1, Swift::UInt8 a2)
{
  Hasher._combine(_:)(a2);

  return Data.hash(into:)();
}

Swift::Int NANServiceInfo.hashValue.getter(Swift::UInt8 a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Data.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1002058F4()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100205958()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher._combine(_:)(*v0);

  return Data.hash(into:)();
}

Swift::Int sub_1002059AC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Data.hash(into:)();
  return Hasher._finalize()();
}