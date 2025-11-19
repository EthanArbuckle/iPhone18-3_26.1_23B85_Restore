Swift::Int sub_1000788C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void sub_100078920()
{
  v1 = *(v0 + 8);
  v2 = *v0;
  NSObject.hash(into:)();
  Hasher._combine(_:)(v1);
}

Swift::Int sub_100078964()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t sub_1000789C0(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  sub_1000840B4();
  return static NSObject.== infix(_:_:)() & ~(v3 ^ v5) & 1;
}

void sub_1000792EC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000C04A4(0, v1, 0);
    v3 = a1 + 64;
    v4 = -1 << *(a1 + 32);
    v5 = _HashTable.startBucket.getter();
    v6 = 0;
    v21 = v1;
    while ((v5 & 0x8000000000000000) == 0 && v5 < 1 << *(a1 + 32))
    {
      v8 = v5 >> 6;
      if ((*(v3 + 8 * (v5 >> 6)) & (1 << v5)) == 0)
      {
        goto LABEL_21;
      }

      v22 = *(a1 + 36);
      v9 = *(*(a1 + 56) + 16 * v5);
      v23 = [v9 publishID];
      v10 = [v9 publisherAddress];

      v12 = _swiftEmptyArrayStorage[2];
      v11 = _swiftEmptyArrayStorage[3];
      if (v12 >= v11 >> 1)
      {
        sub_1000C04A4((v11 > 1), v12 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v12 + 1;
      v13 = &_swiftEmptyArrayStorage[2 * v12];
      *(v13 + 32) = v23;
      v13[5] = v10;
      v7 = 1 << *(a1 + 32);
      if (v5 >= v7)
      {
        goto LABEL_22;
      }

      v3 = a1 + 64;
      v14 = *(a1 + 64 + 8 * v8);
      if ((v14 & (1 << v5)) == 0)
      {
        goto LABEL_23;
      }

      if (v22 != *(a1 + 36))
      {
        goto LABEL_24;
      }

      v15 = v14 & (-2 << (v5 & 0x3F));
      if (v15)
      {
        v7 = __clz(__rbit64(v15)) | v5 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v16 = v8 << 6;
        v17 = v8 + 1;
        v18 = (a1 + 72 + 8 * v8);
        while (v17 < (v7 + 63) >> 6)
        {
          v20 = *v18++;
          v19 = v20;
          v16 += 64;
          ++v17;
          if (v20)
          {
            sub_10002BEB8(v5, v22, 0);
            v7 = __clz(__rbit64(v19)) + v16;
            goto LABEL_4;
          }
        }

        sub_10002BEB8(v5, v22, 0);
      }

LABEL_4:
      ++v6;
      v5 = v7;
      if (v6 == v21)
      {
        return;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
  }
}

void sub_10007A1F8()
{
  v1 = *(v0 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
  if (v1)
  {
    v2 = *(v0 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_delegate);
    swift_unknownObjectRetain();
    isa = Data._bridgeToObjectiveC()().super.isa;
    v4 = Data._bridgeToObjectiveC()().super.isa;
    [v1 handleEventType:0 keyData:isa valueData:v4];

    swift_unknownObjectRelease();
  }
}

void sub_10007ABCC(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = a3;
  v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  sub_1000124C8(v3, v4);
}

id sub_10007AC80(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t sub_10007B228()
{
  v1 = *(*(sub_10005DC58(&unk_10058B750, &unk_100480AB0) - 8) + 64);
  __chkstk_darwin();
  v3 = v22 - v2;
  v4 = type metadata accessor for DNSRecords.SRV();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_srv;
  swift_beginAccess();
  sub_100012400(v0 + v9, v3, &unk_10058B750, &unk_100480AB0);
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    return sub_100016290(v3, &unk_10058B750, &unk_100480AB0);
  }

  sub_100038F84(v3, v8, type metadata accessor for DNSRecords.SRV);
  v11 = *(v0 + OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB15BonjourResolver_delegate);
  if (v11)
  {
    v12 = *(v8 + 1);
    v22[2] = *v8;
    v22[3] = v12;
    v23 = *(v8 + 16);
    swift_unknownObjectRetain();
    v13 = sub_100171BB4(32);
    v15 = v14;
    v16.super.isa = Data._bridgeToObjectiveC()().super.isa;
    sub_1000124C8(v13, v15);
    v17 = DNSRecords.SRV.valueData.getter();
    if (v18 >> 60 == 15)
    {
      isa = 0;
    }

    else
    {
      v20 = v17;
      v21 = v18;
      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_100017554(v20, v21);
    }

    [v11 handleEventType:0 keyData:v16.super.isa valueData:isa];
    swift_unknownObjectRelease();
  }

  return sub_100083834(v8);
}

unint64_t sub_10007CCC8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = static Hasher._hash(seed:bytes:count:)();

  return sub_10002D0E4(a1, v4);
}

unint64_t sub_10007CD10(char a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xDD06050403020100 >> (8 * a1));
  v4 = Hasher._finalize()();

  return sub_10007D680(a1, v4);
}

unint64_t sub_10007CD94(unint64_t a1)
{
  v3 = a1 >> 8;
  v4 = a1 >> 16;
  v5 = a1 >> 24;
  v6 = HIDWORD(a1);
  v7 = a1 >> 40;
  v8 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(BYTE6(a1));
  v9 = Hasher._finalize()();

  return sub_10007D718(a1 & 0xFFFFFFFFFFFFFFLL, v9);
}

unint64_t sub_10007CE78(uint64_t *a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  v4 = *a1;
  v5 = a1[1];
  String.lowercased()();
  String.hash(into:)();

  v6 = a1[2];
  v7 = a1[3];
  v11 = *(a1 + 32);
  v8 = *(a1 + 33);
  String.lowercased()();
  String.hash(into:)();

  String.hash(into:)();

  Hasher._combine(_:)(v8);
  v9 = Hasher._finalize()();

  return sub_10007D82C(a1, v9);
}

unint64_t sub_10007CF70(uint64_t a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  type metadata accessor for CodingUserInfoKey();
  v5 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return sub_10007DA14(a1, v5);
}

unint64_t sub_10007CFD0(uint64_t a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for CFString(0);
  sub_100085198(&qword_10058BAE8, type metadata accessor for CFString);
  _CFObject.hash(into:)();
  v4 = Hasher._finalize()();

  return sub_10007DBAC(a1, v4);
}

unint64_t sub_10007D084(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10007DCB8(a1, v4);
}

unint64_t sub_10007D1A4(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.lowercased()();
  String.hash(into:)();

  v6 = Hasher._finalize()();

  return sub_10007DECC(a1, a2, v6);
}

unint64_t sub_10007D238(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_10007DFE4(a1 & 1, v5);
}

unint64_t sub_10007D2F8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  v4 = sub_100237A68();

  return sub_10007E148(a1, v4);
}

unint64_t sub_10007D33C(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v4 = Hasher._finalize()();

  return sub_10007E3C8(a1, v4);
}

unint64_t sub_10007D40C(char a1)
{
  v2 = v1;
  v4 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  v5 = Hasher._finalize()();

  return sub_10007E568(a1 & 1, v5);
}

uint64_t sub_10007D4B0(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t, Swift::Int))
{
  v6 = *(v3 + 40);
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v7 = Hasher._finalize()();

  return a3(a1, v7);
}

unint64_t sub_10007D54C(uint64_t a1, void (*a2)(uint64_t), uint64_t (*a3)(uint64_t))
{
  v7 = *(v3 + 40);
  Hasher.init(_seed:)();
  a2(a1);
  String.hash(into:)();

  v8 = Hasher._finalize()();
  return sub_10007EE78(a1, v8, a3);
}

unint64_t sub_10007D5E8(unsigned __int8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  sub_1001871FC();
  v4 = Hasher._finalize()();

  return sub_10007EF90(a1, v4);
}

