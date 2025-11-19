unint64_t sub_10003DE58(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007224(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003DF90(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007224(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003E0B4(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008348D0, &qword_1006C00F0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_1008348D8, &unk_1006DA710);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_1008348D0, &qword_1006C00F0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10003B8DC(*v6, v13, &String.hash(into:), sub_10003BBE4);
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
      v19 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
      result = sub_1000405C4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
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

unint64_t sub_10003E2C4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008347E0, &qword_1006C0060);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v4, &v11, &qword_10084A0B0, &qword_1006E9E50);
      v5 = v11;
      result = sub_10003B35C(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_10001F348(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10003E414(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007224(&qword_100834978, &qword_1006C0160);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 176);
  v42 = *(a1 + 160);
  v43 = v4;
  v44 = *(a1 + 192);
  v5 = *(a1 + 112);
  v38 = *(a1 + 96);
  v39 = v5;
  v6 = *(a1 + 144);
  v40 = *(a1 + 128);
  v41 = v6;
  v7 = *(a1 + 48);
  v34 = *(a1 + 32);
  v35 = v7;
  v8 = *(a1 + 80);
  v36 = *(a1 + 64);
  v37 = v8;
  v10 = *(&v34 + 1);
  v9 = v34;
  sub_10000BBC4(&v34, v33, &qword_100834980, &qword_1006C0168);
  result = sub_10003B8DC(v9, v10, &String.hash(into:), sub_10003BBE4);
  if (v12)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v13 = (a1 + 200);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v14 = (v3[6] + 16 * result);
    *v14 = v9;
    v14[1] = v10;
    v15 = v3[7] + 152 * result;
    v16 = v36;
    *v15 = v35;
    *(v15 + 16) = v16;
    v17 = v37;
    v18 = v38;
    v19 = v40;
    *(v15 + 64) = v39;
    *(v15 + 80) = v19;
    *(v15 + 32) = v17;
    *(v15 + 48) = v18;
    v20 = v41;
    v21 = v42;
    v22 = v43;
    *(v15 + 144) = v44;
    *(v15 + 112) = v21;
    *(v15 + 128) = v22;
    *(v15 + 96) = v20;
    v23 = v3[2];
    v24 = __OFADD__(v23, 1);
    v25 = v23 + 1;
    if (v24)
    {
      break;
    }

    v3[2] = v25;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v26 = (v13 + 168);
    v27 = v13[9];
    v42 = v13[8];
    v43 = v27;
    v44 = *(v13 + 20);
    v28 = v13[5];
    v38 = v13[4];
    v39 = v28;
    v29 = v13[7];
    v40 = v13[6];
    v41 = v29;
    v30 = v13[1];
    v34 = *v13;
    v35 = v30;
    v31 = v13[3];
    v36 = v13[2];
    v37 = v31;
    v10 = *(&v34 + 1);
    v9 = v34;
    sub_10000BBC4(&v34, v33, &qword_100834980, &qword_1006C0168);
    result = sub_10003B8DC(v9, v10, &String.hash(into:), sub_10003BBE4);
    v13 = v26;
    if (v32)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003E654(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834798, &qword_1006D4940);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_1008347A0, &unk_1006DA610);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_100834798, &qword_1006D4940);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10003B8DC(*v6, v13, &String.hash(into:), sub_10003BBE4);
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
      v19 = type metadata accessor for RecipientEncryptionCertificate();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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

unint64_t sub_10003E87C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007224(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003E9C8(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834728, &qword_1006C0020);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_100834730, &qword_1006C0028);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_100834728, &qword_1006C0020);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10003B8DC(*v6, v13, &String.hash(into:), sub_10003BBE4);
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
      v19 = type metadata accessor for DigitalPresentmentEligibleProposalData();
      result = sub_1000405C4(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for DigitalPresentmentEligibleProposalData);
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

unint64_t sub_10003EBD8(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834960, &qword_1006C0150);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_100834968, &qword_1006C0158);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_100834960, &qword_1006C0150);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10003B8DC(*v6, v13, &String.hash(into:), sub_10003BBE4);
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
      v19 = type metadata accessor for CredentialPresentmentElementRequestInfo();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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

unint64_t sub_10003EE10(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v5 = *(a1 + 16);
  if (v5)
  {
    sub_100007224(a2, a3);
    v9 = static _DictionaryStorage.allocate(capacity:)();
    v10 = a1 + 32;

    while (1)
    {
      sub_10000BBC4(v10, &v17, a4, a5);
      v11 = v17;
      result = sub_10003B580(v17);
      if (v13)
      {
        break;
      }

      *(v9 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v9[6] + 8 * result) = v11;
      result = sub_10001F348(&v18, (v9[7] + 32 * result));
      v14 = v9[2];
      v15 = __OFADD__(v14, 1);
      v16 = v14 + 1;
      if (v15)
      {
        goto LABEL_10;
      }

      v9[2] = v16;
      v10 += 40;
      if (!--v5)
      {

        return v9;
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

unint64_t sub_10003EF28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834860, &qword_1006C00B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
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

unint64_t sub_10003F064(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834950, &qword_1006C0140);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_100834958, &qword_1006C0148);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_100834950, &qword_1006C0140);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10003B8DC(*v6, v13, &String.hash(into:), sub_10003BBE4);
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
      v19 = type metadata accessor for IQACode();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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

unint64_t sub_10003F278(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_1008348A8, &qword_1006C00E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_10003B580(v7);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v7;
      v10 = (v3[7] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
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

unint64_t sub_10003F378(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834948, &qword_1006DA7A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 5)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = (v3[7] + 24 * result);
      *v13 = v7;
      v13[1] = v8;
      v13[2] = v9;
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003F4CC(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834928, &qword_1006C0130);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_100834930, &qword_1006C0138);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_100834928, &qword_1006C0130);
      result = sub_10003B808(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for EncryptedMessageEntity();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003F6C8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_100007224(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 72); ; i += 6)
    {
      v7 = *(i - 5);
      v8 = *(i - 4);
      v10 = *(i - 3);
      v9 = *(i - 2);
      v12 = *(i - 1);
      v11 = *i;

      result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
      if (v14)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v5[6] + 16 * result);
      *v15 = v7;
      v15[1] = v8;
      v16 = (v5[7] + 32 * result);
      *v16 = v10;
      v16[1] = v9;
      v16[2] = v12;
      v16[3] = v11;
      v17 = v5[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v5[2] = v19;
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

unint64_t sub_10003F808(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008348C0, &qword_1006C00E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_1008348C8, &unk_1006DA6D0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_1008348C0, &qword_1006C00E8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_10003B8DC(*v6, v13, &String.hash(into:), sub_10003BBE4);
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
      v19 = type metadata accessor for MobileDocumentProviderRegisteredApplication();
      result = (*(*(v19 - 8) + 32))(v18 + *(*(v19 - 8) + 72) * v16, v6 + v9, v19);
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

unint64_t sub_10003FA1C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834760, &qword_1006DA550);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 16)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_10003AFE4(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + result) = v6;
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

unint64_t sub_10003FB10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834768, &unk_1006DA5B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + result) = v7;
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

unint64_t sub_10003FC5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_100007224(&qword_100834828, &qword_1006C0090);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32[0] = v4;
  *(v32 + 9) = *(a1 + 121);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_10000BBC4(&v27, v26, &qword_100834830, &qword_1006EA0E0);
  result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 144);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = (v3[7] + 96 * result);
    v14 = v29;
    *v13 = v28;
    v13[1] = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32[0];
    *(v13 + 73) = *(v32 + 9);
    v13[3] = v16;
    v13[4] = v17;
    v13[2] = v15;
    v18 = v3[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      break;
    }

    v3[2] = v20;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v21 = v11 + 7;
    v22 = v11[5];
    v31 = v11[4];
    v32[0] = v22;
    *(v32 + 9) = *(v11 + 89);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_10000BBC4(&v27, v26, &qword_100834830, &qword_1006EA0E0);
    result = sub_10003B8DC(v7, v8, &String.hash(into:), sub_10003BBE4);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_10003FE88(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834840, &qword_1006C0098);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_10003B580(v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10003FFA0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100007224(&qword_100834820, &qword_1006C0088);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_10003B8DC(v5, v6, &String.hash(into:), sub_10003BBE4);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
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

unint64_t sub_1000400C4(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008347F8, &qword_1006C0068);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&qword_100834800, &qword_1006C0070);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_1008347F8, &qword_1006C0068);
      result = sub_10003B3AC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ECIESOption();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1000402AC(uint64_t a1)
{
  v2 = sub_100007224(&qword_1008341D0, &unk_1006BF8D0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_100007224(&unk_10084A1F0, &unk_1006E9F80);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000BBC4(v10, v6, &qword_1008341D0, &unk_1006BF8D0);
      result = sub_10003A9CC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for DIPError.PropertyKey();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      result = sub_10001F358(&v6[v9], v8[7] + 40 * v14);
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

uint64_t sub_1000404B8(uint64_t a1)
{
  v2 = sub_100007224(&qword_100834450, &unk_1006BFED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10004057C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000405C4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_100040664(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a4;
  v6[5] = a6;
  v6[2] = a1;
  v6[3] = a2;
  v10 = type metadata accessor for DIPError.Code();
  v6[6] = v10;
  v11 = *(v10 - 8);
  v6[7] = v11;
  v12 = *(v11 + 64) + 15;
  v6[8] = swift_task_alloc();
  v13 = *(a5 + 8);
  v17 = (v13 + *v13);
  v14 = v13[1];
  v15 = swift_task_alloc();
  v6[9] = v15;
  *v15 = v6;
  v15[1] = sub_1000407F0;

  return v17(a2, a3, a5);
}

uint64_t sub_1000407F0()
{
  v2 = *v1;
  v3 = *(*v1 + 72);
  v4 = *v1;
  *(*v1 + 80) = v0;

  if (v0)
  {
    v5 = *(v2 + 64);

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {

    return _swift_task_switch(sub_100040940, 0, 0);
  }
}

uint64_t sub_100040940()
{
  v1 = v0[3];
  v2 = COSE_Sign1.payload.getter();
  if (v3 >> 60 == 15)
  {
    (*(v0[7] + 104))(v0[8], enum case for DIPError.Code.coseCannotParseResponse(_:), v0[6]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  else
  {
    v4 = v0[10];
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[2];
    v8 = v2;
    v9 = v3;
    v10 = type metadata accessor for CBORDecoder();
    v11 = *(v10 + 48);
    v12 = *(v10 + 52);
    swift_allocObject();
    CBORDecoder.init()();
    dispatch thunk of CBORDecoder.decode<A>(_:from:)();

    sub_10000BD94(v8, v9);
  }

  v13 = v0[8];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100040B28(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v4 = type metadata accessor for DIPError.Code();
  v2[4] = v4;
  v5 = *(v4 - 8);
  v2[5] = v5;
  v6 = *(v5 + 64) + 15;
  v2[6] = swift_task_alloc();
  v7 = swift_task_alloc();
  v2[7] = v7;
  *v7 = v2;
  v7[1] = sub_100040C1C;

  return sub_100041294(a1);
}

uint64_t sub_100040C1C(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v5 = *(*v2 + 24);
  v8 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v6 = sub_100041144;
  }

  else
  {
    v6 = sub_100040D48;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_100040D48()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v15 = v0[8];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (result)
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v16 = v0[8];
      v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v17 = v0[8];
    }

    else
    {
      if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        return result;
      }

      v3 = *(v0[8] + 32);
    }

    v4 = v0[9];
    v5 = v0[2];
    v6 = v0[3];

    COSESignatureValidator.validateSignature(of:with:)();
    v7 = v4;
    v8 = v0[6];
    if (!v7)
    {

      v14 = v0[1];
      goto LABEL_12;
    }

    v18 = *(v0[5] + 104);
    v18(v0[6], enum case for DIPError.Code.coseInvalidSignature(_:), v0[4]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v9 = enum case for DIPError.Code.coseInvalidResponse(_:);
  }

  else
  {
    v10 = v0[8];
    v11 = v0[5];
    v12 = v0[6];
    v13 = v0[4];

    v9 = enum case for DIPError.Code.coseInvalidResponse(_:);
    v18 = *(v11 + 104);
    v18(v12, enum case for DIPError.Code.coseInvalidResponse(_:), v13);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v18(v0[6], v9, v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v14 = v0[1];
LABEL_12:

  return v14();
}

uint64_t sub_100041144()
{
  v1 = v0[9];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.coseInvalidResponse(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100041294(uint64_t a1)
{
  v2[10] = a1;
  v2[11] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();

  return _swift_task_switch(sub_100041354, v1, 0);
}

uint64_t sub_100041354()
{
  v1 = v0[10];
  if (COSE_Sign1.x509Chain.getter())
  {
    v2 = decodeCertificateChain(fromDER:)();
    v0[15] = v2;
    v6 = v0[11];
    v7 = v2;

    v8 = OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier;
    swift_beginAccess();
    sub_100020260(v6 + v8, (v0 + 2));
    v9 = v0[5];
    v10 = v0[6];
    sub_10000BA08(v0 + 2, v9);
    v11 = OBJC_IVAR____TtC8coreidvd14TrustValidator_certUsage;
    v12 = async function pointer to dispatch thunk of OIDVerifying.verifyChain(_:forUsage:)[1];
    v13 = swift_task_alloc();
    v0[16] = v13;
    *v13 = v0;
    v13[1] = sub_1000415AC;

    return dispatch thunk of OIDVerifying.verifyChain(_:forUsage:)(v7, v6 + v11, v9, v10);
  }

  else
  {
    (*(v0[13] + 104))(v0[14], enum case for DIPError.Code.coseInvalidResponse(_:), v0[12]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v3 = v0[14];

    v4 = v0[1];

    return v4();
  }
}

uint64_t sub_1000415AC(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 128);
  v6 = *v2;
  v4[17] = v1;

  v7 = v4[15];
  v8 = v4[11];

  if (v1)
  {
    v9 = sub_100041790;
  }

  else
  {
    v4[18] = a1;
    v9 = sub_100041704;
  }

  return _swift_task_switch(v9, v8, 0);
}

uint64_t sub_100041704()
{
  v1 = v0[18];
  v2 = v0[14];
  sub_10000BB78(v0 + 2);
  v3 = SecTrustRef.certificateChain.getter();

  v4 = v0[1];

  return v4(v3);
}

uint64_t sub_100041790()
{
  v1 = v0[17];
  v3 = v0[13];
  v2 = v0[14];
  v4 = v0[12];
  sub_10000BB78(v0 + 2);
  (*(v3 + 104))(v2, enum case for DIPError.Code.internalError(_:), v4);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[14];

  v6 = v0[1];

  return v6();
}

uint64_t sub_1000418EC()
{
  v1 = OBJC_IVAR____TtC8coreidvd14TrustValidator_signatureValidator;
  v2 = type metadata accessor for COSESignatureValidator();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_10000BB78((v0 + OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier));
  v3 = OBJC_IVAR____TtC8coreidvd14TrustValidator_certUsage;
  v4 = type metadata accessor for DIPCertUsage();
  (*(*(v4 - 8) + 8))(v0 + v3, v4);
  swift_defaultActor_destroy();

  return _swift_defaultActor_deallocate(v0);
}

uint64_t type metadata accessor for TrustValidator()
{
  result = qword_100834A88;
  if (!qword_100834A88)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100041A08()
{
  result = type metadata accessor for COSESignatureValidator();
  if (v1 <= 0x3F)
  {
    v3 = *(result - 8) + 64;
    result = type metadata accessor for DIPCertUsage();
    if (v2 <= 0x3F)
    {
      v4 = *(result - 8) + 64;
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_100041AF4(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100041F04;

  return sub_100040B28(a1);
}

uint64_t sub_100041B8C(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 40) = a1;
  *(v2 + 48) = v3;
  return _swift_task_switch(sub_100041BAC, v3, 0);
}

uint64_t sub_100041BAC()
{
  v1 = v0[5];
  v2 = v0[6] + OBJC_IVAR____TtC8coreidvd14TrustValidator_oidVerifier;
  swift_beginAccess();
  v3 = *(v2 + 32);
  sub_10001F370(v2, *(v2 + 24));
  dispatch thunk of OIDVerifying.setTrustedRoots(_:)();
  swift_endAccess();
  v4 = v0[1];

  return v4();
}

uint64_t sub_100041C60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  v14 = type metadata accessor for TrustValidator();
  *v13 = v7;
  v13[1] = sub_100027B9C;

  return sub_100040664(a1, a2, v14, a3, a7, a4);
}

uint64_t sub_100041D50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = sub_100041F04;

  return sub_100040664(a1, a2, a6, a3, a7, a4);
}

uint64_t sub_100041E28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = swift_task_alloc();
  *(v7 + 16) = v13;
  v14 = type metadata accessor for KRLTrustValidator();
  *v13 = v7;
  v13[1] = sub_100041F04;

  return sub_100040664(a1, a2, v14, a3, a7, a4);
}

uint64_t sub_100041F18(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v5 = type metadata accessor for DIPError.Code();
  v2[4] = v5;
  v6 = *(v5 - 8);
  v2[5] = v6;
  v7 = *(v6 + 64) + 15;
  v2[6] = swift_task_alloc();
  v8 = swift_task_alloc();
  v2[7] = v8;
  *v8 = v2;
  v8[1] = sub_100042014;

  return sub_100042908(a1, a2);
}

uint64_t sub_100042014(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 56);
  v7 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v5 = sub_100042600;
  }

  else
  {
    v5 = sub_100042128;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100042128()
{
  v1 = v0[8];
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v7 = v0[8];
    }

    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = v0[8];
    v10 = v0[5];
    v9 = v0[6];
    v11 = v0[4];

    v12 = enum case for DIPError.Code.vicalInvalidDocument(_:);
    (*(v10 + 104))(v9, enum case for DIPError.Code.vicalInvalidDocument(_:), v11);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v0[5] + 104))(v0[6], v12, v0[4]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v13 = v0[1];

    return v13();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_12;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v14 = v0[8];
    v3 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v15 = v0[8];
  }

  else
  {
    if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v3 = *(v0[8] + 32);
  }

  v0[10] = v3;

  v4 = swift_task_alloc();
  v0[11] = v4;
  *v4 = v0;
  v4[1] = sub_10004247C;
  v6 = v0[2];
  v5 = v0[3];

  return sub_10004412C(v6, v3, v5);
}

uint64_t sub_10004247C()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_100042780;
  }

  else
  {
    v3 = sub_100042590;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100042590()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100042600()
{
  v1 = v0[9];
  (*(v0[5] + 104))(v0[6], enum case for DIPError.Code.vicalInvalidDocument(_:), v0[4]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = v0[1];

  return v2();
}

uint64_t sub_100042780()
{
  v1 = *(v0 + 96);
  (*(*(v0 + 40) + 104))(*(v0 + 48), enum case for DIPError.Code.vicalInvalidDocument(_:), *(v0 + 32));
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100042908(uint64_t a1, uint64_t a2)
{
  v2[10] = a1;
  v2[11] = a2;
  v3 = type metadata accessor for Logger();
  v2[12] = v3;
  v4 = *(v3 - 8);
  v2[13] = v4;
  v5 = *(v4 + 64) + 15;
  v2[14] = swift_task_alloc();
  v6 = sub_100007224(&qword_100834B60, &qword_1006C0310);
  v2[15] = v6;
  v7 = *(*(v6 - 8) + 64) + 15;
  v2[16] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();
  v2[21] = swift_task_alloc();
  v9 = type metadata accessor for Milestone();
  v2[22] = v9;
  v10 = *(v9 - 8);
  v2[23] = v10;
  v11 = *(v10 + 64) + 15;
  v2[24] = swift_task_alloc();
  v12 = type metadata accessor for DIPError.Code();
  v2[25] = v12;
  v13 = *(v12 - 8);
  v2[26] = v13;
  v14 = *(v13 + 64) + 15;
  v2[27] = swift_task_alloc();

  return _swift_task_switch(sub_100042B24, 0, 0);
}

uint64_t sub_100042B24()
{
  v90 = v0;
  v1 = objc_opt_self();
  v0[28] = v1;
  v2 = [v1 standardUserDefaults];
  v3._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.forceOCSPRejection.getter();
  v4 = NSUserDefaults.internalBool(forKey:)(v3);

  if (v4)
  {
    v5 = v0[25];
    v75 = enum case for DIPError.Code.revokedCertificate(_:);
    (*(v0[26] + 104))(v0[27]);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    v73 = 60;
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v6 = v0[25];
    v7 = v0[20];
    v77 = v0[26];
    v80 = v0[21];
    v8 = v0[16];
    v83 = v0[15];
    swift_getErrorValue();
    v9 = v0[2];
    v10 = v0[3];
    v11 = v0[4];
    v12 = *(v10 - 8);
    v13 = *(v12 + 64) + 15;
    v14 = swift_task_alloc();
    (*(v12 + 16))(v14, v9, v10);
    swift_errorRetain();
    Error.dipErrorCode.getter();
    (*(v12 + 8))(v14, v10);
    v76 = *(v77 + 104);
    v76(v7, enum case for DIPError.Code.coseInvalidResponse(_:), v6);
    (*(v77 + 56))(v7, 0, 1, v6);
    v15 = *(v83 + 48);
    sub_100044D38(v80, v8);
    sub_100044D38(v7, v8 + v15);
    v16 = *(v77 + 48);
    v17 = v16(v8, 1, v6);
    v18 = v0[25];
    v84 = v16;
    if (v17 == 1)
    {
      v19 = v0[21];
      sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v19, &qword_10083B020, &unk_1006D8ED0);
      if (v16(v8 + v15, 1, v18) == 1)
      {
        sub_10000BE18(v0[16], &qword_10083B020, &unk_1006D8ED0);

LABEL_12:
        v76(v0[27], enum case for DIPError.Code.vicalInvalidDocument(_:), v0[25]);
        sub_1000402AC(_swiftEmptyArrayStorage);
        swift_allocError();
        v73 = 68;
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

LABEL_13:
        v34 = v0[25];
        v35 = v0[18];
        static DIPOIDVerifier.getSpecificCertificateError(_:)();
        swift_getErrorValue();
        v37 = v0[5];
        v36 = v0[6];
        v38 = v0[7];
        Error.dipErrorCode.getter();
        if (v84(v35, 1, v34) == 1)
        {
LABEL_14:
          v39 = v0[24];
          static VICALMilestone.documentSignerCertificateUntrusted.getter();
          goto LABEL_19;
        }

        v41 = v0[25];
        v40 = v0[26];
        v42 = v0[17];
        sub_100044D38(v0[18], v42);
        v43 = (*(v40 + 88))(v42, v41);
        if (v43 == v75)
        {
          v44 = v0[24];
          static VICALMilestone.documentSignerCertificateRevoked.getter();
        }

        else
        {
          if (v43 != enum case for DIPError.Code.expiredCertificate(_:))
          {
            (*(v0[26] + 8))(v0[17], v0[25]);
            goto LABEL_14;
          }

          v45 = v0[24];
          static VICALMilestone.documentSignerCertificateExpired.getter();
        }

LABEL_19:
        v46 = v0[28];
        v47 = v0[23];
        v48 = v0[24];
        v49 = v0[22];
        v50 = v0[18];
        Milestone.log()();
        (*(v47 + 8))(v48, v49);
        sub_10000BE18(v50, &qword_10083B020, &unk_1006D8ED0);
        v51 = [v46 standardUserDefaults];
        v52._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.disableTrustValidation.getter();
        LOBYTE(v49) = NSUserDefaults.internalBool(forKey:)(v52);

        if (v49)
        {
          v53 = v0[13];
          v54 = v0[14];
          v55 = v0[12];
          v56 = v0[10];
          defaultLogger()();
          DIPLogError(_:message:log:)();
          (*(v53 + 8))(v54, v55);
          v57 = COSE_Sign1.x509Chain.getter();
          if (v57 && (v89 = v57, sub_100044AB4(&v89, &v88), , (v58 = v88) != 0))
          {
          }

          else
          {

            v58 = _swiftEmptyArrayStorage;
          }

          v63 = v0[27];
          v64 = v0[24];
          v66 = v0[20];
          v65 = v0[21];
          v68 = v0[18];
          v67 = v0[19];
          v70 = v0[16];
          v69 = v0[17];
          v71 = v0[14];

          v72 = v0[1];

          return v72(v58);
        }

        else
        {
          v59 = v0[24];
          v60 = v0[20];
          v61 = v0[21];
          v79 = v0[19];
          v82 = v0[18];
          v85 = v0[17];
          v86 = v0[16];
          v87 = v0[14];
          v76(v0[27], enum case for DIPError.Code.internalError(_:), v0[25]);
          swift_errorRetain();
          sub_1000402AC(_swiftEmptyArrayStorage);
          swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          swift_willThrow();

          v62 = v0[1];

          return v62();
        }
      }
    }

    else
    {
      sub_100044D38(v0[16], v0[19]);
      if (v16(v8 + v15, 1, v18) != 1)
      {
        v28 = v0[26];
        v29 = v0[27];
        v30 = v0[25];
        v74 = v0[20];
        v31 = v0[19];
        v78 = v0[21];
        v81 = v0[16];
        (*(v28 + 32))(v29, v8 + v15, v30);
        sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
        v32 = dispatch thunk of static Equatable.== infix(_:_:)();
        v33 = *(v28 + 8);
        v33(v29, v30);
        sub_10000BE18(v74, &qword_10083B020, &unk_1006D8ED0);
        sub_10000BE18(v78, &qword_10083B020, &unk_1006D8ED0);
        v33(v31, v30);
        sub_10000BE18(v81, &qword_10083B020, &unk_1006D8ED0);

        if ((v32 & 1) == 0)
        {
          goto LABEL_13;
        }

        goto LABEL_12;
      }

      v25 = v0[25];
      v24 = v0[26];
      v26 = v0[21];
      v27 = v0[19];
      sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v26, &qword_10083B020, &unk_1006D8ED0);
      (*(v24 + 8))(v27, v25);
    }

    sub_10000BE18(v0[16], &qword_100834B60, &qword_1006C0310);

    goto LABEL_13;
  }

  v20 = swift_task_alloc();
  v0[29] = v20;
  *v20 = v0;
  v20[1] = sub_100043594;
  v21 = v0[10];
  v22 = v0[11];

  return sub_100041294(v21);
}

uint64_t sub_100043594(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 232);
  v6 = *v2;
  *(*v2 + 240) = v1;

  if (v1)
  {
    v7 = sub_1000437C8;
  }

  else
  {
    *(v4 + 248) = a1;
    v7 = sub_1000436BC;
  }

  return _swift_task_switch(v7, 0, 0);
}

uint64_t sub_1000436BC()
{
  v2 = v0[23];
  v1 = v0[24];
  v3 = v0[22];
  static VICALMilestone.documentSignerCertificateTrusted.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);
  v4 = v0[31];
  v5 = v0[27];
  v6 = v0[24];
  v8 = v0[20];
  v7 = v0[21];
  v10 = v0[18];
  v9 = v0[19];
  v12 = v0[16];
  v11 = v0[17];
  v13 = v0[14];

  v14 = v0[1];

  return v14(v4);
}

uint64_t sub_1000437C8()
{
  v80 = v0;
  v1 = v0[30];
  v3 = v0[25];
  v2 = v0[26];
  v4 = v0[20];
  v69 = v0[21];
  v72 = v0[16];
  v74 = v0[15];
  swift_getErrorValue();
  v5 = v0[2];
  v6 = v0[3];
  v7 = v0[4];
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v5, v6);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v8 + 8))(v10, v6);
  v68 = *(v2 + 104);
  v68(v4, enum case for DIPError.Code.coseInvalidResponse(_:), v3);
  (*(v2 + 56))(v4, 0, 1, v3);
  v11 = *(v74 + 48);
  sub_100044D38(v69, v72);
  sub_100044D38(v4, v72 + v11);
  v12 = *(v2 + 48);
  v13 = v12(v72, 1, v3);
  v14 = v0[25];
  if (v13 != 1)
  {
    sub_100044D38(v0[16], v0[19]);
    if (v12(v72 + v11, 1, v14) != 1)
    {
      v20 = v0[26];
      v21 = v0[27];
      v22 = v0[25];
      v64 = v0[20];
      v66 = v0[21];
      v23 = v0[19];
      v70 = v0[16];
      (*(v20 + 32))(v21, v72 + v11, v22);
      sub_100044DA8(&qword_100834B68, &type metadata accessor for DIPError.Code);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      v25 = *(v20 + 8);
      v25(v21, v22);
      sub_10000BE18(v64, &qword_10083B020, &unk_1006D8ED0);
      sub_10000BE18(v66, &qword_10083B020, &unk_1006D8ED0);
      v25(v23, v22);
      sub_10000BE18(v70, &qword_10083B020, &unk_1006D8ED0);

      if ((v24 & 1) == 0)
      {
        goto LABEL_9;
      }

      goto LABEL_8;
    }

    v17 = v0[25];
    v16 = v0[26];
    v18 = v0[21];
    v19 = v0[19];
    sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
    sub_10000BE18(v18, &qword_10083B020, &unk_1006D8ED0);
    (*(v16 + 8))(v19, v17);
LABEL_6:
    sub_10000BE18(v0[16], &qword_100834B60, &qword_1006C0310);

    goto LABEL_9;
  }

  v15 = v0[21];
  sub_10000BE18(v0[20], &qword_10083B020, &unk_1006D8ED0);
  sub_10000BE18(v15, &qword_10083B020, &unk_1006D8ED0);
  if (v12(v72 + v11, 1, v14) != 1)
  {
    goto LABEL_6;
  }

  sub_10000BE18(v0[16], &qword_10083B020, &unk_1006D8ED0);

LABEL_8:
  v68(v0[27], enum case for DIPError.Code.vicalInvalidDocument(_:), v0[25]);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

LABEL_9:
  v26 = v0[25];
  v27 = v0[18];
  static DIPOIDVerifier.getSpecificCertificateError(_:)();
  swift_getErrorValue();
  v29 = v0[5];
  v28 = v0[6];
  v30 = v0[7];
  Error.dipErrorCode.getter();
  if (v12(v27, 1, v26) == 1)
  {
LABEL_10:
    v31 = v0[24];
    static VICALMilestone.documentSignerCertificateUntrusted.getter();
    goto LABEL_15;
  }

  v33 = v0[25];
  v32 = v0[26];
  v34 = v0[17];
  sub_100044D38(v0[18], v34);
  v35 = (*(v32 + 88))(v34, v33);
  if (v35 == enum case for DIPError.Code.revokedCertificate(_:))
  {
    v36 = v0[24];
    static VICALMilestone.documentSignerCertificateRevoked.getter();
  }

  else
  {
    if (v35 != enum case for DIPError.Code.expiredCertificate(_:))
    {
      (*(v0[26] + 8))(v0[17], v0[25]);
      goto LABEL_10;
    }

    v37 = v0[24];
    static VICALMilestone.documentSignerCertificateExpired.getter();
  }

LABEL_15:
  v38 = v0[28];
  v39 = v0[23];
  v40 = v0[24];
  v41 = v0[22];
  v42 = v0[18];
  Milestone.log()();
  (*(v39 + 8))(v40, v41);
  sub_10000BE18(v42, &qword_10083B020, &unk_1006D8ED0);
  v43 = [v38 standardUserDefaults];
  v44._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.disableTrustValidation.getter();
  LOBYTE(v41) = NSUserDefaults.internalBool(forKey:)(v44);

  if (v41)
  {
    v45 = v0[13];
    v46 = v0[14];
    v47 = v0[12];
    v48 = v0[10];
    defaultLogger()();
    DIPLogError(_:message:log:)();
    (*(v45 + 8))(v46, v47);
    v49 = COSE_Sign1.x509Chain.getter();
    if (v49 && (v79 = v49, sub_100044AB4(&v79, &v78), , (v50 = v78) != 0))
    {
    }

    else
    {

      v50 = _swiftEmptyArrayStorage;
    }

    v54 = v0[27];
    v55 = v0[24];
    v57 = v0[20];
    v56 = v0[21];
    v59 = v0[18];
    v58 = v0[19];
    v61 = v0[16];
    v60 = v0[17];
    v62 = v0[14];

    v63 = v0[1];

    return v63(v50);
  }

  else
  {
    v51 = v0[24];
    v65 = v0[21];
    v67 = v0[20];
    v71 = v0[19];
    v73 = v0[18];
    v75 = v0[17];
    v76 = v0[16];
    v77 = v0[14];
    v68(v0[27], enum case for DIPError.Code.internalError(_:), v0[25]);
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100044DA8(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    v52 = v0[1];

    return v52();
  }
}

uint64_t sub_10004412C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[7] = a2;
  v3[8] = a3;
  v3[6] = a1;
  v5 = type metadata accessor for Logger();
  v3[9] = v5;
  v6 = *(v5 - 8);
  v3[10] = v6;
  v7 = *(v6 + 64) + 15;
  v3[11] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_10083B020, &unk_1006D8ED0) - 8) + 64) + 15;
  v3[12] = swift_task_alloc();
  v3[13] = swift_task_alloc();
  v9 = type metadata accessor for DIPError.Code();
  v3[14] = v9;
  v10 = *(v9 - 8);
  v3[15] = v10;
  v11 = *(v10 + 64) + 15;
  v3[16] = swift_task_alloc();
  v12 = type metadata accessor for Milestone();
  v3[17] = v12;
  v13 = *(v12 - 8);
  v3[18] = v13;
  v14 = *(v13 + 64) + 15;
  v3[19] = swift_task_alloc();

  return _swift_task_switch(sub_1000442F0, a3, 0);
}

