uint64_t sub_1001950D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000754F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];
    v32[0] = v34;

    swift_dynamicCast();
    sub_100075D50(v33, v27);
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100075D50(v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100075D50(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100075D50(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_10019539C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100505428, &qword_10040CCB8);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v13 >= v6)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v13);
    ++v7;
    if (v5)
    {
      while (1)
      {
        v14 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v15 = v14 | (v13 << 6);
        v16 = (*(a1 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        v19 = *(*(a1 + 56) + 8 * v15);

        v20 = v19;
        v21 = sub_10008C908(v18, v17);
        if (v22)
        {
          v8 = (v2[6] + 16 * v21);
          v9 = v8[1];
          *v8 = v18;
          v8[1] = v17;
          v10 = v21;

          v11 = v2[7];
          v12 = *(v11 + 8 * v10);
          *(v11 + 8 * v10) = v20;

          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_20;
          }

          *(v2 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v21;
          v23 = (v2[6] + 16 * v21);
          *v23 = v18;
          v23[1] = v17;
          *(v2[7] + 8 * v21) = v20;
          v24 = v2[2];
          v25 = __OFADD__(v24, 1);
          v26 = v24 + 1;
          if (v25)
          {
            goto LABEL_21;
          }

          v2[2] = v26;
          v7 = v13;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v13 = v7;
      }
    }
  }

  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
}

uint64_t sub_10019557C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_100092ECC(*(a1 + 56) + 40 * v13, v41);
    v39 = v16;
    v40 = v15;
    v36 = v41[0];
    v37 = v41[1];
    v38 = v42;
    v26 = v16;
    v27 = v15;

    swift_dynamicCast();
    v24[0] = v36;
    v24[1] = v37;
    v25 = v38;
    swift_dynamicCast();
    v32 = v28;
    v33 = v29;
    v34 = v30;
    sub_100075D50(&v31, v35);
    v28 = v32;
    v29 = v33;
    v30 = v34;
    sub_100075D50(v35, v24);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v28;
    *(v11 + 16) = v29;
    *(v11 + 32) = v30;
    result = sub_100075D50(v24, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100195868(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = *(*(a1 + 48) + 8 * v13);
    sub_1000754F0(*(a1 + 56) + 32 * v13, v34 + 8);
    *&v34[0] = v14;
    v32[0] = v34[0];
    v32[1] = v34[1];
    v33 = v35;
    *&v31[0] = v14;
    type metadata accessor for CFString(0);
    v15 = v14;
    swift_dynamicCast();
    sub_100075D50((v32 + 8), v26);
    v27 = v23;
    v28 = v24;
    v29 = v25;
    sub_100075D50(v26, v30);
    v23 = v27;
    v24 = v28;
    v25 = v29;
    sub_100075D50(v30, v31);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v16 = -1 << *(v2 + 32);
    v17 = result & ~v16;
    v18 = v17 >> 6;
    if (((-1 << v17) & ~*&v7[8 * (v17 >> 6)]) == 0)
    {
      v19 = 0;
      v20 = (63 - v16) >> 6;
      while (++v18 != v20 || (v19 & 1) == 0)
      {
        v21 = v18 == v20;
        if (v18 == v20)
        {
          v18 = 0;
        }

        v19 |= v21;
        v22 = *&v7[8 * v18];
        if (v22 != -1)
        {
          v10 = __clz(__rbit64(~v22)) + (v18 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v17) & ~*&v7[8 * (v17 >> 6)])) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v23;
    *(v11 + 16) = v24;
    *(v11 + 32) = v25;
    result = sub_100075D50(v31, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100195B30(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v15 = v14[1];
    v16 = *(*(a1 + 56) + v13);
    *&v32[0] = *v14;
    *(&v32[0] + 1) = v15;

    swift_dynamicCast();
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100075D50(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100075D50(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*&v7[8 * (v18 >> 6)]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = *&v7[8 * v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~*&v7[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100075D50(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100195DE8(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100502C40, &unk_100409D00);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = v2 + 8;

  v9 = 0;
  while (v5)
  {
LABEL_15:
    v13 = __clz(__rbit64(v5)) | (v9 << 6);
    v14 = (*(a1 + 48) + 16 * v13);
    v16 = *v14;
    v15 = v14[1];
    sub_1000754F0(*(a1 + 56) + 32 * v13, v35);
    *&v34 = v16;
    *(&v34 + 1) = v15;
    v32[2] = v34;
    v33[0] = v35[0];
    v33[1] = v35[1];

    swift_dynamicCast();
    sub_100075D50(v33, v32);
    sub_100068FC4(&qword_100505408, &qword_10040CC98);
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_100075D50(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_100075D50(v31, v32);
    result = AnyHashable._rawHashValue(seed:)(v2[5]);
    v17 = -1 << *(v2 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~v7[v18 >> 6]) == 0)
    {
      v20 = 0;
      v21 = (63 - v17) >> 6;
      while (++v19 != v21 || (v20 & 1) == 0)
      {
        v22 = v19 == v21;
        if (v19 == v21)
        {
          v19 = 0;
        }

        v20 |= v22;
        v23 = v7[v19];
        if (v23 != -1)
        {
          v10 = __clz(__rbit64(~v23)) + (v19 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v18) & ~v7[v18 >> 6])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *(v7 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v24;
    *(v11 + 16) = v25;
    *(v11 + 32) = v26;
    result = sub_100075D50(v32, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_1001960E4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_100068FC4(&qword_100505420, &qword_10040CCB0);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = _swiftEmptyDictionarySingleton;
  }

  v3 = sub_10009393C(0, &qword_100504C80, NSNumber_ptr);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  v8 = (v5 + 63) >> 6;
  v9 = v2 + 8;
  if (v3 == &type metadata for String)
  {

    v26 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v32 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v32 >= v8)
      {
LABEL_36:

        return;
      }

      v7 = *(v4 + 8 * v32);
      ++v26;
      if (v7)
      {
        while (1)
        {
          v33 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v34 = v33 | (v32 << 6);
          v35 = *(*(a1 + 48) + 2 * v34);
          v36 = *(*(a1 + 56) + v34);
          v37.super.super.isa = UInt16._bridgeToObjectiveC()().super.super.isa;
          v38.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
          v39 = sub_10008D0F4(v37.super.super.isa);
          if (v40)
          {
            v27 = v2[6];
            v28 = *(v27 + 8 * v39);
            *(v27 + 8 * v39) = v37;
            v29 = v39;

            v30 = v2[7];
            v31 = *(v30 + 8 * v29);
            *(v30 + 8 * v29) = v38;

            v26 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            v41 = v2[2];
            if (v41 >= v2[3])
            {
              goto LABEL_40;
            }

            *(v9 + ((v39 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v39;
            *(v2[6] + 8 * v39) = v37;
            *(v2[7] + 8 * v39) = v38;
            v2[2] = v41 + 1;
            v26 = v32;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v32 = v26;
        }
      }
    }
  }

  else
  {

    v10 = 0;
    while (v7)
    {
LABEL_16:
      v13 = __clz(__rbit64(v7)) | (v10 << 6);
      v14 = *(*(a1 + 48) + 2 * v13);
      v15 = *(*(a1 + 56) + v13);
      v16.super.super.isa = UInt16._bridgeToObjectiveC()().super.super.isa;
      v17.super.super.isa = UInt8._bridgeToObjectiveC()().super.super.isa;
      v18 = NSObject._rawHashValue(seed:)(v2[5]);
      v19 = -1 << *(v2 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~v9[v20 >> 6]) == 0)
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
          v25 = v9[v21];
          if (v25 != -1)
          {
            v11 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v11 = __clz(__rbit64((-1 << v20) & ~v9[v20 >> 6])) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *(v9 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
      *(v2[6] + 8 * v11) = v16;
      *(v2[7] + 8 * v11) = v17;
      ++v2[2];
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v12);
      ++v10;
      if (v7)
      {
        v10 = v12;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
LABEL_40:
  __break(1u);
}

uint64_t sub_100196414(uint64_t (*a1)(uint64_t *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (1)
  {
    if (v6 == v7)
    {
      return 0;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v13 = v8;
    v9 = a1(&v13);

    if (v3)
    {
      return result;
    }

    if (v9)
    {
      return v7;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_100196530(uint64_t (*a1)(__int128 *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return 0;
  }

  v6 = 0;
  v7 = a3 + 32;
  while (1)
  {
    v10 = *(v7 + 16 * v6);
    sub_100069E2C(v10, *(&v10 + 1));
    v8 = a1(&v10);
    sub_10006A178(v10, *(&v10 + 1));
    if (v3 || (v8 & 1) != 0)
    {
      break;
    }

    if (v4 == ++v6)
    {
      return 0;
    }
  }

  return v6;
}

void sub_1001965F0(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_19:
    v6 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  while (v6 != v7)
  {
    if ((a3 & 0xC000000000000001) != 0)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v7 >= *(v5 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v8 = *(a3 + 8 * v7 + 32);
    }

    v9 = v8;
    v13 = v8;
    v10 = a1(&v13);

    if (v3 || (v10 & 1) != 0)
    {
      return;
    }

    if (__OFADD__(v7++, 1))
    {
      goto LABEL_18;
    }
  }
}

uint64_t sub_100196708(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_1001A1648(v3);
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_100196798(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1001A1634(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[2 * a1];
    v8 = v7[4];
    v9 = v7[5];
    memmove(v7 + 4, v7 + 6, 16 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_100196824()
{
  v0 = type metadata accessor for DSKSE();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  swift_allocObject();
  result = sub_100196864();
  qword_10051B358 = result;
  return result;
}

uint64_t sub_100196864()
{
  String.init(cString:)();
  Logger.init(subsystem:category:)();
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning) = 0;
  v1 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
  v2 = type metadata accessor for UUID();
  v3 = *(*(v2 - 8) + 56);
  v3(v0 + v1, 1, 1, v2);
  v3(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer) = 0;
  *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 0;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v6[4] = sub_1001A2020;
  v6[5] = v0;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_100193978;
  v6[3] = &unk_1004C9D98;
  v4 = _Block_copy(v6);

  os_state_add_handler();
  _Block_release(v4);
  return v0;
}

unint64_t sub_100196A50()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress);
  v67 = &type metadata for Bool;
  LOBYTE(v66) = v7;
  sub_100075D50(&v66, &v64);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v63 = &_swiftEmptyDictionarySingleton;
  sub_100315178(&v64, 0xD00000000000001CLL, 0x8000000100465470, isUniquelyReferenced_nonNull_native);
  v9 = v63;
  v10 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning);
  v67 = &type metadata for Bool;
  LOBYTE(v66) = v10;
  sub_100075D50(&v66, &v64);
  v11 = swift_isUniquelyReferenced_nonNull_native();
  v63 = v9;
  sub_100315178(&v64, 0x6E696E6E75527369, 0xE900000000000067, v11);
  v12 = v63;
  v13 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
  swift_beginAccess();
  v14 = *(v3 + 48);
  v15 = v14(v1 + v13, 1, v2);
  v57 = v1;
  if (v15)
  {
    v67 = &type metadata for String;
  }

  else
  {
    (*(v3 + 16))(v6, v1 + v13, v2);
    v17 = UUID.uuidString.getter();
    v16 = v18;
    (*(v3 + 8))(v6, v2);
    v67 = &type metadata for String;
    if (v16)
    {
      goto LABEL_5;
    }
  }

  v16 = 0xE400000000000000;
  v17 = 1701736302;
LABEL_5:
  *&v66 = v17;
  *(&v66 + 1) = v16;
  sub_100075D50(&v66, &v64);
  v19 = swift_isUniquelyReferenced_nonNull_native();
  v62 = v12;
  sub_100315178(&v64, 0xD000000000000019, 0x8000000100465490, v19);
  v20 = v62;
  v21 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
  v22 = v57;
  swift_beginAccess();
  if (v14(v22 + v21, 1, v2))
  {
    v23 = &type metadata for String;
    v67 = &type metadata for String;
    v24 = 0xE400000000000000;
    v25 = 1701736302;
    v26 = v22;
  }

  else
  {
    (*(v3 + 16))(v6, v22 + v21, v2);
    v25 = UUID.uuidString.getter();
    v24 = v27;
    (*(v3 + 8))(v6, v2);
    v23 = &type metadata for String;
    v67 = &type metadata for String;
    v26 = v22;
    if (!v24)
    {
      v24 = 0xE400000000000000;
      v25 = 1701736302;
    }
  }

  *&v66 = v25;
  *(&v66 + 1) = v24;
  sub_100075D50(&v66, &v64);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v61 = v20;
  sub_100315178(&v64, 0x65644972656E776FLL, 0xEF7265696669746ELL, v28);
  v29 = v61;
  v30 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
  swift_beginAccess();
  result = *(v26 + v30);
  if (result >> 62)
  {
    goto LABEL_29;
  }

  v32 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v33 = _swiftEmptyArrayStorage;
    if (!v32)
    {
      break;
    }

    *&v66 = _swiftEmptyArrayStorage;
    v34 = result;

    result = sub_10019F4C4(0, v32 & ~(v32 >> 63), 0);
    if (v32 < 0)
    {
      __break(1u);
      return result;
    }

    v56 = v29;
    v23 = 0;
    v26 = 0;
    v33 = v66;
    v35 = v34;
    v58 = v34 & 0xFFFFFFFFFFFFFF8;
    v59 = v34 & 0xC000000000000001;
    v36 = v34;
    while (1)
    {
      v37 = (v23 + 1);
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v59)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v23 >= *(v58 + 16))
        {
          goto LABEL_28;
        }

        v38 = *(v35 + 8 * v23 + 32);
      }

      v60 = v38;
      sub_10019E7A0(&v60, &v64);

      v29 = v64;
      *&v66 = v33;
      v40 = v33[2];
      v39 = v33[3];
      if (v40 >= v39 >> 1)
      {
        result = sub_10019F4C4((v39 > 1), v40 + 1, 1);
        v33 = v66;
      }

      v33[2] = v40 + 1;
      v33[v40 + 4] = v29;
      ++v23;
      v35 = v36;
      if (v37 == v32)
      {

        v26 = v57;
        v23 = &type metadata for String;
        v29 = v56;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:
    v55 = result;
    v32 = _CocoaArrayWrapper.endIndex.getter();
    result = v55;
  }

LABEL_23:
  v67 = sub_100068FC4(&unk_100503EC0, &unk_100417130);
  *&v66 = v33;
  sub_100075D50(&v66, &v64);
  v41 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v29;
  sub_100315178(&v64, 0xD000000000000013, 0x80000001004654C0, v41);
  v42 = v60;
  v43 = *(v26 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle) != 0;
  v67 = &type metadata for Bool;
  LOBYTE(v66) = v43;
  sub_100075D50(&v66, &v64);
  v44 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v42;
  sub_100315178(&v64, 0xD000000000000013, 0x80000001004654E0, v44);
  v45 = v60;
  v46 = *(v26 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
  if (v46)
  {
    v47 = sub_1003AE7DC(v46);
    v65 = &type metadata for Bool;
    LOBYTE(v64) = v47;
    sub_100075D50(&v64, &v66);
  }

  else
  {
    v67 = v23;
    *&v66 = 1701736302;
    *(&v66 + 1) = 0xE400000000000000;
  }

  sub_100075D50(&v66, &v64);
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v45;
  sub_100315178(&v64, 0x72656D69546573, 0xE700000000000000, v48);
  v49 = v60;
  LOBYTE(v66) = *(v26 + OBJC_IVAR____TtC10seserviced5DSKSE_state);
  v50 = String.init<A>(describing:)();
  v67 = v23;
  *&v66 = v50;
  *(&v66 + 1) = v51;
  sub_100075D50(&v66, &v64);
  v52 = swift_isUniquelyReferenced_nonNull_native();
  v60 = v49;
  sub_100315178(&v64, 0x6574617473, 0xE500000000000000, v52);
  sub_1001950D4(v60);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v54 = sub_100015DA0("dskse.state", isa);

  return v54;
}

void sub_100197184(uint64_t a1)
{
  v2 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v14 - v4;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Releasing SE by timer", v8, 2u);
  }

  v9 = *(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
  *(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle) = 0;

  v10 = type metadata accessor for UUID();
  v11 = *(*(v10 - 8) + 56);
  v11(v5, 1, 1, v10);
  v12 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
  swift_beginAccess();
  sub_1001A15AC(v5, a1 + v12);
  swift_endAccess();
  v11(v5, 1, 1, v10);
  v13 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
  swift_beginAccess();
  sub_1001A15AC(v5, a1 + v13);
  swift_endAccess();
  *(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 0;
  if (*(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) == 1)
  {
    *(a1 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) = 0;
    sub_1003375E0(0xD000000000000041, 0x8000000100465520, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
  }
}

void sub_1001973A8()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtC10seserviced5DSKSE_isRunning;
    v10 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_isRunning);
    v11 = Logger.logObject.getter();
    if (v10 == 1)
    {
      v12 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Stopping DSKSE", v13, 2u);
      }

      v14 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
      swift_beginAccess();
      v15 = *(v1 + v14);
      *(v1 + v14) = _swiftEmptyArrayStorage;

      sub_100194774(0);
      v16 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
      *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer) = 0;

      *(v1 + v9) = 0;
    }

    else
    {
      v17 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v11, v17, "DSKSE is not running", v18, 2u);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_100197634()
{
  v1 = v0;
  v146 = type metadata accessor for UUID();
  v144 = *(v146 - 8);
  v2 = *(v144 + 64);
  __chkstk_darwin(v146);
  v4 = &v127 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v5 = *(*(v143 - 8) + 64);
  __chkstk_darwin(v143);
  v7 = &v127 - v6;
  v8 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v127 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v145 = &v127 - v13;
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v127 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_225;
  }

LABEL_2:
  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v20 = v19;
  v21 = _dispatchPreconditionTest(_:)();
  v22 = *(v15 + 8);
  v15 += 8;
  v22(v18, v14);
  if ((v21 & 1) == 0)
  {
    __break(1u);
LABEL_227:
    if (!_CocoaArrayWrapper.endIndex.getter())
    {
      return;
    }

    goto LABEL_5;
  }

  v15 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
  swift_beginAccess();
  v23 = *(v1 + v15);
  if (v23 >> 62)
  {
    goto LABEL_227;
  }

  if (!*((v23 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    return;
  }

LABEL_5:
  v136 = v12;
  v12 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;

  v14 = Logger.logObject.getter();
  LOBYTE(v24) = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v24))
  {
    v21 = swift_slowAlloc();
    *v21 = 134217984;
    v25 = *(v1 + v15);
    if (v25 >> 62)
    {
      goto LABEL_231;
    }

    v26 = *((v25 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_8:
    *(v21 + 4) = v26;

    _os_log_impl(&_mh_execute_header, v14, v24, "Trying to process a queued request (pending %ld)", v21, 0xCu);
  }

  else
  {
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_state) <= 1u)
  {
    if (*(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_state))
    {
      goto LABEL_37;
    }

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&_mh_execute_header, v27, v28, "Requesting SE for a queued request", v29, 2u);
    }

LABEL_14:

    sub_1001992D4();
    return;
  }

  if (*(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_state) == 2)
  {
    goto LABEL_204;
  }

  v30 = *(v1 + v15);
  v131 = v4;
  v128 = v12;
  if (v30 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v31 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;

  v141 = v31;
  v142 = v1;
  swift_beginAccess();
  if (!v18)
  {
LABEL_203:

LABEL_204:
    v112 = Logger.logObject.getter();
    v113 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v112, v113))
    {
      v114 = swift_slowAlloc();
      *v114 = 0;
      _os_log_impl(&_mh_execute_header, v112, v113, "No candidate request found for current state", v114, 2u);
    }

    return;
  }

  v1 = 0;
  v139 = v30 & 0xFFFFFFFFFFFFFF8;
  v140 = v30 & 0xC000000000000001;
  v135 = (v144 + 16);
  v138 = v144 + 56;
  v15 = v144 + 48;
  v130 = (v144 + 32);
  v133 = v144 + 8;
  v14 = &unk_10050BE80;
  v12 = &unk_10040B360;
  v137 = v18;
  v134 = v30;
  v129 = v144 + 48;
  while (!v140)
  {
    if (v1 >= *(v139 + 16))
    {
LABEL_224:
      __break(1u);
LABEL_225:
      swift_once();
      goto LABEL_2;
    }

    v32 = *(v30 + 8 * v1 + 32);

    v21 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      goto LABEL_36;
    }

LABEL_26:
    v34 = *(v33 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
    v144 = v33;
    if (v34)
    {
      (*v135)(v145, v34 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v146);
      v35 = 0;
    }

    else
    {
      v35 = 1;
    }

    v37 = v145;
    v36 = v146;
    (*v138)(v145, v35, 1, v146);
    v18 = *(v143 + 48);
    sub_1000938D4(v37, v7, &unk_10050BE80, &unk_10040B360);
    sub_1000938D4(v142 + v141, &v7[v18], &unk_10050BE80, &unk_10040B360);
    v4 = *v15;
    if ((*v15)(v7, 1, v36) != 1)
    {
      v38 = v146;
      v39 = v136;
      sub_1000938D4(v7, v136, &unk_10050BE80, &unk_10040B360);
      if ((v4)(&v7[v18], 1, v38) == 1)
      {
        sub_100075768(v145, &unk_10050BE80, &unk_10040B360);
        (*v133)(v39, v38);
        v30 = v134;
        goto LABEL_21;
      }

      v4 = v131;
      (*v130)(v131, &v7[v18], v38);
      sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID);
      LODWORD(v132) = dispatch thunk of static Equatable.== infix(_:_:)();
      v18 = v7;
      v40 = *v133;
      (*v133)(v4, v38);
      sub_100075768(v145, &unk_10050BE80, &unk_10040B360);
      v40(v39, v38);
      v15 = v129;
      sub_100075768(v7, &unk_10050BE80, &unk_10040B360);

      v30 = v134;
      if ((v132 & 1) == 0)
      {
        goto LABEL_22;
      }

LABEL_210:
      v27 = Logger.logObject.getter();
      v115 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v27, v115))
      {
        v116 = swift_slowAlloc();
        *v116 = 0;
        _os_log_impl(&_mh_execute_header, v27, v115, "Processing queued request for owner", v116, 2u);
      }

      goto LABEL_14;
    }

    sub_100075768(v145, &unk_10050BE80, &unk_10040B360);
    if ((v4)(&v7[v18], 1, v146) == 1)
    {
      sub_100075768(v7, &unk_10050BE80, &unk_10040B360);

      goto LABEL_210;
    }

LABEL_21:
    sub_100075768(v7, &qword_1005031D0, &unk_100413B20);

LABEL_22:
    ++v1;
    if (v21 == v137)
    {
      goto LABEL_203;
    }
  }

  v33 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v21 = v1 + 1;
  if (!__OFADD__(v1, 1))
  {
    goto LABEL_26;
  }

LABEL_36:
  __break(1u);
LABEL_37:
  v41 = *(v1 + v15);
  if (v41 >> 62)
  {
    if (v41 < 0)
    {
      v126 = *(v1 + v15);
    }

    v14 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v14)
  {
LABEL_207:

    return;
  }

  v24 = 0;
  v139 = v41 & 0xC000000000000001;
  v138 = v41 & 0xFFFFFFFFFFFFFF8;
  v137 = v41 + 32;
  v135 = v41;
  v136 = v14;
  v142 = v1;
  v128 = v12;
  while (2)
  {
    if (v139)
    {
      v141 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v42 = __OFADD__(v24++, 1);
      if (v42)
      {
        goto LABEL_229;
      }
    }

    else
    {
      if (v24 >= *(v138 + 16))
      {
        goto LABEL_230;
      }

      v141 = *(v137 + 8 * v24);

      v42 = __OFADD__(v24++, 1);
      if (v42)
      {
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
LABEL_231:
        v26 = _CocoaArrayWrapper.endIndex.getter();
        goto LABEL_8;
      }
    }

    v140 = v24;
    v43 = OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    v14 = v141;
    v21 = &qword_100502438;
    v15 = &qword_100409990;
    sub_1000938D4(v141 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, v154, &qword_100502438, &qword_100409990);
    if (!v155)
    {

      sub_100075768(v154, &qword_100502438, &qword_100409990);
      goto LABEL_42;
    }

    sub_100075768(v154, &qword_100502438, &qword_100409990);
    v134 = v43;
    sub_1000938D4(v14 + v43, v154, &qword_100502438, &qword_100409990);
    if (!v155)
    {
      __break(1u);
      goto LABEL_260;
    }

    v146 = *sub_1000752B0(v154, v155);
    v44 = [objc_opt_self() sessionManager];
    v45 = [v44 getActiveDCKSessions];

    sub_10009393C(0, &qword_100505370, off_1004BE540);
    v14 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v18 = v14;
    if (!(v14 >> 62))
    {
      v12 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v12)
      {
        goto LABEL_50;
      }

LABEL_41:

      sub_1000752F4(v154);
LABEL_42:
      v24 = v140;
      if (v140 == v136)
      {
        goto LABEL_207;
      }

      continue;
    }

    break;
  }

  v12 = _CocoaArrayWrapper.endIndex.getter();
  if (!v12)
  {
    goto LABEL_41;
  }

LABEL_50:
  v1 = 0;
  v144 = v14 & 0xFFFFFFFFFFFFFF8;
  v145 = v14 & 0xC000000000000001;
  v143 = v12;
  while (2)
  {
    if (v145)
    {
      v48 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v1 >= *(v144 + 16))
      {
        goto LABEL_223;
      }

      v48 = *(v18 + 8 * v1 + 32);
    }

    v4 = v48;
    v7 = (v1 + 1);
    if (__OFADD__(v1, 1))
    {
      __break(1u);
LABEL_223:
      __break(1u);
      goto LABEL_224;
    }

    v49 = [v48 activeEndpoint];
    if (!v49)
    {
      v15 = 0;
      v46 = *(v146 + 16);
      v21 = *(v146 + 24);
      v47 = 0xF000000000000000;
LABEL_52:
      sub_100069E2C(v46, v21);

      if (v21 >> 60 == 15)
      {

        sub_10006A2D0(v15, v47);
        goto LABEL_217;
      }

LABEL_53:
      sub_10006A2D0(v15, v47);
      sub_10006A2D0(v46, v21);
LABEL_54:
      ++v1;
      if (v7 == v12)
      {
        goto LABEL_41;
      }

      continue;
    }

    break;
  }

  v50 = v18;
  v14 = v49;
  v51 = [v49 publicKeyIdentifier];

  v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = v52;

  v46 = *(v146 + 16);
  v21 = *(v146 + 24);
  if (v47 >> 60 == 15)
  {
    v18 = v50;
    v12 = v143;
    goto LABEL_52;
  }

  v18 = v50;
  if (v21 >> 60 == 15)
  {
    sub_100069E2C(*(v146 + 16), *(v146 + 24));

    v12 = v143;
    goto LABEL_53;
  }

  v53 = v47 >> 62;
  v14 = v21 >> 62;
  if (v47 >> 62 != 3)
  {
    if (v53 > 1)
    {
      if (v53 == 2)
      {
        v56 = *(v15 + 16);
        v55 = *(v15 + 24);
        v42 = __OFSUB__(v55, v56);
        v54 = v55 - v56;
        if (v42)
        {
          goto LABEL_239;
        }

        goto LABEL_81;
      }

      v54 = 0;
      if (v14 <= 1)
      {
        goto LABEL_82;
      }

      goto LABEL_87;
    }

    if (v53)
    {
      LODWORD(v54) = HIDWORD(v15) - v15;
      if (__OFSUB__(HIDWORD(v15), v15))
      {
        goto LABEL_238;
      }

      v54 = v54;
      goto LABEL_81;
    }

    v54 = BYTE6(v47);
    if (v14 > 1)
    {
      goto LABEL_87;
    }

LABEL_82:
    if (v14)
    {
      LODWORD(v57) = HIDWORD(v46) - v46;
      if (__OFSUB__(HIDWORD(v46), v46))
      {
        __break(1u);
LABEL_237:
        __break(1u);
LABEL_238:
        __break(1u);
LABEL_239:
        __break(1u);
LABEL_240:
        __break(1u);
LABEL_241:
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        __break(1u);
LABEL_244:
        __break(1u);
LABEL_245:
        __break(1u);
LABEL_246:
        __break(1u);
LABEL_247:
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
      }

      v57 = v57;
    }

    else
    {
      v57 = BYTE6(v21);
    }

LABEL_89:
    if (v54 != v57)
    {
      goto LABEL_101;
    }

    if (v54 < 1)
    {
      goto LABEL_213;
    }

    if (v53 > 1)
    {
      if (v53 != 2)
      {
        memset(__s1, 0, 14);
        if (v14)
        {
          if (v14 != 2)
          {
            v133 = v46;
            v132 = (v46 >> 32) - v46;
            if (v46 >> 32 < v46)
            {
              goto LABEL_244;
            }

            sub_100069E2C(v46, v21);
            sub_100069E2C(v46, v21);
            sub_10006A2BC(v15, v47);
            v84 = __DataStorage._bytes.getter();
            if (!v84)
            {
              goto LABEL_274;
            }

            v85 = v84;
            v86 = __DataStorage._offset.getter();
            if (__OFSUB__(v133, v86))
            {
              goto LABEL_249;
            }

            v63 = (v133 - v86 + v85);
            v64 = __DataStorage._length.getter();
            if (!v63)
            {
              goto LABEL_275;
            }

            goto LABEL_137;
          }

          v69 = *(v46 + 24);
          v133 = *(v46 + 16);
          v132 = v69;
          sub_100069E2C(v46, v21);
          sub_100069E2C(v46, v21);
          sub_10006A2BC(v15, v47);
          v70 = __DataStorage._bytes.getter();
          if (v70)
          {
            v71 = v70;
            v72 = __DataStorage._offset.getter();
            v73 = v133;
            if (__OFSUB__(v133, v72))
            {
              goto LABEL_254;
            }

            v131 = (v133 - v72 + v71);
          }

          else
          {
            v131 = 0;
            v73 = v133;
          }

          v102 = v132 - v73;
          if (__OFSUB__(v132, v73))
          {
            goto LABEL_246;
          }

          v103 = __DataStorage._length.getter();
          v88 = v131;
          if (!v131)
          {
            goto LABEL_262;
          }

LABEL_158:
          if (v103 >= v102)
          {
            v87 = v102;
          }

          else
          {
            v87 = v103;
          }

LABEL_161:
          v14 = memcmp(__s1, v88, v87);

          sub_10006A178(v46, v21);
          sub_10006A2D0(v15, v47);
          sub_10006A2D0(v46, v21);
          sub_10006A2D0(v15, v47);
          v18 = v50;
LABEL_162:
          v12 = v143;
          if (!v14)
          {
            goto LABEL_216;
          }

          goto LABEL_54;
        }

LABEL_115:
        __s2 = v46;
        v148 = v21;
        v149 = BYTE2(v21);
        v150 = BYTE3(v21);
        v151 = BYTE4(v21);
        v152 = BYTE5(v21);
        sub_100069E2C(v46, v21);
        sub_100069E2C(v46, v21);
        sub_10006A2BC(v15, v47);
        v14 = memcmp(__s1, &__s2, BYTE6(v21));

        sub_10006A178(v46, v21);
        sub_10006A2D0(v15, v47);
        sub_10006A2D0(v46, v21);
        sub_10006A2D0(v15, v47);
        goto LABEL_162;
      }

      v133 = *(v15 + 16);
      sub_100069E2C(v46, v21);
      sub_100069E2C(v46, v21);
      sub_10006A2BC(v15, v47);
      v65 = __DataStorage._bytes.getter();
      if (v65)
      {
        v132 = v65;
        v66 = __DataStorage._offset.getter();
        if (__OFSUB__(v133, v66))
        {
          goto LABEL_241;
        }

        v133 = v133 - v66 + v132;
      }

      else
      {
        v133 = 0;
      }

      __DataStorage._length.getter();
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          v132 = (v46 >> 32) - v46;
          if (v46 >> 32 < v46)
          {
            goto LABEL_247;
          }

          v74 = __DataStorage._bytes.getter();
          if (v74)
          {
            v131 = v74;
            v75 = __DataStorage._offset.getter();
            if (__OFSUB__(v46, v75))
            {
              goto LABEL_257;
            }

            v76 = &v131[v46 - v75];
          }

          else
          {
            v76 = 0;
          }

          v107 = __DataStorage._length.getter();
          v108 = v132;
          if (v107 < v132)
          {
            v108 = v107;
          }

          v94 = v133;
          if (!v133)
          {
            goto LABEL_266;
          }

          if (!v76)
          {
            goto LABEL_265;
          }

LABEL_192:
          v18 = v50;
          v12 = v143;
          if (v94 == v76)
          {
            goto LABEL_214;
          }

          v100 = v108;
          v101 = v76;
LABEL_194:
          v14 = memcmp(v94, v101, v100);

          sub_10006A2D0(v46, v21);
          sub_10006A178(v46, v21);
          sub_10006A2D0(v15, v47);
          sub_10006A2D0(v15, v47);
          if (!v14)
          {
            goto LABEL_216;
          }

          goto LABEL_54;
        }

        v94 = v133;
        v18 = v50;
        __s1[0] = v46;
        LOWORD(__s1[1]) = v21;
        BYTE2(__s1[1]) = BYTE2(v21);
        BYTE3(__s1[1]) = BYTE3(v21);
        BYTE4(__s1[1]) = BYTE4(v21);
        BYTE5(__s1[1]) = BYTE5(v21);
        v12 = v143;
        if (!v133)
        {
          goto LABEL_261;
        }

LABEL_150:
        v100 = BYTE6(v21);
        v101 = __s1;
        goto LABEL_194;
      }

      v89 = *(v46 + 24);
      v132 = *(v46 + 16);
      v131 = v89;
      v90 = __DataStorage._bytes.getter();
      if (v90)
      {
        v91 = v90;
        v92 = __DataStorage._offset.getter();
        v93 = v132;
        if (__OFSUB__(v132, v92))
        {
          goto LABEL_255;
        }

        v130 = (v132 - v92 + v91);
      }

      else
      {
        v130 = 0;
        v93 = v132;
      }

      v104 = &v131[-v93];
      if (__OFSUB__(v131, v93))
      {
        goto LABEL_250;
      }

      v105 = __DataStorage._length.getter();
      if (v105 >= v104)
      {
        v106 = v104;
      }

      else
      {
        v106 = v105;
      }

      v94 = v133;
      if (!v133)
      {
        goto LABEL_268;
      }

      v101 = v130;
      if (!v130)
      {
        goto LABEL_267;
      }
    }

    else
    {
      if (!v53)
      {
        __s1[0] = v15;
        LOWORD(__s1[1]) = v47;
        BYTE2(__s1[1]) = BYTE2(v47);
        BYTE3(__s1[1]) = BYTE3(v47);
        BYTE4(__s1[1]) = BYTE4(v47);
        BYTE5(__s1[1]) = BYTE5(v47);
        if (v14)
        {
          if (v14 == 1)
          {
            v133 = v46;
            v132 = (v46 >> 32) - v46;
            if (v46 >> 32 < v46)
            {
              goto LABEL_243;
            }

            sub_100069E2C(v46, v21);
            sub_100069E2C(v46, v21);
            sub_10006A2BC(v15, v47);
            v60 = __DataStorage._bytes.getter();
            if (!v60)
            {
              goto LABEL_264;
            }

            v61 = v60;
            v62 = __DataStorage._offset.getter();
            if (__OFSUB__(v133, v62))
            {
              goto LABEL_248;
            }

            v63 = (v133 - v62 + v61);
            v64 = __DataStorage._length.getter();
            if (!v63)
            {
              goto LABEL_263;
            }

LABEL_137:
            if (v64 >= v132)
            {
              v87 = v132;
            }

            else
            {
              v87 = v64;
            }

            v88 = v63;
            goto LABEL_161;
          }

          v79 = *(v46 + 24);
          v133 = *(v46 + 16);
          v132 = v79;
          sub_100069E2C(v46, v21);
          sub_100069E2C(v46, v21);
          sub_10006A2BC(v15, v47);
          v80 = __DataStorage._bytes.getter();
          if (v80)
          {
            v81 = v80;
            v82 = __DataStorage._offset.getter();
            v83 = v133;
            if (__OFSUB__(v133, v82))
            {
              goto LABEL_253;
            }

            v131 = (v133 - v82 + v81);
          }

          else
          {
            v131 = 0;
            v83 = v133;
          }

          v102 = v132 - v83;
          if (__OFSUB__(v132, v83))
          {
            goto LABEL_245;
          }

          v103 = __DataStorage._length.getter();
          v88 = v131;
          if (!v131)
          {
            goto LABEL_276;
          }

          goto LABEL_158;
        }

        goto LABEL_115;
      }

      v133 = v15;
      if (v15 > v15 >> 32)
      {
        goto LABEL_240;
      }

      sub_100069E2C(v46, v21);
      sub_100069E2C(v46, v21);
      sub_10006A2BC(v15, v47);
      v67 = __DataStorage._bytes.getter();
      if (v67)
      {
        v132 = v67;
        v68 = __DataStorage._offset.getter();
        if (__OFSUB__(v133, v68))
        {
          goto LABEL_242;
        }

        v133 = v133 - v68 + v132;
      }

      else
      {
        v133 = 0;
      }

      __DataStorage._length.getter();
      if (v14 != 2)
      {
        if (v14 == 1)
        {
          v132 = (v46 >> 32) - v46;
          if (v46 >> 32 < v46)
          {
            goto LABEL_251;
          }

          v77 = __DataStorage._bytes.getter();
          if (v77)
          {
            v131 = v77;
            v78 = __DataStorage._offset.getter();
            if (__OFSUB__(v46, v78))
            {
              goto LABEL_258;
            }

            v76 = &v131[v46 - v78];
          }

          else
          {
            v76 = 0;
          }

          v111 = __DataStorage._length.getter();
          v108 = v132;
          if (v111 < v132)
          {
            v108 = v111;
          }

          v94 = v133;
          if (!v133)
          {
            goto LABEL_271;
          }

          if (!v76)
          {
            goto LABEL_270;
          }

          goto LABEL_192;
        }

        v94 = v133;
        v18 = v50;
        __s1[0] = v46;
        LOWORD(__s1[1]) = v21;
        BYTE2(__s1[1]) = BYTE2(v21);
        BYTE3(__s1[1]) = BYTE3(v21);
        BYTE4(__s1[1]) = BYTE4(v21);
        BYTE5(__s1[1]) = BYTE5(v21);
        v12 = v143;
        if (!v133)
        {
          goto LABEL_269;
        }

        goto LABEL_150;
      }

      v95 = *(v46 + 24);
      v132 = *(v46 + 16);
      v131 = v95;
      v96 = __DataStorage._bytes.getter();
      if (v96)
      {
        v97 = v96;
        v98 = __DataStorage._offset.getter();
        v99 = v132;
        if (__OFSUB__(v132, v98))
        {
          goto LABEL_256;
        }

        v130 = (v132 - v98 + v97);
      }

      else
      {
        v130 = 0;
        v99 = v132;
      }

      v109 = &v131[-v99];
      if (__OFSUB__(v131, v99))
      {
        goto LABEL_252;
      }

      v110 = __DataStorage._length.getter();
      if (v110 >= v109)
      {
        v106 = v109;
      }

      else
      {
        v106 = v110;
      }

      v94 = v133;
      if (!v133)
      {
        goto LABEL_273;
      }

      v101 = v130;
      if (!v130)
      {
        goto LABEL_272;
      }
    }

    v18 = v50;
    v12 = v143;
    if (v94 == v101)
    {
      goto LABEL_214;
    }

    v100 = v106;
    goto LABEL_194;
  }

  v54 = 0;
  if (!v15 && v47 == 0xC000000000000000 && v21 >> 62 == 3)
  {
    v54 = 0;
    if (!v46 && v21 == 0xC000000000000000)
    {
      sub_100069E2C(0, 0xC000000000000000);
      sub_100069E2C(0, 0xC000000000000000);
      sub_10006A2BC(0, 0xC000000000000000);

      sub_10006A2D0(0, 0xC000000000000000);
      sub_10006A178(0, 0xC000000000000000);
      sub_10006A2D0(0, 0xC000000000000000);
      v15 = 0;
      goto LABEL_215;
    }
  }

LABEL_81:
  if (v14 <= 1)
  {
    goto LABEL_82;
  }

LABEL_87:
  if (v14 == 2)
  {
    v59 = *(v46 + 16);
    v58 = *(v46 + 24);
    v42 = __OFSUB__(v58, v59);
    v57 = v58 - v59;
    if (v42)
    {
      goto LABEL_237;
    }

    goto LABEL_89;
  }

  if (v54)
  {
LABEL_101:
    sub_100069E2C(*(v146 + 16), *(v146 + 24));
    sub_100069E2C(v46, v21);
    sub_10006A2BC(v15, v47);

    sub_10006A2D0(v46, v21);
    sub_10006A178(v46, v21);
    sub_10006A2D0(v15, v47);
    sub_10006A2D0(v15, v47);
    v12 = v143;
    goto LABEL_54;
  }

LABEL_213:
  sub_100069E2C(*(v146 + 16), *(v146 + 24));
  sub_100069E2C(v46, v21);
  sub_10006A2BC(v15, v47);
LABEL_214:

  sub_10006A2D0(v46, v21);
  sub_10006A178(v46, v21);
  sub_10006A2D0(v15, v47);
LABEL_215:
  sub_10006A2D0(v15, v47);
LABEL_216:

LABEL_217:
  sub_1000752F4(v154);
  v117 = v141;

  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    v154[0] = v121;
    *v120 = 136315138;
    v122 = *(v117 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
    v123 = *(v117 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

    v124 = sub_1002FFA0C(v122, v123, v154);

    *(v120 + 4) = v124;
    _os_log_impl(&_mh_execute_header, v118, v119, "Requesting handoff token for %s", v120, 0xCu);
    sub_1000752F4(v121);
  }

  sub_1000938D4(v117 + v134, v154, &qword_100502438, &qword_100409990);
  if (v155)
  {
    v125 = *sub_1000752B0(v154, v155);
    sub_1002DF844();

    sub_1000752F4(v154);
    return;
  }

LABEL_260:
  __break(1u);
LABEL_261:
  __break(1u);
LABEL_262:
  __break(1u);
LABEL_263:
  __break(1u);
LABEL_264:
  __DataStorage._length.getter();
  __break(1u);
LABEL_265:
  __break(1u);
LABEL_266:
  __break(1u);
LABEL_267:
  __break(1u);
LABEL_268:
  __break(1u);
LABEL_269:
  __break(1u);
LABEL_270:
  __break(1u);
LABEL_271:
  __break(1u);
LABEL_272:
  __break(1u);
LABEL_273:
  __break(1u);
LABEL_274:
  __DataStorage._length.getter();
LABEL_275:
  __break(1u);
LABEL_276:
  __break(1u);
}

uint64_t sub_1001990A4(uint64_t a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (&v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  LOBYTE(v8) = _dispatchPreconditionTest(_:)();
  v10 = (*(v4 + 8))(v7, v3);
  if (v8)
  {
    if (!a1)
    {
      v15 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
      swift_beginAccess();
      v16 = *(v1 + v15);
      *(v1 + v15) = _swiftEmptyArrayStorage;
    }

    v11 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
    swift_beginAccess();

    v10 = sub_1001A1C34((v1 + v11));
    v12 = *(v1 + v11);
    if (!(v12 >> 62))
    {
      v13 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v13 >= v10)
      {
LABEL_7:
        sub_1001A2834(v10, v13, type metadata accessor for SERequest);
        swift_endAccess();
      }

      goto LABEL_11;
    }
  }

  else
  {
    __break(1u);
  }

  v17 = v10;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  v10 = v17;
  if (v13 >= v17)
  {
    goto LABEL_7;
  }

LABEL_11:
  __break(1u);
  result = swift_endAccess();
  __break(1u);
  return result;
}

void sub_1001992D4()
{
  v242 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v0 = *(*(v242 - 8) + 64);
  __chkstk_darwin(v242);
  v244 = &v230 - v1;
  v2 = type metadata accessor for UUID();
  v257 = *(v2 - 8);
  v3 = *(v257 + 64);
  v4 = __chkstk_darwin(v2);
  v6 = &v230 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v246 = &v230 - v7;
  v8 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v230 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v241 = &v230 - v14;
  v15 = __chkstk_darwin(v13);
  v243 = &v230 - v16;
  v17 = __chkstk_darwin(v15);
  v247 = &v230 - v18;
  v19 = __chkstk_darwin(v17);
  v245 = &v230 - v20;
  v21 = __chkstk_darwin(v19);
  v23 = &v230 - v22;
  __chkstk_darwin(v21);
  v25 = &v230 - v24;
  v26 = type metadata accessor for DispatchPredicate();
  v27 = *(v26 - 8);
  v28 = v27[8];
  __chkstk_darwin(v26);
  v30 = &v230 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_243;
  }

LABEL_2:
  v31 = qword_10051B7F0;
  *v30 = qword_10051B7F0;
  v33 = v27 + 13;
  v32 = v27[13];
  LODWORD(v251) = enum case for DispatchPredicate.onQueue(_:);
  v250 = v32;
  (v32)(v30);
  v34 = v31;
  v35 = _dispatchPreconditionTest(_:)();
  v36 = v26;
  v26 = v35;
  v38 = v27[1];
  v37 = v27 + 1;
  v253 = v36;
  v249 = v38;
  v38(v30);
  if ((v26 & 1) == 0)
  {
    __break(1u);
LABEL_245:
    v23 = _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_28;
  }

  v248 = v30;
  v252 = v34;
  v30 = v254;
  v39 = *(v254 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
  if (v39)
  {
    v240 = v37;
    v239 = v33;
    v237 = v12;
    v236 = v6;
    v40 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
    v238 = v39;
    v41 = v39;
    v255 = v40;
    v256 = v41;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 0;
      _os_log_impl(&_mh_execute_header, v42, v43, "Already have an SE handle", v44, 2u);
    }

    v45 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
    v46 = v254;
    swift_beginAccess();
    sub_1000938D4(v46 + v45, v25, &unk_10050BE80, &unk_10040B360);
    v47 = v257 + 48;
    v48 = *(v257 + 48);
    v49 = v2;
    v50 = v48(v25, 1, v2);
    sub_100075768(v25, &unk_10050BE80, &unk_10040B360);
    if (v50 == 1 || (v51 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier, swift_beginAccess(), sub_1000938D4(v254 + v51, v23, &unk_10050BE80, &unk_10040B360), LODWORD(v51) = v48(v23, 1, v49), v52 = v254, sub_100075768(v23, &unk_10050BE80, &unk_10040B360), v51 == 1) || *(v52 + OBJC_IVAR____TtC10seserviced5DSKSE_state) != 3)
    {
      v73 = Logger.logObject.getter();
      v74 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        *v75 = 0;
        _os_log_impl(&_mh_execute_header, v73, v74, "Have SE handle with bad state", v75, 2u);
      }

      sub_100194774(0);
      sub_100197634(v76);
    }

    else
    {
      v233 = v48;
      v234 = v47;
      v235 = v49;
      v53 = sub_10019B758();
      if (v53)
      {
        v54 = v53;
        swift_retain_n();
        v55 = Logger.logObject.getter();
        v56 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v55, v56))
        {
          v57 = swift_slowAlloc();
          v58 = swift_slowAlloc();
          __s1[0] = v58;
          *v57 = 136315138;
          v60 = *(v54 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
          v59 = *(v54 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

          v61 = sub_1002FFA0C(v60, v59, __s1);

          *(v57 + 4) = v61;
          _os_log_impl(&_mh_execute_header, v55, v56, "Got request for %s", v57, 0xCu);
          sub_1000752F4(v58);
        }

        v62 = v235;
        v63 = v253;
        if (*(v54 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8))
        {
LABEL_13:
          v64 = v252;
          v65 = v248;
          *v248 = v252;
          (v250)(v65, v251, v63);
          v66 = v64;
          LOBYTE(v64) = _dispatchPreconditionTest(_:)();
          v249(v65, v63);
          if (v64)
          {
            v67 = *(v254 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
            if (v67)
            {
              v68 = v67;
              if (sub_1003AE7DC(v68))
              {
                sub_1003AE754(v68);
              }
            }

            v70 = *(v54 + 32);
            v69 = *(v54 + 40);
            v71 = v256;

            v70(v238, 0);

            if (*(v54 + 24))
            {
              sub_100194774(0);
            }

            else
            {
              sub_10019CE50(*(v54 + 16));
            }

            goto LABEL_237;
          }

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
          __break(1u);
LABEL_262:
          __break(1u);
LABEL_263:
          __break(1u);
LABEL_264:
          __break(1u);
LABEL_265:
          __break(1u);
LABEL_266:
          __break(1u);
LABEL_267:
          __break(1u);
LABEL_268:
          __break(1u);
LABEL_269:
          __break(1u);
        }

        v160 = *(v54 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks);
        if ((v160 & 1) == 0)
        {
          if ((v160 & 2) == 0)
          {
            goto LABEL_13;
          }

          v161 = v54 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
          if ((*(v54 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber + 8) & 1) == 0)
          {
            v162 = *(v54 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
            if (v162)
            {
              if (*v161 == *(v162 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber))
              {
                goto LABEL_13;
              }
            }
          }

          v82 = Logger.logObject.getter();
          v163 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v82, v163))
          {
            v164 = -1;
            v165 = swift_slowAlloc();
            *v165 = 134218240;
            v166 = *v161;
            if (*(v161 + 8))
            {
              v166 = -1;
            }

            *(v165 + 4) = v166;
            *(v165 + 12) = 2048;
            v167 = *(v54 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
            if (v167)
            {
              v164 = *(v167 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber);
            }

            *(v165 + 14) = v164;
            v168 = v165;

            _os_log_impl(&_mh_execute_header, v82, v163, "Got different sequence numbers request %ld current %ld", v168, 0x16u);

            goto LABEL_220;
          }

LABEL_219:

LABEL_220:
          sub_100197634(v169);

LABEL_238:

          return;
        }

        v170 = OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier;
        v171 = v245;
        sub_1000938D4(v54 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier, v245, &unk_10050BE80, &unk_10040B360);
        if (v233(v171, 1, v62) == 1)
        {
          sub_100075768(v171, &unk_10050BE80, &unk_10040B360);
          goto LABEL_228;
        }

        v239 = v170;
        v188 = v257;
        v189 = *(v257 + 32);
        v190 = v246;
        v232 = v257 + 32;
        v231 = v189;
        v189(v246, v171, v62);
        v191 = *(v188 + 16);
        v192 = v247;
        v191(v247, v190, v62);
        v193 = *(v188 + 56);
        v194 = 1;
        v193(v192, 0, 1, v62);
        v195 = *(v54 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
        if (v195)
        {
          v196 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v197 = v191;
          v198 = v243;
          v197(v243, v195 + v196, v62);
          v194 = 0;
        }

        else
        {
          v198 = v243;
        }

        v193(v198, v194, 1, v62);
        v199 = *(v242 + 48);
        v200 = v247;
        v201 = v244;
        sub_1000938D4(v247, v244, &unk_10050BE80, &unk_10040B360);
        v245 = v199;
        sub_1000938D4(v198, v201 + v199, &unk_10050BE80, &unk_10040B360);
        v202 = v233;
        if (v233(v201, 1, v62) == 1)
        {
          sub_100075768(v198, &unk_10050BE80, &unk_10040B360);
          sub_100075768(v200, &unk_10050BE80, &unk_10040B360);
          (*(v257 + 8))(v246, v62);
          if (v202(v201 + v245, 1, v62) == 1)
          {
            sub_100075768(v201, &unk_10050BE80, &unk_10040B360);
            v63 = v253;
            goto LABEL_13;
          }
        }

        else
        {
          v203 = v241;
          sub_1000938D4(v201, v241, &unk_10050BE80, &unk_10040B360);
          v204 = v245;
          if (v202(v201 + v245, 1, v62) != 1)
          {
            v228 = v236;
            v231(v236, v201 + v204, v62);
            sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID);
            LODWORD(v245) = dispatch thunk of static Equatable.== infix(_:_:)();
            v229 = *(v257 + 8);
            v229(v228, v62);
            sub_100075768(v198, &unk_10050BE80, &unk_10040B360);
            sub_100075768(v247, &unk_10050BE80, &unk_10040B360);
            v229(v246, v62);
            v229(v203, v62);
            sub_100075768(v244, &unk_10050BE80, &unk_10040B360);
            v63 = v253;
            v170 = v239;
            if (v245)
            {
              goto LABEL_13;
            }

LABEL_228:

            v206 = v54;
            v207 = Logger.logObject.getter();
            v208 = static os_log_type_t.info.getter();

            if (os_log_type_enabled(v207, v208))
            {
              v209 = v62;
              v210 = 1819047278;
              v211 = swift_slowAlloc();
              v265 = swift_slowAlloc();
              *v211 = 136315394;
              v212 = v206;
              v213 = v237;
              sub_1000938D4(v206 + v170, v237, &unk_10050BE80, &unk_10040B360);
              if (v233(v213, 1, v209) == 1)
              {
                sub_100075768(v213, &unk_10050BE80, &unk_10040B360);
                v214 = 0xE400000000000000;
                v215 = 1819047278;
              }

              else
              {
                v216 = UUID.uuidString.getter();
                v214 = v217;
                (*(v257 + 8))(v213, v209);
                v215 = v216;
              }

              v218 = sub_1002FFA0C(v215, v214, &v265);

              *(v211 + 4) = v218;
              *(v211 + 12) = 2080;
              v219 = *(v212 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
              if (v219)
              {
                v220 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
                swift_beginAccess();
                v221 = v257;
                v222 = v219 + v220;
                v223 = v236;
                v224 = v235;
                (*(v257 + 16))(v236, v222, v235);
                v210 = UUID.uuidString.getter();
                v226 = v225;
                (*(v221 + 8))(v223, v224);
              }

              else
              {
                v226 = 0xE400000000000000;
              }

              v71 = v256;
              v227 = sub_1002FFA0C(v210, v226, &v265);

              *(v211 + 14) = v227;
              _os_log_impl(&_mh_execute_header, v207, v208, "Got different connection identifiers request %s current %s", v211, 0x16u);
              swift_arrayDestroy();
            }

            else
            {

              v71 = v256;
            }

LABEL_237:
            sub_100197634(v72);

            goto LABEL_238;
          }

          sub_100075768(v198, &unk_10050BE80, &unk_10040B360);
          sub_100075768(v247, &unk_10050BE80, &unk_10040B360);
          v205 = *(v257 + 8);
          v205(v246, v62);
          v205(v203, v62);
        }

        sub_100075768(v201, &qword_1005031D0, &unk_100413B20);
        v170 = v239;
        goto LABEL_228;
      }
    }

    return;
  }

  LODWORD(v249) = arc4random();
  v242 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
  v77 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v77, v26))
  {
    v78 = swift_slowAlloc();
    *v78 = 67109120;
    *(v78 + 4) = v249;
    _os_log_impl(&_mh_execute_header, v77, v26, "Requesting SE identifier %u", v78, 8u);
  }

  v79 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
  swift_beginAccess();
  v33 = *(v30 + v79);
  if (v33 >> 62)
  {
    goto LABEL_245;
  }

  v23 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_28:

  if (!v23)
  {
LABEL_190:

    v159 = v254;
    goto LABEL_213;
  }

  v25 = 0;
  v2 = v33 & 0xC000000000000001;
  v12 = (v33 & 0xFFFFFFFFFFFFFF8);
  v27 = v33 + 4;
  v248 = v33;
  v246 = v23;
  v245 = v33 & 0xC000000000000001;
  v244 = (v33 & 0xFFFFFFFFFFFFFF8);
  v243 = (v33 + 4);
  while (1)
  {
    while (1)
    {
      if (v2)
      {
        v80 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v81 = __OFADD__(v25++, 1);
        if (v81)
        {
          goto LABEL_241;
        }
      }

      else
      {
        if (v25 >= *(v12 + 2))
        {
          goto LABEL_242;
        }

        v80 = v27[v25];

        v81 = __OFADD__(v25++, 1);
        if (v81)
        {
LABEL_241:
          __break(1u);
LABEL_242:
          __break(1u);
LABEL_243:
          swift_once();
          goto LABEL_2;
        }
      }

      v26 = OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
      v6 = &qword_100502438;
      v30 = &qword_100409990;
      sub_1000938D4(v80 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, aBlock, &qword_100502438, &qword_100409990);
      if (v267)
      {
        break;
      }

      sub_100075768(aBlock, &qword_100502438, &qword_100409990);
      if (v25 == v23)
      {
        goto LABEL_190;
      }
    }

    v250 = v25;
    sub_100075768(aBlock, &qword_100502438, &qword_100409990);
    v251 = v80;
    v247 = v26;
    sub_1000938D4(v80 + v26, aBlock, &qword_100502438, &qword_100409990);
    if (!v267)
    {
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __DataStorage._length.getter();
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __break(1u);
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      __break(1u);
LABEL_285:
      __DataStorage._length.getter();
LABEL_286:
      __break(1u);
LABEL_287:
      __break(1u);
      return;
    }

    v257 = *sub_1000752B0(aBlock, v267);
    v82 = [objc_opt_self() sessionManager];
    v26 = [v82 getActiveDCKSessions];

    sub_10009393C(0, &qword_100505370, off_1004BE540);
    v83 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    if (v83 >> 62)
    {
      break;
    }

    v84 = *((v83 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v84)
    {
      goto LABEL_38;
    }

LABEL_30:

    sub_1000752F4(aBlock);
    v23 = v246;
    v25 = v250;
    v2 = v245;
    v12 = v244;
    v27 = v243;
    if (v250 == v246)
    {
      goto LABEL_190;
    }
  }

  v84 = _CocoaArrayWrapper.endIndex.getter();
  if (!v84)
  {
    goto LABEL_30;
  }

LABEL_38:
  v30 = 0;
  v255 = v83 & 0xFFFFFFFFFFFFFF8;
  v256 = (v83 & 0xC000000000000001);
  v253 = v83;
  while (2)
  {
    if (v256)
    {
      v87 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v30 >= *(v255 + 16))
      {
        goto LABEL_218;
      }

      v87 = *(v83 + 8 * v30 + 32);
    }

    v88 = v87;
    v89 = (v30 + 1);
    if (__OFADD__(v30, 1))
    {
      __break(1u);
LABEL_218:
      __break(1u);
      goto LABEL_219;
    }

    v90 = [v87 activeEndpoint];
    if (!v90)
    {
      v85 = 0;
      v82 = *(v257 + 16);
      v86 = *(v257 + 24);
      v6 = 0xF000000000000000;
LABEL_40:
      sub_100069E2C(v82, v86);

      if (v86 >> 60 == 15)
      {

        sub_10006A2D0(v85, v6);
        goto LABEL_209;
      }

LABEL_41:
      sub_10006A2D0(v85, v6);
      sub_10006A2D0(v82, v86);
LABEL_42:
      ++v30;
      if (v89 == v84)
      {
        goto LABEL_30;
      }

      continue;
    }

    break;
  }

  v91 = v90;
  v26 = [v90 publicKeyIdentifier];

  v85 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v92;

  v82 = *(v257 + 16);
  v86 = *(v257 + 24);
  if (v6 >> 60 == 15)
  {
    goto LABEL_40;
  }

  if (v86 >> 60 == 15)
  {
    sub_100069E2C(v82, v86);

    goto LABEL_41;
  }

  v93 = v6 >> 62;
  v94 = v86 >> 62;
  if (v6 >> 62 != 3)
  {
    if (v93 > 1)
    {
      if (v93 != 2)
      {
        v95 = 0;
        if (v94 <= 1)
        {
LABEL_69:
          if (v94)
          {
            LODWORD(v98) = HIDWORD(v82) - v82;
            if (__OFSUB__(HIDWORD(v82), v82))
            {
              __break(1u);
LABEL_247:
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
              goto LABEL_253;
            }

            v98 = v98;
          }

          else
          {
            v98 = BYTE6(v86);
          }

          goto LABEL_76;
        }

LABEL_74:
        if (v94 != 2)
        {
          if (!v95)
          {
LABEL_203:
            sub_100069E2C(v82, v86);
            sub_100069E2C(v82, v86);
            sub_10006A2BC(v85, v6);

            sub_10006A2D0(v82, v86);
            sub_10006A178(v82, v86);
            sub_10006A2D0(v85, v6);
            goto LABEL_207;
          }

LABEL_88:
          sub_100069E2C(v82, v86);
          sub_100069E2C(v82, v86);
          sub_10006A2BC(v85, v6);

          sub_10006A2D0(v82, v86);
          sub_10006A178(v82, v86);
          sub_10006A2D0(v85, v6);
          sub_10006A2D0(v85, v6);
          v83 = v253;
          goto LABEL_42;
        }

        v100 = *(v82 + 16);
        v99 = *(v82 + 24);
        v81 = __OFSUB__(v99, v100);
        v98 = v99 - v100;
        if (v81)
        {
          goto LABEL_247;
        }

LABEL_76:
        if (v95 == v98)
        {
          if (v95 < 1)
          {
            goto LABEL_203;
          }

          if (v93 > 1)
          {
            if (v93 != 2)
            {
              memset(__s1, 0, 14);
              if (v94)
              {
                if (v94 != 2)
                {
                  v241 = v82;
                  v240 = (v82 >> 32) - v82;
                  if (v82 >> 32 < v82)
                  {
                    goto LABEL_255;
                  }

                  sub_100069E2C(v82, v86);
                  sub_100069E2C(v82, v86);
                  sub_10006A2BC(v85, v6);
                  v128 = __DataStorage._bytes.getter();
                  if (!v128)
                  {
                    goto LABEL_285;
                  }

                  v129 = v128;
                  v130 = __DataStorage._offset.getter();
                  if (__OFSUB__(v241, v130))
                  {
                    goto LABEL_260;
                  }

                  v131 = (v241 - v130 + v129);
                  v105 = __DataStorage._length.getter();
                  v106 = v131;
                  v83 = v253;
                  if (!v106)
                  {
                    goto LABEL_286;
                  }

                  goto LABEL_124;
                }

                v111 = *(v82 + 16);
                v241 = *(v82 + 24);
                sub_100069E2C(v82, v86);
                sub_100069E2C(v82, v86);
                sub_10006A2BC(v85, v6);
                v112 = __DataStorage._bytes.getter();
                if (v112)
                {
                  v239 = v111;
                  v113 = v112;
                  v114 = __DataStorage._offset.getter();
                  v115 = v239;
                  if (__OFSUB__(v239, v114))
                  {
                    goto LABEL_265;
                  }

                  v240 = v239 + v113 - v114;
                  v116 = v241;
                }

                else
                {
                  v240 = 0;
                  v116 = v241;
                  v115 = v111;
                }

                v150 = v116 - v115;
                if (__OFSUB__(v116, v115))
                {
                  goto LABEL_257;
                }

                v151 = __DataStorage._length.getter();
                v117 = v240;
                if (!v240)
                {
                  goto LABEL_273;
                }

                goto LABEL_145;
              }

LABEL_102:
              v258 = v82;
              v259 = v86;
              v260 = BYTE2(v86);
              v261 = BYTE3(v86);
              v262 = BYTE4(v86);
              v263 = BYTE5(v86);
              sub_100069E2C(v82, v86);
              sub_100069E2C(v82, v86);
              sub_10006A2BC(v85, v6);
              v117 = &v258;
              v118 = BYTE6(v86);
              goto LABEL_148;
            }

            v241 = *(v85 + 16);
            sub_100069E2C(v82, v86);
            sub_100069E2C(v82, v86);
            sub_10006A2BC(v85, v6);
            v107 = __DataStorage._bytes.getter();
            if (v107)
            {
              v240 = v107;
              v108 = __DataStorage._offset.getter();
              if (__OFSUB__(v241, v108))
              {
                goto LABEL_251;
              }

              v241 = v241 - v108 + v240;
            }

            else
            {
              v241 = 0;
            }

            __DataStorage._length.getter();
            if (v94 == 2)
            {
              v135 = *(v82 + 24);
              v240 = *(v82 + 16);
              v239 = v135;
              v136 = __DataStorage._bytes.getter();
              if (v136)
              {
                v137 = v136;
                v138 = __DataStorage._offset.getter();
                v139 = v240;
                if (__OFSUB__(v240, v138))
                {
                  goto LABEL_266;
                }

                v140 = v240 - v138 + v137;
              }

              else
              {
                v140 = 0;
                v139 = v240;
              }

              v240 = v140;
              v152 = v239 - v139;
              if (__OFSUB__(v239, v139))
              {
                goto LABEL_261;
              }

              v153 = __DataStorage._length.getter();
              if (v153 >= v152)
              {
                v154 = v152;
              }

              else
              {
                v154 = v153;
              }

              v141 = v241;
              if (!v241)
              {
                goto LABEL_279;
              }

              v83 = v253;
              v149 = v240;
              if (!v240)
              {
                goto LABEL_278;
              }

              goto LABEL_177;
            }

            if (v94 == 1)
            {
              v240 = (v82 >> 32) - v82;
              if (v82 >> 32 < v82)
              {
                goto LABEL_258;
              }

              v119 = __DataStorage._bytes.getter();
              if (v119)
              {
                v239 = v119;
                v120 = __DataStorage._offset.getter();
                if (__OFSUB__(v82, v120))
                {
                  goto LABEL_268;
                }

                v239 = (v239 + v82 - v120);
              }

              else
              {
                v239 = 0;
              }

              v83 = v253;
              v155 = __DataStorage._length.getter();
              v154 = v240;
              if (v155 < v240)
              {
                v154 = v155;
              }

              v141 = v241;
              if (!v241)
              {
                goto LABEL_277;
              }

              v149 = v239;
              if (!v239)
              {
                goto LABEL_276;
              }

LABEL_177:
              if (v141 == v149)
              {

                sub_10006A2D0(v82, v86);
                sub_10006A178(v82, v86);
                sub_10006A2D0(v85, v6);
                goto LABEL_207;
              }

              v148 = v154;
              goto LABEL_179;
            }

            v141 = v241;
            __s1[0] = v82;
            LOWORD(__s1[1]) = v86;
            BYTE2(__s1[1]) = BYTE2(v86);
            BYTE3(__s1[1]) = BYTE3(v86);
            BYTE4(__s1[1]) = BYTE4(v86);
            BYTE5(__s1[1]) = BYTE5(v86);
            v83 = v253;
            if (!v241)
            {
              goto LABEL_272;
            }
          }

          else
          {
            if (!v93)
            {
              __s1[0] = v85;
              LOWORD(__s1[1]) = v6;
              BYTE2(__s1[1]) = BYTE2(v6);
              BYTE3(__s1[1]) = BYTE3(v6);
              BYTE4(__s1[1]) = BYTE4(v6);
              BYTE5(__s1[1]) = BYTE5(v6);
              if (v94)
              {
                if (v94 == 1)
                {
                  v241 = v82;
                  v240 = (v82 >> 32) - v82;
                  if (v82 >> 32 < v82)
                  {
                    goto LABEL_254;
                  }

                  sub_100069E2C(v82, v86);
                  sub_100069E2C(v82, v86);
                  sub_10006A2BC(v85, v6);
                  v101 = __DataStorage._bytes.getter();
                  if (!v101)
                  {
                    goto LABEL_275;
                  }

                  v102 = v101;
                  v103 = __DataStorage._offset.getter();
                  if (__OFSUB__(v241, v103))
                  {
                    goto LABEL_259;
                  }

                  v104 = (v241 - v103 + v102);
                  v105 = __DataStorage._length.getter();
                  v106 = v104;
                  v83 = v253;
                  if (!v106)
                  {
                    goto LABEL_274;
                  }

LABEL_124:
                  if (v105 >= v240)
                  {
                    v132 = v240;
                  }

                  else
                  {
                    v132 = v105;
                  }

                  v26 = memcmp(__s1, v106, v132);

                  sub_10006A178(v82, v86);
                  sub_10006A2D0(v85, v6);
                  v133 = v82;
                  v134 = v86;
LABEL_180:
                  sub_10006A2D0(v133, v134);
                  sub_10006A2D0(v85, v6);
                  if (!v26)
                  {
                    goto LABEL_208;
                  }

                  goto LABEL_42;
                }

                v123 = *(v82 + 24);
                v241 = *(v82 + 16);
                v240 = v123;
                sub_100069E2C(v82, v86);
                sub_100069E2C(v82, v86);
                sub_10006A2BC(v85, v6);
                v124 = __DataStorage._bytes.getter();
                if (v124)
                {
                  v125 = v124;
                  v126 = __DataStorage._offset.getter();
                  v127 = v241;
                  if (__OFSUB__(v241, v126))
                  {
                    goto LABEL_264;
                  }

                  v239 = (v241 - v126 + v125);
                }

                else
                {
                  v239 = 0;
                  v127 = v241;
                }

                v150 = v240 - v127;
                if (__OFSUB__(v240, v127))
                {
                  goto LABEL_256;
                }

                v151 = __DataStorage._length.getter();
                v117 = v239;
                if (!v239)
                {
                  goto LABEL_287;
                }

LABEL_145:
                if (v151 >= v150)
                {
                  v118 = v150;
                }

                else
                {
                  v118 = v151;
                }

LABEL_148:
                v26 = memcmp(__s1, v117, v118);

                sub_10006A178(v82, v86);
                sub_10006A2D0(v85, v6);
                sub_10006A2D0(v82, v86);
                sub_10006A2D0(v85, v6);
                v83 = v253;
                if (!v26)
                {
                  goto LABEL_208;
                }

                goto LABEL_42;
              }

              goto LABEL_102;
            }

            v241 = v85;
            if (v85 > v85 >> 32)
            {
              goto LABEL_250;
            }

            sub_100069E2C(v82, v86);
            sub_100069E2C(v82, v86);
            sub_10006A2BC(v85, v6);
            v109 = __DataStorage._bytes.getter();
            if (v109)
            {
              v240 = v109;
              v110 = __DataStorage._offset.getter();
              if (__OFSUB__(v241, v110))
              {
                goto LABEL_252;
              }

              v241 = v241 - v110 + v240;
            }

            else
            {
              v241 = 0;
            }

            __DataStorage._length.getter();
            if (v94 == 2)
            {
              v142 = *(v82 + 24);
              v240 = *(v82 + 16);
              v239 = v142;
              v143 = __DataStorage._bytes.getter();
              if (v143)
              {
                v144 = v143;
                v145 = __DataStorage._offset.getter();
                v146 = v240;
                if (__OFSUB__(v240, v145))
                {
                  goto LABEL_267;
                }

                v147 = v240 - v145 + v144;
              }

              else
              {
                v147 = 0;
                v146 = v240;
              }

              v240 = v147;
              v156 = v239 - v146;
              if (__OFSUB__(v239, v146))
              {
                goto LABEL_263;
              }

              v157 = __DataStorage._length.getter();
              if (v157 >= v156)
              {
                v154 = v156;
              }

              else
              {
                v154 = v157;
              }

              v141 = v241;
              if (!v241)
              {
                goto LABEL_284;
              }

              v83 = v253;
              v149 = v240;
              if (!v240)
              {
                goto LABEL_283;
              }

              goto LABEL_177;
            }

            if (v94 == 1)
            {
              v240 = (v82 >> 32) - v82;
              if (v82 >> 32 < v82)
              {
                goto LABEL_262;
              }

              v121 = __DataStorage._bytes.getter();
              if (v121)
              {
                v239 = v121;
                v122 = __DataStorage._offset.getter();
                if (__OFSUB__(v82, v122))
                {
                  goto LABEL_269;
                }

                v239 = (v239 + v82 - v122);
              }

              else
              {
                v239 = 0;
              }

              v83 = v253;
              v158 = __DataStorage._length.getter();
              v154 = v240;
              if (v158 < v240)
              {
                v154 = v158;
              }

              v141 = v241;
              if (!v241)
              {
                goto LABEL_282;
              }

              v149 = v239;
              if (!v239)
              {
                goto LABEL_281;
              }

              goto LABEL_177;
            }

            v141 = v241;
            __s1[0] = v82;
            LOWORD(__s1[1]) = v86;
            BYTE2(__s1[1]) = BYTE2(v86);
            BYTE3(__s1[1]) = BYTE3(v86);
            BYTE4(__s1[1]) = BYTE4(v86);
            BYTE5(__s1[1]) = BYTE5(v86);
            v83 = v253;
            if (!v241)
            {
              goto LABEL_280;
            }
          }

          v148 = BYTE6(v86);
          v149 = __s1;
LABEL_179:
          v26 = memcmp(v141, v149, v148);

          sub_10006A2D0(v82, v86);
          sub_10006A178(v82, v86);
          v133 = v85;
          v134 = v6;
          goto LABEL_180;
        }

        goto LABEL_88;
      }

      v97 = *(v85 + 16);
      v96 = *(v85 + 24);
      v81 = __OFSUB__(v96, v97);
      v95 = v96 - v97;
      if (v81)
      {
        goto LABEL_249;
      }
    }

    else
    {
      if (!v93)
      {
        v95 = BYTE6(v6);
        if (v94 <= 1)
        {
          goto LABEL_69;
        }

        goto LABEL_74;
      }

      LODWORD(v95) = HIDWORD(v85) - v85;
      if (__OFSUB__(HIDWORD(v85), v85))
      {
        goto LABEL_248;
      }

      v95 = v95;
    }

LABEL_68:
    if (v94 <= 1)
    {
      goto LABEL_69;
    }

    goto LABEL_74;
  }

  v95 = 0;
  if (v85)
  {
    goto LABEL_68;
  }

  if (v6 != 0xC000000000000000)
  {
    goto LABEL_68;
  }

  if (v86 >> 62 != 3)
  {
    goto LABEL_68;
  }

  v95 = 0;
  if (v82 || v86 != 0xC000000000000000)
  {
    goto LABEL_68;
  }

  sub_100069E2C(0, 0xC000000000000000);
  sub_100069E2C(0, 0xC000000000000000);
  sub_10006A2BC(0, 0xC000000000000000);

  sub_10006A2D0(0, 0xC000000000000000);
  sub_10006A178(0, 0xC000000000000000);
  sub_10006A2D0(0, 0xC000000000000000);
  v85 = 0;
LABEL_207:
  sub_10006A2D0(v85, v6);
LABEL_208:

LABEL_209:
  sub_1000752F4(aBlock);
  v172 = v251;

  v159 = v254;
  v173 = Logger.logObject.getter();
  v174 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v173, v174))
  {
    v175 = swift_slowAlloc();
    v176 = swift_slowAlloc();
    aBlock[0] = v176;
    *v175 = 136315138;
    v177 = *(v172 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
    v178 = *(v172 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

    v179 = sub_1002FFA0C(v177, v178, aBlock);

    *(v175 + 4) = v179;
    _os_log_impl(&_mh_execute_header, v173, v174, "Requesting handoff token for %s", v175, 0xCu);
    sub_1000752F4(v176);
    v159 = v254;
  }

  sub_1000938D4(v172 + v247, aBlock, &qword_100502438, &qword_100409990);
  if (!v267)
  {
    goto LABEL_271;
  }

  v180 = *sub_1000752B0(aBlock, v267);
  sub_1002DF844();

  sub_1000752F4(aBlock);
LABEL_213:
  *(v159 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 1;
  v181 = swift_allocObject();
  *(v181 + 16) = v159;
  *(v181 + 24) = v249;
  v182 = objc_opt_self();

  v183 = String._bridgeToObjectiveC()();
  v184 = swift_allocObject();
  v185 = v252;
  v184[2] = v252;
  v184[3] = sub_10019F28C;
  v184[4] = v181;
  v268 = sub_10019F2DC;
  v269 = v184;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000BBFA0;
  v267 = &unk_1004C9D48;
  v186 = _Block_copy(aBlock);
  v187 = v185;

  sub_1003AF710(v182, v183, v186);
  _Block_release(v186);
}

uint64_t sub_10019B758()
{
  v1 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = &v120 - v3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchPredicate();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v120 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501D90 != -1)
  {
    goto LABEL_196;
  }

  while (1)
  {
    v15 = qword_10051B7F0;
    *v14 = qword_10051B7F0;
    (*(v11 + 104))(v14, enum case for DispatchPredicate.onQueue(_:), v10);
    v16 = v15;
    LOBYTE(v15) = _dispatchPreconditionTest(_:)();
    (*(v11 + 8))(v14, v10);
    if ((v15 & 1) == 0)
    {
      __break(1u);
LABEL_198:
      result = _CocoaArrayWrapper.endIndex.getter();
      if (!result)
      {
        return result;
      }

      goto LABEL_5;
    }

    v14 = OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue;
    swift_beginAccess();
    v17 = *(v0 + v14);
    if (v17 >> 62)
    {
      goto LABEL_198;
    }

    result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!result)
    {
      return result;
    }

LABEL_5:
    v19 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
    swift_beginAccess();
    sub_1000938D4(v0 + v19, v4, &unk_10050BE80, &unk_10040B360);
    if ((*(v6 + 48))(v4, 1, v5) != 1)
    {
      break;
    }

    sub_100075768(v4, &unk_10050BE80, &unk_10040B360);
    v133 = v0;
    v9 = *(v0 + v14);
    if (!(v9 >> 62))
    {
      v20 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_8;
    }

LABEL_202:
    v20 = _CocoaArrayWrapper.endIndex.getter();
LABEL_8:
    v130 = v14;
    if (!v20)
    {
      goto LABEL_182;
    }

    v6 = v9 & 0xC000000000000001;
    v126 = v9 & 0xFFFFFFFFFFFFFF8;
    v125 = v9 + 32;

    v21 = 0;
    v11 = &OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
    v129 = v9;
    v128 = v20;
    v127 = v9 & 0xC000000000000001;
    while (1)
    {
      if (v6)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v21 >= *(v126 + 16))
        {
          goto LABEL_201;
        }

        v10 = *(v125 + 8 * v21);
      }

      v22 = OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
      sub_1000938D4(v10 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, v145, &qword_100502438, &qword_100409990);
      if (v146)
      {
        break;
      }

      sub_100075768(v145, &qword_100502438, &qword_100409990);
      v38 = __OFADD__(v21++, 1);
      if (v38)
      {
LABEL_200:
        __break(1u);
LABEL_201:
        __break(1u);
        goto LABEL_202;
      }

LABEL_11:
      if (v21 == v20)
      {

LABEL_182:
        v0 = v133;
        v4 = *(v133 + v14);
        if (v4 >> 62)
        {
          goto LABEL_205;
        }

        v9 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v9)
        {
LABEL_206:
          v107 = 0;
          goto LABEL_207;
        }

LABEL_184:
        v25 = v4 & 0xC000000000000001;
        if ((v4 & 0xC000000000000001) != 0)
        {
          goto LABEL_231;
        }

        if (!*((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_248;
        }

        v106 = *(v4 + 32);

        if (v9 != 1)
        {
          goto LABEL_232;
        }

        goto LABEL_187;
      }
    }

    sub_100075768(v145, &qword_100502438, &qword_100409990);
    sub_1000938D4(v10 + v22, v145, &qword_100502438, &qword_100409990);
    if (!v146)
    {
      __break(1u);
LABEL_269:
      __break(1u);
LABEL_270:
      __break(1u);
LABEL_271:
      __break(1u);
LABEL_272:
      __break(1u);
LABEL_273:
      __break(1u);
LABEL_274:
      __break(1u);
LABEL_275:
      __break(1u);
LABEL_276:
      __break(1u);
LABEL_277:
      __break(1u);
LABEL_278:
      __break(1u);
LABEL_279:
      __DataStorage._length.getter();
LABEL_280:
      __break(1u);
LABEL_281:
      __break(1u);
LABEL_282:
      __break(1u);
LABEL_283:
      __break(1u);
LABEL_284:
      result = __DataStorage._length.getter();
      __break(1u);
      return result;
    }

    v132 = v21;
    v137 = *sub_1000752B0(v145, v146);
    v23 = [objc_opt_self() sessionManager];
    v4 = [v23 getActiveDCKSessions];

    sub_10009393C(0, &qword_100505370, off_1004BE540);
    v5 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v131 = v10;
    if (v5 >> 62)
    {
      v24 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v24 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v0 = v133;
    if (!v24)
    {
LABEL_10:

      sub_1000752F4(v145);
      v14 = v130;
      v9 = v129;
      v20 = v128;
      v6 = v127;
      v11 = &OBJC_IVAR____TtC10seserviced9SERequest_handoffToken;
      v21 = v132 + 1;
      if (__OFADD__(v132, 1))
      {
        goto LABEL_200;
      }

      goto LABEL_11;
    }

    v25 = 0;
    v135 = v5 & 0xFFFFFFFFFFFFFF8;
    v136 = v5 & 0xC000000000000001;
    v134 = v5;
    while (1)
    {
      if (v136)
      {
        v26 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v25 >= *(v135 + 16))
        {
          goto LABEL_195;
        }

        v26 = *(v5 + 8 * v25 + 32);
      }

      v9 = v26;
      v10 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      v27 = [v26 activeEndpoint];
      if (!v27)
      {
        v6 = 0;
        v4 = *(v137 + 16);
        v14 = *(v137 + 24);
        v11 = 0xF000000000000000;
LABEL_31:
        sub_100069E2C(v4, v14);

        if (v14 >> 60 == 15)
        {

          sub_10006A2D0(v6, v11);
LABEL_193:
          sub_1000752F4(v145);
          swift_beginAccess();
          v108 = sub_100196708(v132);
          swift_endAccess();
          return v108;
        }

LABEL_32:
        sub_10006A2D0(v6, v11);
        v31 = v4;
        v32 = v14;
LABEL_33:
        sub_10006A2D0(v31, v32);
        goto LABEL_34;
      }

      v28 = v27;
      v29 = [v27 publicKeyIdentifier];

      v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v30;

      v4 = *(v137 + 16);
      v14 = *(v137 + 24);
      if (v11 >> 60 == 15)
      {
        goto LABEL_31;
      }

      if (v14 >> 60 == 15)
      {
        sub_100069E2C(*(v137 + 16), *(v137 + 24));

        goto LABEL_32;
      }

      v33 = v11 >> 62;
      v34 = v14 >> 62;
      if (v11 >> 62 == 3)
      {
        v35 = 0;
        if (!v6 && v11 == 0xC000000000000000 && v14 >> 62 == 3)
        {
          v35 = 0;
          if (!v4 && v14 == 0xC000000000000000)
          {
            sub_100069E2C(0, 0xC000000000000000);
            sub_100069E2C(0, 0xC000000000000000);
            sub_10006A2BC(0, 0xC000000000000000);

            sub_10006A2D0(0, 0xC000000000000000);
            sub_10006A178(0, 0xC000000000000000);
            sub_10006A2D0(0, 0xC000000000000000);
            v6 = 0;
            goto LABEL_191;
          }
        }

LABEL_52:
        if (v34 > 1)
        {
          goto LABEL_46;
        }

        goto LABEL_53;
      }

      if (v33 > 1)
      {
        if (v33 == 2)
        {
          v41 = *(v6 + 16);
          v40 = *(v6 + 24);
          v38 = __OFSUB__(v40, v41);
          v35 = v40 - v41;
          if (v38)
          {
            goto LABEL_230;
          }

          goto LABEL_52;
        }

        v35 = 0;
        if (v34 > 1)
        {
          goto LABEL_46;
        }
      }

      else if (v33)
      {
        LODWORD(v35) = HIDWORD(v6) - v6;
        if (__OFSUB__(HIDWORD(v6), v6))
        {
          __break(1u);
LABEL_230:
          __break(1u);
LABEL_231:

          v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          if (v9 != 1)
          {
LABEL_232:
            v118 = 1;
            while (1)
            {
              if (v25)
              {
                v107 = specialized _ArrayBuffer._getElementSlowPath(_:)();
                v119 = v118 + 1;
                if (__OFADD__(v118, 1))
                {
                  goto LABEL_245;
                }
              }

              else
              {
                if ((v118 & 0x8000000000000000) != 0)
                {
                  goto LABEL_246;
                }

                if (v118 >= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_247;
                }

                v107 = *(v4 + 8 * v118 + 32);

                v119 = v118 + 1;
                if (__OFADD__(v118, 1))
                {
LABEL_245:
                  __break(1u);
LABEL_246:
                  __break(1u);
LABEL_247:
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
                  __break(1u);
LABEL_262:
                  __break(1u);
LABEL_263:
                  __break(1u);
LABEL_264:
                  __break(1u);
LABEL_265:
                  __break(1u);
LABEL_266:
                  __break(1u);
LABEL_267:
                  __break(1u);
                }
              }

              if (*(v106 + OBJC_IVAR____TtC10seserviced9SERequest_priority) < *(v107 + OBJC_IVAR____TtC10seserviced9SERequest_priority))
              {

                v106 = v107;
                v118 = v119;
                if (v119 == v9)
                {
                  goto LABEL_188;
                }
              }

              else
              {

                ++v118;
                if (v119 == v9)
                {
                  break;
                }
              }
            }
          }

LABEL_187:
          v107 = v106;
LABEL_188:

          v14 = v130;
LABEL_207:
          v109 = *(v0 + v14);
          if (v109 >> 62)
          {
            goto LABEL_227;
          }

          for (i = *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
          {

            v111 = 0;
            while (1)
            {
              if ((v109 & 0xC000000000000001) != 0)
              {
                v112 = specialized _ArrayBuffer._getElementSlowPath(_:)();
              }

              else
              {
                if (v111 >= *((v109 & 0xFFFFFFFFFFFFFF8) + 0x10))
                {
                  goto LABEL_226;
                }

                v112 = *(v109 + 8 * v111 + 32);
              }

              if (v107 && v112 == v107)
              {

                swift_beginAccess();
                v117 = sub_100196708(v111);
                swift_endAccess();

                return v117;
              }

              v113 = v111 + 1;
              if (__OFADD__(v111, 1))
              {
                break;
              }

              ++v111;
              if (v113 == i)
              {

                goto LABEL_219;
              }
            }

            __break(1u);
LABEL_226:
            __break(1u);
LABEL_227:
            ;
          }

LABEL_219:
          v114 = Logger.logObject.getter();
          v115 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v114, v115))
          {
            v116 = swift_slowAlloc();
            *v116 = 0;
            _os_log_impl(&_mh_execute_header, v114, v115, "Should never get here", v116, 2u);
          }

          return 0;
        }

        v35 = v35;
        if (v34 > 1)
        {
LABEL_46:
          if (v34 != 2)
          {
            if (!v35)
            {
              goto LABEL_189;
            }

LABEL_71:
            sub_100069E2C(*(v137 + 16), *(v137 + 24));
            sub_100069E2C(v4, v14);
            sub_10006A2BC(v6, v11);

            sub_10006A2D0(v4, v14);
            sub_10006A178(v4, v14);
            sub_10006A2D0(v6, v11);
            v31 = v6;
            v32 = v11;
            goto LABEL_33;
          }

          v37 = *(v4 + 16);
          v36 = *(v4 + 24);
          v38 = __OFSUB__(v36, v37);
          v39 = v36 - v37;
          if (v38)
          {
            goto LABEL_204;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v35 = BYTE6(v11);
        if (v34 > 1)
        {
          goto LABEL_46;
        }
      }

LABEL_53:
      if (!v34)
      {
        v39 = BYTE6(v14);
LABEL_55:
        if (v35 != v39)
        {
          goto LABEL_71;
        }

        goto LABEL_61;
      }

      if (__OFSUB__(HIDWORD(v4), v4))
      {
        __break(1u);
LABEL_204:
        __break(1u);
LABEL_205:
        v9 = _CocoaArrayWrapper.endIndex.getter();
        if (!v9)
        {
          goto LABEL_206;
        }

        goto LABEL_184;
      }

      if (v35 != HIDWORD(v4) - v4)
      {
        goto LABEL_71;
      }

LABEL_61:
      if (v35 < 1)
      {
LABEL_189:
        sub_100069E2C(*(v137 + 16), *(v137 + 24));
        sub_100069E2C(v4, v14);
        sub_10006A2BC(v6, v11);
LABEL_190:

        sub_10006A2D0(v4, v14);
        sub_10006A178(v4, v14);
        sub_10006A2D0(v6, v11);
LABEL_191:
        sub_10006A2D0(v6, v11);
LABEL_192:

        goto LABEL_193;
      }

      if (v33 > 1)
      {
        if (v33 != 2)
        {
          memset(__s1, 0, 14);
          if (v34)
          {
            if (v34 == 2)
            {
              v51 = *(v4 + 24);
              v124 = *(v4 + 16);
              v123 = v51;
              sub_100069E2C(v4, v14);
              sub_100069E2C(v4, v14);
              sub_10006A2BC(v6, v11);
              v52 = __DataStorage._bytes.getter();
              if (v52)
              {
                v53 = v52;
                v54 = __DataStorage._offset.getter();
                v55 = v124;
                if (__OFSUB__(v124, v54))
                {
                  goto LABEL_263;
                }

                v122 = (v124 - v54 + v53);
              }

              else
              {
                v122 = 0;
                v55 = v124;
              }

              v87 = v123 - v55;
              if (__OFSUB__(v123, v55))
              {
                goto LABEL_255;
              }

              v88 = __DataStorage._length.getter();
              v73 = v122;
              if (!v122)
              {
                goto LABEL_283;
              }

LABEL_133:
              if (v88 >= v87)
              {
                v72 = v87;
              }

              else
              {
                v72 = v88;
              }

LABEL_136:
              v89 = memcmp(__s1, v73, v72);

              sub_10006A178(v4, v14);
              sub_10006A2D0(v6, v11);
              sub_10006A2D0(v4, v14);
              sub_10006A2D0(v6, v11);
              v0 = v133;
              if (!v89)
              {
                goto LABEL_192;
              }

              goto LABEL_34;
            }

            v124 = v4;
            v123 = (v4 >> 32) - v4;
            if (v4 >> 32 < v4)
            {
              goto LABEL_252;
            }

            sub_100069E2C(v4, v14);
            sub_100069E2C(v4, v14);
            sub_10006A2BC(v6, v11);
            v69 = __DataStorage._bytes.getter();
            if (!v69)
            {
              goto LABEL_279;
            }

            v70 = v69;
            v71 = __DataStorage._offset.getter();
            if (__OFSUB__(v124, v71))
            {
              goto LABEL_257;
            }

            v45 = (v124 - v71 + v70);
            v46 = __DataStorage._length.getter();
            if (!v45)
            {
              goto LABEL_280;
            }

LABEL_112:
            if (v46 >= v123)
            {
              v72 = v123;
            }

            else
            {
              v72 = v46;
            }

            v73 = v45;
            goto LABEL_136;
          }

          goto LABEL_90;
        }

        v124 = *(v6 + 16);
        sub_100069E2C(v4, v14);
        sub_100069E2C(v4, v14);
        sub_10006A2BC(v6, v11);
        v47 = __DataStorage._bytes.getter();
        if (v47)
        {
          v123 = v47;
          v48 = __DataStorage._offset.getter();
          if (__OFSUB__(v124, v48))
          {
            goto LABEL_250;
          }

          v124 = v124 - v48 + v123;
        }

        else
        {
          v124 = 0;
        }

        __DataStorage._length.getter();
        if (v34 == 2)
        {
          v74 = *(v4 + 24);
          v123 = *(v4 + 16);
          v122 = v74;
          v75 = __DataStorage._bytes.getter();
          if (v75)
          {
            v76 = v75;
            v77 = __DataStorage._offset.getter();
            v78 = v123;
            if (__OFSUB__(v123, v77))
            {
              goto LABEL_264;
            }

            v121 = (v123 - v77 + v76);
          }

          else
          {
            v121 = 0;
            v78 = v123;
          }

          v90 = &v122[-v78];
          if (__OFSUB__(v122, v78))
          {
            goto LABEL_259;
          }

          v91 = __DataStorage._length.getter();
          if (v91 >= v90)
          {
            v92 = v90;
          }

          else
          {
            v92 = v91;
          }

          v79 = v124;
          if (!v124)
          {
            goto LABEL_273;
          }

          v0 = v133;
          v86 = v121;
          if (!v121)
          {
            goto LABEL_272;
          }

LABEL_160:
          if (v79 == v86)
          {
            goto LABEL_190;
          }

          v85 = v92;
          goto LABEL_169;
        }

        if (v34 == 1)
        {
          v123 = (v4 >> 32) - v4;
          if (v4 >> 32 < v4)
          {
            goto LABEL_256;
          }

          v59 = __DataStorage._bytes.getter();
          if (v59)
          {
            v122 = v59;
            v60 = __DataStorage._offset.getter();
            if (__OFSUB__(v4, v60))
            {
              goto LABEL_266;
            }

            v122 += v4 - v60;
          }

          else
          {
            v122 = 0;
          }

          v93 = v124;
          v94 = __DataStorage._length.getter();
          v95 = v123;
          if (v94 < v123)
          {
            v95 = v94;
          }

          if (!v93)
          {
            goto LABEL_271;
          }

          v0 = v133;
          v86 = v122;
          if (!v122)
          {
            goto LABEL_270;
          }

          if (v93 == v122)
          {
            goto LABEL_190;
          }

          v85 = v95;
          v79 = v93;
          goto LABEL_169;
        }

        v0 = v133;
        __s1[0] = v4;
        LOWORD(__s1[1]) = v14;
        BYTE2(__s1[1]) = BYTE2(v14);
        BYTE3(__s1[1]) = BYTE3(v14);
        BYTE4(__s1[1]) = BYTE4(v14);
        BYTE5(__s1[1]) = BYTE5(v14);
        v79 = v124;
        if (!v124)
        {
          goto LABEL_269;
        }
      }

      else
      {
        if (!v33)
        {
          __s1[0] = v6;
          LOWORD(__s1[1]) = v11;
          BYTE2(__s1[1]) = BYTE2(v11);
          BYTE3(__s1[1]) = BYTE3(v11);
          BYTE4(__s1[1]) = BYTE4(v11);
          BYTE5(__s1[1]) = BYTE5(v11);
          if (v34)
          {
            if (v34 != 1)
            {
              v64 = *(v4 + 24);
              v124 = *(v4 + 16);
              v123 = v64;
              sub_100069E2C(v4, v14);
              sub_100069E2C(v4, v14);
              sub_10006A2BC(v6, v11);
              v65 = __DataStorage._bytes.getter();
              if (v65)
              {
                v66 = v65;
                v67 = __DataStorage._offset.getter();
                v68 = v124;
                if (__OFSUB__(v124, v67))
                {
                  goto LABEL_262;
                }

                v122 = (v124 - v67 + v66);
              }

              else
              {
                v122 = 0;
                v68 = v124;
              }

              v87 = v123 - v68;
              if (__OFSUB__(v123, v68))
              {
                goto LABEL_254;
              }

              v88 = __DataStorage._length.getter();
              v73 = v122;
              if (!v122)
              {
                goto LABEL_281;
              }

              goto LABEL_133;
            }

            v124 = v4;
            v123 = (v4 >> 32) - v4;
            if (v4 >> 32 < v4)
            {
              goto LABEL_253;
            }

            sub_100069E2C(v4, v14);
            sub_100069E2C(v4, v14);
            sub_10006A2BC(v6, v11);
            v42 = __DataStorage._bytes.getter();
            if (!v42)
            {
              goto LABEL_284;
            }

            v43 = v42;
            v44 = __DataStorage._offset.getter();
            if (__OFSUB__(v124, v44))
            {
              goto LABEL_258;
            }

            v45 = (v124 - v44 + v43);
            v46 = __DataStorage._length.getter();
            if (!v45)
            {
              goto LABEL_282;
            }

            goto LABEL_112;
          }

LABEL_90:
          __s2 = v4;
          v139 = v14;
          v140 = BYTE2(v14);
          v141 = BYTE3(v14);
          v142 = BYTE4(v14);
          v143 = BYTE5(v14);
          sub_100069E2C(v4, v14);
          sub_100069E2C(v4, v14);
          sub_10006A2BC(v6, v11);
          v56 = memcmp(__s1, &__s2, BYTE6(v14));

          sub_10006A178(v4, v14);
          sub_10006A2D0(v6, v11);
          v57 = v4;
          v58 = v14;
          goto LABEL_170;
        }

        v124 = v6;
        if (v6 > v6 >> 32)
        {
          goto LABEL_249;
        }

        sub_100069E2C(v4, v14);
        sub_100069E2C(v4, v14);
        sub_10006A2BC(v6, v11);
        v49 = __DataStorage._bytes.getter();
        if (v49)
        {
          v123 = v49;
          v50 = __DataStorage._offset.getter();
          if (__OFSUB__(v124, v50))
          {
            goto LABEL_251;
          }

          v124 = v124 - v50 + v123;
        }

        else
        {
          v124 = 0;
        }

        __DataStorage._length.getter();
        if (v34 == 2)
        {
          v80 = *(v4 + 24);
          v123 = *(v4 + 16);
          v122 = v80;
          v81 = __DataStorage._bytes.getter();
          if (v81)
          {
            v82 = v81;
            v83 = __DataStorage._offset.getter();
            v84 = v123;
            if (__OFSUB__(v123, v83))
            {
              goto LABEL_265;
            }

            v121 = (v123 - v83 + v82);
          }

          else
          {
            v121 = 0;
            v84 = v123;
          }

          v96 = &v122[-v84];
          if (__OFSUB__(v122, v84))
          {
            goto LABEL_261;
          }

          v97 = __DataStorage._length.getter();
          if (v97 >= v96)
          {
            v92 = v96;
          }

          else
          {
            v92 = v97;
          }

          v79 = v124;
          if (!v124)
          {
            goto LABEL_278;
          }

          v0 = v133;
          v86 = v121;
          if (!v121)
          {
            goto LABEL_277;
          }

          goto LABEL_160;
        }

        if (v34 == 1)
        {
          v123 = (v4 >> 32) - v4;
          if (v4 >> 32 < v4)
          {
            goto LABEL_260;
          }

          v61 = __DataStorage._bytes.getter();
          if (v61)
          {
            v122 = v61;
            v62 = __DataStorage._offset.getter();
            if (__OFSUB__(v4, v62))
            {
              goto LABEL_267;
            }

            v63 = &v122[v4 - v62];
          }

          else
          {
            v63 = 0;
          }

          v98 = __DataStorage._length.getter();
          v99 = v123;
          if (v98 < v123)
          {
            v99 = v98;
          }

          v79 = v124;
          if (!v124)
          {
            goto LABEL_276;
          }

          v0 = v133;
          if (!v63)
          {
            goto LABEL_275;
          }

          if (v124 == v63)
          {
            goto LABEL_190;
          }

          v85 = v99;
          v86 = v63;
          goto LABEL_169;
        }

        v0 = v133;
        v79 = v124;
        __s1[0] = v4;
        LOWORD(__s1[1]) = v14;
        BYTE2(__s1[1]) = BYTE2(v14);
        BYTE3(__s1[1]) = BYTE3(v14);
        BYTE4(__s1[1]) = BYTE4(v14);
        BYTE5(__s1[1]) = BYTE5(v14);
        if (!v124)
        {
          goto LABEL_274;
        }
      }

      v85 = BYTE6(v14);
      v86 = __s1;
LABEL_169:
      v56 = memcmp(v79, v86, v85);

      sub_10006A2D0(v4, v14);
      sub_10006A178(v4, v14);
      v57 = v6;
      v58 = v11;
LABEL_170:
      sub_10006A2D0(v57, v58);
      sub_10006A2D0(v6, v11);
      if (!v56)
      {
        goto LABEL_192;
      }

LABEL_34:
      ++v25;
      v5 = v134;
      if (v10 == v24)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_195:
    __break(1u);
LABEL_196:
    swift_once();
  }

  v100 = (*(v6 + 32))(v9, v4, v5);
  v101 = *(v0 + v14);
  __chkstk_darwin(v100);
  *(&v120 - 2) = v9;

  v102 = sub_100196414(sub_10019F300, (&v120 - 4), v101);
  v104 = v103;

  if (v104)
  {
    (*(v6 + 8))(v9, v5);
    return 0;
  }

  swift_beginAccess();
  v105 = sub_100196708(v102);
  swift_endAccess();
  (*(v6 + 8))(v9, v5);
  return v105;
}

void sub_10019CE50(double a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = v4[8];
  __chkstk_darwin(v3);
  v7 = (&v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  v9 = enum case for DispatchPredicate.onQueue(_:);
  v10 = v4[13];
  v10(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v11 = v8;
  v12 = _dispatchPreconditionTest(_:)();
  v13 = v4[1];
  v13(v7, v3);
  if ((v12 & 1) == 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  *v7 = v11;
  v10(v7, v9, v3);
  v14 = _dispatchPreconditionTest(_:)();
  v13(v7, v3);
  if ((v14 & 1) == 0)
  {
LABEL_12:
    __break(1u);
    return;
  }

  v15 = OBJC_IVAR____TtC10seserviced5DSKSE_seTimer;
  v16 = *(v1 + OBJC_IVAR____TtC10seserviced5DSKSE_seTimer);
  if (v16)
  {
    v17 = v16;
    if (sub_1003AE7DC(v17))
    {
      sub_1003AE754(v17);
    }

    v18 = *(v1 + v15);
    if (v18)
    {
      sub_1003AE618(v18, a1);
    }
  }
}

void sub_10019D034(void *a1, char a2, uint64_t a3, int a4)
{
  v161 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v8 = *(*(v161 - 8) + 64);
  __chkstk_darwin(v161);
  v162 = &v148 - v9;
  v10 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v166 = &v148 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v160 = &v148 - v15;
  v16 = __chkstk_darwin(v14);
  v158 = &v148 - v17;
  v18 = __chkstk_darwin(v16);
  v163 = &v148 - v19;
  v20 = __chkstk_darwin(v18);
  v167 = &v148 - v21;
  __chkstk_darwin(v20);
  v164 = &v148 - v22;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = *(v24 + 64);
  v26 = __chkstk_darwin(v23);
  v159 = &v148 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v165 = &v148 - v28;
  v29 = type metadata accessor for DispatchPredicate();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = (&v148 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v34 = qword_10051B7F0;
  *v33 = qword_10051B7F0;
  (*(v30 + 104))(v33, enum case for DispatchPredicate.onQueue(_:), v29);
  v35 = v34;
  LOBYTE(v34) = _dispatchPreconditionTest(_:)();
  (*(v30 + 8))(v33, v29);
  if ((v34 & 1) == 0)
  {
    __break(1u);
    goto LABEL_67;
  }

  v36 = OBJC_IVAR____TtC10seserviced5DSKSE_state;
  *(a3 + OBJC_IVAR____TtC10seserviced5DSKSE_state) = 2;
  v37 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
  if (a2)
  {
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    sub_1001A1EF0(a1, 1);
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v41 = swift_slowAlloc();
      v169[0] = v41;
      *v40 = 67109378;
      *(v40 + 4) = a4;
      *(v40 + 8) = 2080;
      swift_getErrorValue();
      v42 = Error.localizedDescription.getter();
      v44 = sub_1002FFA0C(v42, v43, v169);

      *(v40 + 10) = v44;
      _os_log_impl(&_mh_execute_header, v38, v39, "Failed to get SE %u error %s", v40, 0x12u);
      sub_1000752F4(v41);
    }

    *(a3 + v36) = 0;
    sub_100197634(v45);
    return;
  }

  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 67109120;
    *(v48 + 4) = a4;
    _os_log_impl(&_mh_execute_header, v46, v47, "Got SE identifier %u", v48, 8u);
  }

  v49 = sub_10019B758();
  if (v49)
  {
    v50 = v49;
    swift_retain_n();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v156 = a3;
      v157 = v50;
      v55 = v54;
      v169[0] = v54;
      *v53 = 136315138;
      v155 = a1;
      v56 = v24;
      v57 = v23;
      v58 = v36;
      v59 = v37;
      v61 = *(v157 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
      v60 = *(v157 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);

      v62 = sub_1002FFA0C(v61, v60, v169);
      v37 = v59;

      *(v53 + 4) = v62;
      v36 = v58;
      v23 = v57;
      v24 = v56;
      a1 = v155;
      _os_log_impl(&_mh_execute_header, v51, v52, "Got request for %s", v53, 0xCu);
      sub_1000752F4(v55);
      v50 = v157;
      a3 = v156;
    }

    v63 = v167;
    if (*(v50 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting) != 1)
    {
      v75 = Logger.logObject.getter();
      v76 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v75, v76))
      {
        v77 = swift_slowAlloc();
        *v77 = 0;
        _os_log_impl(&_mh_execute_header, v75, v76, "First APDU of session is not SELECT", v77, 2u);
      }

      *(a3 + v36) = 0;
      v79 = *(v50 + 32);
      v78 = *(v50 + 40);

      v79(0, 1);

      goto LABEL_26;
    }

    v154 = v37;
    if (*(v50 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8))
    {
      goto LABEL_15;
    }

    v80 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks);
    if ((v80 & 1) == 0)
    {
      if ((v80 & 2) != 0)
      {
        v81 = v50 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber;
        if ((*(v50 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber + 8) & 1) != 0 || (v82 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_peer)) == 0 || *v81 != *(v82 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber))
        {

          v83 = Logger.logObject.getter();
          v84 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v83, v84))
          {
            v85 = -1;
            v86 = swift_slowAlloc();
            *v86 = 134218240;
            v87 = *v81;
            if (*(v81 + 8))
            {
              v87 = -1;
            }

            *(v86 + 4) = v87;
            *(v86 + 12) = 2048;
            v88 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
            if (v88)
            {
              v85 = *(v88 + OBJC_IVAR____TtC10seserviced4Peer_sequenceNumber);
            }

            *(v86 + 14) = v85;
            v89 = v86;

            _os_log_impl(&_mh_execute_header, v83, v84, "Got different sequence numbers request %ld current %ld", v89, 0x16u);
          }

          else
          {
          }

          goto LABEL_19;
        }
      }

      goto LABEL_15;
    }

    v98 = OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier;
    v99 = v164;
    sub_1000938D4(v50 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier, v164, &unk_10050BE80, &unk_10040B360);
    v153 = *(v24 + 48);
    v100 = v153(v99, 1, v23);
    v157 = v50;
    if (v100 == 1)
    {
      v101 = &unk_10050BE80;
      v102 = &unk_10040B360;
LABEL_54:
      sub_100075768(v99, v101, v102);
LABEL_55:

      v121 = Logger.logObject.getter();
      v122 = v50;
      v123 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v121, v123))
      {
        v167 = v24;
        v124 = swift_slowAlloc();
        v166 = swift_slowAlloc();
        v168 = v166;
        *v124 = 136315394;
        v125 = v122 + v98;
        v126 = v160;
        sub_1000938D4(v125, v160, &unk_10050BE80, &unk_10040B360);
        if (v153(v126, 1, v23) == 1)
        {
          v127 = v23;
          sub_100075768(v126, &unk_10050BE80, &unk_10040B360);
          v128 = 0xE400000000000000;
          v129 = 1819047278;
        }

        else
        {
          v130 = v126;
          v131 = UUID.uuidString.getter();
          v128 = v132;
          v133 = v130;
          v127 = v23;
          (*(v167 + 8))(v133, v23);
          v129 = v131;
        }

        v134 = sub_1002FFA0C(v129, v128, &v168);

        *(v124 + 4) = v134;
        *(v124 + 12) = 2080;
        v135 = *(v157 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
        v136 = 1819047278;
        if (v135)
        {
          v137 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
          swift_beginAccess();
          v138 = v167;
          v139 = v135 + v137;
          v140 = v159;
          v141 = v127;
          (*(v167 + 16))(v159, v139, v127);
          v142 = UUID.uuidString.getter();
          v144 = v143;
          (*(v138 + 8))(v140, v141);
          v136 = v142;
        }

        else
        {
          v144 = 0xE400000000000000;
        }

        v145 = sub_1002FFA0C(v136, v144, &v168);

        *(v124 + 14) = v145;
        _os_log_impl(&_mh_execute_header, v121, v123, "Got different connection identifiers request %s current %s", v124, 0x16u);
        swift_arrayDestroy();
      }

      *(a3 + v36) = 0;
      (sub_100197634)();
      goto LABEL_27;
    }

    v152 = v24 + 48;
    v155 = a1;
    v156 = a3;
    v151 = v36;
    v103 = *(v24 + 32);
    v104 = v165;
    v164 = v24 + 32;
    v149 = v103;
    v103(v165, v99, v23);
    v105 = *(v24 + 16);
    v105(v63, v104, v23);
    v106 = *(v24 + 56);
    v107 = v63;
    v108 = 1;
    v106(v107, 0, 1, v23);
    v109 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
    v150 = v98;
    if (v109)
    {
      v110 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
      swift_beginAccess();
      v111 = v163;
      v105(v163, (v109 + v110), v23);
      v108 = 0;
    }

    else
    {
      v111 = v163;
    }

    v106(v111, v108, 1, v23);
    v112 = v23;
    v99 = v162;
    v113 = *(v161 + 48);
    v114 = v167;
    sub_1000938D4(v167, v162, &unk_10050BE80, &unk_10040B360);
    sub_1000938D4(v111, v99 + v113, &unk_10050BE80, &unk_10040B360);
    v115 = v153;
    v116 = v153(v99, 1, v112) == 1;
    v36 = v151;
    v50 = v157;
    v117 = v111;
    a3 = v156;
    if (v116)
    {
      sub_100075768(v117, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v114, &unk_10050BE80, &unk_10040B360);
      (*(v24 + 8))(v165, v112);
      v118 = v115(v99 + v113, 1, v112);
      v23 = v112;
      v98 = v150;
      if (v118 != 1)
      {
LABEL_53:
        v101 = &qword_1005031D0;
        v102 = &unk_100413B20;
        goto LABEL_54;
      }

      sub_100075768(v99, &unk_10050BE80, &unk_10040B360);
      a1 = v155;
    }

    else
    {
      v119 = v158;
      sub_1000938D4(v99, v158, &unk_10050BE80, &unk_10040B360);
      if (v115(v99 + v113, 1, v112) == 1)
      {
        sub_100075768(v163, &unk_10050BE80, &unk_10040B360);
        sub_100075768(v167, &unk_10050BE80, &unk_10040B360);
        v120 = *(v24 + 8);
        v120(v165, v112);
        v120(v119, v112);
        v23 = v112;
        v98 = v150;
        goto LABEL_53;
      }

      v146 = v159;
      v149(v159, v99 + v113, v112);
      sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID);
      LODWORD(v164) = dispatch thunk of static Equatable.== infix(_:_:)();
      v147 = *(v24 + 8);
      v147(v146, v112);
      sub_100075768(v163, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v167, &unk_10050BE80, &unk_10040B360);
      v147(v165, v112);
      v147(v119, v112);
      v50 = v157;
      sub_100075768(v99, &unk_10050BE80, &unk_10040B360);
      v23 = v112;
      a1 = v155;
      v98 = v150;
      if ((v164 & 1) == 0)
      {
        goto LABEL_55;
      }
    }

LABEL_15:
    v64 = v23;
    v65 = OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress;
    *(a3 + OBJC_IVAR____TtC10seserviced5DSKSE_expressTransactionInProgress) = 1;
    sub_1003375E0(0xD000000000000042, 0x8000000100465570, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
    v67 = *(v50 + 32);
    v66 = *(v50 + 40);

    v67(a1, 0);

    if (*(v50 + 24))
    {
      v68 = Logger.logObject.getter();
      v69 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v68, v69))
      {
        v70 = swift_slowAlloc();
        *v70 = 0;
        _os_log_impl(&_mh_execute_header, v68, v69, "Releasing the SE", v70, 2u);
      }

      *(a3 + v65) = 0;
      sub_1003375E0(0xD000000000000041, 0x8000000100465520, 0, 0xF000000000000000, 0, 0xF000000000000000, 0);
LABEL_19:
      *(a3 + v36) = 0;
LABEL_26:
      sub_100197634(v71);
LABEL_27:

      return;
    }

    v90 = *(v50 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
    if (v90)
    {
      v91 = *(v50 + 16);
      v92 = v166;
      (*(v24 + 16))(v166, v90 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v64);
      (*(v24 + 56))(v92, 0, 1, v64);
      v93 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier;
      swift_beginAccess();
      sub_1001A15AC(v92, a3 + v93);
      swift_endAccess();
      v94 = OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier;
      v95 = OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier;
      swift_beginAccess();
      sub_1001A1EFC(v50 + v94, a3 + v95);
      swift_endAccess();
      v96 = *(a3 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle);
      *(a3 + OBJC_IVAR____TtC10seserviced5DSKSE_secureElementHandle) = a1;
      v97 = a1;

      *(a3 + v36) = 3;
      sub_10019CE50(v91);
      goto LABEL_26;
    }

LABEL_67:
    __break(1u);
    return;
  }

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *v74 = 0;
    _os_log_impl(&_mh_execute_header, v72, v73, "Got SE but no request", v74, 2u);
  }

  *(a3 + v36) = 0;
}

uint64_t sub_10019E2B4(void *a1, uint64_t a2)
{
  v35 = a2;
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v33 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v36 = &v33 - v9;
  v10 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v34 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v33 - v15;
  __chkstk_darwin(v14);
  v18 = &v33 - v17;
  v19 = *(*a1 + OBJC_IVAR____TtC10seserviced9SERequest_peer);
  if (v19)
  {
    v20 = *(v4 + 16);
    v20(&v33 - v17, v19 + OBJC_IVAR____TtC10seserviced4Peer_clientIdentifier, v3);
    v21 = *(v4 + 56);
    v21(v18, 0, 1, v3);
  }

  else
  {
    v21 = *(v4 + 56);
    v21(&v33 - v17, 1, 1, v3);
    v20 = *(v4 + 16);
  }

  v20(v16, v35, v3);
  v21(v16, 0, 1, v3);
  v22 = *(v7 + 48);
  v23 = v36;
  sub_1000938D4(v18, v36, &unk_10050BE80, &unk_10040B360);
  sub_1000938D4(v16, v23 + v22, &unk_10050BE80, &unk_10040B360);
  v24 = *(v4 + 48);
  if (v24(v23, 1, v3) != 1)
  {
    v35 = v18;
    v28 = v23;
    v26 = v23;
    v29 = v34;
    sub_1000938D4(v28, v34, &unk_10050BE80, &unk_10040B360);
    if (v24(v26 + v22, 1, v3) != 1)
    {
      v30 = v33;
      (*(v4 + 32))(v33, v26 + v22, v3);
      sub_1001A1F6C(&qword_100502C18, &type metadata accessor for UUID);
      v27 = dispatch thunk of static Equatable.== infix(_:_:)();
      v31 = *(v4 + 8);
      v31(v30, v3);
      sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v35, &unk_10050BE80, &unk_10040B360);
      v31(v34, v3);
      sub_100075768(v26, &unk_10050BE80, &unk_10040B360);
      return v27 & 1;
    }

    sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
    sub_100075768(v35, &unk_10050BE80, &unk_10040B360);
    (*(v4 + 8))(v29, v3);
    goto LABEL_9;
  }

  sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
  v25 = v18;
  v26 = v36;
  sub_100075768(v25, &unk_10050BE80, &unk_10040B360);
  if (v24(v26 + v22, 1, v3) != 1)
  {
LABEL_9:
    sub_100075768(v26, &qword_1005031D0, &unk_100413B20);
    v27 = 0;
    return v27 & 1;
  }

  sub_100075768(v26, &unk_10050BE80, &unk_10040B360);
  v27 = 1;
  return v27 & 1;
}

uint64_t sub_10019E7A0@<X0>(uint64_t *a1@<X0>, unint64_t *a2@<X8>)
{
  v29 = a2;
  v3 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v26 - v5;
  v7 = *a1;
  sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040C130;
  *(inited + 32) = 0xD000000000000011;
  *(inited + 40) = 0x8000000100465600;
  v9 = *(v7 + 24);
  *&v27 = *(v7 + 16);
  BYTE8(v27) = v9;
  *(inited + 48) = String.init<A>(describing:)();
  *(inited + 56) = v10;
  *(inited + 72) = &type metadata for String;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x8000000100464700;
  sub_1000938D4(v7 + OBJC_IVAR____TtC10seserviced9SERequest_connectionIdentifier, v6, &unk_10050BE80, &unk_10040B360);
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v6, 1, v11) == 1)
  {
    sub_100075768(v6, &unk_10050BE80, &unk_10040B360);
    v13 = (inited + 96);
    *(inited + 120) = &type metadata for String;
  }

  else
  {
    v26[1] = inited + 32;
    v14 = UUID.uuidString.getter();
    v16 = v15;
    (*(v12 + 8))(v6, v11);
    v13 = (inited + 96);
    *(inited + 120) = &type metadata for String;
    if (v16)
    {
      *v13 = v14;
      goto LABEL_6;
    }
  }

  *v13 = 1701736302;
  v16 = 0xE400000000000000;
LABEL_6:
  *(inited + 104) = v16;
  strcpy((inited + 128), "handoffToken");
  *(inited + 141) = 0;
  *(inited + 142) = -5120;
  sub_1000938D4(v7 + OBJC_IVAR____TtC10seserviced9SERequest_handoffToken, &v27, &qword_100502438, &qword_100409990);
  v17 = v28 != 0;
  sub_100075768(&v27, &qword_100502438, &qword_100409990);
  *(inited + 144) = v17;
  *(inited + 168) = &type metadata for Bool;
  *(inited + 176) = 0xD000000000000010;
  *(inited + 184) = 0x8000000100465620;
  *(inited + 192) = *(v7 + OBJC_IVAR____TtC10seserviced9SERequest_isBlockSelecting);
  *(inited + 216) = &type metadata for Bool;
  *(inited + 224) = 1919247728;
  *(inited + 232) = 0xE400000000000000;
  if (*(v7 + OBJC_IVAR____TtC10seserviced9SERequest_peer))
  {
    v18 = UUID.uuidString.getter();
    v20 = (inited + 240);
    *(inited + 264) = &type metadata for String;
    if (v19)
    {
      *v20 = v18;
      goto LABEL_11;
    }
  }

  else
  {
    v20 = (inited + 240);
    *(inited + 264) = &type metadata for String;
  }

  *v20 = 1701736302;
  v19 = 0xE400000000000000;
LABEL_11:
  *(inited + 248) = v19;
  *(inited + 272) = 0x797469726F697270;
  *(inited + 280) = 0xE800000000000000;
  *(inited + 288) = *(v7 + OBJC_IVAR____TtC10seserviced9SERequest_priority);
  *(inited + 312) = &type metadata for SERequest.Priority;
  *(inited + 320) = 0x6E6F73616572;
  *(inited + 328) = 0xE600000000000000;
  v21 = *(v7 + OBJC_IVAR____TtC10seserviced9SERequest_reason + 8);
  *(inited + 336) = *(v7 + OBJC_IVAR____TtC10seserviced9SERequest_reason);
  *(inited + 344) = v21;
  *(inited + 360) = &type metadata for String;
  strcpy((inited + 368), "sequenceNumber");
  *(inited + 383) = -18;
  if (*(v7 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber + 8))
  {
    *(inited + 408) = &type metadata for String;
    *(inited + 384) = 1701736302;
    *(inited + 392) = 0xE400000000000000;
  }

  else
  {
    v22 = *(v7 + OBJC_IVAR____TtC10seserviced9SERequest_sequenceNumber);
    v28 = &type metadata for Int;
    *&v27 = v22;
    sub_100075D50(&v27, (inited + 384));
  }

  strcpy((inited + 416), "sessionChecks");
  *(inited + 430) = -4864;
  v23 = *(v7 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8);
  *(inited + 456) = &type metadata for Bool;
  *(inited + 432) = (v23 & 1) == 0;

  v24 = sub_10008FFDC(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100507D30, &unk_100409C90);
  result = swift_arrayDestroy();
  *v29 = v24;
  return result;
}

uint64_t sub_10019EC94()
{
  v1 = OBJC_IVAR____TtC10seserviced5DSKSE_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_100075768(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_ownerConnectionIdentifier, &unk_10050BE80, &unk_10040B360);
  sub_100075768(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_ownerIdentifier, &unk_10050BE80, &unk_10040B360);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced5DSKSE_pendingRequestQueue);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for DSKSE()
{
  result = qword_100505290;
  if (!qword_100505290)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10019EDFC()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v4 = *(v0 - 8) + 64;
    sub_10019EEF4();
    if (v3 <= 0x3F)
    {
      v5 = *(v2 - 8) + 64;
      swift_updateClassMetadata2();
    }
  }
}

