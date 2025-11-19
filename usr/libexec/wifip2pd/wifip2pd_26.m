uint64_t sub_100205A0C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 == *a2)
  {
    return _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2));
  }

  else
  {
    return 0;
  }
}

uint64_t NANServiceInfo.encode(to:)(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v9, v10);
  sub_1001F5AF0();
  dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
  if (!v4)
  {
    sub_100031694(v9, v10);
    sub_100206440();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_100031694(v9, v10);
    sub_10000AB0C(a3, a4);
    sub_1000B8088();
    dispatch thunk of UnkeyedEncodingContainer.encode<A>(_:)();
    sub_1000124C8(a3, a4);
  }

  return sub_100002A00(v9);
}

uint64_t sub_100205BB4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = NANServiceInfo.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

uint64_t NANServiceInfo.customMirror.getter(unsigned __int8 a1, uint64_t a2, unint64_t a3)
{
  v6 = a1;
  v7 = type metadata accessor for Mirror.AncestorRepresentation();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v14 = &v23 - v13;
  if (v6 == 2 && (sub_10000AB0C(a2, a3), v15 = sub_1000D201C(a2, a3), sub_1000124C8(a2, a3), v15))
  {
    v24 = 2;
    v25 = a2;
    v26 = a3;
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_100480F40;
    *(v16 + 32) = 0x636972656E6567;
    *(v16 + 40) = 0xE700000000000000;
    *(v16 + 72) = &type metadata for NANGenericServiceProtocol;
    *(v16 + 48) = v15;
    v17 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v17 - 8) + 56))(v14, 1, 1, v17);
    (*(v8 + 104))(v11, enum case for Mirror.AncestorRepresentation.generated(_:), v7);
    sub_10000AB0C(a2, a3);
  }

  else
  {
    v24 = a1;
    v25 = a2;
    v26 = a3;
    sub_10005DC58(qword_10058C850, &unk_100486F10);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_100480F40;
    *(v18 + 32) = 1635017060;
    *(v18 + 40) = 0xE400000000000000;
    sub_10000AB0C(a2, a3);
    v19 = Data.hexString.getter(a2, a3);
    *(v18 + 72) = &type metadata for String;
    *(v18 + 48) = v19;
    *(v18 + 56) = v20;
    v21 = type metadata accessor for Mirror.DisplayStyle();
    (*(*(v21 - 8) + 56))(v14, 1, 1, v21);
    (*(v8 + 104))(v11, enum case for Mirror.AncestorRepresentation.generated(_:), v7);
  }

  return Mirror.init<A>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1002060AC(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
    return v3;
  }

  sub_100031694(v22, v22[3]);
  sub_100039F68();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v5 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_13;
    }

    v6 = *(v20 + 16);
    v7 = *(v20 + 24);
  }

  else
  {
    if (!v5)
    {
      v6 = 0;
      goto LABEL_14;
    }

    v6 = v20;
    v7 = v20 >> 32;
  }

  if (v7 >= v6)
  {
    goto LABEL_14;
  }

  __break(1u);
LABEL_13:
  v6 = 0;
LABEL_14:
  v8 = Data._Representation.subscript.getter();
  v10 = v9;
  v11 = sub_1002A5EB4(v8, v9);
  result = sub_1000124C8(v8, v10);
  v12 = v6 + 3;
  if (__OFADD__(v6, 3))
  {
    __break(1u);
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v14 = *(v20 + 16);
      v13 = *(v20 + 24);
    }

    else
    {
      v13 = 0;
      v14 = 0;
    }
  }

  else
  {
    v13 = v20 >> 32;
    if (v5)
    {
      v14 = v20;
    }

    else
    {
      v13 = BYTE6(v21);
      v14 = 0;
    }
  }

  if (v13 < v12 || v12 < v14)
  {
    goto LABEL_57;
  }

  if ((sub_1000319F0(v11 & 0xFFFFFF, 0x9A6F50u) & 1) == 0)
  {
LABEL_39:
    sub_10000B02C();
    swift_allocError();
    *v16 = xmmword_10047CE70;
LABEL_40:
    *(v16 + 16) = 2;
    swift_willThrow();
    if (v5 > 1)
    {
      if (v5 != 2)
      {
LABEL_48:
        Data.subdata(in:)();
        sub_1000124C8(v20, v21);

        v3 = 0;
LABEL_49:
        sub_100002A00(v22);
        sub_100002A00(a1);
        return v3;
      }

      v18 = *(v20 + 16);
      v19 = *(v20 + 24);
    }

    else
    {
      if (!v5)
      {
        goto LABEL_48;
      }

      v18 = v20;
      v19 = v20 >> 32;
    }

    if (v19 < v18)
    {
      __break(1u);
    }

    goto LABEL_48;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      if (v6 == -3)
      {
        goto LABEL_32;
      }

      goto LABEL_34;
    }

    v15 = *(v20 + 24);
  }

  else if (v5)
  {
    v15 = v20 >> 32;
  }

  else
  {
    v15 = BYTE6(v21);
  }

  if (v12 == v15)
  {
LABEL_32:
    sub_10000B02C();
    swift_allocError();
    *v16 = 0;
    *(v16 + 8) = 0;
    goto LABEL_40;
  }

LABEL_34:
  v3 = Data._Representation.subscript.getter();
  result = v12 + 1;
  if (__OFADD__(v12, 1))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  if (v3 >= 4u)
  {
    goto LABEL_39;
  }

  if (v5 > 1)
  {
    if (v5 == 2)
    {
      v17 = *(v20 + 24);
    }

    else
    {
      v17 = 0;
    }
  }

  else if (v5)
  {
    v17 = v20 >> 32;
  }

  else
  {
    v17 = BYTE6(v21);
  }

  if (v17 >= result)
  {
    Data.subdata(in:)();
    sub_1000124C8(v20, v21);
    goto LABEL_49;
  }

LABEL_59:
  __break(1u);
  return result;
}

unint64_t sub_100206440()
{
  result = qword_100591418;
  if (!qword_100591418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591418);
  }

  return result;
}

unint64_t sub_100206498()
{
  result = qword_100591420;
  if (!qword_100591420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591420);
  }

  return result;
}

unint64_t sub_100206510()
{
  result = qword_100591428;
  if (!qword_100591428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591428);
  }

  return result;
}

unint64_t sub_100206564()
{
  result = qword_100591430;
  if (!qword_100591430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591430);
  }

  return result;
}

uint64_t sub_1002065B8(uint64_t result, _BYTE *a2, uint64_t a3, int a4)
{
  if (!a2)
  {
    v5 = 0;
    a3 = 0;
    goto LABEL_22;
  }

  if (!a3)
  {
    v5 = 0;
    goto LABEL_22;
  }

  if (a3 < 0)
  {
LABEL_23:
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = 0;
  v6 = 1;
LABEL_5:
  if (v5 <= 7)
  {
    if (v5 < -8)
    {
LABEL_7:
      LOBYTE(v7) = 0;
      goto LABEL_8;
    }

    while (1)
    {
      if (v5 < 0)
      {
        if (v5 == -8)
        {
          goto LABEL_7;
        }

        if (((~a4 << (-v5 & 7)) & 1) == 0)
        {
          v7 = 1u >> -v5;
LABEL_8:
          ++v5;
          *a2 = v7;
          if (v6 == a3)
          {
            goto LABEL_22;
          }

          ++a2;
          v4 = v6;
          if (__OFADD__(v6++, 1))
          {
            __break(1u);
            goto LABEL_23;
          }

          goto LABEL_5;
        }
      }

      else
      {
        if (v5 == 8)
        {
          goto LABEL_7;
        }

        v7 = 1 << v5;
        if (((1 << v5) & a4) != 0)
        {
          goto LABEL_8;
        }
      }

      ++v5;
    }
  }

  a3 = v4;
LABEL_22:
  *result = a4;
  *(result + 8) = v5;
  return a3;
}

void *sub_100206684(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!a2)
  {
    a3 = 0;
    goto LABEL_10;
  }

  if (!a3)
  {
LABEL_10:
    *result = a4;
    result[1] = a3;
    return a3;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v4 = *(a4 + 16);
    if (v4)
    {
      v5 = 0;
      v6 = (a4 + 32);
      while (1)
      {
        v7 = *v6;
        *(a2 + 4) = *(v6 + 2);
        *a2 = v7;
        if (a3 - 1 == v5)
        {
          break;
        }

        a2 += 8;
        v6 += 2;
        if (v4 == ++v5)
        {
          goto LABEL_8;
        }
      }
    }

    else
    {
LABEL_8:
      a3 = v4;
    }

    goto LABEL_10;
  }

  __break(1u);
  return result;
}

unint64_t *sub_1002066EC(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6)
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
      v6 = v8 + 128;
      if (v8 >= 0xFFFFFFFFFFFFFF80)
      {
        break;
      }

      *(a2 + v7) = *(&v9 + (a4 >> 7) + v7);
      if (a3 - 1 == v7)
      {
        goto LABEL_8;
      }

      ++v7;
      v8 += 128;
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

uint64_t *ChannelSequence.empty.unsafeMutableAddressor()
{
  if (qword_10058AA50 != -1)
  {
    swift_once();
  }

  return &static ChannelSequence.empty;
}

Swift::Int __swiftcall ChannelSequence.index(after:)(Swift::Int after)
{
  v1 = __OFADD__(after, 1);
  result = after + 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int __swiftcall ChannelSequence.index(before:)(Swift::Int before)
{
  v1 = __OFSUB__(before, 1);
  result = before - 1;
  if (v1)
  {
    __break(1u);
  }

  return result;
}

Swift::Int sub_100206834()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  ChannelSequence.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

void *sub_100206878@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result - 1;
  }

  return result;
}

void *sub_100206890(void *result)
{
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    --*result;
  }

  return result;
}

uint64_t (*sub_1002068C0(uint64_t (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    v4 = *v2 + 8 * v3;
    v5 = *(v4 + 32);
    *(result + 2) = *(v4 + 36);
    *result = v5;
    return NANBitmap.Channel.operatingClass.getter;
  }

  __break(1u);
  return result;
}

uint64_t *sub_100206918@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, (*v2)[2] < v4))
  {
    __break(1u);
  }

  else
  {
    *a2 = v3;
    a2[1] = v4;
    a2[2] = result;
  }

  return result;
}

uint64_t sub_100206944@<X0>(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = *v1;
  a1[1] = 0;
  a1[2] = v2;
}

uint64_t *sub_10020696C@<X0>(uint64_t *result@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v3 = *result;
  if ((a2 & 0x8000000000000000) == 0)
  {
    if (!a2)
    {
LABEL_7:
      *a3 = v3;
      return result;
    }

    if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) > a2 - 1)
    {
LABEL_6:
      v3 += a2;
      goto LABEL_7;
    }

    __break(1u);
  }

  if ((v3 ^ 0x7FFFFFFFFFFFFFFFuLL) < a2)
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t *sub_1002069A8(uint64_t *result, uint64_t *a2)
{
  v2 = *result;
  v3 = a2[1];
  if (*result >= *a2)
  {
    v5 = __OFSUB__(v2, v3);
    v4 = v2 - v3 < 0;
  }

  else
  {
    v5 = 0;
    v4 = 0;
  }

  if (v4 == v5)
  {
    __break(1u);
  }

  return result;
}

void *sub_1002069C4(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < *result)
  {
    __break(1u);
  }

  return result;
}

void *sub_1002069E0(void *result, void *a2)
{
  if (*result < *a2 || a2[1] < result[1])
  {
    __break(1u);
  }

  return result;
}

void *sub_1002069FC@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *sub_100206A14(void *result)
{
  if (__OFADD__(*result, 1))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *sub_100206A38()
{
  v1 = sub_100118174(*v0);

  return v1;
}

uint64_t sub_100206A78()
{
  sub_10005DC58(&qword_10058CC40, &unk_100482F40);
  result = swift_allocObject();
  *(result + 16) = xmmword_100498D80;
  if (qword_10058AA98 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v1 = static Channel.awdlSocial5GHz;
  v2 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  *(result + 32) = static Channel.awdlSocial5GHz;
  *(result + 36) = WORD2(v2);
  *(result + 40) = v1;
  *(result + 44) = WORD2(v2);
  *(result + 48) = v1;
  *(result + 52) = WORD2(v2);
  *(result + 56) = v1;
  *(result + 60) = WORD2(v2);
  *(result + 64) = 0;
  *(result + 68) = 3;
  *(result + 72) = 0;
  *(result + 76) = 3;
  *(result + 80) = 0;
  *(result + 84) = 3;
  *(result + 88) = 0;
  *(result + 92) = 3;
  if (qword_10058AA90 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
    v2 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  }

  v3 = (byte_10059B61D << 40) | (byte_10059B61C << 32);
  *(result + 96) = static Channel.awdlSocial2GHz;
  *(result + 100) = WORD2(v3);
  *(result + 104) = v2;
  *(result + 108) = WORD2(v2);
  *(result + 112) = v2;
  *(result + 116) = WORD2(v2);
  *(result + 120) = v2;
  *(result + 124) = WORD2(v2);
  *(result + 128) = 0;
  *(result + 132) = 3;
  *(result + 136) = 0;
  *(result + 140) = 3;
  *(result + 144) = 0;
  *(result + 148) = 3;
  *(result + 152) = 0;
  *(result + 156) = 3;
  static ChannelSequence.awdlDiscoveryMode = result;
  return result;
}

uint64_t *ChannelSequence.awdlDiscoveryMode.unsafeMutableAddressor()
{
  if (qword_10058AA58 != -1)
  {
    swift_once();
  }

  return &static ChannelSequence.awdlDiscoveryMode;
}

uint64_t sub_100206C94()
{
  sub_10005DC58(&qword_10058CC40, &unk_100482F40);
  result = swift_allocObject();
  *(result + 16) = xmmword_100498D80;
  if (qword_10058AA98 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
  }

  v1 = static Channel.awdlSocial5GHz;
  v2 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  *(result + 32) = static Channel.awdlSocial5GHz;
  *(result + 36) = WORD2(v2);
  *(result + 40) = v1;
  *(result + 44) = WORD2(v2);
  *(result + 48) = v1;
  *(result + 52) = WORD2(v2);
  *(result + 56) = 0;
  *(result + 60) = 3;
  *(result + 64) = 0;
  *(result + 68) = 3;
  *(result + 72) = 0;
  *(result + 76) = 3;
  *(result + 80) = 0;
  *(result + 84) = 3;
  *(result + 88) = 0;
  *(result + 92) = 3;
  if (qword_10058AA90 != -1)
  {
    v5 = result;
    swift_once();
    result = v5;
    v2 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  }

  v3 = (byte_10059B61D << 40) | (byte_10059B61C << 32);
  *(result + 96) = static Channel.awdlSocial2GHz;
  *(result + 100) = WORD2(v3);
  *(result + 104) = v2;
  *(result + 108) = WORD2(v2);
  *(result + 112) = v2;
  *(result + 116) = WORD2(v2);
  *(result + 120) = 0;
  *(result + 124) = 3;
  *(result + 128) = 0;
  *(result + 132) = 3;
  *(result + 136) = 0;
  *(result + 140) = 3;
  *(result + 144) = 0;
  *(result + 148) = 3;
  *(result + 152) = 0;
  *(result + 156) = 3;
  static ChannelSequence.awdlIdleMode = result;
  return result;
}

uint64_t *ChannelSequence.awdlIdleMode.unsafeMutableAddressor()
{
  if (qword_10058AA60 != -1)
  {
    swift_once();
  }

  return &static ChannelSequence.awdlIdleMode;
}

uint64_t sub_100206EB0()
{
  sub_10005DC58(&qword_10058CC40, &unk_100482F40);
  result = swift_allocObject();
  *(result + 16) = xmmword_100498D80;
  if (qword_10058AA98 != -1)
  {
    v3 = result;
    swift_once();
    result = v3;
  }

  v1 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  *(result + 32) = static Channel.awdlSocial5GHz;
  *(result + 36) = WORD2(v1);
  *(result + 40) = 0;
  *(result + 44) = 3;
  *(result + 48) = 0;
  *(result + 52) = 3;
  *(result + 56) = 0;
  *(result + 60) = 3;
  *(result + 64) = 0;
  *(result + 68) = 3;
  *(result + 72) = 0;
  *(result + 76) = 3;
  *(result + 80) = 0;
  *(result + 84) = 3;
  *(result + 88) = 0;
  *(result + 92) = 3;
  if (qword_10058AA90 != -1)
  {
    v4 = result;
    swift_once();
    result = v4;
    v1 = static Channel.awdlSocial5GHz | (byte_10059B624 << 32) | (byte_10059B625 << 40);
  }

  v2 = (byte_10059B61D << 40) | (byte_10059B61C << 32);
  *(result + 96) = static Channel.awdlSocial2GHz;
  *(result + 100) = WORD2(v2);
  *(result + 104) = v1;
  *(result + 108) = WORD2(v1);
  *(result + 112) = v1;
  *(result + 116) = WORD2(v1);
  *(result + 120) = 0;
  *(result + 124) = 3;
  *(result + 128) = 0;
  *(result + 132) = 3;
  *(result + 136) = 0;
  *(result + 140) = 3;
  *(result + 144) = 0;
  *(result + 148) = 3;
  *(result + 152) = 0;
  *(result + 156) = 3;
  static ChannelSequence.awdlLowPowerMode = result;
  return result;
}

uint64_t *ChannelSequence.awdlLowPowerMode.unsafeMutableAddressor()
{
  if (qword_10058AA68 != -1)
  {
    swift_once();
  }

  return &static ChannelSequence.awdlLowPowerMode;
}

unint64_t sub_1002070E8()
{
  result = qword_100591438;
  if (!qword_100591438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591438);
  }

  return result;
}

unint64_t sub_100207140()
{
  result = qword_100591440;
  if (!qword_100591440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591440);
  }

  return result;
}

unint64_t sub_1002071D8()
{
  result = qword_100591458;
  if (!qword_100591458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591458);
  }

  return result;
}

uint64_t sub_100207270(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(a2, a3);
    sub_1002071D8();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1002072DC()
{
  result = qword_100591470;
  if (!qword_100591470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591470);
  }

  return result;
}

uint64_t sub_100207418(unint64_t a1, uint64_t a2)
{
  v2 = a1;
  v4 = __OFSUB__(a2, a1);
  result = a2 - a1;
  v3 = result < 0;
  if (!((result < 0) ^ v4 | (result == 0)))
  {
    v2 -= a2;
    v4 = __OFSUB__(v2, 0x8000000000000001);
    v3 = (v2 + 0x7FFFFFFFFFFFFFFFLL) < 0;
    if (v2 >= 0x8000000000000001)
    {
      return result;
    }

    __break(1u);
  }

  if (v3 == v4)
  {
    return 0;
  }

  v6 = ~a2 + v2;
  v7 = v2 ^ 0x8000000000000000;
  if (v6 >= v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = v6;
  }

  if ((v8 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_13;
  }

  if (v7 <= v6)
  {
LABEL_13:
    __break(1u);
  }

  return result;
}

uint64_t sub_100207470(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    v7 = 0;
    while (result - a3 + v7)
    {
      v8 = result + v7 - 1;
      if (__OFSUB__(result + v7, 1))
      {
LABEL_27:
        __break(1u);
        return result;
      }

      if (--v7 <= a2)
      {
        return v8;
      }
    }

    return 0;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= (a2 - 1))
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFuLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 > 4)
    {
      v9 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v9 = 4;
      }

      v5 = v4 - v9;
      v10 = 0uLL;
      v11 = result;
      v12 = vdupq_n_s64(1uLL);
      v13 = v5;
      do
      {
        v10 = vaddq_s64(v10, v12);
        v11 = vaddq_s64(v11, v12);
        v13 -= 4;
      }

      while (v13);
      v6 = vaddvq_s64(vpaddq_s64(v11, v10));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v14 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v15 = v5 + result - a3;
    v16 = a2 - v5;
    result = v6;
    while (v15)
    {
      if (!v14)
      {
        __break(1u);
        goto LABEL_27;
      }

      ++result;
      ++v14;
      ++v15;
      if (!--v16)
      {
        return result;
      }
    }

    return 0;
  }

  return result;
}

uint64_t NANDatapath.DatapathType.description.getter(char a1)
{
  if (a1)
  {
    return 0x73616369746C756DLL;
  }

  else
  {
    return 0x74736163696E75;
  }
}