unint64_t sub_10007D680(char a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    v7 = (0xDD06050403020100 >> (8 * a1));
    do
    {
      if ((0xDD06050403020100 >> (8 * *(*(v2 + 48) + result))) == v7)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10007D718(unint64_t a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = a1;
    v7 = ~v4;
    v8 = HIWORD(a1);
    v9 = a1 >> 40;
    v10 = HIDWORD(a1);
    v11 = a1 >> 24;
    v12 = a1 >> 16;
    v13 = a1 >> 8;
    do
    {
      v14 = (*(v2 + 48) - result + 8 * result);
      if (*v14 == v6)
      {
        v18 = *(v14 + 5);
        LOBYTE(v16) = v13;
        BYTE1(v16) = v12;
        BYTE2(v16) = v11;
        HIBYTE(v16) = v10;
        LOBYTE(v17) = v9;
        HIBYTE(v17) = v8;
        if (*(v14 + 1) == v16 && *(v14 + 5) == v17)
        {
          break;
        }
      }

      result = (result + 1) & v7;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

unint64_t sub_10007D82C(__int128 *a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v16 = *(a1 + 33);
    sub_10005E2E4();
    do
    {
      v6 = *(v19 + 48) + 40 * v4;
      v7 = *(v6 + 16);
      v8 = *(v6 + 24);
      v9 = *(v6 + 32);
      v10 = *(v6 + 33);
      v22 = *v6;
      v23 = *(v6 + 8);
      v20 = *a1;

      if (StringProtocol.caseInsensitiveCompare<A>(_:)() || (v21 = a1[1], v11 = *(a1 + 32), StringProtocol.caseInsensitiveCompare<A>(_:)()))
      {
      }

      else
      {
        if (v9)
        {
          v12 = 7365749;
        }

        else
        {
          v12 = 7365492;
        }

        if (v11)
        {
          v13 = 7365749;
        }

        else
        {
          v13 = 7365492;
        }

        if (v12 == v13)
        {

          swift_bridgeObjectRelease_n();
        }

        else
        {
          v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

          swift_bridgeObjectRelease_n();
          if ((v14 & 1) == 0)
          {
            goto LABEL_4;
          }
        }

        if (v10 == v16)
        {
          return v4;
        }
      }

LABEL_4:
      v4 = (v4 + 1) & v17;
    }

    while (((*(v18 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10007DA14(uint64_t a1, uint64_t a2)
{
  v22 = a1;
  v4 = type metadata accessor for CodingUserInfoKey();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin();
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v2;
  v9 = -1 << *(v2 + 32);
  v10 = a2 & ~v9;
  v21 = v2 + 64;
  if ((*(v2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v14 = *(v6 + 16);
    v12 = v6 + 16;
    v13 = v14;
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    do
    {
      v17 = v12;
      v13(v8, *(v23 + 48) + v15 * v10, v4);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v16)(v8, v4);
      if (v18)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      v12 = v17;
    }

    while (((*(v21 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  return v10;
}

unint64_t sub_10007DBAC(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFString(0);
    sub_100085198(&qword_10058BAE8, type metadata accessor for CFString);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_10007DCB8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v17 = ~v3;
    v5 = 0xEA00000000007963;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 1)
      {
        if (*(*(v2 + 48) + v4))
        {
          v8 = 1818523489;
        }

        else
        {
          v8 = 0x7274736172666E69;
        }

        if (*(*(v2 + 48) + v4))
        {
          v9 = 0xE400000000000000;
        }

        else
        {
          v9 = 0xEE00657275746375;
        }
      }

      else if (v7 == 2)
      {
        v8 = 0x67616E614D6E616ELL;
        v9 = 0xED0000746E656D65;
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x617461446E616ELL;
        }

        else
        {
          v8 = 0x6E6574614C776F6CLL;
        }

        if (v7 == 3)
        {
          v9 = 0xE700000000000000;
        }

        else
        {
          v9 = 0xEA00000000007963;
        }
      }

      if (v6 == 3)
      {
        v10 = 0x617461446E616ELL;
      }

      else
      {
        v10 = 0x6E6574614C776F6CLL;
      }

      if (v6 == 3)
      {
        v5 = 0xE700000000000000;
      }

      if (v6 == 2)
      {
        v10 = 0x67616E614D6E616ELL;
        v5 = 0xED0000746E656D65;
      }

      v11 = v6 ? 1818523489 : 0x7274736172666E69;
      v12 = v6 ? 0xE400000000000000 : 0xEE00657275746375;
      v13 = v6 <= 1 ? v11 : v10;
      v14 = v6 <= 1 ? v12 : v5;
      if (v8 == v13 && v9 == v14)
      {
        break;
      }

      v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v15 & 1) == 0)
      {
        v4 = (v4 + 1) & v17;
        v5 = 0xEA00000000007963;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10007DECC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v6 = ~v4;
    while (1)
    {
      v7 = (*(v3 + 48) + 16 * v5);
      v8 = *v7;
      v9 = v7[1];
      v10 = String.lowercased()();
      v11 = String.lowercased()();
      if (v10._countAndFlagsBits == v11._countAndFlagsBits && v10._object == v11._object)
      {
        break;
      }

      v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v13 & 1) == 0)
      {
        v5 = (v5 + 1) & v6;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_10007DFE4(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x64657463656A6572;
    }

    else
    {
      v6 = 0x6553657669746361;
    }

    if (a1)
    {
      v7 = 0xEF65636976726553;
    }

    else
    {
      v7 = 0xED00006563697672;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x64657463656A6572 : 0x6553657669746361;
      v9 = *(*(v2 + 48) + v4) ? 0xEF65636976726553 : 0xED00006563697672;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10007E148(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    v6 = a1;
    while (1)
    {
      v7 = *(*(v2 + 48) + v4);
      if (v7 <= 2)
      {
        if (*(*(v2 + 48) + v4))
        {
          if (v7 == 1)
          {
            v8 = 0x6172666E49796DLL;
          }

          else
          {
            v8 = 0x72666E4972656570;
          }

          if (v7 == 1)
          {
            v9 = 0xE700000000000000;
          }

          else
          {
            v9 = 0xE900000000000061;
          }
        }

        else
        {
          v9 = 0xE700000000000000;
          v8 = 0x65636976726573;
        }
      }

      else if (*(*(v2 + 48) + v4) > 4u)
      {
        if (v7 == 5)
        {
          v8 = 0xD000000000000011;
          v9 = 0x80000001004B5FF0;
        }

        else
        {
          v9 = 0xE800000000000000;
          v8 = 0x44495353656D6173;
        }
      }

      else
      {
        if (v7 == 3)
        {
          v8 = 0x424453796DLL;
        }

        else
        {
          v8 = 0x42445372656570;
        }

        if (v7 == 3)
        {
          v9 = 0xE500000000000000;
        }

        else
        {
          v9 = 0xE700000000000000;
        }
      }

      v10 = 0xD000000000000011;
      if (v6 != 5)
      {
        v10 = 0x44495353656D6173;
      }

      v11 = 0xE800000000000000;
      if (v6 == 5)
      {
        v11 = 0x80000001004B5FF0;
      }

      v12 = 0x42445372656570;
      if (v6 == 3)
      {
        v12 = 0x424453796DLL;
      }

      v13 = 0xE500000000000000;
      if (v6 != 3)
      {
        v13 = 0xE700000000000000;
      }

      if (v6 <= 4)
      {
        v10 = v12;
        v11 = v13;
      }

      v14 = 0x72666E4972656570;
      if (v6 == 1)
      {
        v14 = 0x6172666E49796DLL;
      }

      v15 = 0xE900000000000061;
      if (v6 == 1)
      {
        v15 = 0xE700000000000000;
      }

      if (!v6)
      {
        v14 = 0x65636976726573;
        v15 = 0xE700000000000000;
      }

      v16 = v6 <= 2 ? v14 : v10;
      v17 = v6 <= 2 ? v15 : v11;
      if (v8 == v16 && v9 == v17)
      {
        break;
      }

      v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v18 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10007E3C8(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      if (*(*(v2 + 48) + v4))
      {
        if (*(*(v2 + 48) + v4) == 1)
        {
          v7 = 0x616974696E497369;
          v8 = 0xEB00000000726F74;
          v9 = a1;
          if (!a1)
          {
            goto LABEL_17;
          }
        }

        else
        {
          v8 = 0xE800000000000000;
          v7 = 0x6E6F697461727564;
          v9 = a1;
          if (!a1)
          {
LABEL_17:
            v11 = 0xE700000000000000;
            if (v7 != 0x65636976726573)
            {
              goto LABEL_19;
            }

            goto LABEL_18;
          }
        }
      }

      else
      {
        v8 = 0xE700000000000000;
        v7 = 0x65636976726573;
        v9 = a1;
        if (!a1)
        {
          goto LABEL_17;
        }
      }

      if (v9 == 1)
      {
        v10 = 0x616974696E497369;
      }

      else
      {
        v10 = 0x6E6F697461727564;
      }

      if (v9 == 1)
      {
        v11 = 0xEB00000000726F74;
      }

      else
      {
        v11 = 0xE800000000000000;
      }

      if (v7 != v10)
      {
        goto LABEL_19;
      }

LABEL_18:
      if (v8 == v11)
      {

        return v4;
      }

LABEL_19:
      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10007E568(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    if (a1)
    {
      v6 = 0x6E6F73616572;
    }

    else
    {
      v6 = 0x65636976726573;
    }

    if (a1)
    {
      v7 = 0xE600000000000000;
    }

    else
    {
      v7 = 0xE700000000000000;
    }

    while (1)
    {
      v8 = *(*(v2 + 48) + v4) ? 0x6E6F73616572 : 0x65636976726573;
      v9 = *(*(v2 + 48) + v4) ? 0xE600000000000000 : 0xE700000000000000;
      if (v8 == v6 && v9 == v7)
      {
        break;
      }

      v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v11 & 1) == 0)
      {
        v4 = (v4 + 1) & v5;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

unint64_t sub_10007E6AC(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0x73657479427874;
      v8 = 0xE700000000000000;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v7 = 0x73657479427872;
          break;
        case 2:
          v7 = 0x7275446C61746F74;
          v8 = 0xED00006E6F697461;
          break;
        case 3:
          v7 = 0xD000000000000012;
          v8 = 0x80000001004B5790;
          break;
        case 4:
          v7 = 0xD000000000000012;
          v8 = 0x80000001004B57B0;
          break;
        case 5:
          v7 = 0xD000000000000011;
          v8 = 0x80000001004B57D0;
          break;
        case 6:
          v7 = 0x6565506C61746F74;
          v8 = 0xEE00746E756F4372;
          break;
        case 7:
          v7 = 0xD000000000000011;
          v8 = 0x80000001004B53D0;
          break;
        case 8:
          v7 = 0xD00000000000001DLL;
          v8 = 0x80000001004B5800;
          break;
        case 9:
          v7 = 0xD000000000000018;
          v8 = 0x80000001004B5820;
          break;
        case 0xA:
          v7 = 0x6C62616E45667370;
          v8 = 0xEF746E756F436465;
          break;
        case 0xB:
          v7 = 0x737265566C647761;
          v8 = 0xEB000000006E6F69;
          break;
        case 0xC:
          v7 = 0xD000000000000016;
          v8 = 0x80000001004B5400;
          break;
        case 0xD:
          v7 = 0xD000000000000010;
          v8 = 0x80000001004B5440;
          break;
        case 0xE:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5850;
          break;
        case 0xF:
          v7 = 0xD000000000000010;
          v8 = 0x80000001004B54A0;
          break;
        case 0x10:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5870;
          break;
        case 0x11:
          v7 = 0x6C507265646E6573;
          v8 = 0xEE006D726F667461;
          break;
        case 0x12:
          v7 = 0x676E697472617473;
          v8 = 0xEC00000049535352;
          break;
        case 0x13:
          v7 = 0x4D6F727465526E69;
          v8 = 0xEB0000000065646FLL;
          break;
        case 0x14:
          v7 = 0x7366446F54617363;
          v8 = 0xEF6C656E6E616843;
          break;
        case 0x15:
          v7 = 0xD000000000000011;
          v8 = 0x80000001004B58C0;
          break;
        case 0x16:
          v7 = 0x79786F7250736664;
          v8 = 0xEC00000065646F4DLL;
          break;
        case 0x17:
          v9 = 1718379891;
          goto LABEL_30;
        case 0x18:
          v9 = 1919247728;
LABEL_30:
          v7 = v9 | 0x4453734900000000;
          v8 = 0xE900000000000042;
          break;
        case 0x19:
          v7 = 0xD000000000000013;
          v8 = 0x80000001004B5900;
          break;
        case 0x1A:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5920;
          break;
        case 0x1B:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5940;
          break;
        case 0x1C:
          v7 = 0xD000000000000017;
          v8 = 0x80000001004B5620;
          break;
        case 0x1D:
          v7 = 0xD000000000000015;
          v8 = 0x80000001004B5960;
          break;
        default:
          break;
      }

      v10 = 0x73657479427874;
      v11 = 0xE700000000000000;
      switch(a1)
      {
        case 1:
          if (v7 == 0x73657479427872)
          {
            goto LABEL_91;
          }

          goto LABEL_92;
        case 2:
          v11 = 0xED00006E6F697461;
          if (v7 != 0x7275446C61746F74)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 3:
          v11 = 0x80000001004B5790;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 4:
          v11 = 0x80000001004B57B0;
          if (v7 != 0xD000000000000012)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 5:
          v11 = 0x80000001004B57D0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 6:
          v15 = 0x6565506C61746F74;
          v16 = 0x746E756F4372;
          goto LABEL_71;
        case 7:
          v11 = 0x80000001004B53D0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 8:
          v11 = 0x80000001004B5800;
          if (v7 != 0xD00000000000001DLL)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 9:
          v11 = 0x80000001004B5820;
          if (v7 != 0xD000000000000018)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 10:
          v11 = 0xEF746E756F436465;
          if (v7 != 0x6C62616E45667370)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 11:
          v12 = 0x737265566C647761;
          v13 = 7237481;
          goto LABEL_82;
        case 12:
          v11 = 0x80000001004B5400;
          if (v7 != 0xD000000000000016)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 13:
          v11 = 0x80000001004B5440;
          if (v7 != 0xD000000000000010)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 14:
          v11 = 0x80000001004B5850;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 15:
          v11 = 0x80000001004B54A0;
          if (v7 != 0xD000000000000010)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 16:
          v11 = 0x80000001004B5870;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 17:
          v15 = 0x6C507265646E6573;
          v16 = 0x6D726F667461;
LABEL_71:
          v11 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
          if (v7 != v15)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 18:
          v17 = 0x676E697472617473;
          v18 = 1230197586;
          goto LABEL_79;
        case 19:
          v12 = 0x4D6F727465526E69;
          v13 = 6644847;
LABEL_82:
          v11 = v13 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
          if (v7 != v12)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 20:
          v11 = 0xEF6C656E6E616843;
          if (v7 != 0x7366446F54617363)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 21:
          v11 = 0x80000001004B58C0;
          if (v7 != 0xD000000000000011)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 22:
          v17 = 0x79786F7250736664;
          v18 = 1701080909;
LABEL_79:
          v11 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
          if (v7 != v17)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 23:
          v14 = 1718379891;
          goto LABEL_85;
        case 24:
          v14 = 1919247728;
LABEL_85:
          v11 = 0xE900000000000042;
          if (v7 != (v14 | 0x4453734900000000))
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 25:
          v11 = 0x80000001004B5900;
          if (v7 != 0xD000000000000013)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 26:
          v11 = 0x80000001004B5920;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 27:
          v11 = 0x80000001004B5940;
          if (v7 != 0xD000000000000015)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 28:
          v11 = 0x80000001004B5620;
          if (v7 != 0xD000000000000017)
          {
            goto LABEL_92;
          }

          goto LABEL_91;
        case 29:
          v10 = 0xD000000000000015;
          v11 = 0x80000001004B5960;
          goto LABEL_90;
        default:
LABEL_90:
          if (v7 != v10)
          {
            goto LABEL_92;
          }

LABEL_91:
          if (v8 == v11)
          {

            return v4;
          }

LABEL_92:
          v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v19)
          {
            return v4;
          }

          v4 = (v4 + 1) & v6;
          if (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
          {
            return v4;
          }

          break;
      }
    }
  }

  return v4;
}

unint64_t sub_10007EE78(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v4 = -1 << *(v3 + 32);
  v5 = a2 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    while (1)
    {
      v9 = a3(*(*(v3 + 48) + v5));
      v11 = v10;
      if (v9 == a3(a1) && v11 == v12)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v5 = (v5 + 1) & v8;
        if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
        {
          continue;
        }
      }

      return v5;
    }
  }

  return v5;
}

unint64_t sub_10007EF90(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  v25 = v2 + 64;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v24 = ~v3;
    v26 = a1;
    while (1)
    {
      v5 = *(*(v27 + 48) + v4);
      v28 = v4;
      if (v5 <= 3)
      {
        if (v5 == 2)
        {
          v8 = 0x6269726373627573;
        }

        else
        {
          v8 = 0xD000000000000016;
        }

        if (v5 == 2)
        {
          v9 = 0xEE00746E756F4365;
        }

        else
        {
          v9 = 0x80000001004B7050;
        }

        if (*(*(v27 + 48) + v4))
        {
          v10 = 0x436873696C627570;
        }

        else
        {
          v10 = 0x664F7265626D756ELL;
        }

        if (v5)
        {
          v11 = 0xEC000000746E756FLL;
        }

        else
        {
          v11 = 0xEC00000073707041;
        }

        if (v5 <= 1)
        {
          v6 = v10;
        }

        else
        {
          v6 = v8;
        }

        if (v5 <= 1)
        {
          v7 = v11;
        }

        else
        {
          v7 = v9;
        }
      }

      else if (*(*(v27 + 48) + v4) <= 5u)
      {
        if (v5 == 4)
        {
          v6 = 0xD000000000000016;
        }

        else
        {
          v6 = 0xD000000000000011;
        }

        if (v5 == 4)
        {
          v7 = 0x80000001004B7070;
        }

        else
        {
          v7 = 0x80000001004B7090;
        }
      }

      else if (v5 == 6)
      {
        v6 = 0xD000000000000013;
        v7 = 0x80000001004B70B0;
      }

      else
      {
        v6 = 0xD00000000000001BLL;
        if (v5 == 7)
        {
          v7 = 0x80000001004B70D0;
        }

        else
        {
          v7 = 0x80000001004B70F0;
        }
      }

      v12 = 0xD00000000000001BLL;
      v13 = 0x80000001004B70F0;
      if (v26 == 7)
      {
        v13 = 0x80000001004B70D0;
      }

      if (v26 == 6)
      {
        v12 = 0xD000000000000013;
        v13 = 0x80000001004B70B0;
      }

      v14 = 0xD000000000000011;
      if (v26 == 4)
      {
        v14 = 0xD000000000000016;
      }

      v15 = 0x80000001004B7090;
      if (v26 == 4)
      {
        v15 = 0x80000001004B7070;
      }

      if (v26 <= 5)
      {
        v12 = v14;
        v13 = v15;
      }

      if (v26 == 2)
      {
        v16 = 0x6269726373627573;
      }

      else
      {
        v16 = 0xD000000000000016;
      }

      if (v26 == 2)
      {
        v17 = 0xEE00746E756F4365;
      }

      else
      {
        v17 = 0x80000001004B7050;
      }

      if (v26)
      {
        v18 = 0x436873696C627570;
      }

      else
      {
        v18 = 0x664F7265626D756ELL;
      }

      if (v26)
      {
        v19 = 0xEC000000746E756FLL;
      }

      else
      {
        v19 = 0xEC00000073707041;
      }

      if (v26 <= 1)
      {
        v16 = v18;
        v17 = v19;
      }

      v20 = v26 <= 3 ? v16 : v12;
      v21 = v26 <= 3 ? v17 : v13;
      if (v6 == v20 && v7 == v21)
      {
        break;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        return v28;
      }

      v4 = (v28 + 1) & v24;
      if (((*(v25 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) == 0)
      {
        return v4;
      }
    }

    return v28;
  }

  return v4;
}

unint64_t sub_10007F274(unsigned __int8 a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v21 = ~v3;
    v5 = a1;
    while (1)
    {
      v6 = *(*(v23 + 48) + v4);
      if (v6 > 5)
      {
        if (*(*(v23 + 48) + v4) > 8u)
        {
          if (v6 == 9)
          {
            v7 = 0xD00000000000001BLL;
            v8 = 0x80000001004B7130;
          }

          else
          {
            v7 = 0xD000000000000023;
            if (v6 == 10)
            {
              v8 = 0x80000001004B7150;
            }

            else
            {
              v8 = 0x80000001004B7180;
            }
          }
        }

        else if (v6 == 6)
        {
          v7 = 0xD00000000000001BLL;
          v8 = 0x80000001004B70D0;
        }

        else if (v6 == 7)
        {
          v7 = 0xD00000000000001BLL;
          v8 = 0x80000001004B70F0;
        }

        else
        {
          v7 = 0xD000000000000019;
          v8 = 0x80000001004B7110;
        }
      }

      else if (*(*(v23 + 48) + v4) > 2u)
      {
        if (v6 == 3)
        {
          v7 = 0xD000000000000016;
          v8 = 0x80000001004B7070;
        }

        else if (v6 == 4)
        {
          v7 = 0xD000000000000011;
          v8 = 0x80000001004B7090;
        }

        else
        {
          v7 = 0xD000000000000013;
          v8 = 0x80000001004B70B0;
        }
      }

      else if (*(*(v23 + 48) + v4))
      {
        if (v6 == 1)
        {
          v7 = 0x6269726373627573;
        }

        else
        {
          v7 = 0xD000000000000016;
        }

        if (v6 == 1)
        {
          v8 = 0xEE00746E756F4365;
        }

        else
        {
          v8 = 0x80000001004B7050;
        }
      }

      else
      {
        v7 = 0x436873696C627570;
        v8 = 0xEC000000746E756FLL;
      }

      v9 = 0xD000000000000023;
      v10 = 0x80000001004B7180;
      if (v5 == 10)
      {
        v10 = 0x80000001004B7150;
      }

      if (v5 == 9)
      {
        v9 = 0xD00000000000001BLL;
      }

      v11 = 0x80000001004B7110;
      if (v5 == 9)
      {
        v10 = 0x80000001004B7130;
      }

      v12 = 0xD000000000000019;
      if (v5 == 7)
      {
        v12 = 0xD00000000000001BLL;
        v11 = 0x80000001004B70F0;
      }

      if (v5 == 6)
      {
        v12 = 0xD00000000000001BLL;
        v11 = 0x80000001004B70D0;
      }

      if (v5 <= 8)
      {
        v9 = v12;
        v10 = v11;
      }

      v13 = 0xD000000000000011;
      if (v5 != 4)
      {
        v13 = 0xD000000000000013;
      }

      v14 = 0x80000001004B70B0;
      if (v5 == 4)
      {
        v14 = 0x80000001004B7090;
      }

      if (v5 == 3)
      {
        v13 = 0xD000000000000016;
        v14 = 0x80000001004B7070;
      }

      v15 = 0x6269726373627573;
      if (v5 != 1)
      {
        v15 = 0xD000000000000016;
      }

      v16 = 0xEE00746E756F4365;
      if (v5 != 1)
      {
        v16 = 0x80000001004B7050;
      }

      if (!v5)
      {
        v15 = 0x436873696C627570;
        v16 = 0xEC000000746E756FLL;
      }

      if (v5 <= 2)
      {
        v13 = v15;
        v14 = v16;
      }

      v17 = v5 <= 5 ? v13 : v9;
      v18 = v5 <= 5 ? v14 : v10;
      if (v7 == v17 && v8 == v18)
      {
        break;
      }

      v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v19 & 1) == 0)
      {
        v4 = (v4 + 1) & v21;
        if ((*(v22 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

double sub_10007F624@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_100010254(a1, a2, &String.hash(into:), sub_100010314);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v15 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100195788();
      v12 = v15;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    sub_100085188((*(v12 + 56) + 32 * v9), a3);
    sub_100192928(v9, v12);
    *v4 = v12;
  }

  else
  {
    result = 0.0;
    *a3 = 0u;
    a3[1] = 0u;
  }

  return result;
}

uint64_t sub_10007F6F0(uint64_t *a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10007CE78(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10019592C();
    v9 = v15;
  }

  v10 = *(v9 + 48) + 40 * v6;
  v11 = *(v10 + 8);
  v12 = *(v10 + 24);

  v13 = *(*(v9 + 56) + 8 * v6);
  sub_100192AD8(v6, v9);
  *v2 = v9;
  return v13;
}

double sub_10007F798@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = *v2;
  v6 = sub_10007CF70(a1);
  if (v7)
  {
    v8 = v6;
    v9 = *v3;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *v3;
    v15 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100196010();
      v11 = v15;
    }

    v12 = *(v11 + 48);
    v13 = type metadata accessor for CodingUserInfoKey();
    (*(*(v13 - 8) + 8))(v12 + *(*(v13 - 8) + 72) * v8, v13);
    sub_100085188((*(v11 + 56) + 32 * v8), a2);
    sub_100193024(v8, v11);
    *v3 = v11;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t sub_10007F874(unsigned __int8 a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_10007D084(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v16 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100196730();
    v9 = v16;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 24 * v6);
  v12 = *v11;
  v13 = v11[1];
  v14 = v11[2];
  sub_1001932D8(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_10007F974(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  v4 = sub_1000501E0(a1);
  if ((v5 & 1) == 0)
  {
    return 0;
  }

  v6 = v4;
  v7 = *v2;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *v2;
  v15 = *v2;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_10019711C();
    v9 = v15;
  }

  v10 = v6;
  v11 = (*(v9 + 56) + 16 * v6);
  v12 = *v11;
  v13 = v11[1];
  sub_1001936F8(v10, v9);
  *v2 = v9;
  return v12;
}

uint64_t sub_10007FA08@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, void (*a4)(unint64_t, uint64_t)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = *v6;
  v14 = sub_10002A440(a1);
  if (v15)
  {
    v16 = v14;
    v17 = *v11;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = *v11;
    v32 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v19 = v32;
    }

    v20 = *(v19 + 48);
    v21 = type metadata accessor for UUID();
    v22 = v16;
    (*(*(v21 - 8) + 8))(v20 + *(*(v21 - 8) + 72) * v16, v21);
    v23 = *(v19 + 56);
    v24 = a2(0);
    v31 = *(v24 - 8);
    sub_100038F84(v23 + *(v31 + 72) * v22, a6, a3);
    a4(v22, v19);
    *v11 = v19;
    v25 = *(v31 + 56);
    v26 = a6;
    v27 = 0;
    v28 = v24;
  }

  else
  {
    v29 = a2(0);
    v25 = *(*(v29 - 8) + 56);
    v28 = v29;
    v26 = a6;
    v27 = 1;
  }

  return v25(v26, v27, 1, v28);
}

uint64_t sub_10007FBC8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = *v2;
  v5 = sub_100010254(a1, a2, &String.hash(into:), sub_100010314);
  if ((v6 & 1) == 0)
  {
    return 0;
  }

  v7 = v5;
  v8 = *v3;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *v3;
  v14 = *v3;
  if (!isUniquelyReferenced_nonNull_native)
  {
    sub_100197404();
    v10 = v14;
  }

  v11 = *(*(v10 + 48) + 16 * v7 + 8);

  v12 = *(*(v10 + 56) + 8 * v7);
  sub_100193530(v7, v10);
  *v3 = v10;
  return v12;
}

uint64_t sub_10007FC88@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v6 = *v3;
  v7 = sub_10007D1A4(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v4;
    v23 = *v4;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_100196B98();
      v12 = v23;
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(v12 + 56);
    v15 = type metadata accessor for StorageEntry(0);
    v22 = *(v15 - 8);
    sub_100038F84(v14 + *(v22 + 72) * v9, a3, type metadata accessor for StorageEntry);
    sub_100193F64(v9, v12);
    *v4 = v12;
    v16 = *(v22 + 56);
    v17 = a3;
    v18 = 0;
    v19 = v15;
  }

  else
  {
    v20 = type metadata accessor for StorageEntry(0);
    v16 = *(*(v20 - 8) + 56);
    v19 = v20;
    v17 = a3;
    v18 = 1;
  }

  return v16(v17, v18, 1, v19);
}

_OWORD *sub_10007FDF4(_OWORD *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100195788();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10018D424(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 32 * v11);
    sub_100002A00(v23);

    return sub_100085188(a1, v23);
  }

  else
  {
    sub_1001A9754(v11, a2, a3, a1, v22);
  }
}

uint64_t sub_10007FF94(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007CE78(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_14;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 >= v14 && (a3 & 1) != 0)
  {
    goto LABEL_8;
  }

  if (v16 < v14 || (a3 & 1) != 0)
  {
    sub_10018D6DC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007CE78(a2);
    if ((v15 & 1) == (v19 & 1))
    {
      goto LABEL_8;
    }

LABEL_14:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return _objc_release_x1();
  }

  v17 = v9;
  sub_10019592C();
  v9 = v17;
LABEL_8:
  v20 = *v4;
  if ((v15 & 1) == 0)
  {
    v23 = *(a2 + 16);
    v28 = *a2;
    v26 = v23;
    v27 = *(a2 + 32);
    sub_1001A97C0(v9, a2, a1, v20);
    sub_1000836D4(&v28, v25);
    return sub_100083730(&v26, v25);
  }

  v21 = v20[7];
  v22 = *(v21 + 8 * v9);
  *(v21 + 8 * v9) = a1;

  return _objc_release_x1();
}

void sub_1000800E0(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_10007CE78(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_100195AC4();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10018DA48(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_10007CE78(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_14:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = v22[7] + 16 * v11;
    v24 = *v23;
    *v23 = a1;
    *(v23 + 8) = a2 & 1;
  }

  else
  {
    v25 = *(a3 + 16);
    v29 = *a3;
    v27 = v25;
    v28 = *(a3 + 32);
    sub_1001A9818(v11, a3, a1, a2 & 1, v22);
    sub_1000836D4(&v29, v26);
    sub_100083730(&v27, v26);
  }
}

_OWORD *sub_10008024C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10007CF70(a2);
  v16 = *(v13 + 16);
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = *(v13 + 24);
  if (v20 < v18 || (a3 & 1) == 0)
  {
    if (v20 >= v18 && (a3 & 1) == 0)
    {
      sub_100196010();
      goto LABEL_7;
    }

    sub_10018E3D0(v18, a3 & 1);
    v24 = *v4;
    v25 = sub_10007CF70(a2);
    if ((v19 & 1) == (v26 & 1))
    {
      v15 = v25;
      v21 = *v4;
      if (v19)
      {
        goto LABEL_8;
      }

LABEL_13:
      (*(v9 + 16))(v12, a2, v8);
      return sub_1001A9878(v15, v12, a1, v21);
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_7:
  v21 = *v4;
  if ((v19 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_8:
  v22 = (v21[7] + 32 * v15);
  sub_100002A00(v22);

  return sub_100085188(a1, v22);
}

unint64_t sub_100080424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = sub_10007D084(a4);
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      sub_100196730();
      v13 = v21;
      goto LABEL_8;
    }

    sub_10018EEA8(v18, a5 & 1);
    v22 = *v6;
    v13 = sub_10007D084(a4);
    if ((v19 & 1) != (v23 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v24 = *v6;
  if (v19)
  {
    v25 = v24[7] + 24 * v13;
    v26 = *v25;
    v27 = *(v25 + 16);
    *v25 = a1;
    *(v25 + 8) = a2;
    *(v25 + 16) = a3;
  }

  else
  {

    return sub_1001A9938(v13, a4, a1, a2, a3, v24);
  }
}

uint64_t sub_100080578(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1001968A8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_10018F20C(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;
  }

  else
  {
    sub_1001AC5AC(v11, a2, a3, a1, v22);
  }
}

_OWORD *sub_100080710(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = sub_10007CFD0(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      sub_100196A18();
      v8 = v16;
      goto LABEL_8;
    }

    sub_10018F4B4(v13, a3 & 1);
    v17 = *v4;
    v8 = sub_10007CFD0(a2);
    if ((v14 & 1) != (v18 & 1))
    {
LABEL_16:
      type metadata accessor for CFString(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v19 = *v4;
  if (v14)
  {
    v20 = (v19[7] + 32 * v8);
    sub_100002A00(v20);

    return sub_100085188(a1, v20);
  }

  else
  {
    sub_1001A9988(v8, a2, a1, v19);

    return a2;
  }
}

unint64_t sub_100080850(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_1000501E0(a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_10019711C();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100190288(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_1000501E0(a3);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = (v22[7] + 16 * v11);
    v24 = v23[1];
    *v23 = a1;
    v23[1] = a2;
  }

  else
  {

    return sub_1001A9A9C(v11, a3, a1, a2, v22);
  }
}

uint64_t sub_100080988(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  v15 = sub_10002A440(a2);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_14;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 >= v18 && (a3 & 1) != 0)
  {
LABEL_7:
    v21 = *v4;
    if (v19)
    {
LABEL_8:
      v22 = v21[7];
      v23 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
      return sub_1000851E0(a1, v22 + *(*(v23 - 8) + 72) * v15, type metadata accessor for NANPairedDeviceSharedAssociation);
    }

    goto LABEL_11;
  }

  if (v20 >= v18 && (a3 & 1) == 0)
  {
    sub_100196404();
    goto LABEL_7;
  }

  sub_10018EA08(v18, a3 & 1);
  v25 = *v4;
  v26 = sub_10002A440(a2);
  if ((v19 & 1) != (v27 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v15 = v26;
  v21 = *v4;
  if (v19)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v12, a2, v8);
  return sub_1001A9AE4(v15, v12, a1, v21);
}

uint64_t sub_100080B5C(uint64_t a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v10 = sub_10007CD10(a2);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = v9;
  v15 = v8[3];
  if (v15 >= v13 && (a3 & 1) != 0)
  {
LABEL_7:
    v16 = *v4;
    if (v14)
    {
LABEL_8:
      v17 = v16[7];
      v18 = type metadata accessor for NANGenericServiceProtocol.Attribute();
      return sub_1000851E0(a1, v17 + *(*(v18 - 8) + 72) * v10, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    goto LABEL_11;
  }

  if (v15 >= v13 && (a3 & 1) == 0)
  {
    sub_100195C70();
    goto LABEL_7;
  }

  sub_10018DDCC(v13, a3 & 1);
  v20 = *v4;
  v21 = sub_10007CD10(a2);
  if ((v14 & 1) != (v22 & 1))
  {
LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v10 = v21;
  v16 = *v4;
  if (v14)
  {
    goto LABEL_8;
  }

LABEL_11:

  return sub_1001A9BD4(v10, a2, a1, v16);
}

_OWORD *sub_100080CB0(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D238(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197964();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191118(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D238(a2 & 1);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A4(v9, a2 & 1, a1, v20);
  }
}

_OWORD *sub_100080DDC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D2F8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197978();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1001913FC(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D2F8(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

_OWORD *sub_100080F08(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D33C(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_10019798C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191770(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D33C(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

_OWORD *sub_100081034(_OWORD *a1, char a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D40C(a2 & 1);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_1001979A0();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191A60(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D40C(a2 & 1);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A4(v9, a2 & 1, a1, v20);
  }
}

_OWORD *sub_100081160(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D54C(a2, sub_1001E0694, sub_1001E0694);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B20();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191D28(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D54C(a2, sub_1001E0694, sub_1001E0694);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

_OWORD *sub_1000812DC(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D4B0(a2, sub_1001E1B50, sub_10007E6AC);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B34();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191D50(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D4B0(a2, sub_1001E1B50, sub_10007E6AC);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

_OWORD *sub_100081458(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D54C(a2, sub_1001E1F4C, sub_1001E1F4C);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B48();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191D78(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D54C(a2, sub_1001E1F4C, sub_1001E1F4C);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

_OWORD *sub_1000815D4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D54C(a2, sub_100219B9C, sub_100219B9C);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B5C();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191DA0(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D54C(a2, sub_100219B9C, sub_100219B9C);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

uint64_t sub_100081750(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 >= v16 && (a4 & 1) == 0)
    {
      v19 = v11;
      sub_1001977F8();
      v11 = v19;
      goto LABEL_8;
    }

    sub_100190E74(v16, a4 & 1);
    v20 = *v5;
    v11 = sub_100010254(a2, a3, &String.hash(into:), sub_100010314);
    if ((v17 & 1) != (v21 & 1))
    {
LABEL_16:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return _objc_release_x1();
    }
  }

LABEL_8:
  v22 = *v5;
  if (v17)
  {
    v23 = *(v22 + 56);
    v24 = *(v23 + 8 * v11);
    *(v23 + 8 * v11) = a1;

    return _objc_release_x1();
  }

  sub_1001AC5AC(v11, a2, a3, a1, v22);
}

_OWORD *sub_1000818E4(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D54C(a2, sub_10021C248, sub_10021C248);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B70();
      v9 = v17;
      goto LABEL_8;
    }

    sub_100191DC8(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D54C(a2, sub_10021C248, sub_10021C248);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

_OWORD *sub_100081A60(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D5E8(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B84();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1001920A4(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D5E8(a2);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

_OWORD *sub_100081B8C(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = sub_10007D4B0(a2, sub_10021DF14, sub_10007F274);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_100197B98();
      v9 = v17;
      goto LABEL_8;
    }

    sub_1001924A4(v14, a3 & 1);
    v18 = *v4;
    v9 = sub_10007D4B0(a2, sub_10021DF14, sub_10007F274);
    if ((v15 & 1) != (v19 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v20 = *v4;
  if (v15)
  {
    v21 = (*(v20 + 56) + 32 * v9);
    sub_100002A00(v21);

    return sub_100085188(a1, v21);
  }

  else
  {

    return sub_1001AC5A0(v9, a2, a1, v20);
  }
}

uint64_t sub_100081D08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, int a3@<W2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v10 = *v4;
  result = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v4;
  if ((result & 1) == 0)
  {
    result = sub_100195AC4();
    *v5 = v12;
  }

  if (a2 < 0 || 1 << *(v12 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(v12 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(v12 + 36) == a3)
  {
    v13 = *(v12 + 48) + 40 * a2;
    v20 = *v13;
    v14 = *(v13 + 16);
    v15 = *(v13 + 24);
    v16 = *(v13 + 32);
    v17 = *(v13 + 33);
    v18 = *(v12 + 56) + 16 * a2;
    v19 = *v18;
    LOBYTE(v18) = *(v18 + 8);
    *a1 = v19;
    *(a1 + 8) = v18;
    result = sub_100192D78(a2, v12);
    *v5 = v12;
    *a4 = v20;
    *(a4 + 16) = v14;
    *(a4 + 24) = v15;
    *(a4 + 32) = v16;
    *(a4 + 33) = v17;
    return result;
  }

LABEL_10:
  __break(1u);
  return result;
}

unint64_t sub_100081E20(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10059B110, &qword_100480EA0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = (a1 + 32);

    while (1)
    {
      v19 = v1;
      v5 = *v4;
      v6 = v4[1];
      v7 = v4[2];
      v8 = v4[3];
      v9 = v4[4];
      v10 = v4[5];
      v11 = *(v4 + 2);
      v20 = *(v4 + 1);

      result = sub_100041DE8(v5 | (v6 << 8) | (v7 << 16) | (v8 << 24) | (v9 << 32) | (v10 << 40));
      if (v13)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = (v3[6] + 6 * result);
      *v14 = v5;
      v14[1] = v6;
      v14[2] = v7;
      v14[3] = v8;
      v14[4] = v9;
      v14[5] = v10;
      v15 = (v3[7] + 16 * result);
      *v15 = v20;
      v15[1] = v11;
      v16 = v3[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v3[2] = v18;
      v4 += 24;
      v1 = v19 - 1;
      if (v19 == 1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100081F84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BAA8, &qword_100480DF0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 28)
    {
      v5 = *i;
      v6 = *(i + 4);
      v14 = *(i + 8);
      v7 = *(i + 24);
      result = sub_10007CCC8(*i);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v10 = v3[7] + 24 * result;
      *v10 = v6;
      *(v10 + 4) = v14;
      *(v10 + 20) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100082094(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BAA0, &unk_100492270);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 32);
      v6 = *(i - 3);
      v7 = *(i - 4);
      v8 = *(i - 1);
      v9 = *i;
      result = sub_10007CCC8(v5);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      v12 = v3[7] + 32 * result;
      *v12 = v6;
      *(v12 + 8) = v7;
      *(v12 + 16) = v8;
      *(v12 + 24) = v9;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000821A0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BAD8, &qword_100480E20);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012400(v4, &v11, &qword_10058BAE0, &qword_100480E28);
      v5 = v11;
      result = sub_10007CFD0(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100085188(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      v4 += 40;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000822C8(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BAC0, &qword_100480E08);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(&qword_10058BAC8, &qword_100480E10);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v10, v6, &qword_10058BAC0, &qword_100480E08);
      result = sub_10002A440(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for NANPairedDeviceSharedAssociation(0);
      result = sub_100038F84(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for NANPairedDeviceSharedAssociation);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000824E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10058BB60, &qword_100480E90);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100010254(v5, v6, &String.hash(into:), sub_100010314);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v8;
      v12[1] = v7;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100082620(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BB50, &unk_100480E80);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(&qword_10058BB58, &unk_100492320);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);
    while (1)
    {
      sub_100012400(v10, v6, &qword_10058BB50, &unk_100480E80);
      v12 = *v6;
      result = sub_10007CD10(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for NANGenericServiceProtocol.Attribute();
      result = sub_100038F84(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for NANGenericServiceProtocol.Attribute);
      v18 = v8[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v8[2] = v20;
      v10 += v11;
      if (!--v7)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000827F8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_1005952E0, &unk_1004B1850);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012400(v4, &v13, &qword_10058BB40, &unk_100480E70);
      v5 = v13;
      v6 = v14;
      result = sub_100010254(v13, v14, &String.hash(into:), sub_100010314);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100085188(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100082950(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&unk_10058BB30, &unk_100480E60);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10000AB0C(v7, v8);
      result = sub_100010254(v5, v6, &String.hash(into:), sub_100010314);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = (v3[7] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100082AA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BAF0, &qword_100480E30);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100012400(v4, &v15, &qword_10058BAF8, &qword_100480E38);
      v5 = v15;
      v6 = v16;
      result = sub_100010254(v15, v16, &String.hash(into:), sub_100010314);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 32 * result);
      v11 = v18;
      *v10 = v17;
      v10[1] = v11;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
      v4 += 48;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_100082BFC(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BB18, &qword_100480E48);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (!v7)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10005DC58(&qword_10058BB20, &qword_100480E50);
  v8 = static _DictionaryStorage.allocate(capacity:)();
  v9 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v10 = *(v3 + 72);
  v26 = *(v2 + 48);
  v27 = v10;

  sub_100012400(a1 + v9, v6, &qword_10058BB18, &qword_100480E48);
  v11 = sub_10002A440(v6);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v8;
  }

  v13 = v11;
  v25 = type metadata accessor for UUID();
  v14 = *(v25 - 8);
  v15 = *(v14 + 32);
  v16 = *(v14 + 72);
  v17 = a1 + v27 + v9;
  while (1)
  {
    *(v8 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v13;
    v15(v8[6] + v16 * v13, v6, v25);
    result = memmove((v8[7] + 72 * v13), &v6[v26], 0x48uLL);
    v19 = v8[2];
    v20 = __OFADD__(v19, 1);
    v21 = v19 + 1;
    if (v20)
    {
      break;
    }

    v8[2] = v21;
    if (!--v7)
    {
      goto LABEL_8;
    }

    v22 = v17 + v27;
    sub_100012400(v17, v6, &qword_10058BB18, &qword_100480E48);
    v13 = sub_10002A440(v6);
    v17 = v22;
    if (v23)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100082E50(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10005DC58(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100010254(v7, v8, &String.hash(into:), sub_100010314);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + 8 * result) = v9;
      v13 = v5[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v5[2] = v15;
      if (!--v3)
      {

        return v5;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100082F74(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BAB0, &qword_100480DF8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(&qword_10058BAB8, &qword_100480E00);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v10, v6, &qword_10058BAB0, &qword_100480DF8);
      result = sub_10007CD94(*v6 | (*(v6 + 2) << 16) | (*(v6 + 3) << 24));
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6] - result + 8 * result;
      v16 = v6[2];
      v17 = *(v6 + 6);
      *v15 = *v6;
      *(v15 + 4) = v16;
      *(v15 + 6) = v17;
      v18 = v8[7];
      v19 = type metadata accessor for NANInternetSharingStatistics.Requester();
      result = sub_100038F84(v6 + v9, v18 + *(*(v19 - 8) + 72) * v14, type metadata accessor for NANInternetSharingStatistics.Requester);
      v20 = v8[2];
      v21 = __OFADD__(v20, 1);
      v22 = v20 + 1;
      if (v21)
      {
        goto LABEL_10;
      }

      v8[2] = v22;
      v10 += v11;
      if (!--v7)
      {

        return v8;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000831D0(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = *(a1 + 16);
  if (v4)
  {
    sub_10005DC58(a2, a3);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v9 = *(i - 1);
      v10 = *i;
      result = a4(v9);
      if (v12)
      {
        break;
      }

      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v9;
      *(v7[7] + 8 * result) = v10;
      v13 = v7[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v7[2] = v15;
      if (!--v4)
      {
        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000832AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058BA88, &qword_100480DD0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1000501E0(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v9 = v3[2];
      v10 = __OFADD__(v9, 1);
      v11 = v9 + 1;
      if (v10)
      {
        goto LABEL_10;
      }

      v3[2] = v11;
      if (!--v1)
      {
        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10008338C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10005DC58(&qword_10058BA68, &unk_100480DB0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  v7 = sub_100010254(v4, v5, &Character.hash(into:), sub_100010314);
  if (v8)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v9 = v7;
  result = v5;
  v11 = (a1 + 72);
  while (1)
  {
    *(v3 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v9;
    v12 = (v3[6] + 16 * v9);
    *v12 = v4;
    v12[1] = result;
    *(v3[7] + v9) = v6;
    v13 = v3[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v3[2] = v15;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v16 = v11 + 24;
    v4 = *(v11 - 2);
    v17 = *(v11 - 1);
    v6 = *v11;

    v9 = sub_100010254(v4, v17, &Character.hash(into:), sub_100010314);
    v11 = v16;
    result = v17;
    if (v18)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000834F8(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10006D088(a1);
}

void sub_1000835CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {

    sub_1000124C8(a6, a7);
  }
}

uint64_t sub_10008364C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100083690(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100083834(uint64_t a1)
{
  v2 = type metadata accessor for DNSRecords.SRV();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100083890(uint64_t a1, uint64_t a2)
{
  v4 = sub_10005DC58(&unk_10058B750, &unk_100480AB0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_100083900(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  if (a2)
  {

    sub_10000AB0C(a6, a7);
  }
}

uint64_t sub_100083960(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 64);
  return sub_1000743F0(a1, *(v1 + 32), *(v1 + 40), *(v1 + 48), *(v1 + 56)) & 1;
}

uint64_t sub_100083990@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_100074654(a1, a2);
}

uint64_t sub_100083A64@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[3];
  v5 = v2[4];
  return sub_100073F90(a1, a2);
}

uint64_t sub_100083B68(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DNSRecords.SRV();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100083BDC()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_100083C18(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_100083C60(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100083CC0()
{
  result = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

void sub_100083D78()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100083E58();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_100083E58()
{
  if (!qword_10058B990)
  {
    type metadata accessor for DNSRecords.SRV();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10058B990);
    }
  }
}

void sub_100083EB8()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_100083E58();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

uint64_t initializeBufferWithCopyOfBuffer for RadioResources.SymbolicChannel(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_100083FC4(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 9))
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

uint64_t sub_10008400C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 9) = 1;
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

    *(result + 9) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_100084060()
{
  result = qword_10058BA30;
  if (!qword_10058BA30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BA30);
  }

  return result;
}

unint64_t sub_1000840B4()
{
  result = qword_100599470;
  if (!qword_100599470)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100599470);
  }

  return result;
}

unint64_t sub_100084100(uint64_t a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = a1 + 64;
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  v6 = 1 << *(v2 + 32);
  if (result == v6)
  {
    return 0;
  }

  v29 = v2 + 72;
  v7 = *(v2 + 36);
  v30 = v3;
  v31 = v2;
  while ((result & 0x8000000000000000) == 0 && result < v6)
  {
    if ((*(v3 + 8 * (result >> 6)) & (1 << result)) == 0)
    {
      goto LABEL_23;
    }

    v33 = 1 << result;
    v34 = result >> 6;
    v47 = v7;
    v9 = *(v2 + 56);
    v10 = *(v2 + 48) + 40 * result;
    v12 = *v10;
    v11 = *(v10 + 8);
    v14 = *(v10 + 16);
    v13 = *(v10 + 24);
    v15 = *(v10 + 32);
    v35 = *(v10 + 33);
    v16 = v9 + 16 * result;
    v17 = *v16;
    v18 = *(v16 + 8);
    v36 = result;
    v37[0] = v12;
    v37[1] = v11;
    v37[2] = v14;
    v37[3] = v13;
    v38 = v15;
    v39 = v35;
    v40 = v17;
    v41 = v18;
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();
    v19 = v17;
    sub_100016290(v37, &qword_10058BA60, &qword_100480DA8);
    v42[0] = v12;
    v42[1] = v11;
    v42[2] = v14;
    v42[3] = v13;
    v43 = v15;
    v44 = v35;
    v45 = v19;
    v46 = v18;
    if ([v19 publishID] == a2)
    {
      sub_1000840B4();
      v20 = [v19 publisherAddress];
      v21 = static NSObject.== infix(_:_:)();

      sub_100016290(v42, &qword_10058BA60, &qword_100480DA8);
      if (v21)
      {
        return v36;
      }
    }

    else
    {
      sub_100016290(v42, &qword_10058BA60, &qword_100480DA8);
    }

    v2 = v31;
    v8 = 1 << *(v31 + 32);
    result = v36;
    if (v36 >= v8)
    {
      goto LABEL_24;
    }

    v3 = v30;
    v22 = *(v30 + 8 * v34);
    if ((v22 & v33) == 0)
    {
      goto LABEL_25;
    }

    if (v47 != *(v31 + 36))
    {
      goto LABEL_26;
    }

    v23 = v22 & (-2 << (v36 & 0x3F));
    if (v23)
    {
      v8 = __clz(__rbit64(v23)) | v36 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v24 = v34 << 6;
      v25 = v34 + 1;
      v26 = (v29 + 8 * v34);
      while (v25 < (v8 + 63) >> 6)
      {
        v28 = *v26++;
        v27 = v28;
        v24 += 64;
        ++v25;
        if (v28)
        {
          sub_10002BEB8(v36, v47, 0);
          v8 = __clz(__rbit64(v27)) + v24;
          goto LABEL_5;
        }
      }

      sub_10002BEB8(v36, v47, 0);
    }

LABEL_5:
    v7 = *(v31 + 36);
    v6 = 1 << *(v31 + 32);
    result = v8;
    if (v8 == v6)
    {
      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_100084414()
{
  v1 = OBJC_IVAR____TtC7CoreP2PP33_CC695AB9131387273B9CBC7793DE05AB14BonjourBrowser_discoveredPeers;
  swift_beginAccess();
  v2 = *(v0 + v1);

  sub_1000792EC(v3);
  v5 = v4;

  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = 0;
    v8 = (v5 + 40);
    while (v7 < *(v5 + 16))
    {
      ++v7;
      v9 = *(v8 - 8);
      v10 = *v8;
      sub_100079A0C(v9, v10);

      v8 += 2;
      if (v6 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

unint64_t sub_1000850C8()
{
  result = qword_10058BA58;
  if (!qword_10058BA58)
  {
    sub_10005DD04(&qword_10058BA50, &qword_100480DA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BA58);
  }

  return result;
}

uint64_t sub_10008512C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t sub_100085170(uint64_t result, uint64_t a2, char a3)
{
  if (a3 != -1)
  {
    return sub_10002BEB8(result, a2, a3 & 1);
  }

  return result;
}

_OWORD *sub_100085188(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_100085198(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000851E0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_100085248(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  return sub_10006C328(a1);
}

uint64_t OUI.hash(into:)(uint64_t a1, unsigned int a2)
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

  return sub_1000124C8(v6, v8);
}

uint64_t OUI.description.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = HIWORD(a1);
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v35 = v4;
  v36 = v5;
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v9 = swift_allocObject();
  v37 = xmmword_100480F30;
  *(v9 + 16) = xmmword_100480F30;
  *(v9 + 32) = v1;
  *(v9 + 33) = v2;
  v10 = v3;
  *(v9 + 34) = v3;
  v11 = sub_10002D874(v9);
  v13 = v12;

  v14 = sub_10002D874(&off_100555E38);
  v16 = v15;
  v17 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v11, v13, v14, v15);
  sub_1000124C8(v14, v16);
  sub_1000124C8(v11, v13);
  if (v17)
  {
    return 0x696C6C4169466957;
  }

  v19 = swift_allocObject();
  *(v19 + 16) = v37;
  *(v19 + 32) = v1;
  *(v19 + 33) = v2;
  *(v19 + 34) = v10;
  v20 = sub_10002D874(v19);
  v22 = v21;

  if (v22 >> 62 == 2)
  {
    v23 = *(v20 + 16);
  }

  sub_10000AB0C(v20, v22);
  v33 = v22;
  v34 = v20;
  Data.Iterator.init(_:at:)();
  sub_100085C04();
  v24 = v35;
  dispatch thunk of IteratorProtocol.next()();
  if (v41)
  {
    v18 = 0;
  }

  else
  {
    v18 = 0;
    v25 = 0xE000000000000000;
    v37 = xmmword_100480F40;
    do
    {
      v26 = v40;
      sub_10005DC58(&qword_100599FF0, &qword_100486D20);
      v27 = swift_allocObject();
      *(v27 + 16) = v37;
      *(v27 + 56) = &type metadata for UInt8;
      *(v27 + 64) = &protocol witness table for UInt8;
      *(v27 + 32) = v26;
      v28 = String.init(format:_:)();
      v30 = v29;
      v38 = v18;
      v39 = v25;

      v31._countAndFlagsBits = v28;
      v31._object = v30;
      String.append(_:)(v31);

      v18 = v38;
      v25 = v39;
      dispatch thunk of IteratorProtocol.next()();
    }

    while (v41 != 1);
  }

  sub_1000124C8(v34, v33);
  (*(v36 + 8))(v8, v24);
  return v18;
}

Swift::Int OUI.hashValue.getter(unsigned int a1)
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
  return Hasher._finalize()();
}

Swift::Int sub_1000857B4()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100480F30;
  *(v3 + 32) = v1;
  *(v3 + 34) = v2;
  v4 = sub_10002D874(v3);
  v6 = v5;

  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  return Hasher._finalize()();
}

uint64_t sub_100085864()
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

  return sub_1000124C8(v4, v6);
}

Swift::Int sub_100085908()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  Hasher.init(_seed:)();
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100480F30;
  *(v3 + 32) = v1;
  *(v3 + 34) = v2;
  v4 = sub_10002D874(v3);
  v6 = v5;

  Data.hash(into:)();
  sub_1000124C8(v4, v6);
  return Hasher._finalize()();
}

uint64_t OUI.encode(to:)(void *a1)
{
  v2 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v4, v5);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v1)
  {
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v4, v5);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v4);
}

uint64_t sub_100085B00(void *a1)
{
  v3 = v1[1];
  v4 = v1[2];
  v5 = *v1;
  v6 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Encoder.unkeyedContainer()();
  sub_100031694(v8, v9);
  dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  if (!v2)
  {
    sub_100031694(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
    sub_100031694(v8, v9);
    dispatch thunk of UnkeyedEncodingContainer.encode(_:)();
  }

  return sub_100002A00(v8);
}

unint64_t sub_100085C04()
{
  result = qword_10058C7C0;
  if (!qword_10058C7C0)
  {
    type metadata accessor for Data.Iterator();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058C7C0);
  }

  return result;
}

unint64_t sub_100085C60()
{
  result = qword_10058BB78;
  if (!qword_10058BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BB78);
  }

  return result;
}

uint64_t sub_100085CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v19[1] = a1;
  v19[3] = a4;
  v5 = *(*(a3 + 8) + 24);
  v6 = *(v5 + 16);
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v8 = *(a2 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v13 = v19 - v12;
  __chkstk_darwin();
  v15 = v19 - v14;
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  v16 = *(v5 + 8);
  dispatch thunk of static AdditiveArithmetic.- infix(_:_:)();
  v17 = *(v8 + 8);
  v17(v13, a2);
  dispatch thunk of static AdditiveArithmetic.+ infix(_:_:)();
  dispatch thunk of static BinaryInteger.~ prefix(_:)();
  dispatch thunk of static BinaryInteger.& infix(_:_:)();
  v17(v11, a2);
  v17(v13, a2);
  return (v17)(v15, a2);
}

uint64_t FixedWidthInteger.fourByteAligned.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(*(v10 + 8) + 24) + 16);
  v12 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
  dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
  sub_100085CC4(v9, a1, a2, a3);
  return (*(v6 + 8))(v9, a1);
}

uint64_t static FixedWidthInteger.random.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v32 = a3;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v27 - v10;
  v12 = *(a1 - 8);
  v13 = v12[8];
  __chkstk_darwin();
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v27 - v16;
  v18 = *(*(*(a2 + 8) + 32) + 8);
  v19 = type metadata accessor for ClosedRange();
  v30 = *(v19 - 8);
  v31 = v19;
  v20 = *(v30 + 64);
  __chkstk_darwin();
  v29 = &v27 - v21;
  dispatch thunk of static FixedWidthInteger.min.getter();
  v33 = a2;
  dispatch thunk of static FixedWidthInteger.max.getter();
  result = dispatch thunk of static Comparable.<= infix(_:_:)();
  if (result)
  {
    v23 = v12[4];
    v23(v11, v17, a1);
    v23(&v11[*(TupleTypeMetadata2 + 48)], v15, a1);
    (*(v6 + 16))(v9, v11, TupleTypeMetadata2);
    v24 = *(TupleTypeMetadata2 + 48);
    v25 = v29;
    v23(v29, v9, a1);
    v28 = v12[1];
    v28(&v9[v24], a1);
    (*(v6 + 32))(v9, v11, TupleTypeMetadata2);
    v26 = v31;
    v23(&v25[*(v31 + 36)], &v9[*(TupleTypeMetadata2 + 48)], a1);
    v28(v9, a1);
    static FixedWidthInteger.random(in:)();
    return (*(v30 + 8))(v25, v26);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void FixedWidthInteger.init(bitOffsets:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(*(a3 + 8) + 24) + 8);
  dispatch thunk of static AdditiveArithmetic.zero.getter();
  v5 = *(a1 + 16);
  if (v5)
  {
    v6 = 0;
    while (v6 < *(a1 + 16))
    {
      v7 = v6 + 1;
      FixedWidthInteger.set(bitOffset:)(*(a1 + 32 + 8 * v6));
      v6 = v7;
      if (v5 == v7)
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_5:
  }
}

Swift::Void __swiftcall FixedWidthInteger.set(bitOffset:)(Swift::UInt bitOffset)
{
  v16 = bitOffset;
  v3 = v1;
  v4 = *(*(*(v2 + 8) + 24) + 16);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v15 - v10;
  v12 = v16;
  v13 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (v13 < 1 || v13 <= v12)
  {
    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v17 = v12;
    sub_10008674C();
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v14 = *(v6 + 8);
    v14(v9, v3);
    dispatch thunk of static BinaryInteger.|= infix(_:_:)();
    v14(v11, v3);
  }
}

unint64_t sub_10008674C()
{
  result = qword_10058BB80;
  if (!qword_10058BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BB80);
  }

  return result;
}

Swift::Void __swiftcall FixedWidthInteger.clear(bitOffset:)(Swift::UInt bitOffset)
{
  v3 = v1;
  v19 = bitOffset;
  v18 = *(v2 + 8);
  v4 = *(*(v18 + 24) + 16);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v6 = *(v3 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v17 - v10;
  __chkstk_darwin();
  v13 = &v17 - v12;
  v14 = v19;
  v15 = dispatch thunk of static FixedWidthInteger.bitWidth.getter();
  if (v15 < 1 || v15 <= v14)
  {
    __break(1u);
  }

  else
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v20 = v14;
    sub_10008674C();
    dispatch thunk of static BinaryInteger.<< infix<A>(_:_:)();
    v16 = *(v6 + 8);
    v16(v9, v3);
    dispatch thunk of static BinaryInteger.~ prefix(_:)();
    v16(v11, v3);
    dispatch thunk of static BinaryInteger.&= infix(_:_:)();
    v16(v13, v3);
  }
}

unint64_t FixedWidthInteger.bytesRequiredToRepresentBitOffset.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 8);
  v5 = *(*(v4 + 24) + 16);
  v6 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v7 = *(a1 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v26 - v11;
  (*(v7 + 16))(&v26 - v11, v2, a1);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_14;
  }

  v27 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v13)
  {
    if (v14 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v18 = *(*(v4 + 32) + 8);
      v19 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v7 + 8))(v10, a1);
      if (v19)
      {
LABEL_29:
        __break(1u);
        return result;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v15 = *(*(v4 + 32) + 8);
    v16 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v7 + 8))(v10, a1);
    if (v16)
    {
      goto LABEL_29;
    }

    goto LABEL_14;
  }

  if (v14 < 64)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v27 = 0x7FFFFFFFFFFFFFFFLL;
    v20 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v21 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v20 & 1) == 0)
    {
      break;
    }

    if (v21 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v22 = *(*(v4 + 32) + 8);
    v23 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v7 + 8))(v10, a1);
    if (v23)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v21 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v24 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (*(v7 + 8))(v12, a1);
  v25 = v24 + 7;
  if (__OFADD__(v24, 7))
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v25 < 0)
  {
    v25 = v24 + 14;
  }

  return v25 & 0xFFFFFFFFFFFFFFF8;
}

unint64_t sub_100086E78()
{
  result = qword_100597CC0;
  if (!qword_100597CC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100597CC0);
  }

  return result;
}

uint64_t FixedWidthInteger.retryText.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3[3] + 16);
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  __chkstk_darwin();
  v6 = *(a1 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = 0;
  v27 = 0xE000000000000000;
  v10 = v3[1];
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v11._countAndFlagsBits = 32;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    v12 = 0x7972746572;
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  v13 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v14 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v13 & 1) == 0)
  {
    v12 = 0x7972746572;
    if (v14 < 64)
    {
LABEL_3:
      if (dispatch thunk of BinaryInteger._lowWord.getter() != 1)
      {
LABEL_16:
        v21 = 0xE700000000000000;
        v12 = 0x73656972746572;
        goto LABEL_17;
      }

      goto LABEL_15;
    }

LABEL_10:
    v25 = 1;
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v17 = *(v3[2] + 8);
    v18 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v9, a1);
    if ((v18 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_15;
  }

  if (v14 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v19 = *(v3[4] + 8);
    v20 = dispatch thunk of static Comparable.>= infix(_:_:)();
    (*(v6 + 8))(v9, a1);
    if ((v20 & 1) == 0 || dispatch thunk of BinaryInteger._lowWord.getter() != 1)
    {
      goto LABEL_16;
    }
  }

  else
  {
    v25 = 1;
    sub_100086E78();
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v15 = *(v3[2] + 8);
    v16 = dispatch thunk of static Equatable.== infix(_:_:)();
    (*(v6 + 8))(v9, a1);
    if ((v16 & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  v12 = 0x7972746572;
LABEL_15:
  v21 = 0xE500000000000000;
LABEL_17:
  v22._countAndFlagsBits = v12;
  v22._object = v21;
  String.append(_:)(v22);

  return v26;
}

uint64_t UnsafeMutablePointer<A>.set<A>(bit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v52 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v50[1] = v50 - v9;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = v50 - v14;
  __chkstk_darwin();
  v16 = v50 - v15;
  v17 = *(v10 + 16);
  v55 = a1;
  v17(v50 - v15, a1, a3);
  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v54 = a2;
  if ((v18 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_14;
  }

  v56 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v19 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v19)
  {
    if (v20 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v25 = v53;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v26 = *(*(v7 + 32) + 8);
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v10 + 8))(v25, a3);
      if (v27)
      {
        goto LABEL_52;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_100086E78();
    v21 = v53;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v22 = *(*(v7 + 32) + 8);
    v23 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v10 + 8))(v21, a3);
    if (v23)
    {
      goto LABEL_52;
    }

    goto LABEL_14;
  }

  if (v20 < 64)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    v30 = v53;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v31 = *(*(v7 + 32) + 8);
    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v10 + 8))(v30, a3);
    if (v32)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v29 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v33 = dispatch thunk of BinaryInteger._lowWord.getter();
  v34 = *(v10 + 8);
  v34(v16, a3);
  v17(v13, v55, a3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v56 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_36;
      }

LABEL_31:
      sub_100086E78();
      v37 = v53;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v38 = *(*(v7 + 32) + 8);
      v39 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v34)(v37, a3);
      if (v39)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v35 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v36 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v35)
      {
        if (v36 > 64)
        {
          goto LABEL_31;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v40 = v53;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v41 = *(*(v7 + 32) + 8);
        v42 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v34)(v40, a3);
        if (v42)
        {
          goto LABEL_53;
        }

LABEL_36:
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      else if (v36 < 64)
      {
        goto LABEL_36;
      }
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v43)
    {
      if (v44 < 65)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v44 >= 64)
    {
LABEL_40:
      sub_100086E78();
      v45 = v53;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v46 = *(*(v7 + 32) + 8);
      v47 = dispatch thunk of static Comparable.< infix(_:_:)();
      v34(v45, a3);
      if ((v47 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_42:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
  v48 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v34)(v13, a3);
  v49 = v48 & 7;
  if (v48 <= 0)
  {
    v49 = -(-v48 & 7);
  }

  if ((v49 & 0x8000000000000000) == 0)
  {
    *(v54 + v33 / 8) |= 1 << v49;
    return result;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t UnsafeMutablePointer<A>.clear<A>(bit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v52 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v50[1] = v50 - v9;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v53 = v50 - v14;
  __chkstk_darwin();
  v16 = v50 - v15;
  v17 = *(v10 + 16);
  v55 = a1;
  v17(v50 - v15, a1, a3);
  v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v54 = a2;
  if ((v18 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_14;
  }

  v56 = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  v19 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v20 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if (v19)
  {
    if (v20 <= 64)
    {
      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v25 = v53;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v26 = *(*(v7 + 32) + 8);
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v10 + 8))(v25, a3);
      if (v27)
      {
        goto LABEL_52;
      }

      goto LABEL_13;
    }

LABEL_8:
    sub_100086E78();
    v21 = v53;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v22 = *(*(v7 + 32) + 8);
    v23 = dispatch thunk of static Comparable.< infix(_:_:)();
    result = (*(v10 + 8))(v21, a3);
    if (v23)
    {
      goto LABEL_52;
    }

    goto LABEL_14;
  }

  if (v20 < 64)
  {
LABEL_13:
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    v28 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v29 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v28 & 1) == 0)
    {
      break;
    }

    if (v29 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    v30 = v53;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v31 = *(*(v7 + 32) + 8);
    v32 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v10 + 8))(v30, a3);
    if (v32)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v29 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v33 = dispatch thunk of BinaryInteger._lowWord.getter();
  v34 = *(v10 + 8);
  v34(v16, a3);
  v17(v13, v55, a3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v56 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_36;
      }

LABEL_31:
      sub_100086E78();
      v37 = v53;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v38 = *(*(v7 + 32) + 8);
      v39 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v34)(v37, a3);
      if (v39)
      {
        goto LABEL_53;
      }
    }

    else
    {
      v35 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v36 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v35)
      {
        if (v36 > 64)
        {
          goto LABEL_31;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v40 = v53;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v41 = *(*(v7 + 32) + 8);
        v42 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v34)(v40, a3);
        if (v42)
        {
          goto LABEL_53;
        }

LABEL_36:
        dispatch thunk of BinaryInteger._lowWord.getter();
      }

      else if (v36 < 64)
      {
        goto LABEL_36;
      }
    }
  }

  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v56 = 0x7FFFFFFFFFFFFFFFLL;
    v43 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v44 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v43)
    {
      if (v44 < 65)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v44 >= 64)
    {
LABEL_40:
      sub_100086E78();
      v45 = v53;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v46 = *(*(v7 + 32) + 8);
      v47 = dispatch thunk of static Comparable.< infix(_:_:)();
      v34(v45, a3);
      if ((v47 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_42:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
  v48 = dispatch thunk of BinaryInteger._lowWord.getter();
  result = (v34)(v13, a3);
  v49 = v48 & 7;
  if (v48 <= 0)
  {
    v49 = -(-v48 & 7);
  }

  if ((v49 & 0x8000000000000000) == 0)
  {
    *(v54 + v33 / 8) &= (-1 << v49) - 1;
    return result;
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
  return result;
}

uint64_t UnsafePointer<A>.contains<A>(bit:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a4 + 8);
  v53 = *(*(v7 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v52 = &v50 - v9;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = &v50 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v54 = &v50 - v14;
  __chkstk_darwin();
  v16 = &v50 - v15;
  v17 = *(v10 + 16);
  v56 = a1;
  v17(&v50 - v15, a1, a3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v57 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
        goto LABEL_13;
      }

      goto LABEL_8;
    }

    v18 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v19 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v18)
    {
      if (v19 > 64)
      {
LABEL_8:
        sub_100086E78();
        v20 = v54;
        dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
        v21 = *(*(v7 + 32) + 8);
        v22 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (*(v10 + 8))(v20, a3);
        if ((v22 & 1) == 0)
        {
          goto LABEL_14;
        }

LABEL_53:
        __break(1u);
        goto LABEL_54;
      }

      swift_getAssociatedConformanceWitness();
      dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
      v24 = v54;
      dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
      v25 = *(*(v7 + 32) + 8);
      v26 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (*(v10 + 8))(v24, a3);
      if (v26)
      {
        goto LABEL_53;
      }

LABEL_13:
      dispatch thunk of BinaryInteger._lowWord.getter();
      goto LABEL_14;
    }

    if (v19 < 64)
    {
      goto LABEL_13;
    }
  }

LABEL_14:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v57 = 0x7FFFFFFFFFFFFFFFLL;
    v27 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v28 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if ((v27 & 1) == 0)
    {
      break;
    }

    if (v28 < 65)
    {
      goto LABEL_23;
    }

LABEL_17:
    sub_100086E78();
    v29 = v54;
    dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
    v30 = *(*(v7 + 32) + 8);
    v31 = dispatch thunk of static Comparable.< infix(_:_:)();
    (*(v10 + 8))(v29, a3);
    if (v31)
    {
      __break(1u);
LABEL_19:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  if (v28 >= 64)
  {
    goto LABEL_17;
  }

LABEL_23:
  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_24:
  v55 = a2;
  v32 = dispatch thunk of BinaryInteger._lowWord.getter();
  v33 = *(v10 + 8);
  v33(v16, a3);
  v17(v13, v56, a3);
  if ((dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0 && dispatch thunk of BinaryInteger.bitWidth.getter() > 64)
  {
    v57 = 0x8000000000000000;
    if (dispatch thunk of static BinaryInteger.isSigned.getter())
    {
      if (dispatch thunk of BinaryInteger.bitWidth.getter() < 64)
      {
LABEL_36:
        dispatch thunk of BinaryInteger._lowWord.getter();
        goto LABEL_37;
      }

LABEL_31:
      sub_100086E78();
      v36 = v54;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v37 = *(*(v7 + 32) + 8);
      v38 = dispatch thunk of static Comparable.< infix(_:_:)();
      result = (v33)(v36, a3);
      if (v38)
      {
        goto LABEL_54;
      }
    }

    else
    {
      v34 = dispatch thunk of static BinaryInteger.isSigned.getter();
      v35 = dispatch thunk of BinaryInteger.bitWidth.getter();
      if (v34)
      {
        if (v35 > 64)
        {
          goto LABEL_31;
        }

        swift_getAssociatedConformanceWitness();
        dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
        v39 = v54;
        dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
        v40 = *(*(v7 + 32) + 8);
        v41 = dispatch thunk of static Comparable.< infix(_:_:)();
        result = (v33)(v39, a3);
        if ((v41 & 1) == 0)
        {
          goto LABEL_36;
        }

LABEL_54:
        __break(1u);
        return result;
      }

      if (v35 < 64)
      {
        goto LABEL_36;
      }
    }
  }

LABEL_37:
  if (dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_42;
  }

  while (2)
  {
    v57 = 0x7FFFFFFFFFFFFFFFLL;
    v42 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v43 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v42)
    {
      if (v43 < 65)
      {
        break;
      }

      goto LABEL_40;
    }

    if (v43 >= 64)
    {
LABEL_40:
      sub_100086E78();
      v44 = v54;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v45 = *(*(v7 + 32) + 8);
      v46 = dispatch thunk of static Comparable.< infix(_:_:)();
      v33(v44, a3);
      if ((v46 & 1) == 0)
      {
        goto LABEL_47;
      }

      __break(1u);
LABEL_42:
      if (dispatch thunk of BinaryInteger.bitWidth.getter() != 64 || (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) != 0)
      {
        goto LABEL_47;
      }

      continue;
    }

    break;
  }

  dispatch thunk of BinaryInteger._lowWord.getter();
LABEL_47:
  v47 = dispatch thunk of BinaryInteger._lowWord.getter();
  v33(v13, a3);
  v48 = v47 & 7;
  if (v47 <= 0)
  {
    v48 = -(-v47 & 7);
  }

  if (v48 >= 0)
  {
    v49 = 1 << v48;
  }

  else
  {
    v49 = 0;
  }

  return (v49 & (*(v55 + v32 / 8) ^ 0xFF)) == 0;
}

uint64_t NANServiceConfiguration.description.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v17 - v7;
  v17 = a1;
  swift_getMetatypeMetadata();
  v9 = String.init<A>(describing:)();
  v11 = v10;
  v17 = 0;
  v18 = 0xE000000000000000;
  v12._countAndFlagsBits = 32;
  v12._object = 0xE100000000000000;
  String.append(_:)(v12);
  (*(a2 + 56))(a1, a2);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  (*(v5 + 8))(v8, AssociatedTypeWitness);
  v13 = v17;
  v14 = v18;
  v17 = v9;
  v18 = v11;

  v15._countAndFlagsBits = v13;
  v15._object = v14;
  String.append(_:)(v15);

  return v17;
}

void NANService.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12 - v8;
  (*(a3 + 64))(a2, a3);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v11 = (*(AssociatedConformanceWitness + 40))(AssociatedTypeWitness, AssociatedConformanceWitness);
  (*(v6 + 8))(v9, AssociatedTypeWitness);
  Hasher._combine(_:)(v11);
}

BOOL static NANService.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v17 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v12 = &v17 - v11;
  v19 = *(a4 + 64);
  v19(a3, a4);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 40);
  LOBYTE(v18) = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
  v18 = v18;
  v15 = *(v7 + 8);
  v15(v12, AssociatedTypeWitness);
  v19(v17, a4);
  LOBYTE(a4) = v14(AssociatedTypeWitness, AssociatedConformanceWitness);
  v15(v10, AssociatedTypeWitness);
  return v18 == a4;
}

uint64_t NANPeerServiceIdentifier.peerAddress.setter(uint64_t result)
{
  *(v1 + 1) = result;
  *(v1 + 3) = BYTE2(result);
  *(v1 + 4) = BYTE3(result);
  *(v1 + 5) = BYTE4(result);
  *(v1 + 6) = BYTE5(result);
  return result;
}

uint64_t NANPeerServiceIdentifier.description.getter(unint64_t a1)
{
  v5 = WiFiAddress.description.getter((a1 >> 8) & 0xFFFFFFFFFFFFLL);
  v1._countAndFlagsBits = 91;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 93;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return v5;
}

uint64_t sub_100088EF4()
{
  if (*v0)
  {
    result = 0x7264644172656570;
  }

  else
  {
    result = 0x65636E6174736E69;
  }

  *v0;
  return result;
}

uint64_t sub_100088F3C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x65636E6174736E69 && a2 == 0xEA00000000004449;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7264644172656570 && a2 == 0xEB00000000737365)
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

uint64_t sub_100089024(uint64_t a1)
{
  v2 = sub_10008A43C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100089060(uint64_t a1)
{
  v2 = sub_10008A43C();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL static NANPeerServiceIdentifier.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    return 0;
  }

  LOBYTE(v6) = BYTE1(a1);
  BYTE1(v6) = BYTE2(a1);
  BYTE2(v6) = BYTE3(a1);
  HIBYTE(v6) = BYTE4(a1);
  LOBYTE(v7) = BYTE5(a1);
  HIBYTE(v7) = BYTE6(a1);
  LOBYTE(v4) = BYTE1(a2);
  BYTE1(v4) = BYTE2(a2);
  BYTE2(v4) = BYTE3(a2);
  HIBYTE(v4) = BYTE4(a2);
  LOBYTE(v5) = BYTE5(a2);
  HIBYTE(v5) = BYTE6(a2);
  return v6 == v4 && v7 == v5;
}

uint64_t NANPeerServiceIdentifier.encode(to:)(void *a1, uint64_t a2)
{
  v5 = sub_10005DC58(&qword_10058BB88, &qword_100481090);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v12[-v8];
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10008A43C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12[9] = BYTE1(a2);
    v12[10] = BYTE2(a2);
    v12[11] = BYTE3(a2);
    v12[12] = BYTE4(a2);
    v12[13] = BYTE5(a2);
    v12[14] = BYTE6(a2);
    v12[8] = 1;
    sub_10008A490();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

void NANPeerServiceIdentifier.hash(into:)(int a1, unint64_t a2)
{
  v2 = a2 >> 8;
  v3 = a2 >> 16;
  v4 = a2 >> 24;
  v5 = HIDWORD(a2);
  v6 = a2 >> 40;
  v7 = HIWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
}

Swift::Int NANPeerServiceIdentifier.hashValue.getter(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  v3 = a1 >> 16;
  v4 = a1 >> 24;
  v5 = HIDWORD(a1);
  v6 = a1 >> 40;
  v7 = HIWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

Swift::Int sub_10008947C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

void sub_10008953C()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  v6 = v0[6];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
}

Swift::Int sub_1000895C8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

uint64_t sub_100089684()
{
  v1 = *v0;
  v6 = WiFiAddress.description.getter(*(v0 + 1) | (*(v0 + 3) << 16));
  v2._countAndFlagsBits = 91;
  v2._object = 0xE100000000000000;
  String.append(_:)(v2);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 93;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return v6;
}

uint64_t sub_100089714@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_10008A594(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
    *(a2 + 6) = BYTE6(result);
  }

  return result;
}

BOOL sub_10008979C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = *(a1 + 5);
  return *(a1 + 1) == *(a2 + 1) && *(a1 + 5) == *(a2 + 5);
}

BOOL static InternetSharingActivity.Role.__derived_enum_equals(_:_:)(__int16 a1, __int16 a2)
{
  if ((a1 & 0x100) == 0)
  {
    if ((a2 & 0x100) == 0)
    {
      return a1 == a2;
    }

    return 0;
  }

  return (a2 & 0x100) != 0;
}

void InternetSharingActivity.Role.hash(into:)(uint64_t a1, __int16 a2)
{
  if ((a2 & 0x100) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    v2 = a2;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }
}

Swift::Int InternetSharingActivity.Role.hashValue.getter(__int16 a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000898F4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

void sub_100089960()
{
  if (v0[1])
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    v1 = *v0;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }
}

Swift::Int sub_1000899AC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  return Hasher._finalize()();
}

uint64_t sub_100089A14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v3 = a1[1];
  result = a2[1];
  if ((v3 & 1) == 0)
  {
    return (*a1 == *a2) & ~result;
  }

  return result;
}

uint64_t InternetSharingActivity.init(role:active:)(__int16 a1, char a2)
{
  if (a2)
  {
    v2 = 0x10000;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 0xFFFFFE00 | a1 & 0x100 | a1;
}

uint64_t static InternetSharingActivity.__derived_struct_equals(_:_:)(int a1, int a2)
{
  if ((a1 & 0x100) != 0)
  {
    if ((a2 & 0x100) == 0)
    {
      return 0;
    }

    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  result = 0;
  if ((a2 & 0x100) == 0 && a1 == a2)
  {
    return ((a2 & 0x10000) == 0) ^ ((a1 & 0x10000u) >> 16);
  }

  return result;
}

void InternetSharingActivity.hash(into:)(uint64_t a1, int a2)
{
  if ((a2 & 0x100) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a2);
  }

  Hasher._combine(_:)(BYTE2(a2) & 1);
}

Swift::Int InternetSharingActivity.hashValue.getter(int a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x100) != 0)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(a1);
  }

  Hasher._combine(_:)(BYTE2(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_100089B78()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void sub_100089BF8()
{
  v1 = v0[2];
  if (v0[1])
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    v2 = *v0;
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v2);
  }

  Hasher._combine(_:)(v1);
}

Swift::Int sub_100089C58()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  if (v2)
  {
    Hasher._combine(_:)(1uLL);
  }

  else
  {
    Hasher._combine(_:)(0);
    Hasher._combine(_:)(v1);
  }

  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t sub_100089CD4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a2[1];
  if (a1[1])
  {
    if (!a2[1])
    {
      return 0;
    }
  }

  else
  {
    if (*a1 != *a2)
    {
      v2 = 1;
    }

    if (v2)
    {
      return 0;
    }
  }

  return a1[2] ^ a2[2] ^ 1u;
}

BOOL MulticastServiceType.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100555FA0, v2);

  return v3 != 0;
}

Swift::Int sub_100089D84()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_100089DF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100089E4C@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_100555070, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t MulticastConfiguration.multicastAddress.setter(uint64_t result)
{
  *v1 = result;
  *(v1 + 4) = WORD2(result);
  *(v1 + 6) = BYTE6(result) & 1;
  return result;
}

unint64_t MulticastConfiguration.init(apiMulticastConfiguration:)(void *a1)
{
  v2 = [a1 multicastAddress];
  if (v2)
  {
    v3 = WiFiMACAddress.wifiAddress.getter();

    v4 = v3 & 0xFFFFFFFFFFFFLL;
  }

  else
  {
    v4 = 0;
  }

  v8 = v2 == 0;
  v5 = [a1 dynamicLinkRate];

  v6 = 0x100000000000000;
  if (!v5)
  {
    v6 = 0;
  }

  return v6 | (v8 << 48) | v4;
}

void MulticastConfiguration.hash(into:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000) != 0)
  {
    LOBYTE(v3) = 0;
  }

  else
  {
    v3 = a2 >> 40;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a2);
    Hasher._combine(_:)(BYTE1(a2));
    Hasher._combine(_:)(BYTE2(a2));
    Hasher._combine(_:)(BYTE3(a2));
    Hasher._combine(_:)(BYTE4(a2));
  }

  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(HIBYTE(a2) & 1);
}

Swift::Int MulticastConfiguration.hashValue.getter(unint64_t a1)
{
  Hasher.init(_seed:)();
  if ((a1 & 0x1000000000000) != 0)
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v2 = a1 >> 40;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(a1);
    Hasher._combine(_:)(BYTE1(a1));
    Hasher._combine(_:)(BYTE2(a1));
    Hasher._combine(_:)(BYTE3(a1));
    Hasher._combine(_:)(BYTE4(a1));
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(HIBYTE(a1) & 1);
  return Hasher._finalize()();
}

Swift::Int sub_10008A208()
{
  v1 = 0x100000000000000;
  if (!*(v0 + 7))
  {
    v1 = 0;
  }

  return MulticastConfiguration.hashValue.getter(v1 | (*(v0 + 6) << 48) | *v0 | (*(v0 + 2) << 32));
}

void sub_10008A244()
{
  v1 = *(v0 + 7);
  if (*(v0 + 6))
  {
    LOBYTE(v2) = 0;
  }

  else
  {
    v3 = *(v0 + 2);
    v4 = *v0;
    v5 = *v0 | (*(v0 + 2) << 32);
    v6 = v5 >> 8;
    v7 = v5 >> 16;
    v8 = v5 >> 24;
    v2 = v3 >> 8;
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v4);
    Hasher._combine(_:)(v6);
    Hasher._combine(_:)(v7);
    Hasher._combine(_:)(v8);
    Hasher._combine(_:)(v3);
  }

  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v1);
}

Swift::Int sub_10008A2F4()
{
  v1 = *(v0 + 2);
  v2 = *v0;
  v3 = *(v0 + 6);
  v4 = *(v0 + 7);
  Hasher.init(_seed:)();
  if (v3)
  {
    v5 = 0;
  }

  else
  {
    v6 = v2 | (v1 << 32);
    v5 = BYTE5(v6);
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
    Hasher._combine(_:)(BYTE1(v6));
    Hasher._combine(_:)(BYTE2(v6));
    Hasher._combine(_:)(BYTE3(v6));
    Hasher._combine(_:)(BYTE4(v6));
  }

  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t sub_10008A3D4(unsigned int *a1, unsigned int *a2)
{
  v2 = 0x100000000000000;
  if (*(a1 + 7))
  {
    v3 = 0x100000000000000;
  }

  else
  {
    v3 = 0;
  }

  v5 = *(a2 + 6);
  if (!*(a2 + 7))
  {
    v2 = 0;
  }

  return sub_10008A4E4(v3 | (*(a1 + 6) << 48) | *a1 | (*(a1 + 2) << 32), v2 | (*(a2 + 6) << 48) | *a2 | (*(a2 + 2) << 32));
}

unint64_t sub_10008A43C()
{
  result = qword_10058BB90;
  if (!qword_10058BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BB90);
  }

  return result;
}

unint64_t sub_10008A490()
{
  result = qword_10058BB98;
  if (!qword_10058BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BB98);
  }

  return result;
}

uint64_t sub_10008A4E4(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0x1000000000000) != 0)
  {
    if ((a2 & 0x1000000000000) == 0)
    {
      return 0;
    }
  }

  else
  {
    if ((a2 & 0x1000000000000) != 0)
    {
      return 0;
    }

    LOBYTE(v5) = BYTE4(a1);
    HIBYTE(v5) = BYTE5(a1);
    LOBYTE(v4) = BYTE4(a2);
    HIBYTE(v4) = BYTE5(a2);
    if (a1 != a2 || v5 != v4)
    {
      return 0;
    }
  }

  return HIBYTE(a1) & 1 ^ ((a2 & 0x100000000000000) == 0);
}

uint64_t sub_10008A594(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058BBE8, &qword_100481660);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v14[-v6];
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10008A43C();
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

unint64_t sub_10008A768()
{
  result = qword_10058BBA0;
  if (!qword_10058BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBA0);
  }

  return result;
}

unint64_t sub_10008A7C0()
{
  result = qword_10058BBA8;
  if (!qword_10058BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBA8);
  }

  return result;
}

unint64_t sub_10008A818()
{
  result = qword_10058BBB0;
  if (!qword_10058BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBB0);
  }

  return result;
}

unint64_t sub_10008A870()
{
  result = qword_10058BBB8;
  if (!qword_10058BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBB8);
  }

  return result;
}

unint64_t sub_10008A8C8()
{
  result = qword_10058BBC0;
  if (!qword_10058BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBC0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for InternetSharingActivity(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF)
  {
    if ((a2 + 33554177) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return (*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776961;
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 >= 2;
  v6 = (v4 + 2147483646) & 0x7FFFFFFF;
  if (!v5)
  {
    v6 = -1;
  }

  return (v6 + 1);
}

uint64_t storeEnumTagSinglePayload for InternetSharingActivity(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554177) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFE)
  {
    v3 = 0;
  }

  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 2) = (a2 - 255) >> 16;
    if (v3)
    {
      v4 = ((a2 - 255) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 1;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for NANMapIDs(unsigned __int16 *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  v2 = a2 + 0xFFFF;
  if ((a2 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (v2 < 0xFF0000)
  {
    v3 = 1;
  }

  if (v2 >= 0x10000)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      return v4;
    }

    v4 = *(a1 + 2);
    if (!*(a1 + 2))
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  if (v4 == 2)
  {
    v4 = a1[1];
    if (!a1[1])
    {
      return v4;
    }

    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  v4 = *(a1 + 1);
  if (v4)
  {
    return (*a1 | (v4 << 16)) - 0xFFFF;
  }

  return v4;
}

_WORD *storeEnumTagSinglePayload for NANMapIDs(_WORD *result, int a2, int a3)
{
  v3 = a3 + 0xFFFF;
  if ((a3 + 0xFFFF) <= 0xFFFEFFFF)
  {
    v4 = 2;
  }

  else
  {
    v4 = 4;
  }

  if (v3 < 0xFF0000)
  {
    v4 = 1;
  }

  if (v3 >= 0x10000)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (!a3)
  {
    v5 = 0;
  }

  if (a2)
  {
    v6 = ((a2 - 1) >> 16) + 1;
    *result = a2 - 1;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        result[1] = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 2) = v6;
    }
  }

  else if (v5 > 1)
  {
    if (v5 == 2)
    {
      result[1] = 0;
    }

    else
    {
      *(result + 1) = 0;
    }
  }

  else if (v5)
  {
    *(result + 2) = 0;
  }

  return result;
}

uint64_t sub_10008AB6C(unsigned __int8 *a1)
{
  if (a1[1])
  {
    return (*a1 | (a1[1] << 8)) - 255;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_10008AB8C(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 - 1;
    result[1] = ((a2 - 1) >> 8) + 1;
  }

  else
  {
    result[1] = 0;
  }

  return result;
}

_WORD *storeEnumTagSinglePayload for MulticastServiceType(_WORD *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MulticastConfiguration(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 8))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 7);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for MulticastConfiguration(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *(result + 7) = a2 + 1;
    }
  }

  return result;
}

uint64_t storeEnumTagSinglePayload for Layer3Protocol(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
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
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10008ADB4()
{
  result = qword_10058BBC8;
  if (!qword_10058BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBC8);
  }

  return result;
}

unint64_t sub_10008AE0C()
{
  result = qword_10058BBD0;
  if (!qword_10058BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBD0);
  }

  return result;
}

unint64_t sub_10008AE64()
{
  result = qword_10058BBD8;
  if (!qword_10058BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBD8);
  }

  return result;
}

unint64_t sub_10008AEB8()
{
  result = qword_10058BBE0;
  if (!qword_10058BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058BBE0);
  }

  return result;
}

uint64_t Either<>.description.getter(uint64_t a1)
{
  v2 = *(a1 + 24);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin();
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v5 + 16);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin();
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*(v11 - 8) + 64);
  __chkstk_darwin();
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v17 + 16))(v16, v18, a1);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v3 + 32))(v7, v16, v2);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v3 + 8))(v7, v2);
  }

  else
  {
    (*(v9 + 32))(v13, v16, v8);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    (*(v9 + 8))(v13, v8);
  }

  return v19;
}

uint64_t sub_10008B188(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 - 16);
  v3 = *(a2 - 8);
  return Either<>.description.getter(a1);
}

uint64_t Either.customMirror.getter(uint64_t a1)
{
  v1 = *(a1 + 24);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  v4 = __chkstk_darwin();
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 16);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin();
  v12 = v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*(v10 - 8) + 64);
  __chkstk_darwin();
  v15 = v20 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v16 + 16))(v15);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v2 + 32))(v6, v15, v1);
    v21 = v1;
    v17 = sub_1000297D4(v20);
    (*(v2 + 16))(v17, v6, v1);
    Mirror.init(reflecting:)();
    return (*(v2 + 8))(v6, v1);
  }

  else
  {
    (*(v8 + 32))(v12, v15, v7);
    v21 = v7;
    v19 = sub_1000297D4(v20);
    (*(v8 + 16))(v19, v12, v7);
    Mirror.init(reflecting:)();
    return (*(v8 + 8))(v12, v7);
  }
}