uint64_t sub_1000442F0()
{
  v1 = v0[7];
  v2 = v0[6];
  v3 = v0[8] + OBJC_IVAR____TtC8coreidvd14TrustValidator_signatureValidator;
  COSESignatureValidator.validateSignature(of:with:)();

  return _swift_task_switch(sub_1000444B4, 0, 0);
}

uint64_t sub_1000444B4()
{
  v2 = v0[18];
  v1 = v0[19];
  v3 = v0[17];
  static VICALMilestone.documentSignatureValid.getter();
  Milestone.log()();
  (*(v2 + 8))(v1, v3);
  v4 = v0[19];
  v5 = v0[16];
  v7 = v0[12];
  v6 = v0[13];
  v8 = v0[11];

  v9 = v0[1];

  return v9();
}

uint64_t sub_100044578()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 112);
  v3 = *(v0 + 120);
  v4 = *(v0 + 104);
  swift_getErrorValue();
  v5 = *(v0 + 16);
  v6 = *(v0 + 24);
  v7 = *(v0 + 32);
  v8 = *(v6 - 8);
  v9 = *(v8 + 64) + 15;
  v10 = swift_task_alloc();
  (*(v8 + 16))(v10, v5, v6);
  swift_errorRetain();
  Error.dipErrorCode.getter();
  (*(v8 + 8))(v10, v6);
  if ((*(v3 + 48))(v4, 1, v2) == 1)
  {
    goto LABEL_2;
  }

  v12 = *(v0 + 112);
  v13 = *(v0 + 120);
  v14 = *(v0 + 96);
  sub_100044D38(*(v0 + 104), v14);
  v15 = (*(v13 + 88))(v14, v12);
  if (v15 == enum case for DIPError.Code.coseInvalidPublicKey(_:))
  {
    v16 = *(v0 + 184);
    v17 = *(v0 + 192);
    v18 = *(v0 + 168);
    v19 = *(v0 + 176);
    (*(v0 + 160))(*(v0 + 128), enum case for DIPError.Code.vicalInvalidPublicKey(_:), *(v0 + 112));
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
  }

  else
  {
    if (v15 != enum case for DIPError.Code.coseInvalidResponse(_:))
    {
      (*(*(v0 + 120) + 8))(*(v0 + 96), *(v0 + 112));
LABEL_2:
      v11 = *(v0 + 192);
      goto LABEL_8;
    }

    v20 = *(v0 + 184);
    v21 = *(v0 + 192);
    v22 = *(v0 + 168);
    v23 = *(v0 + 176);
    (*(v0 + 160))(*(v0 + 128), enum case for DIPError.Code.vicalInvalidDocument(_:), *(v0 + 112));
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
  }

  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();

LABEL_8:
  sub_10000BE18(*(v0 + 104), &qword_10083B020, &unk_1006D8ED0);

  v24 = [objc_opt_self() standardUserDefaults];
  v25._countAndFlagsBits = static DaemonInternalDefaultsKeys.VICAL.disableSignatureValidation.getter();
  v26 = NSUserDefaults.internalBool(forKey:)(v25);

  v27 = *(v0 + 192);
  if (v26)
  {
    v29 = *(v0 + 80);
    v28 = *(v0 + 88);
    v30 = *(v0 + 72);
    defaultLogger()();
    DIPLogError(_:message:log:)();

    (*(v29 + 8))(v28, v30);
    v31 = *(v0 + 152);
    v32 = *(v0 + 128);
    v34 = *(v0 + 96);
    v33 = *(v0 + 104);
    v35 = *(v0 + 88);
  }

  else
  {
    v38 = *(v0 + 176);
    v37 = *(v0 + 184);
    v39 = *(v0 + 168);
    v40 = *(v0 + 152);
    v43 = *(v0 + 104);
    v42 = *(v0 + 96);
    v44 = *(v0 + 88);
    (*(v0 + 160))(*(v0 + 128), enum case for DIPError.Code.vicalInvalidSignature(_:), *(v0 + 112));
    swift_errorRetain();
    sub_1000402AC(_swiftEmptyArrayStorage);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
  }

  v36 = *(v0 + 8);

  return v36();
}

void *sub_100044AB4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  result = decodeCertificateChain(fromDER:)();
  if (v2)
  {
    defaultLogger()();
    swift_errorRetain();
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138412290;
      swift_errorRetain();
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v16;
      *v15 = v16;
      _os_log_impl(&_mh_execute_header, v12, v13, "VICALTrustValidator failed to decode certificate chain: %@", v14, 0xCu);
      sub_10000BE18(v15, &unk_100833B50, &unk_1006D8FB0);
    }

    (*(v6 + 8))(v9, v5);

    result = _swiftEmptyArrayStorage;
  }

  *a2 = result;
  return result;
}

uint64_t sub_100044C9C(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100027B9C;

  return sub_100041F18(a1, v4);
}