uint64_t sub_100207628(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x73616369746C756DLL;
  }

  else
  {
    v4 = 0x74736163696E75;
  }

  if (v3)
  {
    v5 = 0xE700000000000000;
  }

  else
  {
    v5 = 0xE900000000000074;
  }

  if (*a2)
  {
    v6 = 0x73616369746C756DLL;
  }

  else
  {
    v6 = 0x74736163696E75;
  }

  if (*a2)
  {
    v7 = 0xE900000000000074;
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

void sub_1002076E0(uint64_t *a1@<X8>)
{
  v2 = 0x74736163696E75;
  if (*v1)
  {
    v2 = 0x73616369746C756DLL;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100207724()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002077AC()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100207820()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002078A4()
{
  if (*v0)
  {
    result = 0x73616369746C756DLL;
  }

  else
  {
    result = 0x74736163696E75;
  }

  *v0;
  return result;
}

uint64_t NANDatapath.ServiceType.description.getter(char a1)
{
  if (!a1)
  {
    return 0x6576697470616461;
  }

  if (a1 == 1)
  {
    return 0x656D69746C616572;
  }

  return 0x6E6574614C776F6CLL;
}

uint64_t static NANDatapath.ServiceType.< infix(_:_:)(char a1, unsigned __int8 a2)
{
  if (a1)
  {
    if (a1 == 1 && a2 == 2)
    {
      return 1;
    }
  }

  else if (a2 - 1 < 2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_10020799C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x656D69746C616572;
  if (v2 != 1)
  {
    v5 = 0x6E6574614C776F6CLL;
    v4 = 0xEA00000000007963;
  }

  if (*a1)
  {
    v6 = v5;
  }

  else
  {
    v6 = 0x6576697470616461;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xE800000000000000;
  }

  v8 = 0x656D69746C616572;
  if (*a2 != 1)
  {
    v8 = 0x6E6574614C776F6CLL;
    v3 = 0xEA00000000007963;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6576697470616461;
  }

  if (*a2)
  {
    v10 = v3;
  }

  else
  {
    v10 = 0xE800000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_100207AA4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P11NANDatapathO11ServiceTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_100207AD4(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE800000000000000;
  v5 = 0x656D69746C616572;
  if (v2 != 1)
  {
    v5 = 0x6E6574614C776F6CLL;
    v4 = 0xEA00000000007963;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6576697470616461;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_100207B48()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100207BF0()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100207C84()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100207D28(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 != 1 || v2 != 2)
    {
      return 0;
    }
  }

  else if ((v2 - 1) >= 2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100207D5C(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    if (*a2 != 1 || v2 != 2)
    {
      return 1;
    }
  }

  else if ((v2 - 1) >= 2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100207D90(_BYTE *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  if (*a1)
  {
    if (*a1 != 1 || v2 != 2)
    {
      return 1;
    }
  }

  else if ((v2 - 1) >= 2)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_100207DC4(unsigned __int8 *a1, _BYTE *a2)
{
  v2 = *a1;
  if (*a2)
  {
    if (*a2 != 1 || v2 != 2)
    {
      return 0;
    }
  }

  else if ((v2 - 1) >= 2)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_100207DF8()
{
  v1 = 0x656D69746C616572;
  if (*v0 != 1)
  {
    v1 = 0x6E6574614C776F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6576697470616461;
  }
}

uint64_t NANDatapath.ParametersType.description.getter(char a1)
{
  if (a1)
  {
    return 1735617902;
  }

  else
  {
    return 7365742;
  }
}

uint64_t sub_100207E98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 1735617902;
  }

  else
  {
    v4 = 7365742;
  }

  if (v3)
  {
    v5 = 0xE300000000000000;
  }

  else
  {
    v5 = 0xE400000000000000;
  }

  if (*a2)
  {
    v6 = 1735617902;
  }

  else
  {
    v6 = 7365742;
  }

  if (*a2)
  {
    v7 = 0xE400000000000000;
  }

  else
  {
    v7 = 0xE300000000000000;
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

void sub_100207F3C(uint64_t *a1@<X8>)
{
  v2 = 7365742;
  if (*v1)
  {
    v2 = 1735617902;
  }

  v3 = 0xE300000000000000;
  if (*v1)
  {
    v3 = 0xE400000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100207F6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100207FE0()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100208040()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002080B0()
{
  if (*v0)
  {
    result = 1735617902;
  }

  else
  {
    result = 7365742;
  }

  *v0;
  return result;
}

uint64_t NANDatapath.ParametersMulticastType.description.getter(char a1)
{
  if (a1)
  {
    return 0x614D6F54796E616DLL;
  }

  else
  {
    return 0x6E614D6F54656E6FLL;
  }
}

uint64_t sub_100208128(Swift::String string, Swift::OpaquePointer cases)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(cases, v3);

  if (v5 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (v5)
  {
    return v6;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100208178(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x614D6F54796E616DLL;
  }

  else
  {
    v4 = 0x6E614D6F54656E6FLL;
  }

  if (v3)
  {
    v5 = 0xE900000000000079;
  }

  else
  {
    v5 = 0xEA0000000000796ELL;
  }

  if (*a2)
  {
    v6 = 0x614D6F54796E616DLL;
  }

  else
  {
    v6 = 0x6E614D6F54656E6FLL;
  }

  if (*a2)
  {
    v7 = 0xEA0000000000796ELL;
  }

  else
  {
    v7 = 0xE900000000000079;
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

void sub_100208234(uint64_t *a1@<X8>)
{
  v2 = 0x6E614D6F54656E6FLL;
  if (*v1)
  {
    v2 = 0x614D6F54796E616DLL;
  }

  v3 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0xEA0000000000796ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10020827C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100208308()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100208380()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100208408()
{
  if (*v0)
  {
    result = 0x614D6F54796E616DLL;
  }

  else
  {
    result = 0x6E614D6F54656E6FLL;
  }

  *v0;
  return result;
}

uint64_t static NANDatapath.InternetSharingConfiguration.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_10020C694(a1, v4);
  sub_10020C694(a2, v5);
  if (!v4[3])
  {
    if (!v6)
    {
      goto LABEL_6;
    }

LABEL_5:
    sub_100016290(v4, &qword_100591498, &qword_100499038);
    return 0;
  }

  if (!v6)
  {
    goto LABEL_5;
  }

  sub_10020C6CC(v5);
LABEL_6:
  sub_10020C6CC(v4);
  return 1;
}

void NANDatapath.InternetSharingConfiguration.hash(into:)()
{
  sub_10020C694(v0, v2);
  v1 = v3 == 0;
  sub_10020C6CC(v2);
  Hasher._combine(_:)(v1);
}

Swift::Int NANDatapath.InternetSharingConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_10020C694(v0, v3);
  v1 = v3[3] == 0;
  sub_10020C6CC(v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_100208590()
{
  Hasher.init(_seed:)();
  sub_10020C694(v0, v3);
  v1 = v3[3] == 0;
  sub_10020C6CC(v3);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t IEEE80211InformationElement.HighThroughputOperation.operation.getter()
{
  v1 = *(v0 + 8);
  sub_10000AB0C(v1, *(v0 + 16));
  return v1;
}

uint64_t NANAttribute.DatapathExtension.interfaceIdentifier.getter()
{
  v1 = *(v0 + 24);
  sub_10005D67C(v1, *(v0 + 32));
  return v1;
}

uint64_t NANAttribute.DatapathExtension.interfaceIdentifier.setter(uint64_t a1, uint64_t a2)
{
  result = sub_100017554(*(v2 + 24), *(v2 + 32));
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return result;
}

uint64_t NANDatapath.SecurityConfiguration.init(cipherSuite:key:pmkID:passphrase:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  sub_100017554(0, 0xF000000000000000);
  sub_10000AB0C(a2, a3);
  sub_10005D67C(a4, a5);

  sub_1000124C8(a2, a3);
  sub_100017554(a4, a5);

  *a8 = a1;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4;
  *(a8 + 32) = a5;
  *(a8 + 40) = a6;
  *(a8 + 48) = a7;
  return result;
}

void NANDatapath.SecurityConfiguration.hash(into:)()
{
  Hasher._combine(_:)(*v0 + 1);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  if (*(v0 + 32) >> 60 != 15)
  {
    v4 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (*(v0 + 48))
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!*(v0 + 48))
  {
    goto LABEL_7;
  }

LABEL_3:
  v3 = *(v0 + 40);
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int NANDatapath.SecurityConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*v0 + 1);
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Data.hash(into:)();
  if (*(v0 + 32) >> 60 != 15)
  {
    v4 = *(v0 + 24);
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (*(v0 + 48))
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!*(v0 + 48))
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = *(v0 + 40);
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

void sub_1002088EC()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);
  v4 = *(v0 + 32);
  v5 = *(v0 + 40);
  v6 = *(v0 + 48);
  Hasher._combine(_:)(*v0 + 1);
  Data.hash(into:)();
  if (v4 >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!v6)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_1002089D8()
{
  v1 = *v0;
  v2 = *(v0 + 1);
  v3 = *(v0 + 2);
  v4 = *(v0 + 3);
  v5 = *(v0 + 4);
  v6 = *(v0 + 5);
  v7 = *(v0 + 6);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1 + 1);
  Data.hash(into:)();
  if (v5 >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL sub_100208AB4(uint64_t a1, uint64_t a2)
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
  return _s7CoreP2P11NANDatapathO21SecurityConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v5, v7);
}

uint64_t NANDatapath.Configuration.multicastAddress.setter(uint64_t result)
{
  *(v1 + 144) = result;
  *(v1 + 148) = WORD2(result);
  *(v1 + 150) = BYTE6(result) & 1;
  return result;
}

uint64_t NANDatapath.Configuration.channelInfo.setter(uint64_t result)
{
  *(v1 + 156) = result;
  *(v1 + 160) = WORD2(result);
  return result;
}

uint64_t NANDatapath.Configuration.countryCode.setter(uint64_t result)
{
  *(v1 + 162) = result;
  *(v1 + 164) = BYTE2(result) & 1;
  return result;
}

void NANDatapath.Configuration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  Hasher._combine(_:)(*v1);
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = *(v1 + 5);
  v8 = *(v1 + 6);
  Hasher._combine(_:)(*(v1 + 1));
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(*(v1 + 7));
  v9 = *(v1 + 8);
  v10 = *(v1 + 16);
  String.lowercased()();
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + 24));
  v11 = *(v1 + 26);
  v12 = *(v1 + 27);
  v13 = *(v1 + 28);
  v14 = *(v1 + 29);
  v15 = *(v1 + 30);
  Hasher._combine(_:)(*(v1 + 25));
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  *(v1 + 31);
  *(v1 + 31);
  String.hash(into:)();

  *(v1 + 32);
  String.hash(into:)();

  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(a1, *(v1 + 40));
  v16 = *(v1 + 96);
  if (v16 != 1)
  {
    v17 = *(v1 + 72);
    v18 = *(v1 + 80);
    v19 = *(v1 + 88);
    v21 = *(v1 + 56);
    v20 = *(v1 + 64);
    v22 = *(v1 + 48);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v22 + 1);
    Data.hash(into:)();
    if (v18 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
      if (v16)
      {
LABEL_4:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_7;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      Data.hash(into:)();
      if (v16)
      {
        goto LABEL_4;
      }
    }
  }

  Hasher._combine(_:)(0);
LABEL_7:
  sub_100012400(v1 + 104, &v56, &qword_1005914A8, &qword_100499048);
  if (*(&v57 + 1) == 1)
  {
    Hasher._combine(_:)(0);
    if ((*(v1 + 150) & 1) == 0)
    {
LABEL_9:
      v23 = *(v2 + 148);
      v24 = *(v2 + 144);
      v25 = v24 | (*(v2 + 148) << 32);
      v26 = v25 >> 8;
      v27 = v25 >> 16;
      v28 = v25 >> 24;
      v29 = v23 >> 8;
      Hasher._combine(_:)(1u);
      Hasher._combine(_:)(v24);
      Hasher._combine(_:)(v26);
      Hasher._combine(_:)(v27);
      Hasher._combine(_:)(v28);
      Hasher._combine(_:)(v23);
      goto LABEL_12;
    }
  }

  else
  {
    v54[0] = v56;
    v54[1] = v57;
    v55 = v58;
    Hasher._combine(_:)(1u);
    sub_10020C694(v54, v52);
    v30 = v53 == 0;
    sub_10020C6CC(v52);
    Hasher._combine(_:)(v30);
    sub_10020C6CC(v54);
    if ((*(v2 + 150) & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  LOBYTE(v29) = 0;
LABEL_12:
  Hasher._combine(_:)(v29);
  if (*(v2 + 151) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v31 = *(v2 + 152);
  if (v31 == 3)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v32 = *(v2 + 156) | (*(v2 + 160) << 32);
  if ((v32 & 0xFF00000000) == 0x300000000)
  {
    v33 = 0;
    goto LABEL_20;
  }

  v35 = v32 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v32);
  Hasher._combine(_:)(0x801004u >> ((v32 >> 29) & 0xF8));
  if ((v32 >> 40) <= 3)
  {
    if (v35 == 2)
    {
      v36 = 0;
    }

    else
    {
      if (v35 != 3)
      {
        goto LABEL_41;
      }

      v36 = 1;
    }

LABEL_33:
    Hasher._combine(_:)(v36);
    if (*(v2 + 164))
    {
      goto LABEL_21;
    }

    goto LABEL_34;
  }

  switch(v35)
  {
    case 4:
      v36 = 3;
      goto LABEL_33;
    case 5:
      v36 = 4;
      goto LABEL_33;
    case 6:
      v36 = 5;
      goto LABEL_33;
  }

LABEL_41:
  Hasher._combine(_:)(2uLL);
  v33 = BYTE5(v32) & 1;
LABEL_20:
  Hasher._combine(_:)(v33);
  if (*(v2 + 164))
  {
LABEL_21:
    LOBYTE(v34) = 0;
    goto LABEL_35;
  }

LABEL_34:
  v37 = *(v2 + 162);
  v34 = v37 >> 8;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v37);
LABEL_35:
  Hasher._combine(_:)(v34);
  v38 = *(v2 + 165);
  if (v38 == 2)
  {
    v39 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v39 = v38 & 1;
  }

  Hasher._combine(_:)(v39);
  v40 = *(v2 + 176);
  if (v40)
  {
    v50 = *(v2 + 256);
    v51 = *(v2 + 264);
    v42 = *(v2 + 240);
    v41 = *(v2 + 248);
    v44 = *(v2 + 224);
    v43 = *(v2 + 232);
    v45 = *(v2 + 216);
    v46 = *(v2 + 208);
    v47 = *(v2 + 200);
    v49 = *(v2 + 184);
    v48 = *(v2 + 168);
    Hasher._combine(_:)(1u);
    *&v56 = v48;
    *(&v56 + 1) = v40;
    v57 = v49;
    v58 = v47;
    v59 = v46;
    v60 = v45;
    NANPairing.Metadata.This.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NANDatapath.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANDatapath.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

void sub_100209444(uint64_t a1@<X8>)
{
  v2 = *(v1 + 4);
  v3 = *(v1 + 6);
  *a1 = *v1;
  *(a1 + 4) = v2;
  *(a1 + 6) = v3;
}

Swift::Int sub_100209464()
{
  Hasher.init(_seed:)();
  NANDatapath.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t NANAttribute.ServiceDescriptorExtension.serviceInfo.getter()
{
  v1 = v0[2];
  sub_100184290(v1, v0[3], v0[4]);
  return v1;
}

uint64_t NANDatapath.ResponseConfiguration.serviceName.getter()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 64);

  return v1;
}

uint64_t NANDatapath.ResponseConfiguration.multicastAddress.setter(uint64_t result)
{
  *(v1 + 177) = result;
  *(v1 + 181) = WORD2(result);
  *(v1 + 183) = BYTE6(result) & 1;
  return result;
}

uint64_t NANDatapath.ResponseConfiguration.channelInfo.setter(uint64_t result)
{
  *(v1 + 188) = result;
  *(v1 + 192) = WORD2(result);
  return result;
}

uint64_t NANDatapath.ResponseConfiguration.countryCode.setter(uint64_t result)
{
  *(v1 + 194) = result;
  *(v1 + 196) = BYTE2(result) & 1;
  return result;
}

uint64_t NANDatapath.ResponseConfiguration.init(instanceID:publishID:initiatorManagementAddress:initiatorDataAddress:initiatorServiceInfo:responderManagementAddress:responderDataAddress:serviceName:serviceType:dialogToken:status:securityConfiguration:internetSharingConfiguration:multicastAddress:multicastServiceType:channelInfo:countryCode:pairingMetadata:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, int a13, uint64_t a14, uint64_t a15, int a16, __int16 a17, char a18, char a19, char a20, int a21, int a22, __int16 a23, __int16 a24, __int16 a25, char a26, uint64_t a27)
{
  *(a9 + 128) = 1;
  *(a9 + 176) = -1;
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 3) = BYTE1(a3);
  *(a9 + 4) = BYTE2(a3);
  *(a9 + 5) = BYTE3(a3);
  *(a9 + 6) = BYTE4(a3);
  *(a9 + 2) = a3;
  *(a9 + 7) = BYTE5(a3);
  *(a9 + 9) = BYTE1(a4);
  *(a9 + 10) = BYTE2(a4);
  *(a9 + 11) = BYTE3(a4);
  *(a9 + 12) = BYTE4(a4);
  *(a9 + 8) = a4;
  *(a9 + 13) = BYTE5(a4);
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 41) = BYTE1(a8);
  *(a9 + 42) = BYTE2(a8);
  *(a9 + 43) = BYTE3(a8);
  *(a9 + 44) = BYTE4(a8);
  *(a9 + 40) = a8;
  *(a9 + 45) = BYTE5(a8);
  *(a9 + 47) = *(&a10 + 1);
  *(a9 + 46) = a10;
  *(a9 + 51) = BYTE5(a10);
  *(a9 + 56) = a11;
  *(a9 + 96) = 0u;
  *(a9 + 112) = 0u;
  *(a9 + 64) = a12;
  *(a9 + 80) = 0u;
  *(a9 + 152) = 0u;
  *(a9 + 168) = 0;
  *(a9 + 72) = a13;
  *(a9 + 136) = 0u;
  *(a9 + 216) = 0u;
  *(a9 + 232) = 0u;
  *(a9 + 248) = 0;
  *(a9 + 73) = *(&a13 + 1);
  *(a9 + 200) = 0u;
  sub_1000B1B78(a14, a9 + 80, &qword_1005914A0, &qword_100499040);
  sub_1000B1B78(a15, a9 + 136, &unk_1005974B0, &qword_1004AFCF0);
  *(a9 + 181) = a17;
  *(a9 + 177) = a16;
  *(a9 + 183) = a18 & 1;
  *(a9 + 184) = a20 & 1;
  *(a9 + 192) = a23;
  *(a9 + 188) = a22;
  *(a9 + 194) = a25;
  *(a9 + 196) = a26 & 1;
  return sub_1000B1B78(a27, a9 + 200, &qword_100595C10, &unk_100499060);
}

void NANDatapath.ResponseConfiguration.hash(into:)()
{
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(*(v0 + 1));
  v1 = *(v0 + 3);
  v2 = *(v0 + 4);
  v3 = *(v0 + 5);
  v4 = *(v0 + 6);
  v5 = *(v0 + 7);
  Hasher._combine(_:)(*(v0 + 2));
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  v6 = *(v0 + 9);
  v7 = *(v0 + 10);
  v8 = *(v0 + 11);
  v9 = *(v0 + 12);
  v10 = *(v0 + 13);
  Hasher._combine(_:)(*(v0 + 8));
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  v11 = *(v0 + 16);
  if (v11 == 4)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v13 = *(v0 + 24);
    v12 = *(v0 + 32);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v11);
    Data.hash(into:)();
  }

  v14 = *(v0 + 41);
  v15 = *(v0 + 42);
  v16 = *(v0 + 43);
  v17 = *(v0 + 44);
  v18 = *(v0 + 45);
  Hasher._combine(_:)(*(v0 + 40));
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  Hasher._combine(_:)(v18);
  v19 = *(v0 + 47);
  v20 = *(v0 + 48);
  v21 = *(v0 + 49);
  v22 = *(v0 + 50);
  v23 = *(v0 + 51);
  Hasher._combine(_:)(*(v0 + 46));
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(v21);
  Hasher._combine(_:)(v22);
  Hasher._combine(_:)(v23);
  v24 = *(v0 + 56);
  v25 = *(v0 + 64);
  String.lowercased()();
  String.hash(into:)();

  *(v0 + 72);
  String.hash(into:)();

  Hasher._combine(_:)(*(v0 + 73));
  Hasher._combine(_:)(*(v0 + 74));
  v26 = *(v0 + 128);
  if (v26 != 1)
  {
    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    v29 = *(v0 + 120);
    v31 = *(v0 + 88);
    v30 = *(v0 + 96);
    v32 = *(v0 + 80);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v32 + 1);
    Data.hash(into:)();
    if (v28 >> 60 == 15)
    {
      Hasher._combine(_:)(0);
      if (v26)
      {
LABEL_7:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_10;
      }
    }

    else
    {
      Hasher._combine(_:)(1u);
      Data.hash(into:)();
      if (v26)
      {
        goto LABEL_7;
      }
    }
  }

  Hasher._combine(_:)(0);
LABEL_10:
  sub_100012400(v0 + 136, &v56, &unk_1005974B0, &qword_1004AFCF0);
  if (v57[24] != 255)
  {
    v54 = v56;
    v55[0] = *v57;
    *(v55 + 9) = *&v57[9];
    Hasher._combine(_:)(1u);
    sub_10020C6FC(&v54, &v51);
    if (v53)
    {
      sub_10020C758(&v51);
      v33 = 0;
    }

    else
    {
      v33 = v52;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    Hasher._combine(_:)(v33);
    sub_10020C758(&v54);
    if (*(v0 + 183))
    {
      goto LABEL_17;
    }

LABEL_14:
    v34 = *(v0 + 181);
    v35 = *(v0 + 177);
    v36 = v35 | (*(v0 + 181) << 32);
    v37 = v36 >> 8;
    v38 = v36 >> 16;
    v39 = v36 >> 24;
    v40 = v34 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v35);
    Hasher._combine(_:)(v37);
    Hasher._combine(_:)(v38);
    Hasher._combine(_:)(v39);
    Hasher._combine(_:)(v34);
    goto LABEL_18;
  }

  Hasher._combine(_:)(0);
  if ((*(v0 + 183) & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_17:
  LOBYTE(v40) = 0;
LABEL_18:
  Hasher._combine(_:)(v40);
  if (*(v0 + 184) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v41 = *(v0 + 188) | (*(v0 + 192) << 32);
  if ((v41 & 0xFF00000000) == 0x300000000)
  {
    v42 = 0;
    goto LABEL_23;
  }

  v44 = v41 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v41);
  Hasher._combine(_:)(0x801004u >> ((v41 >> 29) & 0xF8));
  if ((v41 >> 40) <= 3)
  {
    if (v44 == 2)
    {
      v45 = 0;
    }

    else
    {
      if (v44 != 3)
      {
        goto LABEL_41;
      }

      v45 = 1;
    }

LABEL_36:
    Hasher._combine(_:)(v45);
    if (*(v0 + 196))
    {
      goto LABEL_24;
    }

    goto LABEL_37;
  }

  switch(v44)
  {
    case 4:
      v45 = 3;
      goto LABEL_36;
    case 5:
      v45 = 4;
      goto LABEL_36;
    case 6:
      v45 = 5;
      goto LABEL_36;
  }

LABEL_41:
  Hasher._combine(_:)(2uLL);
  v42 = BYTE5(v41) & 1;
LABEL_23:
  Hasher._combine(_:)(v42);
  if (*(v0 + 196))
  {
LABEL_24:
    LOBYTE(v43) = 0;
    goto LABEL_38;
  }

LABEL_37:
  v46 = *(v0 + 194);
  v43 = v46 >> 8;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v46);
LABEL_38:
  Hasher._combine(_:)(v43);
  v47 = *(v0 + 208);
  if (v47)
  {
    v48 = *(v0 + 248);
    v49 = *(v0 + 240);
    v50 = *(v0 + 232);
    *&v56 = *(v0 + 200);
    *(&v56 + 1) = v47;
    *v57 = *(v0 + 216);
    *&v57[16] = v50;
    *&v57[24] = v49;
    v58 = v48;
    Hasher._combine(_:)(1u);
    NANPairing.Metadata.This.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int NANDatapath.ResponseConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANDatapath.ResponseConfiguration.hash(into:)();
  return Hasher._finalize()();
}

void sub_100209FBC(uint64_t a1@<X8>)
{
  v2 = *(v1 + 12);
  *a1 = *v1;
  *(a1 + 1) = *(v1 + 8);
  *(a1 + 5) = v2;
}

Swift::Int sub_100209FDC()
{
  Hasher.init(_seed:)();
  NANDatapath.ResponseConfiguration.hash(into:)();
  return Hasher._finalize()();
}

unint64_t NANDatapath.ConnectionMode.description.getter(char a1)
{
  if (!a1)
  {
    return 0xD000000000000027;
  }

  if (a1 == 1)
  {
    return 0xD000000000000032;
  }

  return 0xD00000000000001FLL;
}

uint64_t NANDatapath.ConnectionMode.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6E4F646572696170;
  }

  if (a1 == 1)
  {
    return 0x6972696150796E61;
  }

  return 7105633;
}

uint64_t sub_10020A10C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x6972696150796E61;
  v4 = 0xEA0000000000676ELL;
  if (v2 != 1)
  {
    v3 = 7105633;
    v4 = 0xE300000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6E4F646572696170;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEA0000000000796CLL;
  }

  v7 = 0x6972696150796E61;
  v8 = 0xEA0000000000676ELL;
  if (*a2 != 1)
  {
    v7 = 7105633;
    v8 = 0xE300000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6E4F646572696170;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEA0000000000796CLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_10020A208@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P11NANDatapathO14ConnectionModeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10020A238(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000796CLL;
  v4 = 0xEA0000000000676ELL;
  v5 = 0x6972696150796E61;
  if (v2 != 1)
  {
    v5 = 7105633;
    v4 = 0xE300000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6E4F646572696170;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10020A2A8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020A34C()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10020A3DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

__n128 NANDatapath.Configuration.init(instanceID:serviceName:responderPublishID:responderManagementAddress:initiatorDataAddress:initiatorSubscribeID:publicOWEKey:serviceSpecificInfo:serviceType:securityConfiguration:internetSharingConfiguration:multicastAddress:multicastServiceType:connectionMode:channelInfo:countryCode:gtkRequired:pairingMetadata:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, _OWORD *a13, uint64_t a14, unsigned __int8 a15, unsigned __int8 a16, uint64_t a17, int a18, unsigned __int8 a19, __int128 *a20)
{
  v68 = a8;
  v60 = a7;
  v61 = a4;
  v58 = a2;
  v59 = a3;
  v66 = a18;
  v67 = a19;
  v65 = a17;
  v63 = a15;
  v64 = a16;
  v62 = a14;
  v57 = a13;
  v55 = a1;
  v56 = a11;
  v23 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v53 = v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v26 = v52 - v25;
  v27 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v28 = *(*(v27 - 8) + 64);
  __chkstk_darwin();
  v30 = v52 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v34 = v52 - v33;
  v35 = a10;
  v69 = a10;
  v36 = *(v32 + 6);
  v54 = v32;
  if (v36 == 1)
  {
    v37 = v68;
LABEL_5:
    sub_100016290(v37, &unk_100595C40, &qword_100499070);
    v41 = v60;
    goto LABEL_6;
  }

  v37 = v68;
  if (*v32 >= 2u)
  {
    goto LABEL_5;
  }

  sub_100012400(v68, v34, &unk_100595C40, &qword_100499070);
  sub_1000CB960(a10, v30);
  sub_1000D1274(v34, &v30[*(v27 + 24)]);
  sub_10020C7F8(v30, v26);
  v38 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  v39 = *(v38 - 8);
  v52[0] = *(v39 + 56);
  v52[1] = v39 + 56;
  (v52[0])(v26, 0, 1, v38);
  v40 = v53;
  sub_100012400(v26, v53, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v40, 7);
  sub_100016290(v26, &qword_10058BB48, &unk_100483040);
  sub_100016290(v34, &unk_100595C40, &qword_100499070);
  sub_10020C85C(v30);
  sub_1000CB960(v69, v30);
  v41 = v60;
  *(v30 + 1) = v60;
  sub_10020C7F8(v30, v26);
  swift_storeEnumTagMultiPayload();
  (v52[0])(v26, 0, 1, v38);
  sub_100012400(v26, v40, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v40, 7);
  sub_100016290(v68, &unk_100595C40, &qword_100499070);
  sub_100016290(v26, &qword_10058BB48, &unk_100483040);
  sub_10020C85C(v30);
  v35 = v69;
LABEL_6:
  v42 = v54;
  v43 = v54[1];
  *(a9 + 48) = *v54;
  *(a9 + 64) = v43;
  *(a9 + 80) = v42[2];
  v44 = v57;
  v45 = v57[1];
  *(a9 + 104) = *v57;
  *(a9 + 120) = v45;
  v46 = a20[3];
  *(a9 + 200) = a20[2];
  v47 = *a20;
  *(a9 + 184) = a20[1];
  *(a9 + 168) = v47;
  v49 = a20[4];
  result = a20[5];
  *(a9 + 248) = result;
  *(a9 + 232) = v49;
  *a9 = v55;
  *(a9 + 1) = a6;
  *(a9 + 3) = BYTE2(a6);
  *(a9 + 4) = BYTE3(a6);
  *(a9 + 5) = BYTE4(a6);
  *(a9 + 6) = BYTE5(a6);
  *(a9 + 7) = v41;
  *(a9 + 8) = v58;
  *(a9 + 16) = v59;
  *(a9 + 24) = v61;
  *(a9 + 25) = a5;
  *(a9 + 27) = BYTE2(a5);
  *(a9 + 28) = BYTE3(a5);
  *(a9 + 29) = BYTE4(a5);
  *(a9 + 30) = BYTE5(a5);
  *(a9 + 31) = 0;
  *(a9 + 32) = v56;
  *(a9 + 40) = v35;
  *(a9 + 96) = *(v42 + 6);
  *(a9 + 136) = *(v44 + 4);
  v50 = v62;
  *(a9 + 148) = WORD2(v62);
  *(a9 + 144) = v50;
  *(a9 + 150) = BYTE6(v50) & 1;
  *(a9 + 151) = v63 & 1;
  *(a9 + 152) = v64;
  LODWORD(v50) = v65;
  *(a9 + 160) = WORD2(v65);
  *(a9 + 156) = v50;
  v51 = BYTE2(v66);
  *(a9 + 162) = v66;
  *(a9 + 164) = v51 & 1;
  *(a9 + 165) = v67;
  *(a9 + 264) = *(a20 + 12);
  *(a9 + 216) = v46;
  return result;
}

uint64_t NANDatapath.ServiceType.init(apiServiceType:)(uint64_t a1)
{
  if (a1 == 2)
  {
    return 2;
  }

  else
  {
    return a1 == 1;
  }
}

uint64_t NANDatapath.ConnectionMode.init(apiConnectionMode:)(unint64_t a1)
{
  if (a1 >= 3)
  {
    return 2;
  }

  else
  {
    return 0x10002u >> (8 * a1);
  }
}

BOOL _s7CoreP2P11NANDatapathO21SecurityConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v18 = v2;
  v19 = v3;
  if ((_s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)) & 1) == 0)
  {
    return 0;
  }

  v6 = *(a1 + 24);
  v16 = *(a2 + 24);
  v17 = v6;
  v7 = v6;
  v8 = v16;
  if (*(&v6 + 1) >> 60 == 15)
  {
    if (*(&v16 + 1) >> 60 == 15)
    {
      sub_100012400(&v17, v15, &qword_10058CC10, &qword_100482F10);
      sub_100012400(&v16, v15, &qword_10058CC10, &qword_100482F10);
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (*(&v16 + 1) >> 60 == 15)
  {
LABEL_8:
    sub_100012400(&v17, v15, &qword_10058CC10, &qword_100482F10);
    sub_100012400(&v16, v15, &qword_10058CC10, &qword_100482F10);
    sub_100017554(v7, *(&v7 + 1));
    v11 = *(&v8 + 1);
    v10 = v8;
LABEL_9:
    sub_100017554(v10, v11);
    return 0;
  }

  sub_100012400(&v17, v15, &qword_10058CC10, &qword_100482F10);
  sub_100012400(&v16, v15, &qword_10058CC10, &qword_100482F10);
  v12 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v7, *(&v7 + 1), v8, *(&v8 + 1));
  sub_100017554(v8, *(&v8 + 1));
  if ((v12 & 1) == 0)
  {
    v11 = *(&v7 + 1);
    v10 = v7;
    goto LABEL_9;
  }

LABEL_12:
  sub_100017554(v7, *(&v7 + 1));
  v13 = *(a1 + 6);
  v14 = *(a2 + 6);
  if (v13)
  {
    return v14 && (*(a1 + 5) == *(a2 + 5) && v13 == v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v14;
}

BOOL _s7CoreP2P11NANDatapathO21ResponseConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = *(a1 + 3);
  v3 = *(a2 + 3);
  LODWORD(v117[0]) = *(a1 + 2);
  WORD2(v117[0]) = v2;
  if (LODWORD(v117[0]) != *(a2 + 2) || v2 != v3)
  {
    return 0;
  }

  v5 = *(a1 + 6);
  v6 = *(a2 + 6);
  LODWORD(v117[0]) = *(a1 + 2);
  WORD2(v117[0]) = v5;
  if (LODWORD(v117[0]) != *(a2 + 2) || v5 != v6)
  {
    return 0;
  }

  v9 = *(a1 + 2);
  v8 = *(a1 + 3);
  v10 = *(a1 + 4);
  v12 = *(a2 + 2);
  v11 = *(a2 + 3);
  v13 = *(a2 + 4);
  if (v9 == 4)
  {
    if (v12 == 4)
    {
      v14 = a1;
      v15 = a2;
      sub_100184290(*(a1 + 2), v8, v10);
      sub_100184290(v12, v11, v13);
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  if (v12 == 4)
  {
LABEL_30:
    sub_100184290(*(a1 + 2), v8, v10);
    sub_100184290(v12, v11, v13);
    sub_1001842D0(v9, v8, v10);
    v30 = v12;
    v31 = v11;
    v32 = v13;
LABEL_36:
    sub_1001842D0(v30, v31, v32);
    return 0;
  }

  v14 = a1;
  v15 = a2;
  v33 = *(a1 + 2);
  sub_100184290(*(a1 + 2), v8, v10);
  sub_100184290(v12, v11, v13);
  if (v33 != v12)
  {
    sub_1001842D0(v12, v11, v13);
LABEL_35:
    v30 = v9;
    v31 = v8;
    v32 = v10;
    goto LABEL_36;
  }

  v34 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v8, v10, v11, v13);
  sub_1001842D0(v12, v11, v13);
  if ((v34 & 1) == 0)
  {
    goto LABEL_35;
  }

LABEL_16:
  sub_1001842D0(v9, v8, v10);
  v16 = *(v14 + 22);
  v17 = *(v15 + 22);
  LODWORD(v117[0]) = *(v14 + 10);
  WORD2(v117[0]) = v16;
  if (LODWORD(v117[0]) != *(v15 + 10) || v16 != v17)
  {
    return 0;
  }

  v19 = *(v14 + 25);
  v20 = *(v15 + 25);
  LODWORD(v117[0]) = *(v14 + 46);
  WORD2(v117[0]) = v19;
  if (LODWORD(v117[0]) != *(v15 + 46) || v19 != v20)
  {
    return 0;
  }

  v22 = *(v14 + 7);
  v23 = *(v14 + 8);
  v24 = v14;
  v25 = *(v15 + 7);
  v26 = *(v15 + 8);
  v27 = v15;
  v28 = String.lowercased()();
  v29 = String.lowercased()();
  if (v28._countAndFlagsBits == v29._countAndFlagsBits && v28._object == v29._object)
  {
  }

  else
  {
    v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v36 & 1) == 0)
    {
      return 0;
    }
  }

  v37 = 0x6576697470616461;
  if (v14[72])
  {
    if (v14[72] == 1)
    {
      v38 = 0xE800000000000000;
      v39 = 0x656D69746C616572;
    }

    else
    {
      v39 = 0x6E6574614C776F6CLL;
      v38 = 0xEA00000000007963;
    }
  }

  else
  {
    v38 = 0xE800000000000000;
    v39 = 0x6576697470616461;
  }

  if (v15[72])
  {
    if (v15[72] == 1)
    {
      v40 = 0xE800000000000000;
      v37 = 0x656D69746C616572;
    }

    else
    {
      v37 = 0x6E6574614C776F6CLL;
      v40 = 0xEA00000000007963;
    }
  }

  else
  {
    v40 = 0xE800000000000000;
  }

  if (v39 == v37 && v38 == v40)
  {
  }

  else
  {
    v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v41 & 1) == 0)
    {
      return 0;
    }
  }

  if (v14[73] != v15[73] || v14[74] != v15[74])
  {
    return 0;
  }

  v43 = *(v14 + 10);
  v42 = *(v14 + 11);
  v44 = *(v14 + 12);
  v45 = *(v14 + 13);
  v47 = *(v14 + 14);
  v46 = *(v14 + 15);
  v48 = *(v14 + 16);
  v50 = *(v15 + 10);
  v49 = *(v15 + 11);
  v52 = *(v15 + 12);
  v51 = *(v27 + 13);
  v112 = *(v27 + 14);
  v53 = *(v27 + 16);
  v113 = *(v27 + 15);
  if (v48 == 1)
  {
    if (v53 == 1)
    {
      v105 = v50;
      v106 = v52;
      v54 = v42;
      v55 = v46;
      sub_10011A208(v43, v42, v44, v45, v47, v46, 1);
      sub_10011A208(v105, v49, v106, v51, v112, v113, 1);
      sub_10011A270(v43, v54, v44, v45, v47, v55, 1);
      goto LABEL_61;
    }

LABEL_59:
    v56 = v43;
    v57 = v43;
    v58 = v42;
    v109 = v45;
    v59 = v45;
    v60 = v47;
    v61 = v47;
    v62 = v46;
    v104 = v48;
    v63 = v53;
    sub_10011A208(v57, v42, v44, v59, v61, v46, v48);
    sub_10011A208(v50, v49, v52, v51, v112, v113, v63);
    sub_10011A270(v56, v58, v44, v109, v60, v62, v104);
    sub_10011A270(v50, v49, v52, v51, v112, v113, v63);
    return 0;
  }

  if (v53 == 1)
  {
    goto LABEL_59;
  }

  v129[0] = v50;
  v130 = v49;
  v131 = v52;
  v132 = v51;
  v133 = v112;
  v134 = v113;
  v135 = v53;
  v122[0] = v43;
  v123 = v42;
  v124 = v44;
  v125 = v45;
  v126 = v47;
  v127 = v46;
  v128 = v48;
  v99 = v42;
  v100 = v44;
  v64 = v44;
  v110 = v45;
  v65 = v45;
  v102 = v46;
  v66 = v48;
  v67 = v53;
  sub_10011A208(v43, v42, v64, v65, v47, v46, v48);
  sub_10011A208(v50, v49, v52, v51, v112, v113, v67);
  v107 = _s7CoreP2P11NANDatapathO21SecurityConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v122, v129);
  sub_10011A270(v50, v49, v52, v51, v112, v113, v67);
  sub_10011A270(v43, v99, v100, v110, v47, v102, v66);
  if (!v107)
  {
    return 0;
  }

LABEL_61:
  sub_100012400((v24 + 136), v117, &unk_1005974B0, &qword_1004AFCF0);
  sub_100012400((v27 + 136), &v119, &unk_1005974B0, &qword_1004AFCF0);
  if (v118 == 255)
  {
    if (v120[24] == 255)
    {
      sub_100016290(v117, &unk_1005974B0, &qword_1004AFCF0);
      goto LABEL_67;
    }

LABEL_71:
    sub_100016290(v117, &qword_1005915C8, &qword_100499EC0);
    return 0;
  }

  sub_100012400(v117, v121, &unk_1005974B0, &qword_1004AFCF0);
  if (v120[24] == 255)
  {
    sub_10020C758(v121);
    goto LABEL_71;
  }

  v115 = v119;
  v116[0] = *v120;
  *(v116 + 9) = *&v120[9];
  v68 = _s7CoreP2P10NANPublishO28InternetSharingConfigurationO2eeoiySbAE_AEtFZ_0(v121, &v115);
  sub_10020C758(&v115);
  sub_10020C758(v121);
  sub_100016290(v117, &unk_1005974B0, &qword_1004AFCF0);
  if ((v68 & 1) == 0)
  {
    return 0;
  }

LABEL_67:
  v69 = v27[183];
  if (v24[183])
  {
    if ((v27[183] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v27[183])
    {
      return 0;
    }

    v70 = *(v24 + 177) | (*(v24 + 181) << 32);
    v71 = *(v27 + 177) | (*(v27 + 181) << 32);
    v72.i64[0] = 0xFFFFFFFFFFFFLL;
    v72.i64[1] = 0xFFFFFFFFFFFFLL;
    v73 = vandq_s8(vdupq_n_s64(v70), v72);
    v74 = vshlq_u64(v73, xmmword_1004817A0);
    v75 = vandq_s8(vdupq_n_s64(v71), v72);
    v76 = vshlq_u64(v75, xmmword_1004817A0);
    v77 = vshlq_u64(v75, xmmword_100481790);
    LOBYTE(v117[0]) = *(v24 + 177);
    *v73.i8 = vmovn_s64(vshlq_u64(v73, xmmword_100481790));
    *v74.i8 = vmovn_s64(v74);
    v74.i16[1] = v74.i16[2];
    v74.i16[2] = v73.i16[0];
    v74.i16[3] = v73.i16[2];
    *(v117 + 1) = vmovn_s16(v74).u32[0];
    BYTE5(v117[0]) = BYTE5(v70);
    LOBYTE(v121[0]) = v71;
    *v73.i8 = vmovn_s64(v77);
    *v77.i8 = vmovn_s64(v76);
    v77.i16[1] = v77.i16[2];
    v77.i16[2] = v73.i16[0];
    v77.i16[3] = v73.i16[2];
    *(v121 + 1) = vmovn_s16(v77).u32[0];
    BYTE5(v121[0]) = BYTE5(v71);
    if (LODWORD(v117[0]) != LODWORD(v121[0]) || WORD2(v117[0]) != WORD2(v121[0]))
    {
      return 0;
    }
  }

  if (v24[184])
  {
    if (!v27[184])
    {
      return 0;
    }
  }

  else if (v27[184])
  {
    return 0;
  }

  v79 = *(v24 + 47) | (*(v24 + 96) << 32);
  v80 = *(v27 + 47) | (*(v27 + 96) << 32);
  v81 = v80 & 0xFF00000000;
  if ((v79 & 0xFF00000000) != 0x300000000)
  {
    if (v81 == 0x300000000)
    {
      return 0;
    }

    *(v24 + 96);
    *(v27 + 96);
    if (*(v24 + 47) != *(v27 + 47) || ((0x801004u >> ((v79 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v80 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v83 = v79 >> 40;
    v84 = v80 >> 40;
    if (v83 <= 3)
    {
      if (v83 == 2)
      {
        if (v84 != 2)
        {
          return 0;
        }

        goto LABEL_84;
      }

      if (v83 == 3)
      {
        if (v84 != 3)
        {
          return 0;
        }

        goto LABEL_84;
      }
    }

    else
    {
      switch(v83)
      {
        case 4:
          if (v84 != 4)
          {
            return 0;
          }

          goto LABEL_84;
        case 5:
          if (v84 != 5)
          {
            return 0;
          }

          goto LABEL_84;
        case 6:
          if (v84 != 6)
          {
            return 0;
          }

          goto LABEL_84;
      }
    }

    if (v84 - 2) < 5 || ((v84 ^ v83))
    {
      return 0;
    }

    goto LABEL_84;
  }

  if (v81 != 0x300000000)
  {
    return 0;
  }

LABEL_84:
  v82 = v27[196];
  if (v24[196])
  {
    if (!v27[196])
    {
      return 0;
    }
  }

  else
  {
    if (*(v24 + 97) != *(v27 + 97))
    {
      v82 = 1;
    }

    if (v82)
    {
      return 0;
    }
  }

  v85 = *(v24 + 25);
  v86 = *(v24 + 26);
  v88 = *(v24 + 27);
  v87 = *(v24 + 28);
  v89 = *(v24 + 29);
  v90 = *(v24 + 30);
  v91 = *(v24 + 31);
  v92 = *(v27 + 25);
  v93 = *(v27 + 26);
  v94 = *(v27 + 27);
  v95 = *(v27 + 29);
  v114 = *(v27 + 28);
  v108 = *(v27 + 30);
  v111 = *(v27 + 31);
  if (v86)
  {
    if (v93)
    {
      v117[0] = *(v27 + 25);
      v117[1] = v93;
      v117[2] = v94;
      v117[3] = v114;
      v117[4] = v95;
      v118 = v108;
      *&v119 = v111;
      v96 = v85;
      v121[0] = v85;
      v121[1] = v86;
      v101 = v85;
      v121[2] = v88;
      v121[3] = v87;
      v121[4] = v89;
      v121[5] = v90;
      v121[6] = v91;
      v103 = _s7CoreP2P10NANPairingV8MetadataV4ThisV23__derived_struct_equalsySbAG_AGtFZ_0(v121, v117);
      sub_10020D510(v96, v86);
      sub_10020D510(v92, v93);
      sub_100083690(v92, v93);
      sub_100083690(v101, v86);
      return v103;
    }

LABEL_104:
    v97 = v85;
    sub_10020D510(v85, v86);
    sub_10020D510(v92, v93);
    sub_100083690(v97, v86);
    sub_100083690(v92, v93);
    return 0;
  }

  if (v93)
  {
    goto LABEL_104;
  }

  v98 = v85;
  sub_10020D510(v85, 0);
  sub_10020D510(v92, 0);
  sub_100083690(v98, 0);
  return 1;
}

BOOL _s7CoreP2P11NANDatapathO25ConfirmationConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  LOBYTE(v7) = BYTE1(a1);
  BYTE1(v7) = BYTE2(a1);
  BYTE2(v7) = BYTE3(a1);
  HIBYTE(v7) = BYTE4(a1);
  LOBYTE(v8) = BYTE5(a1);
  HIBYTE(v8) = BYTE6(a1);
  LOBYTE(v5) = BYTE1(a2);
  BYTE1(v5) = BYTE2(a2);
  BYTE2(v5) = BYTE3(a2);
  HIBYTE(v5) = BYTE4(a2);
  LOBYTE(v6) = BYTE5(a2);
  HIBYTE(v6) = BYTE6(a2);
  return v7 == v5 && v8 == v6 && (a2 ^ a1) >> 56 == 0;
}

uint64_t _s7CoreP2P11NANDatapathO13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v2 = *(a1 + 5);
  v3 = *(a2 + 5);
  LODWORD(v140) = *(a1 + 1);
  WORD2(v140) = v2;
  v4 = v140 == *(a2 + 1) && v2 == v3;
  if (!v4 || a1[7] != a2[7])
  {
    return 0;
  }

  v5 = *(a1 + 1);
  v6 = *(a1 + 2);
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v11 = String.lowercased()();
  v12 = String.lowercased()();
  if (v11._countAndFlagsBits == v12._countAndFlagsBits && v11._object == v12._object)
  {
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  if (a1[24] != a2[24])
  {
    return 0;
  }

  v14 = *(a1 + 29);
  v15 = *(a2 + 29);
  LODWORD(v140) = *(a1 + 25);
  WORD2(v140) = v14;
  if (v140 != *(a2 + 25) || v14 != v15)
  {
    return 0;
  }

  v18 = a2[31];
  if (a1[31])
  {
    v19 = 0x73616369746C756DLL;
  }

  else
  {
    v19 = 0x74736163696E75;
  }

  if (a1[31])
  {
    v20 = 0xE900000000000074;
  }

  else
  {
    v20 = 0xE700000000000000;
  }

  if (a2[31])
  {
    v21 = 0x73616369746C756DLL;
  }

  else
  {
    v21 = 0x74736163696E75;
  }

  if (a2[31])
  {
    v22 = 0xE900000000000074;
  }

  else
  {
    v22 = 0xE700000000000000;
  }

  if (v19 == v21 && v20 == v22)
  {
  }

  else
  {
    v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v23 & 1) == 0)
    {
      return 0;
    }
  }

  v24 = 0x6576697470616461;
  if (a1[32])
  {
    if (a1[32] == 1)
    {
      v25 = 0xE800000000000000;
      v26 = 0x656D69746C616572;
    }

    else
    {
      v26 = 0x6E6574614C776F6CLL;
      v25 = 0xEA00000000007963;
    }
  }

  else
  {
    v25 = 0xE800000000000000;
    v26 = 0x6576697470616461;
  }

  if (a2[32])
  {
    if (a2[32] == 1)
    {
      v27 = 0xE800000000000000;
      v24 = 0x656D69746C616572;
    }

    else
    {
      v24 = 0x6E6574614C776F6CLL;
      v27 = 0xEA00000000007963;
    }
  }

  else
  {
    v27 = 0xE800000000000000;
  }

  if (v26 == v24 && v25 == v27)
  {

    goto LABEL_49;
  }

  v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v28 & 1) == 0)
  {
    return 0;
  }

LABEL_49:
  if ((_s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 5), *(a2 + 5)) & 1) == 0)
  {
    return 0;
  }

  v30 = *(a1 + 6);
  v29 = *(a1 + 7);
  v31 = *(a1 + 8);
  v32 = *(a1 + 9);
  v34 = *(a1 + 10);
  v33 = *(a1 + 11);
  v35 = *(a1 + 12);
  v36 = *(a2 + 6);
  v37 = *(a2 + 7);
  v39 = *(a2 + 8);
  v38 = *(a2 + 9);
  v41 = *(a2 + 10);
  v40 = *(a2 + 11);
  v42 = *(a2 + 12);
  if (v35 == 1)
  {
    if (v42 == 1)
    {
      v117 = *(a2 + 6);
      v121 = *(a2 + 9);
      v108 = *(a2 + 7);
      v109 = *(a2 + 8);
      v43 = *(a1 + 10);
      v44 = *(a1 + 11);
      sub_10011A208(v30, v29, v31, v32, v34, v33, 1);
      sub_10011A208(v117, v108, v109, v121, v41, v40, 1);
      sub_10011A270(v30, v29, v31, v32, v43, v44, 1);
      goto LABEL_56;
    }

    goto LABEL_54;
  }

  if (v42 == 1)
  {
LABEL_54:
    v45 = *(a2 + 6);
    v46 = *(a1 + 6);
    v47 = v37;
    v48 = v39;
    v118 = v42;
    v122 = v35;
    v49 = v38;
    v125 = v33;
    v128 = v34;
    sub_10011A208(v46, v29, v31, v32, v34, v33, v35);
    sub_10011A208(v45, v47, v48, v49, v41, v40, v118);
    sub_10011A270(v30, v29, v31, v32, v128, v125, v122);
    sub_10011A270(v45, v47, v48, v49, v41, v40, v118);
    return 0;
  }

  v175[0] = *(a2 + 6);
  v176 = v37;
  v177 = v39;
  v178 = v38;
  v179 = v41;
  v180 = v40;
  v181 = v42;
  v168[0] = v30;
  v169 = v29;
  v170 = v31;
  v171 = v32;
  v172 = v34;
  v173 = v33;
  v174 = v35;
  v111 = v30;
  v112 = v29;
  v119 = v36;
  v50 = v30;
  v51 = v29;
  v114 = v31;
  v52 = v39;
  v53 = v31;
  v54 = v38;
  v126 = v33;
  v129 = v34;
  v55 = v40;
  v56 = v35;
  sub_10011A208(v50, v51, v53, v32, v34, v33, v35);
  sub_10011A208(v119, v37, v52, v54, v41, v55, v42);
  v110 = _s7CoreP2P11NANDatapathO21SecurityConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(v168, v175);
  sub_10011A270(v119, v37, v52, v54, v41, v55, v42);
  sub_10011A270(v111, v112, v114, v32, v129, v126, v56);
  if (!v110)
  {
    return 0;
  }

LABEL_56:
  sub_100012400((a1 + 104), &v140, &qword_1005914A8, &qword_100499048);
  sub_100012400((a2 + 104), &v142[8], &qword_1005914A8, &qword_100499048);
  if (*(&v141 + 1) != 1)
  {
    sub_100012400(&v140, &v152, &qword_1005914A8, &qword_100499048);
    if (*&v142[32] == 1)
    {
      sub_10020C6CC(&v152);
      goto LABEL_61;
    }

    v131 = *&v142[8];
    v132 = *&v142[24];
    *&v133 = *&v142[40];
    sub_10020C694(&v152, &v159);
    *&v161[24] = v132;
    *&v161[8] = v131;
    *&v161[40] = v133;
    if (*(&v160 + 1))
    {
      if (*&v161[32])
      {
        sub_10020C6CC(&v161[8]);
LABEL_69:
        sub_10020C6CC(&v159);
        sub_10020C6CC(&v152);
        goto LABEL_70;
      }
    }

    else if (!*&v161[32])
    {
      goto LABEL_69;
    }

    sub_100016290(&v159, &qword_100591498, &qword_100499038);
    sub_10020C6CC(&v152);
    v57 = &qword_1005914A8;
    v58 = &qword_100499048;
    goto LABEL_62;
  }

  if (*&v142[32] != 1)
  {
LABEL_61:
    v57 = &unk_1005915D0;
    v58 = &unk_100499EC8;
    goto LABEL_62;
  }

LABEL_70:
  sub_100016290(&v140, &qword_1005914A8, &qword_100499048);
  v60 = a2[150];
  if (a1[150])
  {
    if ((a2[150] & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (a2[150])
    {
      return 0;
    }

    v61 = *(a1 + 36) | (*(a1 + 74) << 32);
    v62 = *(a2 + 36) | (*(a2 + 74) << 32);
    v63.i64[0] = 0xFFFFFFFFFFFFLL;
    v63.i64[1] = 0xFFFFFFFFFFFFLL;
    v64 = vandq_s8(vdupq_n_s64(v61), v63);
    v65 = vshlq_u64(v64, xmmword_1004817A0);
    v66 = vandq_s8(vdupq_n_s64(v62), v63);
    v67 = vshlq_u64(v66, xmmword_1004817A0);
    v68 = vshlq_u64(v66, xmmword_100481790);
    LOBYTE(v140) = *(a1 + 36);
    *v64.i8 = vmovn_s64(vshlq_u64(v64, xmmword_100481790));
    *v65.i8 = vmovn_s64(v65);
    v65.i16[1] = v65.i16[2];
    v65.i16[2] = v64.i16[0];
    v65.i16[3] = v64.i16[2];
    *(&v140 + 1) = vmovn_s16(v65).u32[0];
    BYTE5(v140) = BYTE5(v61);
    LOBYTE(v159) = v62;
    *v64.i8 = vmovn_s64(v68);
    *v68.i8 = vmovn_s64(v67);
    v68.i16[1] = v68.i16[2];
    v68.i16[2] = v64.i16[0];
    v68.i16[3] = v64.i16[2];
    *(&v159 + 1) = vmovn_s16(v68).u32[0];
    BYTE5(v159) = BYTE5(v62);
    if (v140 != v159 || WORD2(v140) != WORD2(v159))
    {
      return 0;
    }
  }

  if (a1[151])
  {
    if (!a2[151])
    {
      return 0;
    }
  }

  else if (a2[151])
  {
    return 0;
  }

  v70 = a1[152];
  v71 = a2[152];
  if (v70 == 3)
  {
    if (v71 != 3)
    {
      return 0;
    }
  }

  else
  {
    if (v71 == 3)
    {
      return 0;
    }

    v72 = 0x6E4F646572696170;
    v73 = 0xEA0000000000796CLL;
    if (a1[152])
    {
      if (v70 == 1)
      {
        v74 = 0x6972696150796E61;
        v75 = 0xEA0000000000676ELL;
      }

      else
      {
        v75 = 0xE300000000000000;
        v74 = 7105633;
      }
    }

    else
    {
      v74 = 0x6E4F646572696170;
      v75 = 0xEA0000000000796CLL;
    }

    if (a2[152])
    {
      if (v71 == 1)
      {
        v72 = 0x6972696150796E61;
        v73 = 0xEA0000000000676ELL;
      }

      else
      {
        v73 = 0xE300000000000000;
        v72 = 7105633;
      }
    }

    if (v74 == v72 && v75 == v73)
    {
    }

    else
    {
      v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v76 & 1) == 0)
      {
        return 0;
      }
    }
  }

  v77 = *(a1 + 39) | (*(a1 + 80) << 32);
  v78 = *(a2 + 39) | (*(a2 + 80) << 32);
  v79 = v78 & 0xFF00000000;
  if ((v77 & 0xFF00000000) != 0x300000000)
  {
    if (v79 == 0x300000000)
    {
      return 0;
    }

    *(a1 + 80);
    *(a2 + 80);
    if (*(a1 + 39) != *(a2 + 39) || ((0x801004u >> ((v77 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v78 >> 29) & 0xF8)) & 0xFFC))
    {
      return 0;
    }

    v81 = v77 >> 40;
    v82 = v78 >> 40;
    if (v81 <= 3)
    {
      if (v81 == 2)
      {
        if (v82 != 2)
        {
          return 0;
        }

        goto LABEL_102;
      }

      if (v81 == 3)
      {
        if (v82 != 3)
        {
          return 0;
        }

        goto LABEL_102;
      }
    }

    else
    {
      switch(v81)
      {
        case 4:
          if (v82 != 4)
          {
            return 0;
          }

          goto LABEL_102;
        case 5:
          if (v82 != 5)
          {
            return 0;
          }

          goto LABEL_102;
        case 6:
          if (v82 != 6)
          {
            return 0;
          }

          goto LABEL_102;
      }
    }

    if (v82 - 2) < 5 || ((v82 ^ v81))
    {
      return 0;
    }

    goto LABEL_102;
  }

  if (v79 != 0x300000000)
  {
    return 0;
  }

LABEL_102:
  v80 = a2[164];
  if (a1[164])
  {
    if (!a2[164])
    {
      return 0;
    }
  }

  else
  {
    if (*(a1 + 81) != *(a2 + 81))
    {
      v80 = 1;
    }

    if (v80)
    {
      return 0;
    }
  }

  v83 = a1[165];
  v84 = a2[165];
  if (v83 == 2)
  {
    if (v84 != 2)
    {
      return 0;
    }

    goto LABEL_122;
  }

  result = 0;
  if (v84 != 2 && ((v84 ^ v83) & 1) == 0)
  {
LABEL_122:
    v85 = *(a1 + 216);
    v86 = *(a1 + 248);
    v156 = *(a1 + 232);
    v157 = v86;
    v158 = *(a1 + 33);
    v87 = *(a1 + 184);
    v152 = *(a1 + 168);
    v153 = v87;
    v154 = *(a1 + 200);
    v155 = v85;
    v88 = *(a2 + 184);
    v89 = *(a2 + 200);
    v159 = *(a2 + 168);
    v160 = v88;
    v90 = *(a2 + 216);
    v91 = *(a2 + 232);
    v92 = *(a2 + 248);
    v163 = *(a2 + 33);
    *&v161[32] = v91;
    v162 = v92;
    *v161 = v89;
    *&v161[16] = v90;
    v93 = v152;
    v94 = v153;
    v95 = v154;
    v96 = v155;
    v127 = *(&v156 + 1);
    v130 = v156;
    v123 = *(&v157 + 1);
    v124 = v157;
    v120 = v158;
    if (*(&v152 + 1))
    {
      if (*(&v159 + 1))
      {
        v140 = v159;
        v97 = a2;
        v98 = *(a2 + 200);
        v99 = *(a2 + 232);
        *&v142[16] = *(a2 + 216);
        *&v142[32] = v99;
        v143 = *(a2 + 248);
        v100 = *(a2 + 33);
        v144 = v100;
        v141 = *(v97 + 184);
        *v142 = v98;
        v101 = *&v142[24];
        v102 = v99;
        v115 = v143;
        v116 = *(&v99 + 1);
        v113 = *(&v143 + 1);
        v164[0] = v152;
        v164[1] = v153;
        v164[2] = v154;
        v165 = v155;
        v166[0] = v159;
        v166[1] = v141;
        v166[2] = v98;
        v167 = *&v142[16];
        if (_s7CoreP2P10NANPairingV8MetadataV4ThisV23__derived_struct_equalsySbAG_AGtFZ_0(v164, v166) && (__PAIR128__(v130, *(&v96 + 1)) == __PAIR128__(v102, v101) || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0) && (v127 == v116 && v124 == v115 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
        {
          if (v123 == v113 && v120 == v100)
          {
            sub_100012400(&v152, &v131, &qword_1005968A0, &unk_100499050);
            sub_100012400(&v159, &v131, &qword_1005968A0, &unk_100499050);
            sub_100016290(&v140, &qword_1005968A0, &unk_100499050);
LABEL_152:
            v131 = v93;
            v132 = v94;
            v133 = v95;
            v134 = v96;
            v135 = v130;
            v136 = v127;
            v137 = v124;
            v138 = v123;
            v139 = v120;
            v106 = &v131;
            goto LABEL_153;
          }

          v107 = _stringCompareWithSmolCheck(_:_:expecting:)();
          sub_100012400(&v152, &v131, &qword_1005968A0, &unk_100499050);
          sub_100012400(&v159, &v131, &qword_1005968A0, &unk_100499050);
          sub_100016290(&v140, &qword_1005968A0, &unk_100499050);
          if (v107)
          {
            goto LABEL_152;
          }
        }

        else
        {
          sub_100012400(&v152, &v131, &qword_1005968A0, &unk_100499050);
          sub_100012400(&v159, &v131, &qword_1005968A0, &unk_100499050);
          sub_100016290(&v140, &qword_1005968A0, &unk_100499050);
        }

        v131 = v93;
        v132 = v94;
        v133 = v95;
        v134 = v96;
        v135 = v130;
        v136 = v127;
        v137 = v124;
        v138 = v123;
        v139 = v120;
        v57 = &qword_1005968A0;
        v58 = &unk_100499050;
        v59 = &v131;
        goto LABEL_63;
      }
    }

    else if (!*(&v159 + 1))
    {
      v140 = v152;
      v141 = v153;
      *v142 = v154;
      *&v142[16] = v155;
      *&v142[32] = v156;
      v143 = v157;
      v144 = v158;
      sub_100012400(&v152, &v131, &qword_1005968A0, &unk_100499050);
      sub_100012400(&v159, &v131, &qword_1005968A0, &unk_100499050);
      v106 = &v140;
LABEL_153:
      sub_100016290(v106, &qword_1005968A0, &unk_100499050);
      return 1;
    }

    v140 = v152;
    v141 = v153;
    *v142 = v154;
    *&v142[16] = v155;
    *&v142[32] = v156;
    v143 = v157;
    v144 = v158;
    v145 = v159;
    v146 = *(a2 + 184);
    v147 = *(a2 + 200);
    v103 = *(a2 + 216);
    v104 = *(a2 + 232);
    v105 = *(a2 + 248);
    v151 = *(a2 + 33);
    v150 = v105;
    v149 = v104;
    v148 = v103;
    sub_100012400(&v152, &v131, &qword_1005968A0, &unk_100499050);
    sub_100012400(&v159, &v131, &qword_1005968A0, &unk_100499050);
    v57 = &unk_1005915D8;
    v58 = &unk_100499ED0;
LABEL_62:
    v59 = &v140;
LABEL_63:
    sub_100016290(v59, v57, v58);
    return 0;
  }

  return result;
}

unint64_t _s7CoreP2P11NANDatapathO11ServiceTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100553700, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t _s7CoreP2P11NANDatapathO14ConnectionModeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1005537B8, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_10020C7F8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020C85C(uint64_t a1)
{
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10020C8BC()
{
  result = qword_1005914B0;
  if (!qword_1005914B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005914B0);
  }

  return result;
}

unint64_t sub_10020C940()
{
  result = qword_1005914C8;
  if (!qword_1005914C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005914C8);
  }

  return result;
}

unint64_t sub_10020C998()
{
  result = qword_1005914D0;
  if (!qword_1005914D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005914D0);
  }

  return result;
}

unint64_t sub_10020C9F0()
{
  result = qword_1005914D8;
  if (!qword_1005914D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005914D8);
  }

  return result;
}

unint64_t sub_10020CA48()
{
  result = qword_1005914E0;
  if (!qword_1005914E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005914E0);
  }

  return result;
}

unint64_t sub_10020CAA0()
{
  result = qword_1005914E8;
  if (!qword_1005914E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005914E8);
  }

  return result;
}

unint64_t sub_10020CAF4(uint64_t a1)
{
  result = sub_10020CB1C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10020CB1C()
{
  result = qword_100596790;
  if (!qword_100596790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100596790);
  }

  return result;
}

unint64_t sub_10020CB70()
{
  result = qword_100595BE0;
  if (!qword_100595BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100595BE0);
  }

  return result;
}

unint64_t sub_10020CBF0()
{
  result = qword_100591530;
  if (!qword_100591530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591530);
  }

  return result;
}

unint64_t sub_10020CC44()
{
  result = qword_100591538;
  if (!qword_100591538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591538);
  }

  return result;
}

unint64_t sub_10020CC9C()
{
  result = qword_100591540;
  if (!qword_100591540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591540);
  }

  return result;
}

unint64_t sub_10020CCF0(uint64_t a1)
{
  result = sub_10020CD18();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_10020CD18()
{
  result = qword_100591548;
  if (!qword_100591548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591548);
  }

  return result;
}

uint64_t sub_10020CD98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4();
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_10020CDD4()
{
  result = qword_100591590;
  if (!qword_100591590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591590);
  }

  return result;
}