uint64_t static Either<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v46 = a5;
  v47 = a6;
  v53 = a1;
  v54 = a2;
  v51 = *(a4 - 8);
  v7 = *(v51 + 64);
  __chkstk_darwin();
  v45 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v49 = &v43 - v9;
  v50 = *(v10 - 8);
  v11 = *(v50 + 64);
  __chkstk_darwin();
  v44 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v43 = &v43 - v13;
  v52 = v14;
  v15 = type metadata accessor for Either();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin();
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v21 = &v43 - v20;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v48 = *(TupleTypeMetadata2 - 8);
  v23 = *(v48 + 64);
  v24 = __chkstk_darwin();
  v26 = &v43 - v25;
  v27 = *(v24 + 48);
  v28 = *(v16 + 16);
  v28(&v43 - v25, v53, v15);
  v28(&v26[v27], v54, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    v28(v21, v26, v15);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v36 = v50;
      v37 = *(v50 + 32);
      v38 = v43;
      v37(v43, v21, a3);
      v39 = v44;
      v37(v44, &v26[v27], a3);
      v40 = v38;
      v34 = dispatch thunk of static Equatable.== infix(_:_:)();
      v41 = *(v36 + 8);
      v41(v39, a3);
      v41(v40, a3);
      goto LABEL_9;
    }

    (*(v50 + 8))(v21, a3);
    goto LABEL_7;
  }

  v28(v19, v26, v15);
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    (*(v51 + 8))(v19, v52);
LABEL_7:
    v34 = 0;
    v16 = v48;
    v15 = TupleTypeMetadata2;
    goto LABEL_9;
  }

  v30 = v51;
  v29 = v52;
  v31 = *(v51 + 32);
  v31(v49, v19, v52);
  v32 = v45;
  v31(v45, &v26[v27], v29);
  v33 = v49;
  v34 = dispatch thunk of static Equatable.== infix(_:_:)();
  v35 = *(v30 + 8);
  v35(v32, v29);
  v35(v33, v29);
