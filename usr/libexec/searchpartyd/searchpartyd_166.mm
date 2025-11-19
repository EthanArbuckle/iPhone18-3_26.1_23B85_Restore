uint64_t sub_10111E888(uint64_t a1)
{
  v2 = type metadata accessor for BeaconIdentifier();
  v21 = *(v2 - 8);
  v3 = *(v21 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v21 - v8;
  __chkstk_darwin(v7);
  v11 = &v21 - v10;
  v12 = *(a1 + 16);
  sub_100009894(&qword_1016C8D90, type metadata accessor for BeaconIdentifier);
  result = Set.init(minimumCapacity:)();
  v14 = 0;
  v22 = result;
  v15 = 1 << *(a1 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a1 + 64);
  for (i = (v15 + 63) >> 6; v17; result = sub_10112BDD4(v9, type metadata accessor for BeaconIdentifier))
  {
    v19 = v14;
LABEL_9:
    v20 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    sub_10112BD6C(*(a1 + 48) + *(v21 + 72) * (v20 | (v19 << 6)), v11, type metadata accessor for BeaconIdentifier);
    sub_10112BC34(v11, v6, type metadata accessor for BeaconIdentifier);
    sub_100DEFD8C(v9, v6);
  }

  while (1)
  {
    v19 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v19 >= i)
    {

      return v22;
    }

    v17 = *(a1 + 64 + 8 * v19);
    ++v14;
    if (v17)
    {
      v14 = v19;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10111EACC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v7 = Hasher._finalize()();
  v8 = -1 << *(a3 + 32);
  v9 = v7 & ~v8;
  if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
  {
    return 0;
  }

  v10 = ~v8;
  while (1)
  {
    v11 = (*(a3 + 48) + 16 * v9);
    v12 = *v11 == a1 && v11[1] == a2;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 = (v9 + 1) & v10;
    if (((*(a3 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10111EBC4(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (*(a3 + 16))
  {
    v6 = *(a3 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    v7 = Hasher._finalize()();
    v8 = a3 + 56;
    v9 = -1 << *(a3 + 32);
    v10 = v7 & ~v9;
    if ((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
    {
      v11 = ~v9;
      if (a1)
      {
        v12 = 0;
      }

      else
      {
        v12 = a2 == 0xC000000000000000;
      }

      v13 = !v12;
      v43 = v13;
      v14 = a2 >> 62;
      v15 = __OFSUB__(HIDWORD(a1), a1);
      v40 = v15;
      v38 = a2;
      v39 = HIDWORD(a1) - a1;
      v41 = v11;
      v42 = BYTE6(a2);
      v37 = a1;
      while (1)
      {
        v16 = (*(a3 + 48) + 16 * v10);
        v18 = *v16;
        v17 = v16[1];
        v19 = v17 >> 62;
        if (v17 >> 62 == 3)
        {
          break;
        }

        if (v19 > 1)
        {
          if (v19 != 2)
          {
            goto LABEL_37;
          }

          v25 = *(v18 + 16);
          v24 = *(v18 + 24);
          v26 = __OFSUB__(v24, v25);
          v23 = v24 - v25;
          if (v26)
          {
            goto LABEL_67;
          }

          if (v14 <= 1)
          {
            goto LABEL_34;
          }
        }

        else if (v19)
        {
          LODWORD(v23) = HIDWORD(v18) - v18;
          if (__OFSUB__(HIDWORD(v18), v18))
          {
            goto LABEL_68;
          }

          v23 = v23;
          if (v14 <= 1)
          {
LABEL_34:
            v27 = v42;
            if (v14)
            {
              v27 = v39;
              if (v40)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_40;
          }
        }

        else
        {
          v23 = BYTE6(v17);
          if (v14 <= 1)
          {
            goto LABEL_34;
          }
        }

LABEL_38:
        if (v14 != 2)
        {
          if (!v23)
          {
            return 1;
          }

          goto LABEL_14;
        }

        v29 = *(a1 + 16);
        v28 = *(a1 + 24);
        v26 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v26)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
LABEL_69:
          __break(1u);
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
        }

LABEL_40:
        if (v23 == v27)
        {
          if (v23 < 1)
          {
            return 1;
          }

          if (v19 <= 1)
          {
            if (!v19)
            {
              *v45 = v18;
              *&v45[8] = v17;
              v45[10] = BYTE2(v17);
              v45[11] = BYTE3(v17);
              v45[12] = BYTE4(v17);
              v45[13] = BYTE5(v17);
              sub_100017D5C(v18, v17);
              sub_100771A28(v45, a1, a2, v44);
              sub_100016590(v18, v17);
              if (v44[0])
              {
                return 1;
              }

LABEL_61:
              v11 = v41;
              goto LABEL_14;
            }

            if (v18 >> 32 < v18)
            {
              goto LABEL_69;
            }

            sub_100017D5C(v18, v17);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v34 = __DataStorage._offset.getter();
              if (__OFSUB__(v18, v34))
              {
                goto LABEL_72;
              }

              v32 += v18 - v34;
            }

LABEL_59:
            __DataStorage._length.getter();
            v35 = v32;
            a1 = v37;
            a2 = v38;
            sub_100771A28(v35, v37, v38, v45);
            sub_100016590(v18, v17);
            if (v45[0])
            {
              return 1;
            }

            v8 = a3 + 56;
            goto LABEL_61;
          }

          if (v19 == 2)
          {
            v31 = *(v18 + 16);
            v30 = *(v18 + 24);
            sub_100017D5C(v18, v17);
            v32 = __DataStorage._bytes.getter();
            if (v32)
            {
              v33 = __DataStorage._offset.getter();
              if (__OFSUB__(v31, v33))
              {
                goto LABEL_71;
              }

              v32 += v31 - v33;
            }

            if (__OFSUB__(v30, v31))
            {
              goto LABEL_70;
            }

            goto LABEL_59;
          }

          *&v45[6] = 0;
          *v45 = 0;
          sub_100017D5C(v18, v17);
          sub_100771A28(v45, a1, a2, v44);
          sub_100016590(v18, v17);
          if (v44[0])
          {
            return 1;
          }
        }

LABEL_14:
        v10 = (v10 + 1) & v11;
        if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
        {
          return 0;
        }
      }

      if (v18)
      {
        v20 = 0;
      }

      else
      {
        v20 = v17 == 0xC000000000000000;
      }

      v22 = !v20 || v14 < 3;
      if (((v22 | v43) & 1) == 0)
      {
        return 1;
      }

LABEL_37:
      v23 = 0;
      if (v14 <= 1)
      {
        goto LABEL_34;
      }

      goto LABEL_38;
    }
  }

  return 0;
}

uint64_t sub_10111EFE8(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    Hasher.init(_seed:)();
    sub_10125403C(a1);
    String.hash(into:)();

    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE700000000000000;
        v10 = 0x7972616D697270;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v9 = 0xE900000000000079;
            v10 = 0x7261646E6F636573;
            break;
          case 2:
            v10 = 0xD000000000000019;
            v9 = 0x8000000101348160;
            break;
          case 3:
            v10 = 0xD00000000000001BLL;
            v9 = 0x8000000101348180;
            break;
          case 4:
            v10 = 0x646E7542646C6977;
            v9 = 0xEA0000000000656CLL;
            break;
          case 5:
            v10 = 0x417972616D697270;
            v9 = 0xEE00737365726464;
            break;
          case 6:
            v10 = 0xD000000000000010;
            v9 = 0x80000001013481C0;
            break;
          case 7:
            v10 = 0xD000000000000012;
            v9 = 0x80000001013475D0;
            break;
          case 8:
            v10 = 0xD000000000000011;
            v9 = 0x80000001013475F0;
            break;
          case 9:
            v10 = 0x697463656E6E6F63;
            v9 = 0xED000079654B6E6FLL;
            break;
          case 0xA:
            v10 = 0x656E774F7261656ELL;
            v9 = 0xEC00000079654B72;
            break;
          case 0xB:
            v10 = 0x656B6F546E696F6ALL;
            v9 = 0xE90000000000006ELL;
            break;
          case 0xC:
            v10 = 0xD000000000000015;
            v9 = 0x80000001013481F0;
            break;
          case 0xD:
            v10 = 0xD000000000000010;
            v9 = 0x8000000101348210;
            break;
          case 0xE:
            v10 = 0x7461636F4C626577;
            v9 = 0xEE0079654B6E6F69;
            break;
          case 0xF:
            v10 = 0x646174654D626577;
            v9 = 0xEB00000000617461;
            break;
          case 0x10:
            v10 = 0x6D65744974736F6CLL;
            v9 = 0xED00007365746144;
            break;
          case 0x11:
            v10 = 0xD000000000000014;
            v9 = 0x8000000101348240;
            break;
          case 0x12:
            v10 = 0xD000000000000016;
            v9 = 0x8000000101348260;
            break;
          default:
            break;
        }

        v11 = 0xE700000000000000;
        v12 = 0x7972616D697270;
        switch(a1)
        {
          case 1:
            v11 = 0xE900000000000079;
            if (v10 == 0x7261646E6F636573)
            {
              goto LABEL_58;
            }

            goto LABEL_59;
          case 2:
            v11 = 0x8000000101348160;
            if (v10 != 0xD000000000000019)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 3:
            v11 = 0x8000000101348180;
            if (v10 != 0xD00000000000001BLL)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 4:
            v11 = 0xEA0000000000656CLL;
            if (v10 != 0x646E7542646C6977)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 5:
            v15 = 0x417972616D697270;
            v16 = 0x737365726464;
            goto LABEL_48;
          case 6:
            v11 = 0x80000001013481C0;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 7:
            v11 = 0x80000001013475D0;
            if (v10 != 0xD000000000000012)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 8:
            v11 = 0x80000001013475F0;
            if (v10 != 0xD000000000000011)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 9:
            v13 = 0x697463656E6E6F63;
            v14 = 0x79654B6E6FLL;
            goto LABEL_35;
          case 10:
            v12 = 0x656E774F7261656ELL;
            v11 = 0xEC00000079654B72;
            goto LABEL_57;
          case 11:
            v11 = 0xE90000000000006ELL;
            if (v10 != 0x656B6F546E696F6ALL)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 12:
            v11 = 0x80000001013481F0;
            if (v10 != 0xD000000000000015)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 13:
            v11 = 0x8000000101348210;
            if (v10 != 0xD000000000000010)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 14:
            v15 = 0x7461636F4C626577;
            v16 = 0x79654B6E6F69;
LABEL_48:
            v11 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v10 != v15)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 15:
            v11 = 0xEB00000000617461;
            if (v10 != 0x646174654D626577)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 16:
            v13 = 0x6D65744974736F6CLL;
            v14 = 0x7365746144;
LABEL_35:
            v11 = v14 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v10 != v13)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 17:
            v11 = 0x8000000101348240;
            if (v10 != 0xD000000000000014)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          case 18:
            v11 = 0x8000000101348260;
            if (v10 != 0xD000000000000016)
            {
              goto LABEL_59;
            }

            goto LABEL_58;
          default:
LABEL_57:
            if (v10 != v12)
            {
              goto LABEL_59;
            }

LABEL_58:
            if (v9 == v11)
            {

              v17 = 1;
              return v17 & 1;
            }

LABEL_59:
            v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v17)
            {
              return v17 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v17 & 1;
            }

            break;
        }
      }
    }
  }

  v17 = 0;
  return v17 & 1;
}

BOOL sub_10111F5D4(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  v5 = static Hasher._hash(seed:_:)();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + 8 * v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

uint64_t sub_10111F67C(char a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    v4 = *(a2 + 40);
    Hasher.init(_seed:)();
    sub_1012C5AB0(a1);
    String.hash(into:)();

    v5 = Hasher._finalize()();
    v6 = -1 << *(a2 + 32);
    v7 = v5 & ~v6;
    if ((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
    {
      v8 = ~v6;
      while (1)
      {
        v9 = 0xE700000000000000;
        v10 = 0x6E776F6E6B6E75;
        switch(*(*(a2 + 48) + v7))
        {
          case 1:
            v10 = 0xD000000000000015;
            v9 = 0x8000000101347FF0;
            break;
          case 2:
            v10 = 0xD000000000000016;
            v9 = 0x8000000101348010;
            break;
          case 3:
            v9 = 0xE600000000000000;
            v10 = 0x657461636F6CLL;
            break;
          case 4:
            v9 = 0xEC000000676E6972;
            v10 = 0x6168537472617473;
            break;
          case 5:
            v10 = 0x72616853706F7473;
            goto LABEL_19;
          case 6:
            v12 = 2036427888;
            goto LABEL_23;
          case 7:
            v12 = 1886352499;
LABEL_23:
            v10 = v12 | 0x6E756F5300000000;
            v9 = 0xE900000000000064;
            break;
          case 8:
            v10 = 0x61654C6E69676562;
            v9 = 0xED0000676E696873;
            break;
          case 9:
            v10 = 0x687361654C646E65;
LABEL_19:
            v9 = 0xEB00000000676E69;
            break;
          case 0xA:
            v10 = 0x4654426E69676562;
            v9 = 0xEE00676E69646E69;
            break;
          case 0xB:
            v10 = 0x6E69465442646E65;
            v11 = 1735289188;
            goto LABEL_30;
          case 0xC:
            v9 = 0xEC000000676E6967;
            v10 = 0x6E61526E69676562;
            break;
          case 0xD:
            v10 = 0x69676E6152646E65;
            v9 = 0xEA0000000000676ELL;
            break;
          case 0xE:
            v10 = 0x6F4C656C62616E65;
            v9 = 0xEE0065646F4D7473;
            break;
          case 0xF:
            v10 = 0x4C656C6261736964;
            v9 = 0xEF65646F4D74736FLL;
            break;
          case 0x10:
            v9 = 0xE600000000000000;
            v10 = 0x656D616E6572;
            break;
          case 0x11:
            v10 = 0x7463656E6E6F63;
            break;
          case 0x12:
            v9 = 0xEA00000000007463;
            v10 = 0x656E6E6F63736964;
            break;
          case 0x13:
            v10 = 0xD000000000000017;
            v9 = 0x80000001013480F0;
            break;
          case 0x14:
            v9 = 0xE600000000000000;
            v10 = 0x726961706E75;
            break;
          case 0x15:
            v10 = 0x65746167656C6564;
            v9 = 0xEE00657261685364;
            break;
          case 0x16:
            v10 = 0xD000000000000013;
            v9 = 0x8000000101348120;
            break;
          case 0x17:
            v10 = 0x6F69736963657270;
            v11 = 1481004654;
LABEL_30:
            v9 = v11 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v13 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E75;
        switch(a1)
        {
          case 1:
            v13 = 0x8000000101347FF0;
            if (v10 == 0xD000000000000015)
            {
              goto LABEL_74;
            }

            goto LABEL_75;
          case 2:
            v13 = 0x8000000101348010;
            if (v10 != 0xD000000000000016)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 3:
            v13 = 0xE600000000000000;
            if (v10 != 0x657461636F6CLL)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 4:
            v13 = 0xEC000000676E6972;
            if (v10 != 0x6168537472617473)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 5:
            v19 = 0x72616853706F7473;
            goto LABEL_55;
          case 6:
            v20 = 2036427888;
            goto LABEL_61;
          case 7:
            v20 = 1886352499;
LABEL_61:
            v13 = 0xE900000000000064;
            if (v10 != (v20 | 0x6E756F5300000000))
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 8:
            v13 = 0xED0000676E696873;
            if (v10 != 0x61654C6E69676562)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 9:
            v19 = 0x687361654C646E65;
LABEL_55:
            v13 = 0xEB00000000676E69;
            if (v10 != v19)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 10:
            v15 = 0x4654426E69676562;
            v16 = 0x676E69646E69;
            goto LABEL_66;
          case 11:
            v17 = 0x6E69465442646E65;
            v18 = 1735289188;
            goto LABEL_79;
          case 12:
            v13 = 0xEC000000676E6967;
            if (v10 != 0x6E61526E69676562)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 13:
            v13 = 0xEA0000000000676ELL;
            if (v10 != 0x69676E6152646E65)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 14:
            v15 = 0x6F4C656C62616E65;
            v16 = 0x65646F4D7473;
            goto LABEL_66;
          case 15:
            v13 = 0xEF65646F4D74736FLL;
            if (v10 != 0x4C656C6261736964)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 16:
            v13 = 0xE600000000000000;
            if (v10 != 0x656D616E6572)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 17:
            if (v10 != 0x7463656E6E6F63)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 18:
            v13 = 0xEA00000000007463;
            if (v10 != 0x656E6E6F63736964)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 19:
            v14 = 0xD000000000000017;
            v13 = 0x80000001013480F0;
            goto LABEL_73;
          case 20:
            v13 = 0xE600000000000000;
            if (v10 != 0x726961706E75)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 21:
            v15 = 0x65746167656C6564;
            v16 = 0x657261685364;
LABEL_66:
            v13 = v16 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v10 != v15)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 22:
            v13 = 0x8000000101348120;
            if (v10 != 0xD000000000000013)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          case 23:
            v17 = 0x6F69736963657270;
            v18 = 1481004654;
LABEL_79:
            v13 = v18 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v10 != v17)
            {
              goto LABEL_75;
            }

            goto LABEL_74;
          default:
LABEL_73:
            if (v10 != v14)
            {
              goto LABEL_75;
            }

LABEL_74:
            if (v9 == v13)
            {

              v21 = 1;
              return v21 & 1;
            }

LABEL_75:
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v21)
            {
              return v21 & 1;
            }

            v7 = (v7 + 1) & v8;
            if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
            {
              return v21 & 1;
            }

            break;
        }
      }
    }
  }

  v21 = 0;
  return v21 & 1;
}

uint64_t sub_10111FDB4(unsigned __int8 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(a4 + 16))
  {
    return 0;
  }

  v7 = a1;
  v8 = *(a4 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v7);
  String.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = a4 + 56;
  v11 = -1 << *(a4 + 32);
  v12 = v9 & ~v11;
  if (((*(a4 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  v14 = *(a4 + 48);
  while (1)
  {
    v15 = (v14 + 24 * v12);
    if (*v15 == v7)
    {
      v16 = *(v15 + 1) == a2 && *(v15 + 2) == a3;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }
    }

    v12 = (v12 + 1) & v13;
    if (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

uint64_t sub_10111FED8(uint64_t a1, unint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  v6 = *(a3 + 40);
  Hasher.init(_seed:)();
  v7 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  v8 = Hasher._finalize()();
  v9 = -1 << *(a3 + 32);
  v10 = v8 & ~v9;
  if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  if (a1)
  {
    v12 = 0;
  }

  else
  {
    v12 = a2 == 0xC000000000000000;
  }

  v13 = !v12;
  v48 = v13;
  v14 = a2 >> 62;
  v15 = __OFSUB__(HIDWORD(a1), a1);
  v46 = v15;
  v47 = v11;
  v49 = 0;
  while (1)
  {
    v16 = (*(a3 + 48) + 16 * v10);
    v18 = *v16;
    v17 = v16[1];
    if (v17 >> 60 == 15)
    {
      if (v7 > 0xE)
      {
        sub_10002E98C(v18, v17);
        sub_10002E98C(a1, a2);
        goto LABEL_77;
      }

      goto LABEL_20;
    }

    if (v7 <= 0xE)
    {
      break;
    }

LABEL_20:
    sub_10002E98C(v18, v17);
    sub_10002E98C(a1, a2);
    sub_100429EA8(v18, v17);
    v19 = a1;
    v20 = a2;
LABEL_21:
    sub_100429EA8(v19, v20);
LABEL_22:
    v10 = (v10 + 1) & v11;
    v14 = a2 >> 62;
    if (((*(a3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  v21 = v17 >> 62;
  if (v17 >> 62 == 3)
  {
    if (v18)
    {
      v22 = 0;
    }

    else
    {
      v22 = v17 == 0xC000000000000000;
    }

    v24 = !v22 || v14 < 3;
    if (((v24 | v48) & 1) == 0)
    {
      sub_10002E98C(0, 0xC000000000000000);
      sub_10002E98C(0, 0xC000000000000000);
      sub_100429EA8(0, 0xC000000000000000);
      v18 = 0;
      goto LABEL_77;
    }

LABEL_46:
    v25 = 0;
    if (v14 > 1)
    {
      goto LABEL_47;
    }

LABEL_43:
    v29 = BYTE6(a2);
    if (v14)
    {
      v29 = HIDWORD(a1) - a1;
      if (v46)
      {
        goto LABEL_80;
      }
    }

LABEL_49:
    if (v25 == v29)
    {
      if (v25 < 1)
      {
        goto LABEL_76;
      }

      if (v21 > 1)
      {
        if (v21 != 2)
        {
          *&v51[6] = 0;
          *v51 = 0;
          sub_10002E98C(v18, v17);
          sub_10002E98C(v18, v17);
          sub_10002E98C(a1, a2);
          goto LABEL_73;
        }

        v32 = *(v18 + 16);
        v44 = *(v18 + 24);
        v45 = v7;
        sub_10002E98C(v18, v17);
        sub_10002E98C(v18, v17);
        sub_10002E98C(a1, a2);
        v33 = __DataStorage._bytes.getter();
        if (v33)
        {
          v34 = __DataStorage._offset.getter();
          if (__OFSUB__(v32, v34))
          {
            goto LABEL_85;
          }

          v33 += v32 - v34;
        }

        if (__OFSUB__(v44, v32))
        {
          goto LABEL_84;
        }

        __DataStorage._length.getter();
        v35 = v33;
        v36 = a1;
        v37 = a2;
        v38 = v49;
      }

      else
      {
        if (!v21)
        {
          *v51 = v18;
          *&v51[8] = v17;
          v51[10] = BYTE2(v17);
          v51[11] = BYTE3(v17);
          v51[12] = BYTE4(v17);
          v51[13] = BYTE5(v17);
          sub_10002E98C(v18, v17);
          sub_10002E98C(v18, v17);
          sub_10002E98C(a1, a2);
LABEL_73:
          sub_100771A28(v51, a1, a2, &v50);
          sub_100429EA8(v18, v17);
          sub_100429EA8(a1, a2);
          v42 = v50;
          sub_100429EA8(v18, v17);
          if (v42)
          {
            return 1;
          }

LABEL_74:
          v11 = v47;
          goto LABEL_22;
        }

        v45 = v7;
        if (v18 >> 32 < v18)
        {
          goto LABEL_83;
        }

        sub_10002E98C(v18, v17);
        sub_10002E98C(v18, v17);
        sub_10002E98C(a1, a2);
        v39 = __DataStorage._bytes.getter();
        if (v39)
        {
          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v18, v40))
          {
            goto LABEL_86;
          }

          v39 += v18 - v40;
        }

        v38 = v49;
        __DataStorage._length.getter();
        v35 = v39;
        v36 = a1;
        v37 = a2;
      }

      sub_100771A28(v35, v36, v37, v51);
      sub_100429EA8(v18, v17);
      sub_100429EA8(a1, a2);
      v41 = v51[0];
      sub_100429EA8(v18, v17);
      if (v41)
      {
        return 1;
      }

      v49 = v38;
      v7 = v45;
      goto LABEL_74;
    }

LABEL_55:
    sub_10002E98C(v18, v17);
    sub_10002E98C(a1, a2);
    sub_100429EA8(a1, a2);
    v19 = v18;
    v20 = v17;
    goto LABEL_21;
  }

  if (v21 <= 1)
  {
    if (v21)
    {
      LODWORD(v25) = HIDWORD(v18) - v18;
      if (__OFSUB__(HIDWORD(v18), v18))
      {
        goto LABEL_81;
      }

      v25 = v25;
      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      v25 = BYTE6(v17);
      if (v14 > 1)
      {
        goto LABEL_47;
      }
    }

    goto LABEL_43;
  }

  if (v21 != 2)
  {
    goto LABEL_46;
  }

  v27 = *(v18 + 16);
  v26 = *(v18 + 24);
  v28 = __OFSUB__(v26, v27);
  v25 = v26 - v27;
  if (v28)
  {
    goto LABEL_82;
  }

  if (v14 <= 1)
  {
    goto LABEL_43;
  }

LABEL_47:
  if (v14 == 2)
  {
    v31 = *(a1 + 16);
    v30 = *(a1 + 24);
    v28 = __OFSUB__(v30, v31);
    v29 = v30 - v31;
    if (v28)
    {
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
    }

    goto LABEL_49;
  }

  if (v25)
  {
    goto LABEL_55;
  }

LABEL_76:
  sub_10002E98C(v18, v17);
  sub_10002E98C(a1, a2);
  sub_100429EA8(a1, a2);
LABEL_77:
  sub_100429EA8(v18, v17);
  return 1;
}

BOOL sub_1011204C8(Swift::UInt8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == a1;
    if (v9 == a1)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_101120594(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = qword_101408EF0[a1];
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = qword_101408EF0[*(*(a2 + 48) + v8)];
    result = v10 == v5;
    if (v10 == v5)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

uint64_t sub_101120674(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    goto LABEL_11;
  }

  v3 = *(a2 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  v5 = -1 << *(a2 + 32);
  v6 = v4 & ~v5;
  if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    while (1)
    {
      v8 = *(*(a2 + 48) + 8 * v6);
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;
      if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
      {
        break;
      }

      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v14 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v14 & 1;
    }

    v14 = 1;
  }

  else
  {
LABEL_11:
    v14 = 0;
  }

  return v14 & 1;
}

BOOL sub_1011207C8(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  v5 = static Hasher._hash(seed:bytes:count:)();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_101120874(unsigned __int8 a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = a1;
  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  v5 = Hasher._finalize()();
  v6 = -1 << *(a2 + 32);
  v7 = v5 & ~v6;
  if (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
  {
    return 0;
  }

  v8 = ~v6;
  do
  {
    v9 = *(*(a2 + 48) + v7);
    result = v9 == v3;
    if (v9 == v3)
    {
      break;
    }

    v7 = (v7 + 1) & v8;
  }

  while (((*(a2 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  return result;
}

BOOL sub_101120940(char a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  v5 = qword_101409050[a1];
  Hasher._combine(_:)(v5);
  v6 = Hasher._finalize()();
  v7 = -1 << *(a2 + 32);
  v8 = v6 & ~v7;
  if (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  do
  {
    v10 = qword_101409050[*(*(a2 + 48) + v8)];
    result = v10 == v5;
    if (v10 == v5)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
  }

  while (((*(a2 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  return result;
}

Swift::Int sub_101120B44(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B320C0(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = (v2 + 32);
  v5[1] = v3;
  result = sub_101128E3C(v5);
  *a1 = v2;
  return result;
}

void sub_101120D20(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_1000E1F00(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for LostModeInfoRecord() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x800000010137BE70;
  v20._countAndFlagsBits = 0xD000000000000012;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_1000E1F00(&v21);
}

void sub_101120F7C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_100E10318(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for OwnerSharingCircle() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x8000000101364340;
  v20._countAndFlagsBits = 0xD000000000000012;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_100E10318(&v21);
}

void sub_1011211D8(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_100D6B858(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for SharingCircleSecret() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x8000000101351330;
  v20._countAndFlagsBits = 0xD000000000000013;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_100D6B858(&v21);
}

void sub_1011214EC(uint64_t *a1, uint64_t (*a2)(void), uint64_t a3, void *a4, void (*a5)(Class *))
{
  v11 = *a1;
  v12 = a1[1];
  v13 = v12 >> 62;
  if ((v12 >> 62) > 1)
  {
    if (v13 != 2)
    {
      goto LABEL_12;
    }

    v14 = *(v11 + 16);
    v15 = *(v11 + 24);
    goto LABEL_8;
  }

  if (v13)
  {
    v14 = v11;
    v15 = v11 >> 32;
LABEL_8:
    if (v14 == v15)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v12 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v16 = objc_autoreleasePoolPush();
  sub_101122FBC(v11, v12, &v29);
  if (v5)
  {
    objc_autoreleasePoolPop(v16);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v16);
  v17 = v29;
  if (v29)
  {
    a5(&v29);
    v18 = [(objc_class *)v17 valueStore];
    [v18 resetChangedKeys];

    v19 = [(objc_class *)v17 encryptedValueStore];
    [v19 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v20 = a1 + *(a2(0) + 20);
  v21 = UUID.uuidString.getter();
  v23 = v22;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v24 = qword_10177BA50;
  v25._countAndFlagsBits = v21;
  v25._object = v23;
  isa = CKRecordID.init(recordName:zoneID:)(v25, v24).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v27 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v28._countAndFlagsBits = a3;
  v28._object = a4;
  v29 = CKRecord.init(recordType:recordID:)(v28, isa).super.isa;
  a5(&v29);
}

void sub_1011218E0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_10051E304(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for OwnedBeaconGroup(0) + 24);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._countAndFlagsBits = 0x72476E6F63616542;
  v20._object = 0xEB0000000070756FLL;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_10051E304(&v21);
}

void sub_101121B40(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &isa);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = isa;
  if (isa)
  {
    sub_100D6314C(&isa);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for OwnedBeaconRecord() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  v18.super.isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  if (qword_101694E70 != -1)
  {
    swift_once();
  }

  v20 = qword_10177C060;
  v21 = *algn_10177C068;

  v22._countAndFlagsBits = v20;
  v22._object = v21;
  isa = CKRecord.init(recordType:recordID:)(v22, v18).super.isa;
  sub_100D6314C(&isa);
}

void sub_101121DD0(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_100DE1A5C(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for BeaconNamingRecord() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x800000010134BC20;
  v20._countAndFlagsBits = 0xD000000000000012;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_100DE1A5C(&v21);
}

void sub_10112202C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_100152D44(a1, &v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for KeyAlignmentRecord() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x8000000101364380;
  v20._countAndFlagsBits = 0xD000000000000012;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_100152D44(a1, &v21);
}

void sub_101122288(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_1011D8C44(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for SharedBeaconRecord(0) + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x800000010134BC40;
  v20._countAndFlagsBits = 0xD000000000000012;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_1011D8C44(&v21);
}

void sub_1011224E4(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_10032771C(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for MemberSharingCircle() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x8000000101364320;
  v20._countAndFlagsBits = 0xD000000000000013;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_10032771C(&v21);
}

void sub_101122740(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_101104A14(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for OwnedDeviceKeyRecord() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x8000000101364360;
  v20._countAndFlagsBits = 0xD000000000000014;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_101104A14(&v21);
}

void sub_10112299C(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_1004ECA50(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for NotifyWhenFoundRecord() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x80000001013643C0;
  v20._countAndFlagsBits = 0xD000000000000015;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_1004ECA50(&v21);
}

void sub_101122BF8(uint64_t *a1)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_12;
    }

    v6 = *(v3 + 16);
    v7 = *(v3 + 24);
    goto LABEL_8;
  }

  if (v5)
  {
    v6 = v3;
    v7 = v3 >> 32;
LABEL_8:
    if (v6 == v7)
    {
      goto LABEL_12;
    }

    goto LABEL_9;
  }

  if ((v4 & 0xFF000000000000) == 0)
  {
    goto LABEL_12;
  }

LABEL_9:
  v8 = objc_autoreleasePoolPush();
  sub_101122FBC(v3, v4, &v21);
  if (v1)
  {
    objc_autoreleasePoolPop(v8);
    __break(1u);
    return;
  }

  objc_autoreleasePoolPop(v8);
  v9 = v21;
  if (v21)
  {
    sub_100D18060(&v21);
    v10 = [(objc_class *)v9 valueStore];
    [v10 resetChangedKeys];

    v11 = [(objc_class *)v9 encryptedValueStore];
    [v11 resetChangedKeys];

    return;
  }

LABEL_12:
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v12 = a1 + *(type metadata accessor for BeaconEstimatedLocation() + 20);
  v13 = UUID.uuidString.getter();
  v15 = v14;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v16 = qword_10177BA50;
  v17._countAndFlagsBits = v13;
  v17._object = v15;
  isa = CKRecordID.init(recordName:zoneID:)(v17, v16).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v19 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v20._object = 0x80000001013643A0;
  v20._countAndFlagsBits = 0xD000000000000017;
  v21 = CKRecord.init(recordType:recordID:)(v20, isa).super.isa;
  sub_100D18060(&v21);
}

Class sub_101122E54()
{
  sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
  v0 = UUID.uuidString.getter();
  v2 = v1;
  if (qword_101694C00 != -1)
  {
    swift_once();
  }

  v3 = qword_10177BA50;
  v4._countAndFlagsBits = v0;
  v4._object = v2;
  isa = CKRecordID.init(recordName:zoneID:)(v4, v3).super.isa;
  static os_log_type_t.default.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v6 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100008BB8(0, &qword_101698150, CKRecord_ptr);
  v7._object = 0x800000010136FDB0;
  v7._countAndFlagsBits = 0xD00000000000001CLL;
  v8 = CKRecord.init(recordType:recordID:)(v7, isa).super.isa;
  v10 = v8;
  sub_10015AAC0(&v10);
  return v8;
}

void sub_101122FBC(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = objc_allocWithZone(NSKeyedUnarchiver);
  sub_100017D5C(a1, a2);
  v8 = sub_101129808();
  if (v3)
  {
    sub_100016590(a1, a2);
    static os_log_type_t.error.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v9 = swift_allocObject();
    *(v9 + 16) = xmmword_101385D80;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v10 = String.init<A>(describing:)();
    v12 = v11;
    *(v9 + 56) = &type metadata for String;
    *(v9 + 64) = sub_100008C00();
    *(v9 + 32) = v10;
    *(v9 + 40) = v12;
    sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
    v13 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v14 = 0;
  }

  else
  {
    v15 = v8;
    sub_100016590(a1, a2);
    [v15 _enableStrictSecureDecodingMode];
    v16 = [objc_allocWithZone(CKRecord) initWithCoder:v15];
    if (v16)
    {
      v14 = v16;
    }

    else
    {
      static os_log_type_t.error.getter();
      sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
      v17 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v14 = 0;
    }
  }

  *a3 = v14;
}

uint64_t sub_1011239D8(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t))
{
  v5 = objc_autoreleasePoolPush();
  v6 = a3(v3);
  objc_autoreleasePoolPop(v5);
  return v6;
}

uint64_t sub_101123A78(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, void *a5, void (*a6)(Class *))
{
  v11 = objc_autoreleasePoolPush();
  sub_1011214EC(v6, a3, a4, a5, a6);
  v13 = v12;
  objc_autoreleasePoolPop(v11);
  return v13;
}

uint64_t sub_101123B28(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v4;
  if (!result || a1 > *(v4 + 24) >> 1)
  {
    if (*(v4 + 16) > a1)
    {
      v6 = *(v4 + 16);
    }

    return a2();
  }

  return result;
}

char *sub_101123BB8(char *a1, int64_t a2, char a3)
{
  result = sub_1011258B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101123BD8(void *a1, int64_t a2, char a3)
{
  result = sub_1011259C0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123BF8(char *a1, int64_t a2, char a3)
{
  result = sub_101125C34(a1, a2, a3, *v3, &qword_10169EF40, &qword_10139FC28);
  *v3 = result;
  return result;
}

char *sub_101123C28(char *a1, int64_t a2, char a3)
{
  result = sub_101125C34(a1, a2, a3, *v3, &qword_10169D108, &qword_10139AAA8);
  *v3 = result;
  return result;
}

size_t sub_101123C58(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016A74C8, &unk_1013B6248, &qword_101697240, &unk_10138BDA0);
  *v3 = result;
  return result;
}

char *sub_101123C98(char *a1, int64_t a2, char a3)
{
  result = sub_101125D58(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123CB8(char *a1, int64_t a2, char a3)
{
  result = sub_101125E64(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101123CD8(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8D70, &qword_101408D10, type metadata accessor for KeySyncMetadata);
  *v3 = result;
  return result;
}

char *sub_101123D1C(char *a1, int64_t a2, char a3)
{
  result = sub_10112860C(a1, a2, a3, *v3, &qword_101699368, &unk_1013B34B0);
  *v3 = result;
  return result;
}

size_t sub_101123D4C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &unk_1016A9A10, &qword_1013A07C0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

char *sub_101123D90(char *a1, int64_t a2, char a3)
{
  result = sub_101125F70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123DB0(char *a1, int64_t a2, char a3)
{
  result = sub_101126090(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123DD0(char *a1, int64_t a2, char a3)
{
  result = sub_10112619C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101123DF0(char *a1, int64_t a2, char a3)
{
  result = sub_1011270D8(a1, a2, a3, *v3, &qword_1016C8EA8, &qword_101408E00);
  *v3 = result;
  return result;
}

void *sub_101123E28(void *a1, int64_t a2, char a3)
{
  result = sub_10112630C(a1, a2, a3, *v3, &qword_1016C8EB0, &qword_101408E08, &qword_1016B9BC0, &qword_1013E3730);
  *v3 = result;
  return result;
}

char *sub_101123E68(char *a1, int64_t a2, char a3)
{
  result = sub_1011270D8(a1, a2, a3, *v3, &qword_1016C8EB8, &qword_101408E10);
  *v3 = result;
  return result;
}

void *sub_101123EA0(void *a1, int64_t a2, char a3)
{
  result = sub_10112630C(a1, a2, a3, *v3, &qword_1016C8EC0, &qword_101408E18, &qword_1016B9BC8, &unk_1013E3738);
  *v3 = result;
  return result;
}

void *sub_101123EE0(void *a1, int64_t a2, char a3)
{
  result = sub_10112630C(a1, a2, a3, *v3, &qword_1016C8EC8, &qword_101408E20, &qword_1016C8ED0, &qword_101408E28);
  *v3 = result;
  return result;
}

void *sub_101123F20(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &unk_101697F80, &unk_10138CDC0, &qword_1016C8EF0, &qword_101408E48);
  *v3 = result;
  return result;
}

size_t sub_101123F60(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F60, &qword_101408EA0, &qword_1016A9F20, &qword_1013BCC18);
  *v3 = result;
  return result;
}

size_t sub_101123FA0(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3CB0, &unk_1013D7360, type metadata accessor for MemberSharingCircle);
  *v3 = result;
  return result;
}

size_t sub_101123FE4(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_101698E50, &unk_101390D40, type metadata accessor for OwnerSharingCircle);
  *v3 = result;
  return result;
}

size_t sub_101124028(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3AA0, &qword_1013D4848, type metadata accessor for TimeBasedKey);
  *v3 = result;
  return result;
}

size_t sub_10112406C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3D48, &qword_1013D4AB0, type metadata accessor for KeyDropJoinToken);
  *v3 = result;
  return result;
}

char *sub_1011240B0(char *a1, int64_t a2, char a3)
{
  result = sub_101126490(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1011240D0(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016AB880, &unk_1013E3620, type metadata accessor for OwnSubmitLocationInfo);
  *v3 = result;
  return result;
}

size_t sub_101124114(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_101698D88, &qword_101390910, type metadata accessor for SharingCircleSecret);
  *v3 = result;
  return result;
}

size_t sub_101124158(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3E98, &qword_1013D4BE8, &qword_101697700, &unk_10139FB90);
  *v3 = result;
  return result;
}

size_t sub_101124198(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F90, &qword_101408ED0, &qword_101697708, &qword_10138C3C0);
  *v3 = result;
  return result;
}

size_t sub_1011241D8(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EF30, &qword_10139FC20, type metadata accessor for BeaconNamingRecord);
  *v3 = result;
  return result;
}

size_t sub_10112421C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EFB8, &unk_1013B12F0, type metadata accessor for SharedBeaconRecord);
  *v3 = result;
  return result;
}

size_t sub_101124260(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3BF8, &qword_1013D4988, type metadata accessor for MemberPeerTrust);
  *v3 = result;
  return result;
}

size_t sub_1011242A4(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EF80, &qword_10139FCC0, type metadata accessor for OwnerPeerTrust);
  *v3 = result;
  return result;
}

char *sub_1011242E8(char *a1, int64_t a2, char a3)
{
  result = sub_1011265E0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101124308(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016AC9D0, &unk_10139D760, type metadata accessor for BeaconObservation);
  *v3 = result;
  return result;
}

size_t sub_10112434C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A78, &qword_1013D4820, type metadata accessor for OwnedBeaconRecord);
  *v3 = result;
  return result;
}

char *sub_101124390(char *a1, int64_t a2, char a3)
{
  result = sub_101126740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1011243B0(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_101697DD8, &unk_10138CDD0, type metadata accessor for DefaultConfigurationLayer);
  *v3 = result;
  return result;
}

size_t sub_1011243F4(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3A18, &qword_1013D47C0, &qword_1016B1E70, &qword_10138CDB0);
  *v3 = result;
  return result;
}

void *sub_101124434(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B3A30, &qword_1013D47D8, &qword_101698D58, &unk_1013908E0);
  *v3 = result;
  return result;
}

size_t sub_101124474(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8E98, &qword_101408DF0, type metadata accessor for PeerCommunicationIdentifier);
  *v3 = result;
  return result;
}

char *sub_1011244B8(char *a1, int64_t a2, char a3)
{
  result = sub_1011268AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1011244D8(char *a1, int64_t a2, char a3)
{
  result = sub_1011269A8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011244F8(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &unk_1016A6320, &qword_1013B3CD0, &qword_1016C8E30, &qword_101408DA0);
  *v3 = result;
  return result;
}

char *sub_101124538(char *a1, int64_t a2, char a3)
{
  result = sub_101126AB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101124558(char *a1, int64_t a2, char a3)
{
  result = sub_101126BC0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_101124578(void *a1, int64_t a2, char a3)
{
  result = sub_101126CE0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101124598(char *a1, int64_t a2, char a3)
{
  result = sub_1011270D8(a1, a2, a3, *v3, &qword_1016C8DF8, &qword_101408D88);
  *v3 = result;
  return result;
}

void *sub_1011245D0(void *a1, int64_t a2, char a3)
{
  result = sub_101126E14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1011245F0(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3C98, &qword_1013D4A20, type metadata accessor for ObservedAdvertisement);
  *v3 = result;
  return result;
}

size_t sub_101124634(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8DE8, &qword_101408D80, type metadata accessor for ObservedAdvertisement.Location);
  *v3 = result;
  return result;
}

size_t sub_101124678(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3D60, &qword_1013D4AC8, type metadata accessor for DeviceEvent);
  *v3 = result;
  return result;
}

char *sub_1011246BC(char *a1, int64_t a2, char a3)
{
  result = sub_101126FAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011246DC(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016C8F78, &qword_101408EB8, &qword_1016C8F80, &qword_101408EC0);
  *v3 = result;
  return result;
}

size_t sub_10112471C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8F88, &qword_101408EC8, type metadata accessor for SPCachedAdvertisement);
  *v3 = result;
  return result;
}

size_t sub_101124760(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016A5878, &qword_1013B3268, type metadata accessor for BeaconIdentifier);
  *v3 = result;
  return result;
}

char *sub_1011247A4(char *a1, int64_t a2, char a3)
{
  result = sub_1011270D8(a1, a2, a3, *v3, &qword_1016C8F18, &qword_101408E68);
  *v3 = result;
  return result;
}

char *sub_1011247DC(char *a1, int64_t a2, char a3)
{
  result = sub_1011271E4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1011247FC(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3B00, &qword_1013D48A8, &qword_101697DE0, &qword_101393190);
  *v3 = result;
  return result;
}

size_t sub_10112483C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3AF0, &qword_1013D4898, type metadata accessor for SafeLocation);
  *v3 = result;
  return result;
}

size_t sub_101124880(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3BD8, &qword_1013D4970, &qword_10169EFB0, &unk_10139FD20);
  *v3 = result;
  return result;
}

void *sub_1011248C0(void *a1, int64_t a2, char a3)
{
  result = sub_101127438(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011248E0(void *a1, int64_t a2, char a3)
{
  result = sub_10112756C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101124900(char *a1, int64_t a2, char a3)
{
  result = sub_1011276B4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101124920(char *a1, int64_t a2, char a3)
{
  result = sub_1011277D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101124940(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169F010, &qword_10139FDE8, type metadata accessor for OwnedBeaconGroup);
  *v3 = result;
  return result;
}

char *sub_101124984(char *a1, int64_t a2, char a3)
{
  result = sub_10112732C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1011249A4(char *a1, int64_t a2, char a3)
{
  result = sub_101127944(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011249C4(void *a1, int64_t a2, char a3)
{
  result = sub_101127A50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011249E4(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016AA468, &qword_1013BD038, &qword_1016A58D0, &qword_1013B3310);
  *v3 = result;
  return result;
}

size_t sub_101124A24(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016A5860, &qword_1013B3220, type metadata accessor for BeaconEstimatedLocation);
  *v3 = result;
  return result;
}

void *sub_101124A68(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B3AF8, &qword_1013D48A0, &qword_10169EF38, &unk_1013AB040);
  *v3 = result;
  return result;
}

size_t sub_101124AA8(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3CA0, &qword_1013D4A28, &qword_1016A5A80, &qword_1013B35A8);
  *v3 = result;
  return result;
}

size_t sub_101124AE8(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A98, &qword_1013D4840, _s18ConnectionKeyGroupVMa);
  *v3 = result;
  return result;
}

size_t sub_101124B2C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3D88, &qword_1013D4AF0, type metadata accessor for WildModeAssociationRecord);
  *v3 = result;
  return result;
}

size_t sub_101124B70(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EFC0, &qword_10139FD38, type metadata accessor for WildModeTrackingLocation);
  *v3 = result;
  return result;
}

size_t sub_101124BB4(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8E68, &qword_101408DD0, &qword_1016B54A8, &qword_1013D6838);
  *v3 = result;
  return result;
}

size_t sub_101124BF4(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3EA0, &qword_1013D4BF0, &qword_101697E00, &qword_10139A1B0);
  *v3 = result;
  return result;
}

char *sub_101124C34(char *a1, int64_t a2, char a3)
{
  result = sub_101127BF8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101124C54(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8E60, &qword_101408DC8, type metadata accessor for FamilyCryptoKeysV2);
  *v3 = result;
  return result;
}

size_t sub_101124C98(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8E58, &qword_101408DC0, type metadata accessor for FamilyCryptoKeysV1);
  *v3 = result;
  return result;
}

size_t sub_101124CDC(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3B48, &qword_1013D48F0, type metadata accessor for ShareRecord);
  *v3 = result;
  return result;
}

size_t sub_101124D20(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8E50, &qword_101408DB8, type metadata accessor for CryptoKeys);
  *v3 = result;
  return result;
}

void *sub_101124D64(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016C8E38, &qword_101408DA8, &qword_10169EFE0, &qword_10139FD90);
  *v3 = result;
  return result;
}

void *sub_101124DA4(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016C8E40, &qword_101408DB0, &qword_10169EFD8, &qword_10139FD88);
  *v3 = result;
  return result;
}

size_t sub_101124DE4(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8D78, &qword_101408D18, &qword_10169EF28, &unk_10139FC10);
  *v3 = result;
  return result;
}

size_t sub_101124E24(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169C978, &unk_10139FBF0, type metadata accessor for RawSearchResult);
  *v3 = result;
  return result;
}

size_t sub_101124E68(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A88, &qword_1013D4830, type metadata accessor for FetchRequestBeacon);
  *v3 = result;
  return result;
}

size_t sub_101124EAC(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3F28, &qword_1013D4C78, type metadata accessor for FetchResponse.SearchResult);
  *v3 = result;
  return result;
}

void *sub_101124EF0(void *a1, int64_t a2, char a3)
{
  result = sub_101127ED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101124F10(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8E28, &qword_101408D98, &qword_1016A6070, &unk_1013B3BA0);
  *v3 = result;
  return result;
}

void *sub_101124F50(void *a1, int64_t a2, char a3)
{
  result = sub_10112800C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101124F70(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3E28, &qword_1013D4B78, type metadata accessor for FindMyServiceDevice);
  *v3 = result;
  return result;
}

size_t sub_101124FB4(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8D80, &qword_101408D20, &qword_1016A7800, &qword_1013B66B0);
  *v3 = result;
  return result;
}

size_t sub_101124FF4(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B2830, &qword_1013D3730, type metadata accessor for KeySyncMetadataDisplay);
  *v3 = result;
  return result;
}