unint64_t sub_10020CE28()
{
  result = qword_100591598;
  if (!qword_100591598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591598);
  }

  return result;
}

unint64_t sub_10020CE80()
{
  result = qword_1005915A0;
  if (!qword_1005915A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005915A0);
  }

  return result;
}

unint64_t sub_10020CED8()
{
  result = qword_1005915A8;
  if (!qword_1005915A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005915A8);
  }

  return result;
}

unint64_t sub_10020CF60()
{
  result = qword_1005915C0;
  if (!qword_1005915C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005915C0);
  }

  return result;
}

uint64_t sub_10020D004(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_10020D01C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_10020D06C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2;
    }
  }

  return result;
}

double sub_10020D0C8(uint64_t a1, int a2)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 8) = 0u;
    *(a1 + 24) = 0u;
    *a1 = a2 & 0x7FFFFFFF;
  }

  else if (a2)
  {
    *(a1 + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_10020D104(uint64_t a1)
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

uint64_t sub_10020D12C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_10020D188(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
}

uint64_t sub_10020D1F8(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10020D21C(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10020D240(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 272))
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

uint64_t sub_10020D288(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 264) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 272) = 1;
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

    *(result + 272) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10020D31C(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 4)
  {
    return v1 - 3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_10020D33C(uint64_t a1)
{
  v1 = *(a1 + 40);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

__n128 sub_10020D350(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_10020D394(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 64);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_10020D3DC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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
      *(result + 64) = (a2 - 1);
      return result;
    }

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANDatapath.ConfirmationConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 8))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for NANDatapath.ConfirmationConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_10020D510(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t apple80211_ht_capability.maxMCS_maxNSS.getter(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  v16 = HIBYTE(a2);
  v15 = HIDWORD(a2) >> 8;
  v14 = a2 >> 8;
  v17 = a3;
  v18 = a4;
  v4 = sub_10020DDAC(&v14, &v19);
  if (v4[2] < 0xAuLL)
  {
    goto LABEL_18;
  }

  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = v4 + 4;
LABEL_4:
  v9 = *(v8 + v7);
  if (*(v8 + v7))
  {
    v10 = __CFADD__(v5++, 1);
    if (v10)
    {
      goto LABEL_17;
    }
  }

  v11 = 0;
  ++v7;
  v12 = 8 * (v5 - 1);
  while (1)
  {
    if (v11 > 7)
    {
      goto LABEL_8;
    }

    if ((v9 >> v11))
    {
      break;
    }

LABEL_7:
    if (v11 == 7)
    {
      if (v7 == 10)
      {
        goto LABEL_15;
      }

      goto LABEL_4;
    }

LABEL_8:
    ++v12;
    v10 = __CFADD__(v11++, 1);
    if (v10)
    {
      goto LABEL_14;
    }
  }

  if (!v5)
  {
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
  }

  v6 = v12;
  if (!((v5 - 1) >> 61))
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:

  return v6;
}

uint64_t apple80211_ht_capability.bandwidth.getter(uint64_t a1)
{
  if ((a1 & 0x2000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

uint64_t apple80211_vht_capability.maxMCS_maxNSS.getter(uint64_t a1, unint64_t a2)
{
  v2 = (a2 >> 50) & 3;
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      v4 = HIWORD(a2) & 3;
      result = qword_100499F30[v4];
      v5 = qword_100499F50[v4];
    }

    else
    {
      result = 9;
    }
  }

  else if (v2)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v6 = (a2 >> 52) & 3;
  if (v6 > 1)
  {
    if (v6 != 3)
    {
      result = 9;
    }
  }

  else if (v6)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v7 = (a2 >> 54) & 3;
  if (v7 > 1)
  {
    if (v7 != 3)
    {
      result = 9;
    }
  }

  else if (v7)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v8 = HIBYTE(a2) & 3;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      result = 9;
    }
  }

  else if (v8)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v9 = (a2 >> 58) & 3;
  if (v9 > 1)
  {
    if (v9 != 3)
    {
      result = 9;
    }
  }

  else if (v9)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v10 = (a2 >> 60) & 3;
  if (v10 > 1)
  {
    if (v10 != 3)
    {
      result = 9;
    }
  }

  else if (v10)
  {
    result = 8;
  }

  else
  {
    result = 7;
  }

  v11 = a2 >> 62;
  if (a2 >> 62 > 1)
  {
    if (v11 != 3)
    {
      return 9;
    }
  }

  else if (v11)
  {
    return 8;
  }

  else
  {
    return 7;
  }

  return result;
}

uint64_t apple80211_vht_capability.bandwidth.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000) != 0)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