uint64_t sub_100044D38(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100044DA8(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100044DF0()
{
  v0 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0 - 8);
  v3 = &v16 - v2;
  v4 = type metadata accessor for DIPError.Code();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v16 - v10;
  DIPError.Code.init(rawValue:)();
  if ((*(v5 + 48))(v3, 1, v4) == 1)
  {
    sub_1000451E8(v3);
    return -8000;
  }

  (*(v5 + 32))(v11, v3, v4);
  (*(v5 + 16))(v9, v11, v4);
  v13 = (*(v5 + 88))(v9, v4);
  if (v13 == enum case for DIPError.Code.cloudkitCancelRequestedByClient(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -8007;
  }

  else if (v13 == enum case for DIPError.Code.untrustedCertificate(_:) || v13 == enum case for DIPError.Code.secTrustGetCertificateFailure(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -8002;
  }

  else if (v13 == enum case for DIPError.Code.docUploadNoAssetsProvided(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -8005;
  }

  else if (v13 == enum case for DIPError.Code.docUploadUnrecognizedRecipient(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -8004;
  }

  else if (v13 == enum case for DIPError.Code.docUploadUnrecognizedAssetType(_:))
  {
    (*(v5 + 8))(v11, v4);
    return -8006;
  }

  else
  {
    if (v13 != enum case for DIPError.Code.docUploadUnrecognizedEncryptionAlgorithm(_:))
    {
      v15 = *(v5 + 8);
      v15(v11, v4);
      v15(v9, v4);
      return -8000;
    }

    (*(v5 + 8))(v11, v4);
    return -8008;
  }
}

uint64_t sub_1000451E8(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083B020, &unk_1006D8ED0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Int sub_100045250()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

Swift::Int sub_1000452BC()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t sub_100045320@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574707972636E65 && a2 == 0xED00006174614464)
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

uint64_t sub_1000453C8(uint64_t a1)
{
  v2 = sub_100049AE4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100045404(uint64_t a1)
{
  v2 = sub_100049AE4();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100045440@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v21 = *(v3 - 8);
  v4 = *(v21 + 64);
  __chkstk_darwin(v3);
  v22 = &v19 - v5;
  v6 = sub_100007224(&qword_100834E60, &qword_1006C0438);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v19 - v9;
  v11 = type metadata accessor for DocUploadHandler.DocUploadResult();
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100049AE4();
  v16 = v23;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v17 = v21;
    sub_100049B38(&qword_100834E68);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v10, v6);
    (*(v17 + 32))(v14, v22, v3);
    sub_100049B88(v14, v20);
  }

  return sub_10000BB78(a1);
}

uint64_t sub_1000456CC(void *a1)
{
  v2 = sub_100007224(&qword_100834E48, &qword_1006C0430);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v9 - v5;
  v7 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_100049AE4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  sub_100007224(&qword_100833680, &qword_1006C4A20);
  sub_100049B38(&qword_100834E58);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t sub_10004583C(void *a1)
{

  specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
  if (*((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    v3 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
  }

  return specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
}

unint64_t sub_1000458BC(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a1 & 0xFFFFFFFFFFFFFF8;
  if (*a1 >> 62)
  {
LABEL_16:
    v10 = a2;
    v11 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v10;
    v4 = v11;
  }

  else
  {
    v4 = *((*a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  result = 0;
  while (v4 != result)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = result;
      v8 = a2;
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      swift_unknownObjectRelease();
      result = v7;
      a2 = v8;
      if (v9 == v8)
      {
LABEL_12:
        sub_1005920E4(result);
      }
    }

    else
    {
      if (result >= *(v3 + 16))
      {
        __break(1u);
LABEL_15:
        __break(1u);
        goto LABEL_16;
      }

      if (*(v2 + 8 * result + 32) == a2)
      {
        goto LABEL_12;
      }
    }

    if (__OFADD__(result++, 1))
    {
      goto LABEL_15;
    }
  }

  return result;
}

void *sub_1000459BC(void *result)
{
  v1 = *result;
  if (*result >> 62)
  {
    goto LABEL_13;
  }

  v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
    do
    {
      v3 = 0;
      while ((v1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v5 = (v3 + 1);
        if (__OFADD__(v3, 1))
        {
          goto LABEL_11;
        }

LABEL_7:
        v6 = *(v4 + 16);
        os_unfair_lock_lock((v6 + 20));
        *(v6 + 16) = 1;
        os_unfair_lock_unlock((v6 + 20));

        ++v3;
        if (v5 == v2)
        {
          return result;
        }
      }

      if (v3 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_12;
      }

      v4 = *(v1 + 8 * v3 + 32);

      v5 = (v3 + 1);
      if (!__OFADD__(v3, 1))
      {
        goto LABEL_7;
      }

LABEL_11:
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      result = _CocoaArrayWrapper.endIndex.getter();
      v2 = result;
    }

    while (result);
  }

  return result;
}

uint64_t sub_100045AB8(uint64_t a1, uint64_t a2)
{
  v3[26] = a2;
  v3[27] = v2;
  v3[25] = a1;
  v4 = type metadata accessor for HPKESuiteKwV1();
  v3[28] = v4;
  v5 = *(v4 - 8);
  v3[29] = v5;
  v6 = *(v5 + 64) + 15;
  v3[30] = swift_task_alloc();
  v7 = type metadata accessor for DIPOIDVerifier();
  v3[31] = v7;
  v8 = *(v7 - 8);
  v3[32] = v8;
  v9 = *(v8 + 64) + 15;
  v3[33] = swift_task_alloc();
  v10 = type metadata accessor for DIPCertUsage();
  v3[34] = v10;
  v11 = *(v10 - 8);
  v3[35] = v11;
  v12 = *(v11 + 64) + 15;
  v3[36] = swift_task_alloc();
  v13 = type metadata accessor for HPKEEncryptionParamsAlgorithmIdentifier();
  v3[37] = v13;
  v14 = *(v13 - 8);
  v3[38] = v14;
  v15 = *(v14 + 64) + 15;
  v3[39] = swift_task_alloc();
  v3[40] = swift_task_alloc();
  v16 = type metadata accessor for EncryptedMessageEntity();
  v3[41] = v16;
  v17 = *(v16 - 8);
  v3[42] = v17;
  v18 = *(v17 + 64) + 15;
  v3[43] = swift_task_alloc();
  v3[44] = swift_task_alloc();
  v19 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v3[45] = swift_task_alloc();
  v20 = type metadata accessor for DIPSignpost();
  v3[46] = v20;
  v21 = *(v20 - 8);
  v3[47] = v21;
  v22 = *(v21 + 64) + 15;
  v3[48] = swift_task_alloc();
  v23 = type metadata accessor for DIPError.Code();
  v3[49] = v23;
  v24 = *(v23 - 8);
  v3[50] = v24;
  v25 = *(v24 + 64) + 15;
  v3[51] = swift_task_alloc();
  v26 = type metadata accessor for Logger();
  v3[52] = v26;
  v27 = *(v26 - 8);
  v3[53] = v27;
  v28 = *(v27 + 64) + 15;
  v3[54] = swift_task_alloc();
  v3[55] = swift_task_alloc();
  v3[56] = swift_task_alloc();
  v3[57] = swift_task_alloc();
  v3[58] = swift_task_alloc();
  v3[59] = swift_task_alloc();
  v3[60] = swift_task_alloc();
  v3[61] = swift_task_alloc();
  v3[62] = swift_task_alloc();

  return _swift_task_switch(sub_100045EA4, 0, 0);
}

uint64_t sub_100045EA4()
{
  v192 = v0;
  v1 = v0[62];
  defaultLogger()();
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "DocUploadHandler.uploadAssets: entered.", v4, 2u);
  }

  v5 = v0[62];
  v6 = v0[52];
  v7 = v0[53];
  v8 = v0[25];

  v9 = *(v7 + 8);
  v0[63] = v9;
  v9(v5, v6);
  if (v8 >> 62)
  {
    if (v0[25] < 0)
    {
      v128 = v0[25];
    }

    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_5;
    }
  }

  else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_5:
    v10 = v0[60];
    v11 = v0[48];
    v12 = v0[45];
    static DaemonSignposts.uploadAssetsAPI.getter();
    DIPSignpost.init(_:)();
    defaultLogger()();
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "DocUploadHandler.uploadAssets: Mapping recipient string to EncryptedMessageEntity", v15, 2u);
    }

    v16 = v0[60];
    v17 = v0[52];
    v18 = v0[53];
    v19 = v0[44];
    v20 = v0[26];

    v9(v16, v17);
    v21 = [v20 recipient];
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    sub_10004891C(v22, v24, v19);
    v25 = v0[59];
    v27 = v0[43];
    v26 = v0[44];
    v28 = v0[41];
    v29 = v0[42];

    defaultLogger()();
    (*(v29 + 16))(v27, v26, v28);
    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.debug.getter();
    v32 = os_log_type_enabled(v30, v31);
    v33 = v0[59];
    v34 = v0[52];
    v35 = v0[53];
    v37 = v0[42];
    v36 = v0[43];
    v38 = v0[41];
    if (v32)
    {
      v39 = swift_slowAlloc();
      v175 = v31;
      v40 = swift_slowAlloc();
      v191[0] = v40;
      *v39 = 136315138;
      v183 = v34;
      v188 = v9;
      v41 = EncryptedMessageEntity.rawValue.getter();
      v179 = v33;
      v43 = v42;
      v44 = *(v37 + 8);
      v44(v36, v38);
      v45 = v41;
      v9 = v188;
      v46 = sub_100141FE4(v45, v43, v191);

      *(v39 + 4) = v46;
      _os_log_impl(&_mh_execute_header, v30, v175, "DocUploadHandler.uploadAssets: recipientString mapped to %s", v39, 0xCu);
      sub_10000BB78(v40);
      v47 = v44;

      v48 = v183;
      v49 = v179;
    }

    else
    {

      v47 = *(v37 + 8);
      v47(v36, v38);
      v49 = v33;
      v48 = v34;
    }

    v9(v49, v48);
    v0[64] = v47;
    v50 = v0[58];
    defaultLogger()();
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v51, v52))
    {
      v53 = swift_slowAlloc();
      *v53 = 0;
      _os_log_impl(&_mh_execute_header, v51, v52, "DocUploadHandler.uploadAssets: Mapping encryptionVersion string to HPKEEncryptionParamsAlgorithmIdentifier", v53, 2u);
    }

    v54 = v0[58];
    v55 = v0[52];
    v56 = v0[53];
    v57 = v0[26];

    v9(v54, v55);
    v58 = [v57 encryptionVersion];
    if (v58)
    {
      v59 = v58;
      v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v62 = v61;
    }

    else
    {
      v60 = 0;
      v62 = 0;
    }

    sub_100048D40(v60, v62, v0[40]);
    v63 = v0[57];
    v65 = v0[39];
    v64 = v0[40];
    v66 = v0[37];
    v67 = v0[38];

    defaultLogger()();
    (*(v67 + 16))(v65, v64, v66);
    v68 = Logger.logObject.getter();
    v69 = static os_log_type_t.debug.getter();
    v70 = os_log_type_enabled(v68, v69);
    v71 = v0[57];
    v72 = v0[52];
    v185 = v0[53];
    v74 = v0[38];
    v73 = v0[39];
    v75 = v0[37];
    if (v70)
    {
      v180 = v0[52];
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v191[0] = v77;
      *v76 = 136315138;
      v189 = v9;
      v78 = HPKEEncryptionParamsAlgorithmIdentifier.rawValue.getter();
      v176 = v71;
      v80 = v79;
      v172 = v69;
      v81 = *(v74 + 8);
      v81(v73, v75);
      v82 = v78;
      v9 = v189;
      v83 = sub_100141FE4(v82, v80, v191);

      *(v76 + 4) = v83;
      _os_log_impl(&_mh_execute_header, v68, v172, "DocUploadHandler.uploadAssets: Encryption Version maps to %s", v76, 0xCu);
      sub_10000BB78(v77);

      v84 = v176;
      v85 = v180;
    }

    else
    {

      v81 = *(v74 + 8);
      v81(v73, v75);
      v84 = v71;
      v85 = v72;
    }

    v9(v84, v85);
    v0[65] = v81;
    v86 = v0[56];
    defaultLogger()();
    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v87, v88))
    {
      v89 = swift_slowAlloc();
      *v89 = 0;
      _os_log_impl(&_mh_execute_header, v87, v88, "DocUploadHandler.uploadAssets: Transforming certificate chain.", v89, 2u);
    }

    v90 = v0[56];
    v91 = v0[52];
    v92 = v0[53];
    v94 = v0[35];
    v93 = v0[36];
    v95 = v0[34];
    v96 = v0[26];

    v9(v90, v91);
    v97 = [v96 certificateChain];
    static Array._unconditionallyBridgeFromObjectiveC(_:)();

    (*(v94 + 104))(v93, enum case for DIPCertUsage.inoEncryption(_:), v95);
    decodeCertificateChain(fromDER:)();
    v98 = v0[36];
    v99 = v0[33];

    v0[14] = type metadata accessor for DateProvider();
    v0[15] = &protocol witness table for DateProvider;
    sub_100032DBC(v0 + 11);
    DateProvider.init()();
    DIPOIDVerifier.init(dateProvider:)();
    v100 = DIPOIDVerifier.verifyChain(_:forUsage:)();
    v0[66] = v100;
    v181 = v100;
    v190 = v9;
    v101 = v0[35];
    v173 = v0[36];
    v177 = v0[55];
    v103 = v0[33];
    v102 = v0[34];
    v105 = v0[31];
    v104 = v0[32];
    v106 = v0[29];
    v107 = v0[30];
    v108 = v0[28];

    (*(v104 + 8))(v103, v105);
    (*(v101 + 8))(v173, v102);
    HPKESuiteKwV1.init(pkISm:info:)();
    v0[19] = v108;
    v0[20] = &protocol witness table for HPKESuiteKwV1;
    v109 = sub_100032DBC(v0 + 16);
    (*(v106 + 16))(v109, v107, v108);
    type metadata accessor for CloudKitUploadBuilder();
    inited = swift_initStackObject();
    v0[67] = inited;
    *(inited + 16) = sub_10003CDF8(_swiftEmptyArrayStorage);
    *(inited + 24) = sub_10003CE0C(_swiftEmptyArrayStorage);
    sub_10001F358(v0 + 8, inited + 32);
    defaultLogger()();
    v111 = Logger.logObject.getter();
    v112 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v111, v112))
    {
      v113 = swift_slowAlloc();
      *v113 = 0;
      _os_log_impl(&_mh_execute_header, v111, v112, "DocUploadHandler.uploadAssets: Creating upload assets.", v113, 2u);
    }

    v114 = v0[55];
    v115 = v0[52];
    v116 = v0[53];
    v118 = v0[25];
    v117 = v0[26];

    v190(v114, v115);
    sub_100049340(v118, inited, [v117 base64EncodingEnabled]);
    v119 = v0[26];
    v120._countAndFlagsBits = 0x6230383239373539;
    v121._countAndFlagsBits = 0xD000000000000039;
    v121._object = 0x80000001006FCFD0;
    v120._object = 0xE800000000000000;
    logMilestone(tag:description:)(v120, v121);
    v122 = [v119 container];
    v123 = swift_task_alloc();
    v0[68] = v123;
    *v123 = v0;
    v123[1] = sub_100046F4C;
    v124 = v0[44];
    v125 = v0[40];
    v126 = v0[27];

    return sub_1000477D0(inited, v122, v124, v125, v181);
  }

  v129 = v0[61];
  defaultLogger()();
  v130 = Logger.logObject.getter();
  v131 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v130, v131))
  {
    v132 = swift_slowAlloc();
    *v132 = 0;
    _os_log_impl(&_mh_execute_header, v130, v131, "DocUploadHandler.uploadAssets: assets array is empty, throwing error.", v132, 2u);
  }

  v133 = v0[61];
  v134 = v0[52];
  v135 = v0[53];
  v137 = v0[50];
  v136 = v0[51];
  v138 = v0[49];

  v9(v133, v134);
  v139._countAndFlagsBits = 0x3238616232623337;
  v140._countAndFlagsBits = 0xD000000000000031;
  v140._object = 0x80000001006FD010;
  v139._object = 0xE800000000000000;
  logMilestone(tag:description:)(v139, v140);
  (*(v137 + 104))(v136, enum case for DIPError.Code.docUploadNoAssetsProvided(_:), v138);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100049A9C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
  v141 = v0[54];
  defaultLogger()();
  swift_errorRetain();
  v142 = Logger.logObject.getter();
  v143 = static os_log_type_t.error.getter();

  v144 = os_log_type_enabled(v142, v143);
  v145 = v0[63];
  v146 = v0[53];
  v147 = v0[54];
  v148 = v0[52];
  if (v144)
  {
    v186 = v0[63];
    v149 = swift_slowAlloc();
    v150 = swift_slowAlloc();
    v191[0] = v150;
    *v149 = 136315138;
    swift_getErrorValue();
    v152 = v0[21];
    v151 = v0[22];
    v153 = v0[23];
    v154 = Error.localizedDescription.getter();
    v156 = sub_100141FE4(v154, v155, v191);

    *(v149 + 4) = v156;
    _os_log_impl(&_mh_execute_header, v142, v143, "DocUploadHandler.uploadAssets: Failed: Calling completion callback with error: %s", v149, 0xCu);
    sub_10000BB78(v150);

    v186(v147, v148);
  }

  else
  {

    v145(v147, v148);
  }

  v158 = v0[61];
  v157 = v0[62];
  v160 = v0[59];
  v159 = v0[60];
  v162 = v0[57];
  v161 = v0[58];
  v164 = v0[55];
  v163 = v0[56];
  v166 = v0[54];
  v167 = v0[51];
  v168 = v0[48];
  v169 = v0[45];
  v170 = v0[44];
  v171 = v0[43];
  v174 = v0[40];
  v178 = v0[39];
  v182 = v0[36];
  v184 = v0[33];
  v187 = v0[30];
  swift_willThrow();

  v165 = v0[1];

  return v165();
}

uint64_t sub_100046F4C(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  v7 = *(*v3 + 544);
  v8 = *v3;
  *(*v3 + 552) = v2;

  if (v2)
  {
    v9 = sub_1000472D0;
  }

  else
  {
    *(v6 + 560) = a2;
    *(v6 + 568) = a1;
    v9 = sub_100047084;
  }

  return _swift_task_switch(v9, 0, 0);
}

uint64_t sub_100047084()
{
  v1 = v0[67];
  v2 = v0[66];
  v21 = v0[65];
  v22 = v0[64];
  v23 = v0[62];
  v24 = v0[61];
  v25 = v0[60];
  v26 = v0[59];
  v27 = v0[58];
  v28 = v0[57];
  v29 = v0[56];
  v30 = v0[55];
  v31 = v0[54];
  v32 = v0[51];
  v4 = v0[47];
  v3 = v0[48];
  v20 = v0[46];
  v33 = v0[45];
  v19 = v0[44];
  v34 = v0[43];
  v17 = v0[42];
  v18 = v0[41];
  v16 = v0[40];
  v6 = v0[37];
  v5 = v0[38];
  v35 = v0[39];
  v36 = v0[36];
  v37 = v0[33];
  v8 = v0[29];
  v7 = v0[30];
  v9 = v0[28];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  swift_setDeallocating();
  v10 = v1[2];

  v11 = v1[3];

  sub_10000BB78(v1 + 4);
  (*(v8 + 8))(v7, v9);
  v21(v16, v6);
  v22(v19, v18);
  (*(v4 + 8))(v3, v20);

  v12 = v0[1];
  v13 = v0[71];
  v14 = v0[70];

  return v12(v13, v14);
}

uint64_t sub_1000472D0()
{
  v61 = v0;
  v1 = v0[67];
  v2 = v0[66];
  v54 = v0[65];
  v56 = v0[64];
  v3 = v0[47];
  v4 = v0[48];
  v59 = v0[46];
  v50 = v0[41];
  v52 = v0[44];
  v46 = v0[40];
  v48 = v0[42];
  v6 = v0[37];
  v5 = v0[38];
  v7 = v0[29];
  v8 = v0[30];
  v9 = v0[28];
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  swift_setDeallocating();
  v10 = v1[2];

  v11 = v1[3];

  sub_10000BB78(v1 + 4);
  (*(v7 + 8))(v8, v9);
  v54(v46, v6);
  v56(v52, v50);
  (*(v3 + 8))(v4, v59);
  v12 = v0[69];
  v13 = v0[54];
  defaultLogger()();
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v57 = v0[63];
    v16 = v0[53];
    v17 = v0[54];
    v18 = v0[52];
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v60 = v20;
    *v19 = 136315138;
    swift_getErrorValue();
    v22 = v0[21];
    v21 = v0[22];
    v23 = v0[23];
    v24 = Error.localizedDescription.getter();
    v26 = sub_100141FE4(v24, v25, &v60);

    *(v19 + 4) = v26;
    _os_log_impl(&_mh_execute_header, v14, v15, "DocUploadHandler.uploadAssets: Failed: Calling completion callback with error: %s", v19, 0xCu);
    sub_10000BB78(v20);

    v57(v17, v18);
  }

  else
  {
    v27 = v0[63];
    v29 = v0[53];
    v28 = v0[54];
    v30 = v0[52];

    v27(v28, v30);
  }

  v31 = v0[61];
  v32 = v0[62];
  v34 = v0[59];
  v33 = v0[60];
  v36 = v0[57];
  v35 = v0[58];
  v38 = v0[55];
  v37 = v0[56];
  v41 = v0[54];
  v42 = v0[51];
  v43 = v0[48];
  v44 = v0[45];
  v45 = v0[44];
  v47 = v0[43];
  v49 = v0[40];
  v51 = v0[39];
  v53 = v0[36];
  v55 = v0[33];
  v58 = v0[30];
  swift_willThrow();

  v39 = v0[1];

  return v39();
}

void sub_100047668()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DocUploadHandler.cancelPendingUploads: Signaling cancel.", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  v10 = *(*(v1 + 16) + 16);
  os_unfair_lock_lock((v10 + 24));
  sub_1000459BC((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
}

uint64_t sub_1000477D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[25] = a5;
  v6[26] = v5;
  v6[23] = a3;
  v6[24] = a4;
  v6[21] = a1;
  v6[22] = a2;
  v7 = type metadata accessor for DocUploadHandler.DocUploadResult();
  v6[27] = v7;
  v8 = *(*(v7 - 8) + 64) + 15;
  v6[28] = swift_task_alloc();
  v9 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v6[29] = v9;
  v10 = *(v9 - 8);
  v6[30] = v10;
  v11 = *(v10 + 64) + 15;
  v6[31] = swift_task_alloc();
  v12 = type metadata accessor for Logger();
  v6[32] = v12;
  v13 = *(v12 - 8);
  v6[33] = v13;
  v14 = *(v13 + 64) + 15;
  v6[34] = swift_task_alloc();
  v6[35] = swift_task_alloc();
  v6[36] = swift_task_alloc();
  v6[37] = swift_task_alloc();
  v6[38] = swift_task_alloc();
  v15 = *(*(type metadata accessor for DIPSignpost.Config() - 8) + 64) + 15;
  v6[39] = swift_task_alloc();
  v16 = type metadata accessor for DIPSignpost();
  v6[40] = v16;
  v17 = *(v16 - 8);
  v6[41] = v17;
  v18 = *(v17 + 64) + 15;
  v6[42] = swift_task_alloc();

  return _swift_task_switch(sub_1000479E8, 0, 0);
}

uint64_t sub_1000479E8()
{
  v36 = v0;
  v1 = v0[42];
  v2 = v0[39];
  v3 = v0[26];
  static DaemonSignposts.uploadAssetsCloudKitRequest.getter();
  DIPSignpost.init(_:)();
  v4 = type metadata accessor for DocUploadHandler.UploadRequestToken();
  v5 = swift_allocObject();
  v0[43] = v5;
  sub_100007224(&qword_100834DA0, &unk_1006C03C0);
  v6 = swift_allocObject();
  *(v6 + 20) = 0;
  *(v6 + 16) = 0;
  *(v5 + 16) = v6;
  v7 = *(v3 + 16);
  v0[44] = v7;
  v8 = *(v7 + 16);
  os_unfair_lock_lock((v8 + 24));
  sub_100049298((v8 + 16));
  os_unfair_lock_unlock((v8 + 24));
  v9 = v0[38];
  defaultLogger()();
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&_mh_execute_header, v10, v11, "DocUploadHandler.startUploadTask: Saving assets to CloudKit.", v12, 2u);
  }

  v13 = v0[38];
  v15 = v0[32];
  v14 = v0[33];
  v16 = v0[21];

  v17 = *(v14 + 8);
  v0[45] = v17;
  v17(v13, v15);
  swift_beginAccess();
  v18 = *(v16 + 16);
  v19 = *(v18 + 16);
  if (v19)
  {
    v20 = sub_1003BE178(v19, 0);
    v34 = sub_1003BC1B0(&v35, v20 + 4, v19, v18);

    v21 = sub_10001FA6C();
    if (v34 != v19)
    {
      __break(1u);
      return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, v22, v23, v24, v25, v26, v27, v28);
    }
  }

  else
  {
    v20 = _swiftEmptyArrayStorage;
  }

  v0[46] = v20;
  v29 = v0[22];
  v0[5] = v4;
  v0[6] = &off_1007FD9B8;
  v0[2] = v5;

  v30 = sub_10002F89C(v29);
  v0[47] = v30;
  v31 = swift_task_alloc();
  v0[48] = v31;
  *(v31 + 16) = v30;
  *(v31 + 24) = v20;
  *(v31 + 32) = 257;
  *(v31 + 40) = v0 + 2;
  v32 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v21 = swift_task_alloc();
  v0[49] = v21;
  *v21 = v0;
  v21[1] = sub_100047D20;
  v26 = sub_1000492B4;
  v25 = 0x80000001006FCEC0;
  v28 = &type metadata for () + 8;
  v22 = 0;
  v23 = 0;
  v24 = 0xD00000000000003FLL;
  v27 = v31;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v21, v22, v23, v24, v25, v26, v27, v28);
}

