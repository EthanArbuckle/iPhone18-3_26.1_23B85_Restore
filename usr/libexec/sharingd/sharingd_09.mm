unint64_t sub_10027FB0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100974758, &qword_1007F6618);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_1005818A4(v6);
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

void *sub_10027FC04(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10028088C(&qword_100974548, &qword_1007F6500);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v6 = *(a1 + 40);
  v5 = *(a1 + 48);
  v7 = sub_100570798(v4);
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
    *(v3[6] + 4 * v9) = v4;
    v12 = (v3[7] + 16 * v9);
    *v12 = v6;
    v12[1] = result;
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

    v16 = v11 + 3;
    v4 = *(v11 - 4);
    v6 = *(v11 - 1);
    v17 = *v11;

    v9 = sub_100570798(v4);
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

unint64_t sub_10027FD18(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_1009744B0, &unk_1007F9630);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, v13, &qword_1009832B0, &unk_1007F64D0);
      result = sub_100570754(v13);
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
      result = sub_1000106E0(&v15, (v3[7] + 32 * result));
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10027FE68(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009744D8, &unk_1007F64F0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v11, &qword_1009744E0, &qword_1007F8960);
      v5 = v11;
      result = sub_100570804(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
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

unint64_t sub_10027FF90(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009745B8, &unk_1007F6510);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100012854(v5, v6);
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

unint64_t sub_100280094(uint64_t a1)
{
  v2 = sub_10028088C(&unk_1009745D0, &unk_1007F6530);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10028088C(&qword_100976310, &unk_10080AFF0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v10, v6, &unk_1009745D0, &unk_1007F6530);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100012854(*v6, v13);
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
      v19 = type metadata accessor for RegistrationState(0);
      result = sub_1002826A8(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for RegistrationState);
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

unint64_t sub_10028027C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009745C0, &qword_1007F6520);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10028088C(&qword_1009745C8, &qword_1007F6528);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v10, v6, &qword_1009745C0, &qword_1007F6520);
      result = sub_10000EBD4(v6);
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100280464(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009746C8, &qword_1007F65A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10028088C(&qword_1009746D0, &qword_1007F65B0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v10, v6, &qword_1009746C8, &qword_1007F65A8);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100012854(*v6, v13);
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
      v19 = type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation();
      result = sub_1002826A8(v6 + v9, v18 + *(*(v19 - 8) + 72) * v16, type metadata accessor for SDAirDropReceiveClassroomHandler.Continuation);
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

unint64_t sub_100280660(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100974970, &unk_1007F9750);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      v7 = v5;
      result = sub_100570804(v6);
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

void *sub_100280758(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10028088C(&qword_100974550, &qword_1007F6508);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = sub_10000DA98(v4);
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

    v8 = sub_10000DA98(v4);
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

uint64_t sub_10028088C(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1002808D4()
{
  result = qword_100973C70;
  if (!qword_100973C70)
  {
    sub_100280938(&unk_10097A630, &unk_1007F5680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100973C70);
  }

  return result;
}

uint64_t sub_100280938(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    v4 = *a2;
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

__n128 sub_100280A7C(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_100280A88(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100280AA8(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 32) = v3;
  return result;
}

__n128 sub_100280B24(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

uint64_t sub_100280B38(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 24))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_100280B58(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
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

  *(result + 24) = v3;
  return result;
}

uint64_t sub_100280C30(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002811D0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_100976420, &qword_1007F6600);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100012854(v5, v6);
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

unint64_t sub_1002812E0(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100974710, &qword_1007F65E8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10028088C(&qword_100974718, &unk_1007F65F0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v10, v6, &qword_100974710, &qword_1007F65E8);
      result = sub_100570848(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for SFAirDropSend.Transfer();
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

unint64_t sub_100281500(uint64_t a1)
{
  v2 = sub_10028088C(&qword_1009746D8, &qword_1007F65B8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10028088C(&unk_1009746E0, &unk_1007F65C0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v10, v6, &qword_1009746D8, &qword_1007F65B8);
      result = sub_10000EBD4(v6);
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
      v18 = type metadata accessor for SFNWInterfaceType();
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

unint64_t sub_100281720(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100974630, &unk_1007F6570);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v11, &qword_100974638, &qword_1007FB620);
      v5 = v11;
      result = sub_10000FFF8(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100281848(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009746B8, &qword_1007F6598);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v11, &qword_1009746C0, &qword_1007F65A0);
      v5 = v11;
      result = sub_1005818A4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100281970(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009745E0, &qword_1007F6540);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100012854(v5, v6);
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

unint64_t sub_100281A80(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10028088C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100012854(v7, v8);
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

unint64_t sub_100281B7C(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974700, &qword_1007F65D8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10028088C(&qword_1009762A0, &qword_1007F65E0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v10, v6, &unk_100974700, &qword_1007F65D8);
      result = sub_100570848(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for SFAirDrop.TransferIdentifier();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for SFAirDropReceive.Transfer();
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

unint64_t sub_100281DB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_100974770, &unk_1007F6630);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v11, &qword_100974778, &unk_1008075F0);
      v5 = v11;
      result = sub_1005818A4(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
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

unint64_t sub_100281ED8(uint64_t a1)
{
  v2 = sub_10028088C(&unk_100974760, &unk_1007F6620);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10028088C(&unk_100976450, &unk_1007F9720);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_10000FF90(v10, v6, &unk_100974760, &unk_1007F6620);
      result = sub_100570988(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for URL();
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
    return &_swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002820D4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_10028088C(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100012854(v7, v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v5[6] + 16 * result);
      *v12 = v7;
      v12[1] = v8;
      *(v5[7] + result) = v9;
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

unint64_t sub_1002821C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009762D0, &unk_1007F9440);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100012854(v5, v6);
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

unint64_t sub_1002822DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&qword_1009745E8, &qword_1007F6548);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 40)
    {
      sub_10000FF90(i, &v11, &qword_1009745F0, &unk_1007F6550);
      v5 = v11;
      result = sub_100570AEC(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 4 * result) = v5;
      result = sub_1000106E0(&v12, (v3[7] + 32 * result));
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_10028241C(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_10028088C(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_10028088C(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_10000FF90(v17, v13, a2, v28);
      result = sub_10000EBD4(v13);
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

uint64_t sub_100282600(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100282638(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = result;
  LODWORD(result) = 0;
  v3 = (v2 + 32);
  do
  {
    v5 = *v3++;
    v4 = v5;
    if ((v5 & ~result) == 0)
    {
      v4 = 0;
    }

    result = v4 | result;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_100282670(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

uint64_t sub_1002826A8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t *sub_100282710(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_100282884(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1002828A4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 4) = v3;
  return result;
}

unint64_t sub_100283208()
{
  result = qword_100974948;
  if (!qword_100974948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974948);
  }

  return result;
}

Swift::Int sub_1002836B4()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1002836FC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_100283740()
{
  if (*v0)
  {
    result = 0x49746361746E6F63;
  }

  else
  {
    result = 0x656C646E6168;
  }

  *v0;
  return result;
}

uint64_t sub_10028377C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C646E6168 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x49746361746E6F63 && a2 == 0xE900000000000044)
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

uint64_t sub_100283868(uint64_t a1)
{
  v2 = sub_10028662C();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1002838A4(uint64_t a1)
{
  v2 = sub_10028662C();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002838E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v7 = sub_10028088C(&qword_100974C68, &qword_1007F7E80);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v14 - v10;
  v12 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_10028662C();
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

Swift::Int sub_100283A74()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100283ADC()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int sub_100283B2C()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_100283B90@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100285320(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
    a2[2] = v6;
    a2[3] = v7;
  }

  return result;
}

uint64_t sub_100283BE0(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a1[3];
  v4 = a2[2];
  v5 = a2[3];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
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

uint64_t sub_100283C84(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x64497344746C61;
  if (v2 != 1)
  {
    v4 = 0x726F727265;
    v3 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x656C646E6168;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x64497344746C61;
  if (*a2 != 1)
  {
    v8 = 0x726F727265;
    v7 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x656C646E6168;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
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

Swift::Int sub_100283D7C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100283E18()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100283EA0()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_100283F38@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100285504(*a1);
  *a2 = result;
  return result;
}

void sub_100283F68(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE600000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x64497344746C61;
  if (v2 != 1)
  {
    v5 = 0x726F727265;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C646E6168;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_100283FC0()
{
  v1 = 0x64497344746C61;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656C646E6168;
  }
}

unint64_t sub_100284014@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100285504(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100284048(uint64_t a1)
{
  v2 = sub_1002865D8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100284084(uint64_t a1)
{
  v2 = sub_1002865D8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1002840C0()
{
  _StringGuts.grow(_:)(51);
  v1._object = 0x8000000100788E90;
  v1._countAndFlagsBits = 0xD000000000000018;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._countAndFlagsBits = 0x44495344746C6120;
  v2._object = 0xE900000000000020;
  String.append(_:)(v2);
  v5 = *(v0 + 16);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v3._countAndFlagsBits = 0x6F43726F72726520;
  v3._object = 0xEC000000203A6564;
  String.append(_:)(v3);
  *&v5 = *(v0 + 32);
  BYTE8(v5) = *(v0 + 40);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  return 0;
}

uint64_t sub_1002841C8(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100974C50, &qword_1007F7E70);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1002865D8();
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
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = v3[4];
  v17 = *(v3 + 40);
  v18[13] = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_10028436C()
{
  v1 = v0;
  v2 = *v0;
  v4 = v1[1];
  v3 = v1[2];
  v5 = v1[3];
  Hasher.init(_seed:)();
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

  if (*(v1 + 40) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v6 = v1[4];
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v6);
  }

  return Hasher._finalize()();
}

void sub_10028443C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  String.hash(into:)();
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
    if (v6)
    {
LABEL_3:
      Hasher._combine(_:)(0);
      return;
    }
  }

  else
  {
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_3;
    }
  }

  Hasher._combine(_:)(1u);
  Hasher._combine(_:)(v5);
}

Swift::Int sub_1002844D8()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = *(v0 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  if (!v4)
  {
    Hasher._combine(_:)(0);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(1u);
    Hasher._combine(_:)(v5);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(1u);
  String.hash(into:)();
  if (!v6)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

double sub_10028459C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_1002857B0(a1, &v6);
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

uint64_t sub_1002845FC(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return sub_100285270(&v5, &v7) & 1;
}

Swift::Int sub_100284654()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100284728()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_1002847E8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1002848B8@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_100285A04(*a1);
  *a2 = result;
  return result;
}

void sub_1002848E8(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000065646F43;
  v3 = 0x8000000100788100;
  v4 = 0xD000000000000019;
  if (*v1 != 2)
  {
    v4 = 0x655270756B6F6F6CLL;
    v3 = 0xED000073746C7573;
  }

  if (*v1)
  {
    v2 = 0xEF6567617373654DLL;
  }

  if (*v1 <= 1u)
  {
    v5 = 0x65736E6F70736572;
  }

  else
  {
    v5 = v4;
  }

  if (*v1 > 1u)
  {
    v2 = v3;
  }

  *a1 = v5;
  a1[1] = v2;
}

uint64_t sub_10028498C()
{
  v1 = 0xD000000000000019;
  if (*v0 != 2)
  {
    v1 = 0x655270756B6F6F6CLL;
  }

  *v0;
  if (*v0 <= 1u)
  {
    return 0x65736E6F70736572;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_100284A18@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = sub_100285A04(a1);
  *a2 = result;
  return result;
}

uint64_t sub_100284A4C(uint64_t a1)
{
  v2 = sub_100286464();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100284A88(uint64_t a1)
{
  v2 = sub_100286464();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100284AC4()
{
  _StringGuts.grow(_:)(87);
  v1._countAndFlagsBits = 0xD00000000000001ELL;
  v1._object = 0x8000000100788EB0;
  String.append(_:)(v1);
  v9 = *v0;
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._object = 0x8000000100788ED0;
  v3._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v3);
  v10 = *(v0 + 1);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  v4._countAndFlagsBits = 0xD000000000000015;
  v4._object = 0x8000000100788EF0;
  String.append(_:)(v4);
  *&v10 = v0[3];
  v5._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v5);

  v6._countAndFlagsBits = 0x73746C7573657220;
  v6._object = 0xEA0000000000203ALL;
  String.append(_:)(v6);
  *&v10 = *(v0[4] + 16);
  v7._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v7);

  return 0;
}

uint64_t sub_100284C58(void *a1)
{
  v3 = v1;
  v5 = sub_10028088C(&qword_100974C28, &qword_1007F7E60);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v16[-v8];
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100286464();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v20 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = v3[1];
    v13 = v3[2];
    v19 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14 = v3[3];
    v18 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v17 = v3[4];
    v16[15] = 3;
    sub_10028088C(&qword_100974C10, &qword_1007F7E58);
    sub_10028650C(&qword_100974C30, sub_100286584);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_100284E9C()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v3);
  sub_10028517C(v7, v5);
  return Hasher._finalize()();
}

void sub_100284F40(uint64_t a1)
{
  v2 = v1;
  v4 = v2[1];
  v6 = v2[2];
  v5 = v2[3];
  v7 = v2[4];
  Hasher._combine(_:)(*v2);
  if (v6)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v5);

  sub_10028517C(a1, v7);
}

Swift::Int sub_100284FCC()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  if (v4)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  Hasher._combine(_:)(v3);
  sub_10028517C(v7, v5);
  return Hasher._finalize()();
}

double sub_10028506C@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1002861D4(a1, v6);
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

uint64_t sub_1002850D0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  v6 = a2[2];
  v7 = a2[3];
  v8 = a2[4];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = a1[1] == a2[1] && v3 == v6;
    if (!v9 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v4 != v7)
  {
    return 0;
  }

  return sub_1003115C8(v5, v8);
}

void sub_10028517C(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  Hasher._combine(_:)(v3);
  if (v3)
  {
    v4 = (a2 + 72);
    do
    {
      v6 = *(v4 - 5);
      v5 = *(v4 - 4);
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);
      v9 = *(v4 - 1);
      v10 = *v4;

      String.hash(into:)();
      if (v7)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v10)
        {
          goto LABEL_9;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!v10)
        {
LABEL_9:
          Hasher._combine(_:)(1u);
          Hasher._combine(_:)(v9);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(0);
LABEL_4:

      v4 += 48;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_100285270(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5)
  {
    if (!v6)
    {
      return 0;
    }

    v7 = *(a1 + 16) == *(a2 + 16) && v5 == v6;
    if (!v7 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  v8 = *(a2 + 40);
  if (*(a1 + 40))
  {
    if (*(a2 + 40))
    {
      return 1;
    }
  }

  else
  {
    if (*(a1 + 32) != *(a2 + 32))
    {
      v8 = 1;
    }

    if ((v8 & 1) == 0)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_100285320(uint64_t *a1)
{
  v3 = sub_10028088C(&qword_100974C58, &qword_1007F7E78);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10 - v6;
  v8 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_10028662C();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v12 = 0;
    v8 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_10000C60C(a1);
  return v8;
}

unint64_t sub_100285504(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D68B0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100285550@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v4 = sub_100570754(v18), (v5 & 1) == 0))
  {

    result = sub_100285E74(v18);
LABEL_13:
    v6 = 0;
    v7 = 0;
    v11 = 0;
    v12 = 0;
    v14 = 0;
    v15 = 0;
    goto LABEL_14;
  }

  sub_10000C5B0(*(a1 + 56) + 32 * v4, &v19);
  sub_100285E74(v18);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_13;
  }

  v6 = 0x656C646E6168;
  v7 = 0xE600000000000000;
  v19 = 0x64497344746C61;
  v20 = 0xE700000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v8 = sub_100570754(v18), (v9 & 1) != 0))
  {
    sub_10000C5B0(*(a1 + 56) + 32 * v8, &v19);
    sub_100285E74(v18);
    v10 = swift_dynamicCast();
    if (v10)
    {
      v11 = 0x656C646E6168;
    }

    else
    {
      v11 = 0;
    }

    if (v10)
    {
      v12 = 0xE600000000000000;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_100285E74(v18);
    v11 = 0;
    v12 = 0;
  }

  v19 = 0x726F727265;
  v20 = 0xE500000000000000;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v16 = sub_100570754(v18), (v17 & 1) != 0))
  {
    sub_10000C5B0(*(a1 + 56) + 32 * v16, &v19);
    sub_100285E74(v18);

    result = swift_dynamicCast();
    v14 = 0x656C646E6168;
    if (!result)
    {
      v14 = 0;
    }

    v15 = result ^ 1;
  }

  else
  {

    result = sub_100285E74(v18);
    v14 = 0;
    v15 = 1;
  }

LABEL_14:
  *a2 = v6;
  *(a2 + 8) = v7;
  *(a2 + 16) = v11;
  *(a2 + 24) = v12;
  *(a2 + 32) = v14;
  *(a2 + 40) = v15;
  return result;
}

uint64_t sub_1002857B0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_10028088C(&qword_100974C40, &qword_1007F7E68);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_1002865D8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  v27 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v24 = v11;
  v26 = 1;
  v22 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v23 = v14;
  v25 = 2;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v16 = v9;
  v18 = v17;
  (*(v6 + 8))(v16, v5);
  result = sub_10000C60C(a1);
  *a2 = v24;
  *(a2 + 8) = v13;
  v20 = v23;
  *(a2 + 16) = v22;
  *(a2 + 24) = v20;
  *(a2 + 32) = v15;
  *(a2 + 40) = v18 & 1;
  return result;
}

unint64_t sub_100285A04(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1008D6918, v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100285A50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  strcpy(v38, "responseCode");
  BYTE5(v38[1]) = 0;
  HIWORD(v38[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v6 = sub_100570754(&v39), (v7 & 1) == 0))
  {
    sub_100285E74(&v39);
    goto LABEL_6;
  }

  sub_10000C5B0(*(a1 + 56) + 32 * v6, v38);
  sub_100285E74(&v39);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_6:
    v8 = 0;
    goto LABEL_7;
  }

  v8 = v37[0];
LABEL_7:
  v38[0] = 0x65736E6F70736572;
  v38[1] = 0xEF6567617373654DLL;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v9 = sub_100570754(&v39), (v10 & 1) != 0))
  {
    sub_10000C5B0(*(a1 + 56) + 32 * v9, v38);
    sub_100285E74(&v39);
    v11 = swift_dynamicCast();
    if (v11)
    {
      v12 = v37[0];
    }

    else
    {
      v12 = 0;
    }

    if (v11)
    {
      v13 = v37[1];
    }

    else
    {
      v13 = 0;
    }
  }

  else
  {
    sub_100285E74(&v39);
    v12 = 0;
    v13 = 0;
  }

  v38[0] = 0xD000000000000019;
  v38[1] = 0x8000000100788100;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v14 = sub_100570754(&v39), (v15 & 1) != 0))
  {
    sub_10000C5B0(*(a1 + 56) + 32 * v14, v38);
    sub_100285E74(&v39);
    if (swift_dynamicCast())
    {
      a2 = v37[0];
    }
  }

  else
  {
    sub_100285E74(&v39);
  }

  strcpy(v37, "lookupResults");
  HIWORD(v37[1]) = -4864;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v16 = sub_100570754(&v39), (v17 & 1) == 0))
  {

    result = sub_100285E74(&v39);
LABEL_35:
    v22 = _swiftEmptyArrayStorage;
LABEL_36:
    *a3 = v8;
    a3[1] = v12;
    a3[2] = v13;
    a3[3] = a2;
    a3[4] = v22;
    return result;
  }

  sub_10000C5B0(*(a1 + 56) + 32 * v16, v38);
  sub_100285E74(&v39);

  sub_10028088C(&qword_100974BE0, &qword_1007F7B20);
  result = swift_dynamicCast();
  if ((result & 1) == 0)
  {
    goto LABEL_35;
  }

  v19 = 0;
  v20 = v37[0];
  v21 = *(v37[0] + 16);
  v22 = _swiftEmptyArrayStorage;
LABEL_25:
  v23 = v19;
  while (1)
  {
    if (v21 == v23)
    {

      goto LABEL_36;
    }

    if (v23 >= *(v20 + 16))
    {
      break;
    }

    v19 = v23 + 1;
    v24 = *(v20 + 8 * v23 + 32);

    result = sub_100285550(v25, &v39);
    v26 = v40;
    v23 = v19;
    if (v40)
    {
      v31 = v39;
      v34 = v42;
      v35 = v41;
      v33 = v43;
      v32 = v44;
      result = swift_isUniquelyReferenced_nonNull_native();
      v36 = a2;
      if ((result & 1) == 0)
      {
        result = sub_10028E0AC(0, *(v22 + 2) + 1, 1, v22);
        v22 = result;
      }

      v28 = *(v22 + 2);
      v27 = *(v22 + 3);
      v29 = v28 + 1;
      if (v28 >= v27 >> 1)
      {
        result = sub_10028E0AC((v27 > 1), v28 + 1, 1, v22);
        v29 = v28 + 1;
        v22 = result;
      }

      *(v22 + 2) = v29;
      v30 = &v22[48 * v28];
      *(v30 + 4) = v31;
      *(v30 + 5) = v26;
      *(v30 + 6) = v35;
      *(v30 + 7) = v34;
      *(v30 + 8) = v33;
      v30[72] = v32 & 1;
      a2 = v36;
      goto LABEL_25;
    }
  }

  __break(1u);
  return result;
}

__n128 sub_100285EC8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100285EDC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_100285F24(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

__n128 sub_100285F7C(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_100285F90(uint64_t a1, int a2)
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

uint64_t sub_100285FD8(uint64_t result, int a2, int a3)
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

uint64_t sub_100286034(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_10028607C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1002860D0()
{
  result = qword_100974BE8;
  if (!qword_100974BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BE8);
  }

  return result;
}

unint64_t sub_100286128()
{
  result = qword_100974BF0;
  if (!qword_100974BF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BF0);
  }

  return result;
}

unint64_t sub_100286180()
{
  result = qword_100974BF8;
  if (!qword_100974BF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974BF8);
  }

  return result;
}

uint64_t sub_1002861D4@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_10028088C(&qword_100974C00, &qword_1007F7E50);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19 - v8;
  v10 = a1[4];
  sub_10002CDC0(a1, a1[3]);
  sub_100286464();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_10000C60C(a1);
  }

  v26 = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v25 = 1;
  v12 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v14 = v13;
  v21 = v12;
  v24 = 2;
  v20 = KeyedDecodingContainer.decode(_:forKey:)();
  sub_10028088C(&qword_100974C10, &qword_1007F7E58);
  v23 = 3;
  sub_10028650C(&qword_100974C18, sub_1002864B8);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v15 = v22;
  result = sub_10000C60C(a1);
  v17 = v20;
  v18 = v21;
  *a2 = v11;
  a2[1] = v18;
  a2[2] = v14;
  a2[3] = v17;
  a2[4] = v15;
  return result;
}

unint64_t sub_100286464()
{
  result = qword_100974C08;
  if (!qword_100974C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C08);
  }

  return result;
}

unint64_t sub_1002864B8()
{
  result = qword_100974C20;
  if (!qword_100974C20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C20);
  }

  return result;
}

uint64_t sub_10028650C(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100280938(&qword_100974C10, &qword_1007F7E58);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100286584()
{
  result = qword_100974C38;
  if (!qword_100974C38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C38);
  }

  return result;
}

unint64_t sub_1002865D8()
{
  result = qword_100974C48;
  if (!qword_100974C48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C48);
  }

  return result;
}

unint64_t sub_10028662C()
{
  result = qword_100974C60;
  if (!qword_100974C60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C60);
  }

  return result;
}

uint64_t _s12FetchRequestV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s12FetchRequestV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t _s18BatchFetchResponseV14ResultResponseV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s18BatchFetchResponseV14ResultResponseV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t _s18BatchFetchResponseV10CodingKeysOwet(unsigned __int8 *a1, unsigned int a2)
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

uint64_t _s18BatchFetchResponseV10CodingKeysOwst(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_100286A78()
{
  result = qword_100974C70;
  if (!qword_100974C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C70);
  }

  return result;
}

unint64_t sub_100286AD0()
{
  result = qword_100974C78;
  if (!qword_100974C78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C78);
  }

  return result;
}

unint64_t sub_100286B28()
{
  result = qword_100974C80;
  if (!qword_100974C80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C80);
  }

  return result;
}