size_t sub_101125038(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3E30, &qword_1013D4B80, type metadata accessor for FindMyServiceDeviceStore.ListChange);
  *v3 = result;
  return result;
}

size_t sub_10112507C(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3B08, &qword_1013D48B0, &unk_1016B1E80, &qword_10138CDE0);
  *v3 = result;
  return result;
}

char *sub_1011250BC(char *a1, int64_t a2, char a3)
{
  result = sub_10112860C(a1, a2, a3, *v3, &qword_1016AA5A8, &unk_1013BD208);
  *v3 = result;
  return result;
}

char *sub_1011250EC(char *a1, int64_t a2, char a3)
{
  result = sub_10112815C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10112510C(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3E80, &qword_1013D4BD0, &qword_10169F030, &qword_10139FE18);
  *v3 = result;
  return result;
}

void *sub_10112514C(void *a1, int64_t a2, char a3)
{
  result = sub_101128278(a1, a2, a3, *v3, &qword_1016C8F50, &qword_101408E90, &qword_1016B6E20, &unk_10138CE00);
  *v3 = result;
  return result;
}

size_t sub_10112518C(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F20, &qword_101408E70, &unk_1016AA490, &unk_1013BD060);
  *v3 = result;
  return result;
}

size_t sub_1011251CC(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3E00, &qword_1013D4B50, &unk_1016AA4B0, &qword_1013BD0A0);
  *v3 = result;
  return result;
}