uint64_t sub_100047D20()
{
  v2 = *v1;
  v3 = *(*v1 + 392);
  v8 = *v1;
  *(*v1 + 400) = v0;

  if (v0)
  {
    v4 = sub_10004861C;
  }

  else
  {
    v5 = *(v2 + 384);
    v6 = *(v2 + 368);

    v4 = sub_100047E48;
  }

  return _swift_task_switch(v4, 0, 0);
}

void sub_100047E48()
{
  v109 = v0;
  v1 = v0[47];
  v2 = v0[37];

  sub_10000BE18((v0 + 2), &qword_100834128, &unk_1006DDA60);
  v3._countAndFlagsBits = 0x3532616566656666;
  v4._object = 0x80000001006FCF00;
  v3._object = 0xE800000000000000;
  v4._countAndFlagsBits = 0xD00000000000003BLL;
  logMilestone(tag:description:)(v3, v4);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "DocUploadHandler.startUploadTask: Creating encrypted message.", v7, 2u);
  }

  v8 = v0[45];
  v9 = v0[37];
  v11 = v0[32];
  v10 = v0[33];
  v12 = v0[31];
  v13 = v0[24];
  v98 = v0[25];
  v103 = v0[50];
  v14 = v0[23];
  v15 = v0[21];

  v8(v9, v11);
  v16 = type metadata accessor for TopekaHPKEEncryptor();
  inited = swift_initStackObject();
  v0[10] = v16;
  v0[11] = &off_1007FD940;
  v0[7] = inited;
  sub_100008B9C(0, v14, v98, v13, v0 + 7);
  if (v103)
  {
    sub_10000BB78(v0 + 7);
    v37 = v0[34];
    defaultLogger()();
    swift_errorRetain();
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();

    v40 = os_log_type_enabled(v38, v39);
    v41 = v0[45];
    v42 = v0[33];
    v43 = v0[34];
    v44 = v0[32];
    if (v40)
    {
      v104 = v0[34];
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v108 = v46;
      *v45 = 136315138;
      swift_getErrorValue();
      v99 = v41;
      v48 = v0[15];
      v47 = v0[16];
      v49 = v0[17];
      v50 = Error.localizedDescription.getter();
      v52 = sub_100141FE4(v50, v51, &v108);

      *(v45 + 4) = v52;
      _os_log_impl(&_mh_execute_header, v38, v39, "DocUploadHandler.startUploadTask: Failed Either Saving or creating Encrypted Message, calling completion callback with error: %s", v45, 0xCu);
      sub_10000BB78(v46);

      v99(v104, v44);
    }

    else
    {

      v41(v43, v44);
    }

    v53 = v0[43];
    v54 = v0[44];
    swift_willThrow();
    v55 = *(v54 + 16);
    v56 = (v55 + 24);
    os_unfair_lock_lock((v55 + 24));
    sub_1000492C8((v55 + 16));
    v57 = v0[42];
    v58 = v0[43];
    v59 = v0[40];
    v60 = v0[41];
    v62 = v0[38];
    v61 = v0[39];
    v63 = v0[37];
    v90 = v0[36];
    v92 = v0[35];
    v95 = v0[34];
    v100 = v0[31];
    v105 = v0[28];
    os_unfair_lock_unlock(v56);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v60 + 8))(v57, v59);

    v64 = v0[1];

    v64();
  }

  else
  {
    v18 = v0[36];
    v20 = v0[30];
    v19 = v0[31];
    v22 = v0[28];
    v21 = v0[29];
    sub_10000BB78(v0 + 7);
    v23._countAndFlagsBits = 0x3436323964633733;
    v24._countAndFlagsBits = 0xD00000000000003FLL;
    v24._object = 0x80000001006FCF40;
    v23._object = 0xE800000000000000;
    logMilestone(tag:description:)(v23, v24);
    (*(v20 + 16))(v22, v19, v21);
    v25 = type metadata accessor for JSONEncoder();
    v26 = *(v25 + 48);
    v27 = *(v25 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    defaultLogger()();
    v28 = Logger.logObject.getter();
    v29 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&_mh_execute_header, v28, v29, "DocUploadHandler.startUploadTask: Attemping to encode results into JSON.", v30, 2u);
    }

    v31 = v0[45];
    v32 = v0[36];
    v33 = v0[32];
    v34 = v0[33];
    v36 = v0[27];
    v35 = v0[28];

    v31(v32, v33);
    sub_100049A9C(&qword_100834DA8, type metadata accessor for DocUploadHandler.DocUploadResult);
    v89 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v91 = v65;
    v66 = v0[35];
    defaultLogger()();
    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 0;
      _os_log_impl(&_mh_execute_header, v67, v68, "DocUploadHandler.startUploadTask: Success: Calling completion callback with encoded JSON.", v69, 2u);
    }

    v70 = v0[45];
    v101 = v0[44];
    v106 = v0[43];
    v71 = v0[35];
    v73 = v0[32];
    v72 = v0[33];
    v74 = v0[30];
    v75 = v0[28];
    v93 = v0[29];
    v96 = v0[31];

    v70(v71, v73);
    v76._countAndFlagsBits = 0x6530636335323062;
    v77._countAndFlagsBits = 0xD000000000000048;
    v77._object = 0x80000001006FCF80;
    v76._object = 0xE800000000000000;
    logMilestone(tag:description:)(v76, v77);

    sub_1000492E4(v75);
    (*(v74 + 8))(v96, v93);
    v78 = *(v101 + 16);
    v79 = (v78 + 24);
    os_unfair_lock_lock((v78 + 24));
    sub_100049DD4((v78 + 16));
    v81 = v0[42];
    v80 = v0[43];
    v82 = v0[40];
    v83 = v0[41];
    v85 = v0[38];
    v84 = v0[39];
    v87 = v0[36];
    v86 = v0[37];
    v94 = v0[35];
    v97 = v0[34];
    v102 = v0[31];
    v107 = v0[28];
    os_unfair_lock_unlock(v79);
    DIPSignpost.end(workflowID:isBackground:)(0, 2);

    (*(v83 + 8))(v81, v82);

    v88 = v0[1];

    v88(v89, v91);
  }
}

uint64_t sub_10004861C()
{
  v42 = v0;
  v1 = v0[47];
  v2 = v0[48];
  v3 = v0[46];

  sub_10000BE18((v0 + 2), &qword_100834128, &unk_1006DDA60);
  v4 = v0[50];
  v5 = v0[34];
  defaultLogger()();
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = v0[33];
    v37 = v0[34];
    v39 = v0[45];
    v9 = v0[32];
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v41 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v13 = v0[15];
    v12 = v0[16];
    v14 = v0[17];
    v15 = Error.localizedDescription.getter();
    v17 = sub_100141FE4(v15, v16, &v41);

    *(v10 + 4) = v17;
    _os_log_impl(&_mh_execute_header, v6, v7, "DocUploadHandler.startUploadTask: Failed Either Saving or creating Encrypted Message, calling completion callback with error: %s", v10, 0xCu);
    sub_10000BB78(v11);

    v39(v37, v9);
  }

  else
  {
    v18 = v0[45];
    v20 = v0[33];
    v19 = v0[34];
    v21 = v0[32];

    v18(v19, v21);
  }

  v22 = v0[43];
  v23 = v0[44];
  swift_willThrow();
  v24 = *(v23 + 16);
  os_unfair_lock_lock((v24 + 24));
  sub_1000492C8((v24 + 16));
  v25 = v0[42];
  v26 = v0[43];
  v27 = v0[40];
  v28 = v0[41];
  v30 = v0[38];
  v29 = v0[39];
  v31 = v0[37];
  v34 = v0[36];
  v35 = v0[35];
  v36 = v0[34];
  v38 = v0[31];
  v40 = v0[28];
  os_unfair_lock_unlock((v24 + 24));
  DIPSignpost.end(workflowID:isBackground:)(0, 2);

  (*(v28 + 8))(v25, v27);

  v32 = v0[1];

  return v32();
}

uint64_t sub_10004891C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DIPError.Code();
  v26 = *(v6 - 8);
  v27 = v6;
  v7 = *(v26 + 64);
  __chkstk_darwin(v6);
  v28 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v25 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_100834D98, &unk_1006C03B0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v25 - v16;

  v25 = a1;
  EncryptedMessageEntity.init(rawValue:)();
  v18 = type metadata accessor for EncryptedMessageEntity();
  v19 = *(v18 - 8);
  if ((*(v19 + 48))(v17, 1, v18) != 1)
  {
    return (*(v19 + 32))(a3, v17, v18);
  }

  sub_10000BE18(v17, &qword_100834D98, &unk_1006C03B0);
  defaultLogger()();

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v29 = v23;
    *v22 = 136315138;
    *(v22 + 4) = sub_100141FE4(v25, a2, &v29);
    _os_log_impl(&_mh_execute_header, v20, v21, "DocUploadHandler.mapRecipientString: Failure mapping recipient string (%s) to an entity.", v22, 0xCu);
    sub_10000BB78(v23);
  }

  (*(v10 + 8))(v13, v9);
  (*(v26 + 104))(v28, enum case for DIPError.Code.docUploadUnrecognizedRecipient(_:), v27);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100049A9C(&qword_100834130, &type metadata accessor for DIPError);
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_100048D40@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for DIPError.Code();
  v32 = *(v6 - 8);
  v7 = *(v32 + 64);
  __chkstk_darwin(v6);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Logger();
  v31 = *(v10 - 8);
  v11 = *(v31 + 64);
  __chkstk_darwin(v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_100007224(&qword_100834D90, &qword_1006C03A8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v29 - v16;
  if (a2)
  {
    v29 = v6;
    v30 = v9;

    HPKEEncryptionParamsAlgorithmIdentifier.init(rawValue:)();
    v18 = type metadata accessor for HPKEEncryptionParamsAlgorithmIdentifier();
    v19 = *(v18 - 8);
    if ((*(v19 + 48))(v17, 1, v18) == 1)
    {
      sub_10000BE18(v17, &qword_100834D90, &qword_1006C03A8);
      defaultLogger()();

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        v33 = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_100141FE4(a1, a2, &v33);
        _os_log_impl(&_mh_execute_header, v20, v21, "DocUploadHandler.mapEncryptionVersionString: Failure mapping encryption string (%s) to an algorithm identifier.", v22, 0xCu);
        sub_10000BB78(v23);
      }

      (*(v31 + 8))(v13, v10);
      v24._countAndFlagsBits = 0x6537383763616665;
      v25._countAndFlagsBits = 0xD00000000000004BLL;
      v25._object = 0x80000001006FCE10;
      v24._object = 0xE800000000000000;
      logMilestone(tag:description:)(v24, v25);
      (*(v32 + 104))(v30, enum case for DIPError.Code.docUploadUnrecognizedEncryptionAlgorithm(_:), v29);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_100049A9C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      return swift_willThrow();
    }

    else
    {
      return (*(v19 + 32))(a3, v17, v18);
    }
  }

  else
  {
    v27 = enum case for HPKEEncryptionParamsAlgorithmIdentifier.HPKE_KW_v1(_:);
    v28 = type metadata accessor for HPKEEncryptionParamsAlgorithmIdentifier();
    return (*(*(v28 - 8) + 104))(a3, v27, v28);
  }
}

uint64_t type metadata accessor for DocUploadHandler.DocUploadResult()
{
  result = qword_100834E08;
  if (!qword_100834E08)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000492E4(uint64_t a1)
{
  v2 = type metadata accessor for DocUploadHandler.DocUploadResult();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void sub_100049340(unint64_t a1, uint64_t a2, int a3)
{
  v44 = a3;
  v43 = a2;
  v5 = type metadata accessor for DIPError.Code();
  v40 = *(v5 - 8);
  v41 = v5;
  v6 = *(v40 + 64);
  __chkstk_darwin(v5);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v38 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v36 - v14;
  defaultLogger()();

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.debug.getter();
  v18 = os_log_type_enabled(v16, v17);
  v19 = a1 >> 62;
  v42 = v9;
  if (v18)
  {
    v20 = swift_slowAlloc();
    *v20 = 134218240;
    if (v19)
    {
      v21 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v21 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v20 + 4) = v21;

    *(v20 + 12) = 1024;
    *(v20 + 14) = v44 & 1;
    _os_log_impl(&_mh_execute_header, v16, v17, "DocUploadHandler.prepareAssetsForUpload: Preparing %ld for upload with base64 encoding set to : %{BOOL}d", v20, 0x12u);

    v9 = v42;
  }

  else
  {
  }

  v22 = *(v10 + 8);
  v39 = v10 + 8;
  v37 = v22;
  v22(v15, v9);
  if (v19)
  {
    goto LABEL_26;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v36 = v8;
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v25 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v25 = *(a1 + 8 * j + 32);
      }

      v26 = v25;
      v8 = (j + 1);
      if (__OFADD__(j, 1))
      {
        break;
      }

      v27 = [v25 type];
      if (v27 > 3)
      {
        v28 = v38;
        defaultLogger()();
        v29 = v26;
        v30 = Logger.logObject.getter();
        v31 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v30, v31))
        {
          v32 = swift_slowAlloc();
          *v32 = 134217984;
          *(v32 + 4) = [v29 type];

          _os_log_impl(&_mh_execute_header, v30, v31, "DocUploadHandler.prepareAssetsForUpload: Couldn't map DIAssetType (%ld) to UploadAsset.AssetType", v32, 0xCu);
        }

        else
        {

          v30 = v29;
        }

        v33 = v36;
        v34 = v41;
        v35 = v42;

        v37(v28, v35);
        (*(v40 + 104))(v33, enum case for DIPError.Code.docUploadUnrecognizedAssetType(_:), v34);
        sub_1000402AC(_swiftEmptyArrayStorage);
        type metadata accessor for DIPError();
        sub_100049A9C(&qword_100834130, &type metadata accessor for DIPError);
        swift_allocError();
        DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
        swift_willThrow();
LABEL_22:

        return;
      }

      sub_100007284(v26, v44 & 1, v27);
      if (v3)
      {
        goto LABEL_22;
      }

      if (v8 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    ;
  }
}

uint64_t sub_10004985C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1000498E8(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100833680, &qword_1006C4A20);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_100049964()
{
  sub_1000499D0();
  if (v0 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void sub_1000499D0()
{
  if (!qword_100834E18)
  {
    type metadata accessor for ProofingData(255);
    sub_100049A9C(&qword_1008336A0, type metadata accessor for ProofingData);
    sub_100049A9C(&qword_1008336A8, type metadata accessor for ProofingData);
    v0 = type metadata accessor for HPKEEncryptedMessageWithKeyWrap();
    if (!v1)
    {
      atomic_store(v0, &qword_100834E18);
    }
  }
}

uint64_t sub_100049A9C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_100049AE4()
{
  result = qword_100834E50;
  if (!qword_100834E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E50);
  }

  return result;
}

uint64_t sub_100049B38(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_10000B870(&qword_100833680, &qword_1006C4A20);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_100049B88(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DocUploadHandler.DocUploadResult();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t getEnumTagSinglePayload for DocUploadHandler.DocUploadResult.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for DocUploadHandler.DocUploadResult.CodingKeys(_WORD *result, int a2, int a3)
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

unint64_t sub_100049CD0()
{
  result = qword_100834E70;
  if (!qword_100834E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E70);
  }

  return result;
}

unint64_t sub_100049D28()
{
  result = qword_100834E78;
  if (!qword_100834E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E78);
  }

  return result;
}

unint64_t sub_100049D80()
{
  result = qword_100834E80;
  if (!qword_100834E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E80);
  }

  return result;
}

