unint64_t sub_100907BEC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016C2C30, &qword_1013C5330);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v16, &qword_1016ADCA0, &qword_1013C5338);
      v5 = v16;
      v6 = v17;
      result = sub_100771D58(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 48 * result);
      v11 = v18;
      v12 = v19[0];
      *(v10 + 25) = *(v19 + 9);
      *v10 = v11;
      v10[1] = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 64;
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

unint64_t sub_100907D24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADCE0, &unk_1013C5380);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v16, &qword_101696CA0, &qword_10138B5D8);
      v5 = v16;
      v6 = v17;
      result = sub_100771D58(v16, v17);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      v10 = (v3[7] + 48 * result);
      v11 = v18;
      v12 = v19[0];
      *(v10 + 26) = *(v19 + 10);
      *v10 = v11;
      v10[1] = v12;
      v13 = v3[2];
      v14 = __OFADD__(v13, 1);
      v15 = v13 + 1;
      if (v14)
      {
        goto LABEL_10;
      }

      v3[2] = v15;
      v4 += 64;
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

unint64_t sub_100907E70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADCB8, &qword_1013C5350);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100771D58(v5, v6);
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

unint64_t sub_100907F84(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016A5AB8, &unk_1013B35E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADD88, &qword_1013C54A0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016A5AB8, &unk_1013B35E0);
      v12 = *v6;
      result = sub_100771F0C(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for BookmarkMetaData();
      result = sub_10090C57C(&v6[v9], v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for BookmarkMetaData);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090818C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_1000BC4D4(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_1000BC4D4(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1000D2A70(v17, v13, a2, v28);
      result = sub_1000210EC(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_100908390(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADCD0, &unk_1013C5368);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100777014(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_100908488(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADD60, &qword_1013C5448);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADD68, &unk_1013C5450);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADD60, &qword_1013C5448);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100771D58(*v6, v13);
      if (v15)
      {
        break;
      }

      v16 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v17 = (v8[6] + 16 * result);
      *v17 = v12;
      v17[1] = v13;
      v18 = v8[7];
      v19 = type metadata accessor for MultipartAccessoryPairingInfo(0);
      result = sub_10090C57C(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for MultipartAccessoryPairingInfo);
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

unint64_t sub_100908670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADE20, &qword_1013C5560);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_errorRetain();
      result = sub_1007720C0(v6);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v5;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016C2CD0, &qword_1013C5328);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 32)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_10090C56C(v7, v8);
      result = sub_100771D58(v5, v6);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      v12 = v3[7] + 16 * result;
      *v12 = v7;
      *(v12 + 8) = v8;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1009088AC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000BC4D4(&qword_10169CAF8, &qword_101399640);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a1 + 48);
  result = sub_1007721A4(v4);
  if (v8)
  {
LABEL_7:
    __break(1u);
    return _swiftEmptyDictionarySingleton;
  }

  v9 = (a1 + 72);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + result) = v4;
    v10 = (v3[7] + 16 * result);
    *v10 = v5;
    v10[1] = v6;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    sub_100017D5C(v5, v6);
    if (!--v1)
    {
      return v3;
    }

    v4 = *(v9 - 16);
    v5 = *(v9 - 1);
    v6 = *v9;
    result = sub_1007721A4(v4);
    v9 += 3;
    if (v14)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100908A3C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000BC4D4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100771D58(v7, v8);
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