void *sub_10112520C(void *a1, int64_t a2, char a3)
{
  result = sub_101128278(a1, a2, a3, *v3, &unk_1016AA4A0, &qword_1013BD070, &qword_101697DF8, &unk_10138CDF0);
  *v3 = result;
  return result;
}

size_t sub_10112524C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A40, &qword_1013D47E0, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

void *sub_101125290(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B3E68, &qword_1013D4BB8, &qword_10169F028, &qword_10139FE10);
  *v3 = result;
  return result;
}

size_t sub_1011252D0(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3B18, &qword_1013D48C0, type metadata accessor for BeaconKeyServiceBuilder.KeyIndexMapInfo);
  *v3 = result;
  return result;
}

char *sub_101125314(char *a1, int64_t a2, char a3)
{
  result = sub_1011283F0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101125334(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3C70, &qword_1013D49F8, &unk_1016C1120, &qword_1013C49D0);
  *v3 = result;
  return result;
}

char *sub_101125374(char *a1, int64_t a2, char a3)
{
  result = sub_10112860C(a1, a2, a3, *v3, &qword_1016C8E00, &qword_101408D90);
  *v3 = result;
  return result;
}

size_t sub_1011253A4(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8FB0, &qword_101408EE8, type metadata accessor for ShareState);
  *v3 = result;
  return result;
}