LABEL_9:
  (*(v16 + 8))(v26, v15);
  return v34 & 1;
}

uint64_t Either<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v23[1] = a4;
  v5 = *(a2 + 24);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v10 + 16);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin();
  v19 = v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v20 + 16))(v19, v21, a2);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    (*(v6 + 32))(v9, v19, v5);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v6 + 8))(v9, v5);
  }

  else
  {
    (*(v12 + 32))(v15, v19, v11);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v12 + 8))(v15, v11);
  }
}

Swift::Int Either<>.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a1, a2, a3);
  return Hasher._finalize()();
}

Swift::Int sub_10008BBF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 16);
  v4 = *(a3 - 8);
  Hasher.init(_seed:)();
  Either<>.hash(into:)(v7, a2, v4, v5);
  return Hasher._finalize()();
}

uint64_t sub_10008BC60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(*(a3 - 8) + 8);
  v5 = *(*(a3 - 16) + 8);
  return swift_getWitnessTable();
}

uint64_t sub_10008BCAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = swift_checkMetadataState();
  if (v4 <= 0x3F)
  {
    v5 = *(a1 + 24);
    result = swift_checkMetadataState();
    if (v6 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_10008BD28(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 254) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 2)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 255;
}

void sub_10008BE50(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFF)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 254) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFE)
  {
    v8 = a2 - 255;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_10008C018(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC00000073707041;
  v3 = a1;
  if (a1 <= 3u)
  {
    v11 = 0x6269726373627573;
    v12 = 0xEE00746E756F4365;
    if (a1 != 2)
    {
      v11 = 0xD000000000000016;
      v12 = 0x80000001004B7050;
    }

    v13 = 0x436873696C627570;
    v14 = 0xEC000000746E756FLL;
    if (!a1)
    {
      v13 = 0x664F7265626D756ELL;
      v14 = 0xEC00000073707041;
    }

    if (a1 <= 1u)
    {
      v9 = v13;
    }

    else
    {
      v9 = v11;
    }

    if (v3 <= 1)
    {
      v10 = v14;
    }

    else
    {
      v10 = v12;
    }
  }

  else
  {
    v4 = 0x80000001004B70B0;
    v5 = 0xD000000000000013;
    v6 = 0x80000001004B70D0;
    if (a1 != 7)
    {
      v6 = 0x80000001004B70F0;
    }

    if (a1 != 6)
    {
      v5 = 0xD00000000000001BLL;
      v4 = v6;
    }

    v7 = 0x80000001004B7070;
    v8 = 0xD000000000000011;
    if (a1 == 4)
    {
      v8 = 0xD000000000000016;
    }

    else
    {
      v7 = 0x80000001004B7090;
    }

    if (a1 <= 5u)
    {
      v9 = v8;
    }

    else
    {
      v9 = v5;
    }

    if (v3 <= 5)
    {
      v10 = v7;
    }

    else
    {
      v10 = v4;
    }
  }

  if (a2 <= 3u)
  {
    if (a2 > 1u)
    {
      if (a2 != 2)
      {
        v16 = "datapathInitiatorCount";
LABEL_44:
        v2 = (v16 - 32) | 0x8000000000000000;
        if (v9 != 0xD000000000000016)
        {
          goto LABEL_52;
        }

        goto LABEL_50;
      }

      v2 = 0xEE00746E756F4365;
      if (v9 != 0x6269726373627573)
      {
        goto LABEL_52;
      }
    }

    else if (a2)
    {
      v2 = 0xEC000000746E756FLL;
      if (v9 != 0x436873696C627570)
      {
        goto LABEL_52;
      }
    }

    else if (v9 != 0x664F7265626D756ELL)
    {
      goto LABEL_52;
    }
  }

  else
  {
    if (a2 > 5u)
    {
      if (a2 == 6)
      {
        v2 = 0x80000001004B70B0;
        if (v9 != 0xD000000000000013)
        {
          goto LABEL_52;
        }
      }

      else
      {
        if (a2 == 7)
        {
          v15 = "concurrentDatapathInitiator";
        }

        else
        {
          v15 = "concurrentDatapathResponder";
        }

        v2 = (v15 - 32) | 0x8000000000000000;
        if (v9 != 0xD00000000000001BLL)
        {
          goto LABEL_52;
        }
      }

      goto LABEL_50;
    }

    if (a2 == 4)
    {
      v16 = "datapathResponderCount";
      goto LABEL_44;
    }

    v2 = 0x80000001004B7090;
    if (v9 != 0xD000000000000011)
    {
LABEL_52:
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      goto LABEL_53;
    }
  }

LABEL_50:
  if (v10 != v2)
  {
    goto LABEL_52;
  }

  v17 = 1;
LABEL_53:

  return v17 & 1;
}

uint64_t sub_10008C2D8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  v3 = 0xE700000000000000;
  v4 = 0xD000000000000011;
  v5 = 0x80000001004B5FF0;
  if (a1 != 5)
  {
    v4 = 0x44495353656D6173;
    v5 = 0xE800000000000000;
  }

  v6 = 0xE500000000000000;
  v7 = 0x424453796DLL;
  if (a1 != 3)
  {
    v7 = 0x42445372656570;
    v6 = 0xE700000000000000;
  }

  if (a1 <= 4u)
  {
    v4 = v7;
    v5 = v6;
  }

  v8 = 0xE700000000000000;
  v9 = 0x6172666E49796DLL;
  if (a1 != 1)
  {
    v9 = 0x72666E4972656570;
    v8 = 0xE900000000000061;
  }

  if (a1)
  {
    v3 = v8;
  }

  else
  {
    v9 = 0x65636976726573;
  }

  if (a1 <= 2u)
  {
    v10 = v9;
  }

  else
  {
    v10 = v4;
  }

  if (v2 <= 2)
  {
    v11 = v3;
  }

  else
  {
    v11 = v5;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v12 = 0xE700000000000000;
        if (v10 != 0x6172666E49796DLL)
        {
          goto LABEL_39;
        }
      }

      else
      {
        v12 = 0xE900000000000061;
        if (v10 != 0x72666E4972656570)
        {
          goto LABEL_39;
        }
      }
    }

    else
    {
      v12 = 0xE700000000000000;
      if (v10 != 0x65636976726573)
      {
        goto LABEL_39;
      }
    }
  }

  else if (a2 > 4u)
  {
    if (a2 == 5)
    {
      v12 = 0x80000001004B5FF0;
      if (v10 != 0xD000000000000011)
      {
        goto LABEL_39;
      }
    }

    else
    {
      v12 = 0xE800000000000000;
      if (v10 != 0x44495353656D6173)
      {
LABEL_39:
        v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
        goto LABEL_40;
      }
    }
  }

  else if (a2 == 3)
  {
    v12 = 0xE500000000000000;
    if (v10 != 0x424453796DLL)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v12 = 0xE700000000000000;
    if (v10 != 0x42445372656570)
    {
      goto LABEL_39;
    }
  }

  if (v11 != v12)
  {
    goto LABEL_39;
  }

  v13 = 1;