uint64_t apple80211_he_capability.maxMCS_maxNSS.getter()
{
  v1 = *(v0 + 28);
  v2 = (v1 >> 2) & 3;
  if (v2 > 1)
  {
    if (v2 == 3)
    {
      result = qword_100499F70[v1 & 3];
      v4 = qword_100499F50[v1 & 3];
    }

    else
    {
      result = 11;
    }
  }

  else if (v2)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v5 = (v1 >> 4) & 3;
  if (v5 > 1)
  {
    if (v5 != 3)
    {
      result = 11;
    }
  }

  else if (v5)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  if ((v1 >> 6) > 1uLL)
  {
    if (v1 >> 6 != 3)
    {
      result = 11;
    }
  }

  else if (v1 >> 6)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v6 = (v1 >> 8) & 3;
  if (v6 > 1)
  {
    if (v6 != 3)
    {
      result = 11;
    }
  }

  else if (v6)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v7 = (v1 >> 10) & 3;
  if (v7 > 1)
  {
    if (v7 != 3)
    {
      result = 11;
    }
  }

  else if (v7)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v8 = (v1 >> 12) & 3;
  if (v8 > 1)
  {
    if (v8 != 3)
    {
      result = 11;
    }
  }

  else if (v8)
  {
    result = 10;
  }

  else
  {
    result = 9;
  }

  v9 = v1 >> 14;
  if (v9 > 1)
  {
    if (v9 != 3)
    {
      return 11;
    }
  }

  else if (v9)
  {
    return 10;
  }

  else
  {
    return 9;
  }

  return result;
}