uint64_t sub_100049DF0(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100834E98, &unk_1006C06A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10004D6E4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v20[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100049FB0()
{
  v2 = *v0;
  v3 = v0[1];

  return String.init<A>(_:)();
}

__n128 sub_10004A000(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10004A014(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_10004A05C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_10004A0BC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t sub_10004A0D8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_10004A120(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

Swift::Int sub_10004A198()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_10004A20C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_10004A250()
{
  v1 = 0x6E6F6973726576;
  v2 = 1684955506;
  if (*v0 == 2)
  {
    v2 = 0x656D697464;
  }

  if (*v0)
  {
    v1 = 0x656D697473;
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

uint64_t sub_10004A2B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_10004D290(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004A2E8(uint64_t a1)
{
  v2 = sub_10004D6E4();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004A324(uint64_t a1)
{
  v2 = sub_10004D6E4();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004A360@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10004D3F0(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_10004A3BC(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 50;
  }

  else
  {
    v2 = 49;
  }

  if (*a2)
  {
    v3 = 50;
  }

  else
  {
    v3 = 49;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_10004A428()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004A484()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10004A4C4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_10004A51C@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&off_1007F8A28, *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_10004A57C(uint64_t *a1@<X8>)
{
  v2 = 49;
  if (*v1)
  {
    v2 = 50;
  }

  *a1 = v2;
  a1[1] = 0xE100000000000000;
}

uint64_t sub_10004A598()
{
  BYTE8(v11) = 0;
  _StringGuts.grow(_:)(117);
  v1._countAndFlagsBits = 0x5547746E65696C43;
  v1._object = 0xEB00000000204449;
  String.append(_:)(v1);
  String.append(_:)(*(v0 + 120));
  v2._countAndFlagsBits = 0x6F6973726576202ELL;
  v2._object = 0xEC000000203D206ELL;
  String.append(_:)(v2);
  *&v11 = *v0;
  _print_unlocked<A, B>(_:_:)();
  v3._countAndFlagsBits = 0x3D2064697364202CLL;
  v3._object = 0xE900000000000020;
  String.append(_:)(v3);
  String.append(_:)(*(v0 + 8));
  v4._countAndFlagsBits = 0x203D2064696D202CLL;
  v4._object = 0xE800000000000000;
  String.append(_:)(v4);
  String.append(_:)(*(v0 + 24));
  v5._countAndFlagsBits = 0x444970696863202CLL;
  v5._object = 0xEB00000000203D20;
  String.append(_:)(v5);
  String.append(_:)(*(v0 + 40));
  v6._countAndFlagsBits = 0x3D2064696365202CLL;
  v6._object = 0xE900000000000020;
  String.append(_:)(v6);
  String.append(_:)(*(v0 + 56));
  v7._countAndFlagsBits = 0x726576726573202CLL;
  v7._object = 0xEF203D20656D6954;
  String.append(_:)(v7);
  String.append(_:)(*(v0 + 72));
  v8._countAndFlagsBits = 0x656369766564202CLL;
  v8._object = 0xEF203D20656D6954;
  String.append(_:)(v8);
  String.append(_:)(*(v0 + 88));
  v9._countAndFlagsBits = 0x3D20646E6172202CLL;
  v9._object = 0xE900000000000020;
  String.append(_:)(v9);
  String.append(_:)(*(v0 + 104));
  return *(&v11 + 1);
}

uint64_t sub_10004A7A0()
{
  v1 = *(v0 + 120);
  v2 = *(v0 + 128);

  return v1;
}

uint64_t sub_10004A7D4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 112);
  v11[6] = *(a1 + 96);
  v11[7] = v2;
  v12 = *(a1 + 128);
  v3 = *(a1 + 48);
  v11[2] = *(a1 + 32);
  v11[3] = v3;
  v4 = *(a1 + 80);
  v11[4] = *(a1 + 64);
  v11[5] = v4;
  v5 = *(a1 + 16);
  v11[0] = *a1;
  v11[1] = v5;
  v6 = *(a2 + 112);
  v13[6] = *(a2 + 96);
  v13[7] = v6;
  v14 = *(a2 + 128);
  v7 = *(a2 + 48);
  v13[2] = *(a2 + 32);
  v13[3] = v7;
  v8 = *(a2 + 80);
  v13[4] = *(a2 + 64);
  v13[5] = v8;
  v9 = *(a2 + 16);
  v13[0] = *a2;
  v13[1] = v9;
  return sub_10004D0CC(v11, v13) & 1;
}

uint64_t sub_10004A858@<X0>(_OWORD *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v45 = *(v4 - 8);
  v46 = v4;
  v5 = *(v45 + 64);
  __chkstk_darwin(v4);
  object = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for String.Encoding();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = v2[2];
  v67[0] = v2[1];
  v13 = v2[1];
  v14 = v2[2];
  v66 = v12;
  v15 = v2[4];
  v65 = v2[3];
  v16 = v2[3];
  v64 = v15;
  v17 = a1[2];
  v63 = a1[1];
  v18 = a1[1];
  v19 = a1[2];
  v62 = v17;
  v61 = a1[3];
  *&v60[7] = v13;
  v58 = v16;
  v59 = v14;
  v20 = v2[4];
  v56 = v18;
  v57 = v20;
  v54 = a1[3];
  v55 = v19;
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1006C0560;
  *(v21 + 32) = 49;
  *(v21 + 40) = 0xE100000000000000;
  v22 = v2[2];
  *(v21 + 48) = v2[1];
  *(v21 + 64) = v22;
  v23 = v2[4];
  *(v21 + 80) = v2[3];
  *(v21 + 96) = v23;
  v24 = a1[2];
  *(v21 + 112) = a1[1];
  *(v21 + 128) = v24;
  *(v21 + 144) = a1[3];
  *&v48[0] = v21;
  sub_10004D7A0(v67, &v50);
  sub_10004D7A0(&v66, &v50);
  sub_10004D7A0(&v65, &v50);
  sub_10004D7A0(&v64, &v50);
  sub_10004D7A0(&v63, &v50);
  sub_10004D7A0(&v62, &v50);
  sub_10004D7A0(&v61, &v50);
  sub_10004D7A0(v67, &v50);
  sub_10004D7A0(&v66, &v50);
  sub_10004D7A0(&v65, &v50);
  sub_10004D7A0(&v64, &v50);
  sub_10004D7A0(&v63, &v50);
  sub_10004D7A0(&v62, &v50);
  sub_10004D7A0(&v61, &v50);
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10004D7FC();
  BidirectionalCollection<>.joined(separator:)();

  static String.Encoding.utf8.getter();
  v25 = String.data(using:allowLossyConversion:)();
  v27 = v26;

  (*(v8 + 8))(v11, v7);
  if (v27 >> 60 != 15)
  {
    isa = Data._bridgeToObjectiveC()().super.isa;
    v29 = DigestSha256();

    if (v29)
    {
      v30 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v32 = v31;

      v33 = Data._Representation.subscript.getter();
      v35 = v34;
      v36 = Data.base64EncodedString(options:)(0);
      object = v36._object;
      sub_10000BD94(v25, v27);
      sub_10000B90C(v33, v35);
      sub_10000B90C(v30, v32);
      *(v48 + 1) = *v60;
      *(&v48[1] + 8) = v59;
      *(&v48[2] + 8) = v58;
      *(&v48[3] + 8) = v57;
      *(&v48[4] + 8) = v56;
      *(&v48[5] + 8) = v55;
      *(&v48[6] + 8) = v54;
      *&v51[15] = *&v60[15];
      *v51 = *v60;
      *&v51[23] = v59;
      *&v51[39] = v58;
      *&v51[55] = v57;
      *&v51[71] = v56;
      LOBYTE(v48[0]) = 0;
      *&v48[1] = *&v60[15];
      *(&v48[7] + 1) = v36._countAndFlagsBits;
      v49 = object;
      v50 = 0;
      *&v51[87] = v55;
      *&v51[103] = v54;
      countAndFlagsBits = v36._countAndFlagsBits;
      v53 = object;
      sub_10004D8B4(v48, &v47);
      result = sub_10004D8EC(&v50);
      v38 = v48[7];
      v39 = v44;
      *(v44 + 96) = v48[6];
      *(v39 + 112) = v38;
      *(v39 + 128) = v49;
      v40 = v48[3];
      *(v39 + 32) = v48[2];
      *(v39 + 48) = v40;
      v41 = v48[5];
      *(v39 + 64) = v48[4];
      *(v39 + 80) = v41;
      v42 = v48[1];
      *v39 = v48[0];
      *(v39 + 16) = v42;
      return result;
    }

    sub_10000BD94(v25, v27);
  }

  sub_10004D860(v67);
  sub_10004D860(&v66);
  sub_10004D860(&v65);
  sub_10004D860(&v64);
  sub_10004D860(&v63);
  sub_10004D860(&v62);
  sub_10004D860(&v61);
  (*(v45 + 104))(object, enum case for DIPError.Code.internalError(_:), v46);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  return swift_willThrow();
}

uint64_t sub_10004ADF8(uint64_t a1)
{
  v2[80] = v1;
  v2[79] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[81] = v3;
  v4 = *(v3 - 8);
  v2[82] = v4;
  v5 = *(v4 + 64) + 15;
  v2[83] = swift_task_alloc();
  v6 = type metadata accessor for String.Encoding();
  v2[84] = v6;
  v7 = *(v6 - 8);
  v2[85] = v7;
  v8 = *(v7 + 64) + 15;
  v2[86] = swift_task_alloc();
  v9 = type metadata accessor for Date();
  v2[87] = v9;
  v10 = *(v9 - 8);
  v2[88] = v10;
  v11 = *(v10 + 64) + 15;
  v2[89] = swift_task_alloc();
  v12 = *v1;
  v13 = v1[1];
  v17 = (v12 + *v12);
  v14 = v12[1];
  v15 = swift_task_alloc();
  v2[90] = v15;
  *v15 = v2;
  v15[1] = sub_10004AFFC;

  return v17();
}

uint64_t sub_10004AFFC(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 720);
  v5 = *v3;
  v5[91] = a1;
  v5[92] = a2;

  if (v2)
  {
    v6 = v5[89];
    v7 = v5[86];
    v8 = v5[83];

    v9 = v5[1];

    return v9();
  }

  else
  {

    return _swift_task_switch(sub_10004B160, 0, 0);
  }
}

uint64_t sub_10004B160()
{
  v1 = *(v0 + 712);
  v2 = *(v0 + 704);
  v3 = *(v0 + 696);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v5 = v4;
  v6 = v4;
  result = (*(v2 + 8))(v1, v3);
  if ((*&v6 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v5 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  *(v0 + 616) = v5;
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  v10 = v9;
  v11 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v11 + 16) = 6;
  *(v11 + 36) = 0;
  *(v11 + 32) = 0;
  v12 = SecRandomCopyBytes(kSecRandomDefault, 6uLL, (v11 + 32));
  v13 = *(v0 + 736);
  if (v12)
  {
    v14 = v12;
    v15 = *(v0 + 664);
    v16 = *(v0 + 656);
    v17 = *(v0 + 648);

    (*(v16 + 104))(v15, enum case for DIPError.Code.systemSecError(_:), v17);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v18 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v19 = *(*v18 + 72);
    v20 = (*(*v18 + 80) + 32) & ~*(*v18 + 80);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1006BF520;
    v22 = v21 + v20;
    v23 = v22 + v18[14];
    v24 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v25 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v25 - 8) + 104))(v22, v24, v25);
    *(v23 + 24) = &type metadata for Int32;
    *(v23 + 32) = &protocol witness table for Int32;
    *v23 = v14;
    sub_10003C9C0(v21);
    swift_setDeallocating();
    sub_10000BE18(v22, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
LABEL_11:
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v56 = *(v0 + 712);
    v57 = *(v0 + 688);
    v58 = *(v0 + 664);

    v51 = *(v0 + 8);
    goto LABEL_12;
  }

  v68 = v8;
  v60 = *(v0 + 728);
  v62 = *(v0 + 688);
  v64 = *(v0 + 680);
  v66 = *(v0 + 672);
  v67 = v10;
  v26 = *(v0 + 640);
  v27 = sub_10034C158(v11);
  v29 = v28;

  v30 = Data.base64EncodedString(options:)(0);
  sub_10000B90C(v27, v29);
  *(v0 + 424) = v26[1];
  *(v0 + 440) = v26[2];
  *(v0 + 456) = v26[3];
  *(v0 + 472) = v26[4];
  *&v70[7] = v26[1];
  v71 = v26[2];
  v72 = v26[3];
  v73 = v26[4];
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1006C0560;
  *(v31 + 32) = 49;
  *(v31 + 40) = 0xE100000000000000;
  *(v31 + 48) = v26[1];
  *(v31 + 64) = v26[2];
  *(v31 + 80) = v26[3];
  *(v31 + 96) = v26[4];
  *(v31 + 112) = v60;
  *(v31 + 120) = v13;
  *(v31 + 128) = v8;
  *(v31 + 136) = v67;
  *(v31 + 144) = v30;
  *(v0 + 624) = v31;
  sub_10004D7A0(v0 + 424, v0 + 488);
  sub_10004D7A0(v0 + 440, v0 + 504);
  sub_10004D7A0(v0 + 456, v0 + 520);
  sub_10004D7A0(v0 + 472, v0 + 536);
  sub_10004D7A0(v0 + 424, v0 + 552);
  sub_10004D7A0(v0 + 440, v0 + 568);
  sub_10004D7A0(v0 + 456, v0 + 584);
  sub_10004D7A0(v0 + 472, v0 + 600);

  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10004D7FC();
  BidirectionalCollection<>.joined(separator:)();

  static String.Encoding.utf8.getter();
  v32 = String.data(using:allowLossyConversion:)();
  v34 = v33;

  (*(v64 + 8))(v62, v66);
  if (v34 >> 60 == 15)
  {
LABEL_10:
    v52 = *(v0 + 736);
    v53 = *(v0 + 664);
    v54 = *(v0 + 656);
    v55 = *(v0 + 648);
    sub_10004D860(v0 + 424);
    sub_10004D860(v0 + 440);
    sub_10004D860(v0 + 456);
    sub_10004D860(v0 + 472);

    (*(v54 + 104))(v53, enum case for DIPError.Code.internalError(_:), v55);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    goto LABEL_11;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v36 = DigestSha256();

  if (!v36)
  {
    sub_10000BD94(v32, v34);
    goto LABEL_10;
  }

  v59 = *(v0 + 728);
  v61 = *(v0 + 736);
  v63 = *(v0 + 712);
  v65 = *(v0 + 688);
  v69 = *(v0 + 664);
  v37 = *(v0 + 632);
  v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v40 = v39;

  v41 = Data._Representation.subscript.getter();
  v43 = v42;
  v44 = Data.base64EncodedString(options:)(0);
  sub_10000BD94(v32, v34);
  sub_10000B90C(v41, v43);
  sub_10000B90C(v38, v40);
  *(v0 + 153) = *v70;
  *(v0 + 176) = v71;
  *(v0 + 192) = v72;
  *(v0 + 208) = v73;
  *(v0 + 32) = *&v70[15];
  *(v0 + 17) = *v70;
  *(v0 + 40) = v71;
  *(v0 + 56) = v72;
  *(v0 + 152) = 0;
  *(v0 + 168) = *&v70[15];
  *(v0 + 224) = v59;
  *(v0 + 232) = v61;
  *(v0 + 240) = v68;
  *(v0 + 248) = v67;
  *(v0 + 256) = v30;
  *(v0 + 272) = v44;
  *(v0 + 16) = 0;
  *(v0 + 72) = v73;
  *(v0 + 88) = v59;
  *(v0 + 96) = v61;
  *(v0 + 104) = v68;
  *(v0 + 112) = v67;
  *(v0 + 120) = v30;
  *(v0 + 136) = v44;
  sub_10004D8B4(v0 + 152, v0 + 288);
  sub_10004D8EC(v0 + 16);
  *v37 = *(v0 + 152);
  v45 = *(v0 + 184);
  v46 = *(v0 + 216);
  v47 = *(v0 + 168);
  *(v37 + 48) = *(v0 + 200);
  *(v37 + 64) = v46;
  *(v37 + 16) = v47;
  *(v37 + 32) = v45;
  v48 = *(v0 + 264);
  v49 = *(v0 + 248);
  v50 = *(v0 + 232);
  *(v37 + 128) = *(v0 + 280);
  *(v37 + 96) = v49;
  *(v37 + 112) = v48;
  *(v37 + 80) = v50;

  v51 = *(v0 + 8);
LABEL_12:

  return v51();
}

uint64_t sub_10004BA48(uint64_t a1)
{
  v2[80] = v1;
  v2[79] = a1;
  v3 = type metadata accessor for DIPError.Code();
  v2[81] = v3;
  v4 = *(v3 - 8);
  v2[82] = v4;
  v5 = *(v4 + 64) + 15;
  v2[83] = swift_task_alloc();
  v6 = type metadata accessor for String.Encoding();
  v2[84] = v6;
  v7 = *(v6 - 8);
  v2[85] = v7;
  v8 = *(v7 + 64) + 15;
  v2[86] = swift_task_alloc();
  v9 = *(*(sub_100007224(&unk_100849400, &unk_1006BFBB0) - 8) + 64) + 15;
  v2[87] = swift_task_alloc();
  v10 = *(*(sub_100007224(&qword_100834EA8, &qword_1006C06C8) - 8) + 64) + 15;
  v2[88] = swift_task_alloc();
  v11 = *(*(sub_100007224(&unk_10084A190, &unk_1006C06D0) - 8) + 64) + 15;
  v2[89] = swift_task_alloc();
  v12 = type metadata accessor for Calendar();
  v2[90] = v12;
  v13 = *(v12 - 8);
  v2[91] = v13;
  v14 = *(v13 + 64) + 15;
  v2[92] = swift_task_alloc();
  v15 = type metadata accessor for DateComponents();
  v2[93] = v15;
  v16 = *(v15 - 8);
  v2[94] = v16;
  v17 = *(v16 + 64) + 15;
  v2[95] = swift_task_alloc();
  v2[96] = swift_task_alloc();
  v18 = type metadata accessor for Date();
  v2[97] = v18;
  v19 = *(v18 - 8);
  v2[98] = v19;
  v20 = *(v19 + 64) + 15;
  v2[99] = swift_task_alloc();
  v2[100] = swift_task_alloc();
  v21 = *v1;
  v22 = v1[1];
  v26 = (v21 + *v21);
  v23 = v21[1];
  v24 = swift_task_alloc();
  v2[101] = v24;
  *v24 = v2;
  v24[1] = sub_10004BDC8;

  return v26();
}

uint64_t sub_10004BDC8(uint64_t a1, uint64_t a2)
{
  v4 = *(*v3 + 808);
  v5 = *v3;
  v5[102] = a1;
  v5[103] = a2;

  if (v2)
  {
    v6 = v5[100];
    v7 = v5[99];
    v8 = v5[96];
    v9 = v5[95];
    v10 = v5[92];
    v11 = v5[89];
    v12 = v5[88];
    v13 = v5[87];
    v14 = v5[86];
    v15 = v5[83];

    v16 = v5[1];

    return v16();
  }

  else
  {

    return _swift_task_switch(sub_10004BFAC, 0, 0);
  }
}

uint64_t sub_10004BFAC()
{
  v1 = *(v0 + 800);
  v2 = *(v0 + 736);
  v3 = *(v0 + 728);
  v130 = *(v0 + 768);
  v136 = *(v0 + 720);
  v142 = *(v0 + 712);
  v147 = *(v0 + 704);
  Date.init()();
  static Calendar.current.getter();
  sub_100007224(&qword_1008334A0, &qword_1006BF610);
  v4 = type metadata accessor for Calendar.Component();
  v5 = *(v4 - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1006BF740;
  v9 = v8 + v7;
  v10 = *(v5 + 104);
  v10(v9, enum case for Calendar.Component.minute(_:), v4);
  v10(v9 + v6, enum case for Calendar.Component.second(_:), v4);
  sub_1003A92C4(v8);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  Calendar.dateComponents(_:from:)();

  v11 = *(v3 + 8);
  v11(v2, v136);
  (*(v3 + 56))(v142, 1, 1, v136);
  v12 = type metadata accessor for TimeZone();
  (*(*(v12 - 8) + 56))(v147, 1, 1, v12);
  result = DateComponents.minute.getter();
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = result;
  }

  if (v15 == 0x8000000000000000)
  {
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v16 = *(v0 + 768);
  result = DateComponents.second.getter();
  if (v17)
  {
    v18 = 0;
  }

  else
  {
    v18 = result;
  }

  if (v18 == 0x8000000000000000)
  {
    goto LABEL_26;
  }

  v19 = *(v0 + 800);
  v20 = *(v0 + 784);
  v21 = *(v0 + 776);
  v22 = *(v0 + 760);
  v23 = *(v0 + 736);
  v24 = *(v0 + 720);
  v25 = *(v0 + 712);
  v26 = *(v0 + 704);
  v27 = *(v0 + 696);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  static Calendar.current.getter();
  Calendar.date(byAdding:to:wrappingComponents:)();
  v11(v23, v24);
  v28 = (*(v20 + 48))(v27, 1, v21);
  v29 = *(v0 + 784);
  v30 = *(v0 + 776);
  if (v28 == 1)
  {
    v31 = *(v0 + 824);
    v137 = *(v0 + 768);
    v143 = *(v0 + 800);
    v32 = *(v0 + 752);
    v125 = *(v0 + 744);
    v131 = *(v0 + 760);
    v33 = *(v0 + 696);
    v34 = *(v0 + 664);
    v35 = *(v0 + 656);
    v36 = *(v0 + 648);

    sub_10000BE18(v33, &unk_100849400, &unk_1006BFBB0);
    (*(v35 + 104))(v34, enum case for DIPError.Code.unexpectedDeviceState(_:), v36);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v37 = *(v32 + 8);
    v37(v131, v125);
    v37(v137, v125);
    (*(v29 + 8))(v143, v30);
LABEL_21:
    v97 = *(v0 + 800);
    v98 = *(v0 + 792);
    v99 = *(v0 + 768);
    v100 = *(v0 + 760);
    v101 = *(v0 + 736);
    v102 = *(v0 + 712);
    v103 = *(v0 + 704);
    v104 = *(v0 + 696);
    v105 = *(v0 + 688);
    v106 = *(v0 + 664);

    v88 = *(v0 + 8);
    goto LABEL_22;
  }

  (*(v29 + 32))(*(v0 + 792), *(v0 + 696), *(v0 + 776));
  result = Date.timeIntervalSince1970.getter();
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_27;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_29:
    __break(1u);
    return result;
  }

  *(v0 + 616) = v38;
  v39 = dispatch thunk of CustomStringConvertible.description.getter();
  v41 = v40;
  v42 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v42 + 16) = 6;
  *(v42 + 36) = 0;
  *(v42 + 32) = 0;
  v43 = SecRandomCopyBytes(kSecRandomDefault, 6uLL, (v42 + 32));
  v44 = *(v0 + 824);
  if (v43)
  {
    v45 = v43;
    v46 = *(v0 + 784);
    v120 = *(v0 + 776);
    v122 = *(v0 + 792);
    v138 = *(v0 + 768);
    v144 = *(v0 + 800);
    v47 = *(v0 + 752);
    v126 = *(v0 + 744);
    v132 = *(v0 + 760);
    v48 = *(v0 + 664);
    v49 = *(v0 + 656);
    v50 = *(v0 + 648);

    (*(v49 + 104))(v48, enum case for DIPError.Code.systemSecError(_:), v50);
    sub_100007224(&qword_1008483E0, &unk_1006BFBD0);
    v51 = (sub_100007224(&qword_1008341D0, &unk_1006BF8D0) - 8);
    v52 = *(*v51 + 72);
    v53 = (*(*v51 + 80) + 32) & ~*(*v51 + 80);
    v54 = swift_allocObject();
    *(v54 + 16) = xmmword_1006BF520;
    v55 = v54 + v53;
    v56 = v55 + v51[14];
    v57 = enum case for DIPError.PropertyKey.underlyingErrno(_:);
    v58 = type metadata accessor for DIPError.PropertyKey();
    (*(*(v58 - 8) + 104))(v55, v57, v58);
    *(v56 + 24) = &type metadata for Int32;
    *(v56 + 32) = &protocol witness table for Int32;
    *v56 = v45;
    sub_10003C9C0(v54);
    swift_setDeallocating();
    sub_10000BE18(v55, &qword_1008341D0, &unk_1006BF8D0);
    swift_deallocClassInstance();
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v59 = *(v46 + 8);
    v59(v122, v120);
    v60 = *(v47 + 8);
    v60(v132, v126);
    v60(v138, v126);
    v59(v144, v120);
    goto LABEL_21;
  }

  v123 = *(v0 + 816);
  v127 = *(v0 + 688);
  v133 = *(v0 + 680);
  v139 = *(v0 + 672);
  v145 = v39;
  v61 = *(v0 + 640);
  v148 = v41;
  v62 = sub_10034C158(v42);
  v64 = v63;

  v65 = Data.base64EncodedString(options:)(0);
  sub_10000B90C(v62, v64);
  *(v0 + 424) = v61[1];
  *(v0 + 440) = v61[2];
  *(v0 + 456) = v61[3];
  *(v0 + 472) = v61[4];
  *&v149[7] = v61[1];
  v150 = v61[2];
  v151 = v61[3];
  v152 = v61[4];
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v66 = swift_allocObject();
  *(v66 + 16) = xmmword_1006C0560;
  *(v66 + 32) = 49;
  *(v66 + 40) = 0xE100000000000000;
  *(v66 + 48) = v61[1];
  *(v66 + 64) = v61[2];
  *(v66 + 80) = v61[3];
  *(v66 + 96) = v61[4];
  *(v66 + 112) = v123;
  *(v66 + 120) = v44;
  *(v66 + 128) = v145;
  *(v66 + 136) = v41;
  *(v66 + 144) = v65;
  *(v0 + 624) = v66;
  sub_10004D7A0(v0 + 424, v0 + 488);
  sub_10004D7A0(v0 + 440, v0 + 504);
  sub_10004D7A0(v0 + 456, v0 + 520);
  sub_10004D7A0(v0 + 472, v0 + 536);
  sub_10004D7A0(v0 + 424, v0 + 552);
  sub_10004D7A0(v0 + 440, v0 + 568);
  sub_10004D7A0(v0 + 456, v0 + 584);
  sub_10004D7A0(v0 + 472, v0 + 600);

  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10004D7FC();
  BidirectionalCollection<>.joined(separator:)();

  static String.Encoding.utf8.getter();
  v67 = String.data(using:allowLossyConversion:)();
  v69 = v68;

  (*(v133 + 8))(v127, v139);
  if (v69 >> 60 == 15)
  {
LABEL_20:
    v89 = *(v0 + 824);
    v146 = *(v0 + 800);
    v117 = *(v0 + 792);
    v90 = *(v0 + 784);
    v116 = *(v0 + 776);
    v135 = *(v0 + 760);
    v141 = *(v0 + 768);
    v91 = *(v0 + 752);
    v129 = *(v0 + 744);
    v92 = *(v0 + 664);
    v93 = *(v0 + 656);
    v94 = *(v0 + 648);
    sub_10004D860(v0 + 424);
    sub_10004D860(v0 + 440);
    sub_10004D860(v0 + 456);
    sub_10004D860(v0 + 472);

    (*(v93 + 104))(v92, enum case for DIPError.Code.internalError(_:), v94);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_100037214();
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    v95 = *(v90 + 8);
    v95(v117, v116);
    v96 = *(v91 + 8);
    v96(v135, v129);
    v96(v141, v129);
    v95(v146, v116);
    goto LABEL_21;
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v71 = DigestSha256();

  if (!v71)
  {
    sub_10000BD94(v67, v69);
    goto LABEL_20;
  }

  v107 = *(v0 + 816);
  v108 = *(v0 + 824);
  v112 = *(v0 + 792);
  v109 = *(v0 + 784);
  v110 = *(v0 + 776);
  v114 = *(v0 + 768);
  v115 = *(v0 + 800);
  v140 = *(v0 + 760);
  v111 = *(v0 + 752);
  v113 = *(v0 + 744);
  v118 = *(v0 + 736);
  v119 = *(v0 + 712);
  v121 = *(v0 + 704);
  v124 = *(v0 + 696);
  v128 = *(v0 + 688);
  v134 = *(v0 + 664);
  v72 = *(v0 + 632);
  v73 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v75 = v74;

  v76 = Data._Representation.subscript.getter();
  v78 = v77;
  v79 = Data.base64EncodedString(options:)(0);
  sub_10000BD94(v67, v69);
  sub_10000B90C(v76, v78);
  sub_10000B90C(v73, v75);
  *(v0 + 153) = *v149;
  *(v0 + 176) = v150;
  *(v0 + 192) = v151;
  *(v0 + 208) = v152;
  *(v0 + 32) = *&v149[15];
  *(v0 + 17) = *v149;
  *(v0 + 40) = v150;
  *(v0 + 56) = v151;
  *(v0 + 152) = 0;
  *(v0 + 168) = *&v149[15];
  *(v0 + 224) = v107;
  *(v0 + 232) = v108;
  *(v0 + 240) = v145;
  *(v0 + 248) = v148;
  *(v0 + 256) = v65;
  *(v0 + 272) = v79;
  *(v0 + 16) = 0;
  *(v0 + 72) = v152;
  *(v0 + 88) = v107;
  *(v0 + 96) = v108;
  *(v0 + 104) = v145;
  *(v0 + 112) = v148;
  *(v0 + 120) = v65;
  *(v0 + 136) = v79;
  sub_10004D8B4(v0 + 152, v0 + 288);
  sub_10004D8EC(v0 + 16);
  v80 = *(v109 + 8);
  v80(v112, v110);
  v81 = *(v111 + 8);
  v81(v140, v113);
  v81(v114, v113);
  v80(v115, v110);
  *v72 = *(v0 + 152);
  v82 = *(v0 + 168);
  v83 = *(v0 + 184);
  v84 = *(v0 + 216);
  *(v72 + 48) = *(v0 + 200);
  *(v72 + 64) = v84;
  *(v72 + 16) = v82;
  *(v72 + 32) = v83;
  v85 = *(v0 + 264);
  v86 = *(v0 + 232);
  v87 = *(v0 + 248);
  *(v72 + 128) = *(v0 + 280);
  *(v72 + 96) = v87;
  *(v72 + 112) = v85;
  *(v72 + 80) = v86;

  v88 = *(v0 + 8);
LABEL_22:

  return v88();
}

uint64_t sub_10004CF8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  sub_10004DF20(a1, v27);
  if (!v28)
  {
    result = sub_10000BE18(v27, &qword_100834EB0, &qword_1006E78F0);
    goto LABEL_8;
  }

  sub_100007224(&qword_100834EB8, &qword_1006C06F0);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
LABEL_8:
    v4 = 0;
    v11 = 0;
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = 0;
    v10 = 0;
    v9 = 0;
    goto LABEL_9;
  }

  v13 = v22;
  v14 = v23;
  v15 = v24;
  v16 = v25;
  v17 = v26;
  v12[0] = v18;
  v12[1] = v19;
  v12[2] = v20;
  v12[3] = v21;
  if (v18)
  {
    v4 = 50;
  }

  else
  {
    v4 = 49;
  }

  v5 = *(&v13 + 1);
  v7 = *(&v14 + 1);
  v6 = v14;
  v10 = *(&v15 + 1);
  v8 = v15;
  v9 = v16;

  result = sub_10004D8EC(v12);
  v11 = 0xE100000000000000;
LABEL_9:
  *a2 = v4;
  a2[1] = v11;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v10;
  a2[7] = v9;
  return result;
}

uint64_t sub_10004D0CC(uint64_t a1, uint64_t a2)
{
  if (*a1)
  {
    v4 = 50;
  }

  else
  {
    v4 = 49;
  }

  if (*a2)
  {
    v5 = 50;
  }

  else
  {
    v5 = 49;
  }

  if (v4 == v5)
  {
    swift_bridgeObjectRelease_n();
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
    swift_bridgeObjectRelease_n();
    if ((v6 & 1) == 0)
    {
      return 0;
    }
  }

  v7 = *(a1 + 8) == *(a2 + 8) && *(a1 + 16) == *(a2 + 16);
  if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 24) != *(a2 + 24) || *(a1 + 32) != *(a2 + 32)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 40) != *(a2 + 40) || *(a1 + 48) != *(a2 + 48)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 56) != *(a2 + 56) || *(a1 + 64) != *(a2 + 64)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 72) != *(a2 + 72) || *(a1 + 80) != *(a2 + 80)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 88) != *(a2 + 88) || *(a1 + 96) != *(a2 + 96)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (*(a1 + 104) != *(a2 + 104) || *(a1 + 112) != *(a2 + 112)) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (*(a1 + 120) == *(a2 + 120) && *(a1 + 128) == *(a2 + 128))
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t sub_10004D290(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D697473 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D697464 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1684955506 && a2 == 0xE400000000000000)
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

uint64_t sub_10004D3F0@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100007224(&qword_100834E88, &qword_1006C0698);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v25 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10004D6E4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000BB78(a1);
  }

  LOBYTE(v34[0]) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  LOBYTE(v34[0]) = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v28 = v14;
  v26 = v13;
  LOBYTE(v34[0]) = 2;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v27 = v15;
  v35 = 3;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v17;
  (*(v6 + 8))(v9, v5);
  v19 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v21 = v26;
  v20 = v27;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  *&v33 = v16;
  *(&v33 + 1) = v18;
  sub_10004D738(&v30, v34);
  sub_10000BB78(a1);
  v34[0] = v11;
  v34[1] = v19;
  v34[2] = v21;
  v34[3] = v28;
  v34[4] = v25;
  v34[5] = v20;
  v34[6] = v16;
  v34[7] = v18;
  result = sub_10004D770(v34);
  v23 = v31;
  *a2 = v30;
  a2[1] = v23;
  v24 = v33;
  a2[2] = v32;
  a2[3] = v24;
  return result;
}

unint64_t sub_10004D6E4()
{
  result = qword_100834E90;
  if (!qword_100834E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834E90);
  }

  return result;
}