unint64_t sub_100286B80()
{
  result = qword_100974C88;
  if (!qword_100974C88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C88);
  }

  return result;
}

unint64_t sub_100286BD8()
{
  result = qword_100974C90;
  if (!qword_100974C90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C90);
  }

  return result;
}

unint64_t sub_100286C30()
{
  result = qword_100974C98;
  if (!qword_100974C98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974C98);
  }

  return result;
}

unint64_t sub_100286C88()
{
  result = qword_100974CA0;
  if (!qword_100974CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974CA0);
  }

  return result;
}

unint64_t sub_100286CE0()
{
  result = qword_100974CA8;
  if (!qword_100974CA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974CA8);
  }

  return result;
}

unint64_t sub_100286D38()
{
  result = qword_100974CB0;
  if (!qword_100974CB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100974CB0);
  }

  return result;
}

uint64_t sub_100286D94()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100974CB8);
  v1 = sub_10000C4AC(v0, qword_100974CB8);
  if (qword_100973758 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A0A50);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100286E5C@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v4 = *a1;
  sub_10000C5B0((a1 + 1), (a2 + 1));
  *a2 = v4;

  return v4;
}

id sub_100286EAC@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v6 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_10:
    v12 = (v7 - 1) & v7;
    v13 = __clz(__rbit64(v7)) | (v8 << 6);
    v14 = *(*(v3 + 48) + 8 * v13);
    sub_10000C5B0(*(v3 + 56) + 32 * v13, &v19);
    *&v22[0] = v14;
    sub_1000106E0(&v19, (v22 + 8));
    result = v14;
    v16 = *&v22[0];
    v11 = v8;