uint64_t apple80211_he_capability.bandwidth.getter()
{
  if ((*(v0 + 14) & 2) != 0)
  {
    v1 = 4;
  }

  else
  {
    v1 = 3;
  }

  if ((*(v0 + 14) & 4) != 0)
  {
    return 5;
  }

  else
  {
    return v1;
  }
}

uint64_t NANDriverCapabilities.maxNSS.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 17);
  v3 = sub_1000E5570(0, 4uLL, v2, a1);
  result = sub_1000E5570(4, 4uLL, v2, v4);
  if (result >= v3)
  {
    result = v3;
  }

  if (result < 0)
  {
    __break(1u);
    swift_unexpectedError();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  return result;
}

uint64_t apple80211_ht_capability.shortGI(for:)(unsigned __int8 a1, unint64_t a2)
{
  v2 = (HIWORD(a2) >> 5) & 1;
  if (a1 != 3)
  {
    v2 = (HIWORD(a2) >> 6) & 1;
  }

  if (a1 - 4 < 3 || a1 == 2)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

uint64_t apple80211_ht_capability.phyCapabilities.getter@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  result = apple80211_ht_capability.maxMCS_maxNSS.getter(a1, a2, a3, a4);
  if ((a1 & 0x2000000000000) != 0)
  {
    v9 = 0;
  }

  else
  {
    v9 = 3;
  }

  v10 = 53;
  *a5 = 0;
  if ((a1 & 0x2000000000000) != 0)
  {
    v10 = 54;
  }

  *(a5 + 1) = v9;
  *(a5 + 8) = v8;
  *(a5 + 16) = 0;
  *(a5 + 24) = result;
  *(a5 + 32) = 0;
  *(a5 + 33) = (a1 >> v10) & 1;
  return result;
}

uint64_t sub_10020DB20()
{
  if ((*(v0 + 6) & 2) != 0)
  {
    return 0;
  }

  else
  {
    return 3;
  }
}

double sub_10020DB40@<D0>(uint64_t a1@<X8>)
{
  apple80211_ht_capability.phyCapabilities.getter(*v1, v1[1], v1[2], v1[3], v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t sub_10020DB8C(unsigned __int8 a1)
{
  v2 = *(v1 + 6);
  v3 = (v2 >> 6) & 1;
  v4 = (v2 >> 5) & 1;
  if (a1 != 3)
  {
    v4 = v3;
  }

  if (a1 - 4 < 3 || a1 == 2)
  {
    return 0;
  }

  else
  {
    return v4;
  }
}

uint64_t apple80211_vht_capability.shortGI(for:)(char a1, uint64_t a2, __int16 a3)
{
  LOWORD(v5) = HIWORD(a2);
  HIWORD(v5) = a3;
  v3 = (v5 >> 5) & 1;
  if (a1 != 4)
  {
    v3 = 0;
  }

  if (a1 == 5)
  {
    return (v5 >> 6) & 1;
  }

  else
  {
    return v3;
  }
}

uint64_t apple80211_vht_capability.phyCapabilities.getter@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = BYTE6(a1);
  result = apple80211_vht_capability.maxMCS_maxNSS.getter(a1, a2);
  if ((v4 & 0xC) != 0)
  {
    v7 = 5;
  }

  else
  {
    v7 = 4;
  }

  *a3 = 1;
  v8 = 5;
  if ((v4 & 0xC) != 0)
  {
    v8 = 6;
  }

  *(a3 + 1) = v7;
  *(a3 + 8) = v6;
  *(a3 + 16) = 0;
  *(a3 + 24) = result;
  *(a3 + 32) = 0;
  *(a3 + 33) = (v4 >> v8) & 1;
  return result;
}

uint64_t sub_10020DC78()
{
  if ((*(v0 + 6) & 0xC) != 0)
  {
    return 5;
  }

  else
  {
    return 4;
  }
}

uint64_t sub_10020DC8C(uint64_t a1)
{
  *&varC = *(v1 + 6);
  WORD4(varC) = *(v1 + 14);
  return apple80211_vht_capability.maxMCS_maxNSS.getter(a1, *(&varC + 2));
}

double sub_10020DCB0@<D0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 4);
  v4 = *(v1 + 6);
  v5 = *(v1 + 10);
  v6 = *(v1 + 14);
  LODWORD(v9[0]) = *v1;
  WORD2(v9[0]) = v3;
  *(v9 + 6) = v4;
  *(v9 + 10) = v5;
  HIWORD(v9[0]) = v6;
  apple80211_vht_capability.phyCapabilities.getter(*&v9[0], *(&v9[0] + 1), v9);
  result = *v9;
  v8 = v9[1];
  *a1 = v9[0];
  *(a1 + 16) = v8;
  *(a1 + 32) = v10;
  return result;
}

uint64_t sub_10020DD20(char a1)
{
  v2 = *(v1 + 6);
  v3 = (v2 >> 6) & 1;
  v4 = (v2 >> 5) & 1;
  if (a1 != 4)
  {
    v4 = 0;
  }

  if (a1 == 5)
  {
    return v3;
  }

  else
  {
    return v4;
  }
}

uint64_t apple80211_he_capability.phyCapabilities.getter@<X0>(uint64_t a1@<X8>)
{
  if ((*(v1 + 14) & 2) != 0)
  {
    v3 = 4;
  }

  else
  {
    v3 = 3;
  }

  if ((*(v1 + 14) & 4) != 0)
  {
    v4 = 5;
  }

  else
  {
    v4 = v3;
  }

  result = apple80211_he_capability.maxMCS_maxNSS.getter();
  *a1 = 2;
  *(a1 + 1) = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = 0;
  *(a1 + 24) = result;
  *(a1 + 32) = 0;
  return result;
}

void *sub_10020DDAC(_BYTE *a1, _BYTE *a2)
{
  if (!a1)
  {
    return _swiftEmptyArrayStorage;
  }

  v3 = a2 - a1;
  if (a2 == a1)
  {
    return _swiftEmptyArrayStorage;
  }

  result = sub_100002728(a2 - a1, 0);
  if (a2 > a1)
  {
    if ((v3 & 0x8000000000000000) == 0)
    {
      v6 = result;
      memmove(result + 4, a1, v3);
      return v6;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t static NANActionFrame.__derived_struct_equals(_:_:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a1 != 14)
  {
    if (a3 == 14 || byte_10049A1AA[a1] != byte_10049A1AA[a3])
    {
      return 0;
    }

    return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a4);
  }

  if (a3 == 14)
  {
    return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a4);
  }

  return 0;
}

uint64_t NANActionFrame.init(customDeviceInformation:)(uint64_t a1)
{
  sub_10005DC58(&unk_100597530, &qword_100482F50);
  v2 = *(type metadata accessor for NANAttribute(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100480F40;
  sub_10020E818(a1, v5 + v4);
  swift_storeEnumTagMultiPayload();
  sub_10020E87C(a1, type metadata accessor for NANAttribute.CustomDeviceInformation);
  return 13;
}

uint64_t NANActionFrame.init(customAttributes:)(uint64_t a1)
{
  sub_10005DC58(&unk_100597530, &qword_100482F50);
  v2 = *(type metadata accessor for NANAttribute(0) - 8);
  v3 = *(v2 + 72);
  v4 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100480F40;
  v6 = sub_100033AA8(_swiftEmptyArrayStorage);
  v7 = type metadata accessor for BinaryEncoder();
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100480A90;
  *(v8 + 32) = v6;
  v19[3] = v7;
  v19[4] = sub_10020EE18(&qword_10058CFC0, type metadata accessor for BinaryEncoder);
  v19[0] = v8;

  NANAttribute.CustomDeviceInformation.CustomAttributes.encode(to:)(v19);
  sub_100002A00(v19);
  swift_beginAccess();
  v9 = *(v8 + 16);
  v10 = *(v8 + 24);
  sub_10000AB0C(v9, v10);

  v11 = v10 >> 62;
  if ((v10 >> 62) > 1)
  {
    if (v11 != 2)
    {
LABEL_8:
      v14 = v5 + v4;
      v15 = Data.subdata(in:)();
      v17 = v16;
      sub_1000124C8(v9, v10);
      *v14 = 5888;
      *(v14 + 2) = -14;
      *(v14 + 8) = v15;
      *(v14 + 16) = v17;
      swift_storeEnumTagMultiPayload();
      sub_10020E87C(a1, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      return 13;
    }

    v12 = *(v9 + 16);
    v13 = *(v9 + 24);
  }

  else
  {
    if (!v11)
    {
      goto LABEL_8;
    }

    v12 = v9;
    v13 = v9 >> 32;
  }

  if (v13 >= v12)
  {
    goto LABEL_8;
  }

  __break(1u);

  sub_100002A00(v19);
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

uint64_t sub_10020E204()
{
  if (*v0)
  {
    result = 0x7475626972747461;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_10020E23C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7475626972747461 && a2 == 0xEA00000000007365)
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

uint64_t sub_10020E320(uint64_t a1)
{
  v2 = sub_10020E8DC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10020E35C(uint64_t a1)
{
  v2 = sub_10020E8DC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t NANActionFrame.encode(to:)(void *a1, char a2, uint64_t a3)
{
  v7 = sub_10005DC58(&qword_1005915E0, &qword_100499F90);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10020E8DC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_10020E930();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
    sub_10020ED7C(&qword_1005915F8, &qword_10058D458);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

void NANActionFrame.hash(into:)(__int128 *a1, char a2, uint64_t a3)
{
  if (a2 == 14)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1uLL);
    Hasher._combine(_:)(byte_10049A1AA[a2]);
  }

  v6 = *(a3 + 16);
  Hasher._combine(_:)(v6);
  if (v6)
  {
    v7 = *(type metadata accessor for NANAttribute(0) - 8);
    v8 = a3 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v9 = *(v7 + 72);
    do
    {
      NANAttribute.hash(into:)(a1);
      v8 += v9;
      --v6;
    }

    while (v6);
  }
}

Swift::Int NANActionFrame.hashValue.getter(char a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  NANActionFrame.hash(into:)(v5, a1, a2);
  return Hasher._finalize()();
}

Swift::Int sub_10020E6D0()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  NANActionFrame.hash(into:)(v4, v2, v1);
  return Hasher._finalize()();
}

Swift::Int sub_10020E72C()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  Hasher.init(_seed:)();
  NANActionFrame.hash(into:)(v4, v2, v1);
  return Hasher._finalize()();
}

uint64_t sub_10020E778@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10020E984(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_10020E7C8(char *a1, char *a2)
{
  v2 = *a1;
  v3 = *(a1 + 1);
  v4 = *a2;
  v5 = *(a2 + 1);
  if (v2 != 14)
  {
    if (v4 == 14 || byte_10049A1AA[v2] != byte_10049A1AA[v4])
    {
      return 0;
    }

    return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v5);
  }

  if (v4 == 14)
  {
    return _s7CoreP2P21NANInformationElementV23__derived_struct_equalsySbAC_ACtFZ_0(v3, v5);
  }

  return 0;
}

uint64_t sub_10020E818(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NANAttribute.CustomDeviceInformation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020E87C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10020E8DC()
{
  result = qword_1005915E8;
  if (!qword_1005915E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005915E8);
  }

  return result;
}

unint64_t sub_10020E930()
{
  result = qword_1005915F0;
  if (!qword_1005915F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005915F0);
  }

  return result;
}

uint64_t sub_10020E984(uint64_t *a1)
{
  v2 = sub_10005DC58(&qword_100591620, &qword_10049A1A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v10[-v5];
  v7 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10020E8DC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v10[30] = 0;
  sub_10020ED28();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v8 = v10[31];
  sub_10005DC58(&qword_10058D430, &unk_1004AC7D0);
  v10[15] = 1;
  sub_10020ED7C(&qword_10058D438, &qword_10058D440);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100002A00(a1);
  return v8;
}

unint64_t sub_10020EBAC()
{
  result = qword_100591600;
  if (!qword_100591600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591600);
  }

  return result;
}

unint64_t sub_10020EC24()
{
  result = qword_100591608;
  if (!qword_100591608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591608);
  }

  return result;
}

unint64_t sub_10020EC7C()
{
  result = qword_100591610;
  if (!qword_100591610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591610);
  }

  return result;
}

unint64_t sub_10020ECD4()
{
  result = qword_100591618;
  if (!qword_100591618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591618);
  }

  return result;
}

unint64_t sub_10020ED28()
{
  result = qword_100591628;
  if (!qword_100591628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591628);
  }

  return result;
}

