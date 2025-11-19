uint64_t RadioResources.SymbolicChannel.Resolver.channel(for:supportsSimulatenousDualBand:on:)(uint64_t result, char a2, char a3, unsigned __int8 a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a2)
  {
    if (a2 != 1)
    {
      v8 = 0x300000000;
      if (result == 2)
      {
        v8 = a7;
      }

      if (result)
      {
        a5 = a6;
      }

      if (result <= 1)
      {
        result = a5;
      }

      else
      {
        result = v8;
      }
    }

    return result & 0xFFFFFFFFFFFFLL;
  }

  v10 = a8;
  if (a3)
  {
    if (a4 > 1u)
    {
      goto LABEL_38;
    }

    v28 = result;
    v11 = *(a8 + 16);
    if (v11)
    {
      if (a4)
      {
        v12 = 16;
      }

      else
      {
        v12 = 4;
      }

      v13 = (a8 + 39);
      v10 = _swiftEmptyArrayStorage;
      v29 = v12;
      while (1)
      {
        v17 = *(v13 - 7);
        v18 = *(v13 - 3);
        v19 = *(v13 - 2);
        v20 = *(v13 - 1);
        v21 = *v13;
        if (*(v13 - 3))
        {
          if (v18 == 1 && v12 == 16)
          {
LABEL_27:
            result = swift_isUniquelyReferenced_nonNull_native();
            if ((result & 1) == 0)
            {
              result = sub_1000C06E4(0, _swiftEmptyArrayStorage[2] + 1, 1);
            }

            v15 = _swiftEmptyArrayStorage[2];
            v14 = _swiftEmptyArrayStorage[3];
            if (v15 >= v14 >> 1)
            {
              result = sub_1000C06E4((v14 > 1), v15 + 1, 1);
            }

            _swiftEmptyArrayStorage[2] = v15 + 1;
            v16 = &_swiftEmptyArrayStorage[v15];
            *(v16 + 8) = v17;
            *(v16 + 36) = v18;
            *(v16 + 37) = v19;
            *(v16 + 38) = v20;
            *(v16 + 39) = v21;
            v12 = v29;
          }
        }

        else if (v12 == 4)
        {
          goto LABEL_27;
        }

        v13 += 8;
        if (!--v11)
        {
          goto LABEL_31;
        }
      }
    }

    v10 = _swiftEmptyArrayStorage;
LABEL_31:
    v23 = v28;
  }

  else
  {
    v22 = result;

    v23 = v22;
  }

  if (v10[2] <= v23)
  {
    __break(1u);
  }

  else if ((v23 & 0x8000000000000000) == 0)
  {
    v24 = &v10[v23];
    v25 = *(v24 + 8);
    v26 = *(v24 + 36);
    v27 = *(v24 + 37);

    result = v25 | (v26 << 32) | (v27 << 40);
    return result & 0xFFFFFFFFFFFFLL;
  }

  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t sub_10002D078(Swift::UInt8 a1)
{
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v4 = Hasher._finalize()();

  return sub_10002D0E4(a1, v4);
}