unint64_t sub_10004D7FC()
{
  result = qword_100848930;
  if (!qword_100848930)
  {
    sub_10000B870(&qword_100834EA0, &qword_1006C06B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100848930);
  }

  return result;
}

uint64_t sub_10004D91C@<X0>(uint64_t *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _OWORD *a5@<X8>)
{
  v6 = v5;
  v55 = a3;
  v70 = a1;
  v56 = a5;
  v53 = type metadata accessor for DIPError.Code();
  v52 = *(v53 - 8);
  v9 = *(v52 + 64);
  __chkstk_darwin(v53);
  v54 = &v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Logger();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v48 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v51 = v5;
    v19 = a4;
    v20 = v18;
    v21 = swift_slowAlloc();
    v62[0] = v21;
    *v20 = 136315138;
    if (a2)
    {
      v22 = 0x73656E755469;
    }

    else
    {
      v22 = 0x64756F6C4369;
    }

    v23 = sub_100141FE4(v22, 0xE600000000000000, v62);

    *(v20 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Ignoring primaryDSID configured for %s for DIPClientGUIDFactory", v20, 0xCu);
    sub_10000BB78(v21);

    a4 = v19;
    v6 = v51;
  }

  (*(v12 + 8))(v15, v11);
  type metadata accessor for DIPAccountManager();
  static DIPAccountManager.sharedInstance.getter();
  sub_10000BA08(v62, v63);
  v24 = dispatch thunk of DIPAccountManagerProtocol.primaryAppleAccountDSID()();
  if (v6)
  {
    sub_10000BB78(v62);
    goto LABEL_8;
  }

  v27 = v24;
  v51 = v25;
  sub_10000BB78(v62);
  if (qword_100832CC0 == -1)
  {
    v28 = sub_100597000();
    if (v29)
    {
LABEL_13:
      v30 = v29;
      v31 = v70;
      v32 = a4;
      v50 = a4;
      v33 = v70[3];
      v34 = v70[4];
      v54 = v28;
      sub_10000BA08(v70, v33);
      v62[0] = dispatch thunk of DeviceInformationProviding.chipID.getter();
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v35;
      v36 = v31[4];
      sub_10000BA08(v31, v31[3]);
      v62[0] = dispatch thunk of DeviceInformationProviding.uniqueChipID.getter();
      v37 = dispatch thunk of CustomStringConvertible.description.getter();
      v39 = v38;
      v40 = v55;
      *&v57 = v55;
      *(&v57 + 1) = v32;
      v41 = v51;
      *&v58 = v27;
      *(&v58 + 1) = v51;
      v42 = v54;
      *&v59 = v54;
      *(&v59 + 1) = v30;
      v48 = v27;
      v43 = v53;
      v49 = v30;
      v44 = v52;
      *&v60 = v53;
      *(&v60 + 1) = v52;
      *&v61 = v37;
      *(&v61 + 1) = v38;
      sub_10004DEB8(&v57, v62);
      sub_10000BB78(v31);
      v62[0] = v40;
      v62[1] = v50;
      v62[2] = v48;
      v63 = v41;
      v64 = v42;
      v65 = v49;
      v66 = v43;
      v67 = v44;
      v68 = v37;
      v69 = v39;
      result = sub_10004DEF0(v62);
      v45 = v60;
      v46 = v56;
      v56[2] = v59;
      v46[3] = v45;
      v46[4] = v61;
      v47 = v58;
      *v46 = v57;
      v46[1] = v47;
      return result;
    }
  }

  else
  {
    swift_once();
    v28 = sub_100597000();
    if (v29)
    {
      goto LABEL_13;
    }
  }

  (*(v52 + 104))(v54, enum case for DIPError.Code.unexpectedDeviceState(_:), v53);
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();
LABEL_8:
  sub_10000BB78(v70);

  if (!v6)
  {
  }

  return result;
}

uint64_t sub_10004DF20(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_100834EB0, &qword_1006E78F0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_10004DF90(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v2 = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = v2;
  *(a1 + 32) = v3;
  result = *(a2 + 80);
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  *(a1 + 80) = result;
  return result;
}

uint64_t sub_10004DFC4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 136))
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

uint64_t sub_10004E00C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 120) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 136) = 1;
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

    *(result + 136) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DIPClientGUIDSeeds.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for DIPClientGUIDSeeds.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10004E1D0()
{
  result = qword_100834EC0;
  if (!qword_100834EC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834EC0);
  }

  return result;
}

unint64_t sub_10004E228()
{
  result = qword_100834EC8;
  if (!qword_100834EC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834EC8);
  }

  return result;
}