unint64_t sub_100908B38(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADC98, &unk_1013C5300);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v21 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016C2DB0, &qword_1013F7690);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADC98, &unk_1013C5300);
      v12 = *v6;
      result = sub_100771D14(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for Date();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, &v6[v9], v17);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908D44(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_1000BC4D4(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_1000BC4D4(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1000D2A70(v17, v13, a2, v28);
      result = sub_1000210EC(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for UUID();
      result = (*(*(v23 - 8) + 32))(v22 + *(*(v23 - 8) + 72) * v21, v13, v23);
      *(v15[7] + v21) = v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100908F24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016A0B08, &unk_1013C5390);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v13, &unk_1016AD670, &unk_1013C3FF0);
      v5 = v13;
      v6 = v14;
      result = sub_100771D58(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004D07C(&v15, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090907C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADCD8, &qword_1013C5378);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      result = sub_100771D58(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909188(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE00, &qword_1013C5538);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADE08, &qword_1013C5540);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADE00, &qword_1013C5538);
      result = sub_1007723C0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MACAddress();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + v14) = v6[v9];
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909370(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADDF0, &qword_1013C5528);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADDF8, &qword_1013C5530);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADDF0, &qword_1013C5528);
      result = sub_1007723C0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MACAddress();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909590(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADDE8, &qword_1013C5518);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&unk_1016C3240, &qword_1013C5520);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADDE8, &qword_1013C5518);
      result = sub_1007723C0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MACAddress();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1009097B0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADD20, &qword_1013C53F8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100777014(v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v6;
      *(v3[7] + 8 * result) = v7;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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

unint64_t sub_1009098A8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADDD0, &qword_1013C5500);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADDD8, &qword_1013C5508);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADDD0, &qword_1013C5500);
      result = sub_100772524(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for OwnedBeaconRecord();
      result = sub_10090C57C(v6, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for OwnedBeaconRecord);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909AB0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE48, &unk_1013C5590);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&unk_1016C2D30, &unk_1013F7620);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADE48, &unk_1013C5590);
      result = sub_1000210EC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 8 * v14) = *&v6[v9];
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909CAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016C2FC0, &qword_1013C53F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 32);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      sub_100017D5C(v8, v9);
      result = sub_100772110(v5, v6, v7);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = v3[6] + 24 * result;
      *v12 = v5;
      *(v12 + 8) = v6;
      *(v12 + 16) = v7;
      v13 = (v3[7] + 16 * result);
      *v13 = v8;
      v13[1] = v9;
      v14 = v3[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v3[2] = v16;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100909DD0(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADCA8, &unk_1013C5340);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADCB0, &qword_1013F7560);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADCA8, &unk_1013C5340);
      result = sub_1000210EC(v6);
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
      v18 = type metadata accessor for BeaconEstimatedLocation();
      result = sub_10090C57C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for BeaconEstimatedLocation);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090A034(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE50, &qword_1013C55A0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADE58, &qword_1013C55A8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADE50, &qword_1013C55A0);
      result = sub_1000210EC(v6);
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
      v18 = type metadata accessor for DispatchTime();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void *sub_10090A254(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000BC4D4(&qword_1016C2C10, &qword_1013C5320);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_100772048(v4);
  if (v7)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v8 = v6;
  result = v5;
  v10 = (a1 + 56);
  while (1)
  {
    *(v3 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v8;
    *(v3[6] + v8) = v4;
    *(v3[7] + 8 * v8) = result;
    v11 = v3[2];
    v12 = __OFADD__(v11, 1);
    v13 = v11 + 1;
    if (v12)
    {
      break;
    }

    v3[2] = v13;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v14 = v10 + 2;
    v4 = *(v10 - 8);
    v15 = *v10;

    v8 = sub_100772048(v4);
    v10 = v14;
    result = v15;
    if (v16)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10090A388(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE70, &qword_1013C55C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016C3290, &qword_1013C55C8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADE70, &qword_1013C55C0);
      result = sub_1000210EC(v6);
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
      v18 = type metadata accessor for BeaconState(0);
      result = sub_10090C57C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for BeaconState);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090A5A4(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE60, &unk_1013C55B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v24 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADE68, &unk_1013F7A90);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADE60, &unk_1013C55B0);
      result = sub_1000210EC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7] + 40 * v14;
      v18 = *(v9 + 1);
      v19 = *(v9 + 4);
      v20 = *(v9 + 1);
      *v17 = *v9;
      *(v17 + 8) = v18;
      *(v17 + 16) = v20;
      *(v17 + 32) = v19;
      v21 = v8[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v8[2] = v23;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090A7A8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADE80, &unk_1013C55E0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&unk_1016AFA20, &qword_1013CB0B0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = &v6[*(v2 + 48)];
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADE80, &unk_1013C55E0);
      result = sub_1000210EC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = (v8[7] + 16 * v14);
      v18 = *(v9 + 1);
      *v17 = *v9;
      v17[1] = v18;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090A9D0(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v6 = sub_1000BC4D4(&qword_1016ADE30, &qword_1013C5578);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    sub_1000BC4D4(a2, a3);
    v12 = static _DictionaryStorage.allocate(capacity:)();
    v13 = *(v6 + 48);
    v14 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v15 = *(v7 + 72);

    while (1)
    {
      sub_1000D2A70(v14, v10, &qword_1016ADE30, &qword_1013C5578);
      result = sub_1000210EC(v10);
      if (v17)
      {
        break;
      }

      v18 = result;
      *(v12 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v19 = v12[6];
      v20 = type metadata accessor for UUID();
      result = (*(*(v20 - 8) + 32))(v19 + *(*(v20 - 8) + 72) * v18, v10, v20);
      *(v12[7] + 16 * v18) = *&v10[v13];
      v21 = v12[2];
      v22 = __OFADD__(v21, 1);
      v23 = v21 + 1;
      if (v22)
      {
        goto LABEL_10;
      }

      v12[2] = v23;
      v14 += v15;
      if (!--v11)
      {

        return v12;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090ABB8(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADD98, &qword_1013C54B0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADDA0, &qword_1013C54B8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADD98, &qword_1013C54B0);
      result = sub_1000210EC(v6);
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
      v18 = type metadata accessor for Device();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
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

unint64_t sub_10090AE20(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_1000BC4D4(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_1000BC4D4(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_1000D2A70(v17, v13, a2, v28);
      result = sub_100772AE4(v13);
      if (v20)
      {
        break;
      }

      v21 = result;
      *(v15 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v22 = v15[6];
      v23 = type metadata accessor for BeaconKeyManager.FileKey(0);
      result = sub_10090C57C(v13, v22 + *(*(v23 - 8) + 72) * v21, type metadata accessor for BeaconKeyManager.FileKey);
      *(v15[7] + 8 * v21) = *&v13[v16];
      v24 = v15[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_10;
      }

      v15[2] = v26;
      v17 += v18;
      if (!--v14)
      {

        return v15;
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

unint64_t sub_10090B010(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000BC4D4(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100771D58(v7, v8);
      if (v12)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v13 = (v5[6] + 16 * result);
      *v13 = v7;
      v13[1] = v8;
      *(v5[7] + 8 * result) = v10;
      v14 = v5[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v5[2] = v16;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B10C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADC90, &qword_1013C52E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016C2C00, &qword_1013C52F0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADC90, &qword_1013C52E8);
      v12 = *v6;
      result = sub_100771FF8(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for BeaconStoreFileRecord();
      result = sub_10090C57C(v6 + v9, v16 + *(*(v17 - 8) + 72) * v15, type metadata accessor for BeaconStoreFileRecord);
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

unint64_t sub_10090B2F0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016C3040, &qword_1013B6518);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, v13, &qword_1016ADD10, &qword_1013C53E0);
      result = sub_100771E5C(v13);
      if (v6)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v7 = v3[6] + 40 * result;
      v8 = v13[0];
      v9 = v13[1];
      *(v7 + 32) = v14;
      *v7 = v8;
      *(v7 + 16) = v9;
      result = sub_10004D07C(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 72;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B454(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(uint64_t))
{
  v4 = a1[2];
  if (!v4)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_1000BC4D4(a2, a3);
  v7 = static _DictionaryStorage.allocate(capacity:)();
  v8 = a1[4];
  v9 = a1[5];
  result = a4(v8);
  if (v11)
  {
LABEL_7:
    __break(1u);
LABEL_8:
    v20 = v9;
    return v7;
  }

  v12 = (a1 + 7);
  while (1)
  {
    *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v7[6] + 8 * result) = v8;
    *(v7[7] + 8 * result) = v9;
    v13 = v7[2];
    v14 = __OFADD__(v13, 1);
    v15 = v13 + 1;
    if (v14)
    {
      break;
    }

    v7[2] = v15;
    if (!--v4)
    {
      goto LABEL_8;
    }

    v16 = v12 + 2;
    v8 = *(v12 - 1);
    v17 = *v12;
    v18 = v9;
    result = a4(v8);
    v12 = v16;
    v9 = v17;
    if (v19)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10090B55C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101696C80, &qword_10138B5C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v20 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016A24B0, &qword_1013C5460);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_101696C80, &qword_10138B5C0);
      result = sub_100771E30(*v6, v6[1]);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 16 * result) = *v6;
      v15 = v8[7];
      v16 = type metadata accessor for OwnedBeaconGroup.PairingState(0);
      result = sub_10090C57C(v6 + v9, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for OwnedBeaconGroup.PairingState);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B740(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_101696910, &qword_10138B1F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADD80, &unk_1013C5490);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_101696910, &qword_10138B1F0);
      result = sub_1000210EC(v6);
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
      v18 = type metadata accessor for Date();
      result = (*(*(v18 - 8) + 32))(v17 + *(*(v18 - 8) + 72) * v14, &v6[v9], v18);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090B984(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADD70, &qword_1013C5468);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&unk_1016C3090, &qword_1013C5470);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADD70, &qword_1013C5468);
      result = sub_1007723C0(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for MACAddress();
      result = (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      *(v8[7] + 16 * v14) = *&v6[v9];
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090BB6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return _swiftEmptyDictionarySingleton;
  }

  sub_1000BC4D4(&qword_1016C2DD0, &unk_1013C53D0);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = sub_100771C58(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = sub_100771C58(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10090BC7C(uint64_t a1)
{
  v2 = sub_1000BC4D4(&qword_1016ADD50, &qword_1013C5438);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000BC4D4(&qword_1016ADD58, &qword_1013C5440);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_1000D2A70(v10, v6, &qword_1016ADD50, &qword_1013C5438);
      result = sub_1000210EC(v6);
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
      v18 = type metadata accessor for SafeLocation();
      result = sub_10090C57C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, type metadata accessor for SafeLocation);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090BE98(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016ADD18, &qword_1013C53E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;

      result = sub_10077262C(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10090BF84(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016A77E8, &unk_1013C53B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_1000D2A70(v4, &v11, &qword_1016ADCF8, &qword_101411890);
      v5 = v11;
      result = sub_100777014(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10004D07C(&v12, (v3[7] + 32 * result));
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

char *sub_10090C0AC()
{
  v0 = sub_100A5B550(0, 1, 1, &_swiftEmptyArrayStorage);
  v2 = *(v0 + 2);
  v1 = *(v0 + 3);
  v3 = v1 >> 1;
  v4 = v2 + 1;
  if (v1 >> 1 <= v2)
  {
    v0 = sub_100A5B550((v1 > 1), v2 + 1, 1, v0);
    v1 = *(v0 + 3);
    v3 = v1 >> 1;
  }

  *(v0 + 2) = v4;
  v5 = &v0[40 * v2];
  *(v5 + 2) = xmmword_1013C51D0;
  *(v5 + 6) = 0xE800000000000000;
  *(v5 + 7) = 2458820592;
  *(v5 + 8) = 0xA400000000000000;
  v6 = v2 + 2;
  if (v3 < (v2 + 2))
  {
    v0 = sub_100A5B550((v1 > 1), v2 + 2, 1, v0);
  }

  *(v0 + 2) = v6;
  v7 = &v0[40 * v4];
  *(v7 + 2) = xmmword_1013C51E0;
  *(v7 + 6) = 0xE400000000000000;
  *(v7 + 7) = 2996477936;
  *(v7 + 8) = 0xA400000000000000;
  v8 = *(v0 + 3);
  v9 = v2 + 3;
  if ((v2 + 3) > (v8 >> 1))
  {
    v0 = sub_100A5B550((v8 > 1), v2 + 3, 1, v0);
  }

  *(v0 + 2) = v9;
  v10 = &v0[40 * v6];
  *(v10 + 2) = xmmword_1013C51F0;
  *(v10 + 6) = 0xE600000000000000;
  *(v10 + 7) = 3079905264;
  *(v10 + 8) = 0xA400000000000000;
  v11 = *(v0 + 3);
  v12 = v2 + 4;
  if ((v2 + 4) > (v11 >> 1))
  {
    v0 = sub_100A5B550((v11 > 1), v2 + 4, 1, v0);
  }

  *(v0 + 2) = v12;
  v13 = &v0[40 * v9];
  *(v13 + 2) = xmmword_1013C5200;
  *(v13 + 6) = 0xE700000000000000;
  *(v13 + 7) = 2626789360;
  *(v13 + 8) = 0xA400000000000000;
  v14 = *(v0 + 3);
  v15 = v2 + 5;
  if ((v2 + 5) > (v14 >> 1))
  {
    v0 = sub_100A5B550((v14 > 1), v2 + 5, 1, v0);
  }

  *(v0 + 2) = v15;
  v16 = &v0[40 * v12];
  *(v16 + 2) = xmmword_1013C5210;
  *(v16 + 6) = 0xE600000000000000;
  *(v16 + 7) = 2779226096;
  *(v16 + 8) = 0xA400000000000000;
  v17 = *(v0 + 3);
  v18 = v2 + 6;
  if ((v2 + 6) > (v17 >> 1))
  {
    v0 = sub_100A5B550((v17 > 1), v2 + 6, 1, v0);
  }

  *(v0 + 2) = v18;
  v19 = &v0[40 * v15];
  *(v19 + 2) = xmmword_1013C5220;
  *(v19 + 6) = 0xE400000000000000;
  *(v19 + 7) = 2442436592;
  *(v19 + 8) = 0xA400000000000000;
  v20 = *(v0 + 3);
  v21 = v2 + 7;
  if ((v2 + 7) > (v20 >> 1))
  {
    v0 = sub_100A5B550((v20 > 1), v2 + 7, 1, v0);
  }

  *(v0 + 2) = v21;
  v22 = &v0[40 * v18];
  *(v22 + 2) = xmmword_1013C5230;
  *(v22 + 6) = 0xE700000000000000;
  *(v22 + 7) = 3014107120;
  *(v22 + 8) = 0xA400000000000000;
  v23 = *(v0 + 3);
  v24 = v2 + 8;
  if ((v2 + 8) > (v23 >> 1))
  {
    v0 = sub_100A5B550((v23 > 1), v2 + 8, 1, v0);
  }

  *(v0 + 2) = v24;
  v25 = &v0[40 * v21];
  *(v25 + 2) = xmmword_1013C5240;
  *(v25 + 6) = 0xE800000000000000;
  *(v25 + 7) = 0x8FB8EF8298E2;
  *(v25 + 8) = 0xA600000000000000;
  v26 = *(v0 + 3);
  v27 = v2 + 9;
  if ((v2 + 9) > (v26 >> 1))
  {
    v0 = sub_100A5B550((v26 > 1), v2 + 9, 1, v0);
  }

  *(v0 + 2) = v27;
  v28 = &v0[40 * v24];
  *(v28 + 2) = xmmword_1013C5250;
  *(v28 + 6) = 0xE600000000000000;
  *(v28 + 7) = 3012730864;
  *(v28 + 8) = 0xA400000000000000;
  v29 = *(v0 + 3);
  if ((v2 + 10) > (v29 >> 1))
  {
    v0 = sub_100A5B550((v29 > 1), v2 + 10, 1, v0);
  }

  *(v0 + 2) = v2 + 10;
  v30 = &v0[40 * v27];
  *(v30 + 2) = xmmword_1013C5260;
  *(v30 + 6) = 0xEB00000000656D61;
  *(v30 + 7) = 2157486064;
  *(v30 + 8) = 0xA400000000000000;
  v31 = sub_100A5B444(0, 1, 1, &_swiftEmptyArrayStorage);
  v33 = *(v31 + 2);
  v32 = *(v31 + 3);
  if (v33 >= v32 >> 1)
  {
    v31 = sub_100A5B444((v32 > 1), v33 + 1, 1, v31);
  }

  *(v31 + 2) = v33 + 1;
  v34 = &v31[32 * v33];
  *(v34 + 2) = xmmword_1013C5270;
  *(v34 + 6) = 0xE500000000000000;
  *(v34 + 7) = v0;
  return v31;
}

unint64_t sub_10090C518()
{
  result = qword_1016ADC60;
  if (!qword_1016ADC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016ADC60);
  }

  return result;
}

id sub_10090C56C(id result, char a2)
{
  if (!a2)
  {
    return result;
  }

  return result;
}

uint64_t sub_10090C57C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void sub_10090C60C()
{
  sub_1002359B8(319, &qword_10169A330);
  if (v0 <= 0x3F)
  {
    sub_1002359B8(319, &qword_1016ADEF8);
    if (v1 <= 0x3F)
    {
      sub_1002359B8(319, &unk_1016A0CD8);
      if (v2 <= 0x3F)
      {
        sub_1002359B8(319, &qword_10169D5F0);
        if (v3 <= 0x3F)
        {
          sub_1002ECE54(319, &qword_1016A8840, &qword_1016B0470, &qword_10138EB80);
          if (v4 <= 0x3F)
          {
            sub_1002359B8(319, &qword_1016BD350);
            if (v5 <= 0x3F)
            {
              sub_1002359B8(319, &qword_1016A8838);
              if (v6 <= 0x3F)
              {
                sub_1002ECE54(319, &qword_1016ADF00, &qword_101697E90, &qword_10138EB50);
                if (v7 <= 0x3F)
                {
                  sub_1002ECE54(319, &qword_1016ADF08, &qword_101697EA0, &qword_10138EB60);
                  if (v8 <= 0x3F)
                  {
                    sub_10090CC98(319, &qword_1016ADF10, type metadata accessor for SPServiceState);
                    if (v9 <= 0x3F)
                    {
                      sub_1002ECE54(319, &qword_1016ADF18, &qword_101697E78, &qword_1013F0760);
                      if (v10 <= 0x3F)
                      {
                        sub_10090CC98(319, &qword_1016B1C20, &type metadata accessor for UUID);
                        if (v11 <= 0x3F)
                        {
                          sub_10090CC98(319, &qword_1016BA040, &type metadata accessor for Date);
                          if (v12 <= 0x3F)
                          {
                            sub_1002359B8(319, &qword_1016ADF20);
                            if (v13 <= 0x3F)
                            {
                              sub_1002ECE54(319, &qword_1016ADF28, &qword_101697E40, qword_1013C5620);
                              if (v14 <= 0x3F)
                              {
                                sub_1002359B8(319, &qword_10169A148);
                                if (v15 <= 0x3F)
                                {
                                  sub_1002ECE54(319, &qword_1016ADF30, &qword_101697E28, &qword_10138EA70);
                                  if (v16 <= 0x3F)
                                  {
                                    sub_1002359B8(319, &qword_1016ADF38);
                                    if (v17 <= 0x3F)
                                    {
                                      sub_1002359B8(319, &unk_1016ADF40);
                                      if (v18 <= 0x3F)
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
            }
          }
        }
      }
    }
  }
}

void sub_10090CC98(uint64_t a1, unint64_t *a2, void (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_10090CCEC()
{
  result = qword_1016AE248;
  if (!qword_1016AE248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE248);
  }

  return result;
}

unint64_t sub_10090CD40()
{
  result = qword_1016AE250;
  if (!qword_1016AE250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE250);
  }

  return result;
}

unint64_t sub_10090CD94()
{
  result = qword_1016AE258;
  if (!qword_1016AE258)
  {
    sub_1000BC580(&qword_101697E90, &qword_10138EB50);
    sub_10090CE50();
    sub_10090D1C4(&qword_1016AE268, type metadata accessor for FeatureSupportMatrix);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE258);
  }

  return result;
}

unint64_t sub_10090CE50()
{
  result = qword_1016AE260;
  if (!qword_1016AE260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE260);
  }

  return result;
}

uint64_t sub_10090CEA4(unint64_t *a1, unint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697E78, &qword_1013F0760);
    sub_10090D1C4(a2, type metadata accessor for SPDisabledReason);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10090CF40()
{
  result = qword_1016AE288;
  if (!qword_1016AE288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE288);
  }

  return result;
}

unint64_t sub_10090CF94()
{
  result = qword_1016AE2A0;
  if (!qword_1016AE2A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2A0);
  }

  return result;
}

unint64_t sub_10090CFE8()
{
  result = qword_1016AE2A8;
  if (!qword_1016AE2A8)
  {
    sub_1000BC580(&qword_101697E90, &qword_10138EB50);
    sub_10090D0A4();
    sub_10090D1C4(&qword_1016AE2B8, type metadata accessor for FeatureSupportMatrix);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2A8);
  }

  return result;
}

unint64_t sub_10090D0A4()
{
  result = qword_1016AE2B0;
  if (!qword_1016AE2B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2B0);
  }

  return result;
}

uint64_t sub_10090D0F8(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697EA0, &qword_10138EB60);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_10090D170()
{
  result = qword_1016AE2C8;
  if (!qword_1016AE2C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2C8);
  }

  return result;
}

uint64_t sub_10090D1C4(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10090D20C()
{
  result = qword_1016AE2E8;
  if (!qword_1016AE2E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2E8);
  }

  return result;
}

uint64_t sub_10090D260(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000BC580(&qword_101697E28, &qword_10138EA70);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DefaultConfigurationLayer.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x4C)
  {
    goto LABEL_17;
  }

  if (a2 + 180 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 180) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 180;
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

      return (*a1 | (v4 << 8)) - 180;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 180;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB5;
  v8 = v6 - 181;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DefaultConfigurationLayer.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 180 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 180) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x4C)
  {
    v4 = 0;
  }

  if (a2 > 0x4B)
  {
    v5 = ((a2 - 76) >> 8) + 1;
    *result = a2 - 76;
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
    *result = a2 - 76;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10090D424()
{
  result = qword_1016AE2F8;
  if (!qword_1016AE2F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE2F8);
  }

  return result;
}

unint64_t sub_10090D47C()
{
  result = qword_1016AE300;
  if (!qword_1016AE300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE300);
  }

  return result;
}

unint64_t sub_10090D4D4()
{
  result = qword_1016AE308;
  if (!qword_1016AE308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE308);
  }

  return result;
}

uint64_t sub_10090D528(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x8000000101348500 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x754E6C6169726573 && a2 == 0xEC0000007265626DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x496873696C627570 && a2 == 0xEF6C61767265746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101364A70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101364A90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013485D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x74537265646E6966 && a2 == 0xEB00000000657461 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x74736F486E736361 && a2 == 0xEC000000656D614ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101364AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101364AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101348A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101348A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000002ALL && 0x8000000101348A80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001013485A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD00000000000001ELL && 0x80000001013485F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101348610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101348630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000101348650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 19;
  }

  else if (a1 == 0xD00000000000003ALL && 0x8000000101348680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 20;
  }

  else if (a1 == 0xD000000000000043 && 0x80000001013486C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 21;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 22;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000101348730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 23;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101348760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 24;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348780 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 25;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001013487B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 26;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001013487D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 27;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001013487F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 28;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101348810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 29;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101364AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 30;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101364B20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 31;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101364B50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 32;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001013488C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 33;
  }

  else if (a1 == 0xD00000000000002ALL && 0x80000001013488F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 34;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101348920 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 35;
  }

  else if (a1 == 0xD00000000000002CLL && 0x8000000101348950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 36;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101348980 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 37;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001013489A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 38;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013489D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 39;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001013489F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 40;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348AB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 41;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101348AE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 42;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101348B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 43;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348B40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 44;
  }

  else if (a1 == 0x65746143656C6F72 && a2 == 0xEE00736569726F67 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 45;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 46;
  }

  else if (a1 == 0xD000000000000026 && 0x8000000101348B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 47;
  }

  else if (a1 == 0x5365636976726573 && a2 == 0xEC00000065746174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 48;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101364B70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 49;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101348BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 50;
  }

  else if (a1 == 0xD000000000000012 && 0x8000000101348BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 51;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101348C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 52;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 53;
  }

  else if (a1 == 0xD000000000000011 && 0x8000000101348C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 54;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101348C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 55;
  }

  else if (a1 == 0x63616542666C6573 && a2 == 0xEE00444955556E6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 56;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101364B90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 57;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101364BB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 58;
  }

  else if (a1 == 0x5279654B7473616CLL && a2 == 0xEF657461446C6C6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 59;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101348C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 60;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101348CB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 61;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348CD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 62;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348CF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 63;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101348D10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 64;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101348D30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 65;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101364BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 66;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101348D50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 67;
  }

  else if (a1 == 0x724473776F6C6C61 && a2 == 0xEE00676E69746661 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 68;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101364BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 69;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348DA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 70;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101348DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 71;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101348DE0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 72;
  }

  else if (a1 == 0xD000000000000028 && 0x8000000101348E10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 73;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000101348E40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 74;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348E70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 75;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101348EA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 76;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101364C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 77;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101364C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 78;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101349A30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 79;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101349A50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 80;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349A80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 81;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101349AA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 82;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101349AD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 83;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101364C50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 84;
  }

  else if (a1 == 0xD000000000000013 && 0x8000000101364C70 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 85;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000101364C90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 86;
  }

  else if (a1 == 0x6941656C65487369 && a2 == 0xED000073646F5072 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 87;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001013490B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 88;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001013490D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 89;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348EC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 90;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101348EF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 91;
  }

  else if (a1 == 0xD000000000000024 && 0x8000000101348F20 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 92;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101348F50 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 93;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101348F80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 94;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000101348FA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 95;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000101348FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 96;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101348FF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 97;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000101348BB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 98;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101349020 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 99;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349040 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 100;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349060 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 101;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349080 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 102;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001013490F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 103;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101349110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 104;
  }

  else if (a1 == 0xD000000000000025 && 0x8000000101349140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 105;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101349170 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 106;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101349190 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 107;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001013491B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 108;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013491D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 109;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001013491F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 110;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 111;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000101349230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 112;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101349260 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 113;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101349280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 114;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001013492B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 115;
  }

  else if (a1 == 0xD00000000000001FLL && 0x80000001013492D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 116;
  }

  else if (a1 == 0xD000000000000018 && 0x80000001013492F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 117;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000101349310 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 118;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000101349330 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 119;
  }

  else if (a1 == 0xD00000000000001BLL && 0x8000000101349360 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 120;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101349380 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 121;
  }

  else if (a1 == 0xD000000000000032 && 0x8000000101364CC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 122;
  }

  else if (a1 == 0xD000000000000031 && 0x8000000101364D00 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 123;
  }

  else if (a1 == 0xD000000000000032 && 0x8000000101364D40 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 124;
  }

  else if (a1 == 0xD000000000000031 && 0x8000000101364D80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 125;
  }

  else if (a1 == 0xD000000000000028 && 0x80000001013493B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 126;
  }

  else if (a1 == 0xD00000000000002BLL && 0x80000001013493E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 127;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349410 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 128;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349430 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 129;
  }

  else if (a1 == 0xD000000000000032 && 0x8000000101349450 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 130;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101349490 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 131;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013494B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 132;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101364DC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 133;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013494D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 134;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001013494F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 135;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101349520 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 136;
  }

  else if (a1 == 0xD000000000000019 && 0x8000000101349540 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 137;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101349560 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 138;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101349580 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 139;
  }

  else if (a1 == 0x657261685378616DLL && a2 == 0xEF737265626D654DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 140;
  }

  else if (a1 == 0x657261685378616DLL && a2 == 0xEE00736D65744964 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 141;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001013495B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 142;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001013495D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 143;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000001013495F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 144;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 145;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000101349630 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 146;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000101349650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 147;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101349680 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 148;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001013496B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 149;
  }

  else if (a1 == 0xD000000000000024 && 0x80000001013496E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 150;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349710 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 151;
  }

  else if (a1 == 0xD00000000000002BLL && 0x8000000101349730 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 152;
  }

  else if (a1 == 0xD00000000000002DLL && 0x8000000101349760 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 153;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349790 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 154;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001013497B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 155;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001013497E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 156;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101349AF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 157;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 158;
  }

  else if (a1 == 0xD000000000000021 && 0x8000000101349B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 159;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000101349B60 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 160;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101349B80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 161;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000101349BA0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 162;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000101349BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 163;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101349810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 164;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 165;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101349850 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 166;
  }

  else if (a1 == 0xD00000000000001FLL && 0x8000000101349870 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 167;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000101349890 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 168;
  }

  else if (a1 == 0xD00000000000002DLL && 0x80000001013498B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 169;
  }

  else if (a1 == 0xD000000000000022 && 0x80000001013498E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 170;
  }

  else if (a1 == 0xD00000000000001ELL && 0x8000000101349910 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 171;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349930 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 172;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349950 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 173;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000101349970 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 174;
  }

  else if (a1 == 0xD000000000000029 && 0x80000001013499A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 175;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001013499D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 176;
  }

  else if (a1 == 0xD00000000000001DLL && 0x80000001013499F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 177;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000101349A10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 178;
  }

  else if (a1 == 0xD000000000000018 && 0x8000000101349BF0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 179;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000101349C10 == a2)
  {

    return 180;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4294967220;
    }

    else
    {
      return 4294967221;
    }
  }
}

Swift::Int sub_100910B10(void **a1)
{
  v2 = *(type metadata accessor for BeaconObservation() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_100B32020(v3);
  }

  v4 = v3[2];
  v6[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v6[1] = v4;
  result = sub_10091835C(v6);
  *a1 = v3;
  return result;
}

Swift::Int sub_100910BB8(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_100B321EC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  result = _minimumMergeRunLength(_:)(v3);
  if (result >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = v2[v9 + 32];
        v12 = qword_1013C6530[v11];
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 >= qword_1013C6530[v15])
          {
            break;
          }

          v14[1] = v15;
          *v14-- = v11;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        ++v10;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = result;
    v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
      v7[2] = v6;
    }

    else
    {
      v7 = _swiftEmptyArrayStorage;
    }

    v17[0] = v7 + 4;
    v17[1] = v6;
    sub_100919994(v17, v18, v19, v5);
    v7[2] = 0;
  }

  *a1 = v2;
  return result;
}

void sub_100910D08()
{
  v1 = swift_allocObject();
  swift_weakInit();
  v2 = [objc_allocWithZone(FMStateCapture) init];
  v3 = swift_allocObject();
  *(v3 + 16) = sub_100910F7C;
  *(v3 + 24) = v1;
  v6[4] = sub_100910F84;
  v6[5] = v3;
  v6[0] = _NSConcreteStackBlock;
  v6[1] = 1107296256;
  v6[2] = sub_10015013C;
  v6[3] = &unk_10163B818;
  v4 = _Block_copy(v6);

  [v2 setStateCaptureBlock:v4];
  _Block_release(v4);

  v5 = *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_stateCapture);
  *(v0 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_stateCapture) = v2;
}

unint64_t sub_100910E58@<X0>(char **a1@<X8>)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 280);
    v4 = Strong;

    v5 = objc_autoreleasePoolPush();
    sub_100910F8C(v4, v3, &v12);
    objc_autoreleasePoolPop(v5);
    v6 = v12;
    v7 = objc_autoreleasePoolPush();
    sub_100913B8C(v4, &v12);
    objc_autoreleasePoolPop(v7);
    v8 = v12;
    v9 = objc_autoreleasePoolPush();
    sub_100914760(v4, &v12);
    objc_autoreleasePoolPop(v9);

    v11 = v12;
  }

  else
  {
    v6 = sub_10090A388(_swiftEmptyArrayStorage);
    v11 = sub_10090A5A4(_swiftEmptyArrayStorage);
    result = sub_10090A388(_swiftEmptyArrayStorage);
    v8 = result;
  }

  *a1 = v6;
  a1[1] = v11;
  a1[2] = v8;
  return result;
}

uint64_t sub_100910F8C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v50 = a2;
  v51 = type metadata accessor for BeaconState(0);
  v6 = *(v51 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v51);
  v45 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1000BC4D4(&qword_1016AE310, &unk_1013C57E0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v46 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v48 = &v39 - v13;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v19 = *(a1 + 280);
  v20 = sub_100007F54();
  v21 = v20[2];
  if (v21)
  {
    v40 = a3;
    v41 = v3;
    v39 = v20;
    v22 = (v20 + 4);
    v47 = (v6 + 48);
    v23 = (v15 + 8);
    v43 = v6;
    v44 = (v6 + 56);
    v24 = _swiftEmptyDictionarySingleton;
    v42 = v15;
    do
    {
      v28 = v14;
      sub_10001F280(v22, v52);
      v30 = v53;
      v29 = v54;
      sub_1000035D0(v52, v53);
      (*(*(*(v29 + 8) + 8) + 32))(v30);
      v31 = v48;
      sub_1009113C8(v52, v50, v48);
      sub_100007BAC(v52);
      if ((*v47)(v31, 1, v51) == 1)
      {
        sub_10000B3A8(v31, &qword_1016AE310, &unk_1013C57E0);
        v32 = sub_1000210EC(v18);
        if (v33)
        {
          v34 = v32;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v55 = v24;
          v36 = v46;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10100B518();
            v36 = v46;
            v24 = v55;
          }

          (*(v42 + 8))(v24[6] + *(v42 + 72) * v34, v28);
          sub_10091AA88(v24[7] + *(v43 + 72) * v34, v36, type metadata accessor for BeaconState);
          sub_100AF95D4(v34, v24);
          v37 = 0;
        }

        else
        {
          v37 = 1;
          v36 = v46;
        }

        (*v44)(v36, v37, 1, v51);
        sub_10000B3A8(v36, &qword_1016AE310, &unk_1013C57E0);
        (*v23)(v18, v28);
        v14 = v28;
      }

      else
      {
        v25 = v31;
        v26 = v45;
        sub_10091AA88(v25, v45, type metadata accessor for BeaconState);
        v27 = swift_isUniquelyReferenced_nonNull_native();
        v55 = v24;
        sub_1010000C4(v26, v18, v27);
        v14 = v28;
        (*v23)(v18, v28);
        v24 = v55;
      }

      v22 += 40;
      --v21;
    }

    while (v21);

    a3 = v40;
  }

  else
  {

    v24 = _swiftEmptyDictionarySingleton;
  }

  *a3 = v24;
  return result;
}

uint64_t sub_1009113C8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v352 = a2;
  v343 = a3;
  v317 = type metadata accessor for SharedBeaconState(0);
  v4 = *(*(v317 - 8) + 64);
  __chkstk_darwin(v317);
  v316 = &v315 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v324 = type metadata accessor for SharedBeaconRecord(0);
  v6 = *(*(v324 - 8) + 64);
  v7 = __chkstk_darwin(v324);
  v315 = &v315 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v322 = &v315 - v9;
  v332 = type metadata accessor for OwnedBeaconState(0);
  v10 = *(*(v332 - 8) + 64);
  __chkstk_darwin(v332);
  v331 = &v315 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v327 = &v315 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v328 = &v315 - v16;
  v330 = type metadata accessor for ProductInfoState(0);
  v17 = *(*(v330 - 8) + 64);
  v18 = __chkstk_darwin(v330);
  v329 = &v315 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v342 = &v315 - v20;
  v371 = type metadata accessor for ShareRecord();
  v318 = *(v371 - 1);
  v21 = *(v318 + 64);
  __chkstk_darwin(v371);
  v370 = &v315 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v362 = type metadata accessor for ShareState(0);
  v361 = *(v362 - 8);
  v23 = *(v361 + 64);
  __chkstk_darwin(v362);
  v372 = &v315 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1000BC4D4(&qword_1016B1500, &unk_1013C57F0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v326 = &v315 - v27;
  v28 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v357 = (&v315 - v30);
  v323 = type metadata accessor for DirectorySequence();
  v321 = *(v323 - 8);
  v31 = *(v321 + 64);
  __chkstk_darwin(v323);
  v368 = &v315 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v369 = type metadata accessor for URL();
  v359 = *(v369 - 1);
  v33 = *(v359 + 64);
  v34 = __chkstk_darwin(v369);
  v320 = &v315 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v358 = (&v315 - v36);
  v346 = type metadata accessor for OwnedBeaconRecord();
  v37 = *(*(v346 - 8) + 64);
  v38 = __chkstk_darwin(v346);
  v344 = &v315 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v353 = (&v315 - v40);
  v41 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v42 = *(*(v41 - 8) + 64);
  __chkstk_darwin(v41 - 8);
  v341 = &v315 - v43;
  v340 = type metadata accessor for KeyAlignmentRecord();
  v339 = *(v340 - 8);
  v44 = *(v339 + 64);
  __chkstk_darwin(v340);
  v319 = &v315 - ((v45 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v47 = *(*(v46 - 8) + 64);
  v48 = __chkstk_darwin(v46 - 8);
  v360 = &v315 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v48);
  v355 = &v315 - v50;
  v334 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v51 = *(*(v334 - 8) + 64);
  v52 = __chkstk_darwin(v334);
  v354 = (&v315 - ((v53 + 15) & 0xFFFFFFFFFFFFFFF0));
  v54 = __chkstk_darwin(v52);
  v335 = (&v315 - v55);
  __chkstk_darwin(v54);
  v347 = &v315 - v56;
  v57 = type metadata accessor for UUID();
  v365 = *(v57 - 8);
  v58 = *(v365 + 64);
  __chkstk_darwin(v57);
  v60 = &v315 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v366 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v61 = *(*(v366 - 8) + 64);
  __chkstk_darwin(v366);
  v63 = &v315 - v62;
  v364 = type metadata accessor for Date();
  v351 = *(v364 - 8);
  v64 = *(v351 + 64);
  v65 = __chkstk_darwin(v364);
  v325 = &v315 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __chkstk_darwin(v65);
  v356 = &v315 - v68;
  v69 = __chkstk_darwin(v67);
  v336 = &v315 - v70;
  v71 = __chkstk_darwin(v69);
  v348 = &v315 - v72;
  __chkstk_darwin(v71);
  v349 = &v315 - v73;
  v74 = type metadata accessor for BeaconNamingRecord();
  v75 = *(v74 - 1);
  v76 = *(v75 + 64);
  v77 = __chkstk_darwin(v74);
  v79 = &v315 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v77);
  v81 = (&v315 - v80);
  v82 = a1;
  v84 = a1[3];
  v83 = a1[4];
  v85 = v82;
  sub_1000035D0(v82, v84);
  (*(*(*(v83 + 8) + 8) + 32))(v84);
  v86 = *(v352 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  v373 = v352;
  v374 = v60;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v338 = 0;
  v88 = v365 + 8;
  v87 = *(v365 + 8);
  v366 = v60;
  v363 = v57;
  v337 = v87;
  v87(v60, v57);
  v89 = (*(v75 + 48))(v63, 1, v74);
  v345 = v74;
  v333 = v88;
  if (v89 == 1)
  {
    sub_10000B3A8(v63, &unk_1016B29E0, &unk_1013B70E0);
    v90 = v81 + v74[5];
    UUID.init()();
    v91 = v85[3];
    v92 = v85[4];
    sub_1000035D0(v85, v91);
    v93 = v81 + v74[6];
    (*(*(*(v92 + 8) + 8) + 32))(v91);
    *v81 = xmmword_10138C660;
    *(v81 + v74[7]) = -1;
    v94 = (v81 + v74[8]);
    *v94 = 0xD000000000000017;
    v94[1] = 0x8000000101364E30;
    v95 = (v81 + v74[9]);
    *v95 = 0;
    v95[1] = 0;
  }

  else
  {
    sub_10091AA88(v63, v79, type metadata accessor for BeaconNamingRecord);
    sub_10091AA88(v79, v81, type metadata accessor for BeaconNamingRecord);
  }

  v96 = v85;
  sub_10001F280(v85, &v378);
  v97 = swift_allocObject();
  *(v97 + 16) = v367;
  sub_100031694(&v378, v97 + 24);

  v98 = v347;
  unsafeFromAsyncTask<A>(_:)();

  v99 = v98;
  v100 = v335;
  sub_1000D2A70(v98, v335, &unk_1016AF8A0, &unk_10139D7C0);
  v101 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v102 = *(*(v101 - 8) + 48);
  v103 = v102(v100, 1, v101);
  v104 = v355;
  v105 = v337;
  v106 = v354;
  if (v103 == 1)
  {
    sub_10000B3A8(v100, &unk_1016AF8A0, &unk_10139D7C0);
    v334 = 1;
  }

  else
  {
    v334 = *v100;
    sub_10000B3A8(v100, &unk_1016C8FC0, &unk_10139D7D0);
  }

  v350 = v81;
  v107 = v99;
  sub_1000D2A70(v99, v106, &unk_1016AF8A0, &unk_10139D7C0);
  if (v102(v106, 1, v101) == 1)
  {
    sub_10000B3A8(v106, &unk_1016AF8A0, &unk_10139D7C0);
    v108 = v351;
    v109 = v364;
    (*(v351 + 56))(v104, 1, 1, v364);
    v110 = v96[3];
    v111 = v96[4];
    sub_1000035D0(v96, v110);
    v112 = v110;
    v113 = v336;
    (*(v111 + 192))(v112, v111);
    v114 = v105;
    if ((*(v108 + 48))(v104, 1, v109) != 1)
    {
      sub_10000B3A8(v104, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v108 = v351;
    v115 = v106 + *(v101 + 36);
    v116 = v106;
    v109 = v364;
    (*(v351 + 16))(v104, v115, v364);
    sub_10000B3A8(v116, &unk_1016C8FC0, &unk_10139D7D0);
    (*(v108 + 56))(v104, 0, 1, v109);
    v113 = v336;
    (*(v108 + 32))(v336, v104, v109);
    v114 = v105;
  }

  v117 = *(v108 + 32);
  v355 = (v108 + 32);
  v354 = v117;
  v117(v349, v113, v109);
  v118 = *(v367 + 35);
  v119 = v96[3];
  v120 = v96[4];
  sub_1000035D0(v96, v119);
  v121 = v366;
  (*(*(*(v120 + 8) + 8) + 32))(v119);
  v122 = *(v118 + 168);
  v123 = v341;
  sub_100B2DA4C(v341);
  v114(v121, v363);
  v124 = v340;
  if ((*(v339 + 48))(v123, 1, v340) == 1)
  {
    sub_10000B3A8(v123, &qword_10169F328, &unk_1013CB040);
    static Date.distantPast.getter();
    v340 = 0;
  }

  else
  {
    v125 = v123;
    v126 = v319;
    sub_10091AA88(v125, v319, type metadata accessor for KeyAlignmentRecord);
    v127 = *(v124 + 32);
    v340 = *(v126 + *(v124 + 28));
    (*(v108 + 16))(v348, v126 + v127, v109);
    sub_10091AAF0(v126, type metadata accessor for KeyAlignmentRecord);
  }

  v128 = v350;
  v129 = v353;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v131 = v96[3];
  v130 = v96[4];
  sub_1000035D0(v96, v131);
  v132 = v366;
  (*(*(*(v130 + 8) + 8) + 32))(v131);
  v133 = sub_100035730(v132, 0, 0);
  v114(v132, v363);
  *&v378 = v133;

  v134 = v338;
  sub_100910B10(&v378);
  if (!v134)
  {

    v135 = sub_10091ACD0(v378);

    sub_10001F280(v96, &v378);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v136 = v346;
    v137 = swift_dynamicCast();
    v138 = v345;
    v139 = v357;
    if (v137)
    {
      v341 = v135;
      sub_10091AA88(v129, v344, type metadata accessor for OwnedBeaconRecord);
      v140 = *(v136 + 20);
      v141 = *(v352 + 168);
      v142 = objc_autoreleasePoolPush();
      if (qword_101694468 != -1)
      {
        swift_once();
      }

      v143 = v369;
      sub_1000076D4(v369, qword_10177A518);
      v339 = v140;
      UUID.uuidString.getter();
      URL.appendingPathComponent(_:isDirectory:)();

      objc_autoreleasePoolPop(v142);
      v377 = _swiftEmptyArrayStorage;
      v375 = _swiftEmptyArrayStorage;
      v144 = [objc_opt_self() defaultManager];
      NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

      DirectorySequence.next()();
      v145 = v143;
      v146 = *(v359 + 48);
      v147 = v146(v139, 1, v143);
      v148 = v320;
      if (v147 != 1)
      {
        v149 = *(v359 + 32);
        v150 = (v359 + 8);
        do
        {
          v149(v148, v139, v145);
          v151 = objc_autoreleasePoolPush();
          sub_1005FF9CC(v148, v141, &v377, &v375);
          objc_autoreleasePoolPop(v151);
          (*v150)(v148, v369);
          DirectorySequence.next()();
          v145 = v369;
        }

        while (v146(v139, 1, v369) != 1);
      }

      (*(v321 + 8))(v368, v323);
      static os_log_type_t.debug.getter();
      sub_10039722C();
      v152 = v145;
      v153 = static OS_os_log.default.getter();
      sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
      v154 = swift_allocObject();
      *(v154 + 16) = xmmword_10138BBE0;
      v155 = v377;
      v156 = v377[2];
      *(v154 + 56) = &type metadata for Int;
      *(v154 + 64) = &protocol witness table for Int;
      *(v154 + 32) = v156;
      sub_100024938(&qword_1016B14E0, &type metadata accessor for URL);

      v157 = v358;
      v158 = dispatch thunk of CustomStringConvertible.description.getter();
      v160 = v159;
      *(v154 + 96) = &type metadata for String;
      *(v154 + 104) = sub_100008C00();
      *(v154 + 72) = v158;
      *(v154 + 80) = v160;
      os_log(_:dso:log:_:_:)();

      (*(v359 + 8))(v157, v152);

      v161 = v155[2];
      if (v161)
      {
        v377 = _swiftEmptyArrayStorage;
        sub_1011253A4(0, v161, 0);
        v162 = v377;
        v163 = (*(v318 + 80) + 32) & ~*(v318 + 80);
        v338 = v155;
        v164 = (v155 + v163);
        v359 = *(v318 + 72);
        v358 = (v351 + 48);
        v353 = (v351 + 8);
        v357 = (v365 + 16);
        v165 = v364;
        v166 = v372;
        do
        {
          v368 = v161;
          v367 = v164;
          v167 = v370;
          sub_10091B164(v164, v370, type metadata accessor for ShareRecord);
          v168 = v167 + v371[8];
          v169 = v360;
          sub_1000D2A70(v168, v360, &unk_101696900, &unk_10138B1E0);
          v170 = (*v358)(v169, 1, v165);
          v369 = v162;
          if (v170 == 1)
          {
            sub_10000B3A8(v169, &unk_101696900, &unk_10138B1E0);
            v366 = 0;
            v365 = 0xE000000000000000;
          }

          else
          {
            v171 = v356;
            v354(v356, v169, v165);
            v366 = Date.iso8601.getter();
            v365 = v172;
            (*v353)(v171, v165);
          }

          v173 = v371;
          v174 = v370;
          (*v357)(v166, v370 + v371[5], v363);
          v175 = v174 + v173[7];
          v176 = Date.iso8601.getter();
          v178 = v177;
          v179 = v174 + v173[9];
          v180 = *(v179 + 8);
          v181 = *(v179 + 16);
          v182 = (v174 + v173[10]);
          v183 = *v182;
          v184 = v182[1];
          v185 = v173[12];
          v186 = *(v174 + v173[11]);
          v187 = *(v174 + v185);

          v188 = sub_1008BA9C0(v187);
          v190 = v189;
          sub_10091AAF0(v174, type metadata accessor for ShareRecord);
          v191 = v362;
          v192 = &v372[*(v362 + 20)];
          *v192 = v176;
          v192[1] = v178;
          v193 = &v372[v191[6]];
          v194 = v365;
          *v193 = v366;
          v193[1] = v194;
          v195 = &v372[v191[7]];
          *v195 = v180;
          *(v195 + 1) = v181;
          v196 = &v372[v191[8]];
          *v196 = v183;
          *(v196 + 1) = v184;
          v166 = v372;
          *&v372[v191[9]] = v186;
          v197 = (v166 + v191[10]);
          *v197 = v188;
          v197[1] = v190;
          v162 = v369;
          v377 = v369;
          v199 = v369[2];
          v198 = v369[3];
          if (v199 >= v198 >> 1)
          {
            sub_1011253A4(v198 > 1, v199 + 1, 1);
            v162 = v377;
          }

          v162[2] = v199 + 1;
          sub_10091AA88(v166, v162 + ((*(v361 + 80) + 32) & ~*(v361 + 80)) + *(v361 + 72) * v199, type metadata accessor for ShareState);
          v164 = (v367 + v359);
          v161 = (v368 - 1);
          v165 = v364;
        }

        while (v368 != 1);
      }

      else
      {

        v162 = _swiftEmptyArrayStorage;
        v165 = v364;
      }

      v253 = v344;
      v254 = v345;
      v255 = v326;
      sub_100ABD310(v326);
      v256 = v255;
      v257 = type metadata accessor for LeashRecord();
      v258 = (*(*(v257 - 8) + 48))(v256, 1, v257);
      v259 = v329;
      v260 = v328;
      v261 = v339;
      if (v258 == 1)
      {
        sub_10000B3A8(v256, &qword_1016B1500, &unk_1013C57F0);
        LODWORD(v372) = 0;
      }

      else
      {
        v262 = *(v256 + *(v257 + 24));

        sub_10091AAF0(v256, type metadata accessor for LeashRecord);
        LODWORD(v372) = sub_1005C8A30(v253 + v261, v262);
      }

      v263 = sub_1006FD6D0(v253, v352);
      sub_100AC1584(v253 + v261, v260);
      sub_1000D2A70(v260, v259, &unk_1016AF8C0, &unk_1013A07A0);
      v264 = v327;
      sub_1000D2A70(v260, v327, &unk_1016AF8C0, &unk_1013A07A0);
      v265 = type metadata accessor for BeaconProductInfoRecord();
      v266 = (*(*(v265 - 8) + 48))(v264, 1, v265);
      v369 = v162;
      v371 = v263;
      if (v266 == 1)
      {
        sub_10000B3A8(v260, &unk_1016AF8C0, &unk_1013A07A0);
        v253 = v344;
        sub_10000B3A8(v264, &unk_1016AF8C0, &unk_1013A07A0);
        v267 = 0;
        v268 = 0;
      }

      else
      {
        v269 = *(v264 + *(v265 + 80));
        sub_10091AAF0(v264, type metadata accessor for BeaconProductInfoRecord);
        v267 = sub_1010D840C(v269);
        v268 = v270;
        sub_10000B3A8(v260, &unk_1016AF8C0, &unk_1013A07A0);
      }

      v271 = (v259 + *(v330 + 20));
      *v271 = v267;
      v271[1] = v268;
      v367 = type metadata accessor for ProductInfoState;
      sub_10091AA88(v259, v342, type metadata accessor for ProductInfoState);
      v272 = v346;
      v273 = v332;
      v274 = v331;
      sub_10091B164(v253 + *(v346 + 24), &v331[*(v332 + 20)], type metadata accessor for StableIdentifier);
      v275 = v351;
      v276 = v325;
      (*(v351 + 16))(v325, v253 + v272[8], v165);
      v370 = Date.iso8601.getter();
      v368 = v277;
      v361 = *(v275 + 8);
      (v361)(v276, v165);
      v278 = v254[7];
      v279 = (v350 + v254[8]);
      v280 = v279[1];
      v365 = *v279;
      v355 = v280;
      v281 = v272[15];
      v282 = (v253 + v272[14]);
      v283 = v282[1];
      v363 = *v282;
      v284 = v272[17];
      v345 = *(v253 + v272[16]);
      v285 = v345;
      v351 = *(v253 + v284);
      v286 = v351;
      v287 = *(v253 + v281 + 8);
      v362 = *(v253 + v281);
      v366 = *(v350 + v278);
      LOBYTE(v276) = *(v253 + v272[19]);

      v357 = sub_1012BE5DC(v276);
      v356 = v288;
      LODWORD(v352) = sub_100E0EA64(v285, v286);
      v289 = v349;
      v354 = Date.iso8601.getter();
      v353 = v290;
      v291 = v348;
      v359 = Date.iso8601.getter();
      v358 = v292;
      LODWORD(v360) = sub_10111F67C(8, v371);

      sub_1000D2A70(v253 + v272[7], v274 + v273[24], &qword_1016980D0, &unk_10138F3B0);
      LOWORD(v276) = sub_100D608FC();
      sub_10091AA88(v342, v274 + v273[26], v367);
      sub_10091AAF0(v253, type metadata accessor for OwnedBeaconRecord);
      sub_10000B3A8(v347, &unk_1016AF8A0, &unk_10139D7C0);
      v293 = v364;
      v294 = v361;
      (v361)(v291, v364);
      v294(v289, v293);
      sub_10091AAF0(v350, type metadata accessor for BeaconNamingRecord);
      *v274 = 0x61654264656E774FLL;
      v274[1] = 0xEB000000006E6F63;
      v295 = (v274 + v273[6]);
      v296 = v368;
      *v295 = v370;
      v295[1] = v296;
      v297 = (v274 + v273[7]);
      v298 = v355;
      *v297 = v365;
      v297[1] = v298;
      v299 = (v274 + v273[8]);
      *v299 = v363;
      v299[1] = v283;
      v300 = (v274 + v273[9]);
      *v300 = v362;
      v300[1] = v287;
      *(v274 + v273[10]) = v345;
      *(v274 + v273[11]) = v351;
      *(v274 + v273[12]) = v366;
      v301 = (v274 + v273[13]);
      v302 = v356;
      *v301 = v357;
      v301[1] = v302;
      *(v274 + v273[14]) = v352 & 1;
      *(v274 + v273[15]) = v334;
      v303 = (v274 + v273[16]);
      v304 = v353;
      *v303 = v354;
      v303[1] = v304;
      *(v274 + v273[17]) = 1;
      *(v274 + v273[18]) = v340;
      v305 = (v274 + v273[19]);
      v306 = v358;
      *v305 = v359;
      v305[1] = v306;
      *(v274 + v273[20]) = v369;
      *(v274 + v273[21]) = v341;
      *(v274 + v273[22]) = v372 & 1;
      *(v274 + v273[23]) = v360 & 1;
      v307 = v274 + v273[25];
      *v307 = v276;
      v307[1] = BYTE1(v276) & 1;
      v308 = v343;
      sub_10091AA88(v274, v343, type metadata accessor for OwnedBeaconState);
      v236 = type metadata accessor for BeaconState(0);
      swift_storeEnumTagMultiPayload();
      v237 = *(*(v236 - 8) + 56);
      v238 = v308;
    }

    else
    {
      v200 = v322;
      v201 = v324;
      if (!swift_dynamicCast())
      {

        if (qword_101694BE8 != -1)
        {
          swift_once();
        }

        v239 = type metadata accessor for Logger();
        sub_1000076D4(v239, qword_10177BA08);
        sub_10001F280(v96, &v377);
        v240 = Logger.logObject.getter();
        v241 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v240, v241))
        {
          v242 = swift_slowAlloc();
          v243 = v128;
          v244 = swift_slowAlloc();
          v376 = v244;
          *v242 = 136315138;
          sub_10001F280(&v377, &v375);
          v245 = String.init<A>(describing:)();
          v246 = v107;
          v248 = v247;
          sub_100007BAC(&v377);
          v249 = sub_1000136BC(v245, v248, &v376);

          *(v242 + 4) = v249;
          _os_log_impl(&_mh_execute_header, v240, v241, "Unhandled beacon type: %s", v242, 0xCu);
          sub_100007BAC(v244);

          sub_10000B3A8(v246, &unk_1016AF8A0, &unk_10139D7C0);
          v250 = *(v351 + 8);
          v251 = v364;
          v250(v348, v364);
          v250(v349, v251);
          v252 = v243;
        }

        else
        {

          sub_100007BAC(&v377);
          sub_10000B3A8(v107, &unk_1016AF8A0, &unk_10139D7C0);
          v311 = *(v351 + 8);
          v312 = v364;
          v311(v348, v364);
          v311(v349, v312);
          v252 = v128;
        }

        sub_10091AAF0(v252, type metadata accessor for BeaconNamingRecord);
        v313 = v343;
        v310 = type metadata accessor for BeaconState(0);
        v237 = *(*(v310 - 8) + 56);
        v238 = v313;
        v309 = 1;
        goto LABEL_49;
      }

      v202 = v315;
      sub_10091AA88(v200, v315, type metadata accessor for SharedBeaconRecord);
      v203 = v317;
      v204 = v316;
      (*(v365 + 16))(&v316[*(v317 + 20)], v202 + v201[6], v363);
      v205 = v201[8];
      v206 = v202 + v201[7];
      v207 = *(v206 + 16);
      v371 = *(v206 + 8);
      v357 = v207;
      v208 = *(v202 + v205 + 8);
      v372 = *(v202 + v205);
      v209 = v138[7];
      v210 = (v128 + v138[8]);
      v211 = v210[1];
      v366 = *v210;
      v212 = v201[10];
      v213 = (v202 + v201[9]);
      v365 = *v213;
      v214 = v128;
      v215 = v213[1];
      v216 = v201[12];
      v368 = *(v202 + v201[11]);
      v370 = *(v202 + v216);
      LODWORD(v369) = *(v202 + v201[13]);
      v217 = *(v202 + v212 + 8);
      v363 = *(v202 + v212);
      v356 = v217;
      v367 = *(v214 + v209);
      v218 = *(v202 + v201[16]);

      v362 = sub_1008BA9C0(v218);
      v341 = v135;
      v219 = v343;
      v361 = v220;
      v221 = v201[18];
      v360 = *(v202 + v201[17]);
      v359 = Date.iso8601.getter();
      v358 = v222;
      sub_1000D2A70(v202 + v201[19], v204 + v203[19], &qword_1016980D0, &unk_10138F3B0);
      sub_10091AAF0(v202, type metadata accessor for SharedBeaconRecord);
      sub_10000B3A8(v347, &unk_1016AF8A0, &unk_10139D7C0);
      v223 = *(v351 + 8);
      v224 = v364;
      v223(v348, v364);
      v223(v349, v224);
      sub_10091AAF0(v350, type metadata accessor for BeaconNamingRecord);
      strcpy(v204, "SharedBeacon");
      *(v204 + 13) = 0;
      *(v204 + 14) = -5120;
      v225 = (v204 + v203[6]);
      v226 = v357;
      *v225 = v371;
      v225[1] = v226;
      v227 = (v204 + v203[7]);
      *v227 = v372;
      v227[1] = v208;
      v228 = (v204 + v203[8]);
      *v228 = v366;
      v228[1] = v211;
      v229 = (v204 + v203[9]);
      *v229 = v365;
      v229[1] = v215;
      v230 = (v204 + v203[10]);
      v231 = v356;
      *v230 = v363;
      v230[1] = v231;
      *(v204 + v203[11]) = v368;
      *(v204 + v203[12]) = v370;
      *(v204 + v203[13]) = v369;
      *(v204 + v203[14]) = v367;
      v232 = (v204 + v203[15]);
      v233 = v361;
      *v232 = v362;
      v232[1] = v233;
      *(v204 + v203[16]) = v360;
      v234 = (v204 + v203[17]);
      v235 = v358;
      *v234 = v359;
      v234[1] = v235;
      *(v204 + v203[18]) = v341;
      sub_10091AA88(v204, v219, type metadata accessor for SharedBeaconState);
      v236 = type metadata accessor for BeaconState(0);
      swift_storeEnumTagMultiPayload();
      v237 = *(*(v236 - 8) + 56);
      v238 = v219;
    }

    v309 = 0;
    v310 = v236;
LABEL_49:
    v237(v238, v309, 1, v310);
    return sub_100007BAC(&v378);
  }

  __break(1u);
  return result;
}

uint64_t sub_100913B8C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for BeaconState(0);
  v60 = *(v5 - 8);
  v61 = v5;
  v6 = *(v60 + 64);
  __chkstk_darwin(v5);
  v67 = v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&qword_1016AE310, &unk_1013C57E0);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = v55 - v13;
  v66 = type metadata accessor for UUID();
  v15 = *(v66 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v66);
  v18 = v55 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v68 = a1;
  v19 = *(a1 + 280);
  v20 = sub_100008CA0();
  v21 = sub_100009324(v20);

  v22 = sub_1000066C8();
  v23 = sub_100009924(v22);

  v69[0] = v21;
  sub_100009AF4(v23);
  v24 = v69[0];
  v65 = *(v69[0] + 16);
  if (v65)
  {
    v59 = v12;
    v55[0] = a2;
    v55[1] = v2;
    v25 = 0;
    v26 = v69[0] + 32;
    v27 = v61;
    v28 = v15;
    v55[2] = v15 + 16;
    v63 = (v15 + 8);
    v64 = (v60 + 48);
    v29 = _swiftEmptyDictionarySingleton;
    v57 = v28;
    v58 = (v60 + 56);
    v56 = v14;
    v62 = v69[0];
    while (v25 < *(v24 + 16))
    {
      sub_10001F280(v26, v69);
      v32 = v70;
      v33 = v71;
      sub_1000035D0(v69, v70);
      (*(v33 + 8))(v32, v33);
      sub_100914178(v69, v14);
      sub_100007BAC(v69);
      if ((*v64)(v14, 1, v27) == 1)
      {
        sub_10000B3A8(v14, &qword_1016AE310, &unk_1013C57E0);
        v34 = sub_1000210EC(v18);
        if (v35)
        {
          v36 = v34;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v72 = v29;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10100B518();
            v29 = v72;
          }

          v38 = *(v57 + 8);
          v39 = v66;
          v38(v29[6] + *(v57 + 72) * v36, v66);
          v31 = v59;
          sub_10091AA88(v29[7] + *(v60 + 72) * v36, v59, type metadata accessor for BeaconState);
          sub_100AF95D4(v36, v29);
          v38(v18, v39);
          v30 = 0;
          v14 = v56;
          v27 = v61;
        }

        else
        {
          (*v63)(v18, v66);
          v30 = 1;
          v31 = v59;
        }

        (*v58)(v31, v30, 1, v27);
        sub_10000B3A8(v31, &qword_1016AE310, &unk_1013C57E0);
      }

      else
      {
        sub_10091AA88(v14, v67, type metadata accessor for BeaconState);
        v40 = swift_isUniquelyReferenced_nonNull_native();
        v72 = v29;
        v42 = sub_1000210EC(v18);
        v43 = v29[2];
        v44 = (v41 & 1) == 0;
        v45 = v43 + v44;
        if (__OFADD__(v43, v44))
        {
          goto LABEL_26;
        }

        v46 = v41;
        if (v29[3] >= v45)
        {
          if ((v40 & 1) == 0)
          {
            sub_10100B518();
          }
        }

        else
        {
          sub_100FF2C6C(v45, v40);
          v47 = sub_1000210EC(v18);
          if ((v46 & 1) != (v48 & 1))
          {
            goto LABEL_28;
          }

          v42 = v47;
        }

        v27 = v61;
        v29 = v72;
        if (v46)
        {
          sub_10091AA24(v67, v72[7] + *(v60 + 72) * v42);
          (*v63)(v18, v66);
        }

        else
        {
          v72[(v42 >> 6) + 8] |= 1 << v42;
          v49 = v57;
          v50 = v66;
          (*(v57 + 16))(v29[6] + *(v57 + 72) * v42, v18, v66);
          sub_10091AA88(v67, v29[7] + *(v60 + 72) * v42, type metadata accessor for BeaconState);
          (*(v49 + 8))(v18, v50);
          v51 = v29[2];
          v52 = __OFADD__(v51, 1);
          v53 = v51 + 1;
          if (v52)
          {
            goto LABEL_27;
          }

          v29[2] = v53;
        }
      }

      ++v25;
      v26 += 40;
      v24 = v62;
      if (v65 == v25)
      {

        a2 = v55[0];
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {

    v29 = _swiftEmptyDictionarySingleton;
LABEL_24:
    *a2 = v29;
  }

  return result;
}

uint64_t sub_100914178@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for SharedBeaconGroup();
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v45 - v9;
  v11 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v45 - v13;
  v15 = type metadata accessor for OwnedBeaconGroup(0);
  v16 = *(*(v15 - 1) + 64);
  v17 = __chkstk_darwin(v15);
  v19 = &v45 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = &v45 - v20;
  sub_10001F280(a1, v53);
  sub_1000BC4D4(&qword_10169EF38, &unk_1013AB040);
  if (swift_dynamicCast())
  {
    sub_10091AA88(v21, v19, type metadata accessor for OwnedBeaconGroup);
    v22 = &v19[v15[7]];
    v23 = MACAddress.description.getter();
    v48 = v24;
    v49 = v23;
    v25 = v15[9];
    v47 = v19[v15[8]];
    v26 = *&v19[v25 + 8];
    v46 = *&v19[v25];
    v27 = *&v19[v15[10]];
    type metadata accessor for OwnedBeaconGroup.PairingState(0);
    sub_10091AB50();
    sub_100101BAC();
    sub_100024938(&qword_1016AE320, type metadata accessor for OwnedBeaconGroup.PairingState);

    v28 = Dictionary<>.stringRepresentation.getter();
    if (qword_101694920 != -1)
    {
      swift_once();
    }

    v29 = sub_100035730(&v19[v15[6]], 0, 0);
    v30 = sub_1005232D8(v14, v29);

    sub_10000B3A8(v14, &unk_101696900, &unk_10138B1E0);
    sub_10091AAF0(v19, type metadata accessor for OwnedBeaconGroup);
    *a2 = 0xD000000000000010;
    *(a2 + 8) = 0x8000000101364E10;
    v31 = v48;
    *(a2 + 16) = v49;
    *(a2 + 24) = v31;
    *(a2 + 32) = v47;
    *(a2 + 40) = v46;
    *(a2 + 48) = v26;
    *(a2 + 56) = v28;
    *(a2 + 64) = v30 & 1;
    v32 = type metadata accessor for BeaconState(0);
    goto LABEL_7;
  }

  if (swift_dynamicCast())
  {
    sub_10091AA88(v10, v8, type metadata accessor for SharedBeaconGroup);
    v33 = *&v8[*(v4 + 20)];

    sub_10091AAF0(v8, type metadata accessor for SharedBeaconGroup);
    *a2 = 0xD000000000000011;
    *(a2 + 8) = 0x8000000101364DF0;
    *(a2 + 16) = v33;
    v32 = type metadata accessor for BeaconState(0);
LABEL_7:
    swift_storeEnumTagMultiPayload();
    (*(*(v32 - 8) + 56))(a2, 0, 1, v32);
    return sub_100007BAC(v53);
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177BA08);
  sub_10001F280(a1, v52);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v51 = v38;
    *v37 = 136315138;
    sub_10001F280(v52, v50);
    v39 = String.init<A>(describing:)();
    v41 = v40;
    sub_100007BAC(v52);
    v42 = sub_1000136BC(v39, v41, &v51);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Unhandled beacon group type: %s", v37, 0xCu);
    sub_100007BAC(v38);
  }

  else
  {

    sub_100007BAC(v52);
  }

  v43 = type metadata accessor for BeaconState(0);
  (*(*(v43 - 8) + 56))(a2, 1, 1, v43);
  return sub_100007BAC(v53);
}

uint64_t sub_100914760@<X0>(uint64_t a1@<X0>, char **a2@<X8>)
{
  v53 = a2;
  v66 = type metadata accessor for UUID();
  v55 = *(v66 - 8);
  v3 = *(v55 + 64);
  __chkstk_darwin(v66);
  v5 = &v53 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for SafeLocation();
  v62 = *(v60 - 8);
  v6 = *(v62 + 64);
  __chkstk_darwin(v60);
  v65 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v53 - v10;
  v56 = type metadata accessor for DirectorySequence();
  v54 = *(v56 - 8);
  v12 = *(v54 + 64);
  __chkstk_darwin(v56);
  v14 = (&v53 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  isUniquelyReferenced_nonNull_native = type metadata accessor for URL();
  v16 = *(isUniquelyReferenced_nonNull_native - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(isUniquelyReferenced_nonNull_native);
  v20 = &v53 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v22 = &v53 - v21;
  v59 = *(*(a1 + 280) + 168);
  if (qword_101694F88 != -1)
  {
    goto LABEL_26;
  }

  while (1)
  {
    v61 = v5;
    v23 = sub_1000076D4(isUniquelyReferenced_nonNull_native, qword_10177C268);
    (*(v16 + 16))(v22, v23, isUniquelyReferenced_nonNull_native);
    v68 = _swiftEmptyArrayStorage;
    v67 = _swiftEmptyArrayStorage;
    v24 = [objc_opt_self() defaultManager];
    v57 = v22;
    NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

    v63 = v14;
    DirectorySequence.next()();
    v25 = *(v16 + 48);
    v26 = v25(v11, 1, isUniquelyReferenced_nonNull_native);
    v58 = v16;
    if (v26 != 1)
    {
      break;
    }

LABEL_6:
    (*(v54 + 8))(v63, v56);
    v16 = static os_log_type_t.debug.getter();
    sub_10039722C();
    v22 = static OS_os_log.default.getter();
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v30 = swift_allocObject();
    *(v30 + 16) = xmmword_10138BBE0;
    v5 = v68;
    v31 = *(v68 + 2);
    *(v30 + 56) = &type metadata for Int;
    *(v30 + 64) = &protocol witness table for Int;
    *(v30 + 32) = v31;
    sub_100024938(&qword_1016B14E0, &type metadata accessor for URL);

    v32 = v57;
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v20 = v34;
    *(v30 + 96) = &type metadata for String;
    *(v30 + 104) = sub_100008C00();
    *(v30 + 72) = v33;
    *(v30 + 80) = v20;
    os_log(_:dso:log:_:_:)();

    (*(v58 + 1))(v32, isUniquelyReferenced_nonNull_native);

    v59 = *(v5 + 2);
    if (!v59)
    {
      v35 = _swiftEmptyDictionarySingleton;
LABEL_22:

      *v53 = v35;
      return result;
    }

    v11 = 0;
    v14 = v61;
    v58 = &v5[(*(v62 + 80) + 32) & ~*(v62 + 80)];
    v63 = (v55 + 16);
    v57 = (v55 + 8);
    v35 = _swiftEmptyDictionarySingleton;
    v56 = v5;
    while (v11 < *(v5 + 2))
    {
      v38 = v65;
      sub_10091B164(&v58[*(v62 + 72) * v11], v65, type metadata accessor for SafeLocation);
      v20 = v60;
      v39 = *v63;
      (*v63)(v14, v38 + *(v60 + 20), v66);
      v5 = *(*(v38 + *(v20 + 52)) + 16);
      v22 = *(v38 + *(v20 + 48));
      v16 = *(v38 + *(v20 + 24));
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v68 = v35;
      v40 = sub_1000210EC(v14);
      v42 = *(v35 + 2);
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        goto LABEL_24;
      }

      v20 = v41;
      if (*(v35 + 3) < v45)
      {
        sub_100FF2CA8(v45, isUniquelyReferenced_nonNull_native);
        v40 = sub_1000210EC(v14);
        if ((v20 & 1) != (v46 & 1))
        {
          goto LABEL_28;
        }

LABEL_16:
        v35 = v68;
        if (v20)
        {
          goto LABEL_8;
        }

        goto LABEL_17;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_16;
      }

      isUniquelyReferenced_nonNull_native = v40;
      sub_10100B554();
      v40 = isUniquelyReferenced_nonNull_native;
      v35 = v68;
      if (v20)
      {
LABEL_8:
        v36 = *(v35 + 7) + 40 * v40;
        v37 = *(v36 + 8);
        strcpy(v36, "SafeLocation");
        *(v36 + 13) = 0;
        *(v36 + 14) = -5120;
        *(v36 + 16) = v5;
        *(v36 + 24) = v22;
        *(v36 + 32) = v16;

        (*v57)(v14, v66);
        goto LABEL_9;
      }

LABEL_17:
      *&v35[8 * (v40 >> 6) + 64] |= 1 << v40;
      v47 = v55;
      v20 = v40;
      isUniquelyReferenced_nonNull_native = v66;
      v39((*(v35 + 6) + *(v55 + 72) * v40), v61, v66);
      v48 = *(v35 + 7) + 40 * v20;
      strcpy(v48, "SafeLocation");
      *(v48 + 13) = 0;
      *(v48 + 14) = -5120;
      *(v48 + 16) = v5;
      *(v48 + 24) = v22;
      *(v48 + 32) = v16;
      v49 = *(v47 + 8);
      v14 = v61;
      v49(v61, isUniquelyReferenced_nonNull_native);
      v50 = *(v35 + 2);
      v44 = __OFADD__(v50, 1);
      v51 = v50 + 1;
      if (v44)
      {
        goto LABEL_25;
      }

      *(v35 + 2) = v51;
LABEL_9:
      ++v11;
      sub_10091AAF0(v65, type metadata accessor for SafeLocation);
      v5 = v56;
      if (v59 == v11)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    swift_once();
  }

  v27 = *(v16 + 32);
  while (1)
  {
    v27(v20, v11, isUniquelyReferenced_nonNull_native);
    v28 = objc_autoreleasePoolPush();
    v29 = v64;
    sub_1006005CC(v20, v59, &v68, &v67);
    v64 = v29;
    if (v29)
    {
      break;
    }

    objc_autoreleasePoolPop(v28);
    (*(v16 + 8))(v20, isUniquelyReferenced_nonNull_native);
    DirectorySequence.next()();
    if (v25(v11, 1, isUniquelyReferenced_nonNull_native) == 1)
    {
      goto LABEL_6;
    }
  }

  objc_autoreleasePoolPop(v28);
  __break(1u);
LABEL_28:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100914FCC(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = type metadata accessor for Date();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for UUID();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = async function pointer to daemon.getter[1];
  v10 = swift_task_alloc();
  v2[10] = v10;
  *v10 = v2;
  v10[1] = sub_100915118;

  return daemon.getter();
}

uint64_t sub_100915118(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 80);
  v12 = *v1;
  *(v3 + 88) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 96) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for ObservationStoreService();
  v9 = sub_100024938(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100024938(&qword_1016AA450, type metadata accessor for ObservationStoreService);
  *v6 = v12;
  v6[1] = sub_100738710;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_1009152F4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a1;
  v6 = swift_task_alloc();
  *(v3 + 24) = v6;
  *v6 = v3;
  v6[1] = sub_1009153A8;

  return sub_100914FCC(a1, a3);
}

uint64_t sub_1009153A8()
{
  v2 = *(*v1 + 24);
  v5 = *v1;

  if (v0)
  {

    v3 = sub_100915568;
  }

  else
  {
    v3 = sub_1009154C0;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1009154C0()
{
  v1 = *(v0 + 16);
  v2 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  (*(*(v2 - 8) + 56))(v1, 0, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100915568()
{
  v1 = *(v0 + 16);
  v2 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100915610(void *a1)
{
  v2 = v1;
  v25 = type metadata accessor for SharedBeaconState(0);
  v4 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for OwnedBeaconState(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for BeaconState(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11);
  v14 = &v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_1000035D0(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  sub_10091B164(v2, v14, type metadata accessor for BeaconState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v17 = *(v14 + 1);
      v18 = *(v14 + 3);
      v33 = *(v14 + 2);
      v34 = v18;
      v19 = *(v14 + 1);
      v31 = *v14;
      v32 = v19;
      v20 = *(v14 + 3);
      v28 = v33;
      v29 = v20;
      v35 = v14[64];
      v30 = v14[64];
      v27 = v17;
      v26 = v31;
      sub_10015049C(v36, v37);
      sub_10091C090();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
      sub_10091C0E4(&v31);
    }

    else
    {
      v21 = *(v14 + 1);
      v22 = *(v14 + 2);
      *&v31 = *v14;
      *(&v31 + 1) = v21;
      *&v32 = v22;
      sub_10015049C(v36, v37);
      sub_10091C03C();
      dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    sub_10091AA88(v14, v6, type metadata accessor for SharedBeaconState);
    sub_10015049C(v36, v37);
    sub_100024938(&qword_1016AE7D8, type metadata accessor for SharedBeaconState);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10091AAF0(v6, type metadata accessor for SharedBeaconState);
  }

  else
  {
    sub_10091AA88(v14, v10, type metadata accessor for OwnedBeaconState);
    sub_10015049C(v36, v37);
    sub_100024938(&qword_1016AE7E0, type metadata accessor for OwnedBeaconState);
    dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();
    sub_10091AAF0(v10, type metadata accessor for OwnedBeaconState);
  }

  return sub_100007BAC(v36);
}

uint64_t sub_100915A08(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE810, &qword_1013C5BD0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091C2EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v17[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v17[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v14 = v3[3];
  v17[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100915BC8()
{
  v1 = 1701869940;
  v2 = 0x6C61766F72707061;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0xD000000000000016;
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

uint64_t sub_100915C4C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10091CE58(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100915C74(uint64_t a1)
{
  v2 = sub_10091C2EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100915CB0(uint64_t a1)
{
  v2 = sub_10091C2EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100915CEC(void *a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 4);
  return sub_100915A08(a1);
}

uint64_t sub_100915D28(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE758, &qword_1013C5B88);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v15[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091BDB4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15[15] = 0;
  type metadata accessor for BeaconProductInfoRecord();
  sub_100024938(&qword_1016AAC20, type metadata accessor for BeaconProductInfoRecord);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = (v3 + *(type metadata accessor for ProductInfoState(0) + 20));
    v12 = *v11;
    v13 = v11[1];
    v15[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100915EE4()
{
  if (*v0)
  {
    result = 0x696C696261706163;
  }

  else
  {
    result = 0x49746375646F7270;
  }

  *v0;
  return result;
}

uint64_t sub_100915F30@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x49746375646F7270 && a2 == 0xEB000000006F666ELL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x696C696261706163 && a2 == 0xEC00000073656974)
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

uint64_t sub_100916014(uint64_t a1)
{
  v2 = sub_10091BDB4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100916050(uint64_t a1)
{
  v2 = sub_10091BDB4();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_1009160A4(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6449656C62617473;
      break;
    case 2:
      result = 0x44676E6972696170;
      break;
    case 3:
      result = 1701667182;
      break;
    case 4:
      result = 0x6C65646F6DLL;
      break;
    case 5:
      result = 0x65566D6574737973;
      break;
    case 6:
      result = 0x6449726F646E6576;
      break;
    case 7:
    case 22:
      result = 0x49746375646F7270;
      break;
    case 8:
      result = 1701605234;
      break;
    case 9:
      result = 0x4C79726574746162;
      break;
    case 10:
      result = 0xD000000000000015;
      break;
    case 11:
      result = 0xD000000000000018;
      break;
    case 12:
      result = 0xD00000000000001FLL;
      break;
    case 13:
      result = 0xD000000000000018;
      break;
    case 14:
    case 19:
      result = 0xD00000000000001DLL;
      break;
    case 15:
      result = 0xD000000000000024;
      break;
    case 16:
      result = 0x736572616873;
      break;
    case 17:
      result = 0x746176726573626FLL;
      break;
    case 18:
      result = 0xD00000000000001BLL;
      break;
    case 20:
      result = 0x644970756F7267;
      break;
    case 21:
      result = 0x644974726170;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100916310(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE768, &qword_1013C5B90);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v51 - v8;
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091BE08();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v52) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for OwnedBeaconState(0);
    v14 = v13[5];
    LOBYTE(v52) = 1;
    type metadata accessor for StableIdentifier();
    sub_100024938(&qword_1016AE778, type metadata accessor for StableIdentifier);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v52) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v52) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v52) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = (v3 + v13[9]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v52) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = *(v3 + v13[10]);
    LOBYTE(v52) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v3 + v13[11]);
    LOBYTE(v52) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v29 = *(v3 + v13[12]);
    LOBYTE(v52) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = (v3 + v13[13]);
    v31 = *v30;
    v32 = v30[1];
    LOBYTE(v52) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = *(v3 + v13[14]);
    LOBYTE(v52) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = *(v3 + v13[15]);
    LOBYTE(v52) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v35 = (v3 + v13[16]);
    v36 = *v35;
    v37 = v35[1];
    LOBYTE(v52) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = *(v3 + v13[17]);
    LOBYTE(v52) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v39 = *(v3 + v13[18]);
    LOBYTE(v52) = 14;
    KeyedEncodingContainer.encode(_:forKey:)();
    v40 = (v3 + v13[19]);
    v41 = *v40;
    v42 = v40[1];
    LOBYTE(v52) = 15;
    KeyedEncodingContainer.encode(_:forKey:)();
    v52 = *(v3 + v13[20]);
    HIBYTE(v51) = 16;
    sub_1000BC4D4(&qword_1016AE780, &qword_1013C5B98);
    sub_10091BE5C();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v52 = *(v3 + v13[21]);
    HIBYTE(v51) = 17;
    sub_1000BC4D4(&qword_1016AE798, &qword_1013C5BA0);
    sub_10091BF10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v43 = *(v3 + v13[22]);
    LOBYTE(v52) = 18;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = *(v3 + v13[23]);
    LOBYTE(v52) = 19;
    KeyedEncodingContainer.encode(_:forKey:)();
    v45 = v13[24];
    LOBYTE(v52) = 20;
    type metadata accessor for UUID();
    sub_100024938(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v46 = v3 + v13[25];
    v47 = *v46;
    v48 = v46[1];
    LOBYTE(v52) = 21;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v49 = v13[26];
    LOBYTE(v52) = 22;
    type metadata accessor for ProductInfoState(0);
    sub_100024938(&qword_1016AE7B0, type metadata accessor for ProductInfoState);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100916978(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE748, &qword_1013C5B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v29[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091BD60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v29[15] = 0;
  type metadata accessor for UUID();
  sub_100024938(&qword_101698330, &type metadata accessor for UUID);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for ShareState(0);
    v12 = (v3 + v11[5]);
    v13 = *v12;
    v14 = v12[1];
    v29[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = (v3 + v11[6]);
    v16 = *v15;
    v17 = v15[1];
    v29[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v11[7]);
    v19 = *v18;
    v20 = v18[1];
    v29[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v11[8]);
    v22 = *v21;
    v23 = v21[1];
    v29[11] = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = *(v3 + v11[9]);
    v29[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v25 = (v3 + v11[10]);
    v26 = *v25;
    v27 = v25[1];
    v29[9] = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100916C2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10091CFD4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100916C60(uint64_t a1)
{
  v2 = sub_10091BE08();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100916C9C(uint64_t a1)
{
  v2 = sub_10091BE08();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100916CF0()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x7079546572616873;
  if (v1 == 5)
  {
    v3 = 0xD000000000000011;
  }

  v4 = 0xD000000000000015;
  if (v1 == 3)
  {
    v4 = 0x6148656572616873;
  }

  if (*v0 > 4u)
  {
    v4 = v3;
  }

  v5 = 0x7461446572616873;
  if (v1 != 1)
  {
    v5 = 0x6974617269707865;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_100916DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10091D6F4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100916E0C(uint64_t a1)
{
  v2 = sub_10091BD60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100916E48(uint64_t a1)
{
  v2 = sub_10091BD60();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100916E9C(char a1)
{
  result = 1701869940;
  switch(a1)
  {
    case 1:
      result = 0x6564496572616873;
      break;
    case 2:
      result = 0x6E614872656E776FLL;
      break;
    case 3:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 1701667182;
      break;
    case 5:
      result = 0x6C65646F6DLL;
      break;
    case 6:
      result = 0x65566D6574737973;
      break;
    case 7:
      result = 0x6449726F646E6576;
      break;
    case 8:
      result = 0x49746375646F7270;
      break;
    case 9:
      result = 0x6465747065636361;
      break;
    case 10:
      result = 1701605234;
      break;
    case 11:
      result = 0x7079546572616873;
      break;
    case 12:
      result = 0x7369747265766461;
      break;
    case 13:
      result = 0x7461446572616873;
      break;
    case 14:
      result = 0x746176726573626FLL;
      break;
    case 15:
      result = 0x644970756F7267;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10091705C(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE7B8, &qword_1013C5BA8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v43[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091BFE8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v44) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = type metadata accessor for SharedBeaconState(0);
    v14 = v13[5];
    LOBYTE(v44) = 1;
    type metadata accessor for UUID();
    sub_100024938(&qword_101698330, &type metadata accessor for UUID);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = (v3 + v13[6]);
    v16 = *v15;
    v17 = v15[1];
    LOBYTE(v44) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = (v3 + v13[7]);
    v19 = *v18;
    v20 = v18[1];
    LOBYTE(v44) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = (v3 + v13[8]);
    v22 = *v21;
    v23 = v21[1];
    LOBYTE(v44) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v24 = (v3 + v13[9]);
    v25 = *v24;
    v26 = v24[1];
    LOBYTE(v44) = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
    v27 = (v3 + v13[10]);
    v28 = *v27;
    v29 = v27[1];
    LOBYTE(v44) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v30 = *(v3 + v13[11]);
    LOBYTE(v44) = 7;
    KeyedEncodingContainer.encode(_:forKey:)();
    v31 = *(v3 + v13[12]);
    LOBYTE(v44) = 8;
    KeyedEncodingContainer.encode(_:forKey:)();
    v32 = *(v3 + v13[13]);
    LOBYTE(v44) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    v33 = *(v3 + v13[14]);
    LOBYTE(v44) = 10;
    KeyedEncodingContainer.encode(_:forKey:)();
    v34 = (v3 + v13[15]);
    v35 = *v34;
    v36 = v34[1];
    LOBYTE(v44) = 11;
    KeyedEncodingContainer.encode(_:forKey:)();
    v37 = *(v3 + v13[16]);
    LOBYTE(v44) = 12;
    KeyedEncodingContainer.encode(_:forKey:)();
    v38 = (v3 + v13[17]);
    v39 = *v38;
    v40 = v38[1];
    LOBYTE(v44) = 13;
    KeyedEncodingContainer.encode(_:forKey:)();
    v44 = *(v3 + v13[18]);
    v43[15] = 14;
    sub_1000BC4D4(&qword_1016AE798, &qword_1013C5BA0);
    sub_10091BF10();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v41 = v13[19];
    LOBYTE(v44) = 15;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1009174E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10091D960(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100917518(uint64_t a1)
{
  v2 = sub_10091BFE8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100917554(uint64_t a1)
{
  v2 = sub_10091BFE8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009175A8(void *a1)
{
  v3 = v1;
  v5 = sub_1000BC4D4(&qword_1016AE800, &unk_1013C5BC0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091C21C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v25 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = v3[3];
    v24 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v15 = *(v3 + 32);
    v23 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v16 = v3[5];
    v17 = v3[6];
    v22 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v21 = v3[7];
    v20[15] = 4;
    sub_1000BC4D4(&qword_101698DD8, &qword_1013C44B0);
    sub_10091C270();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v18 = *(v3 + 64);
    v20[14] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1009177FC()
{
  v1 = *v0;
  v2 = 1701869940;
  v3 = 1701667182;
  v4 = 0x614D6E6F63616562;
  if (v1 != 4)
  {
    v4 = 0xD000000000000012;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x657264644163616DLL;
  if (v1 != 1)
  {
    v5 = 0xD000000000000016;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1009178B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10091DE84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1009178DC(uint64_t a1)
{
  v2 = sub_10091C21C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100917918(uint64_t a1)
{
  v2 = sub_10091C21C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100917954(void *a1)
{
  v5 = v1[2];
  v6 = v1[3];
  v7 = *(v1 + 64);
  v3 = *v1;
  v4 = v1[1];
  return sub_1009175A8(a1);
}

uint64_t sub_100917998(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_1000BC4D4(&qword_1016AE7E8, &unk_1013C5BB0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091C114();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    sub_10091C168();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

uint64_t sub_100917B3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v15 = a3;
  v8 = sub_1000BC4D4(&qword_1016AE6F8, &qword_1013C5B58);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v15 - v11;
  v13 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091BABC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_1000BC4D4(&qword_1016AE708, &qword_1013C5B60);
  sub_10091BB10();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v17 = v15;
    v16 = 1;
    sub_1000BC4D4(&qword_1016AE720, &qword_1013C5B68);
    sub_10091BBFC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = a4;
    v16 = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t sub_100917D3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13[0] = a4;
  v6 = sub_1000BC4D4(&qword_1016AE738, &unk_1013C5B70);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = v13 - v9;
  v11 = a1[4];
  sub_1000035D0(a1, a1[3]);
  sub_10091BD0C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13[1] = v13[0];
    v14 = 1;
    sub_1000BC4D4(&qword_1016B0470, &qword_10138EB80);
    sub_1001E8254();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v10, v6);
}

unint64_t sub_100917EE0()
{
  if (*v0)
  {
    result = 0xD000000000000014;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_100917F18@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000101364F60 == a2)
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

uint64_t sub_100917FFC(uint64_t a1)
{
  v2 = sub_10091C114();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100918038(uint64_t a1)
{
  v2 = sub_10091C114();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100918094()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x70756F72476C6C61;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6F636165426C6C61;
  }
}

uint64_t sub_1009180FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10091E0A0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100918124(uint64_t a1)
{
  v2 = sub_10091BABC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100918160(uint64_t a1)
{
  v2 = sub_10091BABC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1009181BC()
{
  if (*v0)
  {
    result = 0x7365746164;
  }

  else
  {
    result = 1701869940;
  }

  *v0;
  return result;
}

uint64_t sub_1009181EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7365746164 && a2 == 0xE500000000000000)
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

uint64_t sub_1009182C4(uint64_t a1)
{
  v2 = sub_10091BD0C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100918300(uint64_t a1)
{
  v2 = sub_10091BD0C();

  return CodingKey.debugDescription.getter(a1, v2);
}

Swift::Int sub_10091835C(uint64_t *a1)
{
  v2 = a1[1];
  result = _minimumMergeRunLength(_:)(v2);
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconObservation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconObservation() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_1009188E4(v8, v9, a1, v4);
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
    return sub_100918488(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_100918488(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v61 = sub_1000BC4D4(&qword_1016AE328, &qword_1013C5818);
  v8 = *(*(v61 - 8) + 64);
  v9 = __chkstk_darwin(v61);
  v60 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v49 - v11;
  v63 = type metadata accessor for BeaconObservation();
  v13 = *(*(v63 - 8) + 64);
  v14 = __chkstk_darwin(v63);
  v58 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v69 = &v49 - v17;
  result = __chkstk_darwin(v16);
  v68 = &v49 - v20;
  v51 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v56 = -v22;
    v57 = v21;
    v24 = a1 - a3;
    v50 = v22;
    v25 = v21 + v22 * a3;
    v59 = v12;
LABEL_5:
    v54 = v23;
    v55 = a3;
    v52 = v25;
    v53 = v24;
    v26 = v24;
    while (1)
    {
      v66 = v26;
      v67 = v25;
      v27 = v25;
      v28 = v68;
      sub_10091B164(v27, v68, type metadata accessor for BeaconObservation);
      v65 = v23;
      v29 = v23;
      v30 = v69;
      sub_10091B164(v29, v69, type metadata accessor for BeaconObservation);
      v32 = *(v63 + 20);
      v31 = *(v63 + 24);
      v33 = *(v28 + v31);
      v64 = *(v30 + v31);
      *v12 = v33;
      v34 = v61;
      v35 = *(v61 + 48);
      v36 = type metadata accessor for Date();
      v37 = v12;
      v38 = *(*(v36 - 8) + 16);
      v62 = v35;
      v38(&v37[v35], v28 + v32, v36);
      v39 = v60;
      v40 = v64;
      *v60 = v64;
      v38((v39 + *(v34 + 48)), v30 + v32, v36);
      v41 = qword_1013C6530[v33];
      v42 = qword_1013C6530[v40];
      if (v41 == v42)
      {
        sub_100024938(&qword_1016C9070, &type metadata accessor for Date);
        v12 = v59;
        v43 = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_10000B3A8(v39, &qword_1016AE328, &qword_1013C5818);
        sub_10000B3A8(v12, &qword_1016AE328, &qword_1013C5818);
      }

      else
      {
        v12 = v59;
        sub_10000B3A8(v59, &qword_1016AE328, &qword_1013C5818);
        sub_10000B3A8(v39, &qword_1016AE328, &qword_1013C5818);
        v43 = v41 < v42;
      }

      sub_10091AAF0(v69, type metadata accessor for BeaconObservation);
      result = sub_10091AAF0(v68, type metadata accessor for BeaconObservation);
      v45 = v66;
      v44 = v67;
      v46 = v65;
      if ((v43 & 1) == 0)
      {
LABEL_4:
        a3 = v55 + 1;
        v23 = v54 + v50;
        v24 = v53 - 1;
        v25 = v52 + v50;
        if (v55 + 1 == v51)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v57)
      {
        break;
      }

      v47 = v58;
      sub_10091AA88(v67, v58, type metadata accessor for BeaconObservation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10091AA88(v47, v46, type metadata accessor for BeaconObservation);
      v23 = v46 + v56;
      v25 = v44 + v56;
      v48 = __CFADD__(v45, 1);
      v26 = v45 + 1;
      if (v48)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1009188E4(int64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v185 = a4;
  v183 = a1;
  v204 = sub_1000BC4D4(&qword_1016AE328, &qword_1013C5818);
  v7 = *(*(v204 - 8) + 64);
  v8 = __chkstk_darwin(v204);
  v10 = &v177 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v8);
  v13 = &v177 - v12;
  v14 = __chkstk_darwin(v11);
  v16 = &v177 - v15;
  v17 = __chkstk_darwin(v14);
  v192 = &v177 - v18;
  v19 = __chkstk_darwin(v17);
  v178 = (&v177 - v20);
  __chkstk_darwin(v19);
  v182 = &v177 - v21;
  v206 = type metadata accessor for BeaconObservation();
  v22 = *(v206 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v206);
  v187 = &v177 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v202 = &v177 - v27;
  v28 = __chkstk_darwin(v26);
  v213 = &v177 - v29;
  v30 = __chkstk_darwin(v28);
  v212 = &v177 - v31;
  v32 = __chkstk_darwin(v30);
  v199 = &v177 - v33;
  v34 = __chkstk_darwin(v32);
  v198 = &v177 - v35;
  v36 = __chkstk_darwin(v34);
  v181 = &v177 - v37;
  result = __chkstk_darwin(v36);
  v180 = &v177 - v39;
  v40 = *(a3 + 8);
  if (v40 < 1)
  {
    v43 = a3;
    v42 = _swiftEmptyArrayStorage;
LABEL_110:
    v44 = *v183;
    if (!*v183)
    {
      goto LABEL_148;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_142:
      result = sub_100B31E68(v42);
      v42 = result;
    }

    v214 = v42;
    v172 = *(v42 + 16);
    if (v172 >= 2)
    {
      while (*v43)
      {
        v173 = v42;
        v42 = *(v42 + 16 * v172);
        v174 = v173;
        v175 = *&v173[16 * v172 + 24];
        sub_100919F10(*v43 + *(v22 + 72) * v42, *v43 + *(v22 + 72) * *&v173[16 * v172 + 16], *v43 + *(v22 + 72) * v175, v44);
        if (v5)
        {
        }

        if (v175 < v42)
        {
          goto LABEL_135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v174 = sub_100B31E68(v174);
        }

        if (v172 - 2 >= *(v174 + 2))
        {
          goto LABEL_136;
        }

        v176 = &v174[16 * v172];
        *v176 = v42;
        v176[1] = v175;
        v214 = v174;
        result = sub_100B31DDC(v172 - 1);
        v42 = v214;
        v172 = *(v214 + 16);
        if (v172 <= 1)
        {
        }
      }

      goto LABEL_146;
    }
  }

  v188 = v16;
  v41 = 0;
  v42 = _swiftEmptyArrayStorage;
  v43 = a3;
  v184 = a3;
  v194 = v22;
  v205 = v13;
  v203 = v10;
  while (1)
  {
    v44 = v41 + 1;
    v195 = v42;
    v186 = v41;
    if (v41 + 1 >= v40)
    {
      v67 = v185;
    }

    else
    {
      v45 = v41;
      v191 = v40;
      v179 = v5;
      v46 = *v43;
      v47 = *(v22 + 72);
      v196 = v41 + 1;
      v48 = v180;
      sub_10091B164(v46 + v47 * v44, v180, type metadata accessor for BeaconObservation);
      v197 = v47;
      v211 = v46;
      v49 = v181;
      sub_10091B164(v46 + v47 * v45, v181, type metadata accessor for BeaconObservation);
      v51 = *(v206 + 20);
      v50 = *(v206 + 24);
      v210 = *(v48 + v50);
      v52 = *(v49 + v50);
      v208 = v51;
      v209 = v52;
      v53 = v182;
      *v182 = v210;
      v54 = v204;
      v55 = *(v204 + 48);
      v207 = v55;
      v56 = type metadata accessor for Date();
      v57 = *(v56 - 8);
      v58 = *(v57 + 16);
      v59 = v57 + 16;
      v60 = &v53[v55];
      v61 = v208;
      v58(v60, v48 + v208, v56);
      v43 = v178;
      v62 = v209;
      *v178 = v209;
      v63 = v43 + *(v54 + 48);
      v190 = v58;
      v189 = v59;
      v58(v63, v49 + v61, v56);
      v64 = qword_1013C6530[v210];
      v65 = qword_1013C6530[v62];
      v210 = v56;
      if (v64 == v65)
      {
        sub_100024938(&qword_1016C9070, &type metadata accessor for Date);
        v66 = v182;
        LODWORD(v193) = dispatch thunk of static Comparable.< infix(_:_:)();
        sub_10000B3A8(v43, &qword_1016AE328, &qword_1013C5818);
        sub_10000B3A8(v66, &qword_1016AE328, &qword_1013C5818);
      }

      else
      {
        sub_10000B3A8(v182, &qword_1016AE328, &qword_1013C5818);
        sub_10000B3A8(v43, &qword_1016AE328, &qword_1013C5818);
        LODWORD(v193) = v64 < v65;
      }

      v68 = v192;
      sub_10091AAF0(v181, type metadata accessor for BeaconObservation);
      sub_10091AAF0(v180, type metadata accessor for BeaconObservation);
      v69 = v186 + 2;
      v70 = v196;
      v71 = v197 * (v186 + 2);
      result = v211 + v71;
      v72 = v197 * v196;
      v44 = v211 + v197 * v196;
      v42 = v195;
      do
      {
        v22 = v69;
        v75 = v70;
        v74 = v72;
        v76 = v71;
        if (v69 >= v191)
        {
          break;
        }

        v211 = v70;
        v207 = v71;
        v208 = v72;
        v209 = v69;
        v201 = result;
        v77 = v198;
        sub_10091B164(result, v198, type metadata accessor for BeaconObservation);
        v200 = v44;
        v78 = v199;
        sub_10091B164(v44, v199, type metadata accessor for BeaconObservation);
        v80 = *(v206 + 20);
        v79 = *(v206 + 24);
        v81 = *(v77 + v79);
        v82 = *(v78 + v79);
        *v68 = v81;
        v83 = v204;
        v84 = &v68[*(v204 + 48)];
        v85 = v190;
        v190(v84, v77 + v80, v210);
        v86 = v188;
        *v188 = v82;
        v85(v86 + *(v83 + 48), v78 + v80, v210);
        v87 = qword_1013C6530[v81];
        v88 = qword_1013C6530[v82];
        if (v87 == v88)
        {
          sub_100024938(&qword_1016C9070, &type metadata accessor for Date);
          v68 = v192;
          v73 = dispatch thunk of static Comparable.< infix(_:_:)();
          sub_10000B3A8(v86, &qword_1016AE328, &qword_1013C5818);
          sub_10000B3A8(v68, &qword_1016AE328, &qword_1013C5818);
        }

        else
        {
          v68 = v192;
          sub_10000B3A8(v192, &qword_1016AE328, &qword_1013C5818);
          sub_10000B3A8(v86, &qword_1016AE328, &qword_1013C5818);
          v73 = v87 < v88;
        }

        v42 = v195;
        v43 = type metadata accessor for BeaconObservation;
        sub_10091AAF0(v199, type metadata accessor for BeaconObservation);
        sub_10091AAF0(v198, type metadata accessor for BeaconObservation);
        v74 = v208;
        v22 = v209;
        v69 = v209 + 1;
        result = v201 + v197;
        v44 = v200 + v197;
        v75 = v211;
        v70 = v211 + 1;
        v72 = v208 + v197;
        v76 = v207;
        v71 = v207 + v197;
      }

      while ((v193 & 1) == (v73 & 1));
      if (v193)
      {
        v5 = v179;
        v67 = v185;
        if (v22 < v186)
        {
          goto LABEL_139;
        }

        if (v186 < v22)
        {
          v89 = v186 * v197;
          v90 = v186;
          while (1)
          {
            if (v90 == v75)
            {
              goto LABEL_23;
            }

            v211 = v75;
            v93 = *v184;
            if (!*v184)
            {
              goto LABEL_145;
            }

            v94 = v74;
            sub_10091AA88(v93 + v89, v187, type metadata accessor for BeaconObservation);
            v91 = v94;
            if (v89 < v94 || v93 + v89 >= (v93 + v76))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else
            {
              if (v89 == v94)
              {
                goto LABEL_22;
              }

              swift_arrayInitWithTakeBackToFront();
            }

            v91 = v94;
LABEL_22:
            result = sub_10091AA88(v187, v93 + v91, type metadata accessor for BeaconObservation);
            v74 = v94;
            v67 = v185;
            v75 = v211;
LABEL_23:
            ++v90;
            v74 -= v197;
            v76 -= v197;
            v89 += v197;
            if (v90 >= v75--)
            {
              v44 = v22;
              v5 = v179;
              goto LABEL_33;
            }
          }
        }

        v44 = v22;
LABEL_33:
        v43 = v184;
        v22 = v194;
      }

      else
      {
        v44 = v22;
        v5 = v179;
        v43 = v184;
        v22 = v194;
        v67 = v185;
      }

      v13 = v205;
    }

    v95 = *(v43 + 1);
    if (v44 >= v95)
    {
      goto LABEL_56;
    }

    if (__OFSUB__(v44, v186))
    {
      goto LABEL_138;
    }

    if (v44 - v186 >= v67)
    {
LABEL_56:
      v97 = v186;
      goto LABEL_57;
    }

    if (__OFADD__(v186, v67))
    {
      goto LABEL_140;
    }

    if (v186 + v67 >= v95)
    {
      v96 = *(v43 + 1);
    }

    else
    {
      v96 = (v186 + v67);
    }

    if (v96 < v186)
    {
LABEL_141:
      __break(1u);
      goto LABEL_142;
    }

    v97 = v186;
    if (v44 != v96)
    {
      break;
    }

LABEL_57:
    if (v44 < v97)
    {
      goto LABEL_137;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v42 + 16) + 1, 1, v42);
      v42 = result;
    }

    v128 = *(v42 + 16);
    v127 = *(v42 + 24);
    v129 = v128 + 1;
    if (v128 >= v127 >> 1)
    {
      result = sub_100A5B430((v127 > 1), v128 + 1, 1, v42);
      v42 = result;
    }

    *(v42 + 16) = v129;
    v130 = v42 + 16 * v128;
    *(v130 + 32) = v186;
    *(v130 + 40) = v44;
    v196 = v44;
    if (!*v183)
    {
      goto LABEL_147;
    }

    v44 = v5;
    if (v128)
    {
      v22 = *v183;
      v13 = v205;
      while (1)
      {
        v5 = v129 - 1;
        if (v129 >= 4)
        {
          break;
        }

        if (v129 == 3)
        {
          v131 = *(v42 + 32);
          v132 = *(v42 + 40);
          v141 = __OFSUB__(v132, v131);
          v133 = v132 - v131;
          v134 = v141;
LABEL_78:
          if (v134)
          {
            goto LABEL_126;
          }

          v147 = (v42 + 16 * v129);
          v149 = *v147;
          v148 = v147[1];
          v150 = __OFSUB__(v148, v149);
          v151 = v148 - v149;
          v152 = v150;
          if (v150)
          {
            goto LABEL_129;
          }

          v153 = (v42 + 32 + 16 * v5);
          v155 = *v153;
          v154 = v153[1];
          v141 = __OFSUB__(v154, v155);
          v156 = v154 - v155;
          if (v141)
          {
            goto LABEL_132;
          }

          if (__OFADD__(v151, v156))
          {
            goto LABEL_133;
          }

          if (v151 + v156 >= v133)
          {
            if (v133 < v156)
            {
              v5 = v129 - 2;
            }

            goto LABEL_99;
          }

          goto LABEL_92;
        }

        v157 = (v42 + 16 * v129);
        v159 = *v157;
        v158 = v157[1];
        v141 = __OFSUB__(v158, v159);
        v151 = v158 - v159;
        v152 = v141;
LABEL_92:
        if (v152)
        {
          goto LABEL_128;
        }

        v160 = v42 + 16 * v5;
        v162 = *(v160 + 32);
        v161 = *(v160 + 40);
        v141 = __OFSUB__(v161, v162);
        v163 = v161 - v162;
        if (v141)
        {
          goto LABEL_131;
        }

        if (v163 < v151)
        {
          goto LABEL_4;
        }

LABEL_99:
        v168 = v5 - 1;
        if (v5 - 1 >= v129)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
          goto LABEL_141;
        }

        if (!*v43)
        {
          goto LABEL_144;
        }

        v169 = *(v42 + 32 + 16 * v168);
        v170 = *(v42 + 32 + 16 * v5 + 8);
        sub_100919F10(*v43 + *(v194 + 72) * v169, *v43 + *(v194 + 72) * *(v42 + 32 + 16 * v5), *v43 + *(v194 + 72) * v170, v22);
        if (v44)
        {
        }

        if (v170 < v169)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = sub_100B31E68(v42);
        }

        if (v168 >= *(v42 + 16))
        {
          goto LABEL_123;
        }

        v171 = v42 + 16 * v168;
        *(v171 + 32) = v169;
        *(v171 + 40) = v170;
        v214 = v42;
        result = sub_100B31DDC(v5);
        v42 = v214;
        v129 = *(v214 + 16);
        v13 = v205;
        if (v129 <= 1)
        {
          goto LABEL_4;
        }
      }

      v135 = v42 + 32 + 16 * v129;
      v136 = *(v135 - 64);
      v137 = *(v135 - 56);
      v141 = __OFSUB__(v137, v136);
      v138 = v137 - v136;
      if (v141)
      {
        goto LABEL_124;
      }

      v140 = *(v135 - 48);
      v139 = *(v135 - 40);
      v141 = __OFSUB__(v139, v140);
      v133 = v139 - v140;
      v134 = v141;
      if (v141)
      {
        goto LABEL_125;
      }

      v142 = (v42 + 16 * v129);
      v144 = *v142;
      v143 = v142[1];
      v141 = __OFSUB__(v143, v144);
      v145 = v143 - v144;
      if (v141)
      {
        goto LABEL_127;
      }

      v141 = __OFADD__(v133, v145);
      v146 = v133 + v145;
      if (v141)
      {
        goto LABEL_130;
      }

      if (v146 >= v138)
      {
        v164 = (v42 + 32 + 16 * v5);
        v166 = *v164;
        v165 = v164[1];
        v141 = __OFSUB__(v165, v166);
        v167 = v165 - v166;
        if (v141)
        {
          goto LABEL_134;
        }

        if (v133 < v167)
        {
          v5 = v129 - 2;
        }

        goto LABEL_99;
      }

      goto LABEL_78;
    }

    v13 = v205;
LABEL_4:
    v40 = *(v43 + 1);
    v41 = v196;
    v5 = v44;
    v22 = v194;
    if (v196 >= v40)
    {
      goto LABEL_110;
    }
  }

  v179 = v5;
  v98 = *v43;
  v99 = *(v22 + 72);
  v100 = *v43 + v99 * (v44 - 1);
  v200 = -v99;
  v201 = v98;
  v101 = v186 - v44;
  v196 = v44;
  v189 = v99;
  v102 = v98 + v44 * v99;
  v103 = v206;
  v190 = v96;
LABEL_46:
  v191 = v102;
  v193 = v101;
  v104 = v101;
  v197 = v100;
  while (1)
  {
    v209 = v102;
    v210 = v104;
    v105 = v212;
    sub_10091B164(v102, v212, type metadata accessor for BeaconObservation);
    v208 = v100;
    v106 = v213;
    sub_10091B164(v100, v213, type metadata accessor for BeaconObservation);
    v109 = v103 + 20;
    v108 = *(v103 + 20);
    v107 = *(v109 + 4);
    v211 = *(v105 + v107);
    v110 = *(v106 + v107);
    *v13 = v211;
    v111 = v204;
    v112 = *(v204 + 48);
    v113 = type metadata accessor for Date();
    v114 = v13;
    v115 = *(*(v113 - 8) + 16);
    v207 = v112;
    v116 = v105 + v108;
    v117 = v203;
    v115(&v114[v112], v116, v113);
    *v117 = v110;
    v115(&v117[*(v111 + 48)], v106 + v108, v113);
    v118 = qword_1013C6530[v211];
    v22 = qword_1013C6530[v110];
    if (v118 == v22)
    {
      sub_100024938(&qword_1016C9070, &type metadata accessor for Date);
      v119 = v205;
      v120 = dispatch thunk of static Comparable.< infix(_:_:)();
      sub_10000B3A8(v117, &qword_1016AE328, &qword_1013C5818);
      sub_10000B3A8(v119, &qword_1016AE328, &qword_1013C5818);
      v13 = v119;
    }

    else
    {
      v121 = v205;
      sub_10000B3A8(v205, &qword_1016AE328, &qword_1013C5818);
      sub_10000B3A8(v117, &qword_1016AE328, &qword_1013C5818);
      v120 = v118 < v22;
      v13 = v121;
    }

    sub_10091AAF0(v213, type metadata accessor for BeaconObservation);
    result = sub_10091AAF0(v212, type metadata accessor for BeaconObservation);
    v103 = v206;
    if ((v120 & 1) == 0)
    {
LABEL_45:
      v100 = v197 + v189;
      v101 = v193 - 1;
      v102 = v191 + v189;
      if (++v196 != v190)
      {
        goto LABEL_46;
      }

      v44 = v190;
      v5 = v179;
      v43 = v184;
      v42 = v195;
      goto LABEL_56;
    }

    v122 = v210;
    if (!v201)
    {
      break;
    }

    v123 = v209;
    v124 = v202;
    sub_10091AA88(v209, v202, type metadata accessor for BeaconObservation);
    v125 = v208;
    swift_arrayInitWithTakeFrontToBack();
    sub_10091AA88(v124, v125, type metadata accessor for BeaconObservation);
    v100 = v125 + v200;
    v102 = v123 + v200;
    v126 = __CFADD__(v122, 1);
    v104 = v122 + 1;
    if (v126)
    {
      goto LABEL_45;
    }
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
  return result;
}

uint64_t sub_100919994(uint64_t result, uint64_t a2, uint64_t *a3, char *a4)
{
  v84 = result;
  v5 = a3[1];
  if (v5 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_89:
    v6 = *v84;
    if (!*v84)
    {
      goto LABEL_127;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_121:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v76 = v8 + 16;
    v77 = *(v8 + 2);
    if (v77 >= 2)
    {
      while (*a3)
      {
        v78 = &v8[16 * v77];
        v79 = *v78;
        v80 = &v76[2 * v77];
        v81 = v80[1];
        sub_10091A7EC((*a3 + *v78), (*a3 + *v80), *a3 + v81, v6);
        if (v4)
        {
        }

        if (v81 < v79)
        {
          goto LABEL_113;
        }

        if (v77 - 2 >= *v76)
        {
          goto LABEL_114;
        }

        *v78 = v79;
        *(v78 + 1) = v81;
        v82 = *v76 - v77;
        if (*v76 < v77)
        {
          goto LABEL_115;
        }

        v77 = *v76 - 1;
        result = memmove(v80, v80 + 2, 16 * v82);
        *v76 = v77;
        if (v77 <= 1)
        {
        }
      }

      goto LABEL_125;
    }
  }

  v6 = a4;
  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  while (1)
  {
    v9 = v7++;
    if (v7 < v5)
    {
      v10 = qword_1013C6530[*(*a3 + v7)];
      v11 = *(*a3 + v7);
      v12 = qword_1013C6530[*(*a3 + v9)];
      v13 = v9 + 2;
      if (v5 <= v9 + 2)
      {
        v7 = v9 + 2;
      }

      else
      {
        v7 = v5;
      }

      while (v7 != v13)
      {
        v14 = *(*a3 + v13);
        v15 = (v10 < v12) ^ (qword_1013C6530[v14] >= qword_1013C6530[v11]);
        ++v13;
        v11 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v13 - 1;
          break;
        }
      }

      if (v10 < v12)
      {
        if (v7 < v9)
        {
          goto LABEL_118;
        }

        if (v9 < v7)
        {
          v16 = v7 - 1;
          v17 = v9;
          do
          {
            if (v17 != v16)
            {
              v20 = *a3;
              if (!*a3)
              {
                goto LABEL_124;
              }

              v18 = *(v20 + v17);
              *(v20 + v17) = *(v20 + v16);
              *(v20 + v16) = v18;
            }
          }

          while (++v17 < v16--);
          v5 = a3[1];
        }
      }
    }

    if (v7 < v5)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_117;
      }

      if (v7 - v9 < v6)
      {
        if (__OFADD__(v9, v6))
        {
          goto LABEL_119;
        }

        if (v9 + v6 < v5)
        {
          v5 = v9 + v6;
        }

        if (v5 < v9)
        {
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (v7 != v5)
        {
          break;
        }
      }
    }

LABEL_38:
    if (v7 < v9)
    {
      goto LABEL_116;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v8 + 2) + 1, 1, v8);
      v8 = result;
    }

    v31 = *(v8 + 2);
    v30 = *(v8 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      result = sub_100A5B430((v30 > 1), v31 + 1, 1, v8);
      v8 = result;
    }

    *(v8 + 2) = v32;
    v33 = &v8[16 * v31];
    *(v33 + 4) = v9;
    *(v33 + 5) = v7;
    v34 = *v84;
    if (!*v84)
    {
      goto LABEL_126;
    }

    if (v31)
    {
      while (1)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          break;
        }

        if (v32 == 3)
        {
          v36 = *(v8 + 4);
          v37 = *(v8 + 5);
          v46 = __OFSUB__(v37, v36);
          v38 = v37 - v36;
          v39 = v46;
LABEL_58:
          if (v39)
          {
            goto LABEL_104;
          }

          v52 = &v8[16 * v32];
          v54 = *v52;
          v53 = *(v52 + 1);
          v55 = __OFSUB__(v53, v54);
          v56 = v53 - v54;
          v57 = v55;
          if (v55)
          {
            goto LABEL_107;
          }

          v58 = &v8[16 * v35 + 32];
          v60 = *v58;
          v59 = *(v58 + 1);
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v56, v61))
          {
            goto LABEL_111;
          }

          if (v56 + v61 >= v38)
          {
            if (v38 < v61)
            {
              v35 = v32 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        v62 = &v8[16 * v32];
        v64 = *v62;
        v63 = *(v62 + 1);
        v46 = __OFSUB__(v63, v64);
        v56 = v63 - v64;
        v57 = v46;
LABEL_72:
        if (v57)
        {
          goto LABEL_106;
        }

        v65 = &v8[16 * v35];
        v67 = *(v65 + 4);
        v66 = *(v65 + 5);
        v46 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v46)
        {
          goto LABEL_109;
        }

        if (v68 < v56)
        {
          goto LABEL_3;
        }

LABEL_79:
        v6 = v35 - 1;
        if (v35 - 1 >= v32)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (!*a3)
        {
          goto LABEL_123;
        }

        v73 = *&v8[16 * v6 + 32];
        v74 = *&v8[16 * v35 + 40];
        sub_10091A7EC((*a3 + v73), (*a3 + *&v8[16 * v35 + 32]), *a3 + v74, v34);
        if (v4)
        {
        }

        if (v74 < v73)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_100B31E68(v8);
        }

        if (v6 >= *(v8 + 2))
        {
          goto LABEL_101;
        }

        v75 = &v8[16 * v6];
        *(v75 + 4) = v73;
        *(v75 + 5) = v74;
        result = sub_100B31DDC(v35);
        v32 = *(v8 + 2);
        if (v32 <= 1)
        {
          goto LABEL_3;
        }
      }

      v40 = &v8[16 * v32 + 32];
      v41 = *(v40 - 64);
      v42 = *(v40 - 56);
      v46 = __OFSUB__(v42, v41);
      v43 = v42 - v41;
      if (v46)
      {
        goto LABEL_102;
      }

      v45 = *(v40 - 48);
      v44 = *(v40 - 40);
      v46 = __OFSUB__(v44, v45);
      v38 = v44 - v45;
      v39 = v46;
      if (v46)
      {
        goto LABEL_103;
      }

      v47 = &v8[16 * v32];
      v49 = *v47;
      v48 = *(v47 + 1);
      v46 = __OFSUB__(v48, v49);
      v50 = v48 - v49;
      if (v46)
      {
        goto LABEL_105;
      }

      v46 = __OFADD__(v38, v50);
      v51 = v38 + v50;
      if (v46)
      {
        goto LABEL_108;
      }

      if (v51 >= v43)
      {
        v69 = &v8[16 * v35 + 32];
        v71 = *v69;
        v70 = *(v69 + 1);
        v46 = __OFSUB__(v70, v71);
        v72 = v70 - v71;
        if (v46)
        {
          goto LABEL_112;
        }

        if (v38 < v72)
        {
          v35 = v32 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_58;
    }

LABEL_3:
    v5 = a3[1];
    v6 = a4;
    if (v7 >= v5)
    {
      goto LABEL_89;
    }
  }

  v21 = *a3;
  v22 = (*a3 + v7);
  v23 = v9 - v7;
LABEL_31:
  v24 = *(v21 + v7);
  v25 = qword_1013C6530[v24];
  v26 = v23;
  v27 = v22;
  while (1)
  {
    v28 = *(v27 - 1);
    if (v25 >= qword_1013C6530[v28])
    {
LABEL_30:
      ++v7;
      ++v22;
      --v23;
      if (v7 != v5)
      {
        goto LABEL_31;
      }

      v7 = v5;
      goto LABEL_38;
    }

    if (!v21)
    {
      break;
    }

    *v27 = v28;
    *--v27 = v24;
    if (__CFADD__(v26++, 1))
    {
      goto LABEL_30;
    }
  }

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
  return result;
}

uint64_t sub_100919F10(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v88 = sub_1000BC4D4(&qword_1016AE328, &qword_1013C5818);
  v8 = *(*(v88 - 8) + 64);
  v9 = __chkstk_darwin(v88);
  v11 = &v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v9);
  v14 = &v79 - v13;
  v15 = __chkstk_darwin(v12);
  v17 = &v79 - v16;
  __chkstk_darwin(v15);
  v19 = &v79 - v18;
  v96 = type metadata accessor for BeaconObservation();
  v20 = *(*(v96 - 8) + 64);
  v21 = __chkstk_darwin(v96);
  v90 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v21);
  v89 = &v79 - v24;
  v25 = __chkstk_darwin(v23);
  v92 = &v79 - v26;
  result = __chkstk_darwin(v25);
  v91 = &v79 - v28;
  v30 = *(v29 + 72);
  if (!v30)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_68;
  }

  v31 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v30 == -1)
  {
    goto LABEL_69;
  }

  v32 = (a2 - a1) / v30;
  v99 = a1;
  v98 = a4;
  v86 = v30;
  if (v32 >= v31 / v30)
  {
    v87 = v14;
    v35 = v11;
    v36 = v31 / v30 * v30;
    if (a4 < a2 || a2 + v36 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v55 = a4 + v36;
    if (v36 >= 1)
    {
      v56 = -v86;
      v57 = a4 + v36;
      v93 = a4;
      v94 = a1;
      v81 = v35;
      v82 = -v86;
      while (2)
      {
        while (1)
        {
          v79 = v55;
          v58 = a2;
          a2 += v56;
          v95 = a2;
          v83 = v58;
          while (1)
          {
            if (v58 <= a1)
            {
              v99 = v58;
              v97 = v79;
              goto LABEL_66;
            }

            v86 = a3;
            v80 = v55;
            v91 = v57;
            v92 = v57 + v56;
            v59 = v89;
            sub_10091B164(v57 + v56, v89, type metadata accessor for BeaconObservation);
            v60 = a2;
            v61 = v90;
            sub_10091B164(v60, v90, type metadata accessor for BeaconObservation);
            v63 = *(v96 + 20);
            v62 = *(v96 + 24);
            v64 = *(v59 + v62);
            v84 = *(v61 + v62);
            v85 = v64;
            v65 = v87;
            v66 = v88;
            *v87 = v64;
            v67 = *(v66 + 48);
            v68 = type metadata accessor for Date();
            v69 = *(*(v68 - 8) + 16);
            v70 = v59 + v63;
            v71 = v81;
            v69(&v65[v67], v70, v68);
            v72 = v84;
            *v71 = v84;
            v69(&v71[*(v66 + 48)], v61 + v63, v68);
            v73 = qword_1013C6530[v85];
            v74 = qword_1013C6530[v72];
            if (v73 == v74)
            {
              sub_100024938(&qword_1016C9070, &type metadata accessor for Date);
              v75 = v87;
              v76 = dispatch thunk of static Comparable.< infix(_:_:)();
              sub_10000B3A8(v71, &qword_1016AE328, &qword_1013C5818);
              sub_10000B3A8(v75, &qword_1016AE328, &qword_1013C5818);
            }

            else
            {
              sub_10000B3A8(v87, &qword_1016AE328, &qword_1013C5818);
              sub_10000B3A8(v71, &qword_1016AE328, &qword_1013C5818);
              v76 = v73 < v74;
            }

            v56 = v82;
            v77 = v86;
            a3 = v86 + v82;
            sub_10091AAF0(v90, type metadata accessor for BeaconObservation);
            sub_10091AAF0(v89, type metadata accessor for BeaconObservation);
            a1 = v94;
            a2 = v95;
            v78 = v93;
            v57 = v91;
            v58 = v83;
            if (v76)
            {
              break;
            }

            v55 = v92;
            if (v77 < v91 || a3 >= v91)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v77 != v91)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v57 = v55;
            if (v92 <= v78)
            {
              a2 = v58;
              goto LABEL_65;
            }
          }

          if (v77 < v83 || a3 >= v83)
          {
            break;
          }

          v55 = v80;
          if (v77 != v83)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v57 <= v78)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v55 = v80;
        if (v57 > v78)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v99 = a2;
    v97 = v55;
  }

  else
  {
    v33 = v32 * v30;
    if (a4 < a1 || a1 + v33 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
      v34 = v19;
    }

    else
    {
      v34 = v19;
      if (a4 != a1)
      {
        swift_arrayInitWithTakeBackToFront();
      }
    }

    v85 = a4 + v33;
    v97 = a4 + v33;
    if (v33 >= 1 && a2 < a3)
    {
      v83 = v17;
      v84 = a3;
      v82 = v34;
      do
      {
        v94 = a1;
        v95 = a2;
        v38 = v91;
        sub_10091B164(a2, v91, type metadata accessor for BeaconObservation);
        v93 = a4;
        v39 = v92;
        sub_10091B164(a4, v92, type metadata accessor for BeaconObservation);
        v41 = *(v96 + 20);
        v40 = *(v96 + 24);
        v42 = *(v38 + v40);
        v89 = *(v39 + v40);
        v90 = v42;
        *v34 = v42;
        v43 = v88;
        v44 = *(v88 + 48);
        v45 = type metadata accessor for Date();
        v46 = v34;
        v47 = *(*(v45 - 8) + 16);
        v87 = v44;
        v47(&v44[v46], v38 + v41, v45);
        v48 = v89;
        *v17 = v89;
        v47(&v17[*(v43 + 48)], v39 + v41, v45);
        v49 = qword_1013C6530[v90];
        v50 = qword_1013C6530[v48];
        if (v49 == v50)
        {
          sub_100024938(&qword_1016C9070, &type metadata accessor for Date);
          v34 = v82;
          v17 = v83;
          v51 = dispatch thunk of static Comparable.< infix(_:_:)();
          sub_10000B3A8(v17, &qword_1016AE328, &qword_1013C5818);
          sub_10000B3A8(v34, &qword_1016AE328, &qword_1013C5818);
        }

        else
        {
          v34 = v82;
          sub_10000B3A8(v82, &qword_1016AE328, &qword_1013C5818);
          v17 = v83;
          sub_10000B3A8(v83, &qword_1016AE328, &qword_1013C5818);
          v51 = v49 < v50;
        }

        sub_10091AAF0(v92, type metadata accessor for BeaconObservation);
        sub_10091AAF0(v91, type metadata accessor for BeaconObservation);
        v52 = v94;
        a2 = v95;
        a4 = v93;
        v53 = v84;
        v54 = v86;
        if (v51)
        {
          if (v94 < v95 || v94 >= v95 + v86)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v94 != v95)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v54;
        }

        else
        {
          if (v94 < v93 || v94 >= v93 + v86)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v94 != v93)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v98 = a4 + v54;
          a4 += v54;
        }

        a1 = v52 + v54;
        v99 = a1;
      }

      while (a4 < v85 && a2 < v53);
    }
  }

LABEL_66:
  sub_10060AAB4(&v99, &v98, &v97);
  return 1;
}

uint64_t sub_10091A7EC(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = a3 - __src;
  if (__src - __dst >= (a3 - __src))
  {
    if (a4 != __src || a4 >= a3)
    {
      memmove(a4, __src, a3 - __src);
    }

    v10 = &v4[v9];
    if (v9 >= 1 && v6 > v7)
    {
      do
      {
        v14 = v6 - 1;
        --v5;
        v15 = v10;
        while (1)
        {
          v16 = v5 + 1;
          v18 = *--v15;
          v17 = v18;
          v19 = *v14;
          if (qword_1013C6530[v18] < qword_1013C6530[v19])
          {
            break;
          }

          if (v16 < v10 || v5 >= v10)
          {
            *v5 = v17;
          }

          --v5;
          v10 = v15;
          if (v15 <= v4)
          {
            v10 = v15;
            goto LABEL_40;
          }
        }

        if (v16 < v6 || v5 >= v6)
        {
          *v5 = v19;
        }

        if (v10 <= v4)
        {
          break;
        }

        --v6;
      }

      while (v14 > v7);
      v6 = v14;
      if (v14 == v4)
      {
        goto LABEL_41;
      }

      goto LABEL_42;
    }

LABEL_40:
    if (v6 != v4)
    {
LABEL_42:
      memmove(v6, v4, v10 - v4);
      return 1;
    }
  }

  else
  {
    if (a4 != __dst || a4 >= __src)
    {
      memmove(a4, __dst, v8);
    }

    v10 = &v4[v8];
    if (v8 >= 1 && v6 < v5)
    {
      while (1)
      {
        v11 = *v4;
        if (qword_1013C6530[*v6] >= qword_1013C6530[v11])
        {
          v13 = v4 + 1;
          v12 = v6;
          if (v7 < v4)
          {
            ++v4;
          }

          else
          {
            ++v4;
            if (v7 < v13)
            {
              goto LABEL_16;
            }
          }
        }

        else
        {
          LOBYTE(v11) = *v6;
          v12 = v6 + 1;
          if (v7 >= v6 && v7 < v12)
          {
            goto LABEL_16;
          }
        }

        *v7 = v11;
LABEL_16:
        ++v7;
        if (v4 < v10)
        {
          v6 = v12;
          if (v12 < v5)
          {
            continue;
          }
        }

        break;
      }
    }

    v6 = v7;
    if (v7 != v4)
    {
      goto LABEL_42;
    }
  }

LABEL_41:
  if (v6 >= v10)
  {
    goto LABEL_42;
  }

  return 1;
}

uint64_t sub_10091AA24(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for BeaconState(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10091AA88(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10091AAF0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_10091AB50()
{
  result = qword_1016AE318;
  if (!qword_1016AE318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE318);
  }

  return result;
}

uint64_t sub_10091AC24(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100014650;

  return sub_1009152F4(a1, v4, v1 + 24);
}

uint64_t sub_10091ACD0(uint64_t a1)
{
  v2 = type metadata accessor for BeaconObservation();
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2);
  v7 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (!v8)
  {
    v23 = _swiftEmptyDictionarySingleton;
LABEL_21:
    v38 = v23[2];
    if (v38)
    {
      v39 = sub_1003A8858(v23[2], 0);
      v40 = sub_1003AA5EC(&v62, v39 + 32, v38, v23);
      swift_bridgeObjectRetain_n();
      sub_1000128F8();
      if (v40 == v38)
      {
LABEL_25:
        v62 = v39;
        sub_100910BB8(&v62);

        v41 = *(v62 + 2);
        v61 = v62;
        if (v41)
        {
          v42 = v62 + 32;
          v43 = _swiftEmptyArrayStorage;
          do
          {
            v46 = *v42++;
            v45 = v46;
            if (v23[2])
            {
              v47 = sub_100772048(v45);
              if (v48)
              {
                v49 = *(v23[7] + 8 * v47);

                v50 = sub_10091E6AC(v45);
                v52 = v51;
                if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                {
                  v43 = sub_100A5E278(0, *(v43 + 2) + 1, 1, v43);
                }

                v54 = *(v43 + 2);
                v53 = *(v43 + 3);
                if (v54 >= v53 >> 1)
                {
                  v43 = sub_100A5E278((v53 > 1), v54 + 1, 1, v43);
                }

                *(v43 + 2) = v54 + 1;
                v44 = &v43[24 * v54];
                *(v44 + 4) = v50;
                *(v44 + 5) = v52;
                *(v44 + 6) = v49;
              }
            }

            --v41;
          }

          while (v41);
        }

        else
        {
          v43 = _swiftEmptyArrayStorage;
        }

        return v43;
      }

      __break(1u);
    }

    v39 = _swiftEmptyArrayStorage;
    goto LABEL_25;
  }

  v9 = *(v4 + 24);
  v59 = *(v4 + 20);
  v60 = v9;
  v10 = a1 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
  v58 = *(v5 + 72);
  v11 = _swiftEmptyDictionarySingleton;
  v57 = &v56 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  while (1)
  {
    sub_10091B164(v10, v7, type metadata accessor for BeaconObservation);
    v12 = v7[v60];

    v13 = Date.iso8601.getter();
    v15 = v14;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v62 = v11;
    v18 = sub_100772048(v12);
    v19 = v11[2];
    v20 = (v17 & 1) == 0;
    v21 = v19 + v20;
    if (__OFADD__(v19, v20))
    {
      break;
    }

    v22 = v17;
    if (v11[3] >= v21)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v23 = v11;
        if (v17)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_10100B504();
        v23 = v62;
        if (v22)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_100FF29D0(v21, isUniquelyReferenced_nonNull_native);
      v23 = v62;
      v24 = sub_100772048(v12);
      if ((v22 & 1) != (v25 & 1))
      {
        goto LABEL_39;
      }

      v18 = v24;
      if (v22)
      {
        goto LABEL_12;
      }
    }

    v23[(v18 >> 6) + 8] |= 1 << v18;
    *(v23[6] + v18) = v12;
    *(v23[7] + 8 * v18) = _swiftEmptyArrayStorage;
    v26 = v23[2];
    v27 = __OFADD__(v26, 1);
    v28 = v26 + 1;
    if (v27)
    {
      goto LABEL_38;
    }

    v23[2] = v28;
LABEL_12:
    v61 = v15;
    v29 = v23[7];
    v30 = *(v29 + 8 * v18);
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *(v29 + 8 * v18) = v30;
    v32 = v13;
    if ((v31 & 1) == 0)
    {
      v30 = sub_100A5B2CC(0, *(v30 + 2) + 1, 1, v30);
      *(v29 + 8 * v18) = v30;
    }

    v34 = *(v30 + 2);
    v33 = *(v30 + 3);
    if (v34 >= v33 >> 1)
    {
      *(v29 + 8 * v18) = sub_100A5B2CC((v33 > 1), v34 + 1, 1, v30);
    }

    v7 = v57;
    sub_10091AAF0(v57, type metadata accessor for BeaconObservation);
    v35 = *(v29 + 8 * v18);
    *(v35 + 16) = v34 + 1;
    v36 = v35 + 16 * v34;
    v37 = v61;
    *(v36 + 32) = v32;
    *(v36 + 40) = v37;
    v10 += v58;
    v11 = v23;
    if (!--v8)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t sub_10091B164(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10091B204()
{
  result = type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_10091B2BC()
{
  sub_10091B5B8(319, &unk_1016AE440, type metadata accessor for BeaconProductInfoRecord, &type metadata accessor for Optional);
  if (v0 <= 0x3F)
  {
    sub_10091B61C(319, &qword_1016BD350, &type metadata for String, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_10091B3BC()
{
  type metadata accessor for StableIdentifier();
  if (v0 <= 0x3F)
  {
    sub_10091B5B8(319, &qword_1016AE4D8, type metadata accessor for ShareState, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10091B61C(319, &unk_1016AE4E0, &type metadata for ObservationState, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        sub_10091B5B8(319, &qword_1016B1C20, &type metadata accessor for UUID, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_10091B61C(319, &qword_10169C548, &type metadata for UInt8, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            type metadata accessor for ProductInfoState(319);
            if (v5 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_10091B5B8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_10091B61C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_10091B694()
{
  type metadata accessor for UUID();
  if (v0 <= 0x3F)
  {
    sub_10091B61C(319, &unk_1016AE4E0, &type metadata for ObservationState, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_10091B5B8(319, &qword_1016B1C20, &type metadata accessor for UUID, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_10091B7D0()
{
  sub_10091B8A4(319, &qword_1016AE6B0, type metadata accessor for OwnedBeaconState);
  if (v0 <= 0x3F)
  {
    sub_10091B8A4(319, &qword_1016AE6B8, type metadata accessor for SharedBeaconState);
    if (v1 <= 0x3F)
    {
      sub_10091B8F0();
      if (v2 <= 0x3F)
      {
        sub_10091B920();
        if (v3 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void sub_10091B8A4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void))
{
  if (!*a2)
  {
    v4 = a3(0);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

ValueMetadata *sub_10091B8F0()
{
  result = qword_1016AE6C0;
  if (!qword_1016AE6C0)
  {
    result = &type metadata for OwnedBeaconGroupState;
    atomic_store(&type metadata for OwnedBeaconGroupState, &qword_1016AE6C0);
  }

  return result;
}

ValueMetadata *sub_10091B920()
{
  result = qword_1016AE6C8;
  if (!qword_1016AE6C8)
  {
    result = &type metadata for SharedBeaconGroupState;
    atomic_store(&type metadata for SharedBeaconGroupState, &qword_1016AE6C8);
  }

  return result;
}

uint64_t sub_10091B960(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 65))
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

uint64_t sub_10091B9A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 65) = 1;
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

    *(result + 65) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10091BA0C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_10091BA54(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_10091BABC()
{
  result = qword_1016AE700;
  if (!qword_1016AE700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE700);
  }

  return result;
}

unint64_t sub_10091BB10()
{
  result = qword_1016AE710;
  if (!qword_1016AE710)
  {
    sub_1000BC580(&qword_1016AE708, &qword_1013C5B60);
    sub_100024938(&qword_101698330, &type metadata accessor for UUID);
    sub_100024938(&qword_1016AE718, type metadata accessor for BeaconState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE710);
  }

  return result;
}

unint64_t sub_10091BBFC()
{
  result = qword_1016AE728;
  if (!qword_1016AE728)
  {
    sub_1000BC580(&qword_1016AE720, &qword_1013C5B68);
    sub_100024938(&qword_101698330, &type metadata accessor for UUID);
    sub_10091BCB8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE728);
  }

  return result;
}

unint64_t sub_10091BCB8()
{
  result = qword_1016AE730;
  if (!qword_1016AE730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE730);
  }

  return result;
}

unint64_t sub_10091BD0C()
{
  result = qword_1016AE740;
  if (!qword_1016AE740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE740);
  }

  return result;
}

unint64_t sub_10091BD60()
{
  result = qword_1016AE750;
  if (!qword_1016AE750)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE750);
  }

  return result;
}

unint64_t sub_10091BDB4()
{
  result = qword_1016AE760;
  if (!qword_1016AE760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE760);
  }

  return result;
}

unint64_t sub_10091BE08()
{
  result = qword_1016AE770;
  if (!qword_1016AE770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE770);
  }

  return result;
}

unint64_t sub_10091BE5C()
{
  result = qword_1016AE788;
  if (!qword_1016AE788)
  {
    sub_1000BC580(&qword_1016AE780, &qword_1013C5B98);
    sub_100024938(&qword_1016AE790, type metadata accessor for ShareState);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE788);
  }

  return result;
}

unint64_t sub_10091BF10()
{
  result = qword_1016AE7A0;
  if (!qword_1016AE7A0)
  {
    sub_1000BC580(&qword_1016AE798, &qword_1013C5BA0);
    sub_10091BF94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7A0);
  }

  return result;
}

unint64_t sub_10091BF94()
{
  result = qword_1016AE7A8;
  if (!qword_1016AE7A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7A8);
  }

  return result;
}

unint64_t sub_10091BFE8()
{
  result = qword_1016AE7C0;
  if (!qword_1016AE7C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7C0);
  }

  return result;
}

unint64_t sub_10091C03C()
{
  result = qword_1016AE7C8;
  if (!qword_1016AE7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7C8);
  }

  return result;
}

unint64_t sub_10091C090()
{
  result = qword_1016AE7D0;
  if (!qword_1016AE7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7D0);
  }

  return result;
}

unint64_t sub_10091C114()
{
  result = qword_1016AE7F0;
  if (!qword_1016AE7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7F0);
  }

  return result;
}

unint64_t sub_10091C168()
{
  result = qword_1016AE7F8;
  if (!qword_1016AE7F8)
  {
    sub_1000BC580(&qword_1016AF8E0, &qword_101393130);
    sub_100024938(&qword_101698330, &type metadata accessor for UUID);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE7F8);
  }

  return result;
}

unint64_t sub_10091C21C()
{
  result = qword_1016AE808;
  if (!qword_1016AE808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE808);
  }

  return result;
}

unint64_t sub_10091C270()
{
  result = qword_1016AD858;
  if (!qword_1016AD858)
  {
    sub_1000BC580(&qword_101698DD8, &qword_1013C44B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AD858);
  }

  return result;
}

unint64_t sub_10091C2EC()
{
  result = qword_1016AE818;
  if (!qword_1016AE818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1016AE818);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for OwnedBeaconState.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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