unint64_t sub_10002D0E4(unsigned __int8 a1, uint64_t a2)
{
  v4 = -1 << *(v2 + 32);
  result = a2 & ~v4;
  if ((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v6 = ~v4;
    do
    {
      if (*(*(v2 + 48) + result) == a1)
      {
        break;
      }

      result = (result + 1) & v6;
    }

    while (((*(v2 + 64 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) != 0);
  }

  return result;
}

uint64_t sub_10002D154(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_10005DC58(&qword_100596340, &qword_1004B0820);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v32 = v3;
    v9 = 0;
    v10 = (v5 + 64);
    v11 = 1 << *(v5 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v5 + 64);
    v14 = (v11 + 63) >> 6;
    v15 = result + 64;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v20 = v17 | (v9 << 6);
      v21 = *(*(v5 + 48) + v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((v33 & 1) == 0)
      {
      }

      v23 = *(v8 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v21);
      result = Hasher._finalize()();
      v24 = -1 << *(v8 + 32);
      v25 = result & ~v24;
      v26 = v25 >> 6;
      if (((-1 << v25) & ~*(v15 + 8 * (v25 >> 6))) == 0)
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
          v30 = *(v15 + 8 * v26);
          if (v30 != -1)
          {
            v16 = __clz(__rbit64(~v30)) + (v26 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v25) & ~*(v15 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + v16) = v21;
      *(*(v8 + 56) + 8 * v16) = v22;
      ++*(v8 + 16);
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v19 = v10[v9];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_35;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v32;
    if (v31 >= 64)
    {
      bzero((v5 + 64), ((v31 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v31;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_10002D3E4(uint64_t a1, uint64_t a2)
{
  v3 = TimeBitmap.Slot.OO.unsafeMutableAddressor();
  v4 = *v3;
  v5 = *TimeBitmap.Slot.FF.unsafeMutableAddressor();
  v6 = TimeBitmap.Slot.OF.unsafeMutableAddressor();
  v7 = static TimeBitmap.repeatingPerDW(_:_:_:_:)(v4, v5, *v6, *v3);
  v9 = v8;
  v11 = v10;
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = *(AssociatedConformanceWitness + 32);
  v14 = swift_checkMetadataState();
  return v13(v7, v9, v11, 3, 2, a2, v14, AssociatedConformanceWitness);
}

uint64_t sub_10002D4F0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10002D3E4(a1, *(v1 + 32));
}

unint64_t sub_10002D508(unint64_t result, char a2, uint64_t a3, void *a4)
{
  a4[(result >> 6) + 8] |= 1 << result;
  *(a4[6] + result) = a2;
  *(a4[7] + 8 * result) = a3;
  v4 = a4[2];
  v5 = __OFADD__(v4, 1);
  v6 = v4 + 1;
  if (v5)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v6;
  }

  return result;
}

uint64_t static TimeBitmap.repeatingPerDW(_:_:_:_:)(char a1, char a2, char a3, char a4)
{
  if (qword_10058A7D8 != -1)
  {
    swift_once();
  }

  v8 = static NANBitmap.Time.Control.perDiscoveryWindow;
  sub_10002D838(0, 4, 0);
  v10 = _swiftEmptyArrayStorage[2];
  v9 = _swiftEmptyArrayStorage[3];
  v11 = v9 >> 1;
  v12 = v10 + 1;
  if (v9 >> 1 <= v10)
  {
    sub_10002D838((v9 > 1), v10 + 1, 1);
    v9 = _swiftEmptyArrayStorage[3];
    v11 = v9 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v12;
  *(&_swiftEmptyArrayStorage[4] + v10) = a1;
  v13 = v10 + 2;
  if (v11 < (v10 + 2))
  {
    sub_10002D838((v9 > 1), v10 + 2, 1);
    v9 = _swiftEmptyArrayStorage[3];
    v11 = v9 >> 1;
  }

  _swiftEmptyArrayStorage[2] = v13;
  *(&_swiftEmptyArrayStorage[4] + v12) = a2;
  v14 = v10 + 3;
  if (v11 < (v10 + 3))
  {
    sub_10002D838((v9 > 1), v10 + 3, 1);
  }

  _swiftEmptyArrayStorage[2] = v14;
  *(&_swiftEmptyArrayStorage[4] + v13) = a3;
  v15 = _swiftEmptyArrayStorage[3];
  if ((v10 + 4) > (v15 >> 1))
  {
    sub_10002D838((v15 > 1), v10 + 4, 1);
  }

  _swiftEmptyArrayStorage[2] = v10 + 4;
  *(&_swiftEmptyArrayStorage[4] + v14) = a4;
  v16 = sub_10002D874(_swiftEmptyArrayStorage);
  v18 = v17;

  return sub_10002D9E4(v8, v16, v18);
}

char *sub_10002D74C(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10005DC58(a5, a6);
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

char *sub_10002D838(char *a1, int64_t a2, char a3)
{
  result = sub_10002D74C(a1, a2, a3, *v3, &qword_10058B3C0, &qword_100481920);
  *v3 = result;
  return result;
}

uint64_t sub_10002D874(uint64_t a1)
{
  v9 = sub_10005DC58(&qword_10058D358, &unk_100486960);
  v10 = sub_10000CADC(&qword_10059B0E0, &qword_10058D358, &unk_100486960);
  v8[0] = a1;
  v2 = sub_100029B34(v8, v9);
  v3 = (*v2 + 32);
  v4 = *(*v2 + 16);

  sub_10002D950(v3, &v3[v4], &v7);
  v5 = v7;
  sub_100002A00(v8);
  return v5;
}

_BYTE *sub_10002D950@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = sub_10000AD84(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = sub_100178EFC(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = sub_10004F46C(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

uint64_t sub_10002D9E4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v163 = a2;
  v8 = *(type metadata accessor for Data.Iterator() - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin();
  v12 = &v149 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 60 == 15)
  {
    sub_10000B02C();
    swift_allocError();
    *v13 = xmmword_10047CE70;
    *(v13 + 16) = 2;
    return swift_willThrow();
  }

  v162 = a3;
  v164 = v10;
  v168 = xmmword_1004841D0;
  v169 = 0;
  v15 = sub_10002F09C(0, 3uLL, a1);
  if (v3)
  {

LABEL_5:
    sub_10000B02C();
    swift_allocError();
    *v16 = xmmword_10047CE70;
    *(v16 + 16) = 2;
    swift_willThrow();
    return sub_10002F75C(a1, v163, v162);
  }

  v17 = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(v15);
  v165 = a1;
  if ((v17 - 1) < 3)
  {
    v176 = xmmword_100480A90;
    v18 = v162 >> 62;
    if ((v162 >> 62) > 1)
    {
      p_i = v163;
      if (v18 == 2)
      {
        v22 = *(v163 + 16);
LABEL_14:
        sub_10000AB0C(v163, v162);
        p_i = v163;
      }
    }

    else
    {
      p_i = v163;
      if (v18)
      {
        goto LABEL_14;
      }
    }

    v4 = v162;
    sub_10000AB0C(p_i, v162);
    Data.Iterator.init(_:at:)();
    LODWORD(p_i) = v12;
    v23 = Data.Iterator.next()();
    if ((*&v23 & 0x100) == 0)
    {
      LOBYTE(v4) = v23.value;
      v166 = &v171;
      v5 = &type metadata for Data;
      v167 = xmmword_100480F40;
      do
      {
        v27 = sub_10002F09C(0, 3uLL, a1);
        switch(v27)
        {
          case 1:
            v28 = sub_1000D6804(v4);
            break;
          case 2:
            v28 = sub_1000D68D4(v4);
            break;
          case 3:
            v31 = 2 * (v4 & 1);
            if ((v4 & 2) != 0)
            {
              v31 |= 0x300uLL;
            }

            if ((v4 & 4) != 0)
            {
              v31 |= 0x20200uLL;
            }

            if ((v4 & 8) != 0)
            {
              v31 |= 0x2000300uLL;
            }

            if ((v4 & 0x10) != 0)
            {
              v31 |= 0x200000400uLL;
            }

            if ((v4 & 0x20) != 0)
            {
              v31 |= 0x20000000500uLL;
            }

            if ((v4 & 0x40) != 0)
            {
              v31 |= 0x2000000000600uLL;
            }

            if ((v4 & 0x80u) == 0)
            {
              v32 = v31;
            }

            else
            {
              v32 = v31 | 0x200000000000700;
            }

            v170 = v32;
            v174 = &type metadata for UnsafeRawBufferPointer;
            v175 = &protocol witness table for UnsafeRawBufferPointer;
            *&i = &v170;
            *(&i + 1) = v166;
            v33 = sub_100029B34(&i, &type metadata for UnsafeRawBufferPointer);
            v34 = *v33;
            if (*v33)
            {
              v35 = v33[1];
              v36 = v35 - v34;
              if (v35 == v34)
              {
                v34 = 0;
                goto LABEL_43;
              }

              if (v36 <= 14)
              {
                *(__dst + 6) = 0;
                *&__dst[0] = 0;
                BYTE14(__dst[0]) = v35 - v34;
                memcpy(__dst, v34, v35 - v34);
                v34 = *&__dst[0];
                v30 = v161 & 0xF00000000000000 | DWORD2(__dst[0]) | ((WORD6(__dst[0]) | (BYTE14(__dst[0]) << 16)) << 32);
                v161 = v30;
              }

              else
              {
                v40 = type metadata accessor for __DataStorage();
                v41 = *(v40 + 48);
                v42 = *(v40 + 52);
                swift_allocObject();
                v43 = __DataStorage.init(bytes:length:)();
                v44 = v43;
                if (v36 >= 0x7FFFFFFF)
                {
                  type metadata accessor for Data.RangeReference();
                  v34 = swift_allocObject();
                  *(v34 + 2) = 0;
                  *(v34 + 3) = v36;
                  v30 = v44 | 0x8000000000000000;
                }

                else
                {
                  v34 = (v36 << 32);
                  v30 = v43 | 0x4000000000000000;
                }
              }
            }

            else
            {
LABEL_43:
              v30 = 0xC000000000000000;
            }

            sub_100002A00(&i);
            v174 = &type metadata for Data;
            *&i = v34;
            goto LABEL_45;
          default:
            goto LABEL_311;
        }

        v30 = v29;
        v174 = &type metadata for Data;
        *&i = v28;
LABEL_45:
        *(&i + 1) = v30;
        sub_100002B30(&i, __dst);
        if (swift_dynamicCast())
        {
          v24 = v170;
          v25 = v171;
          Data.append(_:)();
          sub_1000124C8(v24, v25);
        }

        else
        {
          sub_10005DC58(&qword_100598960, &qword_1004869C0);
          v37 = swift_allocObject();
          *(v37 + 16) = v167;
          *&__dst[0] = 0;
          *(&__dst[0] + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(38);

          *&__dst[0] = 0xD000000000000024;
          *(&__dst[0] + 1) = 0x80000001004B9140;
          LOBYTE(v170) = v4;
          v38._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
          String.append(_:)(v38);

          v39 = __dst[0];
          *(v37 + 56) = &type metadata for String;
          *(v37 + 32) = v39;
          print(_:separator:terminator:)();
        }

        sub_100002A00(&i);
        LODWORD(p_i) = v12;
        LOWORD(v26) = Data.Iterator.next()();
        v4 = v26;
        LOWORD(a1) = v165;
      }

      while ((v26 & 0x100) == 0);
    }

    v45 = *(v8 + 8);
    LODWORD(v8) = v8 + 8;
    v45(v12, v164);
    v177 = v176;
    goto LABEL_53;
  }

  if (v17)
  {
    goto LABEL_5;
  }

  v20 = v163;
  p_i = v162;
  *&v177 = v163;
  *(&v177 + 1) = v162;
  sub_10000AB0C(v163, v162);
  sub_10000AB0C(v20, p_i);
LABEL_53:
  v46 = sub_10002F214(6, 9uLL, a1, v21);
  v150 = 0;
  if (v46 <= 0)
  {
    v47 = -(-v46 & 7);
  }

  else
  {
    v47 = v46 & 7;
  }

  v48 = v162;
  if (v47 < 0)
  {
    goto LABEL_284;
  }

  v151 = v47;
  if (!v47)
  {
    goto LABEL_129;
  }

  LODWORD(v8) = 0;
  v49 = 0;
  while (1)
  {
    v50 = v49 + 1;
    if (v49 < 8u)
    {
      LODWORD(v8) = v8 | (1 << v49);
    }

    if ((v49 + 1) == v151)
    {
      break;
    }

    ++v49;
    if (v50 >= v151)
    {
      __break(1u);
      break;
    }
  }

  v51 = 0;
  v52 = *(&v177 + 1);
  v53 = v177;
  v54 = *(&v177 + 1) >> 62;
  if ((*(&v177 + 1) >> 62) > 1)
  {
    if (v54 == 2)
    {
      v51 = *(v177 + 16);
    }
  }

  else if (v54)
  {
    v51 = v177;
  }

  v55 = 0;
  LODWORD(v164) = v151 & 7;
  v152 = v8;
  while (1)
  {
    v56 = v52 >> 62;
    if ((v52 >> 62) > 1)
    {
      if (v56 != 2)
      {
        *&v177 = v53;
        *(&v177 + 1) = v52;
        if (!v51)
        {
          goto LABEL_122;
        }

        goto LABEL_308;
      }

      if (v51 == *(v53 + 24))
      {
        goto LABEL_120;
      }
    }

    else if (v56)
    {
      if (v51 == v53 >> 32)
      {
        goto LABEL_120;
      }
    }

    else if (v51 == BYTE6(v52))
    {
      goto LABEL_120;
    }

    if (v56 == 2)
    {
      if (v51 < *(v53 + 16))
      {
        goto LABEL_249;
      }

      if (v51 >= *(v53 + 24))
      {
        goto LABEL_251;
      }

      v4 = v52 & 0x3FFFFFFFFFFFFFFFLL;
      v69 = __DataStorage._bytes.getter();
      if (!v69)
      {
        goto LABEL_300;
      }

      v70 = v69;
      LODWORD(p_i) = v52;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v51, v46))
      {
        goto LABEL_253;
      }

      if (v51 < *(v53 + 16))
      {
        goto LABEL_255;
      }

      if (v51 >= *(v53 + 24))
      {
        goto LABEL_257;
      }

      v5 = *(v70 + v51 - v46);
      v71 = __DataStorage._bytes.getter();
      if (!v71)
      {
        goto LABEL_302;
      }

      v72 = v71;
      LODWORD(p_i) = v52;
      v46 = __DataStorage._offset.getter();
      if (__OFSUB__(v51, v46))
      {
        goto LABEL_258;
      }

      LODWORD(v167) = v5;
      v5 = *(v72 + v51 - v46);

      sub_1000124C8(v53, v52);
      v46 = sub_1000124C8(0, 0xC000000000000000);
      if (v51 < *(v53 + 16))
      {
        goto LABEL_259;
      }

      if (v51 >= *(v53 + 24))
      {
        goto LABEL_260;
      }

      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_114:
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v80 = *(v53 + 16);
          v52 = *(v53 + 24);
          type metadata accessor for Data.RangeReference();
          v81 = swift_allocObject();
          *(v81 + 16) = v80;
          *(v81 + 24) = v52;

          v53 = v81;
        }

        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v82 = __DataStorage._bytes.getter();
        if (!v82)
        {
          goto LABEL_303;
        }

        v83 = v82;
        LODWORD(p_i) = v4;
        v46 = __DataStorage._offset.getter();
        v56 = v51 - v46;
        if (!__OFSUB__(v51, v46))
        {
          *(v83 + v56) = (v5 >> v164) | v55;
          v52 = v4 | 0x8000000000000000;
          v68 = v167;
          goto LABEL_70;
        }

        __break(1u);
LABEL_120:
        *&v177 = v53;
        *(&v177 + 1) = v52;
LABEL_122:
        v48 = v162;
        if (v55)
        {
          if (v151 >= 9)
          {
            LODWORD(v8) = 0;
          }

          else
          {
            LODWORD(v8) = v55 << (-v151 & 7);
          }

          if (v56 == 2)
          {
            v84 = *(v53 + 24);
          }

          v85 = sub_10005DC58(&qword_10058BA50, &qword_100480DA0);
          v174 = v85;
          v175 = sub_10000CADC(&qword_10058BA58, &qword_10058BA50, &qword_100480DA0);
          LOBYTE(i) = v8;
          LOBYTE(__dst[0]) = *sub_100029B34(&i, v85);
          Data._Representation.replaceSubrange(_:with:count:)();
          sub_100002A00(&i);
        }

LABEL_129:
        v86 = v165;
        v87 = v150;
        v88 = sub_10002F214(6, 9uLL, v165, &v174);
        if (v87)
        {
          goto LABEL_313;
        }

        if (v88 >= 0)
        {
          v89 = v88;
        }

        else
        {
          v89 = v88 + 7;
        }

        if (v88 < -7)
        {
          goto LABEL_147;
        }

        v90 = v177;
        v91 = *(&v177 + 1) >> 62;
        if ((*(&v177 + 1) >> 62) <= 1)
        {
          if (!v91)
          {
            v92 = BYTE14(v177);
            goto LABEL_143;
          }

LABEL_141:
          LODWORD(v92) = HIDWORD(v90) - v90;
          if (!__OFSUB__(HIDWORD(v90), v90))
          {
            v92 = v92;
            goto LABEL_143;
          }

LABEL_285:
          __break(1u);
LABEL_286:
          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          __break(1u);
LABEL_291:
          __break(1u);
LABEL_292:
          __break(1u);
LABEL_293:
          __break(1u);
LABEL_294:
          __break(1u);
LABEL_295:
          __break(1u);
LABEL_296:
          __break(1u);
        }

        if (v91 != 2)
        {
          goto LABEL_147;
        }

        v94 = *(v177 + 16);
        v93 = *(v177 + 24);
        v95 = __OFSUB__(v93, v94);
        v92 = v93 - v94;
        if (v95)
        {
          __break(1u);
          goto LABEL_141;
        }

LABEL_143:
        if (v92 < 1)
        {
LABEL_147:
          v97 = v163;
          sub_10002F75C(v86, v163, v48);
          sub_10000B02C();
          swift_allocError();
          *v98 = 0;
          *(v98 + 8) = 0;
          *(v98 + 16) = 2;
          swift_willThrow();
          sub_10002F75C(v86, v97, v48);
          return sub_1000124C8(v177, *(&v177 + 1));
        }

        if (v91)
        {
          if (v91 == 2)
          {
            v96 = *(v90 + 16);
          }

          else
          {
            v96 = v90;
          }
        }

        else
        {
          v96 = 0;
        }

        p_i = &v177;
        sub_10002F354(v96, v96, v89 >> 3, 0);
        v99 = sub_10002F09C(3uLL, 3uLL, v86);
        v100 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v99);
        if (v100 == 8)
        {
          v100 = 0;
        }

        v101 = sub_10002F71C(v100);
        v4 = v101;
        v102 = v101 >> 7;
        BYTE6(v104) = BYTE14(v177);
        v103 = v177;
        v105 = *(&v177 + 1) >> 62;
        if ((*(&v177 + 1) >> 62) <= 1)
        {
          if (!v105)
          {
            v106 = BYTE14(v177);
            goto LABEL_161;
          }

LABEL_159:
          LODWORD(v106) = HIDWORD(v103) - v103;
          if (__OFSUB__(HIDWORD(v103), v103))
          {
            goto LABEL_294;
          }

          v106 = v106;
          goto LABEL_161;
        }

        if (v105 != 2)
        {
          if (v101 >= 0x80)
          {
            v103 = 0;
            goto LABEL_172;
          }

          goto LABEL_176;
        }

        v108 = *(v177 + 16);
        v107 = *(v177 + 24);
        v95 = __OFSUB__(v107, v108);
        v106 = v107 - v108;
        if (v95)
        {
          __break(1u);
          goto LABEL_159;
        }

LABEL_161:
        if (v106 >= v102)
        {
          goto LABEL_176;
        }

        if (v105 == 2)
        {
          v110 = v103 + 16;
          v109 = *(v103 + 16);
          v104 = *(v110 + 8);
          v95 = __OFSUB__(v104, v109);
          v103 = v104 - v109;
          if (!v95)
          {
            goto LABEL_172;
          }

          __break(1u);
        }

        else if (v105 == 1)
        {
          v95 = __OFSUB__(HIDWORD(v103), v103);
          LODWORD(v103) = HIDWORD(v103) - v103;
          if (v95)
          {
            goto LABEL_295;
          }

          v103 = v103;
LABEL_172:
          if (__OFSUB__(v102, v103))
          {
            goto LABEL_286;
          }

          v111 = sub_100234D74(0, v102 - v103);
          if (v111[2])
          {
            LODWORD(v8) = v111;
            Data._Representation.append(contentsOf:)();
          }

LABEL_176:
          v5 = v48;
          i = xmmword_100480A90;
          v51 = 0;
          v112 = sub_10002F09C(3uLL, 3uLL, v165);
          v116 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v112);
          if (v116 <= 3)
          {
            if (v116 - 1 < 3)
            {
              v53 = *(&v177 + 1);
              v52 = v177;
              p_i = (*(&v177 + 1) >> 62);
              if ((*(&v177 + 1) >> 62) > 1)
              {
                goto LABEL_194;
              }

              if (!p_i)
              {
                v118 = BYTE14(v177);
                goto LABEL_206;
              }

              LODWORD(v118) = DWORD1(v177) - v177;
              if (!__OFSUB__(DWORD1(v177), v177))
              {
                v118 = v118;
                goto LABEL_206;
              }

              goto LABEL_304;
            }

            goto LABEL_177;
          }

          if (v116 - 5 >= 3 && v116 != 4)
          {
            goto LABEL_177;
          }

          v53 = *(&v177 + 1);
          v52 = v177;
          sub_10000AB0C(v177, *(&v177 + 1));
          sub_1000124C8(0, 0xC000000000000000);
          for (i = __PAIR128__(v53, v52); ; v52 = i)
          {
            v8 = v53 >> 62;
            if ((v53 >> 62) <= 1)
            {
              if (v8)
              {
                goto LABEL_198;
              }

              v117 = BYTE6(v53);
LABEL_200:
              if (v117 == 8)
              {
                v164 = v52;
                if (v8)
                {
                  if (v8 == 2)
                  {
                    v123 = *(v52 + 16);
                  }

                  else
                  {
                    v123 = v164;
                  }
                }

                else
                {
                  v123 = 0;
                }

                *&v167 = v52 >> 32;
                v127 = BYTE6(v53);
                v128 = 1024;
                v129 = 16;
                v161 = v52 >> 8;
                v160 = v52 >> 16;
                v159 = v52 >> 24;
                v158 = HIDWORD(v52);
                v166 = BYTE6(v53);
                while (1)
                {
                  v131 = v127;
                  if (v8)
                  {
                    v131 = v167;
                    if (v8 != 1)
                    {
                      v131 = *(v52 + 24);
                    }
                  }

                  if (v123 == v131)
                  {
LABEL_243:
                    v138 = v165;
                    v139 = v163;
                    v140 = v162;
                    sub_10002F75C(v165, v163, v162);
                    sub_10002F75C(v138, v139, v140);
                    sub_1000124C8(v52, v53);
                    sub_1000124C8(v177, *(&v177 + 1));
                    return v168;
                  }

                  if (v8 == 2)
                  {
                    break;
                  }

                  if (v8 == 1)
                  {
                    if (v123 < v164 || v123 >= v167)
                    {
                      goto LABEL_290;
                    }

                    v132 = __DataStorage._bytes.getter();
                    if (!v132)
                    {
                      goto LABEL_309;
                    }

                    v133 = v132;
                    v134 = __DataStorage._offset.getter();
                    v135 = v123 - v134;
                    if (__OFSUB__(v123, v134))
                    {
                      goto LABEL_292;
                    }

LABEL_221:
                    v130 = *(v133 + v135);
                    v127 = v166;
                    goto LABEL_222;
                  }

                  if (v123 >= v127)
                  {
                    goto LABEL_289;
                  }

                  LOBYTE(__dst[0]) = v52;
                  BYTE1(__dst[0]) = v161;
                  BYTE2(__dst[0]) = v160;
                  BYTE3(__dst[0]) = v159;
                  BYTE4(__dst[0]) = v158;
                  BYTE5(__dst[0]) = BYTE5(v52);
                  BYTE6(__dst[0]) = BYTE6(v52);
                  BYTE7(__dst[0]) = HIBYTE(v52);
                  WORD4(__dst[0]) = v53;
                  BYTE10(__dst[0]) = BYTE2(v53);
                  BYTE11(__dst[0]) = BYTE3(v53);
                  BYTE12(__dst[0]) = BYTE4(v53);
                  BYTE13(__dst[0]) = BYTE5(v53);
                  v130 = *(__dst + v123);
LABEL_222:
                  *(&v168 + v129) = v130;
                  ++v123;
                  ++v129;
                  v128 -= 128;
                  if (!v128)
                  {
                    goto LABEL_243;
                  }
                }

                if (v123 < *(v52 + 16))
                {
                  goto LABEL_288;
                }

                if (v123 >= *(v52 + 24))
                {
                  goto LABEL_291;
                }

                v136 = __DataStorage._bytes.getter();
                if (!v136)
                {
                  goto LABEL_310;
                }

                v133 = v136;
                v137 = __DataStorage._offset.getter();
                v135 = v123 - v137;
                if (__OFSUB__(v123, v137))
                {
                  goto LABEL_293;
                }

                goto LABEL_221;
              }

LABEL_177:
              v113 = v165;
              v114 = v163;
              sub_10002F75C(v165, v163, v5);
              sub_10000B02C();
              swift_allocError();
              *v115 = 0;
              *(v115 + 8) = 0;
              *(v115 + 16) = 2;
              swift_willThrow();
              sub_10002F75C(v113, v114, v5);
              sub_1000124C8(i, *(&i + 1));
              return sub_1000124C8(v177, *(&v177 + 1));
            }

            if (v8 != 2)
            {
              goto LABEL_177;
            }

            v120 = *(v52 + 16);
            v119 = *(v52 + 24);
            v95 = __OFSUB__(v119, v120);
            v117 = v119 - v120;
            if (!v95)
            {
              goto LABEL_200;
            }

            __break(1u);
LABEL_194:
            if (p_i == 2)
            {
              v122 = *(v52 + 16);
              v121 = *(v52 + 24);
              v95 = __OFSUB__(v121, v122);
              v118 = v121 - v122;
              if (v95)
              {
                __break(1u);
LABEL_198:
                LODWORD(v117) = HIDWORD(v52) - v52;
                if (!__OFSUB__(HIDWORD(v52), v52))
                {
                  v117 = v117;
                  goto LABEL_200;
                }

                __break(1u);
LABEL_298:
                __break(1u);
                goto LABEL_299;
              }

LABEL_206:
              if (v118 != v102)
              {
                goto LABEL_177;
              }
            }

            else if (v4 >= 0x80)
            {
              goto LABEL_177;
            }

            v124 = sub_10002F09C(3uLL, 3uLL, v165);
            if (v51)
            {

              v51 = 0;
            }

            else
            {
              v125 = _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(v124);
              if (v125 != 8)
              {
                goto LABEL_213;
              }
            }

            v125 = 0;
LABEL_213:
            v46 = sub_10002F71C(v125);
            if (!v46)
            {
              goto LABEL_296;
            }

            if (v46 > 0x400)
            {
              goto LABEL_177;
            }

            if (p_i <= 1)
            {
              if (!p_i)
              {
                v126 = BYTE6(v53);
                goto LABEL_264;
              }

              goto LABEL_261;
            }

            if (p_i != 2)
            {
              v126 = 0;
              goto LABEL_264;
            }

            v142 = *(v52 + 16);
            v141 = *(v52 + 24);
            v95 = __OFSUB__(v141, v142);
            v126 = v141 - v142;
            if (v95)
            {
              __break(1u);
LABEL_248:
              __break(1u);
LABEL_249:
              __break(1u);
LABEL_250:
              __break(1u);
LABEL_251:
              __break(1u);
LABEL_252:
              __break(1u);
LABEL_253:
              __break(1u);
LABEL_254:
              __break(1u);
LABEL_255:
              __break(1u);
LABEL_256:
              __break(1u);
LABEL_257:
              __break(1u);
LABEL_258:
              __break(1u);
LABEL_259:
              __break(1u);
LABEL_260:
              __break(1u);
LABEL_261:
              LODWORD(v126) = HIDWORD(v52) - v52;
              if (__OFSUB__(HIDWORD(v52), v52))
              {
                goto LABEL_307;
              }

              v126 = v126;
            }

LABEL_264:
            v102 = 0x400 / v46;
            v143 = v126 * (0x400 / v46);
            if ((v126 * v102) >> 64 != v143 >> 63)
            {
              goto LABEL_305;
            }

            if (p_i > 1)
            {
              if (p_i != 2)
              {
                goto LABEL_312;
              }

              v146 = *(v52 + 16);
              v145 = *(v52 + 24);
              v95 = __OFSUB__(v145, v146);
              v144 = v145 - v146;
              if (!v95)
              {
                goto LABEL_274;
              }

              __break(1u);
            }

            else if (!p_i)
            {
              v144 = BYTE6(v53);
              goto LABEL_274;
            }

            LODWORD(v144) = HIDWORD(v52) - v52;
            if (__OFSUB__(HIDWORD(v52), v52))
            {
              goto LABEL_306;
            }

            v144 = v144;
LABEL_274:
            if (!v144)
            {
              goto LABEL_312;
            }

            v147 = 0x7FFFFFFFFFFFFFFFLL / v144;
            if ((v147 & 0x8000000000000000) != 0 || v147 < v102)
            {
              goto LABEL_177;
            }

            Data._Representation.reserveCapacity(_:)(v143);
            v148 = 0;
            do
            {
              if (v148 >= v102)
              {
                goto LABEL_287;
              }

              ++v148;
              p_i = &i;
              Data.append(_:)();
            }

            while (v102 != v148);
            v53 = *(&i + 1);
          }
        }

        v103 = BYTE6(v104);
        goto LABEL_172;
      }

      LODWORD(v166) = v55;
      v73 = v51;
      v74 = *(v53 + 16);
      v75 = *(v53 + 24);
      if (!__DataStorage._bytes.getter())
      {
        v52 = v75 - v74;
        if (__OFSUB__(v75, v74))
        {
          goto LABEL_281;
        }

        goto LABEL_113;
      }

      if (__OFSUB__(v74, __DataStorage._offset.getter()))
      {
        goto LABEL_283;
      }

      v52 = v75 - v74;
      if (!__OFSUB__(v75, v74))
      {
LABEL_113:
        v76 = type metadata accessor for __DataStorage();
        v77 = *(v76 + 48);
        v78 = *(v76 + 52);
        swift_allocObject();
        v79 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v4 = v79;
        v51 = v73;
        v55 = v166;
        goto LABEL_114;
      }

LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
      goto LABEL_285;
    }

    LODWORD(v166) = v55;
    if (v56 != 1)
    {
      if (v51 >= BYTE6(v52))
      {
        goto LABEL_248;
      }

      *&i = v53;
      v159 = v53 >> 8;
      v158 = v53 >> 16;
      v157 = v53 >> 24;
      v156 = HIDWORD(v53);
      v155 = v53 >> 40;
      WORD4(i) = v52;
      p_i = (v52 >> 8);
      BYTE10(i) = BYTE2(v52);
      v5 = v52 >> 24;
      BYTE11(i) = BYTE3(v52);
      v4 = HIDWORD(v52);
      BYTE12(i) = BYTE4(v52);
      BYTE13(i) = BYTE5(v52);
      v154 = v52 >> 40;
      LODWORD(v167) = *(&i + v51);
      *&i = v53;
      WORD4(i) = v52;
      BYTE10(i) = BYTE2(v52);
      BYTE11(i) = BYTE3(v52);
      BYTE12(i) = BYTE4(v52);
      BYTE13(i) = BYTE5(v52);
      LODWORD(v160) = *(&i + v51);
      v153 = HIWORD(v52);
      v46 = sub_1000124C8(v53, v52);
      LOBYTE(i) = v53;
      BYTE1(i) = v159;
      BYTE2(i) = v158;
      BYTE3(i) = v157;
      BYTE4(i) = v156;
      BYTE5(i) = v155;
      BYTE6(i) = BYTE6(v53);
      LODWORD(v8) = v152;
      BYTE7(i) = HIBYTE(v53);
      WORD4(i) = v52;
      BYTE10(i) = BYTE2(v52);
      BYTE11(i) = BYTE3(v52);
      v68 = v167;
      BYTE12(i) = BYTE4(v52);
      BYTE13(i) = v154;
      BYTE14(i) = v153;
      *(&i + v51) = (v160 >> v164) | v166;
      v53 = i;
      v52 = v161 & 0xF00000000000000 | DWORD2(i) | ((WORD6(i) | (BYTE14(i) << 16)) << 32);
      v161 = v52;
      goto LABEL_70;
    }

    v57 = v51;
    v51 = v53 >> 32;
    if (v57 >= v53 >> 32)
    {
      goto LABEL_250;
    }

    v5 = v53;
    if (v57 < v53)
    {
      goto LABEL_250;
    }

    v4 = v52 & 0x3FFFFFFFFFFFFFFFLL;
    v58 = __DataStorage._bytes.getter();
    if (!v58)
    {
      goto LABEL_298;
    }

    v59 = v58;
    LODWORD(p_i) = v52;
    v46 = __DataStorage._offset.getter();
    if (__OFSUB__(v57, v46))
    {
      goto LABEL_252;
    }

    LODWORD(v167) = *(v59 + v57 - v46);
    v60 = __DataStorage._bytes.getter();
    if (!v60)
    {
      break;
    }

    v61 = v60;
    LODWORD(p_i) = v52;
    v46 = __DataStorage._offset.getter();
    if (__OFSUB__(v57, v46))
    {
      goto LABEL_254;
    }

    LODWORD(v160) = *(v61 + v57 - v46);

    sub_1000124C8(v53, v52);
    sub_1000124C8(0, 0xC000000000000000);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {

      if (__DataStorage._bytes.getter() && __OFSUB__(v53, __DataStorage._offset.getter()))
      {
        goto LABEL_282;
      }

      v62 = type metadata accessor for __DataStorage();
      v63 = *(v62 + 48);
      v64 = *(v62 + 52);
      swift_allocObject();
      v65 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v4 = v65;
    }

    __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
    v66 = __DataStorage._bytes.getter();
    if (!v66)
    {
      goto LABEL_301;
    }

    v67 = v66;
    LODWORD(p_i) = v4;
    v46 = __DataStorage._offset.getter();
    v68 = v167;
    if (__OFSUB__(v57, v46))
    {
      goto LABEL_256;
    }

    v51 = v57;
    *(v67 + v57 - v46) = (v160 >> v164) | v166;
    v52 = v4 | 0x4000000000000000;
LABEL_70:
    v55 = v68 & v8;
    ++v51;
  }

LABEL_299:
  __break(1u);
LABEL_300:
  __break(1u);
LABEL_301:
  __break(1u);
LABEL_302:
  __break(1u);
LABEL_303:
  __break(1u);
LABEL_304:
  __break(1u);
LABEL_305:
  __break(1u);
LABEL_306:
  __break(1u);
LABEL_307:
  __break(1u);
LABEL_308:
  __break(1u);
LABEL_309:
  __break(1u);
LABEL_310:
  __break(1u);

LABEL_311:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
LABEL_312:
  __break(1u);
LABEL_313:
  result = swift_unexpectedError();
  __break(1u);
  return result;
}

unint64_t sub_10002F09C(unint64_t result, unint64_t a2, __int16 a3)
{
  if (__OFADD__(result, a2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((result + a2) > 16)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (a2)
  {
    v6 = 0;
    v3 = 0;
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v6 < 0x40)
      {
        v3 |= 1 << v6;
      }

      if (v7 == a2)
      {
        goto LABEL_13;
      }

      ++v6;
      if (v7 >= a2)
      {
        __break(1u);
LABEL_13:
        if (result - 65 < 0xFFFFFFFFFFFFFF7FLL)
        {
          return 0;
        }

        if ((result & 0x8000000000000000) != 0)
        {
          goto LABEL_28;
        }

        if (result == 64)
        {
          return 0;
        }

LABEL_21:
        v8 = (a3 & (v3 << result)) >> result;
        while (v8 > 0xFF)
        {
LABEL_27:
          __break(1u);
LABEL_28:
          if (result == -64)
          {
            return 0;
          }

LABEL_31:
          v3 = (a3 & (v3 >> -result));
          v8 = v3 << -result;
          if ((v8 & 0x8000000000000000) != 0)
          {
            __break(1u);
            return result;
          }
        }

        return v8;
      }
    }

    __break(1u);
    goto LABEL_25;
  }

  if (result - 65 < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  if ((result & 0x8000000000000000) != 0)
  {
    v3 = 0;
    v8 = 0;
    if (result != -64)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v8 = 0;
    v3 = 0;
    if (result != 64)
    {
      goto LABEL_21;
    }
  }

  return v8;
}

uint64_t _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(uint64_t result)
{
  if ((result & 0xFC) != 0)
  {
    return 4;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10002F214@<X0>(uint64_t result@<X0>, unint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  if (__OFADD__(result, a2))
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if ((result + a2) > 16)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    return swift_willThrow();
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_25;
  }

  a4 = result;
  if (a2)
  {
    v5 = 0;
    result = 0;
    while (1)
    {
      v6 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        __break(1u);
        goto LABEL_24;
      }

      if (v5 < 0x40)
      {
        result |= 1 << v5;
      }

      if (v6 == a2)
      {
        break;
      }

      ++v5;
      if (v6 >= a2)
      {
        __break(1u);
        break;
      }
    }

    if ((a4 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((a4 & 0x8000000000000000) == 0)
    {
      if (a4 != 64)
      {
        return (a3 & (result << a4)) >> a4;
      }

      return 0;
    }

LABEL_26:
    if (a4 == -64)
    {
      return 0;
    }

    return (a3 & (result >> -a4)) << -a4;
  }

  if ((result - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  result = 0;
  if (a4 < 0)
  {
    if (a4 != -64)
    {
      return (a3 & (result >> -a4)) << -a4;
    }
  }

  else if (a4 != 64)
  {
    return (a3 & (result << a4)) >> a4;
  }

  return result;
}

uint64_t sub_10002F354(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v10[5] = a3;
  v11 = a4;
  v8 = a3;
  v9 = a4;
  sub_10005DC58(&qword_10058D3F0, &qword_1004869C8);
  sub_10005DC58(&qword_10058D3F8, &unk_1004869D0);
  if (swift_dynamicCast())
  {
    sub_100029954(v6, v10);
    sub_100029B34(v10, v10[3]);
    __chkstk_darwin();
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    return sub_100002A00(v10);
  }

  else
  {
    v7 = 0;
    memset(v6, 0, sizeof(v6));
    sub_100016290(v6, &unk_10059B0D0, &unk_1004B4D10);
    __chkstk_darwin();
    return sub_10002F60C(a3, sub_10002F5F4);
  }
}

uint64_t sub_10002F4F4(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  if (result && a2)
  {
    if (a2 < 0)
    {
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    if (a3)
    {
      v6 = a3 & ~(a3 >> 63);
      v7 = a2 - 1;
      v8 = a3 - 1;
      if (v6 < a3 - 1)
      {
        v8 = a3 & ~(a3 >> 63);
      }

      if (v7 >= v8)
      {
        v7 = v8;
      }

      if (v7 > 0xF)
      {
        v12 = v7 + 1;
        v13 = v12 & 0xF;
        if ((v12 & 0xF) == 0)
        {
          v13 = 16;
        }

        v9 = v12 - v13;
        v10 = v9 + 1;
        v11 = (result + v9);
        v14 = vdupq_n_s8(a4);
        v15 = v9;
        v16 = result;
        do
        {
          *v16++ = v14;
          v15 -= 16;
        }

        while (v15);
      }

      else
      {
        v9 = 0;
        v10 = 1;
        v11 = result;
      }

      v17 = a3 + 1;
      do
      {
        v5 = __OFSUB__(v9, v6);
        v4 = (v9 - v6) < 0;
        if (v9 == v6)
        {
          goto LABEL_23;
        }

        v9 = v10;
        *v11 = a4;
        if (a2 == v10)
        {
          goto LABEL_12;
        }

        ++v11;
        ++v10;
        v5 = __OFSUB__(v17, v9 + 1);
        v4 = a3 - v9 < 0;
      }

      while (v17 != v9 + 1);
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (a2)
  {
    goto LABEL_22;
  }

LABEL_12:
  v5 = __OFSUB__(a2, a3);
  v4 = a2 - a3 < 0;
  if (a2 == a3)
  {
    return Data._Representation.replaceSubrange(_:with:count:)();
  }

LABEL_25:
  if (v4 != v5)
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_10002F5F4(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 32);
  v5 = *(v2 + 40);
  v6 = *(v2 + 48);
  return sub_10002F4F4(a1, a2, **(v2 + 16), *(*(v2 + 16) + 8));
}

uint64_t sub_10002F60C(uint64_t a1, uint64_t (*a2)(_OWORD *, uint64_t))
{
  if (a1 <= 0)
  {
    v6 = 0;
    v7 = 0;
    return a2(v6, v7);
  }

  if (a1 <= 0x20)
  {
    memset(v8, 0, sizeof(v8));
    v6 = v8;
    v7 = a1;
    return a2(v6, v7);
  }

  v4 = swift_slowAlloc();
  a2(v4, a1);
}

uint64_t _s7CoreP2P11NANTimeUnitV14SchedulePeriodO8rawValueAESgs5UInt8V_tcfC_0(uint64_t result)
{
  if ((result & 0xF8) != 0)
  {
    return 8;
  }

  else
  {
    return result;
  }
}

uint64_t sub_10002F71C(uint64_t result)
{
  if (!result)
  {
    return 0;
  }

  v1 = result + 6;
  if ((v1 >> 8))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  if ((v1 & 0xC0) != 0)
  {
    result = 0;
  }

  else
  {
    result = 1 << (result + 6);
  }

  if (result < 0)
  {
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_10002F75C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 60 != 15)
  {
    return sub_1000124C8(a2, a3);
  }

  return result;
}

uint64_t sub_10002F778(uint64_t a1, uint64_t a2, unint64_t a3, unint64_t a4, char a5, unsigned __int8 a6)
{
  v7 = v6;
  v8 = a6;
  *&v48 = a1;
  *(&v48 + 1) = a2;
  v9 = *(*v6 + 16);
  if (v9)
  {
    v36 = 0;
    v37 = 0;
    v38 = 0;
    v39 = 0;
    v44 = a6;
    v35 = a6 << 8;
    v7 = (*v6 + 64);
    v10 = _swiftEmptyArrayStorage;
    v40 = 255;
    while (1)
    {
      v12 = *(v7 - 4);
      v11 = *(v7 - 3);
      v14 = *(v7 - 2);
      v13 = *(v7 - 1);
      v15 = *v7;
      v8 = BYTE1(v11);
      if (BYTE1(v11) > v44)
      {
        break;
      }

      if (BYTE1(v11) == v44 && static RadioResources.SymbolicChannel.__derived_enum_equals(_:_:)(*(v7 - 4), *(v7 - 3), a4, a5))
      {
        v39 = v15;
        v40 = v35 | v11;
        v36 = v12;
        v37 = v13;
        v38 = v14;
      }

      else
      {
        if (BYTE1(v11) >= v44)
        {
          v43 = v10;
          *(&v46 + 1) = v13;
          TimeBitmap.SlotsView.formIntersection(_:)(v48, *(&v48 + 1), a3);
          v10 = v13;
          v18 = TimeBitmap.zero.unsafeMutableAddressor();
          if (!static TimeBitmap.__derived_struct_equals(_:_:)(v14, v13, v15, *v18, v18[1], v18[2]))
          {
            __break(1u);
            goto LABEL_36;
          }

          v16 = v11 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v11) << 8);
          v10 = v43;
          goto LABEL_14;
        }

        *(&v46 + 1) = v11 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v11) << 8);
        TimeBitmap.SlotsView.subtract(_:)(v48, *(&v48 + 1), a3);
        v17 = TimeBitmap.zero.unsafeMutableAddressor();
        if (!static TimeBitmap.__derived_struct_equals(_:_:)(v14, v13, v15, *v17, v17[1], v17[2]))
        {
          v16 = v11 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v11) << 8);
          goto LABEL_14;
        }
      }

LABEL_4:
      v7 += 5;
      if (!--v9)
      {

        v7 = v6;
        *v6 = v10;
        v22 = v48;
        v23 = a3;
        if (v40 == 0xFF)
        {
          v24 = *(&v48 + 1);
          v8 = a6;
          goto LABEL_22;
        }

        *&v46 = v36;
        WORD4(v46) = v40;
        *&v47 = v38;
        *(&v47 + 1) = v37;
        TimeBitmap.SlotsView.formUnion(_:)(v48, *(&v48 + 1), a3);
        v30 = TimeBitmap.zero.unsafeMutableAddressor();
        result = static TimeBitmap.__derived_struct_equals(_:_:)(v38, v37, v39, *v30, v30[1], v30[2]);
        if ((result & 1) == 0)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1000302B4(0, *(v10 + 2) + 1, 1, v10);
            v10 = result;
          }

          v32 = *(v10 + 2);
          v31 = *(v10 + 3);
          if (v32 >= v31 >> 1)
          {
            result = sub_1000302B4((v31 > 1), v32 + 1, 1, v10);
            v10 = result;
          }

          *(v10 + 2) = v32 + 1;
          v33 = &v10[40 * v32];
          *(v33 + 8) = v39;
          *(v33 + 2) = v46;
          *(v33 + 3) = v47;
          goto LABEL_33;
        }

        return result;
      }
    }

    TimeBitmap.SlotsView.subtract(_:)(*(v7 - 2), *(v7 - 1), *v7);
    v16 = v11 & 0xFFFFFFFFFFFF00FFLL | (BYTE1(v11) << 8);
LABEL_14:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_1000302B4(0, *(v10 + 2) + 1, 1, v10);
    }

    v20 = *(v10 + 2);
    v19 = *(v10 + 3);
    if (v20 >= v19 >> 1)
    {
      v10 = sub_1000302B4((v19 > 1), v20 + 1, 1, v10);
    }

    *(v10 + 2) = v20 + 1;
    v21 = &v10[40 * v20];
    *(v21 + 4) = v12;
    *(v21 + 5) = v16;
    *(v21 + 6) = v14;
    *(v21 + 7) = v13;
    *(v21 + 8) = v15;
    goto LABEL_4;
  }

  v22 = a1;
  v24 = a2;
  v23 = a3;
  v10 = _swiftEmptyArrayStorage;

  *v7 = _swiftEmptyArrayStorage;
LABEL_22:
  v25 = TimeBitmap.zero.unsafeMutableAddressor();
  result = static TimeBitmap.__derived_struct_equals(_:_:)(v22, v24, v23, *v25, v25[1], v25[2]);
  if ((result & 1) == 0)
  {
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_36:
      result = sub_1000302B4(0, *(v10 + 2) + 1, 1, v10);
      v10 = result;
    }

    v28 = *(v10 + 2);
    v27 = *(v10 + 3);
    if (v28 >= v27 >> 1)
    {
      result = sub_1000302B4((v27 > 1), v28 + 1, 1, v10);
      v10 = result;
    }

    *&v45[6] = v48;
    *&v45[22] = a3;
    *(v10 + 2) = v28 + 1;
    v29 = &v10[40 * v28];
    *(v29 + 4) = a4;
    v29[40] = a5;
    v29[41] = v8;
    *(v29 + 56) = *&v45[14];
    *(v29 + 42) = *v45;
LABEL_33:
    *v7 = v10;
  }

  return result;
}

__int128 *TimeBitmap.zero.unsafeMutableAddressor()
{
  if (qword_10058A7E0 != -1)
  {
    swift_once();
  }

  return &static TimeBitmap.zero;
}

uint64_t _s7CoreP2P7ChannelV7isValid7channel2on4withSbs6UInt32V_AC4BandOAA9BandwidthOtFZ_0(int a1, char a2, int a3)
{
  if (a2)
  {
    if (a2 == 1)
    {
      if (qword_10058AA80 != -1)
      {
        swift_once();
      }

      v5 = &off_100555E88;
      v6 = &off_100591868;
    }

    else
    {
      if (qword_10058AA88 != -1)
      {
        swift_once();
      }

      v5 = &off_100555EB0;
      v6 = &off_100591870;
    }
  }

  else
  {
    if (qword_10058AA78 != -1)
    {
      swift_once();
    }

    v5 = &off_100555E60;
    v6 = &off_100591860;
  }

  v7 = *v6;
  v8 = sub_10002FDA4(v5);

  v9 = sub_10002FFDC(a1, v7);

  if (v9)
  {
    v10 = sub_100030088(a3, v8);
  }

  else
  {
    v10 = 0;
  }

  return v10 & 1;
}

Swift::Int sub_10002FDA4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10005DC58(&qword_10058B3B8, &unk_10047F4D0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v7 = *(v6 + v4);
      v8 = *(v3 + 40);
      Hasher.init(_seed:)();
      if (v7 <= 3)
      {
        if (v7 == 2)
        {
          v9 = 0;
          goto LABEL_15;
        }

        if (v7 == 3)
        {
          v9 = 1;
          goto LABEL_15;
        }
      }

      else
      {
        switch(v7)
        {
          case 4:
            v9 = 3;
            goto LABEL_15;
          case 5:
            v9 = 4;
            goto LABEL_15;
          case 6:
            v9 = 5;
LABEL_15:
            Hasher._combine(_:)(v9);
            goto LABEL_16;
        }
      }

      Hasher._combine(_:)(2uLL);
      Hasher._combine(_:)(v7 & 1);
LABEL_16:
      result = Hasher._finalize()();
      v11 = -1 << *(v3 + 32);
      v12 = result & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      v16 = *(v3 + 48);
      if (((1 << v12) & v14) != 0)
      {
        v17 = ~v11;
        do
        {
          v18 = *(v16 + v12);
          if (v18 <= 3)
          {
            if (v18 == 2)
            {
              if (v7 == 2)
              {
                goto LABEL_3;
              }

              goto LABEL_19;
            }

            if (v18 == 3)
            {
              if (v7 == 3)
              {
                goto LABEL_3;
              }

              goto LABEL_19;
            }
          }

          else
          {
            switch(v18)
            {
              case 4u:
                if (v7 == 4)
                {
                  goto LABEL_3;
                }

                goto LABEL_19;
              case 5u:
                if (v7 == 5)
                {
                  goto LABEL_3;
                }

                goto LABEL_19;
              case 6u:
                if (v7 == 6)
                {
                  goto LABEL_3;
                }

                goto LABEL_19;
            }
          }

          if ((v7 - 2) >= 5u && ((v18 ^ v7) & 1) == 0)
          {
            goto LABEL_3;
          }

LABEL_19:
          v12 = (v12 + 1) & v17;
          v13 = v12 >> 6;
          v14 = *(v5 + 8 * (v12 >> 6));
          v15 = 1 << v12;
        }

        while ((v14 & (1 << v12)) != 0);
      }

      *(v5 + 8 * v13) = v14 | v15;
      *(v16 + v12) = v7;
      v19 = *(v3 + 16);
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v21;
LABEL_3:
      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

BOOL sub_10002FFDC(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

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
    v9 = *(*(a2 + 48) + 4 * v7);
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

uint64_t sub_100030088(int a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v4 = *(a2 + 40);
  Hasher.init(_seed:)();
  if (a1 <= 3u)
  {
    if (a1 == 2)
    {
      v5 = 0;
      goto LABEL_14;
    }

    if (a1 == 3)
    {
      v5 = 1;
      goto LABEL_14;
    }
  }

  else
  {
    switch(a1)
    {
      case 4u:
        v5 = 3;
        goto LABEL_14;
      case 5u:
        v5 = 4;
        goto LABEL_14;
      case 6u:
        v5 = 5;
LABEL_14:
        Hasher._combine(_:)(v5);
        goto LABEL_15;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(a1 & 1);
LABEL_15:
  v7 = Hasher._finalize()();
  v8 = -1 << *(a2 + 32);
  v9 = v7 & ~v8;
  if ((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    do
    {
      v11 = *(*(a2 + 48) + v9);
      if (v11 <= 3)
      {
        if (v11 == 2)
        {
          if (a1 == 2)
          {
            return 1;
          }

          goto LABEL_18;
        }

        if (v11 == 3)
        {
          if (a1 == 3)
          {
            return 1;
          }

          goto LABEL_18;
        }
      }

      else
      {
        switch(v11)
        {
          case 4u:
            if (a1 == 4)
            {
              return 1;
            }

            goto LABEL_18;
          case 5u:
            if (a1 == 5)
            {
              return 1;
            }

            goto LABEL_18;
          case 6u:
            if (a1 == 6)
            {
              return 1;
            }

            goto LABEL_18;
        }
      }

      if ((a1 - 2) >= 5u && ((v11 ^ a1) & 1) == 0)
      {
        return 1;
      }

LABEL_18:
      v9 = (v9 + 1) & v10;
    }

    while (((*(a2 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return 0;
}

char *sub_1000302B4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_1005987D8, &qword_1004B2790);
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
    memcpy(v12, v13, 40 * v8);
  }

  return v10;
}

uint64_t sub_1000303DC()
{
  if (*(v0 + 8) & 1) != 0 && (v1 = *(v0 + 24) | (*(v0 + 28) << 32), (v1 & 0xFF00000000) != 0x300000000) && (static Channel.isValid(channel:on:with:)(v1, HIDWORD(v1), v1 >> 40))
  {
    v2 = &off_100572928;
  }

  else
  {
    v2 = &off_100572950;
  }

  v3 = v2[2];
  v4 = (v2 + 4);
  do
  {
    if (!v3)
    {

      sub_10005DC58(&qword_1005962F0, &qword_1004B0758);
      goto LABEL_12;
    }

    v5 = *v4++;
    --v3;
  }

  while (v5 != 1);

  v6 = *(v0 + 9);
  sub_10005DC58(&qword_1005962F0, &qword_1004B0758);
  if (v6)
  {
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_100483520;
    *(v7 + 32) = *NANMapID.primary.unsafeMutableAddressor();
    v8 = (v7 + 33);
    v9 = NANMapID.secondary.unsafeMutableAddressor();
    goto LABEL_13;
  }

LABEL_12:
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100480F40;
  v8 = (v7 + 32);
  v9 = NANMapID.primary.unsafeMutableAddressor();
LABEL_13:
  *v8 = *v9;
  return v7;
}

uint64_t sub_100030524(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  if ((sub_10003051C(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  return sub_10003051C(v2, v3);
}

uint64_t sub_100030580(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = a1;
  if (a1 <= 1u)
  {
    if (a1)
    {
      v4 = 6647407;
    }

    else
    {
      v4 = 1869768058;
    }

    if (v2)
    {
      v3 = 0xE300000000000000;
    }

    else
    {
      v3 = 0xE400000000000000;
    }
  }

  else if (a1 == 2)
  {
    v3 = 0xE400000000000000;
    v4 = 1920298854;
  }

  else if (a1 == 3)
  {
    v3 = 0xE500000000000000;
    v4 = 0x7468676965;
  }

  else
  {
    v3 = 0xE700000000000000;
    v4 = 0x6E656574786973;
  }

  if (a2 <= 1u)
  {
    if (a2)
    {
      v9 = 6647407;
    }

    else
    {
      v9 = 1869768058;
    }

    if (a2)
    {
      v8 = 0xE300000000000000;
    }

    else
    {
      v8 = 0xE400000000000000;
    }

    if (v4 != v9)
    {
      goto LABEL_33;
    }
  }

  else
  {
    v5 = 0xE500000000000000;
    v6 = 0x7468676965;
    if (a2 != 3)
    {
      v6 = 0x6E656574786973;
      v5 = 0xE700000000000000;
    }

    if (a2 == 2)
    {
      v7 = 1920298854;
    }

    else
    {
      v7 = v6;
    }

    if (a2 == 2)
    {
      v8 = 0xE400000000000000;
    }

    else
    {
      v8 = v5;
    }

    if (v4 != v7)
    {
      goto LABEL_33;
    }
  }

  if (v3 != v8)
  {
LABEL_33:
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_34;
  }

  v10 = 1;
LABEL_34:

  return v10 & 1;
}

uint64_t sub_1000306E8(uint64_t a1)
{
  v5 = a1;
  v2 = *(*v1 + 688);
  swift_beginAccess();
  v3 = sub_10005DC58(&qword_10059A658, &qword_1004B3858);
  MutableDriverProperty.wrappedValue.setter(&v5, v3);
  return swift_endAccess();
}

void *sub_100030764()
{
  v1 = *v0;
  sub_100030814(0x81uLL, 0, 0, __src);
  memcpy(__dst, __src, sizeof(__dst));
  return sub_100030938(__dst);
}

uint64_t sub_100030814@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v10 = swift_slowAlloc();
  *v10 = 0u;
  v10[1] = 0u;
  v10[2] = 0u;
  v10[3] = 0u;
  v10[4] = 0u;
  v10[5] = 0u;
  v10[6] = 0u;
  v10[7] = 0u;
  v10[8] = 0u;
  v10[9] = 0u;
  v10[10] = 0u;
  v10[11] = 0u;
  v10[12] = 0u;
  v10[13] = 0u;
  v10[14] = 0u;
  v10[15] = 0u;
  v10[16] = 0u;
  v10[17] = 0u;
  v10[18] = 0u;
  v10[19] = 0u;
  v10[20] = 0u;
  v10[21] = 0u;
  v10[22] = 0u;
  v10[23] = 0u;
  v10[24] = 0u;
  if (a3)
  {
    v11 = a3;
  }

  else
  {
    a2 = v4[2];
    v11 = v4[3];
  }

  v12 = v4[5];

  AppleDevice.getRequest(requestType:data:on:)(a1, v10, (v10 + 25), 0, a2, v11);

  if (!v5)
  {
    memcpy(a4, v10, 0x190uLL);
  }
}

void *sub_100030938(unsigned __int8 *a1)
{
  if (a1[6])
  {
    memcpy(__dst, a1 + 12, sizeof(__dst));
    v2 = a1[5];
    v3 = _swiftEmptyArrayStorage;
    if (v2)
    {
      v24 = _swiftEmptyArrayStorage;
      sub_100032034(0, v2, 0);
      v3 = _swiftEmptyArrayStorage;
      v4 = &__dst[8];
      do
      {
        v5 = *v4;
        v20 = *(v4 - 1);
        v21 = v5;
        sub_100032118(&v20, &v22);
        v6 = v23;
        v7 = v22;
        v24 = v3;
        v9 = v3[2];
        v8 = v3[3];
        if (v9 >= v8 >> 1)
        {
          sub_100032034((v8 > 1), v9 + 1, 1);
          v3 = v24;
        }

        v3[2] = v9 + 1;
        v10 = &v3[v9];
        *(v10 + 8) = v7;
        *(v10 + 18) = (v7 | (v6 << 32)) >> 32;
        v4 += 3;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    memcpy(__dst, a1 + 12, sizeof(__dst));
    v11 = a1[5];
    v3 = _swiftEmptyArrayStorage;
    if (v11)
    {
      v24 = _swiftEmptyArrayStorage;
      sub_100032034(0, v11, 0);
      v3 = _swiftEmptyArrayStorage;
      v12 = &__dst[8];
      do
      {
        v13 = *v12;
        v20 = *(v12 - 1);
        v21 = v13;
        sub_100114EF8(&v20, &v22);
        v14 = v23;
        v15 = v22;
        v24 = v3;
        v17 = v3[2];
        v16 = v3[3];
        if (v17 >= v16 >> 1)
        {
          sub_100032034((v16 > 1), v17 + 1, 1);
          v3 = v24;
        }

        v3[2] = v17 + 1;
        v18 = &v3[v17];
        *(v18 + 8) = v15;
        *(v18 + 18) = (v15 | (v14 << 32)) >> 32;
        v12 += 3;
        --v11;
      }

      while (v11);
    }
  }

  return v3;
}

uint64_t sub_100030B20(uint64_t a1)
{
  v2 = *(*v1 + 496);
  v3 = *(v1 + v2);
  *(v1 + v2) = a1;
  sub_100032158(v3);
}

uint64_t _s7CoreP2P15AWDLActionFrameV28AWDLChannelSequenceParameterV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 32);
    v4 = (a2 + 32);
    do
    {
      v5 = *v3 | (*(v3 + 2) << 32);
      v6 = *v4 | (*(v4 + 2) << 32);
      v7 = v6 & 0xFF00000000;
      if ((v5 & 0xFF00000000) == 0x300000000)
      {
        if (v7 != 0x300000000)
        {
          return 0;
        }

        goto LABEL_6;
      }

      if (v7 == 0x300000000)
      {
        return 0;
      }

      *(v4 + 2);
      *(v3 + 2);
      if (*v3 != *v4 || (0x801004u >> ((v5 >> 29) & 0xF8)) != (0x801004u >> ((v6 >> 29) & 0xF8)))
      {
        return 0;
      }

      v8 = v6 >> 40;
      if (BYTE5(v5) <= 3u)
      {
        if (BYTE5(v5) == 2)
        {
          if (v8 != 2)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (BYTE5(v5) == 3)
        {
          if (v8 != 3)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else
      {
        switch(BYTE5(v5))
        {
          case 4u:
            if (v8 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          case 5u:
            if (v8 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6u:
            if (v8 != 6)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if (v8 - 2) < 5 || ((v8 ^ BYTE5(v5)))
      {
        return 0;
      }

LABEL_6:
      v3 += 2;
      v4 += 2;
      --v2;
    }

    while (v2);
  }

  return 1;
}

id Optional<A>.apiChannel.getter(uint64_t a1)
{
  if ((a1 & 0xFF00000000) == 0x300000000)
  {
    LOBYTE(v4) = 0;
    return [objc_allocWithZone(WiFiChannel) initWithChannelNumber:0 bandwidth:1 is2_4GHz:0 is5GHz:0 is6GHz:0 isDFS:0 extensionChannelAbove:v4];
  }

  else
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;

    return Channel.apiChannel.getter(v3);
  }
}

uint64_t sub_100030D3C()
{
  v1 = *v0;
  v2 = *(*v0 + 480);
  swift_beginAccess();
  v3 = *(v0 + v2);
  v4 = *(v1 + 432);
  v5 = *(v1 + 440);
  type metadata accessor for AWDLInterface.StateMonitoringClient();
  return v3;
}

uint64_t sub_100030DCC(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

__n128 initializeBufferWithCopyOfBuffer for NANAttribute.ClusterDiscovery(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

int64_t sub_100030E20@<X0>(int64_t result@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v3 = a2;
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_8;
    }

    v6 = *(result + 16);
    v5 = *(result + 24);
    v7 = __OFSUB__(v5, v6);
    v8 = v5 - v6;
    if (!v7)
    {
      if (v8 >= 72)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 72)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v9 = 0;
      *(v9 + 8) = 0;
      *(v9 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_25;
  }

  if (BYTE6(a2) < 0x48uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v4 == 2)
  {
LABEL_18:
    v11 = a3;
    v17 = *(result + 16);
    v18 = __DataStorage._bytes.getter();
    if (!v18)
    {
      __DataStorage._length.getter();
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v19 = v18;
    v20 = __DataStorage._offset.getter();
    if (!__OFSUB__(v17, v20))
    {
      v15 = v17 - v20 + v19;
      result = __DataStorage._length.getter();
      if (v15)
      {
        goto LABEL_21;
      }

      goto LABEL_30;
    }

    goto LABEL_27;
  }

  if (v4 != 1)
  {
    v24 = vdupq_n_s64(result);
    v25 = vshlq_u64(v24, xmmword_1004841F0);
    v26 = vmovn_s64(vshlq_u64(v24, xmmword_1004841E0));
    v26.i8[1] = v26.i8[4];
    v27 = vzip1_s16(result, v26);
    *v24.i8 = vmovn_s64(vshlq_u64(v24, xmmword_100484200));
    v28 = vmovn_s64(v25);
    v28.i8[1] = v28.i8[4];
    v28.i8[2] = v24.i8[0];
    v28.i8[3] = v24.i8[4];
    v21 = vzip1_s32(v27, v28);
    v29 = vdupq_n_s64(a2);
    v22 = vmovn_s32(vuzp1q_s32(vshlq_u64(v29, xmmword_1004817A0), vshlq_u64(v29, xmmword_100481790)));
    v23 = a2 >> 40;
    goto LABEL_23;
  }

  v10 = result;
  if (result > result >> 32)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
  }

  v11 = a3;
  v12 = __DataStorage._bytes.getter();
  if (v12)
  {
    v13 = v12;
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v10, v14))
    {
      goto LABEL_28;
    }

    v15 = v10 - v14 + v13;
    result = __DataStorage._length.getter();
    if (v15)
    {
LABEL_21:
      v21 = *v15;
      v3 = *(v15 + 8);
      v16.i32[0] = *(v15 + 9);
      v22 = vmovl_u8(v16).u64[0];
      LOBYTE(v23) = *(v15 + 13);
      v30 = *(v15 + 14);
      v31 = *(v15 + 30);
      *v32 = *(v15 + 46);
      *&v32[10] = *(v15 + 56);
      a3 = v11;
LABEL_23:
      *a3 = v21;
      *(a3 + 8) = v3;
      *(a3 + 9) = vuzp1_s8(v22, v21).u32[0];
      *(a3 + 13) = v23;
      *(a3 + 14) = v30;
      *(a3 + 30) = v31;
      *(a3 + 46) = *v32;
      *(a3 + 56) = *&v32[10];
      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_31:
  result = __DataStorage._length.getter();
  __break(1u);
  return result;
}

unint64_t sub_1000310B8(uint64_t a1)
{
  v2 = sub_10005DC58(&qword_10058BA70, &qword_1004AC7F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin();
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10005DC58(&qword_10058BA78, &unk_100480DC0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100012400(v10, v6, &qword_10058BA70, &qword_1004AC7F0);
      result = sub_10007CF70(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for CodingUserInfoKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_100085188(&v6[v9], (v8[7] + 32 * v14));
      v17 = v8[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v8[2] = v19;
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

void *BinaryDecoder.init(data:userInfo:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3[5] = &_swiftEmptyDictionarySingleton;
  v3[2] = a1;
  v3[3] = a2;
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    v6 = 0;
    if (v5 == 2)
    {
      v6 = *(a1 + 16);
    }
  }

  else if (v5)
  {
    v6 = a1;
  }

  else
  {
    v6 = 0;
  }

  v3[4] = v6;
  swift_beginAccess();
  v3[5] = a3;
  return v3;
}

uint64_t sub_10003132C(uint64_t *a1)
{
  v3 = a1[3];
  sub_100029B34(a1, v3);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100031694(v7, v8);
    sub_100033480();
    UnkeyedDecodingContainer.inferredDecode<A>()();
    v3 = v5;
    if (((1 << v5) & 0xE) == 0)
    {
      if (((1 << v5) & 0x11) != 0)
      {
        sub_100031694(v7, v8);
        if (dispatch thunk of UnkeyedDecodingContainer.decode(_:)() == 9)
        {
          sub_100031694(v7, v8);
          sub_1000317F0();
          dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
          if (sub_1000319F0(v5 | (v6 << 16), 0x9A6F50u))
          {
            sub_100031694(v7, v8);
            sub_1001F7F6C();
            UnkeyedDecodingContainer.inferredDecode<A>()();
          }
        }
      }

      else
      {
        sub_100031694(v7, v8);
        sub_1000317F0();
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        if (sub_1000319F0(v5 | (v6 << 16), 0xF21700u))
        {
          sub_100031694(v7, v8);
          sub_100033694();
          UnkeyedDecodingContainer.inferredDecode<A>()();
        }
      }
    }

    sub_100002A00(v7);
    sub_100002A00(a1);
  }

  return v3;
}

uint64_t sub_100031610@<X0>(uint64_t (*a1)(void)@<X2>, void *a2@<X8>)
{
  v4 = *v2;
  a2[3] = &type metadata for BinaryDecoder.UnkeyedContainer;
  a2[4] = a1();
  *a2 = v4;
}

uint64_t sub_100031694(uint64_t a1, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return result;
}

unint64_t sub_1000316E4()
{
  result = qword_100590ED0;
  if (!qword_100590ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590ED0);
  }

  return result;
}

unint64_t sub_100031764()
{
  result = qword_10058E0E8;
  if (!qword_10058E0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E0E8);
  }

  return result;
}

unint64_t sub_1000317F0()
{
  result = qword_10058CFA8;
  if (!qword_10058CFA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CFA8);
  }

  return result;
}

uint64_t sub_100031844(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v8, v9);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v8, v9);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v8, v9);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v8);
  sub_100002A00(a1);
  return v7 | (v6 << 8) | (v5 << 16);
}

uint64_t sub_1000319B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100031844(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
  }

  return result;
}

uint64_t sub_1000319F0(unsigned int a1, unsigned int a2)
{
  v2 = a2;
  v3 = a1;
  v4 = a1 >> 8;
  v5 = HIWORD(a1);
  v6 = a2 >> 8;
  v7 = HIWORD(a2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100480F30;
  *(v8 + 32) = v3;
  *(v8 + 33) = v4;
  *(v8 + 34) = v5;
  v9 = sub_10002D874(v8);
  v11 = v10;

  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_100480F30;
  *(v12 + 32) = v2;
  *(v12 + 33) = v6;
  *(v12 + 34) = v7;
  v13 = sub_10002D874(v12);
  v15 = v14;

  v16 = _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(v9, v11, v13, v15);
  sub_1000124C8(v13, v15);
  sub_1000124C8(v9, v11);
  return v16 & 1;
}

uint64_t _s7CoreP2P6NANPMKV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_10000AB0C(a3, a4);
          return sub_100031C74(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_100031C74(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v7)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      goto LABEL_9;
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    v10 = sub_1000C2BF0(v8, v9, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4);
    sub_1000124C8(a3, a4);
    return v10 & 1;
  }

  if (v7 == 2)
  {
    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
LABEL_9:
  sub_100031E04(v13, a3, a4, &v12);
  v10 = v4;
  sub_1000124C8(a3, a4);
  if (!v4)
  {
    v10 = v12;
  }

  return v10 & 1;
}

uint64_t sub_100031E04@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
{
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      if (result)
      {
        v6 = 1;
        goto LABEL_30;
      }

LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    v7 = result;
    v8 = *(a2 + 16);
    v9 = *(a2 + 24);
    v10 = __DataStorage._bytes.getter();
    if (v10)
    {
      v11 = __DataStorage._offset.getter();
      if (__OFSUB__(v8, v11))
      {
LABEL_33:
        __break(1u);
        goto LABEL_34;
      }

      v10 += v8 - v11;
    }

    v12 = __OFSUB__(v9, v8);
    v13 = v9 - v8;
    if (!v12)
    {
      result = __DataStorage._length.getter();
      if (result >= v13)
      {
        v14 = v13;
      }

      else
      {
        v14 = result;
      }

      if (!v7)
      {
        goto LABEL_37;
      }

      if (!v10)
      {
LABEL_39:
        __break(1u);
        goto LABEL_40;
      }

      result = v7;
      if (v10 == v7)
      {
LABEL_27:
        v6 = 1;
        goto LABEL_30;
      }

LABEL_16:
      result = memcmp(result, v10, v14);
      v6 = result == 0;
      goto LABEL_30;
    }

LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

  if (!v5)
  {
    __s2 = a2;
    v20 = a3;
    v21 = BYTE2(a3);
    v22 = BYTE3(a3);
    v23 = BYTE4(a3);
    v24 = BYTE5(a3);
    if (result)
    {
      result = memcmp(result, &__s2, BYTE6(a3));
      v6 = result == 0;
LABEL_30:
      *a4 = v6;
      return result;
    }

    __break(1u);
    goto LABEL_36;
  }

  v15 = a2;
  v16 = (a2 >> 32) - a2;
  if (a2 >> 32 < a2)
  {
    __break(1u);
    goto LABEL_32;
  }

  v17 = result;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
    goto LABEL_21;
  }

  v18 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v18))
  {
LABEL_34:
    __break(1u);
  }

  v10 += v15 - v18;
LABEL_21:
  result = __DataStorage._length.getter();
  if (result >= v16)
  {
    v14 = v16;
  }

  else
  {
    v14 = result;
  }

  if (!v17)
  {
    goto LABEL_38;
  }

  if (v10)
  {
    result = v17;
    if (v10 == v17)
    {
      goto LABEL_27;
    }

    goto LABEL_16;
  }

LABEL_40:
  __break(1u);
  return result;
}

char *sub_100032034(char *a1, int64_t a2, char a3)
{
  result = sub_100027BF8(a1, a2, a3, *v3, &qword_10058CC40, &unk_100482F40);
  *v3 = result;
  return result;
}

unint64_t sub_100032064(unsigned int a1, unsigned int a2)
{
  if ((a2 & 0x800) != 0)
  {
    v2 = 5;
  }

  else
  {
    v2 = 3;
  }

  if ((a2 & 0x400) != 0)
  {
    LOBYTE(v3) = 4;
  }

  else
  {
    LOBYTE(v3) = v2;
  }

  if ((a2 & 4) != 0)
  {
    v3 = (a2 >> 9) & 1;
  }

  if ((a2 & 2) != 0)
  {
    v4 = 3;
  }

  else
  {
    v4 = v3;
  }

  if (a2)
  {
    v5 = 2;
  }

  else
  {
    v5 = v4;
  }

  if ((a2 & 8) != 0)
  {
    v7 = 0;
  }

  else if ((a2 & 0x10) != 0)
  {
    v7 = 1;
  }

  else
  {
    if ((a2 & 0x2000) == 0)
    {
      return 0x300000000;
    }

    v7 = 2;
  }

  v9 = v7;
  v10 = v5;
  sub_1000276D8();
  return a1 | (v9 << 32) | (v10 << 40);
}

unint64_t sub_100032118@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100032064(*(a1 + 4), *(a1 + 8));
  *a2 = result;
  *(a2 + 4) = WORD2(result);
  return result;
}

uint64_t sub_100032158(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 496);
  v5 = *(v1 + v4);

  LOBYTE(a1) = static ChannelSequence.__derived_struct_equals(_:_:)(v6, a1);

  if ((a1 & 1) == 0)
  {
    v8 = *(v1 + v4);
    v9 = j___s7CoreP2P15ChannelSequenceV8endIndexSivg(v8);
    if (v9)
    {
      v10 = v9;

      result = specialized ContiguousArray.reserveCapacity(_:)();
      if (v10 < 0)
      {
        __break(1u);
        return result;
      }

      v11 = 0;
      do
      {
        v12 = v11 + 1;
        v13 = ChannelSequence.subscript.getter(v11, v8);
        Optional<A>.apiChannel.getter(v13 & 0xFFFFFFFFFFFFLL);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = _swiftEmptyArrayStorage[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v11 = v12;
      }

      while (v10 != v12);
    }

    sub_100030D3C();
    __chkstk_darwin();
    v15 = *(v3 + 432);
    v16 = *(v3 + 440);
    type metadata accessor for AWDLInterface.StateMonitoringClient();
    type metadata accessor for Dictionary.Values();

    swift_getWitnessTable();
    Sequence.filter(_:)();
    __chkstk_darwin();
    type metadata accessor for Array();
    swift_getWitnessTable();
    Sequence.forEach(_:)();
  }

  return result;
}

unint64_t ChannelSequence.subscript.getter(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(a2 + 16) > result)
  {
    return *(a2 + 8 * result + 32) | (*(a2 + 8 * result + 36) << 32);
  }

  __break(1u);
  return result;
}

id Channel.apiChannel.getter(unint64_t a1)
{
  if ((BYTE5(a1) - 2) > 4u)
  {
    v1 = 2;
  }

  else
  {
    v1 = qword_10049AFF8[(BYTE5(a1) - 2)];
  }

  LOBYTE(v3) = ((BYTE5(a1) - 7) < 0xFBu) & BYTE5(a1);
  return [objc_allocWithZone(WiFiChannel) initWithChannelNumber:a1 bandwidth:v1 is2_4GHz:1u >> (BYTE4(a1) & 7) is5GHz:HIDWORD(a1) & 1 is6GHz:(4u >> (BYTE4(a1) & 7)) & 1 isDFS:Channel.isDFS.getter(a1) extensionChannelAbove:v3];
}

uint64_t sub_100032510(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

void sub_100032558(uint64_t a1)
{
  v1 = *(a1 + 8);
  sub_100018AB4(0, &unk_100595DA0, WiFiChannel_ptr);
  isa = Array._bridgeToObjectiveC()().super.isa;
  [v1 channelSequenceChangedEvent:isa];
}

unint64_t sub_1000325F0()
{
  result = qword_10058CFA0;
  if (!qword_10058CFA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CFA0);
  }

  return result;
}

void *BinaryDecoder.decode<A>(_:)(void *a1)
{
  if (a1 == &type metadata for Data)
  {
    result = sub_100039FBC();
    if (v2)
    {
      return result;
    }

    v7[0] = result;
    v7[1] = v6;
    return swift_dynamicCast();
  }

  if (a1 == &type metadata for Bool)
  {
    result = sub_100033534(sub_100033CDC);
    if (v2)
    {
      return result;
    }

    LOBYTE(v7[0]) = result != 0;
    return swift_dynamicCast();
  }

  if (a1 == &type metadata for Double)
  {
    result = sub_1001487A8(sub_1002AB53C);
    if (v2)
    {
      return result;
    }

    v7[0] = result;
    return swift_dynamicCast();
  }

  v4 = swift_conformsToProtocol2();
  if (a1 && v4)
  {
    result = (*(v4 + 8))(v7, v1, a1);
    if (v2)
    {
      return result;
    }

    return swift_dynamicCast();
  }

  type metadata accessor for BinaryDecoder();
  sub_100033ADC();

  return dispatch thunk of Decodable.init(from:)();
}

uint64_t sub_10003286C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P14IEEE80211FrameV10ManagementO06ActionD0V8CategoryO8rawValueAISgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t _s7CoreP2P14IEEE80211FrameV10ManagementO06ActionD0V8CategoryO8rawValueAISgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 <= 6u)
  {
    if (a1 == 4)
    {
      return 0;
    }

    if (a1 != 5)
    {
      if (a1 == 6)
      {
        return 2;
      }

      return 7;
    }

    return 1;
  }

  else if (a1 > 0x7Du)
  {
    if (a1 != 126)
    {
      if (a1 == 127)
      {
        return 6;
      }

      return 7;
    }

    return 5;
  }

  else
  {
    if (a1 != 7)
    {
      if (a1 == 9)
      {
        return 4;
      }

      return 7;
    }

    return 3;
  }
}

uint64_t getEnumTagSinglePayload for IEEE80211Frame.Management.ActionFrame.Category(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000329B4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000336E8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 1) = BYTE1(result) & 1;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 4) = HIDWORD(result);
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_1000329FC()
{
  result = qword_10058EC20;
  if (!qword_10058EC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC20);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MulticastServiceType(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

unint64_t sub_100032B20()
{
  result = qword_10058EC28;
  if (!qword_10058EC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC28);
  }

  return result;
}

uint64_t sub_100032B74@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = sub_10005DC58(&qword_10058E3B8, &qword_1004894A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v13 - v8;
  v10 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100032CD4();
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

unint64_t sub_100032CD4()
{
  result = qword_10058E3B0;
  if (!qword_10058E3B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E3B0);
  }

  return result;
}

uint64_t BinaryDecoder.container<A>(keyedBy:)()
{
  type metadata accessor for BinaryDecoder.KeyedContainer();

  swift_getWitnessTable();
  return KeyedDecodingContainer.init<A>(_:)();
}

uint64_t sub_100032DD4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = *v5;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  a4();
  result = sub_100032E9C(a5, a1, v9, v10, a5);
  if (!v6)
  {
    return v13;
  }

  return result;
}

uint64_t sub_100032ECC@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v3 = *(*(a1 - 8) + 64);
  result = v2[4];
  v5 = result + v3;
  if (__OFADD__(result, v3))
  {
    __break(1u);
    goto LABEL_23;
  }

  v7 = v2[2];
  v8 = v2[3];
  v9 = v8 >> 62;
  if ((v8 >> 62) > 1)
  {
    if (v9 == 2)
    {
      if (*(v7 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 <= 0)
    {
      v11 = 0;
      v12 = 0;
      if (result > 0)
      {
        goto LABEL_23;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v13 = 0;
    *(v13 + 8) = 0;
    *(v13 + 16) = 2;
    return swift_willThrow();
  }

  v10 = BYTE6(v8);
  if (v9)
  {
    v10 = v7 >> 32;
  }

  if (v10 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v9)
  {
    if (v9 == 2)
    {
      v12 = *(v7 + 16);
      v11 = *(v7 + 24);
      if (v11 < result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v12 = v7;
      v11 = v7 >> 32;
      if (v7 >> 32 < result)
      {
        goto LABEL_23;
      }
    }
  }

  else
  {
    v12 = 0;
    v11 = BYTE6(v8);
    if (BYTE6(v8) < result)
    {
      goto LABEL_23;
    }
  }

LABEL_20:
  if (v11 >= v12)
  {
    v15 = Data._Representation.subscript.getter();
    v17 = v16;
    Data.load<A>(as:)(v15, v16, a1, a2);
    result = sub_1000124C8(v15, v17);
    v2[4] = v5;
    return result;
  }

LABEL_23:
  __break(1u);
  return result;
}

uint64_t Data.load<A>(as:)@<X0>(uint64_t a1@<X1>, unint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v9 = *(a3 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin();
  v14 = &v26 - v13;
  v16 = v15 >> 62;
  if ((v15 >> 62) > 1)
  {
    if (v16 == 2)
    {
      v18 = *(a1 + 16);
      v17 = *(a1 + 24);
      v19 = __OFSUB__(v17, v18);
      v20 = v17 - v18;
      if (v19)
      {
        __break(1u);
        goto LABEL_22;
      }

      if (v20 >= v10)
      {
        goto LABEL_8;
      }
    }

    else if (v10 <= 0)
    {
      goto LABEL_8;
    }

LABEL_17:
    sub_10000B02C();
    swift_allocError();
    *v24 = 0;
    *(v24 + 8) = 0;
    *(v24 + 16) = 2;
    return swift_willThrow();
  }

  if (v16)
  {
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      if (HIDWORD(a1) - a1 < v10)
      {
        goto LABEL_17;
      }

      goto LABEL_8;
    }

LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (BYTE6(a2) < v10)
  {
    goto LABEL_17;
  }

LABEL_8:
  v21 = *(v9 + 80);
  if (((v21 + 1) & v21) != 0)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    v26 = v12;
    v22 = v4;
    if (!swift_stdlib_isStackAllocationSafe())
    {
      goto LABEL_11;
    }

    goto LABEL_19;
  }

  v12 = *(v9 + 72);
  if (v21 > 0xF)
  {
    v22 = v4;
LABEL_11:
    swift_slowAlloc();
    sub_100033E9C(a1, a2, v10, a3, a4);
    if (!v22)
    {
    }

    __break(1u);
    goto LABEL_27;
  }

  if (v12 > 1024)
  {
    goto LABEL_24;
  }

LABEL_19:
  __chkstk_darwin();
  sub_100033E9C(a1, a2, v10, a3, v11);
  if (!v4)
  {
    v25 = *(v9 + 32);
    v25(v14, v11, a3);
    return (v25)(a4, v14, a3);
  }

LABEL_27:
  swift_willThrow();

  __break(1u);
  return result;
}

BOOL Channel.isDFS.getter(int a1)
{
  if (qword_10058AA70 != -1)
  {
    swift_once();
  }

  v2 = off_100591858;
  if (!*(off_100591858 + 2))
  {
    return 0;
  }

  v3 = *(off_100591858 + 5);
  v4 = static Hasher._hash(seed:bytes:count:)();
  v5 = -1 << v2[32];
  v6 = v4 & ~v5;
  if (((*&v2[((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v6) & 1) == 0)
  {
    return 0;
  }

  v7 = ~v5;
  do
  {
    v8 = *(*(v2 + 6) + 4 * v6);
    result = v8 == a1;
    if (v8 == a1)
    {
      break;
    }

    v6 = (v6 + 1) & v7;
  }

  while (((*&v2[((v6 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v6) & 1) != 0);
  return result;
}

void sub_100033460(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  sub_100032558(a1);
}

unint64_t sub_100033480()
{
  result = qword_100590FA0;
  if (!qword_100590FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590FA0);
  }

  return result;
}

uint64_t sub_100033534(uint64_t (*a1)(void))
{
  result = v1[4];
  v5 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      if (*(v6 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 < 1)
    {
      v10 = 0;
      v11 = 0;
      if (result > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  v9 = BYTE6(v7);
  if (v8)
  {
    v9 = v6 >> 32;
  }

  if (v9 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v10 < result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v6;
      v10 = v6 >> 32;
      if (v6 >> 32 < result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v7);
    if (BYTE6(v7) < result)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  if (v10 >= v11)
  {
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    v2 = a1();
    sub_1000124C8(v13, v15);
    v1[4] = v5;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

unint64_t sub_100033694()
{
  result = qword_100590FA8;
  if (!qword_100590FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100590FA8);
  }

  return result;
}

uint64_t sub_1000336E8(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v15, v16);
  sub_1000329FC();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v15, v16);
  sub_100032B20();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v4 = v18;
  sub_100031694(v15, v16);
  sub_10003411C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v19 = v18;
  sub_100031694(v15, v16);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v5 = v18;
  sub_100031694(v15, v16);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v6 = v18;
  sub_100031694(v15, v16);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  v14 = v6;
  v8 = v16;
  v9 = v17;
  sub_100031694(v15, v16);
  v10 = type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  v11 = sub_1000348B8(&qword_10058EC38, type metadata accessor for AWDLActionFrame.AWDLAttribute);
  UnkeyedDecodingContainer.inferredArrayDecode<A>()(v8, v10, v9, v11);
  sub_100002A00(v15);
  v12 = v19;
  sub_100002A00(a1);
  v13 = 256;
  if (!v12)
  {
    v13 = 0;
  }

  return v13 | v4 | (v5 << 16) | (v14 << 32);
}

unint64_t sub_1000339DC()
{
  result = qword_10058EC10;
  if (!qword_10058EC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC10);
  }

  return result;
}

uint64_t sub_100033A48(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = a2;
  v5 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v5 == 2)
    {
      v7 = *(a2 + 16);
      v6 = *(a2 + 24);
    }

    else
    {
      v6 = 0;
      v7 = 0;
    }
  }

  else
  {
    if (v5)
    {
      v6 = a2 >> 32;
    }

    else
    {
      v6 = BYTE6(a3);
    }

    if (v5)
    {
      v7 = v4;
    }

    else
    {
      v7 = 0;
    }
  }

  if (v6 >= result && v6 >= v7)
  {
    return Data._Representation.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t storeEnumTagSinglePayload for WiFiAddress(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 4) = 0;
    *result = a2 - 1;
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

  *(result + 6) = v3;
  return result;
}

unint64_t sub_100033ADC()
{
  result = qword_10058C7D0;
  if (!qword_10058C7D0)
  {
    type metadata accessor for BinaryDecoder();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058C7D0);
  }

  return result;
}

uint64_t sub_100033B30(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_17;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 1)
      {
        goto LABEL_8;
      }

      goto LABEL_17;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 1)
      {
        goto LABEL_8;
      }

LABEL_17:
      sub_10000B02C();
      swift_allocError();
      *v12 = 0;
      *(v12 + 8) = 0;
      *(v12 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (!BYTE6(a2))
  {
    goto LABEL_17;
  }

LABEL_8:
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v7 = result;
    if (result <= result >> 32)
    {
      v8 = __DataStorage._bytes.getter();
      if (v8)
      {
        v9 = v8;
        v10 = __DataStorage._offset.getter();
        if (!__OFSUB__(v7, v10))
        {
          v11 = (v7 - v10 + v9);
          result = __DataStorage._length.getter();
          if (!v11)
          {
            goto LABEL_31;
          }

          return *v11;
        }

LABEL_27:
        __break(1u);
      }

LABEL_30:
      result = __DataStorage._length.getter();
LABEL_31:
      __break(1u);
      return result;
    }

    goto LABEL_25;
  }

  v13 = *(result + 16);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __DataStorage._length.getter();
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v11 = (v13 - v16 + v15);
  __DataStorage._length.getter();
  if (!v11)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return *v11;
}

unint64_t sub_100033DA0()
{
  result = qword_10059AB70;
  if (!qword_10059AB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059AB70);
  }

  return result;
}

uint64_t BinaryDecoder.decode<A>(_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(*(a2 - 8) + 64);
  __chkstk_darwin();
  result = sub_100032ECC(v5, &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (!v2)
  {
    return dispatch thunk of FixedWidthInteger.init(littleEndian:)();
  }

  return result;
}

void *sub_100033E9C@<X0>(uint64_t a1@<X2>, unint64_t a2@<X3>, size_t a3@<X4>, uint64_t a4@<X5>, uint64_t a5@<X8>)
{
  v9 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (v9)
    {
      goto LABEL_13;
    }

    __src[0] = a1;
    LOWORD(__src[1]) = a2;
    BYTE2(__src[1]) = BYTE2(a2);
    BYTE3(__src[1]) = BYTE3(a2);
    BYTE4(__src[1]) = BYTE4(a2);
    BYTE5(__src[1]) = BYTE5(a2);
    result = UnsafeMutableBufferPointer.baseAddress.getter();
    if (result)
    {
      goto LABEL_21;
    }

    __break(1u);
  }

  if (v9 != 2)
  {
    memset(__src, 0, 14);
    result = UnsafeMutableBufferPointer.baseAddress.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_30;
    }

LABEL_21:
    memcpy(result, __src, a3);
LABEL_22:
    v17 = UnsafeMutableBufferPointer.baseAddress.getter();
    if (v17)
    {
      return (*(*(a4 - 8) + 16))(a5, v17, a4);
    }

LABEL_28:
    __break(1u);
  }

  v18 = a5;
  v11 = *(a1 + 16);
  v12 = *(a1 + 24);
  v13 = __DataStorage._bytes.getter();
  if (v13)
  {
    v14 = __DataStorage._offset.getter();
    if (__OFSUB__(v11, v14))
    {
LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    v13 += v11 - v14;
  }

  if (__OFSUB__(v12, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  a5 = a2 & 0x3FFFFFFFFFFFFFFFLL;
  __DataStorage._length.getter();
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (!result)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (v13)
  {
LABEL_19:
    memcpy(result, v13, a3);
    a5 = v18;
    goto LABEL_22;
  }

  __break(1u);
LABEL_13:
  v15 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_25;
  }

  v18 = a5;
  v13 = __DataStorage._bytes.getter();
  if (!v13)
  {
    goto LABEL_17;
  }

  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v15, v16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 += v15 - v16;
LABEL_17:
  __DataStorage._length.getter();
  result = UnsafeMutableBufferPointer.baseAddress.getter();
  if (!result)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v13)
  {
    goto LABEL_19;
  }

LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_10003411C()
{
  result = qword_10058EC30;
  if (!qword_10058EC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC30);
  }

  return result;
}

unint64_t sub_1000341D0()
{
  result = qword_10058EC08;
  if (!qword_10058EC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EC08);
  }

  return result;
}

_BYTE *sub_100034224@<X0>(_BYTE *result@<X0>, char *a2@<X8>)
{
  if (*result == 3)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for Layer3Protocol(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1000342E8(uint64_t (*a1)(void))
{
  result = v1[4];
  v5 = result + 4;
  if (__OFADD__(result, 4))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      if (*(v6 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 < 1)
    {
      v10 = 0;
      v11 = 0;
      if (result > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  v9 = BYTE6(v7);
  if (v8)
  {
    v9 = v6 >> 32;
  }

  if (v9 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v10 < result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v6;
      v10 = v6 >> 32;
      if (v6 >> 32 < result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v7);
    if (BYTE6(v7) < result)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  if (v10 >= v11)
  {
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    v2 = a1();
    sub_1000124C8(v13, v15);
    v1[4] = v5;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_100034480(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 4)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 4)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 4uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v8 = result;
    if (result <= result >> 32)
    {
      v9 = __DataStorage._bytes.getter();
      if (v9)
      {
        v10 = v9;
        v11 = __DataStorage._offset.getter();
        if (!__OFSUB__(v8, v11))
        {
          v12 = (v8 - v11 + v10);
          result = __DataStorage._length.getter();
          if (!v12)
          {
            goto LABEL_31;
          }

          return *v12;
        }

LABEL_27:
        __break(1u);
      }

LABEL_30:
      result = __DataStorage._length.getter();
LABEL_31:
      __break(1u);
      return result;
    }

    goto LABEL_25;
  }

  v13 = *(result + 16);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __DataStorage._length.getter();
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = (v13 - v16 + v15);
  __DataStorage._length.getter();
  if (!v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return *v12;
}

uint64_t UnkeyedDecodingContainer.inferredArrayDecode<A>()(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = v5;
  v10 = *(a1 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin();
  v13 = v15 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 16))(v13, v4, a1);
  if (swift_dynamicCast())
  {

    v6 = BinaryDecoder.decode<A>(_:)(a2);
  }

  else
  {
    type metadata accessor for Array();
    v15[0] = a4;
    swift_getWitnessTable();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    if (!v5)
    {
      v6 = v15[1];
    }
  }

  (*(v10 + 8))(v13, a1);
  return v6;
}

uint64_t sub_1000348B8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100034900(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t BinaryDecoder.decode<A>(_:)(void *a1)
{
  v3 = v2;
  v5 = *(*(a1 - 1) + 64);
  __chkstk_darwin();
  v16 = Array.init()();
  v7 = v1[2];
  v6 = v1[3];
  v8 = v6 >> 62;
  v9 = BYTE6(v6);
  while (1)
  {
    while (1)
    {
      v10 = v1[4];
      if (v8 > 1)
      {
        if (v8 == 2)
        {
          if (v10 >= *(v7 + 24))
          {
            return v16;
          }
        }

        else if ((v10 & 0x8000000000000000) == 0)
        {
          return v16;
        }
      }

      else
      {
        v11 = v9;
        if (v8)
        {
          v11 = v7 >> 32;
        }

        if (v10 >= v11)
        {
          return v16;
        }
      }

      BinaryDecoder.decode<A>(_:)(a1);
      if (v3)
      {
        break;
      }

      type metadata accessor for Array();
      Array.append(_:)();
    }

    swift_errorRetain();
    sub_10005DC58(&qword_10058C830, &qword_1004821F0);
    if (!swift_dynamicCast())
    {
      break;
    }

    if (v15 != 2)
    {
      sub_1000B2594(v13, v14, v15);
      break;
    }

    if ((v13 & 1) == 0)
    {
      break;
    }

    v3 = 0;
  }
}

uint64_t AWDLActionFrame.AWDLAttribute.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v248 = a2;
  v247 = type metadata accessor for AWDLActionFrame.AWDLAttribute(0);
  v3 = *(*(v247 - 8) + 64);
  __chkstk_darwin();
  v246 = &v225 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v249 = &v225 - v5;
  __chkstk_darwin();
  v245 = &v225 - v6;
  __chkstk_darwin();
  v232 = (&v225 - v7);
  __chkstk_darwin();
  v244 = &v225 - v8;
  __chkstk_darwin();
  v243 = &v225 - v9;
  __chkstk_darwin();
  v231 = (&v225 - v10);
  __chkstk_darwin();
  v242 = &v225 - v11;
  __chkstk_darwin();
  v241 = &v225 - v12;
  __chkstk_darwin();
  v239 = &v225 - v13;
  __chkstk_darwin();
  v238 = &v225 - v14;
  __chkstk_darwin();
  v237 = &v225 - v15;
  __chkstk_darwin();
  v230 = (&v225 - v16);
  __chkstk_darwin();
  v236 = &v225 - v17;
  __chkstk_darwin();
  v233 = (&v225 - v18);
  __chkstk_darwin();
  v235 = &v225 - v19;
  __chkstk_darwin();
  v234 = &v225 - v20;
  __chkstk_darwin();
  v240 = &v225 - v21;
  __chkstk_darwin();
  v23 = &v225 - v22;
  __chkstk_darwin();
  v25 = &v225 - v24;
  __chkstk_darwin();
  v27 = &v225 - v26;
  __chkstk_darwin();
  v29 = &v225 - v28;
  v30 = a1[4];
  v31 = a1;
  sub_100029B34(a1, a1[3]);
  v32 = v267;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v32)
  {
    v226 = v27;
    v227 = v25;
    v228 = v23;
    v229 = v29;
    v33 = v249;
    v267 = a1;
    sub_10005DC58(&qword_10058CF90, &qword_1004841A0);
    sub_100031694(v257, v258);
    sub_10000CADC(&qword_10058CF88, &qword_10058CF90, &qword_1004841A0);
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v36 = v253;
    v35 = v254;
    v37 = _s7CoreP2P15AWDLActionFrameV13AWDLAttributeO13AttributeTypeO8rawValueAGSgs5UInt8V_tcfC_0(v252);
    v31 = v267;
    v38 = v229;
    switch(v37)
    {
      case 1:
        v110 = sub_100033AA8(_swiftEmptyArrayStorage);
        v111 = type metadata accessor for BinaryDecoder();
        v112 = swift_allocObject();
        v113 = 0;
        v112[5] = &_swiftEmptyDictionarySingleton;
        v112[2] = v36;
        v112[3] = v35;
        v114 = v35 >> 62;
        if ((v35 >> 62) > 1)
        {
          v224 = v248;
          if (v114 == 2)
          {
            v113 = *(v36 + 16);
          }
        }

        else
        {
          v224 = v248;
          if (v114)
          {
            v113 = v36;
          }
        }

        v112[4] = v113;
        swift_beginAccess();
        v112[5] = v110;
        v255 = v111;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v112;
        v203 = sub_10015F550(&v252);
        v204 = v226;
        *v226 = v203;
        *(v204 + 8) = v205;
        swift_storeEnumTagMultiPayload();
        sub_100039054(v204, v38, type metadata accessor for AWDLActionFrame.AWDLAttribute);
        goto LABEL_137;
      case 2:
        v82 = sub_100033AA8(_swiftEmptyArrayStorage);
        v83 = type metadata accessor for BinaryDecoder();
        v84 = swift_allocObject();
        v85 = v35;
        v86 = v84;
        v87 = 0;
        v84[5] = &_swiftEmptyDictionarySingleton;
        v84[2] = v36;
        v84[3] = v85;
        v88 = v85 >> 62;
        if ((v85 >> 62) > 1)
        {
          if (v88 == 2)
          {
            v87 = *(v36 + 16);
          }
        }

        else if (v88)
        {
          v87 = v36;
        }

        v84[4] = v87;
        swift_beginAccess();
        *(v86 + 40) = v82;
        v255 = v83;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v86;
        v200 = v227;
        AWDLActionFrame.ServiceResponse.init(from:)(&v252, v227);
        goto LABEL_124;
      case 3:
        v96 = sub_100033AA8(_swiftEmptyArrayStorage);
        v97 = type metadata accessor for BinaryDecoder();
        v98 = swift_allocObject();
        v99 = v35;
        v100 = v98;
        v101 = 0;
        v98[5] = &_swiftEmptyDictionarySingleton;
        v98[2] = v36;
        v98[3] = v99;
        v102 = v99 >> 62;
        if ((v99 >> 62) > 1)
        {
          v46 = v228;
          if (v102 == 2)
          {
            v101 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v228;
          if (v102)
          {
            v101 = v36;
          }
        }

        v98[4] = v101;
        swift_beginAccess();
        *(v100 + 40) = v96;
        v255 = v97;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v100;
        sub_1000379CC(&v252, v259);
        v202 = v259[1];
        *v46 = v259[0];
        *(v46 + 1) = v202;
        *(v46 + 2) = v259[2];
        goto LABEL_134;
      case 4:
        v61 = sub_100033AA8(_swiftEmptyArrayStorage);
        v62 = type metadata accessor for BinaryDecoder();
        v63 = swift_allocObject();
        v64 = v35;
        v65 = v63;
        v66 = 0;
        v63[5] = &_swiftEmptyDictionarySingleton;
        v63[2] = v36;
        v63[3] = v64;
        v67 = v64 >> 62;
        if ((v64 >> 62) > 1)
        {
          v46 = v240;
          if (v67 == 2)
          {
            v66 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v240;
          if (v67)
          {
            v66 = v36;
          }
        }

        v63[4] = v66;
        swift_beginAccess();
        *(v65 + 40) = v61;
        v255 = v62;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v65;
        v190 = sub_100039124(&v252);
        v251 = v191 & 1;
        v250 = v192 & 1;
        *v46 = v190;
        *(v46 + 1) = WORD1(v190);
        v46[4] = BYTE4(v190);
        v46[5] = BYTE5(v190);
        v46[6] = BYTE6(v190);
        v46[7] = HIBYTE(v190);
        v46[8] = v193;
        v46[9] = v194;
        v46[10] = v195;
        v46[11] = v196;
        *(v46 + 3) = v197;
        v46[16] = v251;
        *(v46 + 5) = v198;
        v46[24] = v192 & 1;
        goto LABEL_134;
      case 5:
        v129 = sub_100033AA8(_swiftEmptyArrayStorage);
        v130 = type metadata accessor for BinaryDecoder();
        v131 = swift_allocObject();
        v132 = v35;
        v133 = v131;
        v134 = 0;
        v131[5] = &_swiftEmptyDictionarySingleton;
        v131[2] = v36;
        v131[3] = v132;
        v135 = v132 >> 62;
        if ((v132 >> 62) > 1)
        {
          v46 = v234;
          if (v135 == 2)
          {
            v134 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v234;
          if (v135)
          {
            v134 = v36;
          }
        }

        v131[4] = v134;
        swift_beginAccess();
        *(v133 + 40) = v129;
        v255 = v130;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v133;
        v209 = sub_100039A9C(&v252);
        *v46 = v209;
        *(v46 + 1) = WORD1(v209);
        *(v46 + 2) = WORD2(v209);
        *(v46 + 2) = v210;
        *(v46 + 2) = v211;
        *(v46 + 3) = v212;
        goto LABEL_134;
      case 6:
        v150 = sub_100033AA8(_swiftEmptyArrayStorage);
        v151 = type metadata accessor for BinaryDecoder();
        v152 = swift_allocObject();
        v153 = v35;
        v154 = v152;
        v155 = 0;
        v152[5] = &_swiftEmptyDictionarySingleton;
        v152[2] = v36;
        v152[3] = v153;
        v156 = v153 >> 62;
        if ((v153 >> 62) > 1)
        {
          v46 = v235;
          if (v156 == 2)
          {
            v155 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v235;
          if (v156)
          {
            v155 = v36;
          }
        }

        v152[4] = v155;
        swift_beginAccess();
        *(v154 + 40) = v150;
        v255 = v151;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v154;
        v217 = sub_10003B994(&v252);
        *v46 = v217;
        v46[4] = BYTE4(v217);
        *(v46 + 1) = v218;
        *(v46 + 2) = v219;
        goto LABEL_134;
      case 7:
        v103 = sub_100033AA8(_swiftEmptyArrayStorage);
        v104 = type metadata accessor for BinaryDecoder();
        v105 = swift_allocObject();
        v106 = v35;
        v107 = v105;
        v108 = 0;
        v105[5] = &_swiftEmptyDictionarySingleton;
        v105[2] = v36;
        v105[3] = v106;
        v109 = v106 >> 62;
        if ((v106 >> 62) > 1)
        {
          if (v109 == 2)
          {
            v108 = *(v36 + 16);
          }
        }

        else if (v109)
        {
          v108 = v36;
        }

        v105[4] = v108;
        swift_beginAccess();
        *(v107 + 40) = v103;
        v255 = v104;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v107;
        v200 = v233;
        AWDLActionFrame.DataPathState.init(from:)(&v252, v233);
        goto LABEL_124;
      case 8:
        v171 = sub_100033AA8(_swiftEmptyArrayStorage);
        v172 = type metadata accessor for BinaryDecoder();
        v173 = swift_allocObject();
        v174 = v35;
        v175 = v173;
        v176 = 0;
        v173[5] = &_swiftEmptyDictionarySingleton;
        v173[2] = v36;
        v173[3] = v174;
        v177 = v174 >> 62;
        if ((v174 >> 62) > 1)
        {
          v46 = v236;
          if (v177 == 2)
          {
            v176 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v236;
          if (v177)
          {
            v176 = v36;
          }
        }

        v173[4] = v176;
        swift_beginAccess();
        *(v175 + 40) = v171;
        v255 = v172;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v175;
        *v46 = sub_100048C6C(&v252);
        *(v46 + 1) = v221;
        *(v46 + 2) = v222;
        goto LABEL_134;
      case 9:
        v75 = sub_100033AA8(_swiftEmptyArrayStorage);
        v76 = type metadata accessor for BinaryDecoder();
        v77 = swift_allocObject();
        v78 = v35;
        v79 = v77;
        v80 = 0;
        v77[5] = &_swiftEmptyDictionarySingleton;
        v77[2] = v36;
        v77[3] = v78;
        v81 = v78 >> 62;
        if ((v78 >> 62) > 1)
        {
          if (v81 == 2)
          {
            v80 = *(v36 + 16);
          }
        }

        else if (v81)
        {
          v80 = v36;
        }

        v77[4] = v80;
        swift_beginAccess();
        *(v79 + 40) = v75;
        v255 = v76;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v79;
        sub_10003BC0C(&v252, v260);
        v199 = v260[1];
        v200 = v230;
        *v230 = v260[0];
        v200[1] = v199;
        v200[2] = v261[0];
        *(v200 + 41) = *(v261 + 9);
        goto LABEL_124;
      case 10:
        v164 = sub_100033AA8(_swiftEmptyArrayStorage);
        v165 = type metadata accessor for BinaryDecoder();
        v166 = swift_allocObject();
        v167 = v35;
        v168 = v166;
        v169 = 0;
        v166[5] = &_swiftEmptyDictionarySingleton;
        v166[2] = v36;
        v166[3] = v167;
        v170 = v167 >> 62;
        if ((v167 >> 62) > 1)
        {
          v46 = v237;
          if (v170 == 2)
          {
            v169 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v237;
          if (v170)
          {
            v169 = v36;
          }
        }

        v166[4] = v169;
        swift_beginAccess();
        *(v168 + 40) = v164;
        v255 = v165;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v168;
        *v46 = sub_100038420(&v252);
        goto LABEL_134;
      case 11:
        v54 = sub_100033AA8(_swiftEmptyArrayStorage);
        v55 = type metadata accessor for BinaryDecoder();
        v56 = swift_allocObject();
        v57 = v35;
        v58 = v56;
        v59 = 0;
        v56[5] = &_swiftEmptyDictionarySingleton;
        v56[2] = v36;
        v56[3] = v57;
        v60 = v57 >> 62;
        if ((v57 >> 62) > 1)
        {
          v46 = v238;
          if (v60 == 2)
          {
            v59 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v238;
          if (v60)
          {
            v59 = v36;
          }
        }

        v56[4] = v59;
        swift_beginAccess();
        *(v58 + 40) = v54;
        v255 = v55;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v58;
        *v46 = sub_10004AFDC(&v252);
        goto LABEL_134;
      case 12:
        v68 = sub_100033AA8(_swiftEmptyArrayStorage);
        v69 = type metadata accessor for BinaryDecoder();
        v70 = swift_allocObject();
        v71 = v35;
        v72 = v70;
        v73 = 0;
        v70[5] = &_swiftEmptyDictionarySingleton;
        v70[2] = v36;
        v70[3] = v71;
        v74 = v71 >> 62;
        if ((v71 >> 62) > 1)
        {
          v46 = v239;
          if (v74 == 2)
          {
            v73 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v239;
          if (v74)
          {
            v73 = v36;
          }
        }

        v70[4] = v73;
        swift_beginAccess();
        *(v72 + 40) = v68;
        v255 = v69;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v72;
        *v46 = sub_10003CF28(&v252);
        goto LABEL_134;
      case 13:
        v143 = sub_100033AA8(_swiftEmptyArrayStorage);
        v144 = type metadata accessor for BinaryDecoder();
        v145 = swift_allocObject();
        v146 = v35;
        v147 = v145;
        v148 = 0;
        v145[5] = &_swiftEmptyDictionarySingleton;
        v145[2] = v36;
        v145[3] = v146;
        v149 = v146 >> 62;
        if ((v146 >> 62) > 1)
        {
          v46 = v241;
          if (v149 == 2)
          {
            v148 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v241;
          if (v149)
          {
            v148 = v36;
          }
        }

        v145[4] = v148;
        swift_beginAccess();
        *(v147 + 40) = v143;
        v255 = v144;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v147;
        *v46 = sub_10015F770(&v252);
        *(v46 + 1) = v216;
        goto LABEL_134;
      case 14:
        v47 = sub_100033AA8(_swiftEmptyArrayStorage);
        v48 = type metadata accessor for BinaryDecoder();
        v49 = swift_allocObject();
        v50 = v35;
        v51 = v49;
        v52 = 0;
        v49[5] = &_swiftEmptyDictionarySingleton;
        v49[2] = v36;
        v49[3] = v50;
        v53 = v50 >> 62;
        if ((v50 >> 62) > 1)
        {
          v46 = v242;
          if (v53 == 2)
          {
            v52 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v242;
          if (v53)
          {
            v52 = v36;
          }
        }

        v49[4] = v52;
        swift_beginAccess();
        *(v51 + 40) = v47;
        v255 = v48;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v51;
        sub_10003D138(&v252, v262);
        v189 = v262[1];
        *v46 = v262[0];
        *(v46 + 1) = v189;
        *(v46 + 4) = v263;
        goto LABEL_134;
      case 15:
        v89 = sub_100033AA8(_swiftEmptyArrayStorage);
        v90 = type metadata accessor for BinaryDecoder();
        v91 = swift_allocObject();
        v92 = v35;
        v93 = v91;
        v94 = 0;
        v91[5] = &_swiftEmptyDictionarySingleton;
        v91[2] = v36;
        v91[3] = v92;
        v95 = v92 >> 62;
        if ((v92 >> 62) > 1)
        {
          if (v95 == 2)
          {
            v94 = *(v36 + 16);
          }
        }

        else if (v95)
        {
          v94 = v36;
        }

        v91[4] = v94;
        swift_beginAccess();
        *(v93 + 40) = v89;
        v255 = v90;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v93;
        sub_10003A254(&v252, v264);
        v201 = v264[1];
        v200 = v231;
        *v231 = v264[0];
        v200[1] = v201;
        v200[2] = v264[2];
        goto LABEL_124;
      case 16:
        v39 = sub_100033AA8(_swiftEmptyArrayStorage);
        v40 = type metadata accessor for BinaryDecoder();
        v41 = swift_allocObject();
        v42 = v35;
        v43 = v41;
        v44 = 0;
        v41[5] = &_swiftEmptyDictionarySingleton;
        v41[2] = v36;
        v41[3] = v42;
        v45 = v42 >> 62;
        if ((v42 >> 62) > 1)
        {
          v46 = v243;
          if (v45 == 2)
          {
            v44 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v243;
          if (v45)
          {
            v44 = v36;
          }
        }

        v41[4] = v44;
        swift_beginAccess();
        *(v43 + 40) = v39;
        v255 = v40;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v43;
        *v46 = sub_10015F990(&v252);
        goto LABEL_134;
      case 17:
        v115 = sub_100033AA8(_swiftEmptyArrayStorage);
        v116 = type metadata accessor for BinaryDecoder();
        v117 = swift_allocObject();
        v118 = v35;
        v119 = v117;
        v120 = 0;
        v117[5] = &_swiftEmptyDictionarySingleton;
        v117[2] = v36;
        v117[3] = v118;
        v121 = v118 >> 62;
        if ((v118 >> 62) > 1)
        {
          v46 = v244;
          if (v121 == 2)
          {
            v120 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v244;
          if (v121)
          {
            v120 = v36;
          }
        }

        v117[4] = v120;
        swift_beginAccess();
        *(v119 + 40) = v115;
        v255 = v116;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v119;
        v206 = sub_10015FB00(&v252);
        *v46 = v206;
        v46[2] = BYTE2(v206);
        v46[3] = BYTE3(v206);
        v46[4] = BYTE4(v206);
        v46[5] = BYTE5(v206);
        v46[6] = BYTE6(v206);
        goto LABEL_134;
      case 18:
        v157 = sub_100033AA8(_swiftEmptyArrayStorage);
        v158 = type metadata accessor for BinaryDecoder();
        v159 = swift_allocObject();
        v160 = v35;
        v161 = v159;
        v162 = 0;
        v159[5] = &_swiftEmptyDictionarySingleton;
        v159[2] = v36;
        v159[3] = v160;
        v163 = v160 >> 62;
        if ((v160 >> 62) > 1)
        {
          if (v163 == 2)
          {
            v162 = *(v36 + 16);
          }
        }

        else if (v163)
        {
          v162 = v36;
        }

        v159[4] = v162;
        swift_beginAccess();
        *(v161 + 40) = v157;
        v255 = v158;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v161;
        sub_1001600CC(&v252, v265);
        v220 = v265[1];
        v200 = v232;
        *v232 = v265[0];
        v200[1] = v220;
        *(v200 + 4) = v266;
LABEL_124:
        swift_storeEnumTagMultiPayload();
        v215 = v200;
        goto LABEL_135;
      case 19:
        sub_100033AA8(_swiftEmptyArrayStorage);
        type metadata accessor for BinaryDecoder();
        v185 = swift_allocObject();
        v186 = v35;
        v187 = v185;
        v185[5] = &_swiftEmptyDictionarySingleton;
        v185[2] = v36;
        v185[3] = v186;
        swift_setDeallocating();
        sub_1000124C8(v187[2], v187[3]);

        swift_deallocClassInstance();
        swift_storeEnumTagMultiPayload();
        goto LABEL_136;
      case 20:
        v122 = sub_100033AA8(_swiftEmptyArrayStorage);
        v123 = type metadata accessor for BinaryDecoder();
        v124 = swift_allocObject();
        v125 = v35;
        v126 = v124;
        v127 = 0;
        v124[5] = &_swiftEmptyDictionarySingleton;
        v124[2] = v36;
        v124[3] = v125;
        v128 = v125 >> 62;
        if ((v125 >> 62) > 1)
        {
          v46 = v245;
          if (v128 == 2)
          {
            v127 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v245;
          if (v128)
          {
            v127 = v36;
          }
        }

        v124[4] = v127;
        swift_beginAccess();
        *(v126 + 40) = v122;
        v255 = v123;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v126;
        v207 = sub_10003DB6C(&v252);
        *v46 = v207;
        v46[4] = BYTE4(v207);
        v46[5] = BYTE5(v207);
        *(v46 + 1) = v208;
        goto LABEL_134;
      case 21:
        v136 = sub_100033AA8(_swiftEmptyArrayStorage);
        v137 = type metadata accessor for BinaryDecoder();
        v138 = swift_allocObject();
        v139 = v35;
        v140 = v138;
        v141 = 0;
        v138[5] = &_swiftEmptyDictionarySingleton;
        v138[2] = v36;
        v138[3] = v139;
        v142 = v139 >> 62;
        if ((v139 >> 62) > 1)
        {
          if (v142 == 2)
          {
            v141 = *(v36 + 16);
          }
        }

        else if (v142)
        {
          v141 = v36;
        }

        v138[4] = v141;
        swift_beginAccess();
        *(v140 + 40) = v136;
        v255 = v137;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v140;
        v213 = sub_10015FCD0(&v252);
        *v33 = v213;
        *(v33 + 1) = HIDWORD(v213);
        *(v33 + 2) = v214;
        swift_storeEnumTagMultiPayload();
        v215 = v33;
        v38 = v229;
        goto LABEL_135;
      case 22:
        v178 = sub_100033AA8(_swiftEmptyArrayStorage);
        v179 = type metadata accessor for BinaryDecoder();
        v180 = swift_allocObject();
        v181 = v35;
        v182 = v180;
        v183 = 0;
        v180[5] = &_swiftEmptyDictionarySingleton;
        v180[2] = v36;
        v180[3] = v181;
        v184 = v181 >> 62;
        if ((v181 >> 62) > 1)
        {
          v46 = v246;
          if (v184 == 2)
          {
            v183 = *(v36 + 16);
          }
        }

        else
        {
          v46 = v246;
          if (v184)
          {
            v183 = v36;
          }
        }

        v180[4] = v183;
        swift_beginAccess();
        *(v182 + 40) = v178;
        v255 = v179;
        v256 = sub_1000348B8(&qword_10058C7D0, type metadata accessor for BinaryDecoder);
        v252 = v182;
        v223 = sub_10015FF04(&v252);
        *v46 = v223;
        v46[1] = HIBYTE(v223) & 1;
LABEL_134:
        swift_storeEnumTagMultiPayload();
        v215 = v46;
LABEL_135:
        sub_100039054(v215, v38, type metadata accessor for AWDLActionFrame.AWDLAttribute);
LABEL_136:
        v224 = v248;
        goto LABEL_137;
      case 23:
        sub_10000B02C();
        swift_allocError();
        *v188 = xmmword_10047CE70;
        *(v188 + 16) = 2;
        swift_willThrow();
        sub_1000124C8(v36, v35);
        sub_100002A00(v257);
        return sub_100002A00(v31);
      default:
        sub_100031694(v257, v258);
        sub_100039F68();
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        sub_1000124C8(v252, v253);
        sub_1000124C8(v36, v35);
        v224 = v248;
        swift_storeEnumTagMultiPayload();
LABEL_137:
        sub_100002A00(v257);
        sub_100039054(v38, v224, type metadata accessor for AWDLActionFrame.AWDLAttribute);
        break;
    }
  }

  return sub_100002A00(v31);
}

uint64_t TypeLengthValue.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  v106 = a8;
  v104 = a6;
  v97 = a9;
  v99 = *(a10 + 8);
  v96 = *(*(v99 + 24) + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = *(*(AssociatedTypeWitness - 8) + 64);
  __chkstk_darwin();
  v94 = &v90 - v17;
  v98 = *(a3 - 8);
  v18 = *(v98 + 64);
  __chkstk_darwin();
  v20 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v22 = &v90 - v21;
  v100 = *(a2 - 8);
  v23 = *(v100 + 64);
  __chkstk_darwin();
  v101 = &v90 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = a4;
  v108[0] = a2;
  v108[1] = a3;
  v108[2] = a4;
  v109 = a5;
  v110 = v104;
  v111 = a7;
  v103 = a2;
  v104 = a7;
  v112 = v106;
  v113 = a10;
  v25 = a1;
  v26 = type metadata accessor for TypeLengthValue();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin();
  v30 = &v90 - v29;
  v31 = v25[3];
  v32 = v25[4];
  v106 = v25;
  sub_100029B34(v25, v31);
  v33 = v105;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v33)
  {
    return sub_100002A00(v106);
  }

  v90 = v20;
  v105 = v22;
  v92 = v27;
  v93 = v30;
  v91 = v26;
  sub_100031694(v108, v109);
  v34 = v101;
  v35 = v103;
  UnkeyedDecodingContainer.inferredDecode<A>()();
  (*(v100 + 32))(v93, v34, v35);
  sub_100031694(v108, v109);
  v37 = a3;
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v38 = v99;
  v39 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v40 = v91;
  v41 = v92;
  v42 = v98;
  if ((v39 & 1) == 0 || dispatch thunk of BinaryInteger.bitWidth.getter() <= 64)
  {
    goto LABEL_18;
  }

  v107[0] = 0x8000000000000000;
  if (dispatch thunk of static BinaryInteger.isSigned.getter())
  {
    if (dispatch thunk of BinaryInteger.bitWidth.getter() >= 64)
    {
      sub_100086E78();
      v43 = v90;
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v44 = *(*(v38 + 32) + 8);
      v45 = dispatch thunk of static Comparable.< infix(_:_:)();
      v46 = v43;
      v40 = v91;
      result = (*(v42 + 8))(v46, v37);
      goto LABEL_12;
    }

LABEL_17:
    dispatch thunk of BinaryInteger._lowWord.getter();
    goto LABEL_18;
  }

  v47 = dispatch thunk of static BinaryInteger.isSigned.getter();
  v48 = dispatch thunk of BinaryInteger.bitWidth.getter();
  if ((v47 & 1) == 0)
  {
    if (v48 >= 64)
    {
      goto LABEL_18;
    }

    goto LABEL_17;
  }

  if (v48 <= 64)
  {
    swift_getAssociatedConformanceWitness();
    dispatch thunk of _ExpressibleByBuiltinIntegerLiteral.init(_builtinIntegerLiteral:)();
    v51 = v90;
    dispatch thunk of ExpressibleByIntegerLiteral.init(integerLiteral:)();
    v52 = *(*(v38 + 32) + 8);
    v53 = dispatch thunk of static Comparable.< infix(_:_:)();
    v54 = v51;
    v40 = v91;
    result = (*(v42 + 8))(v54, v37);
    if (v53)
    {
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    goto LABEL_17;
  }

  sub_100086E78();
  v49 = v90;
  dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
  v50 = *(*(v38 + 32) + 8);
  v45 = dispatch thunk of static Comparable.< infix(_:_:)();
  result = (*(v42 + 8))(v49, v37);
LABEL_12:
  if (v45)
  {
    goto LABEL_55;
  }

LABEL_18:
  v55 = v105;
  if (dispatch thunk of BinaryInteger.bitWidth.getter() > 64 || dispatch thunk of BinaryInteger.bitWidth.getter() == 64 && (dispatch thunk of static BinaryInteger.isSigned.getter() & 1) == 0)
  {
    v107[0] = 0x7FFFFFFFFFFFFFFFLL;
    v56 = dispatch thunk of static BinaryInteger.isSigned.getter();
    v57 = dispatch thunk of BinaryInteger.bitWidth.getter();
    if (v56)
    {
      v58 = v57 < 65;
    }

    else
    {
      v58 = v57 < 64;
    }

    v59 = v90;
    if (!v58)
    {
      sub_100086E78();
      dispatch thunk of BinaryInteger.init<A>(truncatingIfNeeded:)();
      v60 = *(*(v38 + 32) + 8);
      v61 = v40;
      v62 = v59;
      v55 = v105;
      v63 = dispatch thunk of static Comparable.< infix(_:_:)();
      v64 = v62;
      v40 = v61;
      v41 = v92;
      (*(v42 + 8))(v64, v37);
      if ((v63 & 1) == 0)
      {
        goto LABEL_29;
      }

      __break(1u);
    }

    v55 = v105;
    dispatch thunk of BinaryInteger._lowWord.getter();
  }

LABEL_29:
  v65 = dispatch thunk of BinaryInteger._lowWord.getter();
  (*(v42 + 8))(v55, v37);
  v66 = v106[4];
  sub_100029B34(v106, v106[3]);
  v67 = dispatch thunk of Decoder.userInfo.getter();
  if (qword_10058A840 != -1)
  {
    swift_once();
  }

  v68 = type metadata accessor for CodingUserInfoKey();
  v69 = sub_100037644(v68, static CodingUserInfoKey.fourByteAlignedValue);
  if (!*(v67 + 16) || (v70 = sub_10007CF6C(v69), (v71 & 1) == 0))
  {

LABEL_40:
    v76 = v109;
    sub_100031694(v108, v109);
    v77 = UnkeyedDecodingContainer.decodeData(with:)(v65, v76);
    goto LABEL_54;
  }

  sub_100002B30(*(v67 + 56) + 32 * v70, v107);

  result = swift_dynamicCast();
  if ((result & 1) == 0 || v114 != 1)
  {
    goto LABEL_40;
  }

  if (!__OFADD__(v65, 3))
  {
    v72 = v109;
    sub_100031694(v108, v109);
    result = UnkeyedDecodingContainer.decodeData(with:)((v65 + 3) & 0xFFFFFFFFFFFFFFFCLL, v72);
    v74 = 0;
    v75 = v73 >> 62;
    if ((v73 >> 62) > 1)
    {
      if (v75 == 2)
      {
        v74 = *(result + 16);
      }
    }

    else if (v75)
    {
      v74 = result;
    }

    v79 = __OFADD__(v74, v65);
    v80 = v74 + v65;
    if (v79)
    {
      goto LABEL_57;
    }

    if (v75 > 1)
    {
      if (v75 == 2)
      {
        v81 = *(result + 16);
        v82 = *(result + 24);
      }

      else
      {
        v82 = 0;
        v81 = 0;
      }
    }

    else if (v75)
    {
      v81 = result;
      v82 = result >> 32;
    }

    else
    {
      v81 = 0;
      v82 = BYTE6(v73);
    }

    if (v82 < v81 || v80 < v81)
    {
      goto LABEL_58;
    }

    v83 = v73;
    v84 = result;
    v85 = Data._Representation.subscript.getter();
    v87 = v86;
    sub_1000124C8(v84, v83);
    v78 = v87;
    v77 = v85;
LABEL_54:
    v88 = v93;
    v89 = &v93[*(v40 + 84)];
    *v89 = v77;
    v89[1] = v78;
    sub_100002A00(v108);
    (*(v41 + 16))(v97, v88, v40);
    sub_100002A00(v106);
    return (*(v41 + 8))(v88, v40);
  }

LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
  return result;
}

uint64_t sub_10003725C(uint64_t (*a1)(void))
{
  result = v1[4];
  v5 = result + 2;
  if (__OFADD__(result, 2))
  {
    __break(1u);
    goto LABEL_24;
  }

  v6 = v1[2];
  v7 = v1[3];
  v8 = v7 >> 62;
  if ((v7 >> 62) > 1)
  {
    if (v8 == 2)
    {
      if (*(v6 + 24) >= v5)
      {
        goto LABEL_9;
      }
    }

    else if (v5 < 1)
    {
      v10 = 0;
      v11 = 0;
      if (result > 0)
      {
        goto LABEL_24;
      }

      goto LABEL_20;
    }

LABEL_14:
    sub_10000B02C();
    swift_allocError();
    *v12 = 0;
    *(v12 + 8) = 0;
    *(v12 + 16) = 2;
    swift_willThrow();
    return v2;
  }

  v9 = BYTE6(v7);
  if (v8)
  {
    v9 = v6 >> 32;
  }

  if (v9 < v5)
  {
    goto LABEL_14;
  }

LABEL_9:
  if (v8)
  {
    if (v8 == 2)
    {
      v11 = *(v6 + 16);
      v10 = *(v6 + 24);
      if (v10 < result)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v11 = v6;
      v10 = v6 >> 32;
      if (v6 >> 32 < result)
      {
        goto LABEL_24;
      }
    }
  }

  else
  {
    v11 = 0;
    v10 = BYTE6(v7);
    if (BYTE6(v7) < result)
    {
      goto LABEL_24;
    }
  }

LABEL_20:
  if (v10 >= v11)
  {
    v13 = Data._Representation.subscript.getter();
    v15 = v14;
    v2 = a1();
    sub_1000124C8(v13, v15);
    v1[4] = v5;
    return v2;
  }

LABEL_24:
  __break(1u);
  return result;
}

uint64_t sub_1000373BC(uint64_t result, unint64_t a2)
{
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      goto LABEL_8;
    }

    v4 = *(result + 16);
    v3 = *(result + 24);
    v5 = __OFSUB__(v3, v4);
    v6 = v3 - v4;
    if (!v5)
    {
      if (v6 >= 2)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v2)
  {
    if (!__OFSUB__(HIDWORD(result), result))
    {
      if (HIDWORD(result) - result >= 2)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10000B02C();
      swift_allocError();
      *v7 = 0;
      *(v7 + 8) = 0;
      *(v7 + 16) = 2;
      return swift_willThrow();
    }

    goto LABEL_24;
  }

  if (BYTE6(a2) < 2uLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v2 != 2)
  {
    if (v2 != 1)
    {
      return result;
    }

    v8 = result;
    if (result <= result >> 32)
    {
      v9 = __DataStorage._bytes.getter();
      if (v9)
      {
        v10 = v9;
        v11 = __DataStorage._offset.getter();
        if (!__OFSUB__(v8, v11))
        {
          v12 = (v8 - v11 + v10);
          result = __DataStorage._length.getter();
          if (!v12)
          {
            goto LABEL_31;
          }

          return *v12;
        }

LABEL_27:
        __break(1u);
      }

LABEL_30:
      result = __DataStorage._length.getter();
LABEL_31:
      __break(1u);
      return result;
    }

    goto LABEL_25;
  }

  v13 = *(result + 16);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __DataStorage._length.getter();
    goto LABEL_29;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  if (__OFSUB__(v13, v16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v12 = (v13 - v16 + v15);
  __DataStorage._length.getter();
  if (!v12)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  return *v12;
}

uint64_t sub_100037600()
{
  v1 = *v0;
  swift_beginAccess();
  v2 = *(v1 + 40);
}

uint64_t sub_100037644(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t UnkeyedDecodingContainer.decodeData(with:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v7 = *(a2 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v2, a2);
  if (swift_dynamicCast())
  {

    v4 = BinaryDecoder.decodeData(with:)(a1);

LABEL_17:
    (*(v7 + 8))(v10, a2);
    return v4;
  }

  sub_100039F68();
  result = dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  if (v3)
  {
    goto LABEL_17;
  }

  v4 = v19;
  v12 = v20;
  v13 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v13 != 2)
    {
      if (!a1)
      {
        goto LABEL_17;
      }

LABEL_16:
      sub_10000B02C();
      swift_allocError();
      *v18 = 0;
      *(v18 + 8) = 0;
      *(v18 + 16) = 2;
      swift_willThrow();
      sub_1000124C8(v4, v12);
      goto LABEL_17;
    }

    v15 = *(v19 + 16);
    v14 = *(v19 + 24);
    v16 = __OFSUB__(v14, v15);
    v17 = v14 - v15;
    if (!v16)
    {
      if (v17 == a1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    __break(1u);
  }

  else
  {
    if (!v13)
    {
      if (BYTE6(v20) == a1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }

    if (!__OFSUB__(HIDWORD(v19), v19))
    {
      if (HIDWORD(v19) - v19 == a1)
      {
        goto LABEL_17;
      }

      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t BinaryDecoder.decodeData(with:)(uint64_t a1)
{
  result = v1[4];
  v4 = result + a1;
  if (!__OFADD__(result, a1))
  {
    v5 = v1[2];
    v6 = v1[3];
    v7 = v6 >> 62;
    if ((v6 >> 62) > 1)
    {
      if (v7 != 2)
      {
        if (a1 < 0 || v4 > 0)
        {
          goto LABEL_16;
        }

LABEL_14:
        if (v4 >= result)
        {
          result = Data._Representation.subscript.getter();
          v1[4] = v4;
          return result;
        }

        goto LABEL_18;
      }

      v8 = *(v5 + 24);
      if (a1 < 0)
      {
LABEL_16:
        sub_10000B02C();
        swift_allocError();
        *v9 = 0;
        *(v9 + 8) = 0;
        *(v9 + 16) = 2;
        return swift_willThrow();
      }
    }

    else
    {
      if (v7)
      {
        v8 = v5 >> 32;
      }

      else
      {
        v8 = BYTE6(v6);
      }

      if (a1 < 0)
      {
        goto LABEL_16;
      }
    }

    if (v8 < v4)
    {
      goto LABEL_16;
    }

    goto LABEL_14;
  }

  __break(1u);
LABEL_18:
  __break(1u);
  return result;
}

uint64_t _s7CoreP2P15AWDLActionFrameV13AWDLAttributeO13AttributeTypeO8rawValueAGSgs5UInt8V_tcfC_0(unsigned __int8 a1)
{
  if (a1 > 0x23u)
  {
    return 23;
  }

  else
  {
    return byte_10048DC74[a1];
  }
}

uint64_t sub_1000379CC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v6 = sub_10005DC58(&qword_10058ED18, &qword_10048D660);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v21.i8[-v9];
  v11 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100037EDC();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  LOBYTE(v40) = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 2;
  v39 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 3;
  v38 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 4;
  v37 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 5;
  v36 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 6;
  v35 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 7;
  v34 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 8;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 9;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 10;
  v31 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 11;
  v30 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 12;
  v29 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 13;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = 14;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v3.i32[0] = v40;
  v26 = BYTE5(v40);
  v27 = BYTE4(v40);
  LOBYTE(v40) = 15;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 16;
  v24 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 17;
  v23 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v40) = 18;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v41 = 19;
  sub_1000383CC();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v7 + 8))(v10, v6);
  v21 = vmovl_u8(v3);
  v14 = v40;
  result = sub_100002A00(a1);
  *a2 = v12;
  *(a2 + 2) = v13;
  v16 = v38;
  *(a2 + 4) = v39;
  *(a2 + 5) = v16;
  v17 = v36;
  *(a2 + 6) = v37;
  *(a2 + 8) = v17;
  v18 = v34;
  *(a2 + 10) = v35;
  *(a2 + 12) = v18;
  v19 = v32;
  *(a2 + 14) = v33;
  *(a2 + 16) = v19;
  LOBYTE(v19) = v30;
  *(a2 + 18) = v31;
  *(a2 + 19) = v19;
  LOBYTE(v19) = v28;
  *(a2 + 20) = v29;
  *(a2 + 21) = v19;
  *(a2 + 22) = vuzp1_s8(*v21.i8, *v21.i8).u32[0];
  LOBYTE(v19) = v26;
  *(a2 + 26) = v27;
  *(a2 + 27) = v19;
  LOBYTE(v19) = v24;
  *(a2 + 28) = v25;
  *(a2 + 29) = v19;
  v20 = v22;
  *(a2 + 30) = v23;
  *(a2 + 32) = v20;
  *(a2 + 40) = v14;
  return result;
}

unint64_t sub_100037EDC()
{
  result = qword_10058ED20;
  if (!qword_10058ED20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED20);
  }

  return result;
}

uint64_t sub_100037F30(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = *v5;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  a4();
  result = sub_100032E9C(a5, a1, v9, v10, a5);
  if (!v6)
  {
    return v13;
  }

  return result;
}

unint64_t sub_100037FF8()
{
  result = qword_10058E2D8;
  if (!qword_10058E2D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E2D8);
  }

  return result;
}

unint64_t sub_10003804C()
{
  result = qword_10058BBF0[0];
  if (!qword_10058BBF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_10058BBF0);
  }

  return result;
}

uint64_t sub_1000380FC(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (!v1)
  {
    v4 = v16;
    sub_100031694(v15, v16);
    v5 = UnkeyedDecodingContainer.decodeData(with:)(6, v4);
    v7 = v6;
    sub_10000AB0C(v5, v6);
    v8 = sub_1000172CC(v5, v7);
    if ((v8 & 0x1000000000000) == 0)
    {
      v9 = v8;
      sub_1000124C8(v5, v7);
      sub_100002A00(v15);
      sub_100002A00(a1);
      return v9 & 0xFFFFFFFFFFFFLL;
    }

    v11 = type metadata accessor for DecodingError();
    swift_allocError();
    v13 = v12;
    v17 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
    *v13 = &type metadata for WiFiAddress;
    v14 = a1[4];
    sub_100029B34(a1, a1[3]);
    dispatch thunk of Decoder.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v11 - 8) + 104))(v13, enum case for DecodingError.valueNotFound(_:), v11);
    swift_willThrow();
    sub_1000124C8(v5, v7);
    sub_100002A00(v15);
  }

  return sub_100002A00(a1);
}

uint64_t sub_1000382E8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1000380FC(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 2) = BYTE2(result);
    *(a2 + 3) = BYTE3(result);
    *(a2 + 4) = BYTE4(result);
    *(a2 + 5) = BYTE5(result);
  }

  return result;
}

unint64_t sub_100038378()
{
  result = qword_10058E2F8;
  if (!qword_10058E2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E2F8);
  }

  return result;
}

unint64_t sub_1000383CC()
{
  result = qword_10058ED28;
  if (!qword_10058ED28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED28);
  }

  return result;
}

uint64_t sub_100038420(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
    return v4;
  }

  sub_100031694(v10, v11);
  result = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v6 = result + 1;
  if ((v6 & 0x100) == 0)
  {
    sub_100031694(v10, v11);
    sub_100038644();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v7 = v12;
    sub_100031694(v10, v11);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v10, v11);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v10, v11);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v8 = v6 << 8;
    if ((v7 - 2) >= 2)
    {
      if (v7)
      {
        v9 = sub_100038810(v8, v10);
      }

      else
      {
        v9 = sub_1001497A4(v8, v10);
      }
    }

    else
    {
      v9 = sub_100039664(v8, v10);
    }

    v4 = v9;
    sub_100002A00(v10);
    sub_100002A00(a1);
    return v4;
  }

  __break(1u);
  return result;
}

uint64_t sub_100038618@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = AWDLActionFrame.AWDLChannelSequenceParameter.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_100038644()
{
  result = qword_10058ED40;
  if (!qword_10058ED40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED40);
  }

  return result;
}

unint64_t sub_1000386F8()
{
  result = qword_10058EDB8;
  if (!qword_10058EDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EDB8);
  }

  return result;
}

uint64_t sub_10003874C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P27IEEE80211InformationElementO43PreAssociationSecurityNegotiationParametersV17WrappedDataFormatO8rawValueAGSgs5UInt8V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for NANBloomFilter.Index(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_100038810(__int16 a1, uint64_t a2)
{
  v3 = (HIBYTE(a1) - a1);
  v16 = HIBYTE(a1);
  if (HIBYTE(a1) < a1)
  {
    v4 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v4 = (HIBYTE(a1) - a1);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  v6 = a1;
  v20 = _swiftEmptyArrayStorage;
  result = sub_100032034(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = v20;
    LODWORD(v8) = v16 - v6;
    if (v16 >= v6)
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = -v8;
    while (v4)
    {
      result = sub_100038980(a2, &v17, &v18);
      if (v2)
      {

        return v5;
      }

      v10 = v19;
      v11 = v18;
      v20 = v5;
      v13 = v5[2];
      v12 = v5[3];
      if (v13 >= v12 >> 1)
      {
        result = sub_100032034((v12 > 1), v13 + 1, 1);
        v5 = v20;
      }

      v5[2] = v13 + 1;
      v14 = &v5[v13];
      *(v14 + 8) = v11;
      *(v14 + 18) = (v11 | (v10 << 32)) >> 32;
      if (v16 < v6)
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        goto LABEL_22;
      }

      ++v9;
      --v4;
      if (!--v3)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_100038980@<X0>(uint64_t a1@<X1>, void *a2@<X2>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 32);
  sub_100031694(a1, *(a1 + 24));
  sub_100038BB8();
  result = dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  if (v3)
  {
    *a2 = v3;
  }

  else
  {
    v9 = *(a1 + 32);
    sub_100031694(a1, *(a1 + 24));
    result = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v10 = result;
    if (result)
    {
      v11 = sub_100038CD4(0, 2uLL, v19);
      if (v10 <= 0xDDu && v11 == 2)
      {
        v10 += 2;
      }

      else if (sub_100038CD4(0, 2uLL, v19) == 1 && v10 > 2u)
      {
        v10 -= 2;
      }

      v14 = sub_100038CD4(4, 4uLL, v19) == 1;
      v15 = sub_100038E98(v19);
      result = _s7CoreP2P7ChannelV7isValid7channel2on4withSbs6UInt32V_AC4BandOAA9BandwidthOtFZ_0(v10, v14, v15);
      if (result)
      {
        v16 = sub_100038CD4(4, 4uLL, v19) == 1;
        v18 = sub_100038E98(v19);
        result = sub_1000276D8();
        *a3 = v10;
        v17 = (v10 | (v16 << 32) | (v18 << 40)) >> 32;
      }

      else
      {
        *a3 = 0;
        LOWORD(v17) = 3;
      }

      *(a3 + 4) = v17;
    }

    else
    {
      *a3 = 0;
      *(a3 + 4) = 3;
    }
  }

  return result;
}

unint64_t sub_100038BB8()
{
  result = qword_10058ED48;
  if (!qword_10058ED48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED48);
  }

  return result;
}

unint64_t sub_100038C6C()
{
  result = qword_10058ED88;
  if (!qword_10058ED88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED88);
  }

  return result;
}

uint64_t sub_100038D04@<X0>(_BYTE *a1@<X8>)
{

  *a1 = 1;
  return result;
}

unint64_t sub_100038D34(uint64_t a1, unint64_t a2, char a3)
{
  if (__OFADD__(a1, a2))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((a1 + a2) > 8)
  {
    sub_10000B02C();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0;
    *(v4 + 16) = 2;
    swift_willThrow();
    return v5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (a2)
  {
    v7 = 0;
    v3 = 0;
    while (1)
    {
      v8 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_23;
      }

      if (v7 < 0x40)
      {
        v3 |= 1 << v7;
      }

      if (v8 == a2)
      {
        break;
      }

      ++v7;
      if (v8 >= a2)
      {
        __break(1u);
        break;
      }
    }

    if ((a1 - 65) < 0xFFFFFFFFFFFFFF7FLL)
    {
      return 0;
    }

    if ((a1 & 0x8000000000000000) == 0)
    {
      if (a1 != 64)
      {
        return (a3 & (v3 << a1)) >> a1;
      }

      return 0;
    }

LABEL_25:
    if (a1 == -64)
    {
      return 0;
    }

    goto LABEL_28;
  }

  if ((a1 - 65) < 0xFFFFFFFFFFFFFF7FLL)
  {
    return 0;
  }

  v9 = 0;
  v3 = 0;
  if (a1 < 0)
  {
    if (a1 != -64)
    {
LABEL_28:
      v9 = (a3 & (v3 >> -a1)) << -a1;
      if ((v9 & 0x8000000000000000) != 0)
      {
        __break(1u);
      }

      if (v9 > 0xFF)
      {
        __break(1u);
      }
    }
  }

  else if (a1 != 64)
  {
    return (a3 & (v3 << a1)) >> a1;
  }

  return v9;
}

uint64_t sub_100038E98(char a1)
{
  v2 = sub_100038CD4(2, 2uLL, a1);
  if (v2 == 1)
  {
    return 2;
  }

  if (v2 == 3)
  {
    return sub_100038CD4(0, 2uLL, a1) == 2;
  }

  return 3;
}

uint64_t BinaryDecoder.__deallocating_deinit()
{
  sub_1000124C8(v0[2], v0[3]);
  v1 = v0[5];

  return swift_deallocClassInstance();
}

uint64_t sub_100038F84(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100038FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100039054(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000390BC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_100039124(uint64_t *a1)
{
  v3 = sub_10005DC58(&qword_10058ED08, &qword_10048D658);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = v13 - v6;
  v8 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_100039434();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  v18[0] = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v18[0] = 1;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v18[0] = 2;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v18[0] = 3;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v21 = 4;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v18[0];
  v14 = v18[1];
  v13[2] = *&v18[2];
  v21 = 5;
  v16 = sub_100039488();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v13[1] = *v18;
  v19 = v18[4];
  v21 = 6;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v4 + 8))(v7, v3);
  v20 = v18[4];
  sub_100002A00(a1);
  return v9 | (v10 << 16) | (v11 << 32) | (v17 << 40) | (v15 << 48) | (v14 << 56);
}

unint64_t sub_100039434()
{
  result = qword_10058ED10;
  if (!qword_10058ED10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED10);
  }

  return result;
}

unint64_t sub_100039488()
{
  result = qword_10058ECA8;
  if (!qword_10058ECA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ECA8);
  }

  return result;
}

uint64_t sub_1000394DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  sub_100029B34(v9, v9[3]);
  v6 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
  v7 = sub_1000395B0(v6);
  sub_100002A00(v9);
  result = sub_100002A00(a1);
  *a2 = v7;
  *(a2 + 4) = BYTE4(v7) & 1;
  return result;
}

unint64_t sub_1000395B0(int a1)
{
  if (a1 <= 95)
  {
    if (a1 == 80)
    {
      v9 = 2;
    }

    else
    {
      v9 = a1;
    }

    v10 = a1 == 80;
    if (a1 == 64)
    {
      v9 = 1;
      v10 = 1;
    }

    if (a1 == 61)
    {
      v7 = 0;
    }

    else
    {
      v7 = v9;
    }

    v8 = a1 == 61 || v10;
  }

  else
  {
    if (a1 == 655)
    {
      v1 = 6;
    }

    else
    {
      v1 = a1;
    }

    v2 = a1 == 655;
    if (a1 == 650)
    {
      v3 = 5;
    }

    else
    {
      v3 = v1;
    }

    if (a1 == 650)
    {
      v2 = 1;
    }

    if (a1 == 505)
    {
      v4 = 4;
    }

    else
    {
      v4 = a1;
    }

    v5 = a1 == 505;
    if (a1 == 96)
    {
      v6 = 3;
    }

    else
    {
      v6 = v4;
    }

    if (a1 == 96)
    {
      v5 = 1;
    }

    if (a1 <= 649)
    {
      v7 = v6;
    }

    else
    {
      v7 = v3;
    }

    if (a1 <= 649)
    {
      v8 = v5;
    }

    else
    {
      v8 = v2;
    }
  }

  return v7 | (v8 << 32);
}

unint64_t sub_100039664(__int16 a1, uint64_t a2)
{
  v3 = (HIBYTE(a1) - a1);
  v22 = HIBYTE(a1);
  v23 = a1;
  if (HIBYTE(a1) < a1)
  {
    v4 = -(a1 - HIBYTE(a1));
  }

  else
  {
    v4 = (HIBYTE(a1) - a1);
  }

  v5 = _swiftEmptyArrayStorage;
  if (!v4)
  {
    return v5;
  }

  result = sub_100032034(0, v4 & ~(v4 >> 63), 0);
  if ((v4 & 0x8000000000000000) == 0)
  {
    v5 = _swiftEmptyArrayStorage;
    LODWORD(v8) = v22 - v23;
    if (v22 >= v23)
    {
      v8 = v8;
    }

    else
    {
      v8 = 0;
    }

    v9 = -v8;
    while (v4)
    {
      v10 = *(a2 + 32);
      sub_100031694(a2, *(a2 + 24));
      v11 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      if (v2)
      {

        return v5;
      }

      v12 = v11;
      v24 = v3;
      v13 = a2;
      v15 = *(a2 + 24);
      v14 = *(a2 + 32);
      v16 = v13;
      sub_100031694(v13, v15);
      v17 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      result = sub_100039824(v12, v17);
      v25 = v5;
      v19 = v5[2];
      v18 = v5[3];
      if (v19 >= v18 >> 1)
      {
        v21 = result;
        sub_100032034((v18 > 1), v19 + 1, 1);
        result = v21;
        v5 = v25;
      }

      v5[2] = v19 + 1;
      v20 = &v5[v19];
      *(v20 + 8) = result;
      *(v20 + 18) = WORD2(result);
      if (v22 < v23)
      {
        goto LABEL_21;
      }

      if (!v9)
      {
        goto LABEL_22;
      }

      a2 = v16;
      ++v9;
      --v4;
      v3 = v24 - 1;
      if (v24 == 1)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t sub_100039824(uint64_t a1, uint64_t a2)
{
  if (qword_10058AAC0 != -1)
  {
    goto LABEL_39;
  }

  while (1)
  {
    v2 = off_100591878;
    v3 = *(off_100591878 + 2);
    if (!v3)
    {
      return 0x300000000;
    }

    v4 = 0;
    v5 = a1;
    v6 = a2;
    p_base_meths = (&XPCResponder + 32);
    v8 = &qword_100591000;
    while (v4 < v2[2])
    {
      v9 = &v2[2 * v4 + 4];
      if (*v9 == v6)
      {
        v10 = v9[1];
        v11 = v9[2];
        v12 = *(v9 + 1);
        if ((v11 - 4) >= 3)
        {
          v32 = *(v12 + 16);
          v33 = (v12 + 32);
          do
          {
            if (!v32)
            {
              goto LABEL_5;
            }

            v34 = *v33++;
            --v32;
          }

          while (v34 != v5);

LABEL_37:
          sub_1000276D8(v17);

          return v5 | (v10 << 32) | (v11 << 40);
        }

        v38 = v6;
        v13 = v8;
        v14 = p_base_meths[345];

        if (v14 != -1)
        {
          swift_once();
        }

        v8 = v13;
        v15 = v13[272];
        v16 = *(v15 + 16);
        v17 = 8392708;
        if (v16)
        {
          v18 = 0;
          v19 = v15 + 32;
          do
          {
            v21 = v19 + 16 * v18;
            if ((0x801004u >> (8 * *v21)) == (0x801004u >> (8 * v10)))
            {
              v22 = *(v21 + 8);
              v23 = *(v21 + 1);
              if (v23 == 6)
              {
                if (v11 == 6)
                {
                  goto LABEL_24;
                }
              }

              else if (v23 == 5)
              {
                if (v11 == 5)
                {
                  goto LABEL_24;
                }
              }

              else if (v23 == 4 && v11 == 4)
              {
LABEL_24:
                v24 = *(v22 + 16);
                if (v24)
                {
                  v25 = 0;
                  v26 = v22 + 32;
                  do
                  {
                    v27 = v26 + 16 * v25++;
                    v28 = *(v27 + 8);
                    v29 = *(v28 + 16);
                    v30 = (v28 + 32);
                    while (v29)
                    {
                      v31 = *v30++;
                      --v29;
                      if (v31 == v5)
                      {
                        goto LABEL_37;
                      }
                    }
                  }

                  while (v25 != v24);
                }
              }
            }

            ++v18;
          }

          while (v18 != v16);
        }

        p_base_meths = &XPCResponder.base_meths;
        v6 = v38;
      }

LABEL_5:
      if (++v4 == v3)
      {
        return 0x300000000;
      }
    }

    __break(1u);
LABEL_39:
    v36 = a1;
    v37 = a2;
    swift_once();
    a1 = v36;
    a2 = v37;
  }
}

unint64_t sub_100039A9C(uint64_t *a1)
{
  v3 = a1[4];
  sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    return sub_100002A00(a1);
  }

  sub_100031694(v6, v7);
  sub_100039C6C();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100031694(v6, v7);
  sub_100039D74();
  UnkeyedDecodingContainer.inferredDecode<A>()();
  sub_100002A00(v6);
  sub_100002A00(a1);
  return v5 | (v5 << 16) | (v5 << 32);
}

unint64_t sub_100039C6C()
{
  result = qword_10058ECF8;
  if (!qword_10058ECF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ECF8);
  }

  return result;
}

unint64_t sub_100039D20()
{
  result = qword_10058E538;
  if (!qword_10058E538)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E538);
  }

  return result;
}

unint64_t sub_100039D74()
{
  result = qword_10058ED00;
  if (!qword_10058ED00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058ED00);
  }

  return result;
}

uint64_t sub_100039DC8(uint64_t *a1)
{
  v3 = a1[4];
  v4 = sub_100029B34(a1, a1[3]);
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v1)
  {
    sub_100002A00(a1);
  }

  else
  {
    sub_100031694(v12, v13);
    v5 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    if (v5)
    {
      v7 = v5;
      sub_100031694(v12, v13);
      sub_100039F68();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
      v8 = v10;
      v9 = v11;
      v5 = v7;
    }

    else
    {
      v8 = 0;
      v9 = 0xC000000000000000;
    }

    v4 = sub_10003A0D8(v5, v8, v9);
    sub_1000124C8(v8, v9);
    sub_100002A00(v12);
    sub_100002A00(a1);
  }

  return v4;
}

uint64_t sub_100039F38@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100039DC8(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
  }

  return result;
}

unint64_t sub_100039F68()
{
  result = qword_10058CFB0;
  if (!qword_10058CFB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CFB0);
  }

  return result;
}

uint64_t sub_100039FBC()
{
  v2 = v0[3];
  result = v0[4];
  v3 = v0[2];
  v4 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    v5 = BYTE6(v2);
    if (v4)
    {
      v5 = v3 >> 32;
    }

    if (result == v5)
    {
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v4 != 2)
  {
    if (result)
    {
      v6 = 0;
      goto LABEL_16;
    }

LABEL_13:
    sub_10000B02C();
    swift_allocError();
    *v7 = 0;
    *(v7 + 8) = 0;
    *(v7 + 16) = 2;
    return swift_willThrow();
  }

  if (result == *(v3 + 24))
  {
    goto LABEL_13;
  }

LABEL_8:
  if (v4 == 2)
  {
    v6 = *(v3 + 24);
  }

  else if (v4 == 1)
  {
    v6 = v3 >> 32;
  }

  else
  {
    v6 = BYTE6(v2);
  }

LABEL_16:
  if (v6 < result)
  {
    __break(1u);
  }

  else
  {
    result = Data._Representation.subscript.getter();
    v8 = v0[2];
    v9 = v0[3];
    v10 = v9 >> 62;
    if ((v9 >> 62) > 1)
    {
      if (v10 == 2)
      {
        v12 = *(v8 + 24);
      }

      else
      {
        v12 = 0;
      }
    }

    else
    {
      v11 = BYTE6(v9);
      v12 = v8 >> 32;
      if (!v10)
      {
        v12 = v11;
      }
    }

    v0[4] = v12;
  }

  return result;
}

uint64_t sub_10003A0D8(uint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    v4 = 0;
    if (v3 == 2)
    {
      v4 = *(a2 + 16);
    }
  }

  else if (v3)
  {
    v4 = a2;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0;
  v6 = a2 >> 32;
  do
  {
    if (((result >> v5) & 1) == 0)
    {
      goto LABEL_11;
    }

    if (v3 <= 1)
    {
      v7 = BYTE6(a3);
      if (v3)
      {
        v7 = a2 >> 32;
      }

LABEL_9:
      if (v4 == v7)
      {
        goto LABEL_31;
      }

      goto LABEL_10;
    }

    if (v3 == 2)
    {
      v7 = *(a2 + 24);
      goto LABEL_9;
    }

    if (!v4)
    {
      goto LABEL_31;
    }

LABEL_10:
    if (__OFADD__(v4++, 1))
    {
      __break(1u);
      return result;
    }

LABEL_11:
    ++v5;
  }

  while (v5 != 32);
  if (v3 > 1)
  {
    if (v3 == 2)
    {
      if (v4 == *(a2 + 24))
      {
        goto LABEL_27;
      }
    }

    else if (!v4)
    {
      goto LABEL_36;
    }

LABEL_31:
    sub_10000B02C();
    swift_allocError();
    *v11 = 0;
    *(v11 + 8) = 0;
    *(v11 + 16) = 2;
    return swift_willThrow();
  }

  if (v3)
  {
    v9 = a2 >> 32;
  }

  else
  {
    v9 = BYTE6(a3);
  }

  if (v4 != v9)
  {
    goto LABEL_31;
  }

LABEL_27:
  if (v3)
  {
    if (v3 == 2)
    {
      v10 = *(a2 + 16);
      v6 = *(a2 + 24);
    }

    else
    {
      v10 = a2;
    }

    if (v6 < v10)
    {
      __break(1u);
    }
  }

LABEL_36:
  v12 = result;
  Data.subdata(in:)();
  return v12;
}

uint64_t sub_10003A254@<X0>(uint64_t *a1@<X0>, _DWORD *a2@<X8>)
{
  v7 = sub_10005DC58(&qword_10058ECA0, &qword_10048D628);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v26.i8[-v10];
  v12 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_10003A618();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100002A00(a1);
  }

  v42 = 0;
  sub_10003804C();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v36 = a2;
  v3.i32[0] = v37;
  v13 = v38;
  v14 = v39;
  v42 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v34 = v13;
  v35 = v14;
  v4.i32[0] = v37;
  LOBYTE(v13) = v38;
  LOBYTE(v14) = v39;
  LOBYTE(v37) = 2;
  v33 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v37) = 3;
  v32 = KeyedDecodingContainer.decode(_:forKey:)();
  v42 = 4;
  sub_100039488();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v37;
  v41 = v38;
  v42 = 5;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v15 = v37;
  v40 = v38;
  LOBYTE(v37) = 6;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v15;
  v30 = v16;
  LOBYTE(v37) = 7;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v37) = 8;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v8 + 8))(v11, v7);
  v26 = vmovl_u8(v3);
  v27 = vmovl_u8(v4);
  v18 = v41;
  v19 = v40;
  result = sub_100002A00(a1);
  v21 = v36;
  *v36 = vuzp1_s8(*v26.i8, *v26.i8).u32[0];
  v22 = v35;
  *(v21 + 4) = v34;
  *(v21 + 5) = v22;
  *(v21 + 6) = vuzp1_s8(*v27.i8, *v27.i8).u32[0];
  *(v21 + 10) = v13;
  *(v21 + 11) = v14;
  v23 = v32;
  v21[3] = v33;
  v21[4] = v23;
  v21[5] = v31;
  *(v21 + 24) = v18;
  v24 = v30;
  v21[7] = v29;
  *(v21 + 32) = v19;
  v25 = v28;
  v21[9] = v24;
  v21[10] = v25;
  v21[11] = v17;
  return result;
}

unint64_t sub_10003A618()
{
  result = qword_10058E410;
  if (!qword_10058E410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E410);
  }

  return result;
}

uint64_t sub_10003A6A8(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void), uint64_t a5)
{
  v9 = *v5;
  v10 = *(a2 + 16);
  v11 = *(a2 + 24);
  a4();
  result = sub_100032E9C(a5, a1, v9, v10, a5);
  if (!v6)
  {
    return v13;
  }

  return result;
}

unint64_t sub_10003A734()
{
  result = qword_10058E2D0;
  if (!qword_10058E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E2D0);
  }

  return result;
}

uint64_t AWDLActionFrame.DataPathState.init(from:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v60 = a2;
  v3 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v61 = &v53[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = (type metadata accessor for AWDLActionFrame.DataPathState(0) - 8);
  v6 = *(*v5 + 64);
  __chkstk_darwin();
  v8 = &v53[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  *v8 = 0;
  v8[2] = 1;
  *(v8 + 4) = 3;
  *(v8 + 1) = 0;
  *(v8 + 7) = 0;
  *(v8 + 10) = 0;
  v8[16] = 1;
  *(v8 + 12) = 3;
  *(v8 + 5) = 0;
  *(v8 + 15) = 0;
  *(v8 + 26) = 0;
  v8[32] = 1;
  *(v8 + 5) = 0;
  *(v8 + 6) = 0;
  *(v8 + 54) = 0;
  v8[62] = 1;
  v8[64] = 47;
  *(v8 + 33) = 0;
  v8[68] = 1;
  *(v8 + 18) = 0;
  v9 = &v8[v5[36]];
  v8[76] = 1;
  v10 = type metadata accessor for DispatchTimeInterval();
  v11 = *(v10 - 8);
  v13 = v11 + 56;
  v12 = *(v11 + 56);
  v62 = v9;
  v58 = v11;
  v59 = v12;
  v12(v9, 1, 1, v10);
  v14 = &v8[v5[37]];
  *v14 = 0;
  v14[4] = 1;
  v15 = &v8[v5[38]];
  *v15 = 0;
  v15[4] = 1;
  v17 = a1[3];
  v16 = a1[4];
  v64 = a1;
  sub_100029B34(a1, v17);
  v18 = v63;
  dispatch thunk of Decoder.unkeyedContainer()();
  if (v18)
  {
    sub_100002A00(v64);

    return sub_100016290(v62, &unk_10059B170, &unk_1004B4D70);
  }

  v63 = v8;
  v56 = v14;
  v57 = v13;
  v19 = v10;
  v55 = v15;
  sub_100031694(v65, v66);
  sub_10003B11C();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v21 = v67;
  v22 = v63;
  v63[77] = (v67 & 0x20) != 0;
  *(v22 + 78) = (v21 & 0x40) != 0;
  *(v22 + 94) = (v21 & 0x10) != 0;
  *(v22 + 79) = (v21 & 0x80) != 0;
  v23 = *&vshl_u16(vdup_n_s16(v21), 0xFFF2FFF3FFF5FFF6) & 0xFFC1FFC1FFC1FFC1;
  *(v22 + 80) = vuzp1_s8(v23, v23).u32[0];
  if ((v21 & 0x100) == 0)
  {
    if ((v21 & 0x200) == 0)
    {
      goto LABEL_7;
    }

    goto LABEL_6;
  }

  sub_100031694(v65, v66);
  v54 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  sub_100031694(v65, v66);
  *v22 = v54 | (dispatch thunk of UnkeyedDecodingContainer.decode(_:)() << 8);
  *(v22 + 2) = 0;
  sub_100031694(v65, v66);
  dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  if ((v21 & 0x200) != 0)
  {
LABEL_6:
    sub_100031694(v65, v66);
    v24 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    v25 = sub_10003B238(v24);
    *(v22 + 4) = v25;
    *(v22 + 8) = WORD2(v25);
  }

LABEL_7:
  if ((v21 & 1) == 0)
  {
    if ((v21 & 2) == 0)
    {
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  sub_100031694(v65, v66);
  sub_10003804C();
  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  v27 = (v69 << 40) | (v68 << 32);
  *(v22 + 10) = v67;
  *(v22 + 14) = WORD2(v27);
  *(v22 + 16) = 0;
  sub_100031694(v65, v66);
  v28 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v29 = sub_10003B238(v28);
  *(v22 + 20) = v29;
  *(v22 + 24) = WORD2(v29);
  if ((v21 & 2) != 0)
  {
LABEL_9:
    sub_100031694(v65, v66);
    sub_10003804C();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v26 = (v69 << 40) | (v68 << 32);
    *(v22 + 26) = v67;
    *(v22 + 30) = WORD2(v26);
    *(v22 + 32) = 0;
  }

LABEL_13:
  if ((v21 & 4) != 0)
  {
    sub_100031694(v65, v66);
    sub_10003804C();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v30 = (v69 << 40) | (v68 << 32);
    *(v22 + 56) = v67;
    *(v22 + 60) = WORD2(v30);
    *(v22 + 62) = 0;
  }

  if ((v21 & 8) == 0)
  {
    v31 = v21;
    if ((v21 & 0x1000) == 0)
    {
      goto LABEL_17;
    }

LABEL_21:
    sub_100031694(v65, v66);
    dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    sub_100031694(v65, v66);
    v41 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
    *(v22 + 65) = v41 & 1;
    *(v22 + 64) = _s7CoreP2P15AWDLActionFrameV13DataPathStateV30UnicastMasterIndicationOptionsO8rawValueAGSgs6UInt32V_tcfC_0(v41 & 0xFFFFFFFE);
    *(v22 + 63) = 1;
    if ((v31 & 0x80000000) == 0)
    {
      goto LABEL_18;
    }

LABEL_22:
    sub_100031694(v65, v66);
    sub_10003B764();
    dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
    v42 = v67;
    if (v67)
    {
      sub_100031694(v65, v66);
      *(v22 + 66) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      *(v22 + 68) = 0;
    }

    if ((v42 & 4) != 0)
    {
      sub_100031694(v65, v66);
      *(v22 + 72) = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      *(v22 + 76) = 0;
    }

    if ((v42 & 0x20) != 0)
    {
      sub_100031694(v65, v66);
      v47 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v48 = v62;
      sub_100016290(v62, &unk_10059B170, &unk_1004B4D70);
      *v48 = v47;
      (*(v58 + 104))(v48, enum case for DispatchTimeInterval.milliseconds(_:), v19);
      v59(v48, 0, 1, v19);
      sub_100031694(v65, v66);
      v49 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v50 = v56;
      *v56 = v49;
      *(v50 + 4) = 0;
      sub_100031694(v65, v66);
      v51 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
      v52 = v55;
      *v55 = v51;
      *(v52 + 4) = 0;
      v22 = v63;
    }

    v43 = vdup_n_s16(v42);
    v44 = vshl_u16(v43, 0xFFF4FFF5FFF7FFF8);
    v45 = *&vshl_u16((*&v43 & 0xFF00FF00FF00FFLL), 0xFFFDFFFFFFFAFFFCLL) & 0xFF01FF01FF01FF01;
    v46 = vuzp1_s8(v45, v45);
    *(v22 + 84) = v46.i32[0];
    *(v22 + 88) = (v42 & 0x80) != 0;
    *(v22 + 89) = vuzp1_s8((*&v44 & 0xFF01FF01FF01FF01), v46).u32[0];
    *(v22 + 93) = (v42 & 0x2000) != 0;
    v32 = v60;
    goto LABEL_19;
  }

  sub_100031694(v65, v66);
  v33 = dispatch thunk of UnkeyedDecodingContainer.decode(_:)();
  v34 = v66;
  sub_100031694(v65, v66);
  v31 = v21;
  v35 = UnkeyedDecodingContainer.decodeData(with:)(v33, v34);
  v37 = v36;
  static String.Encoding.utf8.getter();
  v38 = String.init(data:encoding:)();
  v40 = v39;
  sub_1000124C8(v35, v37);
  *(v22 + 40) = v38;
  *(v22 + 48) = v40;
  if ((v31 & 0x1000) != 0)
  {
    goto LABEL_21;
  }

LABEL_17:
  *(v22 + 63) = 0;
  *(v22 + 65) = 0;
  if ((v31 & 0x80000000) != 0)
  {
    goto LABEL_22;
  }

LABEL_18:
  *(v22 + 92) = 0;
  *(v22 + 84) = 0;
  v32 = v60;
LABEL_19:
  sub_100002A00(v65);
  sub_10003B86C(v22, v32, type metadata accessor for AWDLActionFrame.DataPathState);
  sub_100002A00(v64);
  return sub_10003B934(v22, type metadata accessor for AWDLActionFrame.DataPathState);
}

unint64_t sub_10003B11C()
{
  result = qword_10058E360;
  if (!qword_10058E360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058E360);
  }

  return result;
}

unint64_t sub_10003B1D0()
{
  result = qword_10058EA78;
  if (!qword_10058EA78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058EA78);
  }

  return result;
}