size_t sub_1011253E8(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3C18, &qword_1013D49A0, &qword_101697DE8, &unk_1013CA800);
  *v3 = result;
  return result;
}

size_t sub_101125428(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F40, &qword_101408E88, &qword_1016ADE80, &unk_1013C55E0);
  *v3 = result;
  return result;
}

size_t sub_101125468(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3E10, &qword_1013D4B60, type metadata accessor for SimpleBeaconUpdateService.BeaconEntityChange);
  *v3 = result;
  return result;
}

size_t sub_1011254AC(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F38, &qword_101408E80, &qword_1016980D0, &unk_10138F3B0);
  *v3 = result;
  return result;
}

size_t sub_1011254EC(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3B30, &qword_1013D48D8, type metadata accessor for ManagedCBPeripheralBeaconInfo);
  *v3 = result;
  return result;
}

char *sub_101125530(char *a1, int64_t a2, char a3)
{
  result = sub_101128508(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_101125550(char *a1, int64_t a2, char a3)
{
  result = sub_10112860C(a1, a2, a3, *v3, &qword_1016C8E88, &qword_101408DE8);
  *v3 = result;
  return result;
}

void *sub_101125580(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B3C08, &qword_1013D4998, &qword_1016B3C10, &qword_10140F6B0);
  *v3 = result;
  return result;
}

size_t sub_1011255C0(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8F28, &qword_101408E78, &qword_1016B1780, &unk_1013B36E0);
  *v3 = result;
  return result;
}

char *sub_101125600(char *a1, int64_t a2, char a3)
{
  result = sub_101128850(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101125620(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016B3B60, &qword_1013D4900, &qword_101697DF0, &qword_10138CDE8);
  *v3 = result;
  return result;
}

char *sub_101125660(char *a1, int64_t a2, char a3)
{
  result = sub_10112896C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_101125680(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_10169EF60, &qword_10139FC30, &type metadata accessor for Device);
  *v3 = result;
  return result;
}

void *sub_1011256C4(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016B2BA8, &unk_1013EACE0, &qword_1016B7700, &qword_1013DD170);
  *v3 = result;
  return result;
}

size_t sub_101125704(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016C8DD0, &qword_101408D68, &type metadata accessor for CloudKitCoordinator.Deletion);
  *v3 = result;
  return result;
}

size_t sub_101125748(size_t a1, int64_t a2, char a3)
{
  result = sub_101128BDC(a1, a2, a3, *v3, &qword_1016C8DE0, &qword_101408D78, &qword_1016BA4F0, &qword_1013E4B68);
  *v3 = result;
  return result;
}

char *sub_101125788(char *a1, int64_t a2, char a3)
{
  result = sub_101128AB8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1011257A8(void *a1, int64_t a2, char a3)
{
  result = sub_1000259D4(a1, a2, a3, *v3, &qword_1016C8FA0, &qword_101408ED8, &qword_1016C8FA8, &qword_101408EE0);
  *v3 = result;
  return result;
}

size_t sub_1011257E8(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3A48, &qword_1013D47E8, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

size_t sub_10112582C(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3BA8, &qword_1013D4948, type metadata accessor for BeaconKeyManager.KeyIndexMapInfo);
  *v3 = result;
  return result;
}

size_t sub_101125870(size_t a1, int64_t a2, char a3)
{
  result = sub_100033060(a1, a2, a3, *v3, &qword_1016B3BA0, &qword_1013D4940, type metadata accessor for BeaconKeyManager.KeyMapInfo);
  *v3 = result;
  return result;
}

char *sub_1011258B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&unk_1016B1550, &unk_10139ADF0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1011259C0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8DC0, &qword_101408D58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016C8DC8, &qword_101408D60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101125B08(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_10169EF78, &qword_10139FC88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
  }

  return v10;
}

char *sub_101125C34(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = &_swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

char *sub_101125D58(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8D98, &qword_101408D30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 95;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[128 * v8])
    {
      memmove(v13, v14, v8 << 7);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101125E64(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_10169F000, &qword_10139FDC0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101125F70(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8EE0, &qword_101408E38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126090(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8ED8, &qword_101408E30);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10112619C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3D10, &unk_1013E35E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10112630C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 24);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[3 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 24 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_101126490(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3E58, &qword_1013D4BA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[56 * v8])
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1011265E0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8DD8, &qword_101408D70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126740(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8DB8, &qword_101408D50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 160);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[160 * v8])
    {
      memmove(v12, v13, 160 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1011268AC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8EA0, &qword_101408DF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = (v11 - 32 + ((v11 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[2 * v8])
    {
      memmove(v12, v13, 2 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 2 * v8);
  }

  return v10;
}

char *sub_1011269A8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_10169E768, &qword_10139DB90);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126AB4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8F00, &qword_101408E50);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[64 * v8])
    {
      memmove(v13, v14, v8 << 6);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126BC0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3A28, &qword_1013D47D0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101126CE0(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3C40, &qword_1013D49C8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_10169F020, &qword_10139FE08);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101126E14(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8DA0, &qword_101408D38);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016C8DA8, &qword_101408D40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101126FAC(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3D90, &qword_1013D4AF8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_1011270D8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 17;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 4);
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[16 * v10])
    {
      memmove(v15, v16, 16 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v12;
}

char *sub_1011271E4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8F10, &qword_101408E60);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10112732C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3F30, &unk_1013D4C80);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[32 * v8])
    {
      memmove(v13, v14, 32 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101127438(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016AB898, &qword_1013BF978);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10112756C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8E78, &qword_101408DD8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016C8E80, &qword_101408DE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1011276B4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_101698CB8, &qword_101390860);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1011277D4(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_10169FCB8, &unk_1013BFD00);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101127944(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8F70, &qword_101408EB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101127A50(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8F68, &qword_101408EA8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016A1360, &unk_1013A52C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101127BF8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8F08, &qword_101408E58);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[48 * v8])
    {
      memmove(v12, v13, 48 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101127D68(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3AC8, &qword_1013D4870);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B3AD0, &qword_1013D4878);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101127ED8(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3AB0, &qword_1013D4858);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_10169C9B0, &qword_10139FC00);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10112800C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_10169EFF0, &qword_10139FDA0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    type metadata accessor for SPBeaconTaskName(0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10112815C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8F58, &qword_101408E98);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 96);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[96 * v8])
    {
      memmove(v12, v13, 96 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_101128278(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    sub_1000BC4D4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 56);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[7 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 56 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1011283F0(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8D88, &qword_101408D28);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
  }

  return v10;
}

char *sub_101128508(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8DB0, &qword_101408D48);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

char *sub_10112860C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    sub_1000BC4D4(a5, a6);
    v12 = swift_allocObject();
    v13 = j__malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * v13 - 64;
  }

  else
  {
    v12 = _swiftEmptyArrayStorage;
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[v10])
    {
      memmove(v14, v15, v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, v10);
  }

  return v12;
}

void *sub_10112871C(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B5C90, &qword_1013D7310);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1000BC4D4(&qword_1016B5C98, &qword_1013D7318);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101128850(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016B3F20, &qword_1013D4C70);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10112896C(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8EE8, &qword_101408E40);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_101128AB8(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
      if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v7 = a2;
      }
    }
  }

  else
  {
    v7 = a2;
  }

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    sub_1000BC4D4(&qword_1016C8D68, &qword_101408D08);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