uint64_t sub_10020ED7C(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_10005DD04(&qword_10058D430, &unk_1004AC7D0);
    sub_10020EE18(a2, type metadata accessor for NANAttribute);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_10020EE18(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10020EE60()
{
  sub_10005DC58(&qword_100591840, &qword_10049AAA0);
  v1 = String.init<A>(describing:)();
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v5 = *v0;
  v6 = *(v0 + 2);
  v7 = *(v0 + 6);
  _print_unlocked<A, B>(_:_:)();

  v3._countAndFlagsBits = 0;
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

  return v1;
}

uint64_t sub_10020EF54()
{
  sub_10005DC58(&qword_100591838, &qword_10049AA98);
  v1 = String.init<A>(describing:)();
  WORD4(v7) = 0;
  v2._countAndFlagsBits = 32;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v5 = *v0;
  v6 = *(v0 + 2);
  *&v7 = *(v0 + 6);
  _print_unlocked<A, B>(_:_:)();

  v3._countAndFlagsBits = *(&v7 + 2);
  v3._object = 0xE000000000000000;
  String.append(_:)(v3);

  return v1;
}

uint64_t sub_10020F070(void (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  a1(0);
  sub_10005DC58(a2, a3);
  v6 = String.init<A>(describing:)();
  BYTE8(v10) = 0;
  v7._countAndFlagsBits = 32;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  *&v10 = *v3;
  _print_unlocked<A, B>(_:_:)();

  v8._countAndFlagsBits = *(&v10 + 1);
  v8._object = 0xE000000000000000;
  String.append(_:)(v8);

  return v6;
}

uint64_t NANPublish.Configuration.serviceInfo.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (qword_10058AB70 != -1)
  {
    v14 = *(v0 + 8);
    v15 = *(v0 + 16);
    swift_once();
  }

  v3 = String.lowercased()();
  v4 = String.lowercased()();
  if (v3._countAndFlagsBits == v4._countAndFlagsBits && v3._object == v4._object)
  {
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v6 & 1) == 0)
    {
      v7 = *(v0 + 24);
      goto LABEL_11;
    }
  }

  v7 = *(v0 + 24);
  NANGenericServiceProtocol.blob.getter(v7);
  if (v8 >> 60 != 15)
  {
    return 3;
  }

LABEL_11:
  v9 = *(v0 + *(type metadata accessor for NANPublish.Configuration() + 96));
  v10 = *(v0 + 77) == 2;
  v11 = 2;
  if ((v9 & v10) != 0)
  {
    v12 = 3;
  }

  else
  {
    v12 = 2;
  }

  NANGenericServiceProtocol.packetData(for:)(v12, v7);
  return v11;
}

uint64_t NANPublish.Configuration.controlFlag.getter()
{
  v1 = type metadata accessor for NANPublish.Configuration();
  if (*(*(v0 + *(v1 + 84) + 16) + 16))
  {
    v2 = 68;
  }

  else
  {
    v2 = 4;
  }

  v3 = v2 | 0x200;
  v4 = *(v0 + *(v1 + 136));
  v5 = v2 | 0x600;
  if ((v4 & 1) == 0)
  {
    v5 = v3;
  }

  if (v4 == 2)
  {
    v5 = v3;
  }

  v6 = *(v0 + 77);
  if (v6)
  {
    v7 = 3;
  }

  else
  {
    v7 = 1;
  }

  if (v6 == 2)
  {
    v8 = 0;
  }

  else
  {
    v8 = v7;
  }

  return v5 | v8;
}

uint64_t NANPublish.FurtherServiceDiscoveryFunction.apiFunction.getter(char a1)
{
  if (a1)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t NANPublish.PublishType.description.getter(char a1)
{
  if (!a1)
  {
    return 0x6963696C6F736E75;
  }

  if (a1 == 1)
  {
    return 0x65746963696C6F73;
  }

  return 0xD000000000000017;
}

uint64_t sub_10020F3FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x65746963696C6F73;
  v4 = 0xE900000000000064;
  v5 = 0x80000001004B4F10;
  if (v2 != 1)
  {
    v3 = 0xD000000000000017;
    v4 = 0x80000001004B4F10;
  }

  if (*a1)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0x6963696C6F736E75;
  }

  if (v2)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0xEB00000000646574;
  }

  v8 = 0x65746963696C6F73;
  if (*a2 == 1)
  {
    v5 = 0xE900000000000064;
  }

  else
  {
    v8 = 0xD000000000000017;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6963696C6F736E75;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xEB00000000646574;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t sub_10020F504@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P10NANPublishO11PublishTypeO8rawValueAESgSS_tcfC_0(*a1);
  *a2 = result;
  return result;
}

void sub_10020F534(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEB00000000646574;
  v4 = 0xE900000000000064;
  v5 = 0x65746963696C6F73;
  if (v2 != 1)
  {
    v5 = 0xD000000000000017;
    v4 = 0x80000001004B4F10;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6963696C6F736E75;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

Swift::Int sub_10020F5A4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F658()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10020F6F8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020F858()
{
  v1 = 0x65746963696C6F73;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000017;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6963696C6F736E75;
  }
}

uint64_t NANPublish.EventCondition.description.getter(char a1)
{
  if (a1)
  {
    return 0x65746963696C6F73;
  }

  else
  {
    return 1701736302;
  }
}

uint64_t sub_10020F9E8(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x65746963696C6F73;
  }

  else
  {
    v4 = 1701736302;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xEB00000000785464;
  }

  if (*a2)
  {
    v6 = 0x65746963696C6F73;
  }

  else
  {
    v6 = 1701736302;
  }

  if (*a2)
  {
    v7 = 0xEB00000000785464;
  }

  else
  {
    v7 = 0xE400000000000000;
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

void sub_10020FA9C(uint64_t *a1@<X8>)
{
  v2 = 1701736302;
  if (*v1)
  {
    v2 = 0x65746963696C6F73;
  }

  v3 = 0xE400000000000000;
  if (*v1)
  {
    v3 = 0xEB00000000785464;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10020FADC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020FB60()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10020FBD0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020FD00()
{
  if (*v0)
  {
    result = 0x65746963696C6F73;
  }

  else
  {
    result = 1701736302;
  }

  *v0;
  return result;
}

uint64_t NANPublish.FurtherServiceDiscoveryFunction.controlFlag.getter(char a1)
{
  if (a1)
  {
    return 3;
  }

  else
  {
    return 1;
  }
}

uint64_t NANPublish.FurtherServiceDiscoveryFunction.description.getter(char a1)
{
  if (a1)
  {
    return 7561575;
  }

  else
  {
    return 0x7055776F6C6C6F66;
  }
}

uint64_t sub_10020FD94(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 7561575;
  }

  else
  {
    v4 = 0x7055776F6C6C6F66;
  }

  if (v3)
  {
    v5 = 0xE800000000000000;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  if (*a2)
  {
    v6 = 7561575;
  }

  else
  {
    v6 = 0x7055776F6C6C6F66;
  }

  if (*a2)
  {
    v7 = 0xE300000000000000;
  }

  else
  {
    v7 = 0xE800000000000000;
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

void sub_10020FE40(uint64_t *a1@<X8>)
{
  v2 = 7561575;
  if (!*v1)
  {
    v2 = 0x7055776F6C6C6F66;
  }

  v3 = 0xE800000000000000;
  if (*v1)
  {
    v3 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_10020FE88()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10020FF04()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10020FF6C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100210094()
{
  if (*v0)
  {
    result = 7561575;
  }

  else
  {
    result = 0x7055776F6C6C6F66;
  }

  *v0;
  return result;
}

void NANPublish.InternetSharingConfiguration.hash(into:)()
{
  sub_10020C6FC(v0, &v2);
  if (v4)
  {
    sub_10020C758(&v2);
    v1 = 0;
  }

  else
  {
    v1 = v3;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(v1);
}

Swift::Int NANPublish.InternetSharingConfiguration.hashValue.getter()
{
  Hasher.init(_seed:)();
  sub_10020C6FC(v0, &v3);
  if (v5)
  {
    sub_10020C758(&v3);
    v1 = 0;
  }

  else
  {
    v1 = v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002101F4()
{
  Hasher.init(_seed:)();
  sub_10020C6FC(v0, &v3);
  if (v5)
  {
    sub_10020C758(&v3);
    v1 = 0;
  }

  else
  {
    v1 = v4;
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

unint64_t NANPublish.PairSetupMode.description.getter(char a1)
{
  if (a1)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000027;
  }
}

uint64_t NANPublish.PairSetupMode.rawValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F43726F466B7361;
  }

  else
  {
    return 0x6C7065526F747561;
  }
}

uint64_t sub_100210330(_BYTE *a1, _BYTE *a2)
{
  v2 = *a2;
  v3 = *a1 == 0;
  if (*a1)
  {
    v4 = 0x6F43726F466B7361;
  }

  else
  {
    v4 = 0x6C7065526F747561;
  }

  if (v3)
  {
    v5 = 0xE900000000000079;
  }

  else
  {
    v5 = 0xED0000746E65736ELL;
  }

  if (*a2)
  {
    v6 = 0x6F43726F466B7361;
  }

  else
  {
    v6 = 0x6C7065526F747561;
  }

  if (*a2)
  {
    v7 = 0xED0000746E65736ELL;
  }

  else
  {
    v7 = 0xE900000000000079;
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

void sub_1002103F4(uint64_t *a1@<X8>)
{
  v2 = 0x6C7065526F747561;
  if (*v1)
  {
    v2 = 0x6F43726F466B7361;
  }

  v3 = 0xE900000000000079;
  if (*v1)
  {
    v3 = 0xED0000746E65736ELL;
  }

  *a1 = v2;
  a1[1] = v3;
}

Swift::Int sub_100210454()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1002104E8()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100210568()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002105F8()
{
  if (*v0)
  {
    result = 0xD00000000000001FLL;
  }

  else
  {
    result = 0xD000000000000027;
  }

  *v0;
  return result;
}

CoreP2P::NANPublish::DatapathConfiguration __swiftcall NANPublish.DatapathConfiguration.init(serviceType:serviceSpecificInfo:securityConfiguration:connectionMode:)(CoreP2P::NANDatapath::ServiceType serviceType, CoreP2P::NANGenericServiceProtocol serviceSpecificInfo, Swift::OpaquePointer securityConfiguration, CoreP2P::NANDatapath::ConnectionMode connectionMode)
{
  v4 = (serviceType << 16) | 0x200;
  result.securityConfiguration = securityConfiguration;
  result.serviceSpecificInfo = serviceSpecificInfo;
  result.parametersType = v4;
  result.multicastType = SBYTE1(v4);
  result.serviceType = BYTE2(v4);
  result.connectionMode = connectionMode;
  return result;
}

uint64_t NANPublish.DatapathConfiguration.hash(into:)(uint64_t a1, __int16 a2, uint64_t a3, uint64_t a4)
{
  String.hash(into:)();

  if ((a2 & 0xFF00) == 0x200)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  String.hash(into:)();

  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(a1, a3);
  sub_1000E0690(a1, a4);
  String.hash(into:)();
}

Swift::Int NANPublish.DatapathConfiguration.hashValue.getter(__int16 a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  NANPublish.DatapathConfiguration.hash(into:)(v7, a1 & 0xFF01, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_1002108A4()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[24];
  Hasher.init(_seed:)();
  NANPublish.DatapathConfiguration.hash(into:)(v8, v1 | (v2 << 8), v4, v5);
  return Hasher._finalize()();
}

uint64_t sub_10021091C(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[24];
  return NANPublish.DatapathConfiguration.hash(into:)(a1, *v1 | (v1[1] << 8), *(v1 + 1), *(v1 + 2));
}

Swift::Int sub_10021093C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = *(v0 + 1);
  v5 = *(v0 + 2);
  v6 = v0[24];
  Hasher.init(_seed:)();
  NANPublish.DatapathConfiguration.hash(into:)(v8, v1 | (v2 << 8), v4, v5);
  return Hasher._finalize()();
}

uint64_t NANPublish.Configuration.serviceSpecificInfo.setter(uint64_t a1)
{
  v3 = *(v1 + 24);

  *(v1 + 24) = a1;
  ++*(v1 + 32);
  return result;
}

uint64_t sub_100210A50(uint64_t result, char a2)
{
  if ((a2 & 1) == 0)
  {
    ++*(*result + 32);
  }

  return result;
}

uint64_t NANPublish.Configuration.matchingFilterTx.getter()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 40);

  return v2;
}

uint64_t NANPublish.Configuration.matchingFilterTx.setter(char a1, uint64_t a2)
{
  v5 = *(v2 + 48);

  *(v2 + 40) = a1;
  *(v2 + 48) = a2;
  return result;
}

uint64_t NANPublish.Configuration.matchingFilterRx.getter()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 56);

  return v2;
}

uint64_t NANPublish.Configuration.matchingFilterRx.setter(char a1, uint64_t a2)
{
  v5 = *(v2 + 64);

  *(v2 + 56) = a1;
  *(v2 + 64) = a2;
  return result;
}

uint64_t NANPublish.Configuration.managementAddress.setter(uint64_t result)
{
  *(v1 + 78) = result;
  *(v1 + 80) = BYTE2(result);
  *(v1 + 81) = BYTE3(result);
  *(v1 + 82) = BYTE4(result);
  *(v1 + 83) = BYTE5(result);
  return result;
}

uint64_t NANPublish.Configuration.responderAddress.setter(uint64_t result)
{
  *(v1 + 84) = result;
  *(v1 + 86) = BYTE2(result);
  *(v1 + 87) = BYTE3(result);
  *(v1 + 88) = BYTE4(result);
  *(v1 + 89) = BYTE5(result);
  return result;
}

uint64_t NANPublish.Configuration.announcementPeriod.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for NANPublish.Configuration() + 72);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t NANPublish.Configuration.announcementPeriod.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANPublish.Configuration() + 72);
  v4 = type metadata accessor for DispatchTimeInterval();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t NANPublish.Configuration.awakeDWInterval.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 76)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.enableFastDiscovery.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.datapathConfiguration.getter()
{
  v1 = (v0 + *(type metadata accessor for NANPublish.Configuration() + 84));
  v2 = *(v1 + 1);
  v3 = *(v1 + 2);
  v4 = *v1 | (v1[1] << 8) | (v1[2] << 16);
  v5 = v1[24];

  return v4;
}

uint64_t NANPublish.Configuration.datapathConfiguration.setter(unsigned int a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = a1;
  v9 = a1 >> 8;
  v10 = HIWORD(a1);
  v11 = v4 + *(type metadata accessor for NANPublish.Configuration() + 84);
  v12 = *(v11 + 8);

  v13 = *(v11 + 16);

  *v11 = v8 & 1;
  *(v11 + 1) = v9;
  *(v11 + 2) = v10;
  *(v11 + 8) = a2;
  *(v11 + 16) = a3;
  *(v11 + 24) = a4;
  return result;
}

uint64_t NANPublish.Configuration.internetSharingConfiguration.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for NANPublish.Configuration() + 88);

  return sub_1002141BC(a1, v3);
}

uint64_t sub_1002110CC()
{
  v1 = v0;
  v2 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v18 - v5;
  v7 = (type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8);
  v8 = *(*v7 + 64);
  __chkstk_darwin();
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v13 = &v18 - v12;
  v14 = v0 + *(type metadata accessor for NANPublish.Configuration() + 92);
  P256.KeyAgreement.PrivateKey.publicKey.getter();
  v15 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v15 - 8) + 56))(v13, 0, 1, v15);
  sub_1000CB960(*(v1 + 24), v10);
  sub_1000D1274(v13, &v10[v7[8]]);
  sub_100214290(v10, v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v16 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  sub_100012400(v6, v4, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v4, 7);
  sub_100016290(v6, &qword_10058BB48, &unk_100483040);
  sub_100016290(v13, &unk_100595C40, &qword_100499070);
  result = sub_1002142F8(v10, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  ++*(v1 + 32);
  return result;
}

uint64_t NANPublish.Configuration.oweKeys.setter(uint64_t a1)
{
  v3 = type metadata accessor for NANPublish.Configuration();
  sub_10021422C(a1, v1 + *(v3 + 92));
  sub_1002110CC();
  return sub_1002142F8(a1, type metadata accessor for OWEKeys);
}

uint64_t *(*NANPublish.Configuration.oweKeys.modify(void *a1))(uint64_t *result, char a2)
{
  *a1 = v1;
  v2 = *(type metadata accessor for NANPublish.Configuration() + 92);
  return sub_10021145C;
}

uint64_t *sub_10021145C(uint64_t *result, char a2)
{
  if ((a2 & 1) == 0)
  {
    v2 = *result;
    return sub_1002110CC();
  }

  return result;
}

uint64_t NANPublish.Configuration.pairingBootstrappingMethod.setter(__int16 a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 100)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.pairingCachingSupported.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 104)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.multicastAddress.setter(uint64_t a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  v4 = v1 + *(result + 108);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  *(v4 + 6) = BYTE6(a1) & 1;
  return result;
}

uint64_t NANPublish.Configuration.allowedPairedDevicesUUIDs.getter()
{
  v1 = *(v0 + *(type metadata accessor for NANPublish.Configuration() + 112));
}

uint64_t NANPublish.Configuration.allowedPairedDevicesUUIDs.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for NANPublish.Configuration() + 112);
  v4 = *(v1 + v3);

  *(v1 + v3) = a1;
  return result;
}

uint64_t NANPublish.Configuration.multicastServiceType.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 116)) = a1 & 1;
  return result;
}

uint64_t NANPublish.Configuration.timeoutAfterSeconds.setter(uint64_t a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 120)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.pairingSetupMode.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 124)) = a1;
  return result;
}

uint64_t NANPublish.Configuration.channelInfo.setter(uint64_t a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  v4 = v1 + *(result + 128);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  return result;
}

uint64_t NANPublish.Configuration.countryCode.setter(int a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  v4 = v1 + *(result + 132);
  *v4 = a1;
  *(v4 + 2) = BYTE2(a1) & 1;
  return result;
}

uint64_t NANPublish.Configuration.gtkRequired.setter(char a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  *(v1 + *(result + 136)) = a1;
  return result;
}

unint64_t NANPublish.Configuration.multicastConfiguration.getter()
{
  v1 = (v0 + *(type metadata accessor for NANPublish.Configuration() + 140));
  v2 = *v1 | (*(v1 + 2) << 32);
  v3 = *(v1 + 6);
  v4 = *(v1 + 7) == 0;
  v5 = 0x100000000000000;
  if (v4)
  {
    v5 = 0;
  }

  return v5 | (v3 << 48) | v2;
}

uint64_t NANPublish.Configuration.multicastConfiguration.setter(uint64_t a1)
{
  result = type metadata accessor for NANPublish.Configuration();
  v4 = v1 + *(result + 140);
  *(v4 + 4) = WORD2(a1);
  *v4 = a1;
  *(v4 + 6) = BYTE6(a1) & 1;
  *(v4 + 7) = HIBYTE(a1) & 1;
  return result;
}