LABEL_11:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v6;
    v1[3] = v11;
    v1[4] = v12;
    if (v16)
    {
      v18 = v1[5];
      v17 = v1[6];
      v19 = v16;
      v20 = *(v22 + 8);
      v21 = *(&v22[1] + 8);
      v18(&v19);
      return sub_100005508(&v19, &qword_100974CD8, &qword_1007F8238);
    }

    else
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  else
  {
    v9 = (v6 + 64) >> 6;
    if (v9 <= v5 + 1)
    {
      v10 = v5 + 1;
    }

    else
    {
      v10 = (v6 + 64) >> 6;
    }

    v11 = v10 - 1;
    while (1)
    {
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      if (v8 >= v9)
      {
        v16 = 0;
        v12 = 0;
        memset(v22, 0, 40);
        goto LABEL_11;
      }

      v7 = *(v4 + 8 * v8);
      ++v5;
      if (v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100286FFC@<X0>(uint64_t a1@<X8>)
{
  v52 = a1;
  v2 = sub_10028088C(&qword_100974CE0, &qword_1007F8240);
  v49 = *(v2 - 8);
  v50 = v2;
  v3 = *(v49 + 64);
  __chkstk_darwin(v2);
  v45 = &v45 - v4;
  v54 = type metadata accessor for SFNWInterfaceType();
  v5 = *(v54 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v54);
  v53 = &v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10028088C(&qword_100974CE8, &qword_1007F8248);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v51 = &v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v15);
  v48 = &v45 - v18;
  v19 = *v1;
  v20 = v1[1];
  v22 = v1[2];
  v21 = v1[3];
  v23 = v1[4];
  if (v23)
  {
    v47 = v1[2];
    v24 = v21;
LABEL_11:
    v46 = (v23 - 1) & v23;
    v28 = __clz(__rbit64(v23)) | (v24 << 6);
    (*(v9 + 16))(v12, *(v19 + 48) + *(v9 + 72) * v28, v8);
    (*(v5 + 16))(v53, *(v19 + 56) + *(v5 + 72) * v28, v54);
    v29 = v8;
    v30 = v50;
    v31 = *(v50 + 48);
    v32 = *(v9 + 32);
    v33 = v48;
    v32(v48, v12, v29);
    (*(v5 + 32))(v33 + v31, v53, v54);
    v34 = v49;
    (*(v49 + 56))(v33, 0, 1, v30);
    v35 = v46;
    v22 = v47;
    v27 = v24;
LABEL_12:
    *v1 = v19;
    v1[1] = v20;
    v1[2] = v22;
    v1[3] = v27;
    v1[4] = v35;
    v36 = v1[5];
    v37 = v1[6];
    v38 = v51;
    sub_10002C4E4(v33, v51, &qword_100974CE8, &qword_1007F8248);
    v39 = 1;
    v40 = (*(v34 + 48))(v38, 1, v30);
    v41 = v52;
    if (v40 != 1)
    {
      v42 = v38;
      v43 = v45;
      sub_10002C4E4(v42, v45, &qword_100974CE0, &qword_1007F8240);
      v36(v43);
      sub_100005508(v43, &qword_100974CE0, &qword_1007F8240);
      v39 = 0;
    }

    v44 = sub_10028088C(&qword_1009746D8, &qword_1007F65B8);
    return (*(*(v44 - 8) + 56))(v41, v39, 1, v44);
  }

  else
  {
    v25 = (v22 + 64) >> 6;
    if (v25 <= v21 + 1)
    {
      v26 = v21 + 1;
    }

    else
    {
      v26 = (v22 + 64) >> 6;
    }

    v27 = v26 - 1;
    while (1)
    {
      v24 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v24 >= v25)
      {
        v33 = v48;
        v34 = v49;
        v30 = v50;
        (*(v49 + 56))(v48, 1, 1, v50);
        v35 = 0;
        goto LABEL_12;
      }

      v23 = *(v20 + 8 * v24);
      ++v21;
      if (v23)
      {
        v47 = v1[2];
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  return result;
}

unint64_t sub_10028748C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v44 = a1;
  v45 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v46 = v8;
  v47 = 0;
  v48 = v11 & v9;
  v49 = a2;
  v50 = a3;

  sub_100286EAC(&v42);
  v12 = v42;
  if (!v42)
  {
    goto LABEL_25;
  }

  sub_1000106E0(v43, v41);
  v13 = *a5;
  result = sub_10000FFF8(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_1005712AC(v19, a4 & 1);
    v21 = *a5;
    result = sub_10000FFF8(v12);
    if ((v20 & 1) == (v22 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    type metadata accessor for CFString(0);
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v26 = result;
    sub_100010C84();
    result = v26;
    v23 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v23 = *a5;
  if (v20)
  {
LABEL_11:
    v24 = result;

    v25 = (v23[7] + 32 * v24);
    sub_10000C60C(v25);
    sub_1000106E0(v41, v25);
    goto LABEL_15;
  }

LABEL_13:
  v23[(result >> 6) + 8] |= 1 << result;
  *(v23[6] + 8 * result) = v12;
  result = sub_1000106E0(v41, (v23[7] + 32 * result));
  v27 = v23[2];
  v18 = __OFADD__(v27, 1);
  v28 = v27 + 1;
  if (!v18)
  {
    v23[2] = v28;
LABEL_15:
    sub_100286EAC(&v42);
    v12 = v42;
    if (v42)
    {
      v20 = 1;
      do
      {
        sub_1000106E0(v43, v41);
        v31 = *a5;
        result = sub_10000FFF8(v12);
        v33 = v31[2];
        v34 = (v32 & 1) == 0;
        v18 = __OFADD__(v33, v34);
        v35 = v33 + v34;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v32;
        if (v31[3] < v35)
        {
          sub_1005712AC(v35, 1);
          v36 = *a5;
          result = sub_10000FFF8(v12);
          if ((a4 & 1) != (v37 & 1))
          {
            goto LABEL_8;
          }
        }

        v38 = *a5;
        if (a4)
        {
          v29 = result;

          v30 = (v38[7] + 32 * v29);
          sub_10000C60C(v30);
          sub_1000106E0(v41, v30);
        }

        else
        {
          v38[(result >> 6) + 8] |= 1 << result;
          *(v38[6] + 8 * result) = v12;
          result = sub_1000106E0(v41, (v38[7] + 32 * result));
          v39 = v38[2];
          v18 = __OFADD__(v39, 1);
          v40 = v39 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v38[2] = v40;
        }

        sub_100286EAC(&v42);
        v12 = v42;
      }

      while (v42);
    }

LABEL_25:
    sub_100027D64();
  }

LABEL_27:
  __break(1u);
  return result;
}

void sub_10028776C(uint64_t a1, uint64_t a2)
{
  type metadata accessor for CFString(0);
  sub_10000FE00();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v5 = Dictionary._bridgeToObjectiveC()().super.isa;
  v6 = SecItemUpdate(isa, v5);

  if (v6 == -25300)
  {
    goto LABEL_16;
  }

  if (!v6)
  {
    if (qword_100973510 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100974CB8);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      *v10 = 138412546;
      v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v10 + 4) = v12;
      v11->super.isa = v12.super.isa;
      *(v10 + 12) = 2112;
      v13.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v10 + 14) = v13;
      v11[1].super.isa = v13.super.isa;
      _os_log_impl(&_mh_execute_header, v8, v9, "Updated keychain item: %@ with %@", v10, 0x16u);
      sub_10028088C(&qword_100975400, &qword_1007F65D0);
      swift_arrayDestroy();
    }

    return;
  }

  if (qword_100973510 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000C4AC(v14, qword_100974CB8);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v17 = 138412802;
    v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v17 + 4) = v19;
    v18->super.isa = v19.super.isa;
    *(v17 + 12) = 2112;
    v20.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
    *(v17 + 14) = v20;
    v18[1].super.isa = v20.super.isa;
    *(v17 + 22) = 1024;
    *(v17 + 24) = v6;
    _os_log_impl(&_mh_execute_header, v15, v16, "Failed to update keychain item: %@ with %@, error: %d, will try to delete and re-add", v17, 0x1Cu);
    sub_10028088C(&qword_100975400, &qword_1007F65D0);
    swift_arrayDestroy();
  }

  v21 = Dictionary._bridgeToObjectiveC()().super.isa;
  v22 = SecItemDelete(v21);

  if (!v22)
  {
LABEL_16:

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v70 = a1;
    sub_10028748C(a2, sub_100286E5C, 0, isUniquelyReferenced_nonNull_native, &v70);

    if (qword_100973510 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_10000C4AC(v37, qword_100974CB8);

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *v40 = 136315650;

      v69 = v39;
      v41 = Dictionary.description.getter();
      v43 = v42;

      v44 = sub_10000C4E4(v41, v43, &v70);

      *(v40 + 4) = v44;
      *(v40 + 12) = 2112;
      v45.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v40 + 14) = v45;
      v68->super.isa = v45.super.isa;
      *(v40 + 22) = 2080;
      v46 = Dictionary.description.getter();
      v48 = sub_10000C4E4(v46, v47, &v70);

      *(v40 + 24) = v48;
      _os_log_impl(&_mh_execute_header, v38, v69, "Adding newItem=%s query=%@ update=%s", v40, 0x20u);
      sub_100005508(v68, &qword_100975400, &qword_1007F65D0);

      swift_arrayDestroy();
    }

    v49 = Dictionary._bridgeToObjectiveC()().super.isa;

    v50 = SecItemAdd(v49, 0);

    v51 = Logger.logObject.getter();
    if (v50)
    {
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        *v53 = 138412546;

        v55 = Dictionary._bridgeToObjectiveC()().super.isa;

        *(v53 + 4) = v55;
        *v54 = v55;
        *(v53 + 12) = 1024;
        *(v53 + 14) = v50;
        _os_log_impl(&_mh_execute_header, v51, v52, "Failed to add keychain item: %@, error:%d", v53, 0x12u);
        sub_100005508(v54, &qword_100975400, &qword_1007F65D0);
      }

      v70 = 0;
      v71 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);
      v56._object = 0x8000000100788F90;
      v56._countAndFlagsBits = 0xD00000000000001DLL;
      String.append(_:)(v56);

      v57 = Dictionary._bridgeToObjectiveC()().super.isa;

      v72 = v57;
      type metadata accessor for CFDictionary(0);
      _print_unlocked<A, B>(_:_:)();

      v58._countAndFlagsBits = 0x3A726F727265202CLL;
      v58._object = 0xE800000000000000;
      String.append(_:)(v58);
      LODWORD(v72) = v50;
      v59._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v59);

      v60 = sub_100010F88(10, v70, v71);
      v62 = v61;
      sub_1000115C8();
      swift_allocError();
      *v63 = v60;
      *(v63 + 8) = v62;
      swift_willThrow();
    }

    else
    {
      v64 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        *v65 = 138412290;

        v67 = Dictionary._bridgeToObjectiveC()().super.isa;

        *(v65 + 4) = v67;
        *v66 = v67;
        _os_log_impl(&_mh_execute_header, v51, v64, "Added keychain item: %@", v65, 0xCu);
        sub_100005508(v66, &qword_100975400, &qword_1007F65D0);
      }
    }
  }

  else
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *v25 = 138412546;
      v27.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
      *(v25 + 4) = v27;
      v26->super.isa = v27.super.isa;
      *(v25 + 12) = 1024;
      *(v25 + 14) = v22;
      _os_log_impl(&_mh_execute_header, v23, v24, "Failed to delete keychain item: %@, error: %d", v25, 0x12u);
      sub_100005508(v26, &qword_100975400, &qword_1007F65D0);
    }

    _StringGuts.grow(_:)(44);
    v28._countAndFlagsBits = 0xD000000000000020;
    v28._object = 0x8000000100788F60;
    String.append(_:)(v28);
    v29 = Dictionary._bridgeToObjectiveC()().super.isa;
    type metadata accessor for CFDictionary(0);
    _print_unlocked<A, B>(_:_:)();

    v30._countAndFlagsBits = 0x3A726F727265202CLL;
    v30._object = 0xE800000000000000;
    String.append(_:)(v30);
    v72 = __PAIR64__(HIDWORD(v29), v22);
    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v31);

    v32 = sub_100010F88(10, 0, 0xE000000000000000);
    v34 = v33;
    sub_1000115C8();
    swift_allocError();
    *v35 = v32;
    *(v35 + 8) = v34;
    swift_willThrow();
  }
}