size_t sub_101128BDC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_1000BC4D4(a5, a6);
  v16 = *(sub_1000BC4D4(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = j__malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v18 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(sub_1000BC4D4(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

Swift::Int sub_101128E3C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = _swiftEmptyArrayStorage;
      }

      else
      {
        v5 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v5[2] = v2 / 2;
      }

      v7[0] = v5 + 4;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_101129004(v7, v8, a1, v4);
      v6[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_101128F34(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_101128F34(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 16 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = (v6 + 16 * v4);
    result = *v9;
    v10 = v9[1];
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 - 2) && v10 == *(v12 - 1);
      if (v13 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 16;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *v12;
      v10 = v12[1];
      *v12 = *(v12 - 1);
      *(v12 - 1) = v10;
      *(v12 - 2) = result;
      v12 -= 2;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_101129004(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v95 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_106:
    v9 = *v95;
    if (!*v95)
    {
      goto LABEL_144;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_138:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1011295E0((*a3 + 16 * *v87), (*a3 + 16 * *v89), (*a3 + 16 * v90), v9);
        if (v5)
        {
        }

        if (v90 < v88)
        {
          goto LABEL_130;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_131;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_132;
        }

        v86 = *v85 - 1;
        result = memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
        }
      }

      goto LABEL_142;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = (*a3 + 16 * v7);
      result = *v10;
      v11 = (*a3 + 16 * v9);
      if (*v10 == *v11 && v10[1] == v11[1])
      {
        v13 = 0;
      }

      else
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v13 = result;
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v14 = v11 + 3;
        v15 = v11 + 3;
        do
        {
          result = v14[1];
          v17 = v15[2];
          v15 += 2;
          v16 = v17;
          if (result == *(v14 - 1) && v16 == *v14)
          {
            if (v13)
            {
              goto LABEL_24;
            }
          }

          else
          {
            result = _stringCompareWithSmolCheck(_:_:expecting:)();
            if ((v13 ^ result))
            {
              goto LABEL_23;
            }
          }

          ++v7;
          v14 = v15;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v13)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_135;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 16 * v7;
          v21 = 16 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v27 = *a3;
              if (!*a3)
              {
                goto LABEL_141;
              }

              v23 = (v27 + v21);
              v24 = v27 + v20;
              v25 = *v23;
              v26 = v23[1];
              *v23 = *(v24 - 16);
              *(v24 - 16) = v25;
              *(v24 - 8) = v26;
            }

            ++v22;
            --v19;
            v20 -= 16;
            v21 += 16;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v28 = a3[1];
    if (v7 < v28)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_134;
      }

      if (v7 - v9 < a4)
      {
        break;
      }
    }

LABEL_55:
    if (v7 < v9)
    {
      goto LABEL_133;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v40 = *(v8 + 2);
    v39 = *(v8 + 3);
    v41 = v40 + 1;
    if (v40 >= v39 >> 1)
    {
      result = sub_100A5B430((v39 > 1), v40 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v41;
    v42 = &v8[16 * v40];
    *(v42 + 4) = v9;
    *(v42 + 5) = v7;
    v43 = *v95;
    if (!*v95)
    {
      goto LABEL_143;
    }

    if (v40)
    {
      while (1)
      {
        v44 = v41 - 1;
        if (v41 >= 4)
        {
          break;
        }

        if (v41 == 3)
        {
          v45 = *(v8 + 4);
          v46 = *(v8 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_75:
          if (v48)
          {
            goto LABEL_121;
          }

          v61 = &v8[16 * v41];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_124;
          }

          v67 = &v8[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_127;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_128;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v41 - 2;
            }

            goto LABEL_96;
          }

          goto LABEL_89;
        }

        v71 = &v8[16 * v41];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_89:
        if (v66)
        {
          goto LABEL_123;
        }

        v74 = &v8[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_126;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_96:
        v9 = v44 - 1;
        if (v44 - 1 >= v41)
        {
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
LABEL_129:
          __break(1u);
LABEL_130:
          __break(1u);
LABEL_131:
          __break(1u);
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
LABEL_135:
          __break(1u);
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (!*a3)
        {
          goto LABEL_140;
        }

        v82 = *&v8[16 * v9 + 32];
        v83 = *&v8[16 * v44 + 40];
        sub_1011295E0((*a3 + 16 * v82), (*a3 + 16 * *&v8[16 * v44 + 32]), (*a3 + 16 * v83), v43);
        if (v5)
        {
        }

        if (v83 < v82)
        {
          goto LABEL_117;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100B31E68(v8);
        }

        if (v9 >= *(v8 + 2))
        {
          goto LABEL_118;
        }

        v84 = &v8[16 * v9];
        *(v84 + 4) = v82;
        *(v84 + 5) = v83;
        result = sub_100B31DDC(v44);
        v41 = *(v8 + 2);
        if (v41 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v8[16 * v41 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_119;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_120;
      }

      v56 = &v8[16 * v41];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_122;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_125;
      }

      if (v60 >= v52)
      {
        v78 = &v8[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_129;
        }

        if (v47 < v81)
        {
          v44 = v41 - 2;
        }

        goto LABEL_96;
      }

      goto LABEL_75;
    }

LABEL_3:
    v6 = a3[1];
    if (v7 >= v6)
    {
      goto LABEL_106;
    }
  }

  if (__OFADD__(v9, a4))
  {
    goto LABEL_136;
  }

  v93 = v5;
  if (v9 + a4 >= v28)
  {
    v5 = a3[1];
  }

  else
  {
    v5 = (v9 + a4);
  }

  if (v5 < v9)
  {
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  if (v7 == v5)
  {
LABEL_54:
    v5 = v93;
    goto LABEL_55;
  }

  v29 = *a3;
  v30 = *a3 + 16 * v7;
  v92 = v9;
  v31 = (v9 - v7);
LABEL_43:
  v32 = (v29 + 16 * v7);
  v33 = *v32;
  v34 = v32[1];
  v35 = v31;
  v36 = v30;
  while (1)
  {
    v37 = v33 == *(v36 - 2) && v34 == *(v36 - 1);
    if (v37 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) == 0))
    {
LABEL_42:
      ++v7;
      v30 += 16;
      --v31;
      if (v7 != v5)
      {
        goto LABEL_43;
      }

      v7 = v5;
      v9 = v92;
      goto LABEL_54;
    }

    if (!v29)
    {
      break;
    }

    v33 = *v36;
    v34 = v36[1];
    *v36 = *(v36 - 1);
    *(v36 - 1) = v34;
    *(v36 - 2) = v33;
    v36 -= 2;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
  return result;
}

uint64_t sub_1011295E0(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 15;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 4;
  v11 = a3 - __src;
  v12 = a3 - __src + 15;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 4;
  if (v10 < v12 >> 4)
  {
    if (a4 != __dst || &__dst[16 * v10] <= a4)
    {
      memmove(a4, __dst, 16 * v10);
    }

    v14 = &v4[16 * v10];
    if (v8 < 16)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_43;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v16 = *v6 == *v4 && *(v6 + 1) == *(v4 + 1);
      if (!v16 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 16;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 16;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 16;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = *v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[16 * v13] <= a4)
  {
    memmove(a4, __src, 16 * v13);
  }

  v14 = &v4[16 * v13];
  if (v11 >= 16 && v6 > v7)
  {
LABEL_28:
    v17 = v6 - 16;
    v5 -= 16;
    v18 = v14;
    do
    {
      v19 = *(v18 - 2);
      v20 = *(v18 - 1);
      v18 -= 16;
      v21 = v19 == *(v6 - 2) && v20 == *(v6 - 1);
      if (!v21 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        if (v5 + 16 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 16, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_43;
        }

        goto LABEL_28;
      }

      if (v5 + 16 != v14)
      {
        *v5 = *v18;
      }

      v5 -= 16;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_43:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0xFuLL : 0)) & 0xFFFFFFFFFFFFFFF0])
  {
    memmove(v6, v4, 16 * ((v14 - v4) / 16));
  }

  return 1;
}

id sub_101129808()
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = 0;
  v2 = [v0 initForReadingFromData:isa error:&v6];

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

uint64_t sub_101129930(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100DE9538(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_1011299C8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100101BAC();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100017D5C(v6, *v4);
      sub_100DE9688(v7, v6, v5);
      sub_100016590(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_101129AF4(uint64_t a1)
{
  v2 = type metadata accessor for SharedBeaconRecord(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_100009894(&qword_1016C8E18, type metadata accessor for SharedBeaconRecord);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_10112BD6C(v12, v7, type metadata accessor for SharedBeaconRecord);
      sub_100DE9B64(v9, v7);
      sub_10112BDD4(v9, type metadata accessor for SharedBeaconRecord);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_101129C80(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SPDisabledReason(0);
  sub_100009894(&unk_1016A9A50, type metadata accessor for SPDisabledReason);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DE9D98(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_101129D3C(uint64_t a1)
{
  v2 = type metadata accessor for BeaconNamingRecord();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_100009894(&qword_1016C8E10, type metadata accessor for BeaconNamingRecord);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_10112BD6C(v12, v7, type metadata accessor for BeaconNamingRecord);
      sub_100DE9EA8(v9, v7);
      sub_10112BDD4(v9, type metadata accessor for BeaconNamingRecord);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_101129EC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1004695BC();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_100017D5C(v6, *v4);
      sub_100DEAD2C(v7, v6, v5);
      sub_100016590(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_101129FC8(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100589064();
  result = Set.init(minimumCapacity:)();
  v9 = result;
  if (v2)
  {
    v4 = (a1 + 48);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v7 = *(v4 - 16);

      sub_100DEB438(&v8, v7, v6, v5);

      v4 += 3;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t sub_10112A090(uint64_t a1)
{
  v2 = type metadata accessor for RawSearchResult();
  v3 = *(v2 - 1);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v46 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v46 - v9;
  v11 = __chkstk_darwin(v8);
  v13 = &v46 - v12;
  __chkstk_darwin(v11);
  v51 = &v46 - v14;
  v15 = *(a1 + 16);
  sub_100009894(&qword_1016C8D60, type metadata accessor for RawSearchResult);
  v16 = Set.init(minimumCapacity:)();
  v48 = v15;
  if (!v15)
  {
    return v16;
  }

  v17 = 0;
  v47 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v18 = *(v3 + 72);
  v19 = v51;
  v50 = v13;
  while (1)
  {
    v49 = v17;
    sub_10112BD6C(v47 + v18 * v17, v19, type metadata accessor for RawSearchResult);
    v20 = *(v16 + 40);
    Hasher.init(_seed:)();
    sub_100D15128();
    v21 = Hasher._finalize()();
    v22 = -1 << *(v16 + 32);
    v23 = v21 & ~v22;
    if ((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
    {
      v24 = ~v22;
      v25 = *v19;
      do
      {
        sub_10112BD6C(*(v16 + 48) + v23 * v18, v7, type metadata accessor for RawSearchResult);
        v26 = v51;
        if (*v7 == v25 && (v27 = v2[5], (static Date.== infix(_:_:)() & 1) != 0) && *&v7[v2[6]] == *(v26 + v2[6]) && *&v7[v2[7]] == *(v26 + v2[7]) && *&v7[v2[8]] == *(v26 + v2[8]))
        {
          v28 = v2[12];
          v29 = static UUID.== infix(_:_:)();
          sub_10112BDD4(v7, type metadata accessor for RawSearchResult);
          if (v29)
          {
            v19 = v51;
            sub_10112BDD4(v51, type metadata accessor for RawSearchResult);
            goto LABEL_34;
          }
        }

        else
        {
          sub_10112BDD4(v7, type metadata accessor for RawSearchResult);
        }

        v23 = (v23 + 1) & v24;
      }

      while (((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v31 = v50;
    sub_10112BD6C(v51, v50, type metadata accessor for RawSearchResult);
    v52 = v16;
    v32 = *(v16 + 16);
    if (*(v16 + 24) <= v32)
    {
      v33 = v32 + 1;
      if (isUniquelyReferenced_nonNull_native)
      {
        sub_100DF50BC(v33);
      }

      else
      {
        sub_100E08824(v33);
      }

      v16 = v52;
      v34 = *(v52 + 40);
      Hasher.init(_seed:)();
      sub_100D15128();
      v35 = Hasher._finalize()();
      v36 = -1 << *(v16 + 32);
      v23 = v35 & ~v36;
      if ((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23))
      {
        v37 = ~v36;
        v38 = *v31;
        do
        {
          sub_10112BD6C(*(v16 + 48) + v23 * v18, v10, type metadata accessor for RawSearchResult);
          if (*v10 == v38 && (v39 = v2[5], (static Date.== infix(_:_:)() & 1) != 0) && *&v10[v2[6]] == *&v50[v2[6]] && *&v10[v2[7]] == *&v50[v2[7]] && *&v10[v2[8]] == *&v50[v2[8]])
          {
            v40 = v2[12];
            v41 = static UUID.== infix(_:_:)();
            sub_10112BDD4(v10, type metadata accessor for RawSearchResult);
            if (v41)
            {
              goto LABEL_37;
            }
          }

          else
          {
            sub_10112BDD4(v10, type metadata accessor for RawSearchResult);
          }

          v23 = (v23 + 1) & v37;
        }

        while (((*(v16 + 56 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v23) & 1) != 0);
        v31 = v50;
      }
    }

    else if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100E04FE0();
      v16 = v52;
    }

    *(v16 + ((v23 >> 3) & 0xFFFFFFFFFFFFFF8) + 56) |= 1 << v23;
    sub_10112BC34(v31, *(v16 + 48) + v23 * v18, type metadata accessor for RawSearchResult);
    v19 = v51;
    sub_10112BDD4(v51, type metadata accessor for RawSearchResult);
    v42 = *(v16 + 16);
    v43 = __OFADD__(v42, 1);
    v44 = v42 + 1;
    if (v43)
    {
      break;
    }

    *(v16 + 16) = v44;
LABEL_34:
    v17 = v49 + 1;
    if (v49 + 1 == v48)
    {
      return v16;
    }
  }

  __break(1u);
LABEL_37:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_10112A718(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for URLResourceKey(0);
  sub_100009894(&qword_1016964C0, type metadata accessor for URLResourceKey);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DED13C(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112A7D4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10058BB20();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_100DED444(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10112A86C(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000BC4D4(&qword_1016A1360, &unk_1013A52C0);
  sub_10048E9B8();
  result = Set.init(minimumCapacity:)();
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      sub_10002E98C(v6, *v4);
      sub_100DED594(v7, v6, v5);
      sub_100429EA8(v7[0], v7[1]);
      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_10112A91C(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SPBeaconType(0);
  sub_100009894(&qword_1016C1AA0, type metadata accessor for SPBeaconType);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DEE55C(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112A9D8(uint64_t a1)
{
  v2 = type metadata accessor for WildModeTrackingLocation(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = (&v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_100009894(&qword_1016C8E20, type metadata accessor for WildModeTrackingLocation);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_10112BD6C(v12, v7, type metadata accessor for WildModeTrackingLocation);
      sub_100DEE7EC(v9, v7);
      sub_10112BDD4(v9, type metadata accessor for WildModeTrackingLocation);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_10112AB64(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
  sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;

      sub_100DEEB44(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112AC34(uint64_t a1)
{
  v2 = type metadata accessor for Destination();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100009894(&qword_1016BC000, &type metadata accessor for Destination);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100DEEC84(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10112AE04(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for AnyCancellable();
  sub_100009894(&qword_1016BC180, &type metadata accessor for AnyCancellable);
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (!i)
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_100DEF098(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10112AFA0(uint64_t a1)
{
  v2 = *(a1 + 16);
  type metadata accessor for SPBeaconTaskName(0);
  sub_100009894(&qword_1016964D0, type metadata accessor for SPBeaconTaskName);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DEF808(&v6, v5);

      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112B084(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t *, uint64_t))
{
  v6 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_10112B154(uint64_t a1)
{
  v2 = type metadata accessor for BeaconIdentifier();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_100009894(&qword_1016C8D90, type metadata accessor for BeaconIdentifier);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_10112BD6C(v12, v7, type metadata accessor for BeaconIdentifier);
      sub_100DEFD8C(v9, v7);
      sub_10112BDD4(v9, type metadata accessor for BeaconIdentifier);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_10112B2E0(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10112BEDC();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = a1 + 32;
    do
    {
      v5 = *(v4 + 48);
      v12[2] = *(v4 + 32);
      v12[3] = v5;
      v12[4] = *(v4 + 64);
      v13 = *(v4 + 80);
      v6 = *(v4 + 16);
      v12[0] = *v4;
      v12[1] = v6;
      sub_100E0ED8C(v12, v9);
      sub_100DF010C(v7, v12);
      v9[3] = v7[3];
      v9[4] = v7[4];
      v10 = v8;
      v9[0] = v7[0];
      v9[1] = v7[1];
      v9[2] = v7[2];
      sub_100E0EDE8(v9);
      v4 += 88;
      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10112B3C0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_10112BF84();
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_100015794(v12, v7);
      sub_100DF0448(v9, v7);
      sub_1002EA198(v9);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_10112B534(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DF0D58(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

uint64_t sub_10112B5A8(unint64_t a1)
{
  i = a1 >> 62;
  if (a1 >> 62)
  {
LABEL_19:
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  type metadata accessor for Characteristic();
  sub_100009894(&qword_1016A5B28, type metadata accessor for Characteristic);
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (!i)
  {
    v5 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v5)
    {
      return result;
    }

LABEL_7:
    for (i = 0; ; ++i)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
LABEL_15:
          __break(1u);
          return v10;
        }
      }

      else
      {
        if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_19;
        }

        v7 = *(a1 + 8 * i + 32);

        v8 = i + 1;
        if (__OFADD__(i, 1))
        {
          goto LABEL_15;
        }
      }

      sub_100DF104C(&v9, v7);

      if (v8 == v5)
      {
        return v10;
      }
    }
  }

  v6 = result;
  v5 = _CocoaArrayWrapper.endIndex.getter();
  result = v6;
  if (v5)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_10112B748(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_10112BE34();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v2)
  {
    v4 = (a1 + 64);
    do
    {
      v6 = *(v4 - 4);
      v5 = *(v4 - 3);
      v8 = *(v4 - 2);
      v7 = *(v4 - 1);
      v9 = *v4;
      v4 += 5;
      v12[0] = v6;
      v12[1] = v5;
      v12[2] = v8;
      v12[3] = v7;
      v12[4] = v9;

      sub_100DF1524(v10, v12);

      --v2;
    }

    while (v2);
    return v11;
  }

  return result;
}

uint64_t sub_10112B800(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_100D48DC8();
  result = Set.init(minimumCapacity:)();
  v13 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = v4[7];
      v14[6] = v4[6];
      v14[7] = v5;
      v6 = v4[9];
      v14[8] = v4[8];
      v14[9] = v6;
      v7 = v4[3];
      v14[2] = v4[2];
      v14[3] = v7;
      v8 = v4[5];
      v14[4] = v4[4];
      v14[5] = v8;
      v9 = *v4;
      v10 = v4[1];
      v4 += 10;
      v14[0] = v9;
      v14[1] = v10;
      sub_10013CD18(v14, v12);
      sub_100DF1AF8(v11, v14);
      v12[6] = v11[6];
      v12[7] = v11[7];
      v12[8] = v11[8];
      v12[9] = v11[9];
      v12[2] = v11[2];
      v12[3] = v11[3];
      v12[4] = v11[4];
      v12[5] = v11[5];
      v12[0] = v11[0];
      v12[1] = v11[1];
      sub_10013CDDC(v12);
      --v2;
    }

    while (v2);
    return v13;
  }

  return result;
}

uint64_t sub_10112B8D8(uint64_t a1)
{
  v2 = type metadata accessor for MACAddress();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_100009894(&unk_1016BC080, &type metadata accessor for MACAddress);
  result = Set.init(minimumCapacity:)();
  v18 = result;
  if (v10)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, v2);
      sub_100DED164(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_10112BAD8(uint64_t a1, void (*a2)(void), uint64_t a3, void (*a4)(char *, void))
{
  v6 = *(a1 + 16);
  a2();
  result = Set.init(minimumCapacity:)();
  v11 = result;
  if (v6)
  {
    v8 = (a1 + 32);
    do
    {
      v9 = *v8++;
      a4(&v10, v9);
      --v6;
    }

    while (v6);
    return v11;
  }

  return result;
}

uint64_t sub_10112BB58(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000BC4D4(&qword_1016ABEB0, &unk_1013BFD40);
  sub_10112BC9C();
  result = Set.init(minimumCapacity:)();
  v7 = result;
  if (v2)
  {
    v4 = (a1 + 32);
    do
    {
      v5 = *v4++;
      sub_100DF27F4(&v6, v5);
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

unint64_t sub_10112BBE0()
{
  result = qword_1016C8D58;
  if (!qword_1016C8D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8D58);
  }

  return result;
}

uint64_t sub_10112BC34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_10112BC9C()
{
  result = qword_1016C8DF0;
  if (!qword_1016C8DF0)
  {
    sub_1000BC580(&qword_1016ABEB0, &unk_1013BFD40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8DF0);
  }

  return result;
}

unint64_t sub_10112BD18()
{
  result = qword_1016C8E08;
  if (!qword_1016C8E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8E08);
  }

  return result;
}

uint64_t sub_10112BD6C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10112BDD4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10112BE34()
{
  result = qword_1016C8E48;
  if (!qword_1016C8E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8E48);
  }

  return result;
}

unint64_t sub_10112BE88()
{
  result = qword_1016C8E70;
  if (!qword_1016C8E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8E70);
  }

  return result;
}

unint64_t sub_10112BEDC()
{
  result = qword_1016C8E90;
  if (!qword_1016C8E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8E90);
  }

  return result;
}

unint64_t sub_10112BF30()
{
  result = qword_1016C8EF8;
  if (!qword_1016C8EF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8EF8);
  }

  return result;
}

unint64_t sub_10112BF84()
{
  result = qword_1016C8F30;
  if (!qword_1016C8F30)
  {
    sub_1000BC580(&qword_1016980D0, &unk_10138F3B0);
    sub_100009894(&qword_1016967B0, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8F30);
  }

  return result;
}

unint64_t sub_10112C038()
{
  result = qword_1016C8F48;
  if (!qword_1016C8F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8F48);
  }

  return result;
}

unint64_t sub_10112C08C()
{
  result = qword_1016C8F98;
  if (!qword_1016C8F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8F98);
  }

  return result;
}

uint64_t sub_10112C0E8@<X0>(void *a1@<X8>)
{
  v6 = *v1;
  v7 = v1[1];
  v8 = (*v1)[2];
  if (v7 >= v8)
  {
    goto LABEL_18;
  }

  if (v7 + 1 >= v8)
  {
    v34 = *v1;
    sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
    sub_10112C464();
    v3 = DataProtocol.hexString.getter();
    v2 = v17;
    if (qword_101695288 == -1)
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  if (v7 < 0)
  {
    __break(1u);
LABEL_21:
    swift_once();
LABEL_10:
    v18 = type metadata accessor for Logger();
    sub_1000076D4(v18, qword_10177C730);

    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v21 = 136446210;
      v23 = sub_1000136BC(v3, v2, &v34);

      *(v21 + 4) = v23;
      v24 = "Missing length: %{public}s";
      v25 = v20;
      v26 = v19;
      v27 = v21;
      v28 = 12;
LABEL_15:
      _os_log_impl(&_mh_execute_header, v26, v25, v24, v27, v28);
      sub_100007BAC(v22);

LABEL_17:

LABEL_18:
      v4 = 0;
      result = 0;
      v9 = 0;
      v11 = 0;
      v15 = 0;
      goto LABEL_19;
    }

LABEL_16:

    goto LABEL_17;
  }

  v9 = (v6 + 4);
  v10 = *(v6 + v7 + 33);
  v11 = v7 + 2;
  v12 = v7 + 2 + v10;
  if (__OFADD__(v7 + 2, v10))
  {
    __break(1u);
    goto LABEL_23;
  }

  if (v12 < v11)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = *(v9 + v7);
  if (v12 - 1 >= v8)
  {
    v34 = *v1;
    sub_1000BC4D4(&unk_10169BA40, &unk_1013918E0);
    sub_10112C464();
    v11 = DataProtocol.hexString.getter();
    v9 = v29;
    if (qword_101695288 == -1)
    {
      goto LABEL_13;
    }

    goto LABEL_25;
  }

  v13 = __OFADD__(v7, v10 + 2);
  v14 = v7 + v10 + 2;
  if (v13)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    swift_once();
LABEL_13:
    v30 = type metadata accessor for Logger();
    sub_1000076D4(v30, qword_10177C730);

    v19 = Logger.logObject.getter();
    v31 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v19, v31))
    {
      v32 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v34 = v22;
      *v32 = 16777986;
      *(v32 + 4) = v4;
      *(v32 + 5) = 256;
      *(v32 + 7) = v10;
      *(v32 + 8) = 2082;
      v33 = sub_1000136BC(v11, v9, &v34);

      *(v32 + 10) = v33;
      v24 = "Truncated data for T:%hhu L:%hhu: %{public}s";
      v25 = v31;
      v26 = v19;
      v27 = v32;
      v28 = 18;
      goto LABEL_15;
    }

    goto LABEL_16;
  }

  v15 = (2 * v12) | 1;
  v1[1] = v14;

LABEL_19:
  *a1 = v4;
  a1[1] = result;
  a1[2] = v9;
  a1[3] = v11;
  a1[4] = v15;
  return result;
}

unint64_t sub_10112C464()
{
  result = qword_1016C8FB8;
  if (!qword_1016C8FB8)
  {
    sub_1000BC580(&unk_10169BA40, &unk_1013918E0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016C8FB8);
  }

  return result;
}

void *sub_10112C4C8(uint64_t a1, unint64_t a2)
{
  v4 = type metadata accessor for Data.Iterator();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
LABEL_12:
      sub_100016590(a1, a2);
      return _swiftEmptyArrayStorage;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11)
      {
        goto LABEL_8;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    if (v10)
    {
      goto LABEL_10;
    }

    v11 = BYTE6(a2);
    if (!BYTE6(a2))
    {
      goto LABEL_12;
    }

LABEL_8:
    while (1)
    {
      v14 = sub_1000148E8(v11, 0);
      v15 = Data._copyContents(initializing:)();
      sub_100016590(a1, a2);
      v16 = *(v5 + 8);
      v5 += 8;
      v16(v9, v4);
      result = v14;
      if (v15 == v11)
      {
        break;
      }

      __break(1u);
LABEL_10:
      v17 = HIDWORD(a1) - a1;
      if (__OFSUB__(HIDWORD(a1), a1))
      {
        goto LABEL_15;
      }

      v11 = v17;
      if (!v17)
      {
        goto LABEL_12;
      }
    }
  }

  return result;
}

uint64_t sub_10112C648@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  v5 = _HashTable.startBucket.getter();
  v6 = 1;
  if (v5 != 1 << *(a1 + 32))
  {
    sub_1011339C8(v5, *(a1 + 36), a1, a2);
    v6 = 0;
  }

  v7 = type metadata accessor for UUID();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t sub_10112C704@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_101698C18, &qword_101390740);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = _HashTable.startBucket.getter();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v16 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    sub_101133F28(v7, &v7[v12], v9, *(a1 + 36), 0, a1);
    v13 = type metadata accessor for UUID();
    v14 = *(*(v13 - 8) + 32);
    v14(a2, v7, v13);
    v14(a2 + *(v4 + 48), &v7[v12], v13);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_10112C8E0(uint64_t a1)
{
  v2 = -1 << *(a1 + 32);
  v3 = _HashTable.startBucket.getter();
  if (v3 == 1 << *(a1 + 32))
  {
    return 0;
  }

  sub_10113427C(v3, *(a1 + 36), 0, a1);
}

uint64_t sub_10112C948(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000BB408(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000BB408(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  sub_101133A9C(v3, v5, v2 != 0, a1, qword_1016C9080, SPUnauthorizedTrackingObservation_ptr);
  v13 = v12;
  sub_1000BB408(v3, v5, v2 != 0);
  return v13;
}

uint64_t sub_10112CA74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = -1 << *(a1 + 32);
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    *(a2 + 64) = 0;
    *(a2 + 32) = 0u;
    *(a2 + 48) = 0u;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  else
  {
    sub_101134114(result, *(a1 + 36), a1, &v12);
    v6 = v14;
    v7 = v15;
    v17[2] = v14;
    v17[3] = v15;
    v8 = v16;
    v18 = v16;
    v9 = v13;
    v10 = v12;
    v17[0] = v12;
    v17[1] = v13;
    *(a2 + 32) = v14;
    *(a2 + 48) = v7;
    *(a2 + 64) = v8;
    *a2 = v10;
    *(a2 + 16) = v9;
    v20 = v8;
    v19[2] = v6;
    v19[3] = v7;
    v19[0] = v10;
    v19[1] = v9;
    sub_1009871D4(v17, &v11);
    return sub_1007206EC(v19);
  }

  return result;
}

uint64_t sub_10112CB48@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = sub_1000BC4D4(&qword_1016BCD28, &qword_1013EAC98);
  v16 = *(v4 - 8);
  v5 = *(v16 + 64);
  __chkstk_darwin(v4);
  v7 = &v15 - v6;
  v8 = -1 << *(a1 + 32);
  v9 = _HashTable.startBucket.getter();
  if (v9 == 1 << *(a1 + 32))
  {
    v10 = *(v16 + 56);

    return v10(a2, 1, 1, v4);
  }

  else
  {
    v12 = *(v4 + 48);
    sub_101134030(v7, &v7[v12], v9, *(a1 + 36), 0, a1);
    *a2 = *v7;
    v13 = *(v4 + 48);
    v14 = type metadata accessor for MACAddress();
    (*(*(v14 - 8) + 32))(&a2[v13], &v7[v12], v14);
    return (*(v16 + 56))(a2, 0, 1, v4);
  }
}

uint64_t sub_10112CD04(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = static __CocoaSet.Index.== infix(_:_:)();
    sub_1000BB408(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      sub_1000BB408(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v11 = -1 << *(a1 + 32);
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  v12 = sub_101133CB4(v3, v5, v2 != 0, a1);
  sub_1000BB408(v3, v5, v2 != 0);
  return v12;
}

uint64_t sub_10112CE20@<X0>(uint64_t a1@<X8>)
{
  v39 = a1;
  v2 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v44 = *(v2 - 8);
  v3 = *(v44 + 64);
  v4 = __chkstk_darwin(v2);
  v38 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin(v4);
  v45 = &v36 - v7;
  __chkstk_darwin(v6);
  v37 = (&v36 - v8);
  v42 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v9 = *(v42 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v42);
  v13 = &v36 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v36 - v14;
  sub_1000BC4D4(&unk_1016C8FD0, &qword_1014090A0);
  v16 = *(v9 + 72);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v43 = 4 * v16;
  v41 = swift_allocObject();
  v18 = v41 + v17;
  v19 = type metadata accessor for KeySyncSnapshot();
  sub_1000D2A70(v1 + v19[5], v18, &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000D2A70(v1 + v19[6], v18 + v16, &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000D2A70(v1 + v19[10], v18 + 2 * v16, &unk_1016AF8A0, &unk_10139D7C0);
  v20 = v1 + v19[9];
  v21 = v1;
  v22 = v18;
  sub_1000D2A70(v20, v18 + 3 * v16, &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000D2A70(v21 + v19[11], v18 + v43, &unk_1016AF8A0, &unk_10139D7C0);
  v23 = (v44 + 48);
  v24 = _swiftEmptyArrayStorage;
  v25 = 5;
  v40 = v22;
  v43 = v2;
  do
  {
    sub_1000D2A70(v22, v15, &unk_1016AF8A0, &unk_10139D7C0);
    sub_1000D2AD8(v15, v13, &unk_1016AF8A0, &unk_10139D7C0);
    if ((*v23)(v13, 1, v2) == 1)
    {
      sub_10000B3A8(v13, &unk_1016AF8A0, &unk_10139D7C0);
    }

    else
    {
      sub_1000D2AD8(v13, v45, &unk_1016C8FC0, &unk_10139D7D0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v24 = sub_100A5B85C(0, v24[2] + 1, 1, v24);
      }

      v27 = v24[2];
      v26 = v24[3];
      if (v27 >= v26 >> 1)
      {
        v24 = sub_100A5B85C(v26 > 1, v27 + 1, 1, v24);
      }

      v24[2] = v27 + 1;
      sub_1000D2AD8(v45, v24 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v27, &unk_1016C8FC0, &unk_10139D7D0);
      v2 = v43;
    }

    v22 += v16;
    --v25;
  }

  while (v25);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v28 = v24[2];
  if (!v28)
  {

    v34 = 1;
    v33 = v39;
    return (*(v44 + 56))(v33, v34, 1, v2);
  }

  v29 = v24 + ((*(v44 + 80) + 32) & ~*(v44 + 80));
  v30 = v37;
  result = sub_1000D2A70(v29, v37, &unk_1016C8FC0, &unk_10139D7D0);
  v32 = v38;
  if (v28 == 1)
  {
LABEL_12:

    v33 = v39;
    sub_1000D2AD8(v30, v39, &unk_1016C8FC0, &unk_10139D7D0);
    v34 = 0;
    return (*(v44 + 56))(v33, v34, 1, v2);
  }

  v35 = 1;
  while (v35 < v24[2])
  {
    sub_1000D2A70(v29 + *(v44 + 72) * v35, v32, &unk_1016C8FC0, &unk_10139D7D0);
    if (*v30 >= *v32)
    {
      result = sub_10000B3A8(v32, &unk_1016C8FC0, &unk_10139D7D0);
    }

    else
    {
      sub_10000B3A8(v30, &unk_1016C8FC0, &unk_10139D7D0);
      result = sub_1000D2AD8(v32, v30, &unk_1016C8FC0, &unk_10139D7D0);
    }

    if (v28 == ++v35)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
  return result;
}

uint64_t type metadata accessor for KeySyncSnapshot()
{
  result = qword_1016C9168;
  if (!qword_1016C9168)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10112D3D0@<X0>(uint64_t a1@<X8>)
{
  v38 = a1;
  v45 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v39 = *(v45 - 8);
  v1 = *(v39 + 64);
  v2 = __chkstk_darwin(v45);
  v4 = (&v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = __chkstk_darwin(v2);
  v44 = &v38 - v6;
  __chkstk_darwin(v5);
  v8 = (&v38 - v7);
  v43 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v9 = *(v43 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v43);
  v13 = &v38 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  sub_1000BC4D4(&unk_1016C8FD0, &qword_1014090A0);
  v16 = *(v9 + 72);
  v17 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v42 = swift_allocObject();
  v18 = v42 + v17;
  v19 = type metadata accessor for KeySyncSnapshot();
  v20 = v41;
  sub_1000D2A70(&v41[*(v19 + 20)], v18, &unk_1016AF8A0, &unk_10139D7C0);
  v21 = v20 + *(v19 + 24);
  v22 = v18;
  v23 = v16;
  sub_1000D2A70(v21, v22 + v16, &unk_1016AF8A0, &unk_10139D7C0);
  sub_1000D2A70(v22, v15, &unk_1016AF8A0, &unk_10139D7C0);
  v41 = v15;
  v24 = v13;
  v25 = v13;
  v26 = v39;
  sub_1000D2AD8(v15, v24, &unk_1016AF8A0, &unk_10139D7C0);
  v40 = *(v26 + 48);
  if (v40(v25, 1, v45) != 1)
  {
    sub_1000D2AD8(v25, v44, &unk_1016C8FC0, &unk_10139D7D0);
    i = _swiftEmptyArrayStorage;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_4;
    }

    goto LABEL_25;
  }

  sub_10000B3A8(v25, &unk_1016AF8A0, &unk_10139D7C0);
  for (i = _swiftEmptyArrayStorage; ; sub_1000D2AD8(v44, i + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v29, &unk_1016C8FC0, &unk_10139D7D0))
  {
    v30 = v22 + v23;
    v31 = v41;
    sub_1000D2A70(v30, v41, &unk_1016AF8A0, &unk_10139D7C0);
    sub_1000D2AD8(v31, v25, &unk_1016AF8A0, &unk_10139D7C0);
    if (v40(v25, 1, v45) == 1)
    {
      sub_10000B3A8(v25, &unk_1016AF8A0, &unk_10139D7C0);
    }

    else
    {
      v32 = v44;
      sub_1000D2AD8(v25, v44, &unk_1016C8FC0, &unk_10139D7D0);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        i = sub_100A5B85C(0, i[2] + 1, 1, i);
      }

      v34 = i[2];
      v33 = i[3];
      if (v34 >= v33 >> 1)
      {
        i = sub_100A5B85C(v33 > 1, v34 + 1, 1, i);
      }

      i[2] = v34 + 1;
      sub_1000D2AD8(v32, i + ((*(v26 + 80) + 32) & ~*(v26 + 80)) + *(v26 + 72) * v34, &unk_1016C8FC0, &unk_10139D7D0);
    }

    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v35 = i[2];
    if (!v35)
    {
      break;
    }

    v25 = i + ((*(v26 + 80) + 32) & ~*(v26 + 80));
    sub_1000D2A70(v25, v8, &unk_1016C8FC0, &unk_10139D7D0);
    if (v35 == 1)
    {
LABEL_16:

      v36 = v38;
      sub_1000D2AD8(v8, v38, &unk_1016C8FC0, &unk_10139D7D0);
      return (*(v26 + 56))(v36, 0, 1, v45);
    }

    v23 = 1;
    while (v23 < i[2])
    {
      sub_1000D2A70(v25 + *(v26 + 72) * v23, v4, &unk_1016C8FC0, &unk_10139D7D0);
      if (*v8 >= *v4)
      {
        sub_10000B3A8(v4, &unk_1016C8FC0, &unk_10139D7D0);
      }

      else
      {
        sub_10000B3A8(v8, &unk_1016C8FC0, &unk_10139D7D0);
        sub_1000D2AD8(v4, v8, &unk_1016C8FC0, &unk_10139D7D0);
      }

      if (v35 == ++v23)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_25:
    i = sub_100A5B85C(0, i[2] + 1, 1, i);
LABEL_4:
    v29 = i[2];
    v28 = i[3];
    if (v29 >= v28 >> 1)
    {
      i = sub_100A5B85C(v28 > 1, v29 + 1, 1, i);
    }

    i[2] = v29 + 1;
  }

  return (*(v26 + 56))(v38, 1, 1, v45);
}

uint64_t sub_10112D9E4@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v253 = a1;
  v250 = a2;
  v243 = type metadata accessor for DateInterval();
  v244 = *(v243 - 8);
  v2 = *(v244 + 64);
  __chkstk_darwin(v243);
  v249 = &v225 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Date();
  v5 = *(v4 - 8);
  v270 = v4;
  v271 = v5;
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v247 = &v225 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __chkstk_darwin(v7);
  v246 = &v225 - v10;
  v11 = __chkstk_darwin(v9);
  v248 = &v225 - v12;
  __chkstk_darwin(v11);
  v252 = &v225 - v13;
  v14 = sub_1000BC4D4(&unk_1016C9060, &qword_1014090E0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v254 = &v225 - v16;
  v17 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v245 = &v225 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __chkstk_darwin(v19);
  v241 = &v225 - v22;
  v23 = __chkstk_darwin(v21);
  v240 = &v225 - v24;
  v25 = __chkstk_darwin(v23);
  v227 = &v225 - v26;
  v27 = __chkstk_darwin(v25);
  v262 = &v225 - v28;
  __chkstk_darwin(v27);
  v259 = &v225 - v29;
  v265 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v267 = *(v265 - 8);
  v30 = *(v267 + 64);
  v31 = __chkstk_darwin(v265);
  v242 = (&v225 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __chkstk_darwin(v31);
  v230 = (&v225 - v34);
  v35 = __chkstk_darwin(v33);
  v231 = (&v225 - v36);
  v37 = __chkstk_darwin(v35);
  v226 = (&v225 - v38);
  v39 = __chkstk_darwin(v37);
  v263 = &v225 - v40;
  __chkstk_darwin(v39);
  v260 = &v225 - v41;
  v42 = sub_1000BC4D4(&qword_1016C9040, &qword_1014090D0);
  v43 = *(*(v42 - 8) + 64);
  v44 = __chkstk_darwin(v42 - 8);
  v239 = &v225 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v44);
  v256 = &v225 - v46;
  v264 = sub_1000BC4D4(&qword_1016C9018, &qword_1014090B8);
  v266 = *(v264 - 8);
  v47 = *(v266 + 64);
  v48 = __chkstk_darwin(v264);
  v229 = (&v225 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin(v48);
  v257 = &v225 - v50;
  v51 = sub_1000BC4D4(&qword_1016B3D28, &qword_1013D4A90);
  v52 = *(v51 - 8);
  v53 = *(v52 + 64);
  v54 = __chkstk_darwin(v51);
  v56 = &v225 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = __chkstk_darwin(v54);
  v59 = &v225 - v58;
  v60 = __chkstk_darwin(v57);
  v251 = &v225 - v61;
  v62 = __chkstk_darwin(v60);
  v261 = &v225 - v63;
  v64 = __chkstk_darwin(v62);
  v258 = &v225 - v65;
  v66 = __chkstk_darwin(v64);
  v255 = &v225 - v67;
  __chkstk_darwin(v66);
  v69 = &v225 - v68;
  v70 = sub_1000BC4D4(&qword_1016C9048, &qword_1014090D8);
  v71 = *(*(v70 - 8) + 64);
  v72 = __chkstk_darwin(v70 - 8);
  v238 = &v225 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v72);
  v75 = &v225 - v74;
  v76 = sub_1000BC4D4(&qword_1016C8FE8, &qword_1014090A8);
  v77 = *(v76 - 8);
  v78 = *(v77 + 64);
  v79 = __chkstk_darwin(v76);
  v228 = &v225 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v82 = &v225 - v81;
  v269 = type metadata accessor for KeySyncSnapshot();
  v234 = v269[8];
  sub_1000D2A70(v268 + v234, v75, &qword_1016C9048, &qword_1014090D8);
  v83 = *(v77 + 48);
  v236 = v77 + 48;
  v235 = v83;
  v84 = v83(v75, 1, v76);
  v85 = v271;
  v237 = v76;
  v272 = v51;
  if (v84 == 1)
  {
    sub_10000B3A8(v75, &qword_1016C9048, &qword_1014090D8);
    v86 = _swiftEmptyArrayStorage;
  }

  else
  {
    sub_1000D2AD8(v75, v82, &qword_1016C8FE8, &qword_1014090A8);
    v87 = *(v76 + 36);
    v88 = *(v51 + 48);
    *v69 = 6;
    (*(v85 + 16))(&v69[v88], &v82[v87], v270);
    v86 = sub_100A5BCBC(0, 1, 1, _swiftEmptyArrayStorage);
    v90 = v86[2];
    v89 = v86[3];
    if (v90 >= v89 >> 1)
    {
      v86 = sub_100A5BCBC(v89 > 1, v90 + 1, 1, v86);
    }

    sub_10000B3A8(v82, &qword_1016C8FE8, &qword_1014090A8);
    v86[2] = v90 + 1;
    sub_1000D2AD8(v69, v86 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v90, &qword_1016B3D28, &qword_1013D4A90);
  }

  v91 = v269[7];
  v92 = v268;
  v93 = v256;
  sub_1000D2A70(v268 + v91, v256, &qword_1016C9040, &qword_1014090D0);
  v94 = *(v266 + 48);
  v95 = v264;
  v266 += 48;
  v232 = v94;
  v96 = v94(v93, 1, v264);
  v97 = v265;
  v233 = v91;
  if (v96 == 1)
  {
    sub_10000B3A8(v93, &qword_1016C9040, &qword_1014090D0);
    v98 = v97;
    v99 = v92;
    v100 = v267;
  }

  else
  {
    v101 = v93;
    v102 = v257;
    sub_1000D2AD8(v101, v257, &qword_1016C9018, &qword_1014090B8);
    v103 = *(v95 + 36);
    v104 = v272[12];
    v105 = v255;
    *v255 = 5;
    (*(v271 + 16))(&v105[v104], &v102[v103], v270);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_100A5BCBC(0, v86[2] + 1, 1, v86);
    }

    v98 = v97;
    v107 = v86[2];
    v106 = v86[3];
    v99 = v92;
    if (v107 >= v106 >> 1)
    {
      v86 = sub_100A5BCBC(v106 > 1, v107 + 1, 1, v86);
    }

    v100 = v267;
    sub_10000B3A8(v257, &qword_1016C9018, &qword_1014090B8);
    v86[2] = v107 + 1;
    sub_1000D2AD8(v255, v86 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v107, &qword_1016B3D28, &qword_1013D4A90);
  }

  v256 = v269[6];
  v108 = v259;
  sub_1000D2A70(v99 + v256, v259, &unk_1016AF8A0, &unk_10139D7C0);
  v111 = *(v100 + 48);
  v110 = v100 + 48;
  v109 = v111;
  v112 = (v111)(v108, 1, v98);
  v257 = v111;
  if (v112 == 1)
  {
    sub_10000B3A8(v108, &unk_1016AF8A0, &unk_10139D7C0);
  }

  else
  {
    v113 = v108;
    v114 = v260;
    sub_1000D2AD8(v113, v260, &unk_1016C8FC0, &unk_10139D7D0);
    v115 = *(v98 + 36);
    v116 = v272[12];
    v117 = v258;
    *v258 = 2;
    (*(v271 + 16))(&v117[v116], v114 + v115, v270);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_100A5BCBC(0, v86[2] + 1, 1, v86);
    }

    v119 = v86[2];
    v118 = v86[3];
    if (v119 >= v118 >> 1)
    {
      v86 = sub_100A5BCBC(v118 > 1, v119 + 1, 1, v86);
    }

    sub_10000B3A8(v260, &unk_1016C8FC0, &unk_10139D7D0);
    v86[2] = v119 + 1;
    sub_1000D2AD8(v258, v86 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v119, &qword_1016B3D28, &qword_1013D4A90);
    v109 = v257;
  }

  v260 = v269[5];
  v120 = v99 + v260;
  v121 = v262;
  sub_1000D2A70(v120, v262, &unk_1016AF8A0, &unk_10139D7C0);
  v122 = (v109)(v121, 1, v98);
  v267 = v110;
  if (v122 != 1)
  {
    v130 = v121;
    v131 = v263;
    sub_1000D2AD8(v130, v263, &unk_1016C8FC0, &unk_10139D7D0);
    v132 = *(v98 + 36);
    v124 = v271;
    v133 = v272[12];
    v134 = v261;
    *v261 = 1;
    v135 = v131 + v132;
    v123 = v270;
    (*(v124 + 16))(&v134[v133], v135, v270);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v86 = sub_100A5BCBC(0, v86[2] + 1, 1, v86);
    }

    v137 = v86[2];
    v136 = v86[3];
    if (v137 >= v136 >> 1)
    {
      v86 = sub_100A5BCBC(v136 > 1, v137 + 1, 1, v86);
    }

    sub_10000B3A8(v263, &unk_1016C8FC0, &unk_10139D7D0);
    v86[2] = v137 + 1;
    sub_1000D2AD8(v261, v86 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v137, &qword_1016B3D28, &qword_1013D4A90);
    v125 = v86[2];
    if (v125)
    {
      goto LABEL_22;
    }

LABEL_29:
    v129 = 1;
    v128 = v254;
    goto LABEL_30;
  }

  sub_10000B3A8(v121, &unk_1016AF8A0, &unk_10139D7C0);
  v123 = v270;
  v124 = v271;
  v125 = v86[2];
  if (!v125)
  {
    goto LABEL_29;
  }

LABEL_22:
  v126 = v86 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
  sub_1000D2A70(v126, v59, &qword_1016B3D28, &qword_1013D4A90);
  if (v125 != 1)
  {
    v154 = 1;
    v155 = &qword_1013D4A90;
    while (v154 < v86[2])
    {
      sub_1000D2A70(v126 + *(v52 + 72) * v154, v56, &qword_1016B3D28, &qword_1013D4A90);
      v156 = v272[12];
      if (static Date.< infix(_:_:)())
      {
        sub_10000B3A8(v59, &qword_1016B3D28, &qword_1013D4A90);
        sub_1000D2AD8(v56, v59, &qword_1016B3D28, &qword_1013D4A90);
      }

      else
      {
        sub_10000B3A8(v56, &qword_1016B3D28, &qword_1013D4A90);
      }

      if (v125 == ++v154)
      {
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_152:
    v164 = 0;
    v161 = 0;
    goto LABEL_153;
  }

LABEL_23:
  v128 = v254;
  sub_1000D2AD8(v59, v254, &qword_1016B3D28, &qword_1013D4A90);
  v129 = 0;
  v123 = v270;
  v124 = v271;
LABEL_30:
  v138 = v272;
  (*(v52 + 56))(v128, v129, 1, v272);

  if ((*(v52 + 48))(v128, 1, v138) == 1)
  {
    sub_10000B3A8(v128, &unk_1016C9060, &qword_1014090E0);
    sub_1011341C4();
    swift_allocError();
    *v139 = 1;
    return swift_willThrow();
  }

  v141 = v251;
  sub_1000D2AD8(v128, v251, &qword_1016B3D28, &qword_1013D4A90);
  v142 = *v141;
  v143 = v138[12];
  v144 = v123;
  v145 = v252;
  DateInterval.start.getter();
  Date.timeIntervalSince(_:)();
  v147 = v146;
  v148 = *(v124 + 8);
  v148(v145, v144);
  if (v147 < -86400.0)
  {
    v149 = v245;
    sub_1000D2A70(v268 + v256, v245, &unk_1016AF8A0, &unk_10139D7C0);
    if ((v257)(v149, 1, v265) == 1)
    {
      sub_10000B3A8(v149, &unk_1016AF8A0, &unk_10139D7C0);
      if (qword_101695270 != -1)
      {
        swift_once();
      }

      v150 = type metadata accessor for Logger();
      sub_1000076D4(v150, qword_10177C6B8);
      v151 = Logger.logObject.getter();
      v152 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v151, v152))
      {
        v153 = swift_slowAlloc();
        *v153 = 0;
        _os_log_impl(&_mh_execute_header, v151, v152, "Last key sync is older than 24 hours and no latched key found. Fall back to date range based keys.", v153, 2u);
      }

      goto LABEL_71;
    }

    v160 = v242;
    result = sub_1000D2AD8(v149, v242, &unk_1016C8FC0, &unk_10139D7D0);
    v161 = *v160;
    if (*v160)
    {
      v162 = v161 / 0x60 + 1;
      if (!is_mul_ok(v162, 0x60uLL))
      {
LABEL_174:
        __break(1u);
LABEL_175:
        __break(1u);
        goto LABEL_176;
      }

      v163 = 96 * v162;
      v164 = v163 - 1;
      v165 = v163 - 96;
      if (v165 <= 1)
      {
        v165 = 1;
      }

      if (v164 < v165)
      {
        goto LABEL_175;
      }

      if (v164 < v161)
      {
        sub_1011341C4();
        swift_allocError();
        *v166 = 2;
        swift_willThrow();
        sub_10000B3A8(v160, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_106:
        v196 = v141;
        return sub_10000B3A8(v196, &qword_1016B3D28, &qword_1013D4A90);
      }

      v155 = v164 / 0x60 + 1;
    }

    else
    {
      v155 = 0;
      v164 = 0;
    }

    result = DateInterval.duration.getter();
    v182 = v181 / 86400.0;
    if ((*&v182 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      __break(1u);
    }

    else if (v182 > -1.0)
    {
      if (v182 < 1.84467441e19)
      {
        v52 = v155 + 1 + v182;
        if (!__CFADD__(v155 + 1, v182))
        {
          if (v52 < v155)
          {
            sub_1011341C4();
            swift_allocError();
            *v183 = 2;
            swift_willThrow();
            sub_10000B3A8(v160, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_149:
            v196 = v251;
            return sub_10000B3A8(v196, &qword_1016B3D28, &qword_1013D4A90);
          }

          sub_10000B3A8(v160, &unk_1016C8FC0, &unk_10139D7D0);
LABEL_145:
          result = sub_10000B3A8(v251, &qword_1016B3D28, &qword_1013D4A90);
          v179 = 0;
          goto LABEL_78;
        }

        goto LABEL_173;
      }

LABEL_172:
      __break(1u);
LABEL_173:
      __break(1u);
      goto LABEL_174;
    }

    __break(1u);
    goto LABEL_172;
  }

  v272 = v148;
  v157 = v246;
  DateInterval.start.getter();
  sub_101134BBC(&qword_1016C9070, &type metadata accessor for Date);
  if (dispatch thunk of static Comparable.>= infix(_:_:)())
  {
    (v272)(v157, v144);
    v158 = *(v124 + 16);
    v159 = v248;
    v158(v248, &v141[v143], v144);
  }

  else
  {
    v159 = v248;
    (*(v124 + 32))(v248, v157, v144);
    v158 = *(v124 + 16);
  }

  v158(v252, v159, v144);
  DateInterval.end.getter();
  v167 = v249;
  DateInterval.init(start:end:)();
  if (v142 <= 4)
  {
    if (v142 == 1)
    {
      v168 = v241;
      sub_1000D2A70(v268 + v260, v241, &unk_1016AF8A0, &unk_10139D7C0);
      if ((v257)(v168, 1, v265) != 1)
      {
        v189 = v230;
        result = sub_1000D2AD8(v168, v230, &unk_1016C8FC0, &unk_10139D7D0);
        v190 = *v189 - 1;
        if (!*v189)
        {
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v191 = *v189 != 1;
        if (v190 <= 1)
        {
          v161 = 1;
        }

        else
        {
          v161 = *v189 - 1;
        }

        v192 = v161 / 0x60 + 1;
        if (!is_mul_ok(v192, 0x60uLL))
        {
          goto LABEL_180;
        }

        v193 = 96 * v192;
        v164 = v193 - 1;
        v194 = v193 - 96;
        if (v194 <= 1)
        {
          v194 = 1;
        }

        if (v164 < v194)
        {
          goto LABEL_183;
        }

        if (v190 > v164)
        {
          sub_1011341C4();
          swift_allocError();
          *v195 = 2;
          swift_willThrow();
          v175 = v189;
          goto LABEL_105;
        }

        result = DateInterval.duration.getter();
        v199 = v198 / 86400.0;
        if ((*&v199 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_194:
          __break(1u);
          goto LABEL_195;
        }

        if (v199 <= -1.0)
        {
LABEL_195:
          __break(1u);
          goto LABEL_196;
        }

        v200 = v249;
        if (v199 >= 1.84467441e19)
        {
LABEL_197:
          __break(1u);
LABEL_198:
          __break(1u);
          goto LABEL_199;
        }

        v201 = v164 / 0x60;
        v202 = v164 / 0x60 + 2;
        v52 = v202 + v199;
        if (__CFADD__(v202, v199))
        {
LABEL_199:
          __break(1u);
          goto LABEL_200;
        }

        if (v52 <= v201)
        {
          sub_1011341C4();
          swift_allocError();
          *v218 = 2;
          swift_willThrow();
          v212 = &unk_1016C8FC0;
          v213 = &unk_10139D7D0;
          v214 = v189;
          goto LABEL_147;
        }

        v203 = v189;
        v155 = v201 + 1;
        v204 = &unk_1016C8FC0;
        v205 = &unk_10139D7D0;
        goto LABEL_144;
      }

LABEL_73:
      (*(v244 + 8))(v167, v243);
      (v272)(v159, v270);
      sub_10000B3A8(v141, &qword_1016B3D28, &qword_1013D4A90);
      v176 = &unk_1016AF8A0;
      v177 = &unk_10139D7C0;
      goto LABEL_76;
    }

    if (v142 == 2)
    {
      v168 = v240;
      sub_1000D2A70(v268 + v256, v240, &unk_1016AF8A0, &unk_10139D7C0);
      if ((v257)(v168, 1, v265) != 1)
      {
        v169 = v168;
        v170 = v231;
        result = sub_1000D2AD8(v169, v231, &unk_1016C8FC0, &unk_10139D7D0);
        v161 = *v170;
        if (*v170)
        {
          v171 = v161 / 0x60 + 1;
          if (!is_mul_ok(v171, 0x60uLL))
          {
LABEL_192:
            __break(1u);
LABEL_193:
            __break(1u);
            goto LABEL_194;
          }

          v172 = 96 * v171;
          v164 = v172 - 1;
          v173 = v172 - 96;
          if (v173 <= 1)
          {
            v173 = 1;
          }

          if (v164 < v173)
          {
            goto LABEL_193;
          }

          if (v164 < v161)
          {
            sub_1011341C4();
            swift_allocError();
            *v174 = 2;
            swift_willThrow();
            v175 = v231;
LABEL_105:
            sub_10000B3A8(v175, &unk_1016C8FC0, &unk_10139D7D0);
            (*(v244 + 8))(v167, v243);
            (v272)(v159, v270);
            goto LABEL_106;
          }

          v155 = v164 / 0x60 + 1;
          goto LABEL_136;
        }

LABEL_122:
        v155 = 0;
        v164 = 0;
LABEL_136:
        result = DateInterval.duration.getter();
        v216 = v215 / 86400.0;
        if ((*&v216 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
        {
LABEL_188:
          __break(1u);
          goto LABEL_189;
        }

        if (v216 <= -1.0)
        {
LABEL_189:
          __break(1u);
          goto LABEL_190;
        }

        v200 = v249;
        if (v216 >= 1.84467441e19)
        {
LABEL_190:
          __break(1u);
          goto LABEL_191;
        }

        v52 = v155 + 1 + v216;
        if (__CFADD__(v155 + 1, v216))
        {
LABEL_191:
          __break(1u);
          goto LABEL_192;
        }

        if (v52 < v155)
        {
          sub_1011341C4();
          swift_allocError();
          *v217 = 2;
          swift_willThrow();
          v212 = &unk_1016C8FC0;
          v213 = &unk_10139D7D0;
          v214 = v231;
          goto LABEL_147;
        }

        v204 = &unk_1016C8FC0;
        v205 = &unk_10139D7D0;
        v203 = v231;
        goto LABEL_144;
      }

      goto LABEL_73;
    }

LABEL_70:
    (*(v244 + 8))(v167, v243);
    (v272)(v159, v270);
LABEL_71:
    v176 = &qword_1016B3D28;
    v177 = &qword_1013D4A90;
    v178 = v141;
LABEL_77:
    result = sub_10000B3A8(v178, v176, v177);
    v161 = 0;
    v164 = 0;
    v155 = 0;
    v52 = 0;
    v179 = 1;
LABEL_78:
    v180 = v250;
    *v250 = v161;
    v180[1] = v164;
    v180[2] = v155;
    v180[3] = v52;
    *(v180 + 32) = v179;
    return result;
  }

  if (v142 == 5)
  {
    v168 = v239;
    sub_1000D2A70(v268 + v233, v239, &qword_1016C9040, &qword_1014090D0);
    if (v232(v168, 1, v264) != 1)
    {
      v197 = v229;
      sub_1000D2AD8(v168, v229, &qword_1016C9018, &qword_1014090B8);
      v161 = *v197;
      if (*v197)
      {
        v155 = v161 / 0x60 + 1;
      }

      else
      {
        v155 = 0;
      }

      result = DateInterval.duration.getter();
      v207 = v206 / 86400.0;
      if ((*&v207 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
      {
        goto LABEL_178;
      }

      if (v207 <= -1.0)
      {
LABEL_181:
        __break(1u);
        goto LABEL_182;
      }

      v200 = v249;
      if (v207 >= 1.84467441e19)
      {
LABEL_184:
        __break(1u);
        goto LABEL_185;
      }

      v208 = v155 + 1;
      v52 = v155 + 1 + v207;
      if (__CFADD__(v155 + 1, v207))
      {
LABEL_186:
        __break(1u);
        goto LABEL_187;
      }

      if (v52 < v155)
      {
        goto LABEL_134;
      }

      if (!is_mul_ok(v208, 0x60uLL))
      {
LABEL_196:
        __break(1u);
        goto LABEL_197;
      }

      v209 = 96 * v208;
      v164 = v209 - 1;
      v210 = v209 - 96;
      if (v210 <= 1)
      {
        v210 = 1;
      }

      if (v164 < v210)
      {
        goto LABEL_198;
      }

      if (v164 < v161)
      {
LABEL_134:
        sub_1011341C4();
        swift_allocError();
        *v211 = 2;
        swift_willThrow();
        v212 = &qword_1016C9018;
        v213 = &qword_1014090B8;
        v214 = v197;
LABEL_147:
        sub_10000B3A8(v214, v212, v213);
        (*(v244 + 8))(v200, v243);
        goto LABEL_148;
      }

      v204 = &qword_1016C9018;
      v205 = &qword_1014090B8;
      v203 = v197;
LABEL_144:
      sub_10000B3A8(v203, v204, v205);
      (*(v244 + 8))(v200, v243);
      (v272)(v248, v270);
      goto LABEL_145;
    }

    (*(v244 + 8))(v167, v243);
    (v272)(v159, v270);
    sub_10000B3A8(v141, &qword_1016B3D28, &qword_1013D4A90);
    v176 = &qword_1016C9040;
    v177 = &qword_1014090D0;
LABEL_76:
    v178 = v168;
    goto LABEL_77;
  }

  if (v142 != 6)
  {
    goto LABEL_70;
  }

  v168 = v238;
  sub_1000D2A70(v268 + v234, v238, &qword_1016C9048, &qword_1014090D8);
  if (v235(v168, 1, v237) == 1)
  {
    (*(v244 + 8))(v167, v243);
    (v272)(v159, v270);
    sub_10000B3A8(v141, &qword_1016B3D28, &qword_1013D4A90);
    v176 = &qword_1016C9048;
    v177 = &qword_1014090D8;
    goto LABEL_76;
  }

  v154 = v228;
  sub_1000D2AD8(v168, v228, &qword_1016C8FE8, &qword_1014090A8);
  v155 = *v154;
  result = DateInterval.duration.getter();
  v185 = v184 / 86400.0;
  if ((*&v185 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

  v127 = v268;
  v86 = v265;
  v126 = v227;
  if (v185 <= -1.0)
  {
LABEL_179:
    __break(1u);
LABEL_180:
    __break(1u);
    goto LABEL_181;
  }

  v186 = v249;
  if (v185 >= 1.84467441e19)
  {
LABEL_182:
    __break(1u);
LABEL_183:
    __break(1u);
    goto LABEL_184;
  }

  v187 = v155 + v185;
  if (__CFADD__(v155, v185))
  {
LABEL_185:
    __break(1u);
    goto LABEL_186;
  }

  v52 = v187 + 1;
  if (v187 == -1)
  {
LABEL_187:
    __break(1u);
    goto LABEL_188;
  }

  if (v52 < v155)
  {
    sub_1011341C4();
    swift_allocError();
    *v188 = 2;
    swift_willThrow();
    sub_10000B3A8(v154, &qword_1016C8FE8, &qword_1014090A8);
    (*(v244 + 8))(v186, v243);
LABEL_148:
    (v272)(v248, v270);
    goto LABEL_149;
  }

  v271 = 3 * v155;
  if (!v155)
  {
    goto LABEL_152;
  }

  if (is_mul_ok(v155, 0x60uLL))
  {
    v164 = 96 * v155 - 1;
    if (96 * v155 - 96 <= 1)
    {
      v161 = 1;
    }

    else
    {
      v161 = 96 * v155 - 96;
    }

    if (v164 < v161)
    {
      __break(1u);
      goto LABEL_122;
    }

LABEL_153:
    sub_1000D2A70(v127 + v269[9], v126, &unk_1016AF8A0, &unk_10139D7C0);
    if ((v257)(v126, 1, v86) == 1)
    {
      result = sub_10000B3A8(v126, &unk_1016AF8A0, &unk_10139D7C0);
    }

    else
    {
      v219 = v126;
      v220 = v226;
      sub_1000D2AD8(v219, v226, &unk_1016C8FC0, &unk_10139D7D0);
      v221 = *v220;
      result = sub_10000B3A8(v220, &unk_1016C8FC0, &unk_10139D7D0);
      if (v161 < v221)
      {
        sub_10000B3A8(v154, &qword_1016C8FE8, &qword_1014090A8);
        (*(v244 + 8))(v249, v243);
        (v272)(v248, v270);
        result = sub_10000B3A8(v251, &qword_1016B3D28, &qword_1013D4A90);
        if (v164 >= v221)
        {
          v179 = 0;
          v161 = v221;
          goto LABEL_78;
        }

        if (v164 >= v161)
        {
          v179 = 0;
          goto LABEL_78;
        }

        goto LABEL_202;
      }
    }

    v222 = v272;
    if (v155)
    {
      v164 = 32 * v271 - 1;
      v223 = 32 * v271 - 96;
      if (v223 <= 1)
      {
        v223 = 1;
      }

      if (v164 < v223)
      {
        goto LABEL_201;
      }

      if (v164 >= v161)
      {
LABEL_169:
        sub_10000B3A8(v154, &qword_1016C8FE8, &qword_1014090A8);
        (*(v244 + 8))(v249, v243);
        (v222)(v248, v270);
        goto LABEL_145;
      }
    }

    else if (!v161)
    {
      v164 = 0;
      goto LABEL_169;
    }

    sub_1011341C4();
    swift_allocError();
    *v224 = 2;
    swift_willThrow();
    sub_10000B3A8(v154, &qword_1016C8FE8, &qword_1014090A8);
    (*(v244 + 8))(v249, v243);
    (v222)(v248, v270);
    goto LABEL_149;
  }

LABEL_200:
  __break(1u);
LABEL_201:
  __break(1u);
LABEL_202:
  __break(1u);
  return result;
}