void NANPublish.Configuration.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for UUID();
  v82 = *(v4 - 8);
  v5 = *(v82 + 64);
  __chkstk_darwin();
  v81 = &v80 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for DispatchTimeInterval();
  v83 = *(v84 - 8);
  v7 = *(v83 + 64);
  __chkstk_darwin();
  v9 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  Hasher._combine(_:)(*v1);
  v10 = *(v1 + 8);
  v11 = *(v1 + 16);
  String.lowercased()();
  String.hash(into:)();

  _s7CoreP2P25NANGenericServiceProtocolV4hash4intoys6HasherVz_tF_0(a1, *(v1 + 24));
  Hasher._combine(_:)(*(v1 + 32));
  NANMatchingFilter.hash(into:)(a1, *(v2 + 40), *(v2 + 48));
  NANMatchingFilter.hash(into:)(a1, *(v2 + 56), *(v2 + 64));
  *(v1 + 72);
  String.hash(into:)();

  *(v1 + 73);
  *(v1 + 73);
  String.hash(into:)();

  *(v1 + 74);
  *(v1 + 74);
  String.hash(into:)();

  *(v1 + 75);
  *(v1 + 75);
  String.hash(into:)();

  Hasher._combine(_:)(*(v1 + 76));
  if (*(v1 + 77) == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v12 = *(v1 + 78);
  v13 = *(v1 + 79);
  v14 = *(v1 + 80);
  v85 = v1;
  v15 = *(v1 + 81);
  v16 = *(v1 + 82);
  v17 = *(v1 + 83);
  Hasher._combine(_:)(v12);
  Hasher._combine(_:)(v13);
  Hasher._combine(_:)(v14);
  Hasher._combine(_:)(v15);
  Hasher._combine(_:)(v16);
  Hasher._combine(_:)(v17);
  v18 = v85[85];
  v19 = v85[86];
  v20 = v85[87];
  v21 = v85[88];
  v22 = v85[89];
  Hasher._combine(_:)(v85[84]);
  Hasher._combine(_:)(v18);
  Hasher._combine(_:)(v19);
  Hasher._combine(_:)(v20);
  Hasher._combine(_:)(v21);
  v23 = v85;
  Hasher._combine(_:)(v22);
  v24 = type metadata accessor for NANPublish.Configuration();
  v25 = v83;
  v26 = v84;
  (*(v83 + 16))(v9, &v23[v24[18]], v84);
  v27 = (*(v25 + 88))(v9, v26);
  if (v27 == enum case for DispatchTimeInterval.seconds(_:))
  {
    (*(v25 + 96))(v9, v26);
    v28 = *v9;
    v29 = 1000000000;
LABEL_10:
    v30 = v28 * v29;
    v31 = (v28 * v29) >> 64 != (v28 * v29) >> 63;
    v32 = v28 <= 0;
    v33 = 0x7FFFFFFFFFFFFFFFLL;
    if (v32)
    {
      v33 = 0x8000000000000000;
    }

    if (v31)
    {
      v34 = v33;
    }

    else
    {
      v34 = v30;
    }

    goto LABEL_15;
  }

  if (v27 == enum case for DispatchTimeInterval.milliseconds(_:))
  {
    (*(v25 + 96))(v9, v26);
    v28 = *v9;
    v29 = 1000000;
    goto LABEL_10;
  }

  if (v27 == enum case for DispatchTimeInterval.microseconds(_:))
  {
    (*(v25 + 96))(v9, v26);
    v28 = *v9;
    v29 = 1000;
    goto LABEL_10;
  }

  if (v27 == enum case for DispatchTimeInterval.nanoseconds(_:))
  {
    (*(v25 + 96))(v9, v26);
    v34 = *v9;
  }

  else
  {
    if (v27 != enum case for DispatchTimeInterval.never(_:))
    {
      (*(v25 + 8))(v9, v26);
    }

    v34 = 0x7FFFFFFFFFFFFFFFLL;
  }

LABEL_15:
  Hasher._combine(_:)(v34);
  v23[v24[19]];
  v23[v24[19]];
  String.hash(into:)();

  Hasher._combine(_:)(v23[v24[20]]);
  v35 = &v23[v24[21]];
  v36 = v35[2];
  v37 = v35[24];
  NANPublish.DatapathConfiguration.hash(into:)(a1, *v35 | (v35[1] << 8), *(v35 + 1), *(v35 + 2));
  sub_100012400(&v23[v24[22]], &v91, &unk_1005974B0, &qword_1004AFCF0);
  if (v92[24] == 255)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v89 = v91;
    v90[0] = *v92;
    *(v90 + 9) = *&v92[9];
    Hasher._combine(_:)(1u);
    sub_10020C6FC(&v89, &v86);
    if (v88)
    {
      sub_10020C758(&v86);
      v38 = 0;
    }

    else
    {
      v38 = v87;
      Hasher._combine(_:)(1u);
      String.hash(into:)();
    }

    Hasher._combine(_:)(v38);
    sub_10020C758(&v89);
  }

  v39 = &v23[v24[23]];
  v40 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v42 = v41;
  Data.hash(into:)();
  sub_1000124C8(v40, v42);
  if (v23[v24[24]] == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(*&v23[v24[25]]);
  Hasher._combine(_:)(v23[v24[26]]);
  v43 = &v23[v24[27]];
  if (v43[6])
  {
    LOBYTE(v44) = 0;
  }

  else
  {
    v45 = *(v43 + 2);
    v46 = *v43;
    v47 = *v43 | (*(v43 + 2) << 32);
    v48 = v47 >> 8;
    v84 = v47 >> 16;
    v49 = v47 >> 24;
    v44 = v45 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v46);
    v23 = v85;
    Hasher._combine(_:)(v48);
    Hasher._combine(_:)(v84);
    Hasher._combine(_:)(v49);
    Hasher._combine(_:)(v45);
  }

  Hasher._combine(_:)(v44);
  v84 = v24;
  v50 = *&v23[v24[28]];
  if (v50)
  {
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(*(v50 + 16));
    v51 = *(v50 + 16);
    v52 = v81;
    if (v51)
    {
      v53 = v4;
      v54 = v82 + 16;
      v55 = *(v82 + 16);
      v56 = v50 + ((*(v82 + 80) + 32) & ~*(v82 + 80));
      v57 = *(v82 + 72);
      v58 = (v82 + 8);
      do
      {
        v59 = v54;
        v55(v52, v56, v53);
        sub_10001ACCC(&unk_10058BB00, &type metadata accessor for UUID);
        dispatch thunk of Hashable.hash(into:)();
        (*v58)(v52, v53);
        v54 = v59;
        v56 += v57;
        --v51;
      }

      while (v51);
    }
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v61 = v84;
  v60 = v85;
  if (v85[*(v84 + 116)])
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  Hasher._combine(_:)(*&v60[v61[30]]);
  if (v60[v61[31]] == 2)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  v62 = *&v60[v61[32]] | (*&v60[v61[32] + 4] << 32);
  if ((v62 & 0xFF00000000) == 0x300000000)
  {
    v63 = 0;
LABEL_41:
    Hasher._combine(_:)(v63);
    goto LABEL_56;
  }

  v64 = v62 >> 40;
  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v62);
  Hasher._combine(_:)(0x801004u >> ((v62 >> 29) & 0xF8));
  if ((v62 >> 40) <= 3)
  {
    if (v64 == 2)
    {
      v65 = 0;
      goto LABEL_55;
    }

    if (v64 == 3)
    {
      v65 = 1;
      goto LABEL_55;
    }

LABEL_66:
    Hasher._combine(_:)(2uLL);
    v63 = BYTE5(v62) & 1;
    goto LABEL_41;
  }

  if (v64 == 4)
  {
    v65 = 3;
    goto LABEL_55;
  }

  if (v64 == 5)
  {
    v65 = 4;
    goto LABEL_55;
  }

  if (v64 != 6)
  {
    goto LABEL_66;
  }

  v65 = 5;
LABEL_55:
  Hasher._combine(_:)(v65);
LABEL_56:
  v66 = &v60[v61[33]];
  if (v66[2])
  {
    LOBYTE(v67) = 0;
  }

  else
  {
    v68 = *v66;
    v67 = v68 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v68);
  }

  Hasher._combine(_:)(v67);
  v69 = v60[v61[34]];
  if (v69 == 2)
  {
    v70 = 0;
  }

  else
  {
    Hasher._combine(_:)(1u);
    v70 = v69 & 1;
  }

  Hasher._combine(_:)(v70);
  v71 = &v60[v61[35]];
  v72 = v71[7];
  if (v71[6])
  {
    LOBYTE(v73) = 0;
  }

  else
  {
    v74 = *(v71 + 2);
    v75 = *v71;
    v76 = *v71 | (*(v71 + 2) << 32);
    v77 = v76 >> 8;
    v78 = v76 >> 16;
    v79 = v76 >> 24;
    v73 = v74 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v75);
    Hasher._combine(_:)(v77);
    Hasher._combine(_:)(v78);
    Hasher._combine(_:)(v79);
    Hasher._combine(_:)(v74);
  }

  Hasher._combine(_:)(v73);
  Hasher._combine(_:)(v72);
}

Swift::Int NANPublish.Configuration.hashValue.getter()
{
  Hasher.init(_seed:)();
  NANPublish.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002128E4()
{
  Hasher.init(_seed:)();
  NANPublish.Configuration.hash(into:)(v1);
  return Hasher._finalize()();
}

__n128 NANPublish.Configuration.init(instanceID:serviceName:serviceSpecificInfo:managementAddress:responderAddress:datapathConfiguration:announcementPeriod:furtherServiceDiscoveryFunction:enableFastDiscovery:authenticationType:internetSharingConfiguration:pairingBootstrappingMethod:pairingCachingSupported:publisherType:multicastAddress:allowedPairedDevicesUUIDs:multicastServiceType:timeoutAfterSeconds:pairingSetupMode:channelInfo:countryCode:gtkRequired:multicastConfiguration:)@<Q0>(int a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unsigned int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, unsigned __int8 a11, uint64_t a12, unsigned __int8 a13, unsigned __int8 a14, unsigned __int8 a15, _OWORD *a16, unsigned __int16 a17, unsigned __int8 a18, unsigned __int8 a19, uint64_t a20, uint64_t a21, unsigned __int8 a22, uint64_t a23, unsigned __int8 a24, uint64_t a25, int a26, unsigned __int8 a27, uint64_t a28)
{
  v103 = a8;
  v95 = a6;
  v92 = a3;
  v93 = a5;
  v91 = a2;
  v90 = a1;
  v112 = a28;
  v110 = a26;
  v111 = a27;
  v109 = a25;
  v108 = a24;
  v107 = a23;
  v106 = a22;
  v104 = a20;
  v105 = a21;
  v89 = a19;
  v102 = a18;
  v99 = a16;
  v100 = a15;
  v96 = a14;
  v88 = a13;
  v94 = a12;
  v98 = a11;
  v97 = a10;
  v31 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v85 = &v70 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v34 = &v70 - v33;
  v35 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v36 = *(*(v35 - 8) + 64);
  __chkstk_darwin();
  v38 = &v70 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(*(sub_10005DC58(&unk_100595C40, &qword_100499070) - 8) + 64);
  __chkstk_darwin();
  v41 = &v70 - v40;
  v84 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v83 = *(v84 - 8);
  v42 = *(v83 + 64);
  __chkstk_darwin();
  v44 = &v70 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  P256.KeyAgreement.PrivateKey.init()();
  v114 = a4;
  v45 = 1;
  v101 = a17;
  if (!a17)
  {
    P256.KeyAgreement.PrivateKey.publicKey.getter();
    v45 = 0;
  }

  v46 = type metadata accessor for P256.KeyAgreement.PublicKey();
  (*(*(v46 - 8) + 56))(v41, v45, 1, v46);
  v87 = HIWORD(a7);
  v86 = a7 >> 8;
  v47 = v41;
  v70 = v41;
  v48 = v95;
  v82 = v95 >> 40;
  v81 = HIDWORD(v95);
  v80 = v95 >> 24;
  v79 = v95 >> 16;
  v78 = v95 >> 8;
  v71 = v44;
  v49 = v93;
  v77 = v93 >> 40;
  v76 = HIDWORD(v93);
  v75 = v93 >> 24;
  v74 = v93 >> 16;
  v73 = v93 >> 8;
  sub_1000CB960(a4, v38);
  sub_1000D1274(v47, &v38[*(v35 + 24)]);
  sub_100214290(v38, v34, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v50 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  swift_storeEnumTagMultiPayload();
  (*(*(v50 - 8) + 56))(v34, 0, 1, v50);
  v72 = a7;
  v51 = v85;
  sub_100012400(v34, v85, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v51, 7);
  sub_100016290(v34, &qword_10058BB48, &unk_100483040);
  sub_100016290(v70, &unk_100595C40, &qword_100499070);
  sub_1002142F8(v38, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v52 = v114;
  v113 = 0;
  swift_stdlib_random();
  v53 = v113;
  v54 = type metadata accessor for NANPublish.Configuration();
  (*(v83 + 32))(a9 + v54[23], v71, v84);
  *a9 = v90;
  v55 = v92;
  *(a9 + 8) = v91;
  *(a9 + 16) = v55;
  *(a9 + 24) = v52;
  *(a9 + 32) = v53;
  *(a9 + 40) = 2;
  *(a9 + 48) = _swiftEmptyArrayStorage;
  *(a9 + 56) = 3;
  *(a9 + 64) = _swiftEmptyArrayStorage;
  *(a9 + 72) = v89;
  *(a9 + 73) = 1;
  *(a9 + 77) = v88;
  *(a9 + 78) = v49;
  *(a9 + 79) = v73;
  *(a9 + 80) = v74;
  *(a9 + 81) = v75;
  *(a9 + 82) = v76;
  *(a9 + 83) = v77;
  *(a9 + 84) = v48;
  *(a9 + 85) = v78;
  *(a9 + 86) = v79;
  *(a9 + 87) = v80;
  *(a9 + 88) = v81;
  *(a9 + 89) = v82;
  v56 = v54[18];
  v57 = type metadata accessor for DispatchTimeInterval();
  (*(*(v57 - 8) + 32))(a9 + v56, v94, v57);
  *(a9 + v54[19]) = 1;
  *(a9 + v54[20]) = v96 & 1;
  v58 = a9 + v54[21];
  *v58 = v72 & 1;
  *(v58 + 1) = v86;
  *(v58 + 2) = v87;
  v59 = v97;
  *(v58 + 8) = v103;
  *(v58 + 16) = v59;
  *(v58 + 24) = v98;
  v60 = a9 + v54[22];
  v61 = v99;
  v62 = v99[1];
  *v60 = *v99;
  *(v60 + 16) = v62;
  result = *(v61 + 25);
  *(v60 + 25) = result;
  *(a9 + v54[24]) = v100 & 1;
  LOBYTE(v61) = v102;
  *(a9 + v54[25]) = v101;
  *(a9 + v54[26]) = v61 & 1;
  v64 = a9 + v54[27];
  v65 = v104;
  *(v64 + 4) = WORD2(v104);
  *v64 = v65;
  *(v64 + 6) = BYTE6(v65) & 1;
  *(a9 + v54[28]) = v105;
  *(a9 + v54[29]) = v106 & 1;
  *(a9 + v54[30]) = v107;
  *(a9 + v54[31]) = v108;
  v66 = a9 + v54[32];
  LODWORD(v65) = v109;
  *(v66 + 4) = WORD2(v109);
  *v66 = v65;
  v67 = a9 + v54[33];
  BYTE2(v61) = BYTE2(v110);
  *v67 = v110;
  *(v67 + 2) = BYTE2(v61) & 1;
  *(a9 + v54[34]) = v111;
  v68 = a9 + v54[35];
  v69 = v112;
  *(v68 + 4) = WORD2(v112);
  *v68 = v69;
  *(v68 + 6) = BYTE6(v69) & 1;
  *(v68 + 7) = HIBYTE(v69) & 1;
  return result;
}

uint64_t type metadata accessor for NANPublish.Configuration()
{
  result = qword_100591740;
  if (!qword_100591740)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t _s7CoreP2P10NANPublishO28InternetSharingConfigurationO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_10020C6FC(a1, v11);
  sub_10020C6FC(a2, v12);
  if (v11[40])
  {
    if (v14 == 1)
    {
      sub_10020C758(v12);
      sub_10020C758(v11);
      return 1;
    }

    goto LABEL_6;
  }

  sub_10020C6FC(v11, v9);
  if (v14)
  {

LABEL_6:
    sub_100016290(v11, &qword_100591850, &qword_10049AAB8);
    return 0;
  }

  v4 = v10;
  v5 = v13;
  if (v9[0] == v12[0] && v9[1] == v12[1])
  {

LABEL_11:
    v7 = v4 ^ v5 ^ 1u;
    goto LABEL_12;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v7 = 0;
  if (v6)
  {
    goto LABEL_11;
  }

LABEL_12:
  v8 = v7;
  sub_10020C758(v11);
  return v8;
}

uint64_t sub_100213270(int a1, uint64_t a2, uint64_t a3, char a4, int a5, uint64_t a6, uint64_t a7, char a8)
{
  v15 = (a1 & 1) == 0;
  if (a1)
  {
    v16 = 1735617902;
  }

  else
  {
    v16 = 7365742;
  }

  if (v15)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE400000000000000;
  }

  if (a5)
  {
    v18 = 1735617902;
  }

  else
  {
    v18 = 7365742;
  }

  if (a5)
  {
    v19 = 0xE400000000000000;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  if (v16 == v18 && v17 == v19)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  v21 = a5 & 0xFF00;
  if ((a1 & 0xFF00) == 0x200)
  {
    if (v21 != 512)
    {
      goto LABEL_62;
    }
  }

  else
  {
    if (v21 == 512)
    {
      goto LABEL_62;
    }

    if ((a1 & 0x100) != 0)
    {
      v22 = 0x614D6F54796E616DLL;
    }

    else
    {
      v22 = 0x6E614D6F54656E6FLL;
    }

    if ((a1 & 0x100) != 0)
    {
      v23 = 0xEA0000000000796ELL;
    }

    else
    {
      v23 = 0xE900000000000079;
    }

    if ((a5 & 0x100) != 0)
    {
      v24 = 0x614D6F54796E616DLL;
    }

    else
    {
      v24 = 0x6E614D6F54656E6FLL;
    }

    if ((a5 & 0x100) != 0)
    {
      v25 = 0xEA0000000000796ELL;
    }

    else
    {
      v25 = 0xE900000000000079;
    }

    if (v22 == v24 && v23 == v25)
    {
    }

    else
    {
      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v26 & 1) == 0)
      {
        goto LABEL_62;
      }
    }
  }

  if (BYTE2(a1))
  {
    if (BYTE2(a1) == 1)
    {
      v27 = 0x656D69746C616572;
    }

    else
    {
      v27 = 0x6E6574614C776F6CLL;
    }

    if (BYTE2(a1) == 1)
    {
      v28 = 0xE800000000000000;
    }

    else
    {
      v28 = 0xEA00000000007963;
    }
  }

  else
  {
    v28 = 0xE800000000000000;
    v27 = 0x6576697470616461;
  }

  v29 = 0xE800000000000000;
  v30 = 0x656D69746C616572;
  if (BYTE2(a5) != 1)
  {
    v30 = 0x6E6574614C776F6CLL;
    v29 = 0xEA00000000007963;
  }

  if (BYTE2(a5))
  {
    v31 = v30;
  }

  else
  {
    v31 = 0x6576697470616461;
  }

  if (BYTE2(a5))
  {
    v32 = v29;
  }

  else
  {
    v32 = 0xE800000000000000;
  }

  if (v27 != v31 || v28 != v32)
  {
    v33 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v33)
    {
      goto LABEL_57;
    }

LABEL_62:
    v38 = 0;
    return v38 & 1;
  }

LABEL_57:
  if ((_s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(a2, a6) & 1) == 0 || (sub_1000BEFD0(a3, a7) & 1) == 0)
  {
    goto LABEL_62;
  }

  v34 = 0x6E4F646572696170;
  v35 = 0xEA0000000000796CLL;
  if (a4)
  {
    if (a4 == 1)
    {
      v36 = 0x6972696150796E61;
      v37 = 0xEA0000000000676ELL;
    }

    else
    {
      v37 = 0xE300000000000000;
      v36 = 7105633;
    }
  }

  else
  {
    v36 = 0x6E4F646572696170;
    v37 = 0xEA0000000000796CLL;
  }

  if (a8)
  {
    if (a8 == 1)
    {
      v34 = 0x6972696150796E61;
      v35 = 0xEA0000000000676ELL;
    }

    else
    {
      v35 = 0xE300000000000000;
      v34 = 7105633;
    }
  }

  if (v36 == v34 && v37 == v35)
  {
    v38 = 1;
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v38 & 1;
}

uint64_t _s7CoreP2P10NANPublishO13ConfigurationV23__derived_struct_equalsySbAE_AEtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_123;
  }

  v4 = *(a1 + 1);
  v5 = *(a1 + 2);
  v6 = *(a2 + 1);
  v7 = *(a2 + 2);
  v8 = String.lowercased()();
  v9 = String.lowercased()();
  if (v8._countAndFlagsBits == v9._countAndFlagsBits && v8._object == v9._object)
  {
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v11 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  if ((_s7CoreP2P25NANGenericServiceProtocolV23__derived_struct_equalsySbAC_ACtFZ_0(*(a1 + 3), *(a2 + 3)) & 1) == 0)
  {
    goto LABEL_123;
  }

  if (a1[32] != a2[32])
  {
    goto LABEL_123;
  }

  v12 = *(a1 + 6);
  v13 = *(a2 + 6);
  if ((sub_1000B2BD8(a1[40], a2[40]) & 1) == 0)
  {
    goto LABEL_123;
  }

  if ((sub_1000BCCE0(v12, v13) & 1) == 0)
  {
    goto LABEL_123;
  }

  v14 = *(a1 + 8);
  v15 = *(a2 + 8);
  if ((sub_1000B2BD8(a1[56], a2[56]) & 1) == 0 || (sub_1000BCCE0(v14, v15) & 1) == 0)
  {
    goto LABEL_123;
  }

  v16 = 0xEB00000000646574;
  v17 = 0x6963696C6F736E75;
  if (a1[72])
  {
    if (a1[72] == 1)
    {
      v18 = 0x65746963696C6F73;
      v19 = 0xE900000000000064;
    }

    else
    {
      v18 = 0xD000000000000017;
      v19 = 0x80000001004B4F10;
    }
  }

  else
  {
    v18 = 0x6963696C6F736E75;
    v19 = 0xEB00000000646574;
  }

  if (a2[72])
  {
    if (a2[72] == 1)
    {
      v17 = 0x65746963696C6F73;
      v16 = 0xE900000000000064;
    }

    else
    {
      v17 = 0xD000000000000017;
      v16 = 0x80000001004B4F10;
    }
  }

  if (v18 == v17 && v19 == v16)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  v21 = a2[73];
  if (a1[73])
  {
    v22 = 0x73616369746C756DLL;
  }

  else
  {
    v22 = 0x74736163696E75;
  }

  if (a1[73])
  {
    v23 = 0xE900000000000074;
  }

  else
  {
    v23 = 0xE700000000000000;
  }

  if (a2[73])
  {
    v24 = 0x73616369746C756DLL;
  }

  else
  {
    v24 = 0x74736163696E75;
  }

  if (a2[73])
  {
    v25 = 0xE900000000000074;
  }

  else
  {
    v25 = 0xE700000000000000;
  }

  if (v22 == v24 && v23 == v25)
  {
  }

  else
  {
    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v26 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  v27 = a2[74];
  if (a1[74])
  {
    v28 = 0x65746963696C6F73;
  }

  else
  {
    v28 = 1701736302;
  }

  if (a1[74])
  {
    v29 = 0xEB00000000785464;
  }

  else
  {
    v29 = 0xE400000000000000;
  }

  if (a2[74])
  {
    v30 = 0x65746963696C6F73;
  }

  else
  {
    v30 = 1701736302;
  }

  if (a2[74])
  {
    v31 = 0xEB00000000785464;
  }

  else
  {
    v31 = 0xE400000000000000;
  }

  if (v28 == v30 && v29 == v31)
  {
  }

  else
  {
    v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v32 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  v33 = a2[75];
  if (a1[75])
  {
    v34 = 0x757145746F4E7874;
  }

  else
  {
    v34 = 0x526C617571457874;
  }

  if (a1[75])
  {
    v35 = 0xEC00000078526C61;
  }

  else
  {
    v35 = 0xE900000000000078;
  }

  if (a2[75])
  {
    v36 = 0x757145746F4E7874;
  }

  else
  {
    v36 = 0x526C617571457874;
  }

  if (a2[75])
  {
    v37 = 0xEC00000078526C61;
  }

  else
  {
    v37 = 0xE900000000000078;
  }

  if (v34 == v36 && v35 == v37)
  {
  }

  else
  {
    v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v38 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  if (a1[76] != a2[76])
  {
    goto LABEL_123;
  }

  v39 = a1[77];
  v40 = a2[77];
  if (v39 == 2)
  {
    if (v40 != 2)
    {
      goto LABEL_123;
    }
  }

  else
  {
    if (v40 == 2)
    {
      goto LABEL_123;
    }

    if (v39)
    {
      v41 = 7561575;
    }

    else
    {
      v41 = 0x7055776F6C6C6F66;
    }

    if (v39)
    {
      v42 = 0xE300000000000000;
    }

    else
    {
      v42 = 0xE800000000000000;
    }

    if (v40)
    {
      v43 = 7561575;
    }

    else
    {
      v43 = 0x7055776F6C6C6F66;
    }

    if (v40)
    {
      v44 = 0xE300000000000000;
    }

    else
    {
      v44 = 0xE800000000000000;
    }

    if (v41 == v43 && v42 == v44)
    {
    }

    else
    {
      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v45 & 1) == 0)
      {
        goto LABEL_123;
      }
    }
  }

  v46 = *(a1 + 41);
  v47 = *(a2 + 41);
  *v135 = *(a1 + 78);
  *&v135[4] = v46;
  if (*v135 != *(a2 + 78) || v46 != v47)
  {
    goto LABEL_123;
  }

  v49 = *(a1 + 44);
  v50 = *(a2 + 44);
  *v135 = *(a1 + 21);
  *&v135[4] = v49;
  if (*v135 != *(a2 + 21) || v49 != v50)
  {
    goto LABEL_123;
  }

  v52 = type metadata accessor for NANPublish.Configuration();
  v53 = v52[18];
  if ((static DispatchTimeInterval.== infix(_:_:)() & 1) == 0)
  {
    goto LABEL_123;
  }

  if ((sub_10003051C(a1[v52[19]], a2[v52[19]]) & 1) == 0)
  {
    goto LABEL_123;
  }

  if (a1[v52[20]] != a2[v52[20]])
  {
    goto LABEL_123;
  }

  v54 = v52[21];
  v55 = &a1[v54];
  v56 = a1[v54];
  v57 = a1[v54 + 1];
  v58 = a1[v54 + 2];
  v59 = *&a1[v54 + 8];
  v60 = *&a1[v54 + 16];
  v61 = &a2[v54];
  if ((sub_100213270(v56 | (v57 << 8) | (v58 << 16), v59, v60, v55[24], *v61 | (v61[1] << 8) | (v61[2] << 16), *(v61 + 1), *(v61 + 2), v61[24]) & 1) == 0)
  {
    goto LABEL_123;
  }

  v62 = v52[22];
  sub_100012400(&a1[v62], v135, &unk_1005974B0, &qword_1004AFCF0);
  sub_100012400(&a2[v62], &v137, &unk_1005974B0, &qword_1004AFCF0);
  if (v136 == 255)
  {
    if (v138[24] == 255)
    {
      sub_100016290(v135, &unk_1005974B0, &qword_1004AFCF0);
      goto LABEL_117;
    }

LABEL_122:
    sub_100016290(v135, &qword_1005915C8, &qword_100499EC0);
    goto LABEL_123;
  }

  sub_100012400(v135, v134, &unk_1005974B0, &qword_1004AFCF0);
  if (v138[24] == 255)
  {
    sub_10020C758(v134);
    goto LABEL_122;
  }

  v132 = v137;
  v133[0] = *v138;
  *(v133 + 9) = *&v138[9];
  v63 = _s7CoreP2P10NANPublishO28InternetSharingConfigurationO2eeoiySbAE_AEtFZ_0(v134, &v132);
  sub_10020C758(&v132);
  sub_10020C758(v134);
  sub_100016290(v135, &unk_1005974B0, &qword_1004AFCF0);
  if ((v63 & 1) == 0)
  {
    goto LABEL_123;
  }

LABEL_117:
  v64 = v52[23];
  v65 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v67 = v66;
  v68 = P256.KeyAgreement.PrivateKey.rawRepresentation.getter();
  v70 = v69;
  v71 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v65, v67, v68, v69);
  sub_1000124C8(v68, v70);
  sub_1000124C8(v65, v67);
  if ((v71 & 1) == 0)
  {
    goto LABEL_123;
  }

  v72 = v52[24];
  v73 = a1[v72];
  v74 = a2[v72];
  if (v73)
  {
    if (!v74)
    {
      goto LABEL_123;
    }
  }

  else if (v74)
  {
    goto LABEL_123;
  }

  if (*&a1[v52[25]] != *&a2[v52[25]] || a1[v52[26]] != a2[v52[26]])
  {
    goto LABEL_123;
  }

  v77 = v52[27];
  v78 = &a1[v77];
  v79 = a1[v77 + 6];
  v80 = &a2[v77];
  v81 = v80[6];
  if (v79)
  {
    if ((v80[6] & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  else
  {
    if (v80[6])
    {
      goto LABEL_123;
    }

    v82 = *v78 | (*(v78 + 2) << 32);
    v83 = *v80 | (*(v80 + 2) << 32);
    v84.i64[0] = 0xFFFFFFFFFFFFLL;
    v84.i64[1] = 0xFFFFFFFFFFFFLL;
    v85 = vandq_s8(vdupq_n_s64(v82), v84);
    v86 = vshlq_u64(v85, xmmword_1004817A0);
    v87 = vandq_s8(vdupq_n_s64(v83), v84);
    v88 = vshlq_u64(v87, xmmword_1004817A0);
    v89 = vshlq_u64(v87, xmmword_100481790);
    v135[0] = v82;
    *v85.i8 = vmovn_s64(vshlq_u64(v85, xmmword_100481790));
    *v86.i8 = vmovn_s64(v86);
    v86.i16[1] = v86.i16[2];
    v86.i16[2] = v85.i16[0];
    v86.i16[3] = v85.i16[2];
    *&v135[1] = vmovn_s16(v86).u32[0];
    v135[5] = BYTE5(v82);
    v134[0] = v83;
    *v85.i8 = vmovn_s64(v89);
    *v89.i8 = vmovn_s64(v88);
    v89.i16[1] = v89.i16[2];
    v89.i16[2] = v85.i16[0];
    v89.i16[3] = v85.i16[2];
    *&v134[1] = vmovn_s16(v89).u32[0];
    v134[5] = BYTE5(v83);
    if (*v135 != *v134 || *&v135[4] != *&v134[4])
    {
      goto LABEL_123;
    }
  }

  v91 = v52[28];
  v92 = *&a1[v91];
  v93 = *&a2[v91];
  if (v92)
  {
    if (!v93)
    {
      goto LABEL_123;
    }

    v94 = *&a2[v91];

    v95 = sub_1000BD0EC(v92, v93);

    if ((v95 & 1) == 0)
    {
      goto LABEL_123;
    }
  }

  else if (v93)
  {
    goto LABEL_123;
  }

  v96 = v52[29];
  v97 = a1[v96];
  v98 = a2[v96];
  if (v97)
  {
    if (!v98)
    {
      goto LABEL_123;
    }
  }

  else if (v98)
  {
    goto LABEL_123;
  }

  if (*&a1[v52[30]] != *&a2[v52[30]])
  {
    goto LABEL_123;
  }

  v99 = v52[31];
  v100 = a1[v99];
  v101 = a2[v99];
  if (v100 == 2)
  {
    if (v101 != 2)
    {
      goto LABEL_123;
    }
  }

  else
  {
    if (v101 == 2)
    {
      goto LABEL_123;
    }

    if (v100)
    {
      v102 = 0x6F43726F466B7361;
    }

    else
    {
      v102 = 0x6C7065526F747561;
    }

    if (v100)
    {
      v103 = 0xED0000746E65736ELL;
    }

    else
    {
      v103 = 0xE900000000000079;
    }

    if (v101)
    {
      v104 = 0x6F43726F466B7361;
    }

    else
    {
      v104 = 0x6C7065526F747561;
    }

    if (v101)
    {
      v105 = 0xED0000746E65736ELL;
    }

    else
    {
      v105 = 0xE900000000000079;
    }

    if (v102 == v104 && v103 == v105)
    {
    }

    else
    {
      v106 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v106 & 1) == 0)
      {
        goto LABEL_123;
      }
    }
  }

  v107 = v52[32];
  v108 = *&a1[v107] | (*&a1[v107 + 4] << 32);
  v109 = *&a2[v107] | (*&a2[v107 + 4] << 32);
  v110 = v109 & 0xFF00000000;
  if ((v108 & 0xFF00000000) != 0x300000000)
  {
    if (v110 == 0x300000000 || v108 != v109 || ((0x801004u >> ((v108 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((v109 >> 29) & 0xF8)) & 0xFFC))
    {
      goto LABEL_123;
    }

    v116 = v108 >> 40;
    v117 = v109 >> 40;
    if (v116 <= 3)
    {
      if (v116 == 2)
      {
        if (v117 != 2)
        {
          goto LABEL_123;
        }

        goto LABEL_169;
      }

      if (v116 == 3)
      {
        if (v117 != 3)
        {
          goto LABEL_123;
        }

        goto LABEL_169;
      }
    }

    else
    {
      switch(v116)
      {
        case 4:
          if (v117 != 4)
          {
            goto LABEL_123;
          }

          goto LABEL_169;
        case 5:
          if (v117 != 5)
          {
            goto LABEL_123;
          }

          goto LABEL_169;
        case 6:
          if (v117 != 6)
          {
            goto LABEL_123;
          }

          goto LABEL_169;
      }
    }

    if (v117 - 2) < 5 || ((v117 ^ v116))
    {
      goto LABEL_123;
    }

    goto LABEL_169;
  }

  if (v110 != 0x300000000)
  {
    goto LABEL_123;
  }

LABEL_169:
  v111 = v52[33];
  v112 = &a1[v111];
  v113 = a1[v111 + 2];
  v114 = &a2[v111];
  v115 = a2[v111 + 2];
  if (v113)
  {
    if (!v115)
    {
      goto LABEL_123;
    }
  }

  else
  {
    if (*v112 != *v114)
    {
      LOBYTE(v115) = 1;
    }

    if (v115)
    {
      goto LABEL_123;
    }
  }

  v118 = v52[34];
  v119 = a1[v118];
  v120 = a2[v118];
  if (v119 != 2)
  {
    v75 = 0;
    if (v120 == 2 || ((v120 ^ v119) & 1) != 0)
    {
      return v75 & 1;
    }

    goto LABEL_189;
  }

  if (v120 != 2)
  {
LABEL_123:
    v75 = 0;
    return v75 & 1;
  }

LABEL_189:
  v121 = v52[35];
  v122 = *&a1[v121] | (*&a1[v121 + 4] << 32);
  v123 = a1[v121 + 6];
  v124 = a1[v121 + 7];
  v125 = &a2[v121];
  v126 = *v125 | (*(v125 + 2) << 32);
  v127 = v125[6];
  v128 = v125[7];
  v135[0] = v123;
  if (v124)
  {
    v129 = 0x100000000000000;
  }

  else
  {
    v129 = 0;
  }

  v130 = v129 | (v123 << 48);
  v135[0] = v127;
  if (v128)
  {
    v131 = 0x100000000000000;
  }

  else
  {
    v131 = 0;
  }

  v75 = sub_10008A4E4(v130 | v122, v131 | (v127 << 48) | v126);
  return v75 & 1;
}

unint64_t _s7CoreP2P10NANPublishO11PublishTypeO8rawValueAESgSS_tcfC_0(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100553208, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1002141BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_1005974B0, &qword_1004AFCF0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10021422C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OWEKeys();
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_100214290(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002142F8(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10021435C()
{
  result = qword_100591630;
  if (!qword_100591630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591630);
  }

  return result;
}

unint64_t sub_1002143B4()
{
  result = qword_100591638;
  if (!qword_100591638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591638);
  }

  return result;
}

unint64_t sub_10021440C()
{
  result = qword_100591640;
  if (!qword_100591640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591640);
  }

  return result;
}

unint64_t sub_100214494()
{
  result = qword_100591658;
  if (!qword_100591658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591658);
  }

  return result;
}

unint64_t sub_1002144EC()
{
  result = qword_100591660;
  if (!qword_100591660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591660);
  }

  return result;
}

unint64_t sub_100214574()
{
  result = qword_100591678;
  if (!qword_100591678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591678);
  }

  return result;
}

unint64_t sub_1002145CC()
{
  result = qword_100591680;
  if (!qword_100591680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591680);
  }

  return result;
}