unint64_t sub_10004E280()
{
  result = qword_100834ED0;
  if (!qword_100834ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834ED0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AsyncCoreDataStore.StoreType(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for AsyncCoreDataStore.StoreType(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_10004E434()
{
  result = qword_100834ED8;
  if (!qword_100834ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100834ED8);
  }

  return result;
}

uint64_t sub_10004E488(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_100837760, &qword_1006C9900);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1930();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10004E61C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008376B8, &qword_1006C9890);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1504();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v24[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v24[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v24[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  v17 = v3[6];
  v18 = v3[7];
  v24[12] = 3;
  KeyedEncodingContainer.encode(_:forKey:)();
  v19 = v3[8];
  v20 = v3[9];
  v24[11] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v22 = v3[10];
  v23 = v3[11];
  v24[10] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10004E83C()
{
  if (*v0)
  {
    result = 0x4974736575716572;
  }

  else
  {
    result = 0x61737265766E6F63;
  }

  *v0;
  return result;
}

uint64_t sub_10004E888@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x61737265766E6F63 && a2 == 0xEE0064496E6F6974;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4974736575716572 && a2 == 0xE900000000000064)
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

uint64_t sub_10004E980(uint64_t a1)
{
  v2 = sub_1000B1930();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004E9BC(uint64_t a1)
{
  v2 = sub_1000B1930();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004E9F8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_10008218C(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_10004EA48()
{
  v1 = *v0;
  v2 = 0x61737265766E6F63;
  v3 = 0x6F43737574617473;
  v4 = 0x7574617453627573;
  if (v1 != 4)
  {
    v4 = 0x654D737574617473;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x4974736575716572;
  if (v1 != 1)
  {
    v5 = 0x65736E6F70736572;
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

uint64_t sub_10004EB38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000823FC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004EB6C(uint64_t a1)
{
  v2 = sub_1000B1504();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004EBA8(uint64_t a1)
{
  v2 = sub_1000B1504();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004EBE4@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100082624(a1, v8);
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

uint64_t sub_10004EC48(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837690, &qword_1006C9878);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B1424();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  v18[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v18[14] = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v16 = v3[4];
  v17 = v3[5];
  v18[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_10004EDE8()
{
  v1 = 0x6449656369766564;
  if (*v0 != 1)
  {
    v1 = 0x6E49746E65696C63;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7A69726F68747561;
  }
}

uint64_t sub_10004EE54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100082AC0(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004EE88(uint64_t a1)
{
  v2 = sub_1000B1424();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004EEC4(uint64_t a1)
{
  v2 = sub_1000B1424();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004EF00@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100082BE8(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    a2[1] = v5;
    result = *&v7;
    a2[2] = v7;
  }

  return result;
}

Swift::Int sub_10004EF5C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_10004EFD0()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_10004F100(void *a1)
{
  v3 = v1;
  v5 = type metadata accessor for DIPError.Code();
  v39 = *(v5 - 8);
  v40 = v5;
  v6 = *(v39 + 64);
  __chkstk_darwin(v5);
  v41 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for EncodingError();
  v37 = *(v8 - 8);
  v9 = *(v37 + 64);
  v10 = __chkstk_darwin(v8);
  v36 = &v36 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v38 = &v36 - v12;
  v13 = sub_100007224(&qword_100836F88, &unk_1006C95E0);
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = &v36 - v16;
  v18 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000ACA60();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = v3[1];
  v42 = *v3;
  v43 = v19;
  v45 = 0;
  sub_1000AB410();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
    (*(v14 + 8))(v17, v13);
    v31 = v38;
    *&v42 = v2;
    swift_errorRetain();
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    if (swift_dynamicCast())
    {

      v33 = v36;
      v32 = v37;
      (*(v37 + 32))(v36, v31, v8);
      swift_allocError();
      (*(v32 + 16))(v34, v33, v8);
      (*(v39 + 104))(v41, enum case for DIPError.Code.jsonEncodingFailed(_:), v40);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
      (*(v32 + 8))(v33, v8);
    }

    else
    {

      (*(v39 + 104))(v41, enum case for DIPError.Code.workflowRecommendationRequestEncodingFailed(_:), v40);
      swift_errorRetain();
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  else
  {
    v20 = v3[3];
    v42 = v3[2];
    v43 = v20;
    v44 = v3[4];
    v45 = 1;
    sub_1000ABBAC();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v21 = *(v3 + 10);
    v22 = *(v3 + 11);
    LOBYTE(v42) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v23 = *(v3 + 12);
    v24 = *(v3 + 13);
    LOBYTE(v42) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v25 = *(v3 + 14);
    v26 = *(v3 + 15);
    LOBYTE(v42) = 4;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v42 = *(v3 + 16);
    v45 = 5;
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    sub_10009E8DC();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v27 = *(v3 + 17);
    LOBYTE(v42) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    v28 = *(v3 + 18);
    v29 = *(v3 + 19);
    LOBYTE(v42) = 7;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    *&v42 = *(v3 + 20);
    v45 = 8;
    sub_100007224(&qword_100836E80, &qword_1006C9588);
    sub_1000AC57C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v30 = *(v3 + 168);
    LOBYTE(v42) = 9;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v42 = *(v3 + 22);
    v45 = 10;
    sub_100007224(&qword_100836F98, &qword_1006DC5A0);
    sub_1000ACAB4();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    return (*(v14 + 8))(v17, v13);
  }
}

unint64_t sub_10004F8D8(unsigned __int8 a1)
{
  if (a1 <= 4u)
  {
    v6 = 0x4874736575716572;
    v7 = 0x72656469766F7270;
    v8 = 0xD000000000000011;
    if (a1 != 3)
    {
      v8 = 1919248756;
    }

    if (a1 != 2)
    {
      v7 = v8;
    }

    if (a1)
    {
      v6 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v6;
    }

    else
    {
      return v7;
    }
  }

  else
  {
    v1 = 0x696C696261706163;
    v2 = 0x6563697665447369;
    if (a1 != 9)
    {
      v2 = 0x747865746E6F63;
    }

    if (a1 != 8)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000016;
    v4 = 0x756F4365636E6F6ELL;
    if (a1 != 6)
    {
      v4 = 0x6F436E6F69676572;
    }

    if (a1 != 5)
    {
      v3 = v4;
    }

    if (a1 <= 7u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_10004FA78@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100082DE4(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004FAA0(uint64_t a1)
{
  v2 = sub_1000ACA60();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004FADC(uint64_t a1)
{
  v2 = sub_1000ACA60();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10004FB18()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];

  return v1;
}

double sub_10004FB64@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100083184(a1, v10);
  if (!v2)
  {
    v5 = v18;
    *(a2 + 128) = v17;
    *(a2 + 144) = v5;
    *(a2 + 160) = v19;
    *(a2 + 176) = v20;
    v6 = v14;
    *(a2 + 64) = v13;
    *(a2 + 80) = v6;
    v7 = v16;
    *(a2 + 96) = v15;
    *(a2 + 112) = v7;
    v8 = v10[1];
    *a2 = v10[0];
    *(a2 + 16) = v8;
    result = *&v11;
    v9 = v12;
    *(a2 + 32) = v11;
    *(a2 + 48) = v9;
  }

  return result;
}

uint64_t sub_10004FBFC(void *a1)
{
  v2 = v1;
  v4 = sub_100007224(&qword_1008377C0, &qword_1006C9930);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v20[-v7];
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD0D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v2[2];
  v11 = v2[4];
  v38 = v2[3];
  v39 = v11;
  v12 = v2[4];
  v40 = v2[5];
  v13 = *v2;
  v14 = v2[2];
  v36 = v2[1];
  v37 = v14;
  v15 = *v2;
  v32 = v38;
  v33 = v12;
  v34 = v2[5];
  v35 = v15;
  v29 = v13;
  v30 = v36;
  v31 = v10;
  v28 = 0;
  sub_1000B1478(&v35, &v22);
  sub_1000B14B0();
  v16 = v41;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v16)
  {
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v22 = v29;
    v23 = v30;
    sub_1000ACC70(&v22);
  }

  else
  {
    v24 = v31;
    v25 = v32;
    v26 = v33;
    v27 = v34;
    v22 = v29;
    v23 = v30;
    sub_1000ACC70(&v22);
    v17 = *(v2 + 12);
    v18 = *(v2 + 13);
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v21 = *(v2 + 14);
    v20[7] = 2;
    type metadata accessor for LegacyWorkflowPackage(0);
    sub_10009F43C(&qword_1008377C8, type metadata accessor for LegacyWorkflowPackage);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v5 + 8))(v8, v4);
}

uint64_t sub_10004FE8C()
{
  v1 = 0x45656D69746E7572;
  if (*v0 != 1)
  {
    v1 = 0x776F6C666B726F77;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

uint64_t sub_10004FF00@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083D10(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10004FF28(uint64_t a1)
{
  v2 = sub_1000AD0D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10004FF64(uint64_t a1)
{
  v2 = sub_1000AD0D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10004FFA0@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100083A04(a1, v8);
  if (!v2)
  {
    v5 = v12;
    *(a2 + 64) = v11;
    *(a2 + 80) = v5;
    *(a2 + 96) = v13;
    *(a2 + 112) = v14;
    v6 = v8[1];
    *a2 = v8[0];
    *(a2 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a2 + 32) = v9;
    *(a2 + 48) = v7;
  }

  return result;
}

unint64_t sub_100050048@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100083E3C(*a1);
  *a2 = result;
  return result;
}

void sub_100050078(uint64_t *a1@<X8>)
{
  v2 = *v1;
  if (v2 > 3)
  {
    v8 = 0xD000000000000011;
    v9 = 0x80000001006F8BE0;
    if (v2 != 6)
    {
      v8 = 0xD000000000000014;
      v9 = 0x80000001006F8C00;
    }

    v10 = 0xD000000000000011;
    v11 = 0x80000001006F8BB0;
    if (v2 != 4)
    {
      v10 = 0x656D737365737361;
      v11 = 0xEF7344495547746ELL;
    }

    if (*v1 <= 5u)
    {
      v12 = v10;
    }

    else
    {
      v12 = v8;
    }

    if (*v1 <= 5u)
    {
      v9 = v11;
    }

    *a1 = v12;
    a1[1] = v9;
  }

  else
  {
    v3 = 0xED00006E69616843;
    v4 = 0xE600000000000000;
    v5 = 0x7365636E6F6ELL;
    if (v2 != 2)
    {
      v5 = 0x726F576F73726570;
      v4 = 0xED0000776F6C666BLL;
    }

    if (*v1)
    {
      v3 = 0xE800000000000000;
    }

    if (*v1 <= 1u)
    {
      v6 = 0x776F6C666B726F77;
    }

    else
    {
      v6 = v5;
    }

    if (*v1 <= 1u)
    {
      v7 = v3;
    }

    else
    {
      v7 = v4;
    }

    *a1 = v6;
    a1[1] = v7;
  }
}

uint64_t sub_100050190()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v4 = 0xD000000000000011;
    if (v1 != 6)
    {
      v4 = 0xD000000000000014;
    }

    v5 = 0xD000000000000011;
    if (v1 != 4)
    {
      v5 = 0x656D737365737361;
    }

    if (*v0 <= 5u)
    {
      return v5;
    }

    else
    {
      return v4;
    }
  }

  else
  {
    v2 = 0x7365636E6F6ELL;
    if (v1 != 2)
    {
      v2 = 0x726F576F73726570;
    }

    *v0;
    if (*v0 <= 1u)
    {
      return 0x776F6C666B726F77;
    }

    else
    {
      return v2;
    }
  }
}

unint64_t sub_1000502A0@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100083E3C(a1);
  *a2 = result;
  return result;
}

uint64_t sub_1000502D4(uint64_t a1)
{
  v2 = sub_10007FCD8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100050310(uint64_t a1)
{
  v2 = sub_10007FCD8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_10005034C(uint64_t a1)
{
  v131 = v1;
  v132 = v2;
  v3 = __chkstk_darwin(a1);
  v4 = sub_100007224(&unk_100839970, &qword_1006C19C0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v116 = &v114 - v6;
  v7 = type metadata accessor for DIPSignpost.Config();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v119 = &v114 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DIPSignpost();
  v117 = *(v10 - 8);
  v118 = v10;
  v11 = *(v117 + 64);
  __chkstk_darwin(v10);
  v120 = &v114 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DIPError.Code();
  v123 = *(v13 - 8);
  v124 = v13;
  v14 = *(v123 + 64);
  __chkstk_darwin(v13);
  v127 = &v114 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_100007224(&qword_100835538, &qword_1006C19C8);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v121 = &v114 - v18;
  v19 = sub_100007224(&qword_100835540, &qword_1006C19D0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19 - 8);
  v125 = &v114 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v122 = &v114 - v23;
  v126 = type metadata accessor for Logger();
  v129 = *(v126 - 8);
  v24 = *(v129 + 64);
  v25 = __chkstk_darwin(v126);
  v27 = &v114 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v30 = &v114 - v29;
  __chkstk_darwin(v28);
  v32 = &v114 - v31;
  v33 = sub_100007224(&qword_100835548, &qword_1006C19D8);
  v128 = *(v33 - 8);
  v34 = *(v128 + 64);
  __chkstk_darwin(v33);
  v36 = &v114 - v35;
  v38 = v3[3];
  v37 = v3[4];
  v130 = v3;
  sub_10000BA08(v3, v38);
  sub_10007FCD8();
  v39 = v132;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v132 = v39;
  if (!v39)
  {
    v41 = v127;
    v114 = v27;
    LOBYTE(v134[0]) = 0;
    if (KeyedDecodingContainer.contains(_:)())
    {
      defaultLogger()();
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      v44 = os_log_type_enabled(v42, v43);
      v40 = v131;
      if (v44)
      {
        v45 = swift_slowAlloc();
        *v45 = 0;
        _os_log_impl(&_mh_execute_header, v42, v43, "decoding legacy", v45, 2u);
      }

      (*(v129 + 8))(v32, v126);
      LOBYTE(v133) = 0;
      v46 = v132;
      KeyedDecodingContainer.nestedUnkeyedContainer(forKey:)();
      v132 = v46;
      if (!v46)
      {
        v115 = v36;
        v125 = v33;
        sub_10000BA08(v134, v134[3]);
        v47 = dispatch thunk of UnkeyedDecodingContainer.count.getter();
        if ((v48 & 1) == 0 && v47 > 2)
        {
          (*(v123 + 104))(v41, enum case for DIPError.Code.serverResponseInconsistent(_:), v124);
          sub_1000402AC(_swiftEmptyArrayStorage);
          type metadata accessor for DIPError();
          sub_10009F43C(&qword_100834130, &type metadata accessor for DIPError);
          v49 = swift_allocError();
          DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
          v132 = v49;
          swift_willThrow();
LABEL_17:
          (*(v128 + 8))(v115, v125);
          sub_10000BB78(v134);
          goto LABEL_45;
        }

        v61 = sub_100007224(&unk_100839980, &qword_1006C0A08);
        sub_10001F370(v134, v134[3]);
        sub_1000BA30C(&qword_100835568, &unk_100839980, &qword_1006C0A08);
        v62 = v122;
        v63 = v132;
        dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
        v132 = v63;
        if (v63)
        {
          goto LABEL_17;
        }

        (*(*(v61 - 8) + 56))(v62, 0, 1, v61);
        sub_1000B1FC8(v62, v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, &qword_100835540, &qword_1006C19D0);
        sub_100007224(&unk_1008399E0, &qword_1006C0A10);
        sub_10001F370(v134, v134[3]);
        sub_1000BA30C(&qword_100835570, &unk_1008399E0, &qword_1006C0A10);
        v81 = v121;
        v82 = v132;
        dispatch thunk of UnkeyedDecodingContainer.decodeIfPresent<A>(_:)();
        v132 = v82;
        if (v82)
        {
          (*(v128 + 8))(v115, v125);
          sub_10000BB78(v134);
          v83 = &qword_100835540;
          v84 = &qword_1006C19D0;
          v85 = (v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow);
LABEL_44:
          sub_10000BE18(v85, v83, v84);
          goto LABEL_45;
        }

        sub_1000B1FC8(v81, v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow, &qword_100835538, &qword_1006C19C8);
        sub_10000BB78(v134);
        v66 = v128;
        v51 = v129;
        v33 = v125;
LABEL_20:
        LOBYTE(v134[0]) = 4;
        v67 = v115;
        v68 = v132;
        v69 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v71 = v68;
        if (v68)
        {
          (*(v66 + 8))(v67, v33);
          v72 = 0;
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v132 = v68;
          goto LABEL_33;
        }

        v76 = (v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentProfile);
        *v76 = v69;
        v76[1] = v70;
        sub_100007224(&qword_100834EA0, &qword_1006C06B0);
        LOBYTE(v133) = 5;
        sub_10007FD2C();
        v77 = v33;
        v131 = 0;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v132 = 0;
        *(v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentGUIDs) = v134[0];
        LOBYTE(v134[0]) = 6;
        v78 = v132;
        v79 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
        v132 = v78;
        if (v78)
        {
          (*(v66 + 8))(v67, v33);
          v73 = 0;
          v74 = 0;
          v75 = 0;
          v72 = 1;
LABEL_32:
          v71 = v131;
LABEL_33:
          sub_10000BE18(v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, &qword_100835540, &qword_1006C19D0);
          sub_10000BE18(v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow, &qword_100835538, &qword_1006C19C8);
          if (v71)
          {
            if (v72)
            {
              goto LABEL_35;
            }
          }

          else
          {
            v91 = *(v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentProfile + 8);

            if (v72)
            {
LABEL_35:
              v89 = *(v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentGUIDs);

              if ((v73 & 1) == 0)
              {
                goto LABEL_36;
              }

              goto LABEL_41;
            }
          }

          if (!v73)
          {
LABEL_36:
            if (v74)
            {
              goto LABEL_37;
            }

            goto LABEL_42;
          }

LABEL_41:
          v92 = *(v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentBaseURL + 8);

          if (v74)
          {
LABEL_37:
            v90 = *(v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces);

            if ((v75 & 1) == 0)
            {
              goto LABEL_45;
            }

LABEL_43:
            memcpy(v134, (v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_imageQualityCriteria), 0x2181uLL);
            v83 = &qword_100839990;
            v84 = &unk_1006C19E0;
            v85 = v134;
            goto LABEL_44;
          }

LABEL_42:
          if (!v75)
          {
            goto LABEL_45;
          }

          goto LABEL_43;
        }

        v86 = (v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentBaseURL);
        *v86 = v79;
        v86[1] = v80;
        v136 = 7;
        sub_10007FDA8();
        v87 = v132;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v132 = v87;
        if (v87)
        {
          (*(v66 + 8))(v67, v33);
          v74 = 0;
          v75 = 0;
          v72 = 1;
          v73 = 1;
          goto LABEL_32;
        }

        memcpy((v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_imageQualityCriteria), v134, 0x2181uLL);
        v135 = 2;
        v88 = v132;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v132 = v88;
        if (v88)
        {
          (*(v66 + 8))(v67, v33);
          v74 = 0;
          v72 = 1;
          v73 = 1;
LABEL_31:
          v75 = 1;
          goto LABEL_32;
        }

        v115 = v67;
        *(v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces) = v133;
        static DaemonSignposts.configureDecodePersoWorkflow.getter();
        DIPSignpost.init(_:)();
        v98 = [objc_opt_self() standardUserDefaults];
        v99._countAndFlagsBits = static DaemonInternalDefaultsKeys.ignorePersoWorkflow.getter();
        v100 = NSUserDefaults.internalBool(forKey:)(v99);

        if (v100)
        {
          v101 = v114;
          defaultLogger()();
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&_mh_execute_header, v102, v103, "Skipping perso workflow due to user defaults settings", v104, 2u);
            v101 = v114;
          }

          (*(v51 + 8))(v101, v126);
          v105 = OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow;
          v106 = sub_100007224(&qword_1008399A0, &qword_1006D48E0);
          (*(*(v106 - 8) + 56))(v40 + v105, 1, 1, v106);
        }

        else
        {
          sub_100007224(&qword_1008399A0, &qword_1006D48E0);
          LOBYTE(v133) = 3;
          sub_1000BA30C(&qword_100835560, &qword_1008399A0, &qword_1006D48E0);
          v107 = v115;
          v108 = v116;
          v109 = v132;
          KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
          v132 = v109;
          if (v109)
          {
            (*(v117 + 8))(v120, v118);
            (*(v66 + 8))(v107, v77);
            v72 = 1;
            v73 = 1;
            v74 = 1;
            goto LABEL_31;
          }

          sub_1000B1FC8(v108, v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow, &unk_100839970, &qword_1006C19C0);
        }

        v110 = v77;
        v112 = v117;
        v111 = v118;
        v113 = v120;
        DIPSignpost.end(workflowID:isBackground:)(0, 2);
        (*(v112 + 8))(v113, v111);
        (*(v66 + 8))(v115, v110);
        v96 = v130;
        goto LABEL_46;
      }

LABEL_14:
      (*(v128 + 8))(v36, v33);
      goto LABEL_45;
    }

    LOBYTE(v134[0]) = 1;
    v50 = KeyedDecodingContainer.contains(_:)();
    v40 = v131;
    v51 = v129;
    if (v50)
    {
      v52 = v30;
      defaultLogger()();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&_mh_execute_header, v53, v54, "decoding LegacyINOWorkflow", v55, 2u);
      }

      (*(v51 + 8))(v52, v126);
      v56 = sub_100007224(&unk_100839980, &qword_1006C0A08);
      LOBYTE(v134[0]) = 1;
      sub_1000BA30C(&qword_100835568, &unk_100839980, &qword_1006C0A08);
      v57 = v125;
      v58 = v132;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v132 = v58;
      if (v58)
      {
        goto LABEL_14;
      }

      v115 = v36;
      (*(*(v56 - 8) + 56))(v57, 0, 1, v56);
      sub_1000B1FC8(v57, v40 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, &qword_100835540, &qword_1006C19D0);
    }

    else
    {
      v115 = v36;
      v59 = OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow;
      v60 = sub_100007224(&unk_100839980, &qword_1006C0A08);
      (*(*(v60 - 8) + 56))(v40 + v59, 1, 1, v60);
    }

    v64 = OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow;
    v65 = sub_100007224(&unk_1008399E0, &qword_1006C0A10);
    (*(*(v65 - 8) + 56))(v40 + v64, 1, 1, v65);
    v66 = v128;
    goto LABEL_20;
  }

  v40 = v131;
LABEL_45:
  v93 = v130;
  type metadata accessor for LegacyWorkflowPackage(0);
  v94 = *(*v40 + 48);
  v95 = *(*v40 + 52);
  swift_deallocPartialClassInstance();
  v96 = v93;
LABEL_46:
  sub_10000BB78(v96);
  return v40;
}

uint64_t sub_100051440(uint64_t a1)
{
  __chkstk_darwin(a1);
  sub_10000BE18(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_inoWorkflow, &qword_100835540, &qword_1006C19D0);
  sub_10000BE18(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_spWorkflow, &qword_100835538, &qword_1006C19C8);
  v2 = *(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentProfile + 8);

  v3 = *(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentGUIDs);

  v4 = *(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_assessmentBaseURL + 8);

  v5 = *(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_nonces);

  sub_10000BE18(v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_persoWorkflow, &unk_100839970, &qword_1006C19C0);
  memcpy(__dst, (v1 + OBJC_IVAR____TtC8coreidvd21LegacyWorkflowPackage_imageQualityCriteria), 0x2181uLL);
  sub_10000BE18(__dst, &qword_100839990, &unk_1006C19E0);
  return v1;
}

uint64_t sub_10005155C(uint64_t a1)
{
  sub_100051440(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return swift_deallocClassInstance();
}

void sub_1000515DC()
{
  sub_1000A5F34(319, &qword_100834F18, &unk_100839980, &qword_1006C0A08, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_1000A5F34(319, &qword_100834F20, &unk_1008399E0, &qword_1006C0A10, &type metadata accessor for Optional);
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      sub_1000A5F34(319, &unk_100834F28, &qword_1008399A0, &qword_1006D48E0, &type metadata accessor for Optional);
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

uint64_t sub_100051784@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = type metadata accessor for LegacyWorkflowPackage(0);
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  v8 = swift_allocObject();
  result = sub_10005034C(a1);
  if (!v2)
  {
    *a2 = v8;
  }

  return result;
}

uint64_t sub_1000517E0(void *a1)
{
  v3 = sub_100007224(&qword_100835578, &qword_1006C19F0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v11 - v6;
  v8 = *v1;
  v9 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10007FCD8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 1;
  sub_100007224(&unk_100839980, &qword_1006C0A08);
  sub_1000BA30C(&qword_100835580, &unk_100839980, &qword_1006C0A08);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10005197C(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_1008378A0, &qword_1006C99A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B20EC();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = *v3;
  v19[7] = 0;
  sub_100007224(&unk_10084A230, &qword_1006C0F50);
  sub_1000ACB5C(&qword_10084A240);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v19[6] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = type metadata accessor for InputValidationRequestV1(0);
    v15 = *(v14 + 24);
    v19[5] = 2;
    type metadata accessor for EncryptionParamsAlgorithmIdentifier();
    sub_10009F43C(&qword_1008378A8, &type metadata accessor for EncryptionParamsAlgorithmIdentifier);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = (v3 + *(v14 + 28));
    v17 = *v16;
    v18 = v16[1];
    v19[4] = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100051C14@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v3 = sub_100007224(&qword_1008360B0, &qword_1006C4F88);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v34 = &v29 - v5;
  v36 = sub_100007224(&qword_100837890, &qword_1006C9998);
  v33 = *(v36 - 8);
  v6 = *(v33 + 64);
  __chkstk_darwin(v36);
  v8 = &v29 - v7;
  v9 = type metadata accessor for InputValidationRequestV1(0);
  v10 = v9 - 8;
  v11 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v13 = 0;
  *(v13 + 1) = 0;
  *(v13 + 2) = 0;
  v14 = *(v10 + 32);
  v15 = type metadata accessor for EncryptionParamsAlgorithmIdentifier();
  (*(*(v15 - 8) + 56))(&v13[v14], 1, 1, v15);
  v16 = &v13[*(v10 + 36)];
  *v16 = 0;
  v16[1] = 0;
  v17 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B20EC();
  v35 = v8;
  v18 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    v28 = a1;
  }

  else
  {
    v30 = v16;
    v31 = v14;
    v37 = a1;
    v19 = v33;
    v20 = v34;
    sub_100007224(&unk_10084A230, &qword_1006C0F50);
    v41 = 0;
    sub_1000ACB5C(&qword_100835878);
    v21 = v35;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *v13 = v42;
    v40 = 1;
    *(v13 + 1) = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    *(v13 + 2) = v22;
    v39 = 2;
    sub_10009F43C(&qword_100839800, &type metadata accessor for EncryptionParamsAlgorithmIdentifier);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    sub_1000B2764(v20, &v13[v31], &qword_1008360B0, &qword_1006C4F88);
    v38 = 3;
    v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v26 = v25;
    (*(v19 + 8))(v21, v36);
    v27 = v30;
    *v30 = v24;
    v27[1] = v26;
    sub_10009ED78(v13, v32, type metadata accessor for InputValidationRequestV1);
    v28 = v37;
  }

  sub_10000BB78(v28);
  return sub_10009EDE0(v13, type metadata accessor for InputValidationRequestV1);
}

unint64_t sub_100052014()
{
  v1 = 0x7461447475706E69;
  v2 = 0x654B63696C627570;
  if (*v0 == 2)
  {
    v2 = 0xD000000000000011;
  }

  if (*v0)
  {
    v1 = 0xD000000000000012;
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

uint64_t sub_1000520A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100083E88(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000520C8(uint64_t a1)
{
  v2 = sub_1000B20EC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100052104(uint64_t a1)
{
  v2 = sub_1000B20EC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000521B8(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837878, &qword_1006C9988);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B2098();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = *v3;
  v13[15] = 0;
  sub_100007224(&unk_10084A230, &qword_1006C0F50);
  sub_1000ACB5C(&qword_10084A240);
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(type metadata accessor for InputValidationRequestV3(0) + 20);
    v13[14] = 1;
    sub_100007224(&unk_100836080, &qword_1006C4F30);
    sub_1000BA30C(&qword_100837880, &unk_100836080, &qword_1006C4F30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_1000523D0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_100007224(&qword_100836008, &unk_1006C4F00);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v24 - v6;
  v8 = sub_100007224(&qword_100837860, &qword_1006C9980);
  v26 = *(v8 - 8);
  v27 = v8;
  v9 = *(v26 + 64);
  __chkstk_darwin(v8);
  v11 = &v24 - v10;
  v12 = type metadata accessor for InputValidationRequestV3(0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v16 = 0;
  v17 = *(v14 + 28);
  v18 = sub_100007224(&unk_100836080, &qword_1006C4F30);
  (*(*(v18 - 8) + 56))(&v16[v17], 1, 1, v18);
  v19 = a1[3];
  v20 = a1[4];
  v28 = a1;
  sub_10000BA08(a1, v19);
  sub_1000B2098();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v24 = v17;
    v21 = v26;
    sub_100007224(&unk_10084A230, &qword_1006C0F50);
    v30 = 0;
    sub_1000ACB5C(&qword_100835878);
    v22 = v27;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *v16 = v31;
    v29 = 1;
    sub_1000BA30C(&qword_100837870, &unk_100836080, &qword_1006C4F30);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v21 + 8))(v11, v22);
    sub_1000B2764(v7, &v16[v24], &qword_100836008, &unk_1006C4F00);
    sub_10009ED78(v16, v25, type metadata accessor for InputValidationRequestV3);
  }

  sub_10000BB78(v28);
  return sub_10009EDE0(v16, type metadata accessor for InputValidationRequestV3);
}

uint64_t sub_100052750(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100837888, &qword_1006C9990);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AD194();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 8);
  v20[15] = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v13 = v3[2];
  v14 = v3[3];
  v20[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v15 = v3[4];
  v16 = v3[5];
  v20[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v18 = v3[6];
  v19 = v3[7];
  v20[12] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

unint64_t sub_100052914()
{
  if (*v0)
  {
    result = 0xD000000000000012;
  }

  else
  {
    result = 0x7461447475706E69;
  }

  *v0;
  return result;
}

uint64_t sub_100052958@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7461447475706E69 && a2 == 0xE900000000000061;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001006FE3F0 == a2)
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

uint64_t sub_100052A44(uint64_t a1)
{
  v2 = sub_1000B2098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100052A80(uint64_t a1)
{
  v2 = sub_1000B2098();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100052B04(uint64_t a1, uint64_t a2, unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = type metadata accessor for JSONEncoder();
  v7 = *(v6 + 48);
  v8 = *(v6 + 52);
  swift_allocObject();
  JSONEncoder.init()();
  sub_10009F43C(a3, a4);
  v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();

  return v9;
}

unint64_t sub_100052BE4()
{
  v1 = 0x646F43726F727265;
  v2 = 0xD000000000000014;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0)
  {
    v1 = 0x657A696C61636F6CLL;
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

uint64_t sub_100052C7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100084008(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100052CA4(uint64_t a1)
{
  v2 = sub_1000AD194();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100052CE0(uint64_t a1)
{
  v2 = sub_1000AD194();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100052D1C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_10008418C(a1, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a2 = v7[0];
    a2[1] = v5;
    result = *&v8;
    v6 = v9;
    a2[2] = v8;
    a2[3] = v6;
  }

  return result;
}

uint64_t sub_100052D78(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_1008377A8, &qword_1006C9928);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000B19D8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = a2;
  v15 = 0;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  sub_10009E8DC();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v3)
  {
    v16 = a3;
    v15 = 1;
    sub_100007224(&qword_100837790, &qword_1006C9920);
    sub_1000B1B0C();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_100052F38(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_100007224(&qword_1008383D8, &qword_1006CFD08);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000BA5A0();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_1000530CC(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100836C30, &qword_1006C94F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21[-v8];
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_1000AAC1C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = *v3;
  v21[7] = 0;
  sub_100007224(&qword_100836C18, &qword_1006C94E8);
  sub_1000AAD8C();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v2)
  {
    return (*(v6 + 8))(v9, v5);
  }

  v11 = *(v3 + 8);
  v21[6] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v12 = *(v3 + 9);
  v21[5] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v13 = *(v3 + 10);
  v21[4] = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v14 = v3[2];
  v15 = *(v3 + 24);
  v21[3] = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[4];
  v17 = *(v3 + 40);
  v21[2] = 5;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v19 = v3[6];
  v20 = *(v3 + 56);
  v21[1] = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100053324(void *a1)
{
  v3 = v1;
  v5 = sub_100007224(&qword_100835920, &qword_1006C1B70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009FAC8();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v23) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v23) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v23 = v3[3];
    LOBYTE(v20[0]) = 2;
    sub_100007224(&unk_100839A40, &qword_1006C1B50);
    sub_10009F9F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v14 = *(v3 + 3);
    v26[0] = *(v3 + 2);
    v26[1] = v14;
    v16 = *(v3 + 2);
    v15 = *(v3 + 3);
    v27[0] = *(v3 + 4);
    *(v27 + 9) = *(v3 + 73);
    v23 = v16;
    v24 = v15;
    v25[0] = *(v3 + 4);
    *(v25 + 9) = *(v3 + 73);
    v22 = 3;
    sub_10000BBC4(v26, v20, &qword_100835910, &qword_1006C1B68);
    sub_10009FBD8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v20[0] = v23;
    v20[1] = v24;
    *v21 = v25[0];
    *&v21[9] = *(v25 + 9);
    sub_10000BE18(v20, &qword_100835910, &qword_1006C1B68);
    v19 = v3[12];
    HIBYTE(v18) = 4;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = v3[13];
    HIBYTE(v18) = 5;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

uint64_t sub_100053660(void *a1, char a2, uint64_t a3)
{
  v7 = sub_100007224(&qword_1008358E0, &qword_1006C1B58);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009F81C();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v16 = 0;
  sub_10009F99C();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14[1] = a3;
    v15 = 1;
    sub_100007224(&unk_100839A40, &qword_1006C1B50);
    sub_10009F9F0();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v11, v7);
}

uint64_t sub_10005380C()
{
  if (*v0)
  {
    result = 0x7373416567616D69;
  }

  else
  {
    result = 0x6568636163657270;
  }

  *v0;
  return result;
}

uint64_t sub_10005385C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6568636163657270 && a2 == 0xEE006769666E6F43;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7373416567616D69 && a2 == 0xEB00000000737465)
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

uint64_t sub_100053944(uint64_t a1)
{
  v2 = sub_1000B19D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100053980(uint64_t a1)
{
  v2 = sub_1000B19D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000539BC@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100084448(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t sub_100053A20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001006FE390 == a2)
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

uint64_t sub_100053AB4(uint64_t a1)
{
  v2 = sub_1000B1984();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100053AF0(uint64_t a1)
{
  v2 = sub_1000B1984();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100053BB4(_BYTE *a1, _BYTE *a2)
{
  if (*a1)
  {
    v2 = 30771;
  }

  else
  {
    v2 = 30770;
  }

  if (*a2)
  {
    v3 = 30771;
  }

  else
  {
    v3 = 30770;
  }

  if (v2 == v3)
  {
    v4 = 1;
  }

  else
  {
    v4 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  swift_bridgeObjectRelease_n();
  return v4 & 1;
}

Swift::Int sub_100053C20()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100053C7C()
{
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100053CBC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void sub_100053D20(uint64_t *a1@<X8>)
{
  v2 = 30770;
  if (*v1)
  {
    v2 = 30771;
  }

  *a1 = v2;
  a1[1] = 0xE200000000000000;
}

uint64_t sub_100053D3C()
{
  if (*v0)
  {
    return 30771;
  }

  else
  {
    return 30770;
  }
}

uint64_t sub_100053D60(uint64_t a1)
{
  v2 = sub_1000BA5A0();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100053D9C(uint64_t a1)
{
  v2 = sub_1000BA5A0();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100053DD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000B091C(a1, &qword_1008383C8, &qword_1006CFD00, sub_1000BA5A0);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

unint64_t sub_100053E54()
{
  v1 = *v0;
  v2 = 0x7365726975716572;
  v3 = 0x6C61756E614D7263;
  if (v1 != 5)
  {
    v3 = 0x6B6174655278616DLL;
  }

  v4 = 0x756F656D69547263;
  if (v1 == 3)
  {
    v4 = 0xD000000000000012;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  if (v1 != 1)
  {
    v2 = 0xD000000000000016;
  }

  if (!*v0)
  {
    v2 = 0xD000000000000014;
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

uint64_t sub_100053F5C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100084658(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_100053F90(uint64_t a1)
{
  v2 = sub_1000AAC1C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100053FCC(uint64_t a1)
{
  v2 = sub_1000AAC1C();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_100054008@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1000848C8(a1, v6);
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

uint64_t sub_10005406C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE500000000000000;
  v4 = 0x6863746177;
  if (v2 != 1)
  {
    v4 = 28004;
    v3 = 0xE200000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 1819047270;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE400000000000000;
  }

  v7 = 0xE500000000000000;
  v8 = 0x6863746177;
  if (*a2 != 1)
  {
    v8 = 28004;
    v7 = 0xE200000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1819047270;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE400000000000000;
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

Swift::Int sub_100054148()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000541D4()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_10005424C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1000542D4@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100084C60(*a1);
  *a2 = result;
  return result;
}

void sub_100054304(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE500000000000000;
  v5 = 0x6863746177;
  if (v2 != 1)
  {
    v5 = 28004;
    v4 = 0xE200000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1819047270;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1000543FC()
{
  v1 = *v0;
  v2 = 0x6F69676552627573;
  v3 = 0x436E616353636F64;
  v4 = 0x6761506863746177;
  if (v1 != 4)
  {
    v4 = 0x616E696761506D64;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0xD00000000000001ALL;
  if (v1 != 1)
  {
    v5 = 0x6974616E69676170;
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

uint64_t sub_1000544E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100084CAC(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_10005450C(uint64_t a1)
{
  v2 = sub_10009FAC8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054548(uint64_t a1)
{
  v2 = sub_10009FAC8();

  return CodingKey.debugDescription.getter(a1, v2);
}

__n128 sub_100054584@<Q0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_100084ED4(a1, v7);
  if (!v2)
  {
    v5 = v7[5];
    *(a2 + 64) = v7[4];
    *(a2 + 80) = v5;
    *(a2 + 96) = v7[6];
    v6 = v7[1];
    *a2 = v7[0];
    *(a2 + 16) = v6;
    result = v7[3];
    *(a2 + 32) = v7[2];
    *(a2 + 48) = result;
  }

  return result;
}

uint64_t sub_1000545F0()
{
  if (*v0)
  {
    result = 0x6974616E69676170;
  }

  else
  {
    result = 0x676E69666F6F7270;
  }

  *v0;
  return result;
}

uint64_t sub_100054638@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69666F6F7270 && a2 == 0xEC00000065707954;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974616E69676170 && a2 == 0xEA00000000006E6FLL)
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

uint64_t sub_100054720(uint64_t a1)
{
  v2 = sub_10009F81C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10005475C(uint64_t a1)
{
  v2 = sub_10009F81C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054798@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100085378(a1);
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1000547E8()
{
  if (*v0)
  {
    result = 6645601;
  }

  else
  {
    result = 0x437972746E756F63;
  }

  *v0;
  return result;
}

uint64_t sub_100054824@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x437972746E756F63 && a2 == 0xEB0000000065646FLL;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6645601 && a2 == 0xE300000000000000)
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

uint64_t sub_100054904(uint64_t a1)
{
  v2 = sub_10009F7C8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054940(uint64_t a1)
{
  v2 = sub_10009F7C8();

  return CodingKey.debugDescription.getter(a1, v2);
}

unint64_t sub_100054A0C(char a1)
{
  result = 25705;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 1701869940;
      break;
    case 3:
      result = 0x72656469766F7270;
      break;
    case 4:
      result = 0x6574726F70707573;
      break;
    case 5:
    case 8:
      result = 0xD000000000000012;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
      result = 0x726F4D6E7261656CLL;
      break;
    case 9:
      result = 0x65726564726F6E75;
      break;
    case 10:
      result = 0xD000000000000027;
      break;
    case 11:
      result = 0xD000000000000024;
      break;
    case 12:
      result = 0xD00000000000002BLL;
      break;
    case 13:
      result = 0xD000000000000011;
      break;
    case 14:
      result = 0xD000000000000016;
      break;
    case 15:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0x55746E65736E6F63;
      break;
    case 17:
      result = 0x70536E6F69676572;
      break;
    case 18:
      result = 0xD000000000000011;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
      result = 0x416D756D696E696DLL;
      break;
    case 21:
      result = 0xD00000000000001BLL;
      break;
    case 22:
      result = 0xD000000000000014;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100054D80@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_100085564();
  *a2 = result;
  return result;
}

unint64_t sub_100054DB0@<X0>(unint64_t *a1@<X8>)
{
  result = sub_100054A0C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_100054DE4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_100085564();
  *a1 = result;
  return result;
}

uint64_t sub_100054E18(uint64_t a1)
{
  v2 = sub_10009F3E8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100054E54(uint64_t a1)
{
  v2 = sub_10009F3E8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100054E90@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100007224(&qword_1008353E0, &qword_1006C0F18);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v100[-v7 - 4];
  v9 = sub_100007224(&qword_100835850, &qword_1006C1B30);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v100[-v12 - 4];
  v103 = type metadata accessor for IdentityProofingStaticWorkflow(0);
  v14 = *(*(v103 - 1) + 64);
  __chkstk_darwin(v103);
  v104 = a1;
  v105 = &v100[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0) - 4];
  v16 = a1[4];
  sub_10000BA08(a1, a1[3]);
  sub_10009F3E8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    v106 = v2;
    v18 = v105;
    sub_10000BB78(v104);
    LODWORD(v13) = 0;
    goto LABEL_4;
  }

  v101 = a2;
  v102 = v10;
  LOBYTE(v108) = 0;
  v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v18 = v105;
  *v105 = v17;
  v18[1] = v21;
  LOBYTE(v108) = 1;
  v18[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[3] = v22;
  LOBYTE(v108) = 3;
  v99 = 0;
  v18[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v18[5] = v23;
  LOBYTE(v108) = 4;
  v24 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = 0;
  v18[6] = v24;
  v18[7] = v25;
  sub_100007224(&qword_100834EA0, &qword_1006C06B0);
  v107 = 5;
  sub_10007FD2C();
  v26 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v26;
  if (v26)
  {
    (*(v102 + 8))(v13, v9);
    *v100 = 0;
    v27 = 0;
    LODWORD(v102) = 0;
    LODWORD(v13) = 0;
    LODWORD(v101) = 1;
    goto LABEL_29;
  }

  v28 = v108;
  if (!v108)
  {
    v28 = _swiftEmptyArrayStorage;
  }

  v18[8] = v28;
  type metadata accessor for HardwareAttestationType();
  LOBYTE(v108) = 6;
  sub_10009F43C(&qword_100839AF0, &type metadata accessor for HardwareAttestationType);
  v29 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v29;
  if (v29)
  {
    (*(v102 + 8))(v13, v9);
    v27 = 0;
    LODWORD(v102) = 0;
    LODWORD(v13) = 0;
    LODWORD(v101) = 1;
    *v100 = 1;
    goto LABEL_29;
  }

  v30 = v103;
  sub_1000B1FC8(v8, v18 + v103[9], &qword_1008353E0, &qword_1006C0F18);
  LOBYTE(v108) = 7;
  v31 = v106;
  v32 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v31;
  if (v31)
  {
    (*(v102 + 8))(v13, v9);
    v27 = 0;
    LODWORD(v102) = 0;
    LODWORD(v13) = 0;
    LODWORD(v101) = 1;
    *v100 = 0x100000001;
    goto LABEL_29;
  }

  v34 = (v18 + v30[11]);
  *v34 = v32;
  v34[1] = v33;
  sub_100007224(&qword_100835468, &unk_1006C0F40);
  v107 = 8;
  sub_10009F484();
  v35 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v35;
  v36 = v102;
  if (v35)
  {
    (*(v102 + 8))(v13, v9);
    v27 = 0;
    LODWORD(v13) = 0;
    LODWORD(v101) = 1;
    *v100 = 0x100000001;
LABEL_27:
    LODWORD(v102) = 1;
LABEL_28:
    v18 = v105;
LABEL_29:
    v42 = v99;
    sub_10000BB78(v104);
    v43 = v18[1];

    if (v42)
    {
      if (!v101)
      {
        goto LABEL_37;
      }
    }

    else
    {
      v47 = v18[3];

      if ((v101 & 1) == 0)
      {
LABEL_37:
        v48 = v18[7];

        if (v100[0])
        {
          v45 = v18[8];

          if (v100[4])
          {
            goto LABEL_39;
          }
        }

        else if (*&v100[4])
        {
LABEL_39:
          sub_10000BE18(v18 + v103[9], &qword_1008353E0, &qword_1006C0F18);
          if ((v27 & 1) == 0)
          {
LABEL_40:
            if (v102)
            {
              goto LABEL_41;
            }

LABEL_4:

            if (!v13)
            {
LABEL_6:
            }

LABEL_5:
            v19 = *(v18 + v103[20]);

            goto LABEL_6;
          }

          goto LABEL_34;
        }

        if (!v27)
        {
          goto LABEL_40;
        }

LABEL_34:
        v46 = *(v18 + v103[10]);

        if ((v102 & 1) == 0)
        {
          goto LABEL_4;
        }

LABEL_41:
        v49 = *(v18 + v103[11] + 8);

        if ((v13 & 1) == 0)
        {
          goto LABEL_6;
        }

        goto LABEL_5;
      }
    }

    v44 = v18[5];

    goto LABEL_37;
  }

  *(v105 + v30[10]) = v108;
  sub_100007224(&qword_100835478, &qword_1006D4980);
  v107 = 9;
  sub_10009F55C();
  v37 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v37;
  if (v37)
  {
    (*(v36 + 8))(v13, v9);
    LODWORD(v13) = 0;
LABEL_26:
    LODWORD(v101) = 1;
    *v100 = 0x100000001;
    v27 = 1;
    goto LABEL_27;
  }

  *(v105 + v103[12]) = v108;
  sub_100007224(&unk_10084A230, &qword_1006C0F50);
  v107 = 17;
  sub_1000ACB5C(&qword_100835878);
  *&v100[4] = v9;
  v38 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v38;
  if (v38 || (*(v105 + v103[21]) = v108, sub_100007224(&qword_100835498, &qword_1006C0F58), v107 = 18, sub_10009F618(), v39 = v106, KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)(), (v106 = v39) != 0))
  {
    (*(v102 + 8))(v13, *&v100[4]);
    LODWORD(v13) = 0;
    goto LABEL_26;
  }

  if (v108)
  {
    v40 = v108;
  }

  else
  {
    v40 = _swiftEmptyArrayStorage;
  }

  v41 = v106;
  *(v105 + v103[22]) = v40;
  v107 = 19;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v41;
  v50 = v108;
  if (!v108)
  {
    v50 = _swiftEmptyArrayStorage;
  }

  *(v105 + v103[20]) = v50;
  sub_100007224(&unk_1008354A8, &qword_1006C0F60);
  v107 = 20;
  sub_10009F6F0();
  v51 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v51;
  if (v51)
  {
    goto LABEL_50;
  }

  if (v108)
  {
    v52 = v108;
  }

  else
  {
    v52 = _swiftEmptyArrayStorage;
  }

  v53 = v106;
  *(v105 + v103[23]) = v52;
  LOBYTE(v108) = 21;
  v54 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v53;
  v55 = v105 + v103[24];
  *v55 = v54;
  v55[8] = v56 & 1;
  LOBYTE(v108) = 22;
  v57 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = 0;
  v58 = v103[15];
  v59 = v105 + v103[25];
  *v59 = v57;
  v59[8] = v60 & 1;
  v61 = objc_opt_self();
  v62 = [v61 standardUserDefaults];
  v63._countAndFlagsBits = static DaemonInternalDefaultsKeys.addTimeoutBetweenProvisioningAttemptsInSeconds.getter();
  *v100 = NSUserDefaults.internalBool(forKey:)(v63);

  if (v100[0])
  {
    v64 = 0;
    v65 = 300;
    goto LABEL_54;
  }

  LOBYTE(v108) = 12;
  v66 = v106;
  v65 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v66;
  if (v66)
  {
LABEL_50:
    (*(v102 + 8))(v13, *&v100[4]);
    LODWORD(v101) = 1;
    *v100 = 0x100000001;
    v27 = 1;
    LODWORD(v102) = 1;
    LODWORD(v13) = 1;
    goto LABEL_28;
  }

LABEL_54:
  v67 = v105 + v58;
  *v67 = v65;
  v67[8] = v64 & 1;
  v68 = v103[13];
  v69 = [v61 standardUserDefaults];
  v70._countAndFlagsBits = static DaemonInternalDefaultsKeys.removeBillShockThreshold.getter();
  *v100 = NSUserDefaults.internalBool(forKey:)(v70);

  if (v100[0])
  {
    v71 = 0;
    v72 = 0;
  }

  else
  {
    LOBYTE(v108) = 10;
    v73 = v106;
    v71 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v106 = v73;
    if (v73)
    {
      goto LABEL_61;
    }
  }

  v74 = v105 + v68;
  *v74 = v71;
  v74[8] = v72 & 1;
  v75 = v103[14];
  v76 = [v61 standardUserDefaults];
  v77._countAndFlagsBits = static DaemonInternalDefaultsKeys.addDataToLowDataModeThreshold.getter();
  v78 = NSUserDefaults.internalBool(forKey:)(v77);

  if (!v78)
  {
    LOBYTE(v108) = 11;
    v81 = v106;
    v80 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v106 = v81;
    if (!v81)
    {
      goto LABEL_60;
    }

LABEL_61:
    (*(v102 + 8))(v13, *&v100[4]);
    sub_10000BB78(v104);
    v18 = v105;
    v86 = v105[1];

    v87 = v18[3];

    v88 = v18[5];

    v89 = v18[7];

    v90 = v18[8];

    v91 = v103;
    sub_10000BE18(v18 + v103[9], &qword_1008353E0, &qword_1006C0F18);
    v92 = *(v18 + v91[10]);

    LOBYTE(v13) = 1;
    goto LABEL_41;
  }

  v79 = 0;
  v80 = 1000000000;
LABEL_60:
  v82 = v106;
  v83 = v105 + v75;
  *v83 = v80;
  v83[8] = v79 & 1;
  LOBYTE(v108) = 13;
  v84 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = v82;
  if (v82)
  {
    goto LABEL_61;
  }

  v93 = (v105 + v103[16]);
  *v93 = v84;
  v93[1] = v85;
  LOBYTE(v108) = 14;
  v94 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = 0;
  *(v105 + v103[17]) = v94;
  LOBYTE(v108) = 15;
  v95 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v106 = 0;
  *(v105 + v103[18]) = v95;
  type metadata accessor for IdentityProofingConsentFlow();
  v107 = 16;
  sub_10009F43C(&qword_1008358A0, &type metadata accessor for IdentityProofingConsentFlow);
  v96 = v106;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v106 = v96;
  if (v96)
  {
    goto LABEL_61;
  }

  v97 = v103[19];
  (*(v102 + 8))(v13, *&v100[4]);
  v98 = v105;
  *(v105 + v97) = v108;
  sub_10009ED78(v98, v101, type metadata accessor for IdentityProofingStaticWorkflow);
  sub_10000BB78(v104);
  return sub_10009EDE0(v98, type metadata accessor for IdentityProofingStaticWorkflow);
}