LABEL_40:

  return v13 & 1;
}

uint64_t sub_10008C504(char a1, char a2)
{
  if (qword_100482218[a1] == qword_100482218[a2])
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

uint64_t sub_10008C56C(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEF74696D736E6172;
  v3 = 0x546873696C627570;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    else
    {
      v5 = 0xD000000000000011;
    }

    if (v4)
    {
      v6 = 0x80000001004B6420;
    }

    else
    {
      v6 = 0x80000001004B6400;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x546873696C627570;
    v6 = 0xEF74696D736E6172;
  }

  else if (a1 == 3)
  {
    v5 = 0x526873696C627570;
    v6 = 0xEE00657669656365;
  }

  else
  {
    v5 = 0x73655265676E6172;
    v6 = 0xED000065736E6F70;
  }

  v7 = 0x526873696C627570;
  v8 = 0xEE00657669656365;
  if (a2 != 3)
  {
    v7 = 0x73655265676E6172;
    v8 = 0xED000065736E6F70;
  }

  if (a2 != 2)
  {
    v3 = v7;
    v2 = v8;
  }

  v9 = 0xD000000000000011;
  v10 = 0x80000001004B6420;
  if (a2)
  {
    v9 = 0xD000000000000010;
  }

  else
  {
    v10 = 0x80000001004B6400;
  }

  if (a2 <= 1u)
  {
    v11 = v9;
  }

  else
  {
    v11 = v3;
  }

  if (a2 <= 1u)
  {
    v12 = v10;
  }

  else
  {
    v12 = v2;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10008C738(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEC000000796C6E4FLL;
  v3 = 0x656C626172696170;
  v4 = a1;
  if (a1 > 1u)
  {
    if (a1 == 2)
    {
      v5 = 0x6972696150796E61;
    }

    else
    {
      v5 = 7105633;
    }

    if (v4 == 2)
    {
      v6 = 0xEA0000000000676ELL;
    }

    else
    {
      v6 = 0xE300000000000000;
    }
  }

  else
  {
    if (a1)
    {
      v5 = 0x6E4F646572696170;
    }

    else
    {
      v5 = 0x656C626172696170;
    }

    if (v4)
    {
      v6 = 0xEA0000000000796CLL;
    }

    else
    {
      v6 = 0xEC000000796C6E4FLL;
    }
  }

  v7 = 0x6972696150796E61;
  v8 = 0xEA0000000000676ELL;
  if (a2 != 2)
  {
    v7 = 7105633;
    v8 = 0xE300000000000000;
  }

  if (a2)
  {
    v3 = 0x6E4F646572696170;
    v2 = 0xEA0000000000796CLL;
  }

  if (a2 <= 1u)
  {
    v9 = v3;
  }

  else
  {
    v9 = v7;
  }

  if (a2 <= 1u)
  {
    v10 = v2;
  }

  else
  {
    v10 = v8;
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

uint64_t sub_10008C880(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0xEE00657275746375;
  v3 = 0x7274736172666E69;
  v4 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 1818523489;
    }

    else
    {
      v5 = 0x7274736172666E69;
    }

    if (v4)
    {
      v6 = 0xE400000000000000;
    }

    else
    {
      v6 = 0xEE00657275746375;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0x67616E614D6E616ELL;
    v6 = 0xED0000746E656D65;
  }

  else
  {
    if (a1 == 3)
    {
      v5 = 0x617461446E616ELL;
    }

    else
    {
      v5 = 0x6E6574614C776F6CLL;
    }

    if (v4 == 3)
    {
      v6 = 0xE700000000000000;
    }

    else
    {
      v6 = 0xEA00000000007963;
    }
  }

  v7 = 0x67616E614D6E616ELL;
  v8 = 0xED0000746E656D65;
  v9 = 0xE700000000000000;
  v10 = 0x617461446E616ELL;
  if (a2 != 3)
  {
    v10 = 0x6E6574614C776F6CLL;
    v9 = 0xEA00000000007963;
  }

  if (a2 != 2)
  {
    v7 = v10;
    v8 = v9;
  }

  if (a2)
  {
    v3 = 1818523489;
    v2 = 0xE400000000000000;
  }

  if (a2 <= 1u)
  {
    v11 = v3;
  }

  else
  {
    v11 = v7;
  }

  if (a2 <= 1u)
  {
    v12 = v2;
  }

  else
  {
    v12 = v8;
  }

  if (v5 == v11 && v6 == v12)
  {
    v13 = 1;
  }

  else
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v13 & 1;
}

uint64_t sub_10008CA1C(uint64_t a1, uint64_t a2, int a3, int a4, int a5)
{
  v30 = a3;
  v31 = a5;
  v7 = type metadata accessor for Logger();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin();
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = (v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName);
  *v11 = 0;
  v11[1] = 0;
  v12 = (v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
  *v12 = 0;
  v12[1] = 0;
  v13 = v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer;
  *v13 = 0;
  *(v13 + 8) = 0;
  *(v13 + 16) = 1;
  v32 = 0;
  v14 = Apple80211Open();
  if (v14 || (v21 = v32) == 0)
  {

LABEL_3:
    sub_10000B02C();
    swift_allocError();
    *v15 = v14;
    *(v15 + 8) = 0;
    *(v15 + 16) = 0;
    swift_willThrow();
    v16 = *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName + 8);

    v17 = *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
    sub_100010520(*(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler));
    type metadata accessor for AppleDevice.InterfaceHandle(0);
    v18 = *(*v5 + 48);
    v19 = *(*v5 + 52);
    swift_deallocPartialClassInstance();
    return v5;
  }

  v22 = String._bridgeToObjectiveC()();

  v14 = Apple80211BindToInterfaceWithService();

  if (v14)
  {
    Apple80211Close();
    goto LABEL_3;
  }

  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service) = a4;
  v23 = v31;
  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role) = v31;
  Logger.init(subsystem:category:)();
  (*(v29 + 32))(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_logger, v10, v7);
  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference) = v21;
  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_interfaceIndex) = v30;
  if (v23 - 2 >= 2)
  {
    if (v23 == 1)
    {
      if (qword_10058AA30 != -1)
      {
        swift_once();
      }

      v24 = &static OS_dispatch_queue.awdl;
    }

    else
    {
      if (qword_10058AA38 != -1)
      {
        swift_once();
      }

      v24 = &static OS_dispatch_queue.p2p;
    }
  }

  else
  {
    if (qword_10058AA28 != -1)
    {
      swift_once();
    }

    v24 = &static OS_dispatch_queue.nan;
  }

  v25 = *v24;
  *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue) = v25;
  v26 = *(v5 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service);
  v27 = v25;
  IOObjectRetain(v26);
  return v5;
}