uint64_t sub_100214620(uint64_t a1)
{
  result = sub_10001ACCC(&qword_100591688, type metadata accessor for NANPublish.Configuration);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_100214678(uint64_t a1)
{
  *(a1 + 8) = sub_10001ACCC(&qword_1005916D0, type metadata accessor for NANPublish.Configuration);
  result = sub_10001ACCC(&qword_1005916D8, type metadata accessor for NANPublish.Configuration);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_100214794(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002147D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_10021481C(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t sub_100214864(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1002148AC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_100214928()
{
  sub_1001AF1C0(319, &qword_100591750);
  if (v0 <= 0x3F)
  {
    type metadata accessor for DispatchTimeInterval();
    if (v1 <= 0x3F)
    {
      sub_1001AF1C0(319, &qword_100591758);
      if (v2 <= 0x3F)
      {
        type metadata accessor for OWEKeys();
        if (v3 <= 0x3F)
        {
          sub_1001AF1C0(319, &qword_10058FB30);
          if (v4 <= 0x3F)
          {
            sub_1001AF1C0(319, &qword_10058E810);
            if (v5 <= 0x3F)
            {
              sub_1001B2880();
              if (v6 <= 0x3F)
              {
                sub_1001AF1C0(319, &unk_10058FB48);
                if (v7 <= 0x3F)
                {
                  sub_1001AF1C0(319, &qword_100591760);
                  if (v8 <= 0x3F)
                  {
                    sub_1001AF1C0(319, &qword_10058E808);
                    if (v9 <= 0x3F)
                    {
                      sub_1001AF1C0(319, &qword_10058E800);
                      if (v10 <= 0x3F)
                      {
                        sub_1001AF1C0(319, &unk_100591768);
                        if (v11 <= 0x3F)
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
      }
    }
  }
}

unint64_t sub_100214BE8()
{
  result = qword_100591818;
  if (!qword_100591818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591818);
  }

  return result;
}

unint64_t sub_100214C3C()
{
  result = qword_100591820;
  if (!qword_100591820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591820);
  }

  return result;
}

unint64_t sub_100214C90()
{
  result = qword_100591828;
  if (!qword_100591828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591828);
  }

  return result;
}

unint64_t sub_100214CE4()
{
  result = qword_100591830;
  if (!qword_100591830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100591830);
  }

  return result;
}

CoreP2P::Channel::Band_optional __swiftcall Channel.Band.init(rawValue:)(Swift::UInt8 rawValue)
{
  if (rawValue == 128)
  {
    v1 = 2;
  }

  else
  {
    v1 = 3;
  }

  if (rawValue == 16)
  {
    v2.value = CoreP2P_Channel_Band_fiveGHz;
  }

  else
  {
    v2.value = v1;
  }

  if (rawValue == 4)
  {
    return 0;
  }

  else
  {
    return v2;
  }
}

unint64_t NANBitmap.Channel.channel.getter(unint64_t a1, int8x8_t a2)
{
  v2 = a1 >> 16;
  v3 = HIDWORD(a1);
  if (qword_10058AAC0 != -1)
  {
    v46 = a1;
    swift_once();
    LODWORD(a1) = v46;
  }

  v4 = a1;
  v5 = off_100591878 + 17;
  v6 = *(off_100591878 + 2) + 1;
  do
  {
    if (!--v6)
    {
      return 0x300000000;
    }

    v7 = v5 + 16;
    v8 = v5[15];
    v5 += 16;
  }

  while (v8 != a1);
  v9 = *v7;
  v10 = v7[1];
  v11 = *(v7 + 7);
  if (a1 < 0x83u)
  {
    result = 0x300000000;
    if ((v2 ^ (v2 - 1)) <= (v2 - 1))
    {
      return result;
    }

    a2.i32[0] = v3;
    if (vaddlv_u8(vcnt_s8(a2)) > 1u)
    {
      return result;
    }

    v13 = __clz(__rbit32(v2 | 0x10000));
    if (*(v11 + 16) <= v13)
    {
      return result;
    }

    v14 = *(v11 + 4 * v13 + 32);
    v15 = qword_10058AAC8;
    v16 = *(v7 + 7);

    if (v15 != -1)
    {
      swift_once();
    }

    v17 = *(off_100591880 + 2);
    if (v17)
    {
      v18 = off_100591880 + 32;
      do
      {
        if (((0x801004u >> (8 * v9)) & 0xFFC) != (0x801004u >> (8 * *v18)))
        {
          goto LABEL_52;
        }

        v38 = v18[1];
        if (v38 <= 3)
        {
          if (v38 == 2)
          {
            if (v10 == 2)
            {
              goto LABEL_70;
            }

            goto LABEL_52;
          }

          if (v38 == 3)
          {
            if (v10 == 3)
            {
              goto LABEL_70;
            }

            goto LABEL_52;
          }
        }

        else
        {
          switch(v38)
          {
            case 4u:
              if (v10 == 4)
              {
                goto LABEL_70;
              }

              goto LABEL_52;
            case 5u:
              if (v10 == 5)
              {
                goto LABEL_70;
              }

              goto LABEL_52;
            case 6u:
              if (v10 == 6)
              {
                goto LABEL_70;
              }

              goto LABEL_52;
          }
        }

        if ((v10 - 2) >= 5u && ((v38 ^ v10) & 1) == 0)
        {
LABEL_70:
          v39 = *(v18 + 1);
          v40 = (v39 + 32);
          v41 = *(v39 + 16) + 1;
          while (--v41)
          {
            v42 = v40 + 4;
            v43 = *v40;
            v40 += 4;
            if (v43 == v14)
            {
              v44 = *(v42 - 1);
              v45 = __clz(__rbit32(v3 | 0x100));
              if (*(v44 + 16) <= v45)
              {
                goto LABEL_76;
              }

              v34 = v44 + 4 * v45;
              goto LABEL_75;
            }
          }

          goto LABEL_76;
        }

LABEL_52:
        v18 += 16;
        --v17;
      }

      while (v17);
    }

    v47 = v14;
LABEL_80:
    sub_1000276D8();

    return v47 | (v9 << 32) | (v10 << 40);
  }

  v19 = a1;
  result = 0x300000000;
  if ((v3 & (v3 - 1)) != 0 || (v19 & 0xFF000000) != 0x1000000)
  {
    return result;
  }

  v20 = __clz(__rbit32(v3 | 0x100));
  if (v4 == 132)
  {
    v21 = v20 == 1;
  }

  else
  {
    v21 = v7[1];
  }

  v22 = qword_10058AAC8;
  v23 = *(v7 + 7);

  if (v22 != -1)
  {
    swift_once();
  }

  v24 = BYTE2(v19);
  v25 = *(off_100591880 + 2);
  if (!v25)
  {
LABEL_47:
    v35 = *(v11 + 16);
    v36 = 32;
    do
    {
      if (!v35)
      {
        goto LABEL_76;
      }

      v37 = *(v11 + v36);
      v36 += 4;
      --v35;
    }

    while (v37 != BYTE2(v19));
LABEL_50:
    v47 = v24;
    goto LABEL_80;
  }

  v26 = off_100591880 + 32;
  while (1)
  {
    if (((0x801004u >> (8 * v9)) & 0xFFC) != (0x801004u >> (8 * *v26)))
    {
      goto LABEL_24;
    }

    v27 = v26[1];
    if (v27 <= 3)
    {
      break;
    }

    switch(v27)
    {
      case 4u:
        if (v21 == 4)
        {
          goto LABEL_42;
        }

        break;
      case 5u:
        if (v21 == 5)
        {
          goto LABEL_42;
        }

        break;
      case 6u:
        if (v21 == 6)
        {
          goto LABEL_42;
        }

        break;
      default:
        goto LABEL_40;
    }

LABEL_24:
    v26 += 16;
    if (!--v25)
    {
      goto LABEL_47;
    }
  }

  if (v27 == 2)
  {
    if (v21 == 2)
    {
      goto LABEL_42;
    }

    goto LABEL_24;
  }

  if (v27 == 3)
  {
    if (v21 == 3)
    {
      goto LABEL_42;
    }

    goto LABEL_24;
  }

LABEL_40:
  if (v21 - 2) < 5u || ((v27 ^ v21))
  {
    goto LABEL_24;
  }

LABEL_42:
  v28 = *(v26 + 1);
  v29 = (v28 + 32);
  v30 = *(v28 + 16) + 1;
  do
  {
    if (!--v30)
    {
      goto LABEL_76;
    }

    v31 = v29 + 4;
    v32 = *v29;
    v29 += 4;
  }

  while (v32 != BYTE2(v19));
  v33 = *(v31 - 1);
  if (*(v33 + 16) > v20)
  {
    v34 = v33 + 4 * v20;
LABEL_75:
    v24 = *(v34 + 32);
    goto LABEL_50;
  }

LABEL_76:

  return 0x300000000;
}