uint64_t sub_100288320()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100974CF0);
  v1 = sub_10000C4AC(v0, qword_100974CF0);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t sub_1002883E8(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v2[4] = v3;
  v4 = *(v3 - 8);
  v2[5] = v4;
  v5 = *(v4 + 64) + 15;
  v2[6] = swift_task_alloc();
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v2[7] = v6;
  v7 = *(v6 - 8);
  v2[8] = v7;
  v8 = *(v7 + 64) + 15;
  v2[9] = swift_task_alloc();
  v9 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v2[10] = v9;
  v10 = *(v9 - 8);
  v2[11] = v10;
  v11 = *(v10 + 64) + 15;
  v2[12] = swift_task_alloc();
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v12 = static AirDropActor.shared;

  return _swift_task_switch(sub_100288598, v12, 0);
}

uint64_t sub_100288598()
{
  v59 = v0;
  v1 = v0[2];
  v2 = *(SFAirDropReceive.AskRequest.files.getter() + 16);

  if (v2 < 2)
  {
    goto LABEL_3;
  }

  v3 = v0[2];
  v4 = *(SFAirDropReceive.AskRequest.urlItems.getter() + 16);

  if (v4)
  {
    goto LABEL_3;
  }

  v11 = v0[2];
  v12 = SFAirDropReceive.AskRequest.files.getter();
  v13 = v12;
  v14 = *(v12 + 16);
  if (!v14)
  {

LABEL_3:
    v5 = 0;
    goto LABEL_4;
  }

  v15 = 0;
  v16 = v0[11];
  v54 = *(v16 + 16);
  v17 = v12 + ((*(v16 + 80) + 32) & ~*(v16 + 80));
  v52 = (v16 + 8);
  v48 = *(v16 + 72);
  v50 = v14 - 1;
  v18 = 1;
  v57 = v0;
  do
  {
    v19 = v0[12];
    v20 = v0[10];
    v54(v19, v17, v20);
    SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
    v21 = String._bridgeToObjectiveC()();

    v22 = SFIsePub();

    SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
    (*v52)(v19, v20);
    v23 = String._bridgeToObjectiveC()();

    LOBYTE(v20) = SFIsPDF();

    if ((v20 & 1) == 0 && (v22 & 1) == 0)
    {

      v5 = 0;
      v0 = v57;
      goto LABEL_4;
    }

    if (v18)
    {
      v0 = v57;
      if (v50 == v15)
      {

        if (v22)
        {
          goto LABEL_3;
        }

        goto LABEL_20;
      }
    }

    else
    {
      v0 = v57;
      if (v50 == v15)
      {

LABEL_20:
        v24 = objc_allocWithZone(LSApplicationRecord);
        v25 = sub_10066F3F8(0xD000000000000010, 0x8000000100788310, 1);
        v46 = v0[3];
        v47 = *(v46 + 16);
        *(v46 + 16) = v25;

        goto LABEL_24;
      }

      v22 = 0;
    }

    ++v15;
    v17 += v48;
    v18 = v22;
  }

  while (v15 < *(v13 + 16));
  __break(1u);
  swift_once();
  v27 = v0[8];
  v26 = v0[9];
  v28 = v0[7];
  v29 = v0[2];
  v30 = type metadata accessor for Logger();
  sub_10000C4AC(v30, qword_100974CF0);
  (*(v27 + 16))(v26, v29, v28);
  swift_errorRetain();
  v31 = Logger.logObject.getter();
  v32 = static os_log_type_t.error.getter();

  v33 = os_log_type_enabled(v31, v32);
  v34 = v0[8];
  v35 = v0[9];
  v36 = v0[7];
  if (v33)
  {
    v38 = v0[5];
    v37 = v0[6];
    v39 = v57[4];
    v51 = v0[7];
    v40 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v58 = v56;
    *v40 = 136315394;
    v53 = v31;
    SFAirDropReceive.AskRequest.id.getter();
    sub_1002891F4();
    v41 = dispatch thunk of CustomStringConvertible.description.getter();
    v49 = v32;
    v43 = v42;
    v0 = v57;
    (*(v38 + 8))(v37, v39);
    (*(v34 + 8))(v35, v51);
    v44 = sub_10000C4E4(v41, v43, &v58);

    *(v40 + 4) = v44;
    *(v40 + 12) = 2112;
    swift_errorRetain();
    v45 = _swift_stdlib_bridgeErrorToNSError();
    *(v40 + 14) = v45;
    *v55 = v45;
    _os_log_impl(&_mh_execute_header, v53, v49, "Failed to get Books app for ask request %s: %@", v40, 0x16u);
    sub_10028924C(v55);

    sub_10000C60C(v56);
  }

  else
  {

    (*(v34 + 8))(v35, v36);
  }

LABEL_24:
  v5 = *(v0[3] + 16) != 0;
LABEL_4:
  v6 = v0[12];
  v7 = v0[9];
  v8 = v0[6];

  v9 = v0[1];

  return v9(v5);
}

uint64_t sub_100288A84@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v37 = a2;
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v33 - v10;
  v12 = *(a1 + 16);
  v36 = *(v2 + 16);
  v13 = v36;
  v34 = a1;
  v35 = v12;
  if (v12)
  {
    v15 = *(v5 + 16);
    v14 = v5 + 16;
    v39 = (*(v14 + 64) + 32) & ~*(v14 + 64);
    v16 = a1 + v39;
    v17 = *(v14 + 56);
    v42 = (v14 + 16);
    v43 = v15;
    v38 = (v14 - 8);
    v18 = _swiftEmptyArrayStorage;
    v40 = v9;
    v41 = v14;
    v15(v11, a1 + v39, v4);
    while (1)
    {
      if (URL.isFileURL.getter())
      {
        (*v38)(v11, v4);
      }

      else
      {
        v19 = *v42;
        (*v42)(v9, v11, v4);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v44 = v18;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10028FAB4(0, v18[2] + 1, 1);
          v18 = v44;
        }

        v22 = v18[2];
        v21 = v18[3];
        if (v22 >= v21 >> 1)
        {
          sub_10028FAB4(v21 > 1, v22 + 1, 1);
          v18 = v44;
        }

        v18[2] = v22 + 1;
        v23 = v18 + v39 + v22 * v17;
        v9 = v40;
        v19(v23, v40, v4);
      }

      v16 += v17;
      if (!--v12)
      {
        break;
      }

      v43(v11, v16, v4);
    }
  }

  else
  {
    v18 = _swiftEmptyArrayStorage;
  }

  v24 = v18[2];
  if (v24)
  {
    if (v24 != v35)
    {
      if (qword_1009737B0 != -1)
      {
        swift_once();
      }

      v25 = type metadata accessor for Logger();
      sub_10000C4AC(v25, qword_10097B528);
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&_mh_execute_header, v26, v27, "Asked to view mixed files and links, only viewing links", v28, 2u);
      }
    }

    v44 = 0;
    v29 = swift_allocObject();
    v30 = v36;
    *(v29 + 16) = v18;
    *(v29 + 24) = v30;
  }

  else
  {

    v44 = 0;
    v31 = swift_allocObject();
    *(v31 + 16) = v36;
    *(v31 + 24) = 1;
    *(v31 + 32) = v34;
  }

  return SFProgressTask.init(_:initialProgress:operation:file:line:)();
}

uint64_t sub_100288ECC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_100288F30@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for SDAirDropContentHandleriBooksItems();
  result = swift_allocObject();
  *(result + 16) = 0;
  *a1 = result;
  return result;
}

uint64_t sub_100288F68(uint64_t a1)
{
  v4 = *v1;
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_100289000;

  return sub_1002883E8(a1);
}

uint64_t sub_100289000(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_100289124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *(v3 + 16);
  v9 = *(v3 + 24);
  v10 = *(v3 + 32);
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_100005C04;

  return sub_1003D0964(a1, a2, a3, v8, v9, v10);
}

unint64_t sub_1002891F4()
{
  result = qword_100977BF0;
  if (!qword_100977BF0)
  {
    type metadata accessor for SFAirDrop.TransferIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100977BF0);
  }

  return result;
}

uint64_t sub_10028924C(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100975400, &qword_1007F65D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002892B4()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100974DE0);
  sub_10000C4AC(v0, qword_100974DE0);
  return static Logger.airDropNWClient.getter();
}