void sub_10008CE30()
{
  v1 = (v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
  if (*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler))
  {
    __break(1u);
  }

  else
  {
    IOObjectRelease(*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_service));
    v2 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference);
    Apple80211Close();
    if ((*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer + 16) & 1) == 0)
    {
      if (*(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer))
      {
      }
    }

    v3 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_logger;
    v4 = type metadata accessor for Logger();
    (*(*(v4 - 8) + 8))(v0 + v3, v4);
    v5 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_parentInterfaceName + 8);

    v6 = v1[1];
    sub_100010520(*v1);
  }
}

uint64_t sub_10008CF3C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = (&v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v43 = a2;
  v13 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue;
  if (a1)
  {
    v14 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    v15 = a1;
  }

  else
  {
    v14 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    v15 = v14;
  }

  *&v13[v4] = v15;
  v16 = v15;
  v17 = a1;

  *v12 = v16;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v18 = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if ((v18 & 1) == 0)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v19 = (v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer);
  if ((*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventBuffer + 16) & 1) == 0 && *v19)
  {
  }

  v12 = swift_slowAlloc();
  v16 = v12 + 256;
  *v19 = v12;
  *(v19 + 1) = v12 + 256;
  v19[16] = 0;
  v20 = OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role;
  if (*(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role) > 1u || *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_role))
  {
    v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v21 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else
  {
  }

  v18 = *&v13[v4];
  v22 = *(v4 + v20);
  if ((v22 - 2) < 2)
  {
    v23 = qword_10058AA28;
    v24 = v18;
    if (v23 == -1)
    {
LABEL_14:
      v25 = &static OS_dispatch_queue.nan;
      goto LABEL_22;
    }

LABEL_39:
    swift_once();
    goto LABEL_14;
  }

  if (v22 == 1)
  {
    v26 = qword_10058AA30;
    v27 = v18;
    if (v26 != -1)
    {
      swift_once();
    }

    v25 = &static OS_dispatch_queue.awdl;
  }

  else
  {
    v28 = qword_10058AA38;
    v29 = v18;
    if (v28 != -1)
    {
      swift_once();
    }

    v25 = &static OS_dispatch_queue.p2p;
  }

LABEL_22:
  v30 = *v25;
  sub_100018AB4(0, &qword_100599470, NSObject_ptr);
  v31 = v30;
  v32 = static NSObject.== infix(_:_:)();

  if (v32)
  {
    v33 = sub_10008D42C;
    v34 = 1;
    goto LABEL_25;
  }

LABEL_24:
  v34 = 0;
  v33 = sub_10008D44C;
LABEL_25:
  v18 = *(v4 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference);
  v35 = *&v13[v4];
  v4 = swift_allocObject();
  *(v4 + 16) = v43;
  *(v4 + 24) = a3;
  *(v4 + 32) = v12;
  *(v4 + 40) = v16;
  v13 = v35;

  v36 = v33(v18, v35, sub_100002DDC, v4);

  if (v36)
  {
    LODWORD(result) = v36;
LABEL_27:
    v38 = result;
    sub_10000B02C();
    swift_allocError();
    *v39 = v38;
    *(v39 + 8) = 0;
    *(v39 + 16) = 0;
    return swift_willThrow();
  }

  else if (v34)
  {
    v40 = 0;
    while (v40 != 120)
    {
      v41 = *(&off_100555FD8 + v40 + 32);
      if ((v41 & 0x8000000000000000) != 0)
      {
        __break(1u);
LABEL_37:
        __break(1u);
        goto LABEL_38;
      }

      if (HIDWORD(v41))
      {
        goto LABEL_37;
      }

      result = Apple80211StartMonitoringEvent();
      v40 += 8;
      if (result)
      {
        goto LABEL_27;
      }
    }
  }

  return result;
}

