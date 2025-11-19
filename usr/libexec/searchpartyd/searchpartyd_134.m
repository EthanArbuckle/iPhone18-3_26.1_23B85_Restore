uint64_t sub_100DFD854(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF4924(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&unk_1016BC1B0, &qword_1013E9ED8);
      goto LABEL_12;
    }

    sub_100E08114(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
  sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000041A4(&qword_1016C7FA0, &unk_1016C2240, &qword_1013F6350);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

Swift::Int sub_100DFDA50(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      sub_100DF4BC8(v8 + 1);
    }

    else
    {
      if (v9 > v8)
      {
        result = sub_100E04D08();
        goto LABEL_68;
      }

      sub_100E08390(v8 + 1);
    }

    v10 = *v4;
    v11 = *(*v4 + 40);
    Hasher.init(_seed:)();
    Data.hash(into:)();
    result = Hasher._finalize()();
    v12 = v10 + 56;
    v13 = -1 << *(v10 + 32);
    a3 = result & ~v13;
    if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
    {
      v14 = ~v13;
      if (v7)
      {
        v15 = 0;
      }

      else
      {
        v15 = a2 == 0xC000000000000000;
      }

      v16 = !v15;
      v49 = v16;
      v17 = a2 >> 62;
      v18 = __OFSUB__(HIDWORD(v7), v7);
      v46 = v18;
      v45 = HIDWORD(v7) - v7;
      v47 = v14;
      v48 = BYTE6(a2);
      v42 = v7;
      v43 = a2;
      while (1)
      {
        v19 = (*(v10 + 48) + 16 * a3);
        v21 = *v19;
        v20 = v19[1];
        v22 = v20 >> 62;
        if (v20 >> 62 == 3)
        {
          break;
        }

        if (v22 > 1)
        {
          if (v22 != 2)
          {
            goto LABEL_32;
          }

          v32 = *(v21 + 16);
          v31 = *(v21 + 24);
          v30 = __OFSUB__(v31, v32);
          v26 = v31 - v32;
          if (v30)
          {
            goto LABEL_73;
          }
        }

        else if (v22)
        {
          LODWORD(v26) = HIDWORD(v21) - v21;
          if (__OFSUB__(HIDWORD(v21), v21))
          {
            goto LABEL_74;
          }

          v26 = v26;
        }

        else
        {
          v26 = BYTE6(v20);
        }

LABEL_33:
        if (v17 > 1)
        {
          if (v17 != 2)
          {
            if (!v26)
            {
              goto LABEL_67;
            }

            goto LABEL_20;
          }

          v29 = *(v7 + 16);
          v28 = *(v7 + 24);
          v30 = __OFSUB__(v28, v29);
          v27 = v28 - v29;
          if (v30)
          {
            __break(1u);
LABEL_71:
            __break(1u);
            goto LABEL_72;
          }
        }

        else
        {
          v27 = v48;
          if (v17)
          {
            v27 = v45;
            if (v46)
            {
              goto LABEL_71;
            }
          }
        }

        if (v26 == v27)
        {
          if (v26 < 1)
          {
            goto LABEL_67;
          }

          if (v22 > 1)
          {
            if (v22 == 2)
            {
              v34 = *(v21 + 16);
              v33 = *(v21 + 24);
              sub_100017D5C(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v36 = __DataStorage._offset.getter();
                if (__OFSUB__(v34, v36))
                {
                  goto LABEL_77;
                }

                v35 += v34 - v36;
              }

              if (__OFSUB__(v33, v34))
              {
                goto LABEL_76;
              }

              goto LABEL_63;
            }

            *&v51[6] = 0;
            *v51 = 0;
            sub_100017D5C(v21, v20);
          }

          else
          {
            if (v22)
            {
              if (v21 >> 32 < v21)
              {
                goto LABEL_75;
              }

              sub_100017D5C(v21, v20);
              v35 = __DataStorage._bytes.getter();
              if (v35)
              {
                v37 = __DataStorage._offset.getter();
                if (__OFSUB__(v21, v37))
                {
                  goto LABEL_78;
                }

                v35 += v21 - v37;
              }

LABEL_63:
              __DataStorage._length.getter();
              v7 = v42;
              a2 = v43;
              sub_100771A28(v35, v42, v43, v51);
              result = sub_100016590(v21, v20);
              v12 = v10 + 56;
              v14 = v47;
              if (v51[0])
              {
                goto LABEL_67;
              }

              goto LABEL_20;
            }

            *v51 = v21;
            *&v51[8] = v20;
            v51[10] = BYTE2(v20);
            v51[11] = BYTE3(v20);
            v51[12] = BYTE4(v20);
            v51[13] = BYTE5(v20);
            sub_100017D5C(v21, v20);
            v14 = v47;
          }

          sub_100771A28(v51, v7, a2, &v50);
          result = sub_100016590(v21, v20);
          if (v50)
          {
            goto LABEL_67;
          }
        }

LABEL_20:
        a3 = (a3 + 1) & v14;
        if (((*(v12 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
        {
          goto LABEL_68;
        }
      }

      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v20 == 0xC000000000000000;
      }

      v25 = !v23 || v17 < 3;
      if (((v25 | v49) & 1) == 0)
      {
LABEL_67:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_68;
      }

LABEL_32:
      v26 = 0;
      goto LABEL_33;
    }
  }

LABEL_68:
  v38 = *v44;
  *(*v44 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v39 = (*(v38 + 48) + 16 * a3);
  *v39 = v7;
  v39[1] = a2;
  v40 = *(v38 + 16);
  v30 = __OFADD__(v40, 1);
  v41 = v40 + 1;
  if (v30)
  {
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
  }

  *(v38 + 16) = v41;
  return result;
}

void sub_100DFDEC8(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, uint64_t *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_100DFAED0(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_100E058B0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_100E0DF30(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = NSObject._rawHashValue(seed:)(*(*v7 + 40));
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_100008BB8(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = static NSObject.== infix(_:_:)();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100DFE058(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, char a5)
{
  v6 = v5;
  v10 = result;
  v11 = *(*v5 + 16);
  v12 = *(*v5 + 24);
  if (v12 > v11 && (a5 & 1) != 0)
  {
    goto LABEL_18;
  }

  if (a5)
  {
    sub_100DF4E3C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      result = sub_100E04E64();
      goto LABEL_18;
    }

    sub_100E085CC(v11 + 1);
  }

  v13 = *v5;
  v14 = *(*v5 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v10);
  String.hash(into:)();
  result = Hasher._finalize()();
  v15 = v13 + 56;
  v16 = -1 << *(v13 + 32);
  a4 = result & ~v16;
  if ((*(v13 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v17 = ~v16;
    v18 = *(v13 + 48);
    while (1)
    {
      v19 = (v18 + 24 * a4);
      if (*v19 == v10)
      {
        if (*(v19 + 1) == a2 && *(v19 + 2) == a3)
        {
          break;
        }

        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }
      }

      a4 = (a4 + 1) & v17;
      if (((*(v15 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_18:
  v21 = *v6;
  *(*v6 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = v10;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }

  return result;
}

uint64_t sub_100DFE20C(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5)
{
  v6 = result;
  v7 = *(*v5 + 16);
  v8 = *(*v5 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF8BF8(v7 + 1, a4, a5);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a2;
      result = sub_100E05A04(a4, a5);
      a2 = v9;
      goto LABEL_12;
    }

    sub_100E0BF84(v7 + 1, a4, a5);
  }

  v10 = *v5;
  v11 = *(*v5 + 40);
  result = static Hasher._hash(seed:_:)();
  v12 = -1 << *(v10 + 32);
  a2 = result & ~v12;
  if ((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v10 + 48) + 8 * a2) != v6)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v10 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v5;
  *(*v5 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFE348(unsigned __int8 *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for RawSearchResult();
  v30 = *(v7 - 1);
  v8 = *(v30 + 64);
  __chkstk_darwin(v7);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v29 = v3;
  if (v12 <= v11 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF50BC(v11 + 1);
    }

    else
    {
      if (v12 > v11)
      {
        sub_100E04984(type metadata accessor for RawSearchResult, &qword_1016A58C0, &qword_1013B32C8, type metadata accessor for RawSearchResult);
        goto LABEL_19;
      }

      sub_100E08824(v11 + 1);
    }

    v13 = *v3;
    v14 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_100D15128();
    v15 = Hasher._finalize()();
    v16 = -1 << *(v13 + 32);
    a2 = v15 & ~v16;
    if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v17 = ~v16;
      v18 = *a1;
      v19 = *(v30 + 72);
      do
      {
        sub_100E0ED24(*(v13 + 48) + v19 * a2, v10, type metadata accessor for RawSearchResult);
        if (*v10 == v18 && (v20 = v7[5], (static Date.== infix(_:_:)() & 1) != 0) && *&v10[v7[6]] == *&a1[v7[6]] && *&v10[v7[7]] == *&a1[v7[7]] && *&v10[v7[8]] == *&a1[v7[8]])
        {
          v21 = v7[12];
          v22 = static UUID.== infix(_:_:)();
          sub_100E0EC5C(v10, type metadata accessor for RawSearchResult);
          if (v22)
          {
            goto LABEL_22;
          }
        }

        else
        {
          sub_100E0EC5C(v10, type metadata accessor for RawSearchResult);
        }

        a2 = (a2 + 1) & v17;
      }

      while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_19:
  v23 = *v29;
  *(*v29 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v23 + 48) + *(v30 + 72) * a2, type metadata accessor for RawSearchResult);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
LABEL_22:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }

  return result;
}

uint64_t sub_100DFE644(uint64_t result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v7 = v6;
  v9 = result;
  v10 = *(*v6 + 16);
  v11 = *(*v6 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a3)
  {
    v12 = a6;
    sub_100DF86E0(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_100E058B0(a4, a5);
      goto LABEL_16;
    }

    v12 = a6;
    sub_100E0BABC(v10 + 1, a4, a5);
  }

  v13 = *v6;
  v14 = *(*v6 + 40);
  static String._unconditionallyBridgeFromObjectiveC(_:)();
  Hasher.init(_seed:)();
  String.hash(into:)();
  v15 = Hasher._finalize()();

  v16 = -1 << *(v13 + 32);
  a2 = v15 & ~v16;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    v12(0);
    do
    {
      v18 = *(*(v13 + 48) + 8 * a2);
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;
      if (v19 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v21 == v22)
      {
        goto LABEL_19;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v24)
      {
        goto LABEL_20;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_16:
  v25 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v25 + 48) + 8 * a2) = v9;
  v26 = *(v25 + 16);
  v27 = __OFADD__(v26, 1);
  v28 = v26 + 1;
  if (!v27)
  {
    *(v25 + 16) = v28;
    return result;
  }

  __break(1u);
LABEL_19:

LABEL_20:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100DFE850(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF5358(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_100E0653C(&qword_1016A5A68, &qword_1013B3588);
        goto LABEL_87;
      }

      sub_100E08A8C(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_1012C5AB0(v6);
    String.hash(into:)();

    result = Hasher._finalize()();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE700000000000000;
        v14 = 0x6E776F6E6B6E75;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v14 = 0xD000000000000015;
            v13 = 0x8000000101347FF0;
            break;
          case 2:
            v14 = 0xD000000000000016;
            v13 = 0x8000000101348010;
            break;
          case 3:
            v13 = 0xE600000000000000;
            v14 = 0x657461636F6CLL;
            break;
          case 4:
            v13 = 0xEC000000676E6972;
            v14 = 0x6168537472617473;
            break;
          case 5:
            v14 = 0x72616853706F7473;
            goto LABEL_25;
          case 6:
            v16 = 2036427888;
            goto LABEL_29;
          case 7:
            v16 = 1886352499;
LABEL_29:
            v14 = v16 | 0x6E756F5300000000;
            v13 = 0xE900000000000064;
            break;
          case 8:
            v14 = 0x61654C6E69676562;
            v13 = 0xED0000676E696873;
            break;
          case 9:
            v14 = 0x687361654C646E65;
LABEL_25:
            v13 = 0xEB00000000676E69;
            break;
          case 0xA:
            v14 = 0x4654426E69676562;
            v13 = 0xEE00676E69646E69;
            break;
          case 0xB:
            v14 = 0x6E69465442646E65;
            v15 = 1735289188;
            goto LABEL_36;
          case 0xC:
            v13 = 0xEC000000676E6967;
            v14 = 0x6E61526E69676562;
            break;
          case 0xD:
            v14 = 0x69676E6152646E65;
            v13 = 0xEA0000000000676ELL;
            break;
          case 0xE:
            v14 = 0x6F4C656C62616E65;
            v13 = 0xEE0065646F4D7473;
            break;
          case 0xF:
            v14 = 0x4C656C6261736964;
            v13 = 0xEF65646F4D74736FLL;
            break;
          case 0x10:
            v13 = 0xE600000000000000;
            v14 = 0x656D616E6572;
            break;
          case 0x11:
            v14 = 0x7463656E6E6F63;
            break;
          case 0x12:
            v13 = 0xEA00000000007463;
            v14 = 0x656E6E6F63736964;
            break;
          case 0x13:
            v14 = 0xD000000000000017;
            v13 = 0x80000001013480F0;
            break;
          case 0x14:
            v13 = 0xE600000000000000;
            v14 = 0x726961706E75;
            break;
          case 0x15:
            v14 = 0x65746167656C6564;
            v13 = 0xEE00657261685364;
            break;
          case 0x16:
            v14 = 0xD000000000000013;
            v13 = 0x8000000101348120;
            break;
          case 0x17:
            v14 = 0x6F69736963657270;
            v15 = 1481004654;
LABEL_36:
            v13 = v15 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            break;
          default:
            break;
        }

        v17 = 0xE700000000000000;
        v18 = 0x6E776F6E6B6E75;
        switch(v6)
        {
          case 1:
            v17 = 0x8000000101347FF0;
            if (v14 == 0xD000000000000015)
            {
              goto LABEL_80;
            }

            goto LABEL_81;
          case 2:
            v17 = 0x8000000101348010;
            if (v14 != 0xD000000000000016)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 3:
            v17 = 0xE600000000000000;
            if (v14 != 0x657461636F6CLL)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 4:
            v17 = 0xEC000000676E6972;
            if (v14 != 0x6168537472617473)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 5:
            v23 = 0x72616853706F7473;
            goto LABEL_61;
          case 6:
            v24 = 2036427888;
            goto LABEL_67;
          case 7:
            v24 = 1886352499;
LABEL_67:
            v17 = 0xE900000000000064;
            if (v14 != (v24 | 0x6E756F5300000000))
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 8:
            v17 = 0xED0000676E696873;
            if (v14 != 0x61654C6E69676562)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 9:
            v23 = 0x687361654C646E65;
LABEL_61:
            v17 = 0xEB00000000676E69;
            if (v14 != v23)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 10:
            v19 = 0x4654426E69676562;
            v20 = 0x676E69646E69;
            goto LABEL_72;
          case 11:
            v21 = 0x6E69465442646E65;
            v22 = 1735289188;
            goto LABEL_85;
          case 12:
            v17 = 0xEC000000676E6967;
            if (v14 != 0x6E61526E69676562)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 13:
            v17 = 0xEA0000000000676ELL;
            if (v14 != 0x69676E6152646E65)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 14:
            v19 = 0x6F4C656C62616E65;
            v20 = 0x65646F4D7473;
            goto LABEL_72;
          case 15:
            v17 = 0xEF65646F4D74736FLL;
            if (v14 != 0x4C656C6261736964)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 16:
            v17 = 0xE600000000000000;
            if (v14 != 0x656D616E6572)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 17:
            if (v14 != 0x7463656E6E6F63)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 18:
            v17 = 0xEA00000000007463;
            if (v14 != 0x656E6E6F63736964)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 19:
            v18 = 0xD000000000000017;
            v17 = 0x80000001013480F0;
            goto LABEL_79;
          case 20:
            v17 = 0xE600000000000000;
            if (v14 != 0x726961706E75)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 21:
            v19 = 0x65746167656C6564;
            v20 = 0x657261685364;
LABEL_72:
            v17 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v14 != v19)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 22:
            v17 = 0x8000000101348120;
            if (v14 != 0xD000000000000013)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          case 23:
            v21 = 0x6F69736963657270;
            v22 = 1481004654;
LABEL_85:
            v17 = v22 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
            if (v14 != v21)
            {
              goto LABEL_81;
            }

            goto LABEL_80;
          default:
LABEL_79:
            if (v14 != v18)
            {
              goto LABEL_81;
            }

LABEL_80:
            if (v13 == v17)
            {
              goto LABEL_90;
            }

LABEL_81:
            v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v25)
            {
              goto LABEL_91;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_87:
  v26 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v26 + 48) + a2) = v6;
  v27 = *(v26 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (v28)
  {
    __break(1u);
LABEL_90:

LABEL_91:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v29;
  }

  return result;
}

Swift::Int sub_100DFF01C(Swift::Int result, unint64_t a2, char a3)
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
    sub_100DF58B8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E05030();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E08FA8(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  v13 = (*(v12 + 48) + 4 * a2);
  *v13 = v4;
  v13[1] = BYTE1(v4) & 1;
  v13[2] = BYTE2(v4) & 1;
  v13[3] = HIBYTE(v4) & 1;
  v14 = *(v12 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v12 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100DFF188(uint64_t *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for OwnerSharingCircle();
  v8 = *(v7 - 1);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (&v59 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v70 = v8;
  v71 = v3;
  if (v13 <= v12 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF5B38(v12 + 1);
    }

    else
    {
      if (v13 > v12)
      {
        sub_100E04984(type metadata accessor for OwnerSharingCircle, &qword_1016A5A18, &qword_1013B3538, type metadata accessor for OwnerSharingCircle);
        goto LABEL_74;
      }

      sub_100E091F8(v12 + 1);
    }

    v14 = *v3;
    v15 = *(*v3 + 40);
    Hasher.init(_seed:)();
    v16 = *a1;
    v17 = a1[1];
    Data.hash(into:)();
    v18 = v7[5];
    type metadata accessor for UUID();
    sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
    v64 = v18;
    dispatch thunk of Hashable.hash(into:)();
    v72 = v7[6];
    dispatch thunk of Hashable.hash(into:)();
    v65 = *(a1 + v7[7]);
    Hasher._combine(_:)(v65);
    v61 = *(a1 + v7[8]);
    sub_100E1168C(v79, v61);
    v60 = *(a1 + v7[9]);
    Hasher._combine(_:)(v60);
    v19 = Hasher._finalize()();
    v20 = v14 + 56;
    v21 = -1 << *(v14 + 32);
    a2 = v19 & ~v21;
    if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v22 = v14;
      v23 = ~v21;
      v24 = *a1;
      v25 = a1[1];
      if (*a1)
      {
        v26 = 0;
      }

      else
      {
        v26 = v25 == 0xC000000000000000;
      }

      v27 = !v26;
      v76 = v27;
      v77 = *(v8 + 72);
      v28 = v25 >> 62;
      v73 = 0;
      v74 = v24;
      v29 = HIDWORD(v24) - v24;
      v30 = __OFSUB__(HIDWORD(v24), v24);
      v69 = v30;
      v68 = v29;
      v66 = v25;
      v75 = BYTE6(v25);
      v63 = a1;
      v62 = v14;
      v67 = v23;
      while (1)
      {
        sub_100E0ED24(*(v22 + 48) + v77 * a2, v11, type metadata accessor for OwnerSharingCircle);
        v31 = *v11;
        v32 = v11[1];
        v33 = v32 >> 62;
        if (v32 >> 62 != 3)
        {
          break;
        }

        if (v31)
        {
          v34 = 0;
        }

        else
        {
          v34 = v32 == 0xC000000000000000;
        }

        v36 = !v34 || v28 < 3;
        if ((v36 | v76))
        {
          goto LABEL_43;
        }

LABEL_68:
        v53 = v7[5];
        if (static UUID.== infix(_:_:)())
        {
          v54 = v11 + v7[6];
          if ((static UUID.== infix(_:_:)() & 1) != 0 && *(v11 + v7[7]) == v65 && (sub_100DE7CD8(*(v11 + v7[8]), v61, &unk_1016BC360, &qword_10139CBE0, &qword_1016BBEE0, &unk_10139CBF0) & 1) != 0 && *(v11 + v7[9]) == v60)
          {
            sub_100E0EC5C(v11, type metadata accessor for OwnerSharingCircle);
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            goto LABEL_74;
          }
        }

LABEL_20:
        sub_100E0EC5C(v11, type metadata accessor for OwnerSharingCircle);
        a2 = (a2 + 1) & v23;
        if (((*(v20 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_74;
        }
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          v39 = *(v31 + 16);
          v38 = *(v31 + 24);
          v40 = __OFSUB__(v38, v39);
          v37 = v38 - v39;
          if (v40)
          {
            goto LABEL_80;
          }

          if (v28 > 1)
          {
            goto LABEL_44;
          }
        }

        else
        {
LABEL_43:
          v37 = 0;
          if (v28 > 1)
          {
LABEL_44:
            if (v28 != 2)
            {
              if (v37)
              {
                goto LABEL_20;
              }

              goto LABEL_68;
            }

            v43 = *(v74 + 16);
            v42 = *(v74 + 24);
            v40 = __OFSUB__(v42, v43);
            v41 = v42 - v43;
            if (v40)
            {
              __break(1u);
LABEL_77:
              __break(1u);
              goto LABEL_78;
            }

LABEL_46:
            if (v37 != v41)
            {
              goto LABEL_20;
            }

            if (v37 < 1)
            {
              goto LABEL_68;
            }

            if (v33 > 1)
            {
              if (v33 != 2)
              {
                *(v79 + 6) = 0;
                *&v79[0] = 0;
                goto LABEL_66;
              }

              v45 = *(v31 + 16);
              v44 = *(v31 + 24);
              v46 = __DataStorage._bytes.getter();
              if (v46)
              {
                v47 = __DataStorage._offset.getter();
                if (__OFSUB__(v45, v47))
                {
                  goto LABEL_83;
                }

                v46 += v45 - v47;
              }

              if (__OFSUB__(v44, v45))
              {
                goto LABEL_82;
              }
            }

            else
            {
              if (!v33)
              {
                *&v79[0] = *v11;
                WORD4(v79[0]) = v32;
                BYTE10(v79[0]) = BYTE2(v32);
                BYTE11(v79[0]) = BYTE3(v32);
                BYTE12(v79[0]) = BYTE4(v32);
                BYTE13(v79[0]) = BYTE5(v32);
LABEL_66:
                v52 = v73;
                sub_100771A28(v79, v74, v66, &v78);
                v73 = v52;
                v51 = v78;
LABEL_67:
                v23 = v67;
                if ((v51 & 1) == 0)
                {
                  goto LABEL_20;
                }

                goto LABEL_68;
              }

              v48 = v31;
              if (v31 >> 32 < v31)
              {
                goto LABEL_81;
              }

              v46 = __DataStorage._bytes.getter();
              if (v46)
              {
                v49 = __DataStorage._offset.getter();
                if (__OFSUB__(v48, v49))
                {
                  goto LABEL_84;
                }

                v46 += v48 - v49;
              }
            }

            __DataStorage._length.getter();
            v50 = v73;
            sub_100771A28(v46, v74, v66, v79);
            v73 = v50;
            v51 = v79[0];
            a1 = v63;
            v22 = v62;
            goto LABEL_67;
          }
        }
      }

      else if (v33)
      {
        LODWORD(v37) = HIDWORD(v31) - v31;
        if (__OFSUB__(HIDWORD(v31), v31))
        {
          goto LABEL_79;
        }

        v37 = v37;
        if (v28 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v37 = BYTE6(v32);
        if (v28 > 1)
        {
          goto LABEL_44;
        }
      }

      v41 = v75;
      if (v28)
      {
        v41 = v68;
        if (v69)
        {
          goto LABEL_77;
        }
      }

      goto LABEL_46;
    }
  }

LABEL_74:
  v55 = *v71;
  *(*v71 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v55 + 48) + *(v70 + 72) * a2, type metadata accessor for OwnerSharingCircle);
  v57 = *(v55 + 16);
  v40 = __OFADD__(v57, 1);
  v58 = v57 + 1;
  if (v40)
  {
LABEL_78:
    __break(1u);
LABEL_79:
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
  }

  *(v55 + 16) = v58;
  return result;
}

Swift::Int sub_100DFF898(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 <= v7 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF637C(v7 + 1);
    }

    else
    {
      if (v8 > v7)
      {
        result = sub_100E0653C(&qword_1016B54C8, &qword_1013D6910);
        goto LABEL_70;
      }

      sub_100E099D8(v7 + 1);
    }

    v9 = *v3;
    v10 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_10125403C(v6);
    String.hash(into:)();

    result = Hasher._finalize()();
    v11 = -1 << *(v9 + 32);
    a2 = result & ~v11;
    if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v12 = ~v11;
      while (2)
      {
        v13 = 0xE700000000000000;
        v14 = 0x7972616D697270;
        switch(*(*(v9 + 48) + a2))
        {
          case 1:
            v13 = 0xE900000000000079;
            v14 = 0x7261646E6F636573;
            break;
          case 2:
            v14 = 0xD000000000000019;
            v13 = 0x8000000101348160;
            break;
          case 3:
            v14 = 0xD00000000000001BLL;
            v13 = 0x8000000101348180;
            break;
          case 4:
            v14 = 0x646E7542646C6977;
            v13 = 0xEA0000000000656CLL;
            break;
          case 5:
            v14 = 0x417972616D697270;
            v13 = 0xEE00737365726464;
            break;
          case 6:
            v14 = 0xD000000000000010;
            v13 = 0x80000001013481C0;
            break;
          case 7:
            v14 = 0xD000000000000012;
            v13 = 0x80000001013475D0;
            break;
          case 8:
            v14 = 0xD000000000000011;
            v13 = 0x80000001013475F0;
            break;
          case 9:
            v14 = 0x697463656E6E6F63;
            v13 = 0xED000079654B6E6FLL;
            break;
          case 0xA:
            v14 = 0x656E774F7261656ELL;
            v13 = 0xEC00000079654B72;
            break;
          case 0xB:
            v14 = 0x656B6F546E696F6ALL;
            v13 = 0xE90000000000006ELL;
            break;
          case 0xC:
            v14 = 0xD000000000000015;
            v13 = 0x80000001013481F0;
            break;
          case 0xD:
            v14 = 0xD000000000000010;
            v13 = 0x8000000101348210;
            break;
          case 0xE:
            v14 = 0x7461636F4C626577;
            v13 = 0xEE0079654B6E6F69;
            break;
          case 0xF:
            v14 = 0x646174654D626577;
            v13 = 0xEB00000000617461;
            break;
          case 0x10:
            v14 = 0x6D65744974736F6CLL;
            v13 = 0xED00007365746144;
            break;
          case 0x11:
            v14 = 0xD000000000000014;
            v13 = 0x8000000101348240;
            break;
          case 0x12:
            v14 = 0xD000000000000016;
            v13 = 0x8000000101348260;
            break;
          default:
            break;
        }

        v15 = 0xE700000000000000;
        v16 = 0x7972616D697270;
        switch(v6)
        {
          case 1:
            v15 = 0xE900000000000079;
            if (v14 == 0x7261646E6F636573)
            {
              goto LABEL_64;
            }

            goto LABEL_65;
          case 2:
            v15 = 0x8000000101348160;
            if (v14 != 0xD000000000000019)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 3:
            v15 = 0x8000000101348180;
            if (v14 != 0xD00000000000001BLL)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 4:
            v15 = 0xEA0000000000656CLL;
            if (v14 != 0x646E7542646C6977)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 5:
            v19 = 0x417972616D697270;
            v20 = 0x737365726464;
            goto LABEL_54;
          case 6:
            v15 = 0x80000001013481C0;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 7:
            v15 = 0x80000001013475D0;
            if (v14 != 0xD000000000000012)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 8:
            v15 = 0x80000001013475F0;
            if (v14 != 0xD000000000000011)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 9:
            v17 = 0x697463656E6E6F63;
            v18 = 0x79654B6E6FLL;
            goto LABEL_41;
          case 10:
            v16 = 0x656E774F7261656ELL;
            v15 = 0xEC00000079654B72;
            goto LABEL_63;
          case 11:
            v15 = 0xE90000000000006ELL;
            if (v14 != 0x656B6F546E696F6ALL)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 12:
            v15 = 0x80000001013481F0;
            if (v14 != 0xD000000000000015)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 13:
            v15 = 0x8000000101348210;
            if (v14 != 0xD000000000000010)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 14:
            v19 = 0x7461636F4C626577;
            v20 = 0x79654B6E6F69;
LABEL_54:
            v15 = v20 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
            if (v14 != v19)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 15:
            v15 = 0xEB00000000617461;
            if (v14 != 0x646174654D626577)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 16:
            v17 = 0x6D65744974736F6CLL;
            v18 = 0x7365746144;
LABEL_41:
            v15 = v18 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
            if (v14 != v17)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 17:
            v15 = 0x8000000101348240;
            if (v14 != 0xD000000000000014)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          case 18:
            v15 = 0x8000000101348260;
            if (v14 != 0xD000000000000016)
            {
              goto LABEL_65;
            }

            goto LABEL_64;
          default:
LABEL_63:
            if (v14 != v16)
            {
              goto LABEL_65;
            }

LABEL_64:
            if (v13 == v15)
            {
              goto LABEL_73;
            }

LABEL_65:
            v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v21)
            {
              goto LABEL_74;
            }

            a2 = (a2 + 1) & v12;
            if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
            {
              break;
            }

            continue;
        }

        break;
      }
    }
  }

LABEL_70:
  v22 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v22 + 48) + a2) = v6;
  v23 = *(v22 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
LABEL_73:

LABEL_74:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v25;
  }

  return result;
}

uint64_t sub_100DFFF80(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for MACAddress();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF6878(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E05650(&type metadata accessor for MACAddress, &qword_1016BC090, &qword_1013E9E78);
      goto LABEL_12;
    }

    sub_100E09EA4(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000097BC(&unk_1016BC080, &type metadata accessor for MACAddress);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1000097BC(&unk_1016C7F60, &type metadata accessor for MACAddress);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E00248(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_100DF6BD4(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_100E051D0();
      goto LABEL_16;
    }

    sub_100E0A1C0(v8 + 1);
  }

  v10 = *v4;
  v11 = *(*v4 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = result & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      if (*v14 == v7 && v14[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = v7;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E003C8(Swift::Int result, unint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v8 = result;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_80;
  }

  if (a4)
  {
    sub_100DF6E34(v9 + 1);
    goto LABEL_8;
  }

  if (v10 > v9)
  {
    result = sub_100E0532C();
LABEL_80:
    v43 = *v5;
    *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
    v44 = (*(v43 + 48) + 16 * a3);
    *v44 = v8;
    v44[1] = a2;
    v45 = *(v43 + 16);
    v34 = __OFADD__(v45, 1);
    v46 = v45 + 1;
    if (v34)
    {
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
LABEL_88:
      __break(1u);
LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
    }

    *(v43 + 16) = v46;
    return result;
  }

  sub_100E0A3F8(v9 + 1);
LABEL_8:
  v11 = *v4;
  v12 = *(*v4 + 40);
  Hasher.init(_seed:)();
  v13 = a2 >> 60;
  if (a2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  result = Hasher._finalize()();
  v14 = -1 << *(v11 + 32);
  a3 = result & ~v14;
  if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
  {
    goto LABEL_80;
  }

  v15 = ~v14;
  if (v8)
  {
    v16 = 0;
  }

  else
  {
    v16 = a2 == 0xC000000000000000;
  }

  v17 = !v16;
  v51 = v17;
  v18 = a2 >> 62;
  v19 = __OFSUB__(HIDWORD(v8), v8);
  v49 = v19;
  v48 = v5;
  v50 = v15;
  while (1)
  {
    v20 = (*(v11 + 48) + 16 * a3);
    v22 = *v20;
    v21 = v20[1];
    if (v21 >> 60 == 15)
    {
      if (v13 > 0xE)
      {
        sub_10002E98C(v22, v21);
        sub_10002E98C(v8, a2);
        goto LABEL_94;
      }

      goto LABEL_26;
    }

    if (v13 <= 0xE)
    {
      break;
    }

LABEL_26:
    sub_10002E98C(v22, v21);
    sub_10002E98C(v8, a2);
    sub_100429EA8(v22, v21);
    v23 = v8;
    v24 = a2;
LABEL_27:
    result = sub_100429EA8(v23, v24);
LABEL_28:
    v18 = a2 >> 62;
    a3 = (a3 + 1) & v15;
    if (((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) == 0)
    {
      goto LABEL_80;
    }
  }

  v25 = v21 >> 62;
  if (v21 >> 62 == 3)
  {
    v26 = 0;
    v27 = 0xC000000000000000;
    if (v22)
    {
      v28 = 0;
    }

    else
    {
      v28 = v21 == 0xC000000000000000;
    }

    v30 = !v28 || v18 < 3;
    if (((v30 | v51) & 1) == 0)
    {
      a2 = 0xC000000000000000;
      v22 = 0;
      v8 = 0;
      goto LABEL_93;
    }
  }

  else if (v25 > 1)
  {
    if (v25 == 2)
    {
      v36 = *(v22 + 16);
      v35 = *(v22 + 24);
      v34 = __OFSUB__(v35, v36);
      v26 = v35 - v36;
      if (v34)
      {
        goto LABEL_85;
      }
    }

    else
    {
      v26 = 0;
    }
  }

  else if (v25)
  {
    LODWORD(v26) = HIDWORD(v22) - v22;
    if (__OFSUB__(HIDWORD(v22), v22))
    {
      goto LABEL_86;
    }

    v26 = v26;
  }

  else
  {
    v26 = BYTE6(v21);
  }

  if (v18 <= 1)
  {
    v31 = BYTE6(a2);
    if (v18)
    {
      v31 = HIDWORD(v8) - v8;
      if (v49)
      {
        goto LABEL_83;
      }
    }

LABEL_50:
    if (v26 == v31)
    {
      if (v26 < 1)
      {
        goto LABEL_92;
      }

      if (v25 > 1)
      {
        if (v25 != 2)
        {
          *&v53[6] = 0;
          *v53 = 0;
          sub_10002E98C(v22, v21);
          sub_10002E98C(v22, v21);
          sub_10002E98C(v8, a2);
          goto LABEL_78;
        }

        v37 = *(v22 + 16);
        v47 = *(v22 + 24);
        sub_10002E98C(v22, v21);
        sub_10002E98C(v22, v21);
        sub_10002E98C(v8, a2);
        v38 = __DataStorage._bytes.getter();
        if (v38)
        {
          v39 = __DataStorage._offset.getter();
          if (__OFSUB__(v37, v39))
          {
            goto LABEL_89;
          }

          v38 += v37 - v39;
        }

        if (__OFSUB__(v47, v37))
        {
          goto LABEL_88;
        }
      }

      else
      {
        if (!v25)
        {
          *v53 = v22;
          *&v53[8] = v21;
          v53[10] = BYTE2(v21);
          v53[11] = BYTE3(v21);
          v53[12] = BYTE4(v21);
          v53[13] = BYTE5(v21);
          sub_10002E98C(v22, v21);
          sub_10002E98C(v22, v21);
          sub_10002E98C(v8, a2);
LABEL_78:
          sub_100771A28(v53, v8, a2, &v52);
          sub_100429EA8(v22, v21);
          sub_100429EA8(v8, a2);
          v42 = v52;
          result = sub_100429EA8(v22, v21);
          if (v42)
          {
            goto LABEL_95;
          }

LABEL_79:
          v15 = v50;
          v13 = a2 >> 60;
          goto LABEL_28;
        }

        if (v22 >> 32 < v22)
        {
          goto LABEL_87;
        }

        sub_10002E98C(v22, v21);
        sub_10002E98C(v22, v21);
        sub_10002E98C(v8, a2);
        v38 = __DataStorage._bytes.getter();
        if (v38)
        {
          v40 = __DataStorage._offset.getter();
          if (__OFSUB__(v22, v40))
          {
            goto LABEL_90;
          }

          v38 += v22 - v40;
        }
      }

      __DataStorage._length.getter();
      sub_100771A28(v38, v8, a2, v53);
      sub_100429EA8(v22, v21);
      sub_100429EA8(v8, a2);
      v41 = v53[0];
      result = sub_100429EA8(v22, v21);
      v5 = v48;
      if (v41)
      {
        goto LABEL_95;
      }

      goto LABEL_79;
    }

LABEL_60:
    sub_10002E98C(v22, v21);
    sub_10002E98C(v8, a2);
    sub_100429EA8(v8, a2);
    v23 = v22;
    v24 = v21;
    goto LABEL_27;
  }

  if (v18 == 2)
  {
    v33 = *(v8 + 16);
    v32 = *(v8 + 24);
    v34 = __OFSUB__(v32, v33);
    v31 = v32 - v33;
    if (v34)
    {
      goto LABEL_84;
    }

    goto LABEL_50;
  }

  if (v26)
  {
    goto LABEL_60;
  }

LABEL_92:
  v27 = v21;
LABEL_93:
  sub_10002E98C(v22, v27);
  sub_10002E98C(v8, a2);
  sub_100429EA8(v8, a2);
LABEL_94:
  sub_100429EA8(v22, v21);
LABEL_95:
  sub_1000BC4D4(&qword_1016A1360, &unk_1013A52C0);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E00A04(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for OwnedBeaconGroup(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v62 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(*v4 + 16);
  v14 = *(*v4 + 24);
  if (v14 <= v13 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_100DF70B8(v13 + 1);
    }

    else
    {
      if (v14 > v13)
      {
        sub_100E04984(type metadata accessor for OwnedBeaconGroup, &qword_1016BBEB0, &qword_1013E9DC8, type metadata accessor for OwnedBeaconGroup);
        goto LABEL_82;
      }

      sub_100E0A658(v13 + 1);
    }

    v15 = *v4;
    v16 = *(*v4 + 40);
    Hasher.init(_seed:)();
    v69 = v8;
    v17 = *(v8 + 24);
    type metadata accessor for UUID();
    sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
    v70 = v17;
    dispatch thunk of Hashable.hash(into:)();
    v18 = Hasher._finalize()();
    v19 = v15 + 56;
    v20 = -1 << *(v15 + 32);
    a2 = v18 & ~v20;
    if ((*(v15 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v75 = ~v20;
      v21 = *a1;
      v22 = *(a1 + 8);
      v76 = *(v9 + 72);
      if (v21)
      {
        v23 = 0;
      }

      else
      {
        v23 = v22 == 0xC000000000000000;
      }

      v24 = !v23;
      v74 = v24;
      v25 = v22 >> 62;
      v71 = 0;
      v72 = v21;
      v26 = HIDWORD(v21) - v21;
      v27 = __OFSUB__(HIDWORD(v21), v21);
      v68 = v27;
      v67 = v26;
      v65 = v22;
      v73 = BYTE6(v22);
      v64 = v4;
      v63 = v9;
      v28 = v69;
      v66 = v15 + 56;
      while (1)
      {
        sub_100E0ED24(*(v15 + 48) + v76 * a2, v12, type metadata accessor for OwnedBeaconGroup);
        v29 = *v12;
        v30 = *(v12 + 1);
        v31 = v30 >> 62;
        if (v30 >> 62 != 3)
        {
          break;
        }

        if (v29)
        {
          v32 = 0;
        }

        else
        {
          v32 = v30 == 0xC000000000000000;
        }

        v34 = !v32 || v25 < 3;
        if ((v34 | v74))
        {
          goto LABEL_43;
        }

LABEL_68:
        v51 = *(a1 + 24);
        if (v12[24] == 1)
        {
          if ((*(a1 + 24) & 1) == 0)
          {
            goto LABEL_20;
          }
        }

        else
        {
          if (*(v12 + 2) != *(a1 + 16))
          {
            v51 = 1;
          }

          if (v51)
          {
            goto LABEL_20;
          }
        }

        v52 = &v12[v28[6]];
        if (static UUID.== infix(_:_:)())
        {
          v53 = v28[7];
          if ((static MACAddress.== infix(_:_:)() & 1) != 0 && v12[v28[8]] == *(a1 + v28[8]))
          {
            if (v54 = v28[9], v55 = *&v12[v54], v56 = *&v12[v54 + 8], v57 = (a1 + v54), v55 == *v57) && v56 == v57[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
            {
              if (sub_100DE8118(*&v12[v28[10]], *(a1 + v28[10])))
              {
                sub_100E0EC5C(v12, type metadata accessor for OwnedBeaconGroup);
                ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
                __break(1u);
                goto LABEL_82;
              }
            }
          }
        }

LABEL_20:
        sub_100E0EC5C(v12, type metadata accessor for OwnedBeaconGroup);
        a2 = (a2 + 1) & v75;
        if (((*(v19 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
        {
          goto LABEL_82;
        }
      }

      if (v31 > 1)
      {
        if (v31 == 2)
        {
          v37 = *(v29 + 16);
          v36 = *(v29 + 24);
          v38 = __OFSUB__(v36, v37);
          v35 = v36 - v37;
          if (v38)
          {
            goto LABEL_88;
          }

          if (v25 > 1)
          {
            goto LABEL_44;
          }
        }

        else
        {
LABEL_43:
          v35 = 0;
          if (v25 > 1)
          {
LABEL_44:
            if (v25 != 2)
            {
              if (v35)
              {
                goto LABEL_20;
              }

              goto LABEL_68;
            }

            v41 = *(v72 + 16);
            v40 = *(v72 + 24);
            v38 = __OFSUB__(v40, v41);
            v39 = v40 - v41;
            if (v38)
            {
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

LABEL_46:
            if (v35 != v39)
            {
              goto LABEL_20;
            }

            if (v35 < 1)
            {
              goto LABEL_68;
            }

            if (v31 > 1)
            {
              if (v31 != 2)
              {
                *&v78[6] = 0;
                *v78 = 0;
                goto LABEL_66;
              }

              v43 = *(v29 + 16);
              v42 = *(v29 + 24);
              v44 = __DataStorage._bytes.getter();
              if (v44)
              {
                v45 = __DataStorage._offset.getter();
                if (__OFSUB__(v43, v45))
                {
                  goto LABEL_91;
                }

                v44 += v43 - v45;
              }

              if (__OFSUB__(v42, v43))
              {
                goto LABEL_90;
              }
            }

            else
            {
              if (!v31)
              {
                *v78 = *v12;
                *&v78[8] = v30;
                v78[10] = BYTE2(v30);
                v78[11] = BYTE3(v30);
                v78[12] = BYTE4(v30);
                v78[13] = BYTE5(v30);
LABEL_66:
                v50 = v71;
                sub_100771A28(v78, v72, v65, &v77);
                v71 = v50;
                v49 = v77;
LABEL_67:
                v28 = v69;
                v19 = v66;
                if ((v49 & 1) == 0)
                {
                  goto LABEL_20;
                }

                goto LABEL_68;
              }

              v46 = v29;
              if (v29 >> 32 < v29)
              {
                goto LABEL_89;
              }

              v44 = __DataStorage._bytes.getter();
              if (v44)
              {
                v47 = __DataStorage._offset.getter();
                if (__OFSUB__(v46, v47))
                {
                  goto LABEL_92;
                }

                v44 += v46 - v47;
              }
            }

            __DataStorage._length.getter();
            v48 = v71;
            sub_100771A28(v44, v72, v65, v78);
            v71 = v48;
            v49 = v78[0];
            v4 = v64;
            v9 = v63;
            goto LABEL_67;
          }
        }
      }

      else if (v31)
      {
        LODWORD(v35) = HIDWORD(v29) - v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
          goto LABEL_87;
        }

        v35 = v35;
        if (v25 > 1)
        {
          goto LABEL_44;
        }
      }

      else
      {
        v35 = BYTE6(v30);
        if (v25 > 1)
        {
          goto LABEL_44;
        }
      }

      v39 = v73;
      if (v25)
      {
        v39 = v67;
        if (v68)
        {
          goto LABEL_85;
        }
      }

      goto LABEL_46;
    }
  }

LABEL_82:
  v58 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v58 + 48) + *(v9 + 72) * a2, type metadata accessor for OwnedBeaconGroup);
  v60 = *(v58 + 16);
  v38 = __OFADD__(v60, 1);
  v61 = v60 + 1;
  if (v38)
  {
LABEL_86:
    __break(1u);
LABEL_87:
    __break(1u);
LABEL_88:
    __break(1u);
LABEL_89:
    __break(1u);
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
  }

  *(v58 + 16) = v61;
  return result;
}

uint64_t sub_100E010C4(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF7418(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BC118, &qword_1013E9EB0);
      goto LABEL_12;
    }

    sub_100E0A988(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
  sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000041A4(&qword_1016BC110, &unk_1016BC100, &unk_1013F6310);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

uint64_t sub_100E012C0(double *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for WildModeTrackingLocation(0);
  v35 = *(v7 - 8);
  v8 = *(v35 + 64);
  __chkstk_darwin(v7);
  v10 = (&v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v34 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_26;
  }

  if (a3)
  {
    sub_100DF76D0(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E04984(type metadata accessor for WildModeTrackingLocation, &qword_1016BBFA8, &qword_1013E9E28, type metadata accessor for WildModeTrackingLocation);
      goto LABEL_26;
    }

    sub_100E0AC04(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v15 = *a1;
  if (*a1 == 0.0)
  {
    v16 = 0.0;
  }

  else
  {
    v16 = *a1;
  }

  Hasher._combine(_:)(*&v16);
  v17 = a1[1];
  if (v17 == 0.0)
  {
    v18 = 0.0;
  }

  else
  {
    v18 = a1[1];
  }

  Hasher._combine(_:)(*&v18);
  v19 = a1[2];
  if (v19 == 0.0)
  {
    v20 = 0.0;
  }

  else
  {
    v20 = a1[2];
  }

  Hasher._combine(_:)(*&v20);
  v21 = *(v7 + 28);
  type metadata accessor for Date();
  sub_1000097BC(&unk_101698070, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v22 = Hasher._finalize()();
  v23 = -1 << *(v13 + 32);
  a2 = v22 & ~v23;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v24 = ~v23;
    v25 = *(v35 + 72);
    do
    {
      sub_100E0ED24(*(v13 + 48) + v25 * a2, v10, type metadata accessor for WildModeTrackingLocation);
      if (*v10 == v15 && v10[1] == v17 && v10[2] == v19)
      {
        v26 = *(v7 + 28);
        v27 = static Date.== infix(_:_:)();
        sub_100E0EC5C(v10, type metadata accessor for WildModeTrackingLocation);
        if (v27)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_100E0EC5C(v10, type metadata accessor for WildModeTrackingLocation);
      }

      a2 = (a2 + 1) & v24;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_26:
  v28 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v28 + 48) + *(v35 + 72) * a2, type metadata accessor for WildModeTrackingLocation);
  v30 = *(v28 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v28 + 16) = v32;
  }

  return result;
}

Swift::Int sub_100E01620(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF78D8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E0549C();
      goto LABEL_12;
    }

    sub_100E0ADD0(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  sub_1007766A4(v20, v5);
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
      v12 = *(*(v8 + 48) + 8 * a2);

      v14 = sub_100775E74(v13, v5);

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v19;
  *(*v19 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E017AC(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for Destination();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v30 = v3;
  v31 = v7;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF7E6C(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E05650(&type metadata accessor for Destination, &qword_1016BC010, &qword_1013E9E38);
      goto LABEL_12;
    }

    sub_100E0B2FC(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_1000097BC(&qword_1016BC000, &type metadata accessor for Destination);
  v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v16 = v13 + 56;
  v32 = v13;
  v17 = -1 << *(v13 + 32);
  a2 = v15 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v19 = v21;
    v22 = *(v20 + 56);
    do
    {
      v19(v10, *(v32 + 48) + v22 * a2, v6);
      sub_1000097BC(&qword_1016BC008, &type metadata accessor for Destination);
      v23 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v20 - 8))(v10, v6);
      if (v23)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v16 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v24 = v31;
  v25 = *v30;
  *(v25 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v24 + 32))(*(v25 + 48) + *(v24 + 72) * a2, v33, v6);
  v27 = *(v25 + 16);
  v28 = __OFADD__(v27, 1);
  v29 = v27 + 1;
  if (!v28)
  {
    *(v25 + 16) = v29;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E01A74(Swift::Int result, unint64_t a2, char a3)
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
    sub_100DF81C8(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E0653C(&qword_1016AAA18, &qword_1013BD810);
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E0B618(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v10 = qword_1013E9EE8[v4];
  Hasher._combine(_:)(v10);
  result = Hasher._finalize()();
  v11 = -1 << *(v8 + 32);
  a2 = result & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (qword_1013E9EE8[*(*(v8 + 48) + a2)] != v10)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E01BF0(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF8424(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&unk_1016BC190, &unk_101406290);
      goto LABEL_12;
    }

    sub_100E0B844(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  type metadata accessor for AnyCancellable();
  sub_1000097BC(&qword_1016BC180, &type metadata accessor for AnyCancellable);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000097BC(&qword_1016BC188, &type metadata accessor for AnyCancellable);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

uint64_t sub_100E01DE8(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF8954(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BC0E8, &unk_101406260);
      goto LABEL_12;
    }

    sub_100E0BD08(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000BC4D4(&unk_1016BC0D0, qword_1013EA6A0);
  sub_1000041A4(&qword_1016BC500, &unk_1016BC0D0, qword_1013EA6A0);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000041A4(&qword_1016BC0E0, &unk_1016BC0D0, qword_1013EA6A0);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

uint64_t sub_100E01FE4(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for BeaconIdentifier();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_100DF8E28(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_100E04984(type metadata accessor for BeaconIdentifier, &unk_1016BBE50, &unk_1013B34E0, type metadata accessor for BeaconIdentifier);
      goto LABEL_15;
    }

    sub_100E0C16C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v15 = *(v7 + 20);
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v13 + 32);
  a2 = v16 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v29 + 72);
    do
    {
      sub_100E0ED24(*(v13 + 48) + v19 * a2, v10, type metadata accessor for BeaconIdentifier);
      if (static UUID.== infix(_:_:)())
      {
        v20 = *(v7 + 20);
        v21 = static UUID.== infix(_:_:)();
        sub_100E0EC5C(v10, type metadata accessor for BeaconIdentifier);
        if (v21)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_100E0EC5C(v10, type metadata accessor for BeaconIdentifier);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_100E0ECBC(a1, *(v22 + 48) + *(v29 + 72) * a2, type metadata accessor for BeaconIdentifier);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

Swift::Int sub_100E022F4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v41 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_49;
  }

  if (a3)
  {
    sub_100DF91A4(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E05B70();
      goto LABEL_49;
    }

    sub_100E0C4B8(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  v10 = *v5;
  v11 = *(v5 + 8);
  Hasher.init(_seed:)();
  v50 = v11;
  v51 = v10;
  String.hash(into:)();
  result = Hasher._finalize()();
  v12 = -1 << *(v8 + 32);
  a2 = result & ~v12;
  v49 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v48 = ~v12;
    v44 = *(v5 + 32);
    v45 = *(v5 + 24);
    v46 = *(v5 + 16);
    v42 = *(v5 + 64);
    v43 = *(v5 + 48);
    v13 = *(v5 + 72);
    v36 = v13;
    v37 = *(v5 + 56);
    v38 = *(v5 + 80);
    v39 = *(v5 + 40);
    v47 = *(v8 + 48);
    do
    {
      v14 = v47 + 88 * a2;
      result = *v14;
      v16 = *(v14 + 16);
      v15 = *(v14 + 24);
      v17 = *(v14 + 32);
      v19 = *(v14 + 40);
      v18 = *(v14 + 48);
      v21 = *(v14 + 56);
      v20 = *(v14 + 64);
      v23 = *(v14 + 72);
      v22 = *(v14 + 80);
      if (*v14 != v51 || *(v14 + 8) != v50)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if (v16 != v46 || v15 != v45)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if ((result & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      if ((v17 ^ v44))
      {
        goto LABEL_11;
      }

      if (v18)
      {
        if (!v43)
        {
          goto LABEL_11;
        }

        if (v19 != v39 || v18 != v43)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v43)
      {
        goto LABEL_11;
      }

      if (v20)
      {
        if (!v42)
        {
          goto LABEL_11;
        }

        if (v21 != v37 || v20 != v42)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            goto LABEL_11;
          }
        }
      }

      else if (v42)
      {
        goto LABEL_11;
      }

      if (v22)
      {
        if (v38)
        {
          v28 = v23 == v36 && v22 == v38;
          if (v28 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
LABEL_48:
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

      else if (!v38)
      {
        goto LABEL_48;
      }

LABEL_11:
      a2 = (a2 + 1) & v48;
    }

    while (((*(v49 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_49:
  v29 = *v40;
  *(*v40 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v30 = *(v29 + 48) + 88 * a2;
  v31 = *(v41 + 16);
  *v30 = *v41;
  *(v30 + 16) = v31;
  *(v30 + 80) = *(v41 + 80);
  v32 = *(v41 + 64);
  *(v30 + 48) = *(v41 + 48);
  *(v30 + 64) = v32;
  *(v30 + 32) = *(v41 + 32);
  v33 = *(v29 + 16);
  v34 = __OFADD__(v33, 1);
  v35 = v33 + 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(v29 + 16) = v35;
  }

  return result;
}

uint64_t sub_100E025F8(uint64_t a1, unint64_t a2, char a3)
{
  v59 = a1;
  v49 = sub_1000BC4D4(&qword_1016AF880, &unk_10138CE20);
  v6 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v8 = &v42 - v7;
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v48 = &v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v47 = *(v13 - 8);
  v14 = *(v47 + 64);
  v15 = __chkstk_darwin(v13);
  v58 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v19 = &v42 - v18;
  v20 = __chkstk_darwin(v17);
  v22 = &v42 - v21;
  v23 = *(*v3 + 16);
  v24 = *(*v3 + 24);
  v44 = v3;
  if (v24 <= v23 || (a3 & 1) == 0)
  {
    if (a3)
    {
      v43 = v20;
      sub_100DF943C(v23 + 1);
    }

    else
    {
      if (v24 > v23)
      {
        sub_100E05D0C();
        goto LABEL_21;
      }

      v43 = v20;
      sub_100E0C734(v23 + 1);
    }

    v57 = *v3;
    v25 = *(v57 + 40);
    Hasher.init(_seed:)();
    sub_1000D2A70(v59, v22, &qword_1016980D0, &unk_10138F3B0);
    v55 = *(v10 + 48);
    v56 = v10 + 48;
    v26 = v55(v22, 1, v9);
    v27 = v49;
    if (v26 == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v28 = v48;
      (*(v10 + 32))(v48, v22, v9);
      Hasher._combine(_:)(1u);
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*(v10 + 8))(v28, v9);
    }

    v29 = Hasher._finalize()();
    v30 = -1 << *(v57 + 32);
    a2 = v29 & ~v30;
    v54 = v57 + 56;
    if ((*(v57 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v53 = ~v30;
      v45 = (v10 + 32);
      v31 = *(v47 + 72);
      v51 = (v10 + 8);
      v52 = v31;
      v46 = v19;
      do
      {
        sub_1000D2A70(*(v57 + 48) + v52 * a2, v19, &qword_1016980D0, &unk_10138F3B0);
        v35 = *(v27 + 48);
        sub_1000D2A70(v19, v8, &qword_1016980D0, &unk_10138F3B0);
        sub_1000D2A70(v59, &v8[v35], &qword_1016980D0, &unk_10138F3B0);
        v36 = v55;
        if (v55(v8, 1, v9) == 1)
        {
          sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
          if (v36(&v8[v35], 1, v9) == 1)
          {
            goto LABEL_24;
          }
        }

        else
        {
          sub_1000D2A70(v8, v58, &qword_1016980D0, &unk_10138F3B0);
          if (v36(&v8[v35], 1, v9) != 1)
          {
            v32 = v58;
            v33 = v48;
            (*v45)(v48, &v8[v35], v9);
            sub_1000097BC(&qword_1016984A0, &type metadata accessor for UUID);
            v50 = dispatch thunk of static Equatable.== infix(_:_:)();
            v34 = *v51;
            v19 = v46;
            (*v51)(v33, v9);
            sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
            v34(v32, v9);
            v27 = v49;
            sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
            if (v50)
            {
              goto LABEL_25;
            }

            goto LABEL_14;
          }

          sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
          (*v51)(v58, v9);
        }

        sub_10000B3A8(v8, &qword_1016AF880, &unk_10138CE20);
LABEL_14:
        a2 = (a2 + 1) & v53;
      }

      while (((*(v54 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_21:
  v37 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_1000D2AD8(v59, *(v37 + 48) + *(v47 + 72) * a2, &qword_1016980D0, &unk_10138F3B0);
  v39 = *(v37 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
LABEL_24:
    sub_10000B3A8(v8, &qword_1016980D0, &unk_10138F3B0);
LABEL_25:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v37 + 16) = v41;
  }

  return result;
}

uint64_t sub_100E02C68(uint64_t result, unint64_t a2, char a3)
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
    sub_100DF9918(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100E05F34();
      a2 = v7;
      goto LABEL_12;
    }

    sub_100E0CBB0(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:bytes:count:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 4 * a2) != v4)
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
  *(*(v12 + 48) + 4 * a2) = v4;
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

Swift::Int sub_100E02D8C(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF9B40(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_100E063FC(&unk_1016BC0C0, &qword_101406240);
      a2 = v8;
      goto LABEL_12;
    }

    sub_100E0CDA4(v6 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v11 = *(v5 + 32);
  NSObject.hash(into:)();

  result = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = result & ~v12;
    result = type metadata accessor for Service();
    a2 = v14;
    while (*(*(*(v9 + 48) + 8 * a2) + 32) != *(v5 + 32))
    {
      a2 = (a2 + 1) & v13;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E02F10(Swift::Int result, unint64_t a2, char a3)
{
  v4 = v3;
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF9D9C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_100E063FC(&qword_1016BC0B8, &qword_1013E9E98);
      a2 = v8;
      goto LABEL_12;
    }

    sub_100E0CFD8(v6 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v11 = *(v5 + 40);
  NSObject.hash(into:)();

  result = Hasher._finalize()();
  v12 = -1 << *(v9 + 32);
  a2 = result & ~v12;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    v14 = result & ~v12;
    result = type metadata accessor for Characteristic();
    a2 = v14;
    while (*(*(*(v9 + 48) + 8 * a2) + 40) != *(v5 + 40))
    {
      a2 = (a2 + 1) & v13;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = v5;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100E03094(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DF9FF8(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BC068, &unk_101406230);
      goto LABEL_12;
    }

    sub_100E0D20C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000BC4D4(&qword_1016B2F60, &qword_1013D3ED0);
  sub_1000041A4(&qword_1016BC4E0, &qword_1016B2F60, &qword_1013D3ED0);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000041A4(&qword_1016BC070, &qword_1016B2F60, &qword_1013D3ED0);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

Swift::Int sub_100E03290(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v39 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_35;
  }

  if (a3)
  {
    sub_100DFA29C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E06088();
      goto LABEL_35;
    }

    sub_100E0D488(v6 + 1);
  }

  v8 = *v5;
  v9 = v5[1];
  v10 = v5[2];
  v11 = *v3;
  v12 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v45 = v8;
  v13 = v9;
  String.hash(into:)();
  v44 = *(v10 + 16);
  Hasher._combine(_:)(v44);
  v40 = v10;
  v14 = *(v10 + 16);
  if (v14)
  {
    v15 = (v10 + 40);
    do
    {
      v16 = *(v15 - 1);
      v17 = *v15;

      String.hash(into:)();

      v15 += 2;
      --v14;
    }

    while (v14);
  }

  v41 = v5[4];
  v42 = v5[3];
  String.hash(into:)();
  result = Hasher._finalize()();
  v18 = -1 << *(v11 + 32);
  a2 = result & ~v18;
  v43 = v11 + 56;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v20 = *(v11 + 48);
    v37 = (v10 + 40);
    do
    {
      v21 = (v20 + 40 * a2);
      result = *v21;
      v23 = v21[2];
      v22 = v21[3];
      v24 = v21[4];
      v25 = *v21 == v45 && v21[1] == v13;
      if (v25 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (*(v23 + 16) == v44)
        {
          if (v44 && v23 != v40)
          {
            v26 = *(v40 + 16);
            v27 = (v23 + 40);
            v28 = v37;
            v29 = v44;
            while (v26)
            {
              result = *(v27 - 1);
              if (result != *(v28 - 1) || *v27 != *v28)
              {
                result = _stringCompareWithSmolCheck(_:_:expecting:)();
                if ((result & 1) == 0)
                {
                  goto LABEL_14;
                }
              }

              --v26;
              v27 += 2;
              v28 += 2;
              if (!--v29)
              {
                goto LABEL_32;
              }
            }

            __break(1u);
LABEL_38:
            __break(1u);
            return result;
          }

LABEL_32:
          if (v22 == v42 && v24 == v41 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }
      }

LABEL_14:
      a2 = (a2 + 1) & v19;
    }

    while (((*(v43 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_35:
  v31 = *v38;
  *(*v38 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v32 = *(v31 + 48) + 40 * a2;
  v33 = *(v39 + 16);
  *v32 = *v39;
  *(v32 + 16) = v33;
  *(v32 + 32) = *(v39 + 32);
  v34 = *(v31 + 16);
  v35 = __OFADD__(v34, 1);
  v36 = v34 + 1;
  if (v35)
  {
    goto LABEL_38;
  }

  *(v31 + 16) = v36;
  return result;
}

uint64_t sub_100E03568(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DFA598(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BBEF0, &qword_1014060B0);
      goto LABEL_12;
    }

    sub_100E0D768(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000BC4D4(&unk_1016A6020, &unk_101393420);
  sub_1000041A4(&qword_10169A0B0, &unk_1016A6020, &unk_101393420);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000041A4(&unk_1016C7C80, &unk_1016A6020, &unk_101393420);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

Swift::Int sub_100E03764(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_46;
  }

  if (a3)
  {
    sub_100DFA83C(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E06224();
      goto LABEL_46;
    }

    sub_100E0D9E4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  Hasher.init(_seed:)();
  sub_100E76BF0();
  result = Hasher._finalize()();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  v42 = v8 + 56;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v40 = ~v10;
    v52 = *(v5 + 8);
    v53 = *v5;
    v39 = *(v8 + 48);
    v33 = *(v5 + 131);
    v34 = *(v5 + 129);
    v31 = *(v5 + 152);
    v32 = *(v5 + 144);
    while (1)
    {
      v11 = v39 + 160 * a2;
      result = *v11;
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      v14 = *(v11 + 32);
      v15 = *(v11 + 40);
      v16 = *(v11 + 48);
      v17 = *(v11 + 56);
      v18 = *(v11 + 64);
      v19 = *(v11 + 72);
      v50 = *(v11 + 88);
      v51 = *(v11 + 80);
      v48 = *(v11 + 104);
      v49 = *(v11 + 96);
      v46 = *(v11 + 120);
      v47 = *(v11 + 112);
      v44 = *(v11 + 129);
      v45 = *(v11 + 128);
      v43 = *(v11 + 130);
      v41 = *(v11 + 131);
      v38 = *(v11 + 136);
      v20 = *v11 == v53 && *(v11 + 8) == v52;
      v36 = *(v11 + 152);
      v37 = *(v11 + 144);
      if (v20 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v12 == *(v5 + 16) && v13 == *(v5 + 24) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
        {
          if (v14 == *(v5 + 32) && v15 == *(v5 + 40) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            if (v16 == *(v5 + 48) && v17 == *(v5 + 56) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
              if (v18 == *(v5 + 64) && v19 == *(v5 + 72) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
              {
                if (v51 == *(v5 + 80) && v50 == *(v5 + 88) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {
                  if (v49 == *(v5 + 96) && v48 == *(v5 + 104) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                  {
                    if (v47 == *(v5 + 112) && v46 == *(v5 + 120) || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                    {
                      if (v45 == (*(v5 + 128) & 1) && ((v44 ^ v34) & 1) == 0 && v43 == (*(v5 + 130) & 1) && ((v41 ^ v33) & 1) == 0 && v38 == *(v5 + 136))
                      {
                        if (v37 == v32 && v36 == v31)
                        {
                          break;
                        }

                        result = _stringCompareWithSmolCheck(_:_:expecting:)();
                        if (result)
                        {
                          break;
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

      a2 = (a2 + 1) & v40;
      if (((*(v42 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_46;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_46:
  v21 = *v35;
  *(*v35 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v22 = (*(v21 + 48) + 160 * a2);
  v23 = *(v5 + 80);
  v22[4] = *(v5 + 64);
  v22[5] = v23;
  v24 = *(v5 + 48);
  v22[2] = *(v5 + 32);
  v22[3] = v24;
  v25 = *(v5 + 144);
  v22[8] = *(v5 + 128);
  v22[9] = v25;
  v26 = *(v5 + 112);
  v22[6] = *(v5 + 96);
  v22[7] = v26;
  v27 = *(v5 + 16);
  *v22 = *v5;
  v22[1] = v27;
  v28 = *(v21 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v30;
  }

  return result;
}

uint64_t sub_100E03B44(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DFAC18(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&unk_1016BBFE0, &unk_101406210);
      goto LABEL_12;
    }

    sub_100E0DCB4(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000BC4D4(&unk_1016C2180, &unk_1013EA680);
  sub_1000041A4(&unk_1016BBFD0, &unk_1016C2180, &unk_1013EA680);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000041A4(&unk_1016C9050, &unk_1016C2180, &unk_1013EA680);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

uint64_t sub_100E03D40(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100DFB0F0(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_100E063FC(&qword_1016BBE08, &qword_1013E9D90);
      goto LABEL_12;
    }

    sub_100E0E13C(v6 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000BC4D4(&qword_1016BBE10, &qword_1013E9D98);
  sub_1000041A4(&qword_1016BBE18, &qword_1016BBE10, &qword_1013E9D98);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000041A4(&unk_1016C7C60, &qword_1016BBE10, &qword_1013E9D98);
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

unint64_t sub_100E03F3C(unint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = HIDWORD(result);
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_100DFB5DC(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      v8 = a2;
      result = sub_100E0666C();
      a2 = v8;
      goto LABEL_15;
    }

    sub_100E0E5D0(v6 + 1);
  }

  v9 = *v3;
  v10 = *(*v3 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  result = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = result & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v9 + 48) + 8 * a2);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v4 && v14 == v5)
      {
        goto LABEL_18;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v17 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v18 = (*(v17 + 48) + 8 * a2);
  *v18 = v4;
  v18[1] = v5;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  sub_1000BC4D4(&qword_1016ABEB0, &unk_1013BFD40);
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int sub_100E040B8(Swift::Int result, unint64_t a2, Swift::UInt32 a3, unint64_t a4, char a5, uint64_t *a6, uint64_t *a7, uint64_t *a8, uint64_t *a9)
{
  v13 = result;
  v14 = *(*v9 + 16);
  v15 = *(*v9 + 24);
  if (v15 > v14 && (a5 & 1) != 0)
  {
    goto LABEL_72;
  }

  if (a5)
  {
    v56 = a8;
    sub_100DFB840(v14 + 1, a6, a7);
  }

  else
  {
    if (v15 > v14)
    {
      result = sub_100E067AC(a6, a7);
      goto LABEL_72;
    }

    v56 = a8;
    sub_100E0E7F8(v14 + 1, a6, a7);
  }

  v16 = *v9;
  v17 = *(*v9 + 40);
  Hasher.init(_seed:)();
  sub_100017D5C(v13, a2);
  Data.hash(into:)();
  sub_100016590(v13, a2);
  Hasher._combine(_:)(a3);
  result = Hasher._finalize()();
  v18 = v16 + 56;
  v19 = -1 << *(v16 + 32);
  a4 = result & ~v19;
  if ((*(v16 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v20 = v16;
    v21 = 0;
    v22 = ~v19;
    if (v13)
    {
      v23 = 0;
    }

    else
    {
      v23 = a2 == 0xC000000000000000;
    }

    v24 = !v23;
    v25 = a2 >> 62;
    v26 = __OFSUB__(HIDWORD(v13), v13);
    v67 = v26;
    v65 = v16 + 56;
    v66 = HIDWORD(v13) - v13;
    v27 = BYTE6(a2);
    v59 = a3;
    v58 = a2;
    v61 = v16;
    v62 = BYTE6(a2);
    v64 = ~v19;
    v63 = v24;
    v60 = v13;
    while (1)
    {
      v28 = *(v20 + 48) + 24 * a4;
      v29 = *v28;
      v30 = *(v28 + 8);
      v31 = *(v28 + 16);
      v32 = v30 >> 62;
      if (v30 >> 62 == 3)
      {
        break;
      }

      if (v32 > 1)
      {
        if (v32 != 2)
        {
          goto LABEL_43;
        }

        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        v39 = __OFSUB__(v37, v38);
        v36 = v37 - v38;
        if (v39)
        {
          goto LABEL_78;
        }

        if (v25 <= 1)
        {
          goto LABEL_40;
        }
      }

      else if (v32)
      {
        LODWORD(v36) = HIDWORD(v29) - v29;
        if (__OFSUB__(HIDWORD(v29), v29))
        {
          goto LABEL_77;
        }

        v36 = v36;
        if (v25 <= 1)
        {
LABEL_40:
          v40 = v27;
          if (v25)
          {
            v40 = v66;
            if (v67)
            {
              goto LABEL_75;
            }
          }

          goto LABEL_46;
        }
      }

      else
      {
        v36 = BYTE6(v30);
        if (v25 <= 1)
        {
          goto LABEL_40;
        }
      }

LABEL_44:
      if (v25 != 2)
      {
        if (v36)
        {
          goto LABEL_20;
        }

        goto LABEL_19;
      }

      v42 = *(v13 + 16);
      v41 = *(v13 + 24);
      v39 = __OFSUB__(v41, v42);
      v40 = v41 - v42;
      if (v39)
      {
        __break(1u);
LABEL_75:
        __break(1u);
        goto LABEL_76;
      }

LABEL_46:
      if (v36 != v40)
      {
        goto LABEL_20;
      }

      if (v36 >= 1)
      {
        if (v32 > 1)
        {
          if (v32 == 2)
          {
            v57 = v21;
            v44 = *(v29 + 16);
            v43 = *(v29 + 24);
            sub_100017D5C(v13, a2);
            sub_100017D5C(v29, v30);
            v45 = __DataStorage._bytes.getter();
            if (v45)
            {
              v46 = __DataStorage._offset.getter();
              if (__OFSUB__(v44, v46))
              {
                goto LABEL_81;
              }

              v45 += v44 - v46;
            }

            if (__OFSUB__(v43, v44))
            {
              goto LABEL_80;
            }

            __DataStorage._length.getter();
            v47 = v45;
            v48 = v13;
            v21 = v57;
            a2 = v58;
            goto LABEL_67;
          }

          *&v70[6] = 0;
          *v70 = 0;
          sub_100017D5C(v13, a2);
          sub_100017D5C(v29, v30);
LABEL_69:
          sub_100771A28(v70, v13, a2, &v69);
          sub_100016590(v13, a2);
          result = sub_100016590(v29, v30);
          v51 = v69;
        }

        else
        {
          if (!v32)
          {
            *v70 = v29;
            *&v70[8] = v30;
            v70[10] = BYTE2(v30);
            v70[11] = BYTE3(v30);
            v70[12] = BYTE4(v30);
            v70[13] = BYTE5(v30);
            sub_100017D5C(v13, a2);
            sub_100017D5C(v29, v30);
            v20 = v61;
            goto LABEL_69;
          }

          if (v29 >> 32 < v29)
          {
            goto LABEL_79;
          }

          sub_100017D5C(v60, a2);
          sub_100017D5C(v29, v30);
          v49 = __DataStorage._bytes.getter();
          if (v49)
          {
            v50 = __DataStorage._offset.getter();
            if (__OFSUB__(v29, v50))
            {
              goto LABEL_82;
            }

            v49 += v29 - v50;
          }

          __DataStorage._length.getter();
          v47 = v49;
          v13 = v60;
          v48 = v60;
          a2 = v58;
LABEL_67:
          sub_100771A28(v47, v48, a2, v70);
          sub_100016590(v13, a2);
          result = sub_100016590(v29, v30);
          v51 = v70[0];
          a3 = v59;
          v20 = v61;
        }

        v22 = v64;
        v18 = v65;
        v24 = v63;
        v27 = v62;
        if (!v51)
        {
          goto LABEL_20;
        }
      }

LABEL_19:
      if (v31 == a3)
      {
        sub_1000BC4D4(v56, a9);
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

LABEL_20:
      a4 = (a4 + 1) & v22;
      if (((*(v18 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

    if (v29)
    {
      v33 = 0;
    }

    else
    {
      v33 = v30 == 0xC000000000000000;
    }

    v35 = !v33 || v25 < 3;
    if (((v35 | v24) & 1) == 0)
    {
      goto LABEL_19;
    }

LABEL_43:
    v36 = 0;
    if (v25 <= 1)
    {
      goto LABEL_40;
    }

    goto LABEL_44;
  }

LABEL_72:
  v52 = *v68;
  *(*v68 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v53 = *(v52 + 48) + 24 * a4;
  *v53 = v13;
  *(v53 + 8) = a2;
  *(v53 + 16) = a3;
  v54 = *(v52 + 16);
  v39 = __OFADD__(v54, 1);
  v55 = v54 + 1;
  if (v39)
  {
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
LABEL_81:
    __break(1u);
LABEL_82:
    __break(1u);
  }

  *(v52 + 16) = v55;
  return result;
}

void *sub_100E0467C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016B5498, &qword_1013D6818);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E047D8()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BBEB8, &qword_1013E9DD0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100017D5C(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E04984(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = v4;
  v9 = a1(0);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9 - 8);
  v13 = &v30 - v12;
  sub_1000BC4D4(a2, a3);
  v14 = *v4;
  v15 = static _SetStorage.copy(original:)();
  v16 = v15;
  if (*(v14 + 16))
  {
    v31 = v8;
    result = (v15 + 56);
    v18 = ((1 << *(v16 + 32)) + 63) >> 6;
    if (v16 != v14 || result >= v14 + 56 + 8 * v18)
    {
      result = memmove(result, (v14 + 56), 8 * v18);
    }

    v20 = 0;
    *(v16 + 16) = *(v14 + 16);
    v21 = 1 << *(v14 + 32);
    v22 = *(v14 + 56);
    v23 = -1;
    if (v21 < 64)
    {
      v23 = ~(-1 << v21);
    }

    v24 = v23 & v22;
    v25 = (v21 + 63) >> 6;
    if ((v23 & v22) != 0)
    {
      do
      {
        v26 = __clz(__rbit64(v24));
        v24 &= v24 - 1;
LABEL_17:
        v29 = *(v10 + 72) * (v26 | (v20 << 6));
        sub_100E0ED24(*(v14 + 48) + v29, v13, a4);
        result = sub_100E0ECBC(v13, *(v16 + 48) + v29, a4);
      }

      while (v24);
    }

    v27 = v20;
    while (1)
    {
      v20 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v20 >= v25)
      {

        v8 = v31;
        goto LABEL_21;
      }

      v28 = *(v14 + 56 + 8 * v20);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v24 = (v28 - 1) & v28;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v8 = v16;
  }

  return result;
}

void *sub_100E04B8C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016A5A00, &qword_1013B3500);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *v18;
        v19 = *(v18 + 8);
        LOBYTE(v18) = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = v20;
        *(v21 + 8) = v19;
        *(v21 + 16) = v18;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E04D08()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC020, &qword_1013B3580);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_100017D5C(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E04E64()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016A5A58, &qword_1013B3578);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 24 * (v14 | (v8 << 6));
        v18 = *(v2 + 48) + v17;
        v20 = *(v18 + 8);
        v19 = *(v18 + 16);
        v21 = *(v4 + 48) + v17;
        *v21 = *v18;
        *(v21 + 8) = v20;
        *(v21 + 16) = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E05030()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC038, &qword_1013E9E58);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; v22[3] = v18)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = 4 * v14;
      v18 = (*(v2 + 48) + v17);
      v19 = *v18;
      v20 = v18[1];
      v21 = v18[2];
      LOBYTE(v18) = v18[3];
      v22 = (*(v4 + 48) + v17);
      *v22 = v19;
      v22[1] = v20;
      v22[2] = v21;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E051D0()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC1A8, &qword_1013E9ED0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E0532C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC1A0, &qword_1013E9EC8);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = *(*(v2 + 48) + v17);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10002E98C(v18, *(&v18 + 1));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E0549C()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC028, &qword_1013E9E48);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E05650(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_1000BC4D4(a2, a3);
  v12 = *v3;
  v13 = static _SetStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    v28 = v6;
    result = (v13 + 56);
    v16 = ((1 << *(v14 + 32)) + 63) >> 6;
    if (v14 != v12 || result >= v12 + 56 + 8 * v16)
    {
      result = memmove(result, (v12 + 56), 8 * v16);
    }

    v18 = 0;
    *(v14 + 16) = *(v12 + 16);
    v19 = 1 << *(v12 + 32);
    v20 = -1;
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    v21 = v20 & *(v12 + 56);
    v22 = (v19 + 63) >> 6;
    v29 = v8 + 32;
    for (i = v8 + 16; v21; result = (*(v8 + 32))(*(v14 + 48) + v26, v11, v7))
    {
      v23 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v26 = *(v8 + 72) * (v23 | (v18 << 6));
      (*(v8 + 16))(v11, *(v12 + 48) + v26, v7);
    }

    v24 = v18;
    while (1)
    {
      v18 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v18 >= v22)
      {

        v6 = v28;
        goto LABEL_21;
      }

      v25 = *(v12 + 56 + 8 * v18);
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v21 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v14;
  }

  return result;
}

id sub_100E058B0(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = v16 | (v10 << 6);
        v20 = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        result = v20;
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_100E05A04(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_100E05B70()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC098, &qword_1013E9E80);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; result = sub_100E0ED8C(v23, v22))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 88 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[2];
      v19 = v17[3];
      v20 = v17[4];
      v24 = *(v17 + 10);
      v23[3] = v19;
      v23[4] = v20;
      v21 = v17[1];
      v23[0] = *v17;
      v23[1] = v21;
      v23[2] = v18;
      memmove((*(v4 + 48) + v16), v17, 0x58uLL);
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 56 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E05D0C()
{
  v1 = v0;
  v2 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v23 = *(v2 - 8);
  v3 = *(v23 + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v22 - v4;
  sub_1000BC4D4(&qword_1016BA360, &unk_1013E48B0);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = v6 + 56;
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v10 + 8 * v11)
    {
      result = memmove(result, (v6 + 56), 8 * v11);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    v15 = *(v6 + 56);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v16 = v14 & v15;
    v17 = (v13 + 63) >> 6;
    if ((v14 & v15) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = *(v23 + 72) * (v18 | (v12 << 6));
        sub_1000D2A70(*(v6 + 48) + v21, v5, &qword_1016980D0, &unk_10138F3B0);
        result = sub_1000D2AD8(v5, *(v8 + 48) + v21, &qword_1016980D0, &unk_10138F3B0);
      }

      while (v16);
    }

    v19 = v12;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v22;
        goto LABEL_18;
      }

      v20 = *(v10 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v8;
  }

  return result;
}

void *sub_100E05F34()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016BBE70, &qword_1013E9DC0);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E06088()
{
  v1 = v0;
  sub_1000BC4D4(&qword_1016BC018, &qword_1013E9E40);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 40 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v21 = v18[2];
        v20 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v21;
        v23[3] = v20;
        v23[4] = v22;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E06224()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016BC0A0, &qword_1013E9E88);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 160 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[5];
        v27[4] = v18[4];
        v27[5] = v21;
        v27[3] = v20;
        v22 = v18[6];
        v23 = v18[7];
        v24 = v18[9];
        v27[8] = v18[8];
        v27[9] = v24;
        v27[6] = v22;
        v27[7] = v23;
        v25 = v18[1];
        v27[0] = *v18;
        v27[1] = v25;
        v27[2] = v19;
        memmove((*(v4 + 48) + v17), v18, 0xA0uLL);
        result = sub_10013CD18(v27, &v26);
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E063FC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        *(*(v6 + 48) + 8 * (v16 | (v10 << 6))) = *(*(v4 + 48) + 8 * (v16 | (v10 << 6)));
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_100E0653C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + v16) = *(*(v4 + 48) + v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

void *sub_100E0666C()
{
  v1 = v0;
  sub_1000BC4D4(&unk_1016BBF70, &qword_1013B3530);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_100E067AC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_1000BC4D4(a1, a2);
  v4 = *v2;
  v5 = static _SetStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 56);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 56 + 8 * v8)
    {
      result = memmove(result, (v4 + 56), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 56);
    v13 = -1;
    if (v11 < 64)
    {
      v13 = ~(-1 << v11);
    }

    v14 = v13 & v12;
    v15 = (v11 + 63) >> 6;
    if ((v13 & v12) != 0)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v14 &= v14 - 1;
LABEL_17:
        v19 = 24 * (v16 | (v10 << 6));
        v20 = *(v4 + 48) + v19;
        v21 = *v20;
        v22 = *(v20 + 8);
        LODWORD(v20) = *(v20 + 16);
        v23 = *(v6 + 48) + v19;
        *v23 = v21;
        *(v23 + 8) = v22;
        *(v23 + 16) = v20;
        result = sub_100017D5C(v21, v22);
      }

      while (v14);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= v15)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v3 = v6;
  }

  return result;
}

uint64_t sub_100E06904(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016A59A0, &unk_1013B34C0);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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

uint64_t sub_100E06C20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC138, &unk_101406270);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      sub_1000BC4D4(&unk_1016BC120, &unk_1013EA6D0);
      sub_1000041A4(&qword_1016BC540, &unk_1016BC120, &unk_1013EA6D0);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
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

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_100E06E9C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC1C0, &qword_1013E9EE0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100E07228(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016B5498, &qword_1013D6818);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_100E07460(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BBEB8, &qword_1013E9DD0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_100017D5C(v19, v20);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_100E0769C(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for SharedBeaconRecord(0);
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4 - 8);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&unk_1016BBF90, &qword_1013B3678);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v26 = v2;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    for (i = result + 56; v14; ++*(v10 + 16))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v28;
      v20 = *(v29 + 72);
      sub_100E0ED24(*(v7 + 48) + v20 * (v16 | (v11 << 6)), v28, type metadata accessor for SharedBeaconRecord);
      v21 = *(v10 + 40);
      Hasher.init(_seed:)();
      sub_1011D8230();
      Hasher._finalize()();
      v22 = -1 << *(v10 + 32);
      v23 = i;
      v24 = _HashTable.nextHole(atOrAfter:)();
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_100E0ECBC(v19, *(v10 + 48) + v24 * v20, type metadata accessor for SharedBeaconRecord);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v2 = v26;
        goto LABEL_18;
      }

      v18 = *(v7 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100E07904(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BBE28, &qword_1013E9DA0);
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

uint64_t sub_100E07AF8(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconNamingRecord();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  v7 = (&v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BBF88, &qword_1013E9E20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v43 = v2;
    v44 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v48 = (v16 - 1) & v16;
LABEL_17:
      v23 = *(v8 + 48);
      v47 = *(v45 + 72);
      sub_100E0ED24(v23 + v47 * (v20 | (v12 << 6)), v7, type metadata accessor for BeaconNamingRecord);
      v24 = *(v11 + 40);
      Hasher.init(_seed:)();
      v25 = *v7;
      v26 = v7[1];
      Data.hash(into:)();
      v27 = v46;
      v28 = v46[5];
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v29 = v7 + v27[6];
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v7 + v27[7]));
      v30 = (v7 + v27[8]);
      v31 = *v30;
      v32 = v30[1];
      String.hash(into:)();
      v33 = (v7 + v27[9]);
      if (v33[1])
      {
        v34 = *v33;
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v35 = -1 << *(v11 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      v8 = v44;
      if (((-1 << v36) & ~*(v18 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v18 + 8 * v37);
          if (v41 != -1)
          {
            v19 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v19 = __clz(__rbit64((-1 << v36) & ~*(v18 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100E0ECBC(v7, *(v11 + 48) + v19 * v47, type metadata accessor for BeaconNamingRecord);
      ++*(v11 + 16);
      v16 = v48;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v43;
        goto LABEL_31;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v48 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v11;
  }

  return result;
}

uint64_t sub_100E07EBC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016A5A00, &qword_1013B3500);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = *(v3 + 48) + 24 * (v16 | (v7 << 6));
      v20 = *v19;
      v21 = *(v19 + 8);
      v22 = *(v19 + 16);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      Hasher._combine(_:)(v22);
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_100E08114(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&unk_1016BC1B0, &qword_1013E9ED8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      sub_1000BC4D4(&unk_1016C2240, &qword_1013F6350);
      sub_1000041A4(&unk_101698BE0, &unk_1016C2240, &qword_1013F6350);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
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

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_100E08390(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC020, &qword_1013B3580);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      sub_100017D5C(v19, v20);
      Data.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_100E085CC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016A5A58, &qword_1013B3578);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = *(v19 + 1);
      v22 = *(v19 + 2);
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);

      String.hash(into:)();
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v6 + 48) + 24 * v14;
      *v15 = v20;
      *(v15 + 8) = v21;
      *(v15 + 16) = v22;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_100E08824(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RawSearchResult();
  v29 = *(v4 - 8);
  v5 = *(v29 + 64);
  __chkstk_darwin(v4 - 8);
  v28 = &v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v8 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016A58C0, &qword_1013B32C8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v26 = v2;
    v11 = 0;
    v12 = 1 << *(v7 + 32);
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    else
    {
      v13 = -1;
    }

    v14 = v13 & *(v7 + 56);
    v15 = (v12 + 63) >> 6;
    for (i = result + 56; v14; ++*(v10 + 16))
    {
      v16 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_14:
      v19 = v28;
      v20 = *(v29 + 72);
      sub_100E0ED24(*(v7 + 48) + v20 * (v16 | (v11 << 6)), v28, type metadata accessor for RawSearchResult);
      v21 = *(v10 + 40);
      Hasher.init(_seed:)();
      sub_100D15128();
      Hasher._finalize()();
      v22 = -1 << *(v10 + 32);
      v23 = i;
      v24 = _HashTable.nextHole(atOrAfter:)();
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      result = sub_100E0ECBC(v19, *(v10 + 48) + v24 * v20, type metadata accessor for RawSearchResult);
    }

    v17 = v11;
    while (1)
    {
      v11 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v11 >= v15)
      {

        v2 = v26;
        goto LABEL_18;
      }

      v18 = *(v7 + 56 + 8 * v11);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v14 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v10;
  }

  return result;
}

uint64_t sub_100E08A8C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016A5A68, &qword_1013B3588);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100E08FA8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC038, &qword_1013E9E58);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v31 = v2;
    v32 = v3;
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
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 4 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v33 = v19[3];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v24 = -1 << *(v6 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v13 + 8 * (v25 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v24) >> 6;
        while (++v26 != v28 || (v27 & 1) == 0)
        {
          v29 = v26 == v28;
          if (v26 == v28)
          {
            v26 = 0;
          }

          v27 |= v29;
          v30 = *(v13 + 8 * v26);
          if (v30 != -1)
          {
            v14 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v25) & ~*(v13 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 4 * v14);
      *v15 = v20;
      v15[1] = v21;
      v15[2] = v22;
      v15[3] = v33;
      ++*(v6 + 16);
      v3 = v32;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v31;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_100E091F8(uint64_t a1)
{
  v91 = type metadata accessor for UUID();
  v3 = *(v91 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v91);
  v90 = &v69 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1000BC4D4(&unk_1016BC360, &qword_10139CBE0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6 - 8);
  v10 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v12 = &v69 - v11;
  v13 = type metadata accessor for OwnerSharingCircle();
  v78 = *(v13 - 1);
  v14 = *(v78 + 64);
  __chkstk_darwin(v13);
  v16 = (&v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v72 = v1;
  v17 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v18 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016A5A18, &qword_1013B3538);
  result = static _SetStorage.resize(original:capacity:move:)();
  v20 = result;
  if (*(v17 + 16))
  {
    v21 = 0;
    v22 = *(v17 + 56);
    v71 = v17 + 56;
    v23 = 1 << *(v17 + 32);
    if (v23 < 64)
    {
      v24 = ~(-1 << v23);
    }

    else
    {
      v24 = -1;
    }

    v25 = v24 & v22;
    v70 = (v23 + 63) >> 6;
    v83 = v3 + 16;
    v26 = (v3 + 32);
    v87 = (v3 + 8);
    v73 = result + 56;
    v85 = v3;
    v89 = v10;
    v84 = v12;
    v82 = (v3 + 32);
    v77 = v13;
    v76 = v17;
    v75 = v16;
    v74 = result;
    while (v25)
    {
      v30 = __clz(__rbit64(v25));
      v80 = (v25 - 1) & v25;
LABEL_16:
      v81 = v21;
      v33 = *(v17 + 48);
      v79 = *(v78 + 72);
      sub_100E0ED24(v33 + v79 * (v30 | (v21 << 6)), v16, type metadata accessor for OwnerSharingCircle);
      v34 = v20[5];
      Hasher.init(_seed:)();
      v35 = *v16;
      v36 = v16[1];
      Data.hash(into:)();
      v37 = v13[5];
      v38 = sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v39 = v16 + v13[6];
      v88 = v38;
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v16 + v13[7]));
      v40 = *(v16 + v13[8]);
      v43 = *(v40 + 64);
      v42 = v40 + 64;
      v41 = v43;
      v44 = 1 << *(*(v16 + v13[8]) + 32);
      if (v44 < 64)
      {
        v45 = ~(-1 << v44);
      }

      else
      {
        v45 = -1;
      }

      v46 = v45 & v41;
      v47 = (v44 + 63) >> 6;
      v86 = *(v16 + v13[8]);

      v48 = 0;
      v92 = 0;
      if (!v46)
      {
LABEL_21:
        if (v47 <= v48 + 1)
        {
          v50 = v48 + 1;
        }

        else
        {
          v50 = v47;
        }

        v51 = v50 - 1;
        v52 = v89;
        while (1)
        {
          v49 = v48 + 1;
          if (__OFADD__(v48, 1))
          {
            break;
          }

          if (v49 >= v47)
          {
            v68 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
            (*(*(v68 - 8) + 56))(v52, 1, 1, v68);
            v46 = 0;
            goto LABEL_29;
          }

          v46 = *(v42 + 8 * v49);
          ++v48;
          if (v46)
          {
            goto LABEL_28;
          }
        }

        __break(1u);
        goto LABEL_35;
      }

      while (1)
      {
        v49 = v48;
LABEL_28:
        v53 = __clz(__rbit64(v46));
        v46 &= v46 - 1;
        v54 = v53 | (v49 << 6);
        v55 = v86;
        v56 = v85;
        v57 = v90;
        v58 = v91;
        (*(v85 + 16))(v90, *(v86 + 48) + *(v85 + 72) * v54, v91);
        LOBYTE(v55) = *(*(v55 + 56) + v54);
        v59 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        v60 = *(v59 + 48);
        v61 = *(v56 + 32);
        v52 = v89;
        v62 = v57;
        v26 = v82;
        v61(v89, v62, v58);
        *(v52 + v60) = v55;
        (*(*(v59 - 8) + 56))(v52, 0, 1, v59);
        v51 = v49;
        v12 = v84;
LABEL_29:
        sub_1000D2AD8(v52, v12, &unk_1016BC360, &qword_10139CBE0);
        v63 = sub_1000BC4D4(&qword_1016BBEE0, &unk_10139CBF0);
        if ((*(*(v63 - 8) + 48))(v12, 1, v63) == 1)
        {
          break;
        }

        v64 = *(v63 + 48);
        v65 = v90;
        v66 = v91;
        (*v26)(v90, v12, v91);
        v67 = v12[v64];
        v95 = v100;
        v96 = v101;
        v97 = v102;
        v93 = v98;
        v94 = v99;
        dispatch thunk of Hashable.hash(into:)();
        (*v87)(v65, v66);
        Hasher._combine(_:)(v67);
        result = Hasher._finalize()();
        v48 = v51;
        v92 ^= result;
        if (!v46)
        {
          goto LABEL_21;
        }
      }

      Hasher._combine(_:)(v92);
      v13 = v77;
      v16 = v75;
      Hasher._combine(_:)(*(v75 + v77[9]));
      Hasher._finalize()();
      v20 = v74;
      v27 = -1 << *(v74 + 32);
      v28 = v73;
      v29 = _HashTable.nextHole(atOrAfter:)();
      *(v28 + ((v29 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v29;
      result = sub_100E0ECBC(v16, v20[6] + v29 * v79, type metadata accessor for OwnerSharingCircle);
      ++v20[2];
      v17 = v76;
      v21 = v81;
      v25 = v80;
    }

    v31 = v21;
    while (1)
    {
      v21 = v31 + 1;
      if (__OFADD__(v31, 1))
      {
        break;
      }

      if (v21 >= v70)
      {
        goto LABEL_33;
      }

      v32 = *(v71 + 8 * v21);
      ++v31;
      if (v32)
      {
        v30 = __clz(__rbit64(v32));
        v80 = (v32 - 1) & v32;
        goto LABEL_16;
      }
    }

LABEL_35:
    __break(1u);
  }

  else
  {
LABEL_33:

    *v72 = v20;
  }

  return result;
}

uint64_t sub_100E099D8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016B54C8, &qword_1013D6910);
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
    v26 = v2;
    v12 = result + 56;
    while (v10)
    {
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_19:
      v20 = *(*(v3 + 48) + (v17 | (v7 << 6)));
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v6 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v13) >> 6;
        while (++v15 != v23 || (v22 & 1) == 0)
        {
          v24 = v15 == v23;
          if (v15 == v23)
          {
            v15 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v15);
          if (v25 != -1)
          {
            v16 = __clz(__rbit64(~v25)) + (v15 << 6);
            goto LABEL_11;
          }
        }

        goto LABEL_31;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_11:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v6 + 48) + v16) = v20;
      ++*(v6 + 16);
    }

    v18 = v7;
    while (1)
    {
      v7 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v26;
        goto LABEL_29;
      }

      v19 = *(v3 + 56 + 8 * v7);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
  }

  else
  {

LABEL_29:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100E09EA4(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for MACAddress();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BC090, &qword_1013E9E78);
  v10 = static _SetStorage.resize(original:capacity:move:)();
  result = v8;
  if (*(v8 + 16))
  {
    v32 = v2;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v35 = v4 + 16;
    v36 = v4;
    v18 = v10 + 56;
    v33 = (v4 + 32);
    v34 = result;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v36 + 72);
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), v37);
      v24 = *(v10 + 40);
      sub_1000097BC(&unk_1016BC080, &type metadata accessor for MACAddress);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v25 = -1 << *(v10 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v18 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v18 + 8 * v27);
          if (v31 != -1)
          {
            v19 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v26) & ~*(v18 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      (*v33)(*(v10 + 48) + v19 * v23, v7, v37);
      ++*(v10 + 16);
      result = v34;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v32;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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

uint64_t sub_100E0A1C0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC1A8, &qword_1013E9ED0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v19 = *v18;
      v20 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
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

uint64_t sub_100E0A3F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC1A0, &qword_1013E9EC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_17:
      v18 = (*(v3 + 48) + 16 * (v15 | (v7 << 6)));
      v20 = *v18;
      v19 = v18[1];
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      if (v19 >> 60 == 15)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        sub_100017D5C(v20, v19);
        Data.hash(into:)();
      }

      result = Hasher._finalize()();
      v22 = -1 << *(v6 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_33;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v6 + 16);
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v29;
        goto LABEL_31;
      }

      v17 = *(v3 + 56 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_33:
    __break(1u);
  }

  else
  {

LABEL_31:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100E0A658(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for OwnedBeaconGroup(0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BBEB0, &qword_1013E9DC8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      sub_100E0ED24(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for OwnedBeaconGroup);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      v26 = *(v38 + 24);
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100E0ECBC(v7, *(v11 + 48) + v19 * v24, type metadata accessor for OwnedBeaconGroup);
      ++*(v11 + 16);
      v8 = v36;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_100E0A988(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC118, &qword_1013E9EB0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v27 = v2;
    v28 = v3;
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
      v29 = (v11 - 1) & v11;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);

      sub_1000BC4D4(&unk_1016BC100, &unk_1013F6310);
      sub_1000041A4(&unk_1016BC520, &unk_1016BC100, &unk_1013F6310);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v21) & ~*(v13 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v18;
      ++*(v6 + 16);
      v3 = v28;
      v11 = v29;
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

        v2 = v27;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v29 = (v17 - 1) & v17;
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

uint64_t sub_100E0AC04(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for WildModeTrackingLocation(0);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4 - 8);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v9 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v10 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BBFA8, &qword_1013E9E28);
  result = static _SetStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v13 = 0;
    v14 = 1 << *(v9 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v9 + 56);
    for (i = (v14 + 63) >> 6; v16; result = sub_1010F4144(v8, v12))
    {
      v18 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_13:
      sub_100E0ED24(*(v9 + 48) + *(v5 + 72) * (v18 | (v13 << 6)), v8, type metadata accessor for WildModeTrackingLocation);
    }

    v19 = v13;
    while (1)
    {
      v13 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v13 >= i)
      {
        goto LABEL_15;
      }

      v20 = *(v9 + 56 + 8 * v13);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_15:

    *v2 = v12;
  }

  return result;
}

unint64_t sub_100E0ADD0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000BC4D4(&qword_1016BC028, &qword_1013E9E48);
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
    for (i = result + 56; v10; ++*(v6 + 16))
    {
      v13 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v7 << 6)));
      v17 = *(v6 + 40);
      Hasher.init(_seed:)();

      sub_1007766A4(v19, v16);
      Hasher._finalize()();
      v18 = -1 << *(v6 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(i + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      *(*(v6 + 48) + 8 * result) = v16;
    }

    v14 = v7;
    while (1)
    {
      v7 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v7 >= v11)
      {
        goto LABEL_16;
      }

      v15 = *(v3 + 56 + 8 * v7);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v2 = v6;
  }

  return result;
}

uint64_t sub_100E0AF78(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for BeaconStatus(0);
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000BC4D4(&qword_1016BC030, &qword_1013E9E50);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
    v12 = 0;
    v13 = v8 + 56;
    v14 = 1 << *(v8 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v8 + 56);
    v17 = (v14 + 63) >> 6;
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      sub_100E0ED24(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for BeaconStatus);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1000097BC(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v26 = *(v38 + 24);
      type metadata accessor for Date();
      sub_1000097BC(&unk_101698070, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_100E0ECBC(v7, *(v11 + 48) + v19 * v24, type metadata accessor for BeaconStatus);
      ++*(v11 + 16);
      v8 = v36;
    }

    v21 = v12;
    while (1)
    {
      v12 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v2 = v35;
        goto LABEL_28;
      }

      v22 = *(v13 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v16 = (v22 - 1) & v22;
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
    *v2 = v11;
  }

  return result;
}