void sub_10019EEF4()
{
  if (!qword_1005052A0)
  {
    type metadata accessor for UUID();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_1005052A0);
    }
  }
}

unint64_t sub_10019EF78()
{
  result = qword_100505360;
  if (!qword_100505360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505360);
  }

  return result;
}

unint64_t sub_10019EFD0()
{
  result = qword_100505368;
  if (!qword_100505368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100505368);
  }

  return result;
}

uint64_t sub_10019F024@<X0>(uint64_t result@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, BOOL *a4@<X8>)
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

uint64_t sub_10019F254()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 28, 7);
}

uint64_t sub_10019F29C()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10019F2E8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10019F320(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v1 = v3;
  if (result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      v5 = v3 & 0xFFFFFFFFFFFFFF8;
      if (a1 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }

LABEL_10:
    _CocoaArrayWrapper.endIndex.getter();
    goto LABEL_11;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    goto LABEL_10;
  }

  v5 = v3 & 0xFFFFFFFFFFFFFF8;
LABEL_9:
  v6 = *(v5 + 16);
LABEL_11:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v1 = result;
  return result;
}

char *sub_10019F3C0(char *a1, int64_t a2, char a3)
{
  result = sub_10019FB70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F3E0(void *a1, int64_t a2, char a3)
{
  result = sub_1001A04D4(a1, a2, a3, *v3, &qword_100505490, &qword_10040CD10, &qword_100505498, &qword_10040CD18);
  *v3 = result;
  return result;
}

size_t sub_10019F420(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_100503F10, &qword_10040A008, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_10019F464(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0EC8(a1, a2, a3, *v3, &qword_100505378, &qword_10040CC10, &qword_100502600, &unk_100417140);
  *v3 = result;
  return result;
}

char *sub_10019F4A4(char *a1, int64_t a2, char a3)
{
  result = sub_10019FDCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F4C4(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0EC8(a1, a2, a3, *v3, &qword_1005042B0, &qword_10040B5C0, &qword_100505FD0, &qword_10040B550);
  *v3 = result;
  return result;
}

void *sub_10019F504(void *a1, int64_t a2, char a3)
{
  result = sub_10019FED8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10019F524(char *a1, int64_t a2, char a3)
{
  result = sub_1001A0CC8(a1, a2, a3, *v3, &qword_100505430, &qword_10040CCC0);
  *v3 = result;
  return result;
}

char *sub_10019F554(char *a1, int64_t a2, char a3)
{
  result = sub_1001A000C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F574(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F594(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0FFC(a1, a2, a3, *v3, &qword_100505380, &qword_10040CC18, &qword_100505388, &qword_10040CC20);
  *v3 = result;
  return result;
}

void *sub_10019F5D4(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0250(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F5F4(void *a1, int64_t a2, char a3)
{
  result = sub_1001A03A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F614(void *a1, int64_t a2, char a3)
{
  result = sub_1001A04D4(a1, a2, a3, *v3, &qword_1005053E0, &qword_10040CC78, &qword_1005053E8, &qword_10040CC80);
  *v3 = result;
  return result;
}

char *sub_10019F654(char *a1, int64_t a2, char a3)
{
  result = sub_1001A0CC8(a1, a2, a3, *v3, &qword_1005042A0, &qword_10040B5B0);
  *v3 = result;
  return result;
}

char *sub_10019F684(char *a1, int64_t a2, char a3)
{
  result = sub_1001A061C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F6A4(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0740(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10019F6C4(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_1005043D0, &qword_10040B6D0, &type metadata accessor for SEStorageCredential);
  *v3 = result;
  return result;
}

size_t sub_10019F708(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A0888(a1, a2, a3, *v3, &qword_100505438, &qword_10040CCC8, &qword_100505440, &unk_100413B30);
  *v3 = result;
  return result;
}

size_t sub_10019F748(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A0888(a1, a2, a3, *v3, &qword_100505448, &qword_10040CCD0, &qword_100505450, &qword_10040CCD8);
  *v3 = result;
  return result;
}

size_t sub_10019F788(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A0888(a1, a2, a3, *v3, &qword_100505458, &qword_10040CCE0, &qword_100505460, &qword_100413B40);
  *v3 = result;
  return result;
}

void *sub_10019F7C8(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0EC8(a1, a2, a3, *v3, &qword_100505480, &qword_10040CD00, &qword_100505488, &qword_10040CD08);
  *v3 = result;
  return result;
}

size_t sub_10019F808(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_1005043E8, &qword_10040B6E8, &type metadata accessor for SEStorageManagementViewModel.WalletUsageGroup.PassEntry);
  *v3 = result;
  return result;
}

size_t sub_10019F84C(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_100505470, &qword_10040CCF0, &type metadata accessor for SEStorageManagementSheet.ProposedCredentialType);
  *v3 = result;
  return result;
}

size_t sub_10019F890(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_1005043B0, &qword_10040B6B8, &type metadata accessor for SECCredentialConfig);
  *v3 = result;
  return result;
}

char *sub_10019F8D4(char *a1, int64_t a2, char a3)
{
  result = sub_1001A0A70(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10019F8F4(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_100504390, &qword_10040B698, type metadata accessor for PresentmentInfo);
  *v3 = result;
  return result;
}

void *sub_10019F938(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0B80(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10019F958(char *a1, int64_t a2, char a3)
{
  result = sub_1001A0CC8(a1, a2, a3, *v3, &qword_100505410, &qword_10040CCA0);
  *v3 = result;
  return result;
}

char *sub_10019F988(char *a1, int64_t a2, char a3)
{
  result = sub_1001A0DC4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019F9A8(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0EC8(a1, a2, a3, *v3, &qword_100505390, &qword_10040CC28, &qword_100505398, &qword_10040CC30);
  *v3 = result;
  return result;
}

void *sub_10019F9E8(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0FFC(a1, a2, a3, *v3, &qword_1005053B0, &qword_10040CC48, &qword_1005053B8, &qword_10040CC50);
  *v3 = result;
  return result;
}

void *sub_10019FA28(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0FFC(a1, a2, a3, *v3, &qword_1005053C0, &qword_10040CC58, &qword_1005053C8, &qword_10040CC60);
  *v3 = result;
  return result;
}

void *sub_10019FA68(void *a1, int64_t a2, char a3)
{
  result = sub_1001A0FFC(a1, a2, a3, *v3, &qword_1005053D0, &qword_10040CC68, &qword_1005053D8, &qword_10040CC70);
  *v3 = result;
  return result;
}

size_t sub_10019FAA8(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_100505478, &qword_10040CCF8, &type metadata accessor for AppletType);
  *v3 = result;
  return result;
}

size_t sub_10019FAEC(size_t a1, int64_t a2, char a3)
{
  result = sub_1001A1144(a1, a2, a3, *v3, &qword_1005043C8, &qword_10040B6C8, &type metadata accessor for CredentialType);
  *v3 = result;
  return result;
}

void *sub_10019FB30(void *a1, int64_t a2, char a3)
{
  result = sub_1001A1320(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10019FB50(void *a1, int64_t a2, char a3)
{
  result = sub_1001A1464(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10019FB70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&unk_100504720, &qword_100414C40);
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

void *sub_10019FC7C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005042D0, &qword_10040B5E0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[7 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 56 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005025F0, &qword_100409A18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10019FDCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005025E0, &unk_10040F430);
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

void *sub_10019FED8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100505468, &qword_10040CCE8);
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
    sub_100068FC4(&qword_1005048A0, &qword_100409C80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A000C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100502448, &qword_100409998);
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

void *sub_1001A0108(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005042D8, &qword_10040B5E8);
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
    sub_100068FC4(&qword_1005042E0, &qword_10040B5F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A0250(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005053F8, &qword_10040CC88);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[9 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 72 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100505400, &qword_10040CC90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A03A0(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100504F00, &qword_10040C480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_1005053F0, &unk_10040CDE0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A04D4(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100068FC4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v16[2] = v14;
    v16[3] = 2 * ((v17 - 32) / 40);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[5 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 40 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1001A061C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504330, &qword_10040B640);
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

void *sub_1001A0740(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100504350, &qword_10040B658);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504358, &qword_10040B660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1001A0888(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  sub_100068FC4(a5, a6);
  v16 = *(sub_100068FC4(a7, a8) - 8);
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
  v21 = *(sub_100068FC4(a7, a8) - 8);
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

char *sub_1001A0A70(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504D48, &qword_10040C010);
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

void *sub_1001A0B80(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 48);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[6 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 48 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1001A0CC8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100068FC4(a5, a6);
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
    v12 = _swiftEmptyArrayStorage;
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

char *sub_1001A0DC4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100505418, &qword_10040CCA8);
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

void *sub_1001A0EC8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100068FC4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

void *sub_1001A0FFC(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100068FC4(a5, a6);
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
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_1001A1144(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_100068FC4(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v16 == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

void *sub_1001A1320(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005053A0, &qword_10040CC38);
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
    sub_100068FC4(&qword_1005053A8, &qword_10040CC40);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1001A1464(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&unk_100507CD0, &unk_100414C50);
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
    sub_100068FC4(&unk_100504020, &qword_100409CC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1001A15AC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A1648(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_1001A16C4(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void))
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v4 = a3;
  v7 = a2;
  v11 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v8 = v5 + 4;
  v6 = &v5[a1 + 4];
  a4(0);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v13)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    result = v5[2];
    v14 = result - v7;
    if (!__OFSUB__(result, v7))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v14 = result - v7;
  if (__OFSUB__(result, v7))
  {
    goto LABEL_23;
  }

LABEL_6:
  v15 = (v6 + 8 * v4);
  v16 = &v8[v7];
  if (v15 != v16 || v15 >= &v16[8 * v14])
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v5[2];
  }

  if (__OFADD__(result, v10))
  {
    goto LABEL_24;
  }

  v5[2] = result + v10;
LABEL_17:
  if (v4 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A17E0(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A18CC(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  sub_100068FC4(&qword_1005042C0, &qword_10040B5D0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A19E4(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  sub_100068FC4(&qword_1005042F0, &qword_10040B600);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A1AE0(unint64_t a1)
{
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_19:
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v4 = 0;
  while (v3 != v4)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v4 >= *(v2 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      v6 = *(a1 + 8 * v4 + 32);
    }

    if (*(v6 + OBJC_IVAR____TtC10seserviced9SERequest_peer) && (static UUID.== infix(_:_:)() & 1) != 0)
    {
      v7 = *(v6 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks);
      v8 = *(v6 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8);

      if (v8 & 1) == 0 && (v7)
      {
        return v4;
      }
    }

    else
    {
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_18;
    }
  }

  return 0;
}

unint64_t sub_1001A1C34(unint64_t *a1)
{
  v3 = *a1;
  result = sub_1001A1AE0(*a1);
  v6 = result;
  if (v1)
  {
    return v6;
  }

  if (v5)
  {
    if (v3 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v3 >> 62)
    {
      if (v7 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v6;
      }
    }

    else if (v7 == *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v6;
    }

    if ((v3 & 0xC000000000000001) != 0)
    {
      v11 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v7 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_46;
    }

    v11 = *(v3 + 8 * v7 + 32);

LABEL_16:
    if (*(v11 + OBJC_IVAR____TtC10seserviced9SERequest_peer) && (static UUID.== infix(_:_:)() & 1) != 0)
    {
      v12 = *(v11 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks);
      v13 = *(v11 + OBJC_IVAR____TtC10seserviced9SERequest_sessionChecks + 8);

      if (v13 & 1) == 0 && (v12)
      {
        goto LABEL_9;
      }
    }

    else
    {
    }

    if (v6 != v7)
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if ((v6 & 0x8000000000000000) != 0)
        {
          goto LABEL_50;
        }

        v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v6 >= v16)
        {
          goto LABEL_51;
        }

        if (v7 >= v16)
        {
          goto LABEL_52;
        }

        v14 = *(v3 + 32 + 8 * v6);
        v15 = *(v3 + 32 + 8 * v7);
      }

      if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
      {
        v3 = sub_1001A1648(v3);
        v17 = (v3 >> 62) & 1;
      }

      else
      {
        LODWORD(v17) = 0;
      }

      v18 = v3 & 0xFFFFFFFFFFFFFF8;
      v19 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20);
      *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * v6 + 0x20) = v15;

      if ((v3 & 0x8000000000000000) != 0 || v17)
      {
        v3 = sub_1001A1648(v3);
        v18 = v3 & 0xFFFFFFFFFFFFFF8;
        if ((v7 & 0x8000000000000000) != 0)
        {
LABEL_43:
          __break(1u);
          return v6;
        }
      }

      else if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_43;
      }

      if (v7 >= *(v18 + 16))
      {
        goto LABEL_49;
      }

      v8 = v18 + 8 * v7;
      v9 = *(v8 + 32);
      *(v8 + 32) = v14;

      *a1 = v3;
    }

    v10 = __OFADD__(v6++, 1);
    if (v10)
    {
      goto LABEL_48;
    }

LABEL_9:
    v10 = __OFADD__(v7++, 1);
    if (v10)
    {
      goto LABEL_47;
    }
  }

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
  return _CocoaArrayWrapper.endIndex.getter();
}

void sub_1001A1EF0(void *a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

uint64_t sub_1001A1EFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001A1F6C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1001A1FB4()
{
  result = qword_1005064B0;
  if (!qword_1005064B0)
  {
    sub_1000692D8(&unk_100501E60, &qword_100408C30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005064B0);
  }

  return result;
}

uint64_t sub_1001A2024(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_21;
  }

  v8 = a4;
  v4 = a3;
  v7 = a2;
  v12 = *v5;
  v5 = (*v5 & 0xFFFFFFFFFFFFFF8);
  v9 = v5 + 4;
  v6 = &v5[a1 + 4];
  type metadata accessor for DSKBLEConnectionPriority.Connection(0);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v4, v11);
  v11 = v4 - v11;
  if (v14)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v11)
  {
    v10 = v12 >> 62;
    if (!(v12 >> 62))
    {
      result = v5[2];
      v15 = result - v7;
      if (!__OFSUB__(result, v7))
      {
        goto LABEL_6;
      }

      goto LABEL_24;
    }

LABEL_22:
    result = _CocoaArrayWrapper.endIndex.getter();
    v15 = result - v7;
    if (!__OFSUB__(result, v7))
    {
LABEL_6:
      v16 = &v6[v4];
      v17 = &v9[v7];
      if (v16 != v17 || v16 >= &v17[8 * v15])
      {
        memmove(v16, v17, 8 * v15);
      }

      if (v10)
      {
        result = _CocoaArrayWrapper.endIndex.getter();
      }

      else
      {
        result = v5[2];
      }

      if (!__OFADD__(result, v11))
      {
        v5[2] = result + v11;
        goto LABEL_17;
      }

LABEL_25:
      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_17:
  if (v4 > 0)
  {
    *v6 = v8;

    if (v4 != 1)
    {
      goto LABEL_26;
    }
  }

  return result;
}

uint64_t sub_1001A2144(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_15;
  }

LABEL_4:
  v10 = v5 - v6;
  if (__OFSUB__(v5, v6))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v11 = 1 - v10;
  if (__OFSUB__(1, v10))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v8)
  {
    v12 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v12 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v13 = __OFADD__(v12, v11);
  result = v12 + v11;
  if (v13)
  {
    goto LABEL_18;
  }

  sub_10019F320(result);

  return sub_1001A2024(v6, v5, 1, v3);
}

unint64_t sub_1001A2248(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_13;
  }

  v7 = *v3;
  v8 = v7 + 32 + 24 * result;
  sub_100068FC4(&qword_1005042E0, &qword_10040B5F0);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v10)
  {
    goto LABEL_10;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_14;
  }

  result = v8 + 24 * a3;
  v13 = (v7 + 32 + 24 * a2);
  if (result != v13 || result >= v13 + 24 * v12)
  {
    result = memmove(result, v13, 24 * v12);
  }

  v14 = *(v7 + 16);
  v9 = __OFADD__(v14, v10);
  v15 = v14 + v10;
  if (v9)
  {
    goto LABEL_15;
  }

  *(v7 + 16) = v15;
LABEL_10:
  if (a3 > 0)
  {
LABEL_16:
    __break(1u);
  }

  return result;
}

uint64_t sub_1001A2360(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  v13 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t sub_1001A2438(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, uint64_t *a5)
{
  v11 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v5 = a3;
  v8 = a2;
  v12 = *v6;
  v6 = (*v6 & 0xFFFFFFFFFFFFFF8);
  v9 = v6 + 4;
  v7 = &v6[a1 + 4];
  sub_10009393C(0, a4, a5);
  result = swift_arrayDestroy();
  v14 = __OFSUB__(v5, v11);
  v11 = v5 - v11;
  if (v14)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v11)
  {
    goto LABEL_17;
  }

  v10 = v12 >> 62;
  if (!(v12 >> 62))
  {
    result = v6[2];
    v15 = result - v8;
    if (!__OFSUB__(result, v8))
    {
      goto LABEL_6;
    }

LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_21:
  result = _CocoaArrayWrapper.endIndex.getter();
  v15 = result - v8;
  if (__OFSUB__(result, v8))
  {
    goto LABEL_23;
  }

LABEL_6:
  v16 = (v7 + 8 * v5);
  v17 = &v9[v8];
  if (v16 != v17 || v16 >= &v17[8 * v15])
  {
    memmove(v16, v17, 8 * v15);
  }

  if (v10)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = v6[2];
  }

  if (__OFADD__(result, v11))
  {
    goto LABEL_24;
  }

  v6[2] = result + v11;
LABEL_17:
  if (v5 > 0)
  {
LABEL_25:
    __break(1u);
  }

  return result;
}

unint64_t sub_1001A2554(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_17;
  }

  v11 = *v5;
  v12 = (v11 + 32 + 16 * result);
  sub_100068FC4(&qword_1005042F0, &qword_10040B600);
  result = swift_arrayDestroy();
  v13 = __OFSUB__(a3, v6);
  v14 = a3 - v6;
  if (v13)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14)
  {
    v15 = *(v11 + 16);
    v13 = __OFSUB__(v15, a2);
    v16 = v15 - a2;
    if (!v13)
    {
      result = &v12[2 * a3];
      v17 = (v11 + 32 + 16 * a2);
      if (result != v17 || result >= v17 + 16 * v16)
      {
        result = memmove(result, v17, 16 * v16);
      }

      v19 = *(v11 + 16);
      v13 = __OFADD__(v19, v14);
      v20 = v19 + v14;
      if (!v13)
      {
        *(v11 + 16) = v20;
        goto LABEL_13;
      }

LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

LABEL_13:
  if (a3 > 0)
  {
    *v12 = a4;
    v12[1] = a5;
    result = swift_unknownObjectRetain();
    if (a3 != 1)
    {
      goto LABEL_20;
    }
  }

  return result;
}

unint64_t sub_1001A2648(unint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_14;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v8 = result;
  v9 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = __OFSUB__(1, v9);
  v11 = 1 - v9;
  if (v10)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v12 = v7 + v11;
  if (__OFADD__(v7, v11))
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v15 = *v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v12 > v6[3] >> 1)
  {
    if (v7 <= v12)
    {
      v17 = v12;
    }

    else
    {
      v17 = v7;
    }

    v6 = sub_10012F404(isUniquelyReferenced_nonNull_native, v17, 1, v6);
    *v4 = v6;
  }

  result = sub_1001A2554(v8, a2, 1, a3, a4);
  *v4 = v6;
  return result;
}

uint64_t sub_1001A2738(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v4 = a4;
    v6 = a3;
    v7 = a2;
    v8 = a1;
    v9 = *v5;
    v10 = *v5 >> 62;
    if (!v10)
    {
      result = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v7, v8))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v12 = v8 - v7;
  if (__OFSUB__(0, v7 - v8))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v10)
  {
    v13 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v13 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v14 = __OFADD__(v13, v12);
  result = v13 + v12;
  if (!v14)
  {
    sub_10019F320(result);
    return sub_1001A2438(v8, v7, 0, v6, v4);
  }

LABEL_16:
  __break(1u);
  return result;
}

uint64_t sub_1001A2834(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a3;
    v5 = a2;
    v6 = a1;
    v7 = *v4;
    v8 = *v4 >> 62;
    if (!v8)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_13:
      __break(1u);
      goto LABEL_14;
    }
  }

  result = _CocoaArrayWrapper.endIndex.getter();
  if (result < v5)
  {
    goto LABEL_13;
  }

LABEL_4:
  if (__OFSUB__(v5, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v10 = v6 - v5;
  if (__OFSUB__(0, v5 - v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8)
  {
    v11 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v11 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v12 = __OFADD__(v11, v10);
  result = v11 + v10;
  if (!v12)
  {
    sub_10019F320(result);
    return sub_1001A16C4(v6, v5, 0, v3);
  }

LABEL_16:
  __break(1u);
  return result;
}