uint64_t SFAirDropReceive.AskRequest.init(recordID:initialInfo:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v194 = a3;
  v176 = a4;
  v172 = type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription();
  v171 = *(v172 - 1);
  v6 = v171[8];
  __chkstk_darwin(v172);
  v170 = (&v146 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v169 = type metadata accessor for String.Encoding();
  v168 = *(v169 - 8);
  v8 = v168[8];
  __chkstk_darwin(v169);
  v167 = &v146 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_10028088C(&qword_100974DF8, &qword_10080F350);
  v11 = *(*(v10 - 8) + 64);
  v12 = __chkstk_darwin(v10 - 8);
  v174 = &v146 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v177 = &v146 - v14;
  v180 = type metadata accessor for SFAirDrop.TransferType();
  v178 = *(v180 - 8);
  v15 = *(v178 + 64);
  v16 = __chkstk_darwin(v180);
  v175 = &v146 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v179 = &v146 - v18;
  v181 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v187 = *(v181 - 8);
  v19 = v187[8];
  __chkstk_darwin(v181);
  v182 = &v146 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21 - 8);
  v183 = (&v146 - v23);
  v188 = type metadata accessor for URL();
  v186 = *(v188 - 1);
  v24 = *(v186 + 64);
  v25 = __chkstk_darwin(v188);
  v184 = &v146 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v185 = &v146 - v27;
  v189 = type metadata accessor for SFAirDrop.TransferIdentifier();
  v191 = *(v189 - 8);
  v28 = *(v191 + 64);
  v29 = __chkstk_darwin(v189);
  v173 = &v146 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v190 = &v146 - v31;
  v32 = sub_10028088C(&unk_100976120, &qword_1007F9260);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32);
  v35 = &v146 - v34;
  v36 = type metadata accessor for UUID();
  v192 = *(v36 - 8);
  v37 = *(v192 + 64);
  v38 = __chkstk_darwin(v36);
  v40 = &v146 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v38);
  v42 = &v146 - v41;
  UUID.init(uuidString:)();
  v197 = 0;
  v198 = 0xE000000000000000;
  _StringGuts.grow(_:)(21);

  v197 = 0xD000000000000013;
  v198 = 0x8000000100789090;
  v43._countAndFlagsBits = a1;
  v43._object = a2;
  String.append(_:)(v43);
  v44 = v193;
  Optional.tryUnwrap(_:file:line:)();
  v45 = v44;
  if (v44)
  {
    sub_100005508(v35, &unk_100976120, &qword_1007F9260);
  }

  v193 = "UUID from recordID ";
  v166 = a2;
  sub_100005508(v35, &unk_100976120, &qword_1007F9260);

  v47 = v192;
  (*(v192 + 16))(v40, v42, v36);
  v48 = v190;
  SFAirDrop.TransferIdentifier.init(_:)();
  if (!kSFOperationVerifiableIdentityKey)
  {
    __break(1u);
LABEL_115:
    result = kSFOperationSenderIDKey;
    if (!kSFOperationSenderIDKey)
    {
      goto LABEL_173;
    }

    v153 = v197;
    v154 = v198;
    result = NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    if (v48)
    {

      goto LABEL_127;
    }

LABEL_120:
    v115 = v197;
    v114 = v198;
    if (!v198)
    {
      v115 = 63;
    }

    v151 = v115;
    if (!v198)
    {
      v114 = 0xE100000000000000;
    }

    v152 = v114;
    if (!kSFOperationSenderNodeKey)
    {
      goto LABEL_174;
    }

    SFNodeGetTypeID();
    NSDictionary.sf_optionalValue<A>(_:as:cfTypeID:file:line:)();
    if (!v48)
    {
      if (v197)
      {
        v116 = SFNodeCopyContactIdentifier();
        if (v116)
        {
          v117 = v116;
          v149 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v150 = v118;

          goto LABEL_134;
        }
      }

LABEL_133:
      v149 = 0;
      v150 = 0;
LABEL_134:
      NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
      v165 = v48;
      if (v48)
      {

        goto LABEL_136;
      }

LABEL_139:
      v148 = v198;
      if (!v198)
      {
        goto LABEL_151;
      }

      v119 = v197;
      v120 = v167;
      static String.Encoding.utf8.getter();
      v147 = v119;
      v121 = String.data(using:allowLossyConversion:)();
      v123 = v122;
      (v168[1])(v120, v169);
      v195 = v121;
      v196 = v123;
      sub_10028088C(&qword_100974E10, &qword_1007FC4C0);
      v124 = v165;
      Optional.tryUnwrap(_:file:line:)();
      v165 = v124;
      if (!v124)
      {
LABEL_143:
        sub_10028BCC0(v195, v196);
        v125 = v197;
        v126 = v198;
        v127 = type metadata accessor for JSONDecoder();
        v128 = *(v127 + 48);
        v129 = *(v127 + 52);
        swift_allocObject();
        JSONDecoder.init()();
        sub_10000CE2C(&qword_100974E18, &type metadata accessor for SFAirDropReceive.AskRequest.AdvancedItemsDescription);
        v168 = v125;
        v169 = v126;
        v130 = v165;
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v165 = v130;
        if (v130)
        {

          if (qword_100973520 != -1)
          {
            goto LABEL_171;
          }

          goto LABEL_145;
        }

        goto LABEL_148;
      }

      sub_10028BCC0(v195, v196);
LABEL_136:
      (*(v178 + 8))(v179, v180);
      (*(v191 + 8))(v47, v189);
      return (*(v192 + 8))(v163, v164);
    }

LABEL_127:

    goto LABEL_128;
  }

  v49 = v42;
  v50 = v194;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v51 = v191;
  result = kSFOperationSenderIsMeKey;
  if (!kSFOperationSenderIsMeKey)
  {
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v52 = v197;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v163 = v49;
  v164 = v36;
  v53 = v197;
  sub_1000276B4(0, &qword_100974730, NSUserDefaults_ptr);
  v54 = static NSUserDefaults.airdrop.getter();
  v55 = SFAirDropUserDefaults.alwaysAutoAccept.getter();

  if (v55)
  {
    v159 = 1;
    v56 = v192;
    v47 = v187;
  }

  else
  {
    v47 = v187;
    if (!kSFOperationAutoAcceptKey)
    {
      __break(1u);
      goto LABEL_139;
    }

    NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    v56 = v192;
    v159 = v197;
  }

  v160 = v53;
  if (!kSFOperationItemsKey)
  {
    __break(1u);
    goto LABEL_133;
  }

  v57 = sub_1000276B4(0, &qword_1009765C0, NSArray_ptr);
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v158 = v57;
  v58 = v197;
  v157 = v52;
  if (v197)
  {
    sub_1000276B4(0, &qword_100974E28, NSString_ptr);
    v59 = NSArray.tryCastElements<A>(as:)();
    v165 = 0;
    v156 = v58;
    if (v59 >> 62)
    {
      v90 = v59;
      v72 = _CocoaArrayWrapper.endIndex.getter();
      v59 = v90;
      if (v72)
      {
LABEL_18:
        v73 = 0;
        v184 = (v59 & 0xC000000000000001);
        v162 = (v59 & 0xFFFFFFFFFFFFFF8);
        v74 = _swiftEmptyArrayStorage;
        v161 = v72;
        do
        {
          if (v184)
          {
            v58 = v59;
            v75 = specialized _ArrayBuffer._getElementSlowPath(_:)();
            v76 = (v73 + 1);
            if (__OFADD__(v73, 1))
            {
              goto LABEL_50;
            }
          }

          else
          {
            if (v73 >= v162[2])
            {
              goto LABEL_51;
            }

            v58 = v59;
            v75 = *(v59 + 8 * v73 + 32);
            v76 = (v73 + 1);
            if (__OFADD__(v73, 1))
            {
LABEL_50:
              __break(1u);
LABEL_51:
              __break(1u);
LABEL_52:
              __break(1u);
LABEL_53:
              __break(1u);
              swift_once();
              v60 = type metadata accessor for Logger();
              sub_10000C4AC(v60, qword_100974DE0);
              swift_errorRetain();
              v51 = v58;
              v61 = Logger.logObject.getter();
              v62 = static os_log_type_t.fault.getter();

              if (os_log_type_enabled(v61, v62))
              {
                v63 = swift_slowAlloc();
                v64 = swift_slowAlloc();
                v65 = swift_slowAlloc();
                v156 = v58;
                v66 = v65;
                v197 = v65;
                *v63 = 136315394;
                swift_getErrorValue();
                v67 = Error.localizedDescription.getter();
                v69 = sub_10000C4E4(v67, v68, &v197);

                *(v63 + 4) = v69;
                v50 = v194;
                *(v63 + 12) = 2112;
                *(v63 + 14) = v51;
                *v64 = v156;
                v70 = v51;
                _os_log_impl(&_mh_execute_header, v61, v62, "Failed to get items as strings, trying again as URLs {error: %s, rawURLItems: %@}", v63, 0x16u);
                sub_100005508(v64, &qword_100975400, &qword_1007F65D0);

                sub_10000C60C(v66);
              }

              sub_1000276B4(0, &unk_100974E30, NSURL_ptr);
              v71 = NSArray.tryCastElements<A>(as:)();
              v162 = 0;
              v56 = v71;
              if (!(v71 >> 62))
              {
                v81 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
                goto LABEL_33;
              }

              goto LABEL_92;
            }
          }

          v77 = String.init(_:)(v75);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v74 = sub_10028E1C8(0, *(v74 + 2) + 1, 1, v74);
          }

          v79 = *(v74 + 2);
          v78 = *(v74 + 3);
          v80 = v74;
          v50 = (v79 + 1);
          if (v79 >= v78 >> 1)
          {
            v80 = sub_10028E1C8((v78 > 1), v79 + 1, 1, v74);
          }

          v74 = v80;
          *(v80 + 2) = v50;
          *&v80[16 * v79 + 32] = v77;
          ++v73;
          v45 = v165;
          v47 = v187;
          v59 = v58;
        }

        while (v76 != v161);
        goto LABEL_56;
      }
    }

    else
    {
      v72 = *((v59 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v72)
      {
        goto LABEL_18;
      }
    }

    v74 = _swiftEmptyArrayStorage;
LABEL_56:

    v184 = *(v74 + 2);
    if (v184)
    {
      v50 = 0;
      v162 = (v186 + 48);
      v161 = (v186 + 32);
      v91 = (v74 + 40);
      v92 = _swiftEmptyArrayStorage;
      v56 = v183;
      do
      {
        if (v50 >= *(v74 + 2))
        {
          __break(1u);
          goto LABEL_90;
        }

        v93 = *(v91 - 1);
        v94 = *v91;

        URL.init(string:)();

        v95 = v188;
        if ((*v162)(v56, 1, v188) == 1)
        {
          sub_100005508(v56, &unk_100974E00, &qword_1007F8940);
        }

        else
        {
          v96 = *v161;
          (*v161)(v185, v56, v95);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v92 = sub_10028F3DC(0, *(v92 + 2) + 1, 1, v92, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
          }

          v98 = *(v92 + 2);
          v97 = *(v92 + 3);
          if (v98 >= v97 >> 1)
          {
            v92 = sub_10028F3DC(v97 > 1, v98 + 1, 1, v92, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
          }

          *(v92 + 2) = v98 + 1;
          v96(&v92[((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v98]);
          v56 = v183;
        }

        ++v50;
        v91 += 2;
        v45 = v165;
      }

      while (v184 != v50);
    }

    else
    {
      v92 = _swiftEmptyArrayStorage;
    }

    v188 = sub_1002929F0(v92);

    v48 = v190;
    v50 = v194;
    v56 = v192;
    goto LABEL_69;
  }

  v188 = &_swiftEmptySetSingleton;
LABEL_69:
  v89 = v160;
  while (1)
  {
    if (!kSFOperationFilesKey)
    {
      __break(1u);
      goto LABEL_143;
    }

    NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    if (v45)
    {

      (*(v51 + 8))(v48, v189);
      return (*(v56 + 8))(v163, v164);
    }

    v99 = v197;
    if (!v197)
    {
      v101 = &_swiftEmptySetSingleton;
      goto LABEL_96;
    }

    sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
    v100 = NSArray.tryCastElements<A>(as:)();
    v51 = v100;
    v183 = v99;
    if (v100 >> 62)
    {
      break;
    }

    v102 = *((v100 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v102)
    {
      goto LABEL_94;
    }

LABEL_78:
    v48 = 0;
    v197 = _swiftEmptyArrayStorage;
    v186 = v102;
    result = sub_10028FAF8(0, v102 & ~(v102 >> 63), 0);
    if (v186 < 0)
    {
      __break(1u);
      goto LABEL_119;
    }

    v103 = 0;
    v104 = v197;
    v184 = (v51 & 0xFFFFFFFFFFFFFF8);
    v185 = (v47 + 4);
    while (1)
    {
      v105 = v103 + 1;
      if (__OFADD__(v103, 1))
      {
        break;
      }

      v50 = v182;
      if ((v51 & 0xC000000000000001) != 0)
      {
        v106 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v103 >= *(v184 + 2))
        {
          goto LABEL_91;
        }

        v106 = *(v51 + 8 * v103 + 32);
      }

      sub_10028BF2C(v106, v50);
      v50 = v89;
      v197 = v104;
      v108 = v104[2];
      v107 = v104[3];
      if (v108 >= v107 >> 1)
      {
        sub_10028FAF8(v107 > 1, v108 + 1, 1);
        v104 = v197;
      }

      v104[2] = v108 + 1;
      (v187[4])(v104 + ((*(v187 + 80) + 32) & ~*(v187 + 80)) + v187[9] * v108, v182, v181);
      ++v103;
      v56 = v192;
      if (v105 == v186)
      {

        v48 = v190;
        goto LABEL_95;
      }
    }

LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    v81 = _CocoaArrayWrapper.endIndex.getter();
LABEL_33:
    v161 = v51;
    if (v81)
    {
      v82 = 0;
      v185 = (v56 & 0xC000000000000001);
      v183 = (v56 & 0xFFFFFFFFFFFFFF8);
      v58 = (v186 + 32);
      v83 = _swiftEmptyArrayStorage;
      while (1)
      {
        if (v185)
        {
          v85 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v84 = v184;
          v50 = (v82 + 1);
          if (__OFADD__(v82, 1))
          {
            goto LABEL_52;
          }
        }

        else
        {
          v84 = v184;
          if (v82 >= v183[2])
          {
            goto LABEL_53;
          }

          v85 = *(v56 + 8 * v82 + 32);
          v50 = (v82 + 1);
          if (__OFADD__(v82, 1))
          {
            goto LABEL_52;
          }
        }

        static URL._unconditionallyBridgeFromObjectiveC(_:)();

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v83 = sub_10028F3DC(0, v83[2] + 1, 1, v83, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
        }

        v87 = v83[2];
        v86 = v83[3];
        if (v87 >= v86 >> 1)
        {
          v83 = sub_10028F3DC(v86 > 1, v87 + 1, 1, v83, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
        }

        v83[2] = v87 + 1;
        (*(v186 + 32))(v83 + ((*(v186 + 80) + 32) & ~*(v186 + 80)) + *(v186 + 72) * v87, v84, v188);
        ++v82;
        v88 = v50 == v81;
        v50 = v194;
        if (v88)
        {
          goto LABEL_49;
        }
      }
    }

    v83 = _swiftEmptyArrayStorage;
LABEL_49:

    v188 = sub_1002929F0(v83);

    v45 = v162;
    v51 = v191;
    v56 = v192;
    v48 = v190;
    v89 = v160;
    v47 = v187;
  }

  v102 = _CocoaArrayWrapper.endIndex.getter();
  if (v102)
  {
    goto LABEL_78;
  }

LABEL_94:

  v104 = _swiftEmptyArrayStorage;
LABEL_95:
  v101 = sub_100292B8C(v104);

LABEL_96:
  v109 = v101[2];

  v187 = v101;
  if (v109 || !v188[2])
  {
    v110 = &enum case for SFAirDrop.TransferType.files(_:);
  }

  else
  {
    v110 = &enum case for SFAirDrop.TransferType.links(_:);
  }

  v47 = v178;
  (*(v178 + 104))(v179, *v110, v180);
  if (!kSFOperationItemsDescriptionKey)
  {
    __break(1u);
LABEL_148:
    sub_100026AC0(v168, v169);

    (v171[4])(v177, v170, v172);
    v140 = 0;
    goto LABEL_152;
  }

  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (!kSFOperationBundleIDKey)
  {
    __break(1u);
LABEL_159:
    if (!v197)
    {
LABEL_164:
      v193 = 0;
      goto LABEL_165;
    }

    v193 = sub_100117BD4(v197);
    if (v193)
    {
      swift_unknownObjectRelease();
      v142 = v193;
LABEL_165:
      v143 = v191;
      (*(v191 + 16))(v173, v47, v189);
      v144 = v178;
      (*(v178 + 16))(v175, v179, v180);
      sub_10000FF90(v177, v174, &qword_100974DF8, &qword_10080F350);
      v145 = v193;
      SFAirDropReceive.AskRequest.init(id:type:transferTypes:canAutoAccept:verifiableIdentity:senderIsMe:contactIdentifier:senderBundleID:senderComputerName:senderModelName:senderEmail:senderEmailHash:senderCompositeName:senderFirstName:senderLastName:senderID:senderIcon:smallPreviewImage:previewImage:itemsDescription:itemsDescriptionAdvanced:urlItems:items:customPayload:)();

      sub_100005508(v177, &qword_100974DF8, &qword_10080F350);
      (*(v144 + 8))(v179, v180);
      (*(v143 + 8))(v190, v189);
      return (*(v192 + 8))(v163, v164);
    }

LABEL_163:
    swift_unknownObjectRelease();
    goto LABEL_164;
  }

  v111 = v198;
  NSDictionary.sf_value<A>(_:as:file:line:)();
  v186 = v111;
  if (!kSFOperationSenderComputerNameKey)
  {
    __break(1u);
    goto LABEL_163;
  }

  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v112 = v197;
  if (!v198)
  {
    v112 = 63;
  }

  v185 = v112;
  if (!kSFOperationSenderModelNameKey)
  {
    __break(1u);
LABEL_167:
    __break(1u);
    goto LABEL_168;
  }

  v47 = v48;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v113 = v197;
  if (!v198)
  {
    v113 = 63;
  }

  v184 = v113;
  if (!kSFOperationSenderEmailKey)
  {
    goto LABEL_167;
  }

  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v48 = 0;
  if (!kSFOperationSenderEmailHashKey)
  {
LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

  v182 = v197;
  v183 = v198;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (!kSFOperationSenderCompositeNameKey)
  {
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

  v162 = v197;
  v181 = v198;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (kSFOperationSenderFirstNameKey)
  {
    v158 = v197;
    v161 = v198;
    NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    result = kSFOperationSenderLastNameKey;
    if (kSFOperationSenderLastNameKey)
    {
      v155 = v197;
      v156 = v198;
      NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
      goto LABEL_115;
    }

    __break(1u);
LABEL_173:
    __break(1u);
LABEL_174:
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
    goto LABEL_177;
  }

LABEL_170:
  __break(1u);
LABEL_171:
  swift_once();
LABEL_145:
  v131 = type metadata accessor for Logger();
  sub_10000C4AC(v131, qword_100974DE0);
  swift_errorRetain();

  v132 = Logger.logObject.getter();
  v133 = static os_log_type_t.fault.getter();

  LODWORD(v167) = v133;
  v170 = v132;
  if (os_log_type_enabled(v132, v133))
  {
    v134 = swift_slowAlloc();
    v146 = swift_slowAlloc();
    v197 = v146;
    *v134 = 136315394;
    swift_getErrorValue();
    v135 = Error.localizedDescription.getter();
    v137 = sub_10000C4E4(v135, v136, &v197);

    *(v134 + 4) = v137;
    *(v134 + 12) = 2080;
    v138 = sub_10000C4E4(v147, v148, &v197);

    *(v134 + 14) = v138;
    v139 = v170;
    _os_log_impl(&_mh_execute_header, v170, v167, "Failed to decode advanced items description {error: %s, itemsDescription: %s}", v134, 0x16u);
    swift_arrayDestroy();

    sub_100026AC0(v168, v169);
  }

  else
  {
    sub_100026AC0(v168, v169);
  }

  v165 = 0;
LABEL_151:
  v140 = 1;
LABEL_152:
  result = (v171[7])(v177, v140, 1, v172);
  if (!kSFOperationSmallFileIconKey)
  {
    goto LABEL_175;
  }

  type metadata accessor for CGImage(0);
  v141 = v165;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (!v141)
  {
    result = kSFOperationFileIconKey;
    if (!kSFOperationFileIconKey)
    {
      goto LABEL_176;
    }

    v172 = v197;
    result = NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    if (!kSFOperationSenderIconKey)
    {
LABEL_177:
      __break(1u);
      return result;
    }

    v171 = v197;

    NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
    v165 = 0;
    goto LABEL_159;
  }

  sub_100005508(v177, &qword_100974DF8, &qword_10080F350);
LABEL_128:
  (*(v178 + 8))(v179, v180);
  (*(v191 + 8))(v47, v189);
  return (*(v192 + 8))(v163, v164);
}

uint64_t sub_10028BCC0(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100026AC0(a1, a2);
  }

  return a1;
}

void sub_10028BCD4(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
  sub_100027D9C(&qword_100974E48, &qword_100974E40, SFAirDropTransferItem_ptr);
  v3 = 0;
  v10[1] = Set.init(minimumCapacity:)();
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;
  while (v6)
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    sub_10046D844(v10, *(*(a1 + 56) + ((v8 << 9) | (8 * v9))));
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
}

uint64_t sub_10028BE10(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = Set.init(minimumCapacity:)();
  v4 = 0;
  v15 = result;
  v5 = 1 << *(a1 + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(a1 + 64);
  for (i = (v5 + 63) >> 6; v7; result = )
  {
    v9 = v4;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v11 = (*(a1 + 48) + ((v9 << 10) | (16 * v10)));
    v12 = *v11;
    v13 = v11[1];

    sub_10046DAAC(&v14, v12, v13);
  }

  while (1)
  {
    v9 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v9 >= i)
    {

      return v15;
    }

    v7 = *(a1 + 64 + 8 * v9);
    ++v4;
    if (v7)
    {
      v4 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

void sub_10028BF2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v99 = a2;
  v4 = type metadata accessor for URL.DirectoryHint();
  v108 = *(v4 - 8);
  v109 = v4;
  v5 = *(v108 + 64);
  __chkstk_darwin(v4);
  v107 = v85 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v104 = v85 - v9;
  v10 = type metadata accessor for URL();
  v105 = *(v10 - 8);
  v106 = v10;
  v11 = *(v105 + 64);
  __chkstk_darwin(v10);
  v103 = v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_10028088C(&qword_100975180, &qword_100805430);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v113 = v85 - v17;
  v18 = __chkstk_darwin(v16);
  v98 = v85 - v19;
  v20 = __chkstk_darwin(v18);
  v22 = v85 - v21;
  v23 = __chkstk_darwin(v20);
  v25 = v85 - v24;
  v26 = __chkstk_darwin(v23);
  v100 = v85 - v27;
  v28 = __chkstk_darwin(v26);
  v110 = v85 - v29;
  __chkstk_darwin(v28);
  v31 = v85 - v30;
  v115 = type metadata accessor for UTType();
  v117 = *(v115 - 8);
  v32 = *(v117 + 64);
  v33 = __chkstk_darwin(v115);
  v112 = v85 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __chkstk_darwin(v33);
  v101 = v85 - v36;
  v37 = __chkstk_darwin(v35);
  v102 = v85 - v38;
  v39 = __chkstk_darwin(v37);
  v111 = v85 - v40;
  v41 = __chkstk_darwin(v39);
  __chkstk_darwin(v41);
  v114 = v85 - v42;
  if (!kSFOperationFileNameKey)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  NSDictionary.sf_value<A>(_:as:file:line:)();
  if (v2)
  {

    return;
  }

  v97 = "UUID from recordID ";
  v95 = v25;
  v96 = v22;
  if (!kSFOperationFileTypeKey)
  {
    goto LABEL_29;
  }

  v44 = v116[0];
  v43 = v116[1];
  NSDictionary.sf_value<A>(_:as:file:line:)();
  v93 = v44;
  v94 = v43;
  if (!kSFOperationFileBomPathKey)
  {
LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  v45 = v116[0];
  v46 = v116[1];
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v91 = v45;
  v92 = v46;
  v47 = v116[0];
  if (!v116[1])
  {
    v47 = 4271950;
  }

  v90 = v47;
  if (v116[1])
  {
    v48 = v116[1];
  }

  else
  {
    v48 = 0xE300000000000000;
  }

  if (!kSFOperationFileIsDirectoryKey)
  {
    goto LABEL_31;
  }

  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v89 = a1;
  v88 = v13;
  if (!kSFOperationConvertMediaFormatsKey)
  {
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return;
  }

  v49 = LOBYTE(v116[0]);
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  v86 = v48;
  v85[1] = v49;
  v85[0] = LOBYTE(v116[0]);
  v50 = v92;

  v51 = v91;
  UTType.init(_:)();
  v116[0] = 0;
  v116[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(16);

  HIWORD(v116[1]) = -4864;
  v52._countAndFlagsBits = v51;
  v52._object = v50;
  String.append(_:)(v52);
  v53._countAndFlagsBits = 96;
  v53._object = 0xE100000000000000;
  String.append(_:)(v53);
  Optional.tryUnwrap(_:file:line:)();
  v87 = 0;
  sub_100005508(v31, &qword_100975180, &qword_100805430);
  v54 = v115;

  v55 = v117;
  v56 = *(v117 + 32);
  v57 = v114;
  v56();
  if (UTType.isDynamic.getter())
  {
    v58 = v105;
    v59 = v106;
    (*(v105 + 56))(v104, 1, 1, v106);
    (*(v108 + 104))(v107, enum case for URL.DirectoryHint.inferFromPath(_:), v109);

    v60 = v103;
    URL.init(filePath:directoryHint:relativeTo:)();
    v61 = URL.pathExtension.getter();
    v63 = v62;
    (*(v58 + 8))(v60, v59);

    static UTType.data.getter();
    v64 = v110;
    UTType.init(filenameExtension:conformingTo:)();
    v116[0] = 0;
    v116[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v116[0] = 0xD00000000000001BLL;
    v116[1] = 0x8000000100789160;
    v65._countAndFlagsBits = v61;
    v65._object = v63;
    String.append(_:)(v65);
    v66 = v64;

    v67 = v102;
    v68 = v87;
    Optional.tryUnwrap(_:file:line:)();
    v69 = v68;
    if (v68)
    {

      sub_100005508(v66, &qword_100975180, &qword_100805430);
      (*(v117 + 8))(v114, v115);
      return;
    }

    sub_100005508(v66, &qword_100975180, &qword_100805430);

    v71 = v111;
    v54 = v115;
    (v56)(v111, v67, v115);
    v70 = v71;
    v55 = v117;
  }

  else
  {
    v70 = v111;
    (*(v55 + 16))(v111, v57, v54);
    v69 = v87;
  }

  if (!kSFOperationtFileSubTypeKey)
  {
    goto LABEL_33;
  }

  v72 = v89;
  NSDictionary.sf_optionalValue<A>(_:as:file:line:)();
  if (v69)
  {

    v73 = *(v55 + 8);
    v73(v70, v54);
    v73(v114, v54);
  }

  else
  {
    v74 = v116[1];
    if (v116[1])
    {
      v75 = v116[0];

      v76 = v96;
      UTType.init(_:)();
      v116[0] = 0;
      v116[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(16);

      HIWORD(v116[1]) = -4864;
      v77._countAndFlagsBits = v75;
      v77._object = v74;
      String.append(_:)(v77);

      v78._countAndFlagsBits = 96;
      v78._object = 0xE100000000000000;
      String.append(_:)(v78);
      v79 = v95;
      Optional.tryUnwrap(_:file:line:)();
      sub_100005508(v76, &qword_100975180, &qword_100805430);

      v80 = v117;
      (*(v117 + 56))(v79, 0, 1, v54);
      v81 = v79;
      v82 = v100;
      v55 = v80;
      sub_10002C4E4(v81, v100, &qword_100975180, &qword_100805430);
    }

    else
    {
      v82 = v100;
      (*(v55 + 56))(v100, 1, 1, v54);
    }

    v83 = v98;
    sub_10000FF90(v82, v98, &qword_100975180, &qword_100805430);
    if ((*(v55 + 48))(v83, 1, v54) == 1)
    {
      sub_100005508(v83, &qword_100975180, &qword_100805430);
    }

    else
    {
      UTType.identifier.getter();
      (*(v55 + 8))(v83, v54);
    }

    UTType.identifier.getter();
    SFAirDropReceive.AskRequest.ItemInfo.init(convertMediaFormats:fileBomPath:fileIsDirectory:fileName:fileSubType:fileType:)();

    sub_100005508(v100, &qword_100975180, &qword_100805430);
    v84 = *(v55 + 8);
    v84(v70, v54);
    v84(v114, v54);
  }
}

unint64_t sub_10028D050()
{
  v0 = sub_10027FD18(_swiftEmptyArrayStorage);
  *&v26 = kSFOperationConvertMediaFormatsKey;
  v1 = kSFOperationConvertMediaFormatsKey;
  sub_10028088C(&unk_100975620, &qword_1007F89E0);
  sub_100294298();
  AnyHashable.init<A>(_:)();
  v27 = &type metadata for Bool;
  LOBYTE(v26) = SFAirDropReceive.AskRequest.ItemInfo.convertMediaFormats.getter() & 1;
  sub_1000106E0(&v26, v25);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, isUniquelyReferenced_nonNull_native);
  sub_100285E74(v28);
  *&v26 = kSFOperationFileNameKey;
  v3 = kSFOperationFileNameKey;
  AnyHashable.init<A>(_:)();
  v4 = SFAirDropReceive.AskRequest.ItemInfo.fileName.getter();
  v27 = &type metadata for String;
  *&v26 = v4;
  *(&v26 + 1) = v5;
  sub_1000106E0(&v26, v25);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, v6);
  sub_100285E74(v28);
  *&v26 = kSFOperationFileTypeKey;
  v7 = kSFOperationFileTypeKey;
  AnyHashable.init<A>(_:)();
  v8 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
  v27 = &type metadata for String;
  *&v26 = v8;
  *(&v26 + 1) = v9;
  sub_1000106E0(&v26, v25);
  v10 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, v10);
  sub_100285E74(v28);
  v11 = SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
  if (v12)
  {
    v13 = v11;
    v14 = v12;
    *&v26 = kSFOperationtFileSubTypeKey;
    v15 = kSFOperationtFileSubTypeKey;
    AnyHashable.init<A>(_:)();
    v27 = &type metadata for String;
    *&v26 = v13;
    *(&v26 + 1) = v14;
    sub_1000106E0(&v26, v25);
    v16 = swift_isUniquelyReferenced_nonNull_native();
    sub_1005789A0(v25, v28, v16);
    sub_100285E74(v28);
  }

  *&v26 = kSFOperationFileBomPathKey;
  v17 = kSFOperationFileBomPathKey;
  AnyHashable.init<A>(_:)();
  v18 = SFAirDropReceive.AskRequest.ItemInfo.fileBomPath.getter();
  v27 = &type metadata for String;
  *&v26 = v18;
  *(&v26 + 1) = v19;
  sub_1000106E0(&v26, v25);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, v20);
  sub_100285E74(v28);
  *&v26 = kSFOperationFileIsDirectoryKey;
  v21 = kSFOperationFileIsDirectoryKey;
  AnyHashable.init<A>(_:)();
  v22 = SFAirDropReceive.AskRequest.ItemInfo.fileIsDirectory.getter();
  v27 = &type metadata for Bool;
  LOBYTE(v26) = v22 & 1;
  sub_1000106E0(&v26, v25);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  sub_1005789A0(v25, v28, v23);
  sub_100285E74(v28);
  return v0;
}

uint64_t SFAirDropTransferMetaData.init(transfer:)(uint64_t a1)
{
  v2 = v1;
  v109 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v107 = *(v109 - 8);
  v4 = *(v107 + 64);
  __chkstk_darwin(v109);
  v108 = &v88 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SFAirDropReceive.AskRequest();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v88 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v13 = &v88 - v12;
  v14 = type metadata accessor for SFAirDropReceive.Transfer.State();
  v15 = *(v14 - 1);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = &v88 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  SFAirDropReceive.Transfer.state.getter();
  v19 = (*(v15 + 88))(v18, v14);
  if (v19 != enum case for SFAirDropReceive.Transfer.State.waitingForAskResponse(_:))
  {
    goto LABEL_6;
  }

  v20 = *(v15 + 96);
  v15 += 96;
  v20(v18, v14);
  v21 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  (*(*(v21 - 8) + 8))(v18, v21);
  do
  {
    SFAirDropReceive.Transfer.askRequest.getter();
    v22 = SFAirDropReceive.AskRequest.urlItems.getter();
    (*(v7 + 8))(v13, v6);
    v13 = *(v22 + 16);
    if (!v13)
    {

      goto LABEL_16;
    }

    v14 = sub_10028F6B0(*(v22 + 16), 0, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
    v23 = *(type metadata accessor for URL() - 8);
    v24 = sub_100291948(&v110, &v14[(*(v23 + 80) + 32) & ~*(v23 + 80)], v13, v22);
    v19 = sub_100027D64();
    if (v24 == v13)
    {
      goto LABEL_17;
    }

    __break(1u);
LABEL_6:
    if (v19 == enum case for SFAirDropReceive.Transfer.State.analyzingFullContent(_:))
    {
      (*(v15 + 96))(v18, v14);
      v25 = sub_10028088C(&qword_100974E88, &unk_100808F30);
      v14 = *&v18[*(v25 + 48)];
      v26 = *(v25 + 80);
      v27 = type metadata accessor for SFAirDrop.DeclineAction();
      goto LABEL_12;
    }

    if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentResponse(_:) || v19 == enum case for SFAirDropReceive.Transfer.State.waitingForSensitiveContentIntervention(_:))
    {
      (*(v15 + 96))(v18, v14);
      v28 = sub_10028088C(&qword_100974E80, &qword_100808F40);
      v14 = *&v18[*(v28 + 48)];
      v26 = *(v28 + 64);
LABEL_11:
      v27 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
LABEL_12:
      (*(*(v27 - 8) + 8))(&v18[v26], v27);
LABEL_13:
      v29 = type metadata accessor for SFAirDropReceive.ItemDestination();
LABEL_14:
      (*(*(v29 - 8) + 8))(v18, v29);
      goto LABEL_17;
    }

    if (v19 == enum case for SFAirDropReceive.Transfer.State.importing(_:))
    {
      (*(v15 + 96))(v18, v14);
      v14 = *&v18[*(sub_10028088C(&qword_100974E78, &qword_1007F82D8) + 48)];
      goto LABEL_13;
    }

    if (v19 == enum case for SFAirDropReceive.Transfer.State.waitingForOpenResponse(_:))
    {
      (*(v15 + 96))(v18, v14);
      v71 = sub_10028088C(&unk_10097C670, &qword_100805110);
      v14 = *&v18[v71[12]];
      v72 = *&v18[v71[16]];

      v26 = v71[20];
      goto LABEL_11;
    }

    if (v19 == enum case for SFAirDropReceive.Transfer.State.opening(_:))
    {
      (*(v15 + 96))(v18, v14);
      v73 = sub_10028088C(&unk_100974E60, &qword_100808EC0);
      v14 = *&v18[*(v73 + 48)];
      v74 = *&v18[*(v73 + 64)];

      goto LABEL_13;
    }

    if (v19 == enum case for SFAirDropReceive.Transfer.State.completedSuccessfully(_:))
    {
      (*(v15 + 96))(v18, v14);
      v75 = sub_10028088C(&unk_10097E9B0, &unk_100808D90);
      v76 = v75[12];
      v77 = *&v18[v75[16] + 8];

      v14 = *&v18[v75[20]];
      v78 = *&v18[v75[24]];

      v79 = *&v18[v75[28]];

      v80 = type metadata accessor for SFAirDropReceive.ItemDestination();
      (*(*(v80 - 8) + 8))(&v18[v76], v80);
      v29 = type metadata accessor for SFAirDropReceive.Transfer.Metrics();
      goto LABEL_14;
    }
  }

  while (v19 == enum case for SFAirDropReceive.Transfer.State.created(_:));
  (*(v15 + 8))(v18, v14);
LABEL_16:
  v14 = _swiftEmptyArrayStorage;
LABEL_17:
  v102 = v2;
  v103 = v7;
  v104 = v6;
  SFAirDropReceive.Transfer.askRequest.getter();
  v30 = SFAirDropReceive.AskRequest.files.getter();
  v101 = sub_100293364(v30, v14);

  v31 = SFAirDropReceive.AskRequest.files.getter();
  v32 = *(v31 + 16);
  v105 = v11;
  v106 = a1;
  if (v32)
  {
    v110 = _swiftEmptyArrayStorage;
    sub_10028FB3C(0, v32, 0);
    v33 = v110;
    v34 = v107 + 16;
    v107 = *(v107 + 16);
    v35 = *(v34 + 64);
    v100 = v31;
    v36 = v31 + ((v35 + 32) & ~v35);
    v37 = *(v34 + 56);
    v38 = (v34 - 8);
    do
    {
      v39 = v108;
      v40 = v109;
      (v107)(v108, v36, v109);
      v41 = sub_10028D050();
      (*v38)(v39, v40);
      v110 = v33;
      v43 = v33[2];
      v42 = v33[3];
      if (v43 >= v42 >> 1)
      {
        sub_10028FB3C((v42 > 1), v43 + 1, 1);
        v33 = v110;
      }

      v33[2] = v43 + 1;
      v33[v43 + 4] = v41;
      v36 += v37;
      --v32;
    }

    while (v32);
  }

  LODWORD(v109) = SFAirDropReceive.AskRequest.canAutoAccept.getter();
  LODWORD(v108) = SFAirDropReceive.Transfer.didAutoAccept.getter();
  LODWORD(v107) = SFAirDropReceive.AskRequest.verifiableIdentity.getter();
  LODWORD(v100) = SFAirDropReceive.AskRequest.senderIsMe.getter();
  SFAirDropReceive.AskRequest.contactIdentifier.getter();
  if (v44)
  {
    v99 = String._bridgeToObjectiveC()();
  }

  else
  {
    v99 = 0;
  }

  SFAirDropReceive.AskRequest.senderBundleID.getter();
  v98 = String._bridgeToObjectiveC()();

  SFAirDropReceive.AskRequest.senderComputerName.getter();
  v97 = String._bridgeToObjectiveC()();

  SFAirDropReceive.AskRequest.senderEmail.getter();
  if (v45)
  {
    v95 = String._bridgeToObjectiveC()();
  }

  else
  {
    v95 = 0;
  }

  SFAirDropReceive.AskRequest.senderEmailHash.getter();
  if (v46)
  {
    v93 = String._bridgeToObjectiveC()();
  }

  else
  {
    v93 = 0;
  }

  SFAirDropReceive.AskRequest.senderCompositeName.getter();
  if (v47)
  {
    v96 = String._bridgeToObjectiveC()();
  }

  else
  {
    v96 = 0;
  }

  SFAirDropReceive.AskRequest.senderFirstName.getter();
  if (v48)
  {
    v94 = String._bridgeToObjectiveC()();
  }

  else
  {
    v94 = 0;
  }

  SFAirDropReceive.AskRequest.senderLastName.getter();
  if (v49)
  {
    v92 = String._bridgeToObjectiveC()();
  }

  else
  {
    v92 = 0;
  }

  SFAirDropReceive.AskRequest.senderID.getter();
  v50 = String._bridgeToObjectiveC()();

  v51 = SFAirDropReceive.AskRequest.senderIcon.getter();
  v52 = SFAirDropReceive.AskRequest.smallPreviewImage.getter();
  v53 = SFAirDropReceive.AskRequest.previewImage.getter();
  SFAirDropReceive.AskRequest.itemsDescription.getter();
  if (v54)
  {
    v55 = String._bridgeToObjectiveC()();
  }

  else
  {
    v55 = 0;
  }

  v89 = v55;
  v90 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  sub_1000276B4(0, &qword_100974E40, SFAirDropTransferItem_ptr);
  sub_100027D9C(&qword_100974E48, &qword_100974E40, SFAirDropTransferItem_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;
  v91 = isa;

  sub_10028088C(&unk_100974E50, &qword_1007FD600);
  v57 = Array._bridgeToObjectiveC()().super.isa;
  v102 = v57;

  v86 = isa;
  v87 = v57;
  v85 = v55;
  v84 = v53;
  v88 = v52;
  v82 = v51;
  v83 = v52;
  v58 = v51;
  v59 = v50;
  v81 = v50;
  v60 = v92;
  v61 = v94;
  v62 = v96;
  v63 = v108 & 1;
  v108 = v53;
  v64 = v93;
  v65 = v95;
  v66 = v97;
  v67 = v98;
  v68 = v99;
  v109 = [v90 initWithTransferTypes:2 canAutoAccept:v109 & 1 didAutoAccept:v63 verifiableIdentity:v107 & 1 senderIsMe:v100 & 1 contactIdentifier:v99 senderBundleID:v98 senderComputerName:v97 senderEmail:v95 senderEmailHash:v93 senderCompositeName:v96 senderFirstName:v94 senderLastName:v92 senderID:v81 senderIcon:v82 smallPreviewImage:v83 previewImage:v84 itemsDescription:v85 itemsDescriptionAdvanced:0 items:v86 rawFiles:v87];

  v69 = type metadata accessor for SFAirDropReceive.Transfer();
  (*(*(v69 - 8) + 8))(v106, v69);
  (*(v103 + 8))(v105, v104);
  return v109;
}

char *sub_10028E0AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_1009750B8, &qword_1007F8448);
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

char *sub_10028E1C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
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

void *sub_10028E320(void *result, int64_t a2, char a3, void *a4)
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
    sub_10028088C(&qword_100974ED8, &qword_1007F8300);
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
    sub_10028088C(&qword_100974EE0, &qword_1007F8308);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10028E4B8(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_10028088C(a5, a6);
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

char *sub_10028E5A4(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100974EE8, &qword_10080B560);
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

char *sub_10028E6A8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100974EB8, &qword_1008050D0);
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

char *sub_10028E848(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100974ED0, &qword_1007F82F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_10028E93C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_1009750B0, &qword_1007F8440);
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

char *sub_10028EACC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&unk_100974F20, &qword_1007F8338);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_10028EC9C(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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

  sub_10028088C(a5, a6);
  v16 = *(sub_10028088C(a7, a8) - 8);
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
  v21 = *(sub_10028088C(a7, a8) - 8);
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

char *sub_10028EEAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&unk_100985A50, &qword_1007F8340);
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

char *sub_10028EFE0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975030, &qword_1007F83D0);
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

char *sub_10028F104(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975078, &qword_1007F8418);
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

void *sub_10028F234(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10028088C(a5, a6);
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
    sub_10028088C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_10028F3DC(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10028088C(a5, a6);
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

void *sub_10028F5DC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 17;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 4);
  return result;
}

void *sub_10028F6B0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2 <= a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = a2;
  }

  if (!v5)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(a3, a4);
  v8 = *(a5(0) - 8);
  v9 = *(v8 + 72);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = swift_allocObject();
  result = j__malloc_size(v11);
  if (v9)
  {
    if ((result - v10) != 0x8000000000000000 || v9 != -1)
    {
      v11[2] = a1;
      v11[3] = 2 * ((result - v10) / v9);
      return v11;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10028F7AC(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&qword_1009750E0, &qword_1007F8458);
  v4 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = j__malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

void *sub_10028F8B4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&qword_100974F70, &unk_100804260);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_10028F93C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_10028088C(&qword_100987510, &qword_1007F83C8);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

char *sub_10028F9C0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&unk_100987410, &unk_1007FB010);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

size_t sub_10028FAB4(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &unk_100974FD0, &qword_10080E9A0, &type metadata accessor for URL);
  *v3 = result;
  return result;
}

size_t sub_10028FAF8(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100974EF0, &qword_1007F8310, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo);
  *v3 = result;
  return result;
}

void *sub_10028FB3C(void *a1, int64_t a2, char a3)
{
  result = sub_1002901C8(a1, a2, a3, *v3, &qword_100974EF8, &qword_1007F8318, &unk_100974E50, &qword_1007FD600);
  *v3 = result;
  return result;
}

char *sub_10028FB7C(char *a1, int64_t a2, char a3)
{
  result = sub_1002900B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FB9C(void *a1, int64_t a2, char a3)
{
  result = sub_1002901C8(a1, a2, a3, *v3, &qword_100974F00, &qword_1007F8320, &qword_100974F08, &unk_1007F8990);
  *v3 = result;
  return result;
}

char *sub_10028FBDC(char *a1, int64_t a2, char a3)
{
  result = sub_1002902FC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FBFC(void *a1, int64_t a2, char a3)
{
  result = sub_100290408(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FC1C(char *a1, int64_t a2, char a3)
{
  result = sub_100290550(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FC3C(char *a1, int64_t a2, char a3)
{
  result = sub_100290644(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10028FC5C(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100975130, &qword_1007F8488, &type metadata accessor for SFSandboxTokenURLPair);
  *v3 = result;
  return result;
}

char *sub_10028FCA0(char *a1, int64_t a2, char a3)
{
  result = sub_100290748(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FCC0(void *a1, int64_t a2, char a3)
{
  result = sub_100290854(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FCE0(void *a1, int64_t a2, char a3)
{
  result = sub_100291800(a1, a2, a3, *v3, &unk_100974FF0, &qword_1007F83B0, &unk_10097F090, &unk_100804740);
  *v3 = result;
  return result;
}

void *sub_10028FD20(void *a1, int64_t a2, char a3)
{
  result = sub_100291800(a1, a2, a3, *v3, &unk_100974F40, &qword_1007F8358, &unk_100985A70, &unk_10080CDC0);
  *v3 = result;
  return result;
}

size_t sub_10028FD60(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100974F30, &qword_1007F8348, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

size_t sub_10028FDA4(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100974F38, &qword_1007F8350, &type metadata accessor for SFAirDropReceive.Transfer);
  *v3 = result;
  return result;
}

char *sub_10028FDE8(char *a1, int64_t a2, char a3)
{
  result = sub_100290988(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10028FE08(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_100975120, &qword_1007F8478, &type metadata accessor for SFSecurityScopedURL);
  *v3 = result;
  return result;
}

size_t sub_10028FE4C(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_1009750F0, &qword_1007F8460, type metadata accessor for SDTempPairingEndpoint);
  *v3 = result;
  return result;
}

char *sub_10028FE90(char *a1, int64_t a2, char a3)
{
  result = sub_100290C9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FEB0(char *a1, int64_t a2, char a3)
{
  result = sub_100290DA0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_10028FED0(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &qword_1009750D0, &qword_1007FE490, type metadata accessor for SDAirDropDiscoveredEndpoint);
  *v3 = result;
  return result;
}

void *sub_10028FF14(void *a1, int64_t a2, char a3)
{
  result = sub_100290E9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FF34(char *a1, int64_t a2, char a3)
{
  result = sub_100290FE8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FF54(char *a1, int64_t a2, char a3)
{
  result = sub_10029110C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FF74(char *a1, int64_t a2, char a3)
{
  result = sub_100291210(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FF94(char *a1, int64_t a2, char a3)
{
  result = sub_10029131C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FFB4(char *a1, int64_t a2, char a3)
{
  result = sub_10029141C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_10028FFD4(char *a1, int64_t a2, char a3)
{
  result = sub_100291518(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_10028FFF4(void *a1, int64_t a2, char a3)
{
  result = sub_100291800(a1, a2, a3, *v3, &qword_100974F98, &qword_1007F8380, &qword_100974FA0, &unk_100804C70);
  *v3 = result;
  return result;
}

size_t sub_100290034(size_t a1, int64_t a2, char a3)
{
  result = sub_100291624(a1, a2, a3, *v3, &unk_100987020, &unk_10080D9D0, &type metadata accessor for UUID);
  *v3 = result;
  return result;
}

void *sub_100290078(void *a1, int64_t a2, char a3)
{
  result = sub_100291800(a1, a2, a3, *v3, &unk_100974FE0, &qword_1007F83A8, &qword_10097C6B0, &unk_100804750);
  *v3 = result;
  return result;
}

char *sub_1002900B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100974EA0, &qword_1007FBA30);
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

void *sub_1002901C8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10028088C(a5, a6);
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
    sub_10028088C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_1002902FC(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_1009750C0, &qword_1007F90F0);
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

void *sub_100290408(void *result, int64_t a2, char a3, void *a4)
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
    sub_10028088C(&unk_100974EC0, &qword_1007F82F0);
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
    sub_10028088C(&unk_10097F340, &unk_1008050C0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100290550(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100974ED0, &qword_1007F82F8);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_100290644(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&unk_100975140, &unk_1007F8490);
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

char *sub_100290748(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975108, &qword_1007F8470);
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

void *sub_100290854(void *result, int64_t a2, char a3, void *a4)
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
    sub_10028088C(&qword_1009750F8, &qword_1007F8468);
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
    sub_10028088C(&qword_100975100, &qword_1007FBA10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100290988(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975128, &qword_1007F8480);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_100290AAC(size_t result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  sub_10028088C(&qword_1009750E0, &qword_1007F8458);
  v10 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (result - v12 == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_10028088C(&qword_1009750E8, &qword_1007FBB20) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_100290C9C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975038, &qword_1007F83D8);
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

char *sub_100290DA0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975040, &qword_1007F83E0);
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

void *sub_100290E9C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10028088C(&qword_100975048, &qword_1007F83E8);
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
    sub_10028088C(&qword_100975050, &qword_1007F83F0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100290FE8(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975030, &qword_1007F83D0);
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

char *sub_10029110C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975080, &qword_1007F8420);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_100291210(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975078, &qword_1007F8418);
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

char *sub_10029131C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975070, &qword_1007F8410);
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
  v15 = 4 * v8;
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

char *sub_10029141C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&qword_100975068, &qword_1007F8408);
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

char *sub_100291518(char *result, int64_t a2, char a3, char *a4)
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
    sub_10028088C(&unk_100985A50, &qword_1007F8340);
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