uint64_t sub_10008D46C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, void *))
{
  if (a3)
  {
    v12[4] = a3;
    v12[5] = a4;
    v12[0] = _NSConcreteStackBlock;
    v12[1] = 1107296256;
    v12[2] = sub_100002B8C;
    v12[3] = a5;
    v7 = a1;
    v8 = a2;
    v9 = _Block_copy(v12);

    a1 = v7;
    a2 = v8;
  }

  else
  {
    v9 = 0;
  }

  v10 = a6(a1, a2, v9);
  _Block_release(v9);
  return v10;
}

uint64_t sub_10008D540()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = (&v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  LOBYTE(v6) = _dispatchPreconditionTest(_:)();
  result = (*(v2 + 8))(v5, v1);
  if (v6)
  {
    v9 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_reference);
    Apple80211EventMonitoringHalt();
    v10 = (v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
    v11 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
    v12 = *(v0 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
    *v10 = 0;
    v10[1] = 0;
    return sub_100010520(v11);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10008D678(void (*a1)(_BYTE *), uint64_t a2)
{
  v3 = v2;
  v6 = *(*(type metadata accessor for DriverEvent(0) - 8) + 64);
  __chkstk_darwin();
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchPredicate();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  result = __chkstk_darwin();
  v14 = (&v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (a1)
  {
    v15 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_queue);
    *v14 = v15;
    (*(v10 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v9);
    sub_10001F89C(a1);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    result = (*(v10 + 8))(v14, v9);
    if (v15)
    {
      v17 = swift_allocObject();
      *(v17 + 16) = a1;
      *(v17 + 24) = a2;

      sub_10008CF3C(0, sub_1000B2C04, v17);

      v18 = (v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      v19 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler);
      v20 = *(v3 + OBJC_IVAR____TtCC7CoreP2P11AppleDeviceP33_31FB922BC8C13D419BA8418A9FE51E1A15InterfaceHandle_eventHandler + 8);
      *v18 = a1;
      v18[1] = a2;

      sub_100010520(v19);
      *v8 = 3;
      swift_storeEnumTagMultiPayload();
      a1(v8);
      sub_100010520(a1);
      return sub_100012468(v8, type metadata accessor for DriverEvent);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

void sub_10008DA5C()
{
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  *(v0 + 16);
  *(v0 + 16);
  String.hash(into:)();

  if (v0[4])
  {
    v3 = v0[3];
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int sub_10008DB9C()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  *(v0 + 16);
  *(v0 + 16);
  String.hash(into:)();

  if (v0[4])
  {
    v3 = v0[3];
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

Swift::Int sub_10008DCE0()
{
  v4 = v0[2];
  v5 = v0[3];
  v6 = *(v0 + 8);
  v2 = *v0;
  v3 = v0[1];
  return sub_10008DB9C();
}

void sub_10008DD24()
{
  v3 = v0[2];
  v4 = v0[3];
  v5 = *(v0 + 8);
  v1 = *v0;
  v2 = v0[1];
  sub_10008DA5C();
}

Swift::Int sub_10008DD68()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  v4 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();

  if (v5)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t sub_10008DEB0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v5 = *(a2 + 16);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v8 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (sub_10008C880(v2, v5) & 1) == 0)
  {
    return 0;
  }

  result = (v4 | v7) == 0;
  if (v4 && v7)
  {
    if (v3 == v6 && v4 == v7)
    {
      return 1;
    }

    else
    {

      return _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  return result;
}