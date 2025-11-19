size_t sub_100291624(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

void *sub_100291800(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_10028088C(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

uint64_t sub_100291948(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v41 = type metadata accessor for URL();
  v43 = *(v41 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v41);
  v42 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v40 = &v34 - v12;
  v13 = a4 + 56;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 56);
  if (!a2)
  {
LABEL_19:
    v32 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    *(a1 + 8) = v13;
    *(a1 + 16) = ~v14;
    *(a1 + 24) = v32;
    *(a1 + 32) = v16;
    return a3;
  }

  if (!a3)
  {
    v32 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v34 = -1 << *(a4 + 32);
    v35 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v36 = v43 + 32;
    v37 = v43 + 16;
    a1 = 1;
    v38 = a4 + 56;
    v39 = a3;
    v19 = v40;
    while (v16)
    {
      v45 = a2;
LABEL_15:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v44 = v17;
      v23 = a4;
      v24 = *(a4 + 48);
      v25 = v42;
      v26 = v43;
      v27 = *(v43 + 72);
      v28 = v41;
      (*(v43 + 16))(v42, v24 + v27 * (v22 | (v17 << 6)), v41);
      v29 = *(v26 + 32);
      v29(v19, v25, v28);
      v30 = v45;
      v29(v45, v19, v28);
      a3 = v39;
      if (a1 == v39)
      {
        v14 = v34;
        a1 = v35;
        a4 = v23;
        v32 = v44;
        v13 = v38;
        goto LABEL_25;
      }

      a2 = &v30[v27];
      result = a1;
      v31 = __OFADD__(a1++, 1);
      a4 = v23;
      v17 = v44;
      v13 = v38;
      if (v31)
      {
        __break(1u);
        goto LABEL_19;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v45 = a2;
        v17 = v21;
        goto LABEL_15;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v33 = v17 + 1;
    }

    else
    {
      v33 = v18;
    }

    v32 = v33 - 1;
    a3 = result;
    v14 = v34;
    a1 = v35;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100291BEC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      v18 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      *v11 = v18;
      if (v14 == v10)
      {
        v22 = v18;
        goto LABEL_24;
      }

      ++v11;
      v19 = v18;
      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v21 = v12 + 1;
    }

    else
    {
      v21 = (63 - v7) >> 6;
    }

    v12 = v21 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100291D40(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v8 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v33 = *(v8 - 8);
  v9 = *(v33 + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = &v30 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v10);
  v15 = &v30 - v14;
  v16 = a4 + 8;
  v17 = -1 << *(a4 + 32);
  if (-v17 < 64)
  {
    v18 = ~(-1 << -v17);
  }

  else
  {
    v18 = -1;
  }

  v19 = v18 & a4[8];
  if (!a2)
  {
LABEL_18:
    v20 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v16;
    a1[2] = ~v17;
    a1[3] = v20;
    a1[4] = v19;
    return a3;
  }

  if (!a3)
  {
    v20 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v31 = a1;
    v32 = a3;
    result = 0;
    v20 = 0;
    v30 = v17;
    v21 = (63 - v17) >> 6;
    v22 = 1;
    while (v19)
    {
LABEL_14:
      v25 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      a1 = a4;
      v26 = a4[7];
      v27 = *(v33 + 72);
      sub_1002940CC(v26 + v27 * (v25 | (v20 << 6)), v12);
      sub_10029418C(v12, v15);
      sub_10029418C(v15, a2);
      if (v22 == v32)
      {
        a4 = a1;
        a1 = v31;
        a3 = v32;
        goto LABEL_23;
      }

      a2 += v27;
      result = v22;
      v28 = __OFADD__(v22++, 1);
      a4 = a1;
      if (v28)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v23 = v20;
    while (1)
    {
      v24 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v24 >= v21)
      {
        break;
      }

      v19 = v16[v24];
      ++v23;
      if (v19)
      {
        v20 = v24;
        goto LABEL_14;
      }
    }

    v19 = 0;
    if (v21 <= v20 + 1)
    {
      v29 = v20 + 1;
    }

    else
    {
      v29 = v21;
    }

    v20 = v29 - 1;
    a3 = result;
    a1 = v31;
LABEL_23:
    v17 = v30;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100291F68(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 56;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 56);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_1002920C0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v46 = sub_10028088C(&qword_1009750E8, &qword_1007FBB20);
  v43 = *(v46 - 8);
  v8 = *(v43 + 64);
  v9 = __chkstk_darwin(v46);
  v45 = &v40 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v44 = &v40 - v12;
  v13 = a4 + 64;
  v14 = -1 << *(a4 + 32);
  if (-v14 < 64)
  {
    v15 = ~(-1 << -v14);
  }

  else
  {
    v15 = -1;
  }

  v16 = v15 & *(a4 + 64);
  v47 = a2;
  if (!a2)
  {
LABEL_18:
    v23 = 0;
    a3 = 0;
LABEL_25:
    *a1 = a4;
    a1[1] = v13;
    a1[2] = ~v14;
    a1[3] = v23;
    a1[4] = v16;
    return a3;
  }

  if (!a3)
  {
    v23 = 0;
    goto LABEL_25;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v40 = v14;
    v41 = a1;
    result = 0;
    v17 = 0;
    v18 = (63 - v14) >> 6;
    v19 = 1;
    v42 = a3;
    while (v16)
    {
LABEL_14:
      v22 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
      v23 = v17;
      v24 = v22 | (v17 << 6);
      v25 = *(a4 + 56);
      v26 = a4;
      v27 = (*(a4 + 48) + 16 * v24);
      v28 = *v27;
      v29 = v27[1];
      v30 = type metadata accessor for Date();
      v31 = *(v30 - 8);
      v32 = v25 + *(v31 + 72) * v24;
      v33 = v45;
      (*(v31 + 16))(&v45[*(v46 + 48)], v32, v30);
      *v33 = v28;
      v33[1] = v29;
      v34 = v33;
      v35 = v44;
      sub_10002C4E4(v34, v44, &qword_1009750E8, &qword_1007FBB20);
      v36 = v35;
      v37 = v47;
      sub_10002C4E4(v36, v47, &qword_1009750E8, &qword_1007FBB20);
      a3 = v42;
      if (v19 == v42)
      {

        a1 = v41;
        a4 = v26;
        goto LABEL_23;
      }

      a1 = (v37 + *(v43 + 72));
      v47 = a1;

      result = v19;
      v38 = __OFADD__(v19++, 1);
      a4 = v26;
      v17 = v23;
      if (v38)
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v20 = v17;
    while (1)
    {
      v21 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_28;
      }

      if (v21 >= v18)
      {
        break;
      }

      v16 = *(v13 + 8 * v21);
      ++v20;
      if (v16)
      {
        v17 = v21;
        goto LABEL_14;
      }
    }

    v16 = 0;
    if (v18 <= v17 + 1)
    {
      v39 = v17 + 1;
    }

    else
    {
      v39 = v18;
    }

    v23 = v39 - 1;
    a3 = result;
    a1 = v41;
LABEL_23:
    v14 = v40;
    goto LABEL_25;
  }

LABEL_28:
  __break(1u);
  return result;
}

void *sub_100292394(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = (*(a4 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v9)))));
      v18 = v17[1];
      v9 &= v9 - 1;
      *v11 = *v17;
      v11[1] = v18;
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      v11 += 2;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v20 = v12 + 1;
    }

    else
    {
      v20 = (63 - v7) >> 6;
    }

    v12 = v20 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

void *sub_1002924EC(void *result, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = result;
  v6 = a4 + 64;
  v7 = -1 << *(a4 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a4 + 64);
  if (!a2)
  {
LABEL_18:
    v12 = 0;
    v10 = 0;
LABEL_24:
    *v5 = a4;
    v5[1] = v6;
    v5[2] = ~v7;
    v5[3] = v12;
    v5[4] = v9;
    return v10;
  }

  v10 = a3;
  if (!a3)
  {
    v12 = 0;
    goto LABEL_24;
  }

  if ((a3 & 0x8000000000000000) == 0)
  {
    v11 = a2;
    result = 0;
    v12 = 0;
    v13 = (63 - v7) >> 6;
    v14 = 1;
    while (v9)
    {
LABEL_14:
      v17 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
      *v11 = *(*(a4 + 56) + ((v12 << 9) | (8 * v17)));
      if (v14 == v10)
      {

        goto LABEL_24;
      }

      ++v11;

      result = v14;
      if (__OFADD__(v14++, 1))
      {
        __break(1u);
        goto LABEL_18;
      }
    }

    v15 = v12;
    while (1)
    {
      v16 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_27;
      }

      if (v16 >= v13)
      {
        break;
      }

      v9 = *(v6 + 8 * v16);
      ++v15;
      if (v9)
      {
        v12 = v16;
        goto LABEL_14;
      }
    }

    v9 = 0;
    if (v13 <= (v12 + 1))
    {
      v19 = v12 + 1;
    }

    else
    {
      v19 = (63 - v7) >> 6;
    }

    v12 = v19 - 1;
    v10 = result;
    goto LABEL_24;
  }

LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100292640(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_10028088C(&qword_100975010, &qword_1007F83B8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v46 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v47 = &v37 - v12;
  v13 = sub_10028088C(&qword_100975018, &qword_1007F83C0);
  v14 = *(*(v13 - 8) + 64);
  v15 = __chkstk_darwin(v13 - 8);
  v17 = &v37 - v16;
  v48 = a4;
  *v17 = a4;
  *(v17 + 1) = 0;
  v18 = *(v15 + 52);
  v19 = type metadata accessor for Data.Iterator();
  v20 = *(v19 - 8);
  v44 = *(v20 + 56);
  v45 = v20 + 56;
  result = v44(&v17[v18], 1, 1, v19);
  if (!a2)
  {
    a3 = 0;
    goto LABEL_24;
  }

  if (!a3)
  {
    goto LABEL_24;
  }

  if (a3 < 0)
  {
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  v41 = a2;
  v42 = a1;
  v22 = 0;
  v23 = 0;
  v49 = (v20 + 48);
  v24 = v48 + 40;
  v25 = 1;
  v38 = v48 + 40;
  v39 = a3;
  while (2)
  {
    v43 = v22;
    v40 = v25;
    for (i = (v24 + 16 * v23); ; i += 2)
    {
      v28 = v47;
      sub_10000FF90(&v17[v18], v47, &qword_100975010, &qword_1007F83B8);
      v29 = *v49;
      v30 = (*v49)(v28, 1, v19);
      result = sub_100005508(v28, &qword_100975010, &qword_1007F83B8);
      if (v30 != 1)
      {
        result = v29(&v17[v18], 1, v19);
        if (result == 1)
        {
          goto LABEL_28;
        }

        sub_10000CE2C(&unk_100975020, &type metadata accessor for Data.Iterator);
        result = dispatch thunk of IteratorProtocol.next()();
        if (v51 != 1)
        {
          break;
        }
      }

      v31 = *(v48 + 16);
      if (v23 == v31)
      {
        goto LABEL_22;
      }

      if (v23 >= v31)
      {
        __break(1u);
        goto LABEL_27;
      }

      v32 = *(i - 1);
      v33 = *i;
      *(v17 + 1) = v23 + 1;
      v34 = v33 >> 62;
      if ((v33 >> 62) > 1)
      {
        if (v34 == 2)
        {
          v35 = *(v32 + 16);
LABEL_6:
          sub_100294008(v32, v33);
        }
      }

      else if (v34)
      {
        goto LABEL_6;
      }

      v27 = v46;
      Data.Iterator.init(_:at:)();
      v44(v27, 0, 1, v19);
      sub_10029405C(v27, &v17[v18]);
      ++v23;
    }

    v22 = v40;
    v36 = v41;
    *v41 = v50;
    a3 = v39;
    if (v22 != v39)
    {
      v41 = v36 + 1;
      v25 = v22 + 1;
      v24 = v38;
      if (!__OFADD__(v22, 1))
      {
        continue;
      }

      __break(1u);
LABEL_22:
      a1 = v42;
      a3 = v43;
      goto LABEL_24;
    }

    break;
  }

  a1 = v42;
LABEL_24:
  sub_10002C4E4(v17, a1, &qword_100975018, &qword_1007F83C0);
  return a3;
}

uint64_t sub_1002929F0(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10000CE2C(&unk_100975170, &type metadata accessor for URL);
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
      sub_10046D564(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100292B8C(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10000CE2C(&qword_10097F100, &type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo);
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
      sub_10046D284(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100292D28(uint64_t a1)
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

      sub_10046DAAC(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

uint64_t sub_100292DC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  sub_100294244();
  result = Set.init(minimumCapacity:)();
  v3 = result;
  if (v1)
  {
    do
    {
      sub_10046F210();
      --v1;
    }

    while (v1);
    return v3;
  }

  return result;
}

uint64_t sub_100292E1C(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v14 - v8;
  v10 = *(a1 + 16);
  sub_10000CE2C(&qword_1009750C8, type metadata accessor for SDAirDropDiscoveredEndpoint);
  result = Set.init(minimumCapacity:)();
  v15 = result;
  if (v10)
  {
    v12 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v13 = *(v3 + 72);
    do
    {
      sub_1002940CC(v12, v7);
      sub_10046DE64(v9, v7);
      sub_100294130(v9);
      v12 += v13;
      --v10;
    }

    while (v10);
    return v15;
  }

  return result;
}

uint64_t sub_100292F84(uint64_t a1)
{
  v2 = type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v9 = &v17 - v8;
  v10 = *(a1 + 16);
  sub_10000CE2C(&qword_100975118, &type metadata accessor for SFAirDropInvocations.ChangeDiscoverability.Parameters.DiscoverabilityMode);
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
      sub_10046F8DC(v9, v7);
      (*(v12 - 8))(v9, v2);
      v15 += v16;
      --v10;
    }

    while (v10);
    return v18;
  }

  return result;
}

uint64_t sub_100293120(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_1002941F0();
  result = Set.init(minimumCapacity:)();
  v10 = result;
  if (v2)
  {
    v4 = (a1 + 56);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;
      v8 = *(v4 - 3);
      v7 = *(v4 - 2);

      sub_10046FBBC(&v9, v8, v7, v6, v5);

      v4 += 4;
      --v2;
    }

    while (v2);
    return v10;
  }

  return result;
}

uint64_t sub_10029320C(unint64_t a1, unint64_t a2, uint64_t *a3, unint64_t *a4, void (*a5)(id *, id))
{
  v10 = (a1 >> 62);
  if (a1 >> 62)
  {
    goto LABEL_18;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    sub_1000276B4(0, a2, a3);
    sub_100027D9C(a4, a2, a3);
    result = Set.init(minimumCapacity:)();
    v16 = result;
    if (v10)
    {
      break;
    }

    v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v13)
    {
      return result;
    }

LABEL_7:
    a2 = 0;
    a3 = (a1 & 0xC000000000000001);
    while (1)
    {
      if (a3)
      {
        v14 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (a2 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_17;
        }

        v14 = *(a1 + 8 * a2 + 32);
      }

      v10 = (a2 + 1);
      if (__OFADD__(a2, 1))
      {
        break;
      }

      a4 = &v16;
      a5(&v15, v14);

      ++a2;
      if (v10 == v13)
      {
        return v16;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    _CocoaArrayWrapper.endIndex.getter();
  }

  a4 = result;
  v13 = _CocoaArrayWrapper.endIndex.getter();
  result = a4;
  if (v13)
  {
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_100293364(uint64_t a1, uint64_t a2)
{
  v123 = a2;
  v3 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v4 = *(*(v3 - 8) + 64);
  v5 = __chkstk_darwin(v3 - 8);
  v131 = &v122 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v5);
  v133 = &v122 - v8;
  __chkstk_darwin(v7);
  v126 = &v122 - v9;
  v132 = type metadata accessor for URL();
  v128 = *(v132 - 8);
  v10 = *(v128 + 64);
  v11 = __chkstk_darwin(v132);
  v129 = &v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v127 = &v122 - v14;
  __chkstk_darwin(v13);
  v141 = &v122 - v15;
  v139 = type metadata accessor for SFAirDropReceive.AskRequest.ItemInfo();
  v16 = *(v139 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v139);
  v138 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v20 = sub_10027FE54(_swiftEmptyArrayStorage);
  v130 = v19;
  *(v19 + 16) = v20;
  v125 = (v19 + 16);
  v22 = *(a1 + 16);
  if (v22)
  {
    v23 = v20;
    v24 = 0;
    v26 = *(v16 + 16);
    v25 = v16 + 16;
    v27 = (*(v25 + 64) + 32) & ~*(v25 + 64);
    v135 = (v25 - 8);
    v136 = v26;
    v134 = -v22;
    *&v124 = a1 + v27;
    v137 = v25;
    v140 = *(v25 + 56);
    while (1)
    {
      v28 = v124 + v140 * v24++;
      while (1)
      {
        v29 = v138;
        v30 = v139;
        (v136)(v138, v28, v139);
        v31 = SFAirDropReceive.AskRequest.ItemInfo.fileType.getter();
        v33 = v32;
        v34 = SFAirDropReceive.AskRequest.ItemInfo.fileSubType.getter();
        v36 = v35;
        (*v135)(v29, v30);
        v142 = 0;
        v143 = 0xE000000000000000;
        v37._countAndFlagsBits = v31;
        v37._object = v33;
        String.append(_:)(v37);
        v38._countAndFlagsBits = 47;
        v38._object = 0xE100000000000000;
        String.append(_:)(v38);
        v144 = v34;
        v145 = v36;
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        v39 = v142;
        v40 = v143;
        if (!v23[2])
        {
          break;
        }

        v41 = sub_100012854(v142, v143);
        if ((v42 & 1) == 0)
        {
          break;
        }

        v43 = *(v23[7] + 8 * v41);

        [v43 incrementCount];

        ++v24;
        v28 += v140;
        if (v134 + v24 == 1)
        {
          goto LABEL_28;
        }
      }

      v44 = String._bridgeToObjectiveC()();
      v45 = v36 ? String._bridgeToObjectiveC()() : 0;
      v46 = v125;
      v47 = [objc_allocWithZone(SFAirDropTransferItem) initWithType:v44 subtype:v45 isFile:1];

      swift_beginAccess();
      if (v47)
      {
        break;
      }

      v59 = sub_100012854(v39, v40);
      v61 = v60;

      if (v61)
      {
        v62 = *v46;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v46;
        v144 = *v46;
        if (!isUniquelyReferenced_nonNull_native)
        {
          sub_1002CE33C();
          v23 = v144;
        }

        v64 = *(v23[6] + 16 * v59 + 8);

        sub_1002D4100(v59, v23);
        goto LABEL_26;
      }

LABEL_27:
      v71 = (v134 + v24);
      swift_endAccess();

      if (!v71)
      {
        goto LABEL_28;
      }
    }

    v48 = *v46;
    v49 = swift_isUniquelyReferenced_nonNull_native();
    v144 = *v46;
    v50 = v144;
    v51 = sub_100012854(v39, v40);
    v53 = v50[2];
    v54 = (v52 & 1) == 0;
    v55 = __OFADD__(v53, v54);
    v56 = v53 + v54;
    if (v55)
    {
      goto LABEL_64;
    }

    v57 = v52;
    if (v50[3] >= v56)
    {
      if ((v49 & 1) == 0)
      {
        v67 = v51;
        sub_1002CE33C();
        v51 = v67;
        v23 = v144;
        if (v57)
        {
          goto LABEL_22;
        }

        goto LABEL_24;
      }
    }

    else
    {
      sub_100571844(v56, v49);
      v51 = sub_100012854(v39, v40);
      if ((v57 & 1) != (v58 & 1))
      {
        goto LABEL_68;
      }
    }

    v23 = v144;
    if (v57)
    {
LABEL_22:
      v65 = v23[7];
      v66 = *(v65 + 8 * v51);
      *(v65 + 8 * v51) = v47;

LABEL_26:
      *v46 = v23;
      goto LABEL_27;
    }

LABEL_24:
    v23[(v51 >> 6) + 8] |= 1 << v51;
    v68 = (v23[6] + 16 * v51);
    *v68 = v39;
    v68[1] = v40;
    *(v23[7] + 8 * v51) = v47;
    v69 = v23[2];
    v55 = __OFADD__(v69, 1);
    v70 = v69 + 1;
    if (v55)
    {
      goto LABEL_65;
    }

    v23[2] = v70;
    goto LABEL_26;
  }

LABEL_28:
  v72 = *(v123 + 16);
  v73 = v126;
  v74 = v132;
  v75 = v141;
  if (!v72)
  {
LABEL_62:
    swift_beginAccess();
    v117 = *(v130 + 16);

    sub_10028BCD4(v118);
    v120 = v119;

    return v120;
  }

  v76 = *(v128 + 16);
  v77 = v123 + ((*(v128 + 80) + 32) & ~*(v128 + 80));
  v140 = (v128 + 8);
  v136 = (v128 + 48);
  v137 = (v128 + 56);
  v134 = v128 + 32;
  v78 = *(v128 + 72);
  *&v21 = 136315138;
  v124 = v21;
  v128 += 16;
  v138 = v78;
  v139 = v76;
  v76(v141, v77, v132);
  while (1)
  {
    if (URL.isFileURL.getter())
    {
      (*v140)(v75, v74);
      goto LABEL_31;
    }

    v79 = objc_opt_self();
    v80 = [v79 defaultWorkspace];
    if (!v80)
    {
      goto LABEL_66;
    }

    v82 = v80;
    URL._bridgeToObjectiveC()(v81);
    v84 = v83;
    v85 = [v82 applicationsAvailableForOpeningURL:v83];

    if (!v85)
    {
      goto LABEL_43;
    }

    sub_1000276B4(0, &qword_100975168, LSApplicationProxy_ptr);
    v86 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v87 = v133;
    if (v86 >> 62)
    {
      break;
    }

    if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_38;
    }

LABEL_44:
    v91 = [v79 defaultWorkspace];
    if (!v91)
    {
      goto LABEL_67;
    }

    v92 = v91;

    URL._bridgeToObjectiveC()(v93);
    v95 = v94;
    v96 = [v92 URLOverrideForURL:v94];

    if (v96)
    {
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      v97 = 0;
    }

    else
    {
      v97 = 1;
    }

    v98 = v131;
    v76 = v139;
    (*v137)(v87, v97, 1, v74);
    sub_10002C4E4(v87, v73, &unk_100974E00, &qword_1007F8940);
    sub_10000FF90(v73, v98, &unk_100974E00, &qword_1007F8940);
    v99 = (*v136)(v98, 1, v74);
    v75 = v141;
    if (v99 == 1)
    {
      sub_100005508(v98, &unk_100974E00, &qword_1007F8940);
LABEL_53:
      v104 = v129;
      if (qword_100973520 != -1)
      {
        swift_once();
      }

      v105 = type metadata accessor for Logger();
      sub_10000C4AC(v105, qword_100974DE0);
      v76(v104, v75, v74);
      v106 = v104;
      v107 = Logger.logObject.getter();
      v108 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v107, v108))
      {
        v109 = swift_slowAlloc();
        v142 = swift_slowAlloc();
        v110 = v142;
        *v109 = v124;
        sub_10000CE2C(&qword_100975160, &type metadata accessor for URL);
        v111 = dispatch thunk of CustomStringConvertible.description.getter();
        v113 = v112;
        v135 = *v140;
        v135(v106, v132);
        v114 = v111;
        v76 = v139;
        v115 = sub_10000C4E4(v114, v113, &v142);
        v74 = v132;

        *(v109 + 4) = v115;
        _os_log_impl(&_mh_execute_header, v107, v108, "Failed to create item SFAirDropTransferItem from url. {url: %s}", v109, 0xCu);
        sub_10000C60C(v110);
        v73 = v126;

        v75 = v141;

        sub_100005508(v73, &unk_100974E00, &qword_1007F8940);
        v135(v75, v74);
      }

      else
      {

        v116 = *v140;
        (*v140)(v106, v74);
        sub_100005508(v73, &unk_100974E00, &qword_1007F8940);
        v116(v75, v74);
      }

      goto LABEL_58;
    }

    v100 = v127;
    (*v134)();
    v101 = URL.scheme.getter();
    if (!v102)
    {
      (*v140)(v100, v74);
      goto LABEL_53;
    }

    sub_10028DF18(v101);

    v103 = *v140;
    v74 = v132;
    (*v140)(v100, v132);
    sub_100005508(v73, &unk_100974E00, &qword_1007F8940);
    v103(v75, v74);
LABEL_58:
    v78 = v138;
LABEL_31:
    v77 += v78;
    if (!--v72)
    {
      goto LABEL_62;
    }

    v76(v75, v77, v74);
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_44;
  }

LABEL_38:
  if ((v86 & 0xC000000000000001) != 0)
  {

    v88 = specialized _ArrayBuffer._getElementSlowPath(_:)();

LABEL_41:
    v89 = [v88 bundleIdentifier];

    if (v89)
    {

      v90 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      sub_10028DF18(v90);

      v75 = v141;
      (*v140)(v141, v74);
      v76 = v139;
      goto LABEL_58;
    }

LABEL_43:
    v87 = v133;
    goto LABEL_44;
  }

  if (*((v86 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v88 = *(v86 + 32);
    goto LABEL_41;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100294008(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return result;
    }
  }
}

uint64_t sub_10029405C(uint64_t a1, uint64_t a2)
{
  v4 = sub_10028088C(&qword_100975010, &qword_1007F83B8);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002940CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_100294130(uint64_t a1)
{
  v2 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10029418C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SDAirDropDiscoveredEndpoint(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1002941F0()
{
  result = qword_100975110;
  if (!qword_100975110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975110);
  }

  return result;
}

unint64_t sub_100294244()
{
  result = qword_100975138;
  if (!qword_100975138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975138);
  }

  return result;
}

unint64_t sub_100294298()
{
  result = qword_100975150;
  if (!qword_100975150)
  {
    sub_100280938(&unk_100975620, &qword_1007F89E0);
    sub_10000CE2C(&qword_100975630, type metadata accessor for CFString);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975150);
  }

  return result;
}

uint64_t sub_1002943BC(uint64_t a1)
{
  v1[12] = a1;
  v2 = sub_10028088C(&qword_100974E70, &qword_1007FE3F0);
  v1[13] = v2;
  v3 = *(v2 - 8);
  v1[14] = v3;
  v4 = *(v3 + 64) + 15;
  v1[15] = swift_task_alloc();
  v5 = type metadata accessor for SFItemDestinationAlertViewModel();
  v1[16] = v5;
  v6 = *(v5 - 8);
  v1[17] = v6;
  v7 = *(v6 + 64) + 15;
  v1[18] = swift_task_alloc();
  v8 = type metadata accessor for SFItemDestinationAlertSettings();
  v1[19] = v8;
  v9 = *(v8 - 8);
  v1[20] = v9;
  v10 = *(v9 + 64) + 15;
  v1[21] = swift_task_alloc();
  v11 = sub_10028088C(&qword_100975358, &unk_1007F8590);
  v1[22] = v11;
  v12 = *(v11 - 8);
  v1[23] = v12;
  v13 = *(v12 + 64) + 15;
  v1[24] = swift_task_alloc();

  return _swift_task_switch(sub_1002945A8, 0, 0);
}

uint64_t sub_1002945A8()
{
  v2 = *(v0 + 184);
  v1 = *(v0 + 192);
  v3 = *(v0 + 176);
  v5 = *(v0 + 96);
  v4 = *(v0 + 104);
  SFAirDrop.PermissionRequest.style.getter();
  v6 = (*(v2 + 88))(v1, v3);
  v7 = *(v0 + 184);
  v8 = *(v0 + 192);
  v9 = *(v0 + 176);
  if (v6 == enum case for SFAirDrop.PermissionRequest.Style.alert<A>(_:))
  {
    v11 = *(v0 + 160);
    v10 = *(v0 + 168);
    v12 = *(v0 + 152);
    v14 = *(v0 + 112);
    v13 = *(v0 + 120);
    v15 = *(v0 + 104);
    v53 = v15;
    v54 = *(v0 + 144);
    v52 = *(v0 + 96);
    (*(v7 + 96))(v8, v9);
    v16 = *(v8 + 1);

    v17 = *(v8 + 3);

    v18 = *(v8 + 4);

    v19 = *(sub_10028088C(&qword_100975360, &unk_100801D40) + 80);
    v20 = type metadata accessor for SFAirDrop.DeclineAction();
    (*(*(v20 - 8) + 8))(&v8[v19], v20);
    v21 = *(v11 + 104);
    v21(v10, enum case for SFItemDestinationAlertSettings.reply(_:), v12);
    v22 = SFItemDestinationAlertSettings.rawValue.getter();
    v23 = *(v11 + 8);
    v23(v10, v12);
    v21(v10, enum case for SFItemDestinationAlertSettings.chosenActionID(_:), v12);
    v24 = SFItemDestinationAlertSettings.rawValue.getter();
    v23(v10, v12);
    v25 = sub_100011040(_swiftEmptyArrayStorage);
    (*(v14 + 16))(v13, v52, v53);
    SFItemDestinationAlertViewModel.init(permissionRequest:)();
    v26 = *(v0 + 144);
    v27 = *(v0 + 128);
    v28 = type metadata accessor for JSONEncoder();
    v29 = *(v28 + 48);
    v30 = *(v28 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_100294DF4(&qword_100975368, &type metadata accessor for SFItemDestinationAlertViewModel);
    v31 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    *(v0 + 200) = v31;
    *(v0 + 208) = v32;
    v41 = v31;
    v42 = v32;

    v43 = static SFItemDestinationAlertSettings.viewModel.getter();
    v45 = v44;
    *(v0 + 40) = &type metadata for Data;
    *(v0 + 16) = v41;
    *(v0 + 24) = v42;
    sub_1000106E0((v0 + 16), (v0 + 48));
    sub_100294008(v41, v42);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100011170((v0 + 48), v43, v45, isUniquelyReferenced_nonNull_native);

    *(v0 + 216) = v25;
    v47 = [objc_allocWithZone(sub_10028088C(&unk_100975370 &unk_1007F85A0))];
    *(v0 + 224) = v47;
    v48 = swift_task_alloc();
    *(v0 + 232) = v48;
    *(v48 + 16) = v47;
    *(v48 + 24) = v24;
    *(v48 + 32) = xmmword_1007F84A0;
    *(v48 + 48) = 0x8000000100789280;
    *(v48 + 56) = 0xD000000000000025;
    *(v48 + 64) = 0x8000000100789250;
    *(v48 + 72) = v25;
    *(v48 + 80) = v22;
    *(v48 + 88) = 0;
    v49 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v50 = swift_task_alloc();
    *(v0 + 240) = v50;
    v51 = sub_10028088C(&qword_100975100, &qword_1007FBA10);
    *v50 = v0;
    v50[1] = sub_100294B10;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 80, 0, 0, 0xD00000000000006ALL, 0x80000001007892A0, sub_100294E3C, v48, v51);
  }

  else
  {
    (*(v7 + 8))(*(v0 + 192), v9);
    v33 = type metadata accessor for SFAirDropReceive.Failure();
    sub_100294DF4(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v33 - 8) + 104))(v34, enum case for SFAirDropReceive.Failure.moveToAppFailed(_:), v33);
    swift_willThrow();
    v35 = *(v0 + 192);
    v36 = *(v0 + 168);
    v37 = *(v0 + 144);
    v38 = *(v0 + 120);

    v39 = *(v0 + 8);

    return v39();
  }
}

uint64_t sub_100294B10()
{
  v2 = *v1;
  v3 = *(*v1 + 240);
  v9 = *v1;
  *(*v1 + 248) = v0;

  if (v0)
  {
    v4 = sub_100294D0C;
  }

  else
  {
    v6 = *(v2 + 224);
    v5 = *(v2 + 232);
    v7 = *(v2 + 216);

    *(v2 + 256) = *(v2 + 80);
    v4 = sub_100294C4C;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100294C4C()
{
  v1 = v0[24];
  v2 = v0[21];
  v4 = v0[17];
  v3 = v0[18];
  v6 = v0[15];
  v5 = v0[16];
  sub_100026AC0(v0[25], v0[26]);
  (*(v4 + 8))(v3, v5);

  v7 = v0[1];
  v8 = v0[32];
  v9 = v0[33];

  return v7(v8, v9);
}

uint64_t sub_100294D0C()
{
  v2 = v0[28];
  v1 = v0[29];
  v4 = v0[26];
  v3 = v0[27];
  v5 = v0[25];
  v7 = v0[17];
  v6 = v0[18];
  v8 = v0[16];

  sub_100026AC0(v5, v4);
  (*(v7 + 8))(v6, v8);
  v9 = v0[31];
  v10 = v0[24];
  v11 = v0[21];
  v12 = v0[18];
  v13 = v0[15];

  v14 = v0[1];

  return v14();
}

uint64_t sub_100294DF4(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100294E7C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100975380);
  v1 = sub_10000C4AC(v0, qword_100975380);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

unint64_t sub_100294F44@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_10029983C(*a1);
  *a2 = result;
  return result;
}

id sub_100294F7C(uint64_t a1, int a2, uint64_t a3, uint64_t a4)
{
  v80 = a4;
  v86 = a3;
  v79 = a2;
  v87 = a1;
  ObjectType = swift_getObjectType();
  v83 = sub_10028088C(&qword_100975408, &qword_1007F87C8);
  v82 = *(v83 - 8);
  v5 = *(v82 + 64);
  __chkstk_darwin(v83);
  v81 = &v77 - v6;
  v89 = type metadata accessor for URLResourceValues();
  v98 = *(v89 - 8);
  v7 = *(v98 + 64);
  __chkstk_darwin(v89);
  v95 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_10028088C(&unk_100974E00, &qword_1007F8940);
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9 - 8);
  v93 = &v77 - v11;
  v94 = type metadata accessor for URL();
  v96 = *(v94 - 8);
  v12 = *(v96 + 64);
  v13 = __chkstk_darwin(v94);
  v99 = &v77 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v106 = &v77 - v15;
  v16 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v17 = *(v16 - 8);
  v18 = *(v17 + 64);
  __chkstk_darwin(v16);
  v20 = &v77 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v22 = *(*(v21 - 8) + 64);
  __chkstk_darwin(v21);
  v23 = type metadata accessor for DispatchQoS();
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  *(v4 + 32) = 0;
  *(v4 + 40) = 0;
  *(v4 + 64) = 0;
  swift_unknownObjectWeakInit();
  v105 = sub_1000276B4(0, &qword_100975438, OS_dispatch_queue_serial_ptr);
  static DispatchQoS.userInitiated.getter();
  v108 = _swiftEmptyArrayStorage;
  sub_10029A684(&qword_100975440, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10028088C(&qword_100975448, &qword_1007F8810);
  sub_10029A6CC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v17 + 104))(v20, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v16);
  v25 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *(v4 + 72) = v25;
  v26 = v87;
  *(v4 + 16) = v87;
  v85 = v4;
  *(v4 + 48) = 0x100000;
  v27 = objc_allocWithZone(SDAirDropFileZipper);

  v78 = [v27 initWithQueue:v25 boundStreamSize:0x100000];
  v28 = *(v26 + 16);
  if (v28)
  {
    v100 = 0;
    v104 = *(v96 + 16);
    v90 = (*(v96 + 80) + 32) & ~*(v96 + 80);
    v29 = v26 + v90;
    v30 = *(v96 + 72);
    v92 = NSURLIsDirectoryKey;
    v101 = (v96 + 56);
    v102 = (v96 + 8);
    v88 = (v98 + 8);
    v97 = (v96 + 32);
    v98 = v96 + 48;
    v105 = _swiftEmptyArrayStorage;
    v91 = xmmword_1007F5670;
    v31 = v95;
    v32 = v94;
    v33 = v93;
    v96 += 16;
    v103 = v30;
    v104(v106, v29, v94);
    while (1)
    {
      URL._bridgeToObjectiveC()(v34);
      v38 = v37;
      v39 = CFURLCopyFileSystemPath(v37, kCFURLPOSIXPathStyle);

      if (!v39)
      {
        (*v101)(v33, 1, 1, v32);
        goto LABEL_19;
      }

      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v40 = String.utf8CString.getter();

      v41 = realpath_DARWIN_EXTSN((v40 + 32), 0);

      if (!v41)
      {
        break;
      }

      String.init(cString:)();
      free(v41);
      v42 = String.utf8CString.getter();
      v95 = strlen((v42 + 32));

      sub_10028088C(&qword_100976C30, &qword_1007F8818);
      inited = swift_initStackObject();
      *(inited + 16) = v91;
      v44 = v92;
      *(inited + 32) = v92;
      v45 = v44;
      sub_1002F13BC(inited);
      swift_setDeallocating();
      sub_10029A730(inited + 32);
      v46 = v106;
      v47 = v100;
      URL.resourceValues(forKeys:)();
      if (v47)
      {

        v32 = v94;
        (*v102)(v46, v94);
        v33 = v93;
        (*v101)(v93, 1, 1, v32);
        v100 = 0;
        v35 = v46;
LABEL_4:
        sub_100005508(v33, &unk_100974E00, &qword_1007F8940);
        v36 = v103;
        goto LABEL_5;
      }

      v48 = URLResourceValues.isDirectory.getter();
      (*v88)(v31, v89);
      v49 = v48 != 2 && (v48 & 1) != 0;
      v32 = v94;
      v100 = 0;
      v50 = String.utf8CString.getter();

      v51 = CFURLCreateFromFileSystemRepresentation(0, (v50 + 32), v95, v49);

      if (!v51)
      {
        v33 = v93;
        (*v101)(v93, 1, 1, v32);
        goto LABEL_15;
      }

      v33 = v93;
      static URL._unconditionallyBridgeFromObjectiveC(_:)();

      (*v101)(v33, 0, 1, v32);
LABEL_19:
      v35 = v106;
      (*v102)(v106, v32);
      if ((*v98)(v33, 1, v32) == 1)
      {
        goto LABEL_4;
      }

      v52 = *v97;
      (*v97)(v99, v33, v32);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v53 = v105;
      }

      else
      {
        v53 = sub_10028E2D4(0, v105[2] + 1, 1, v105);
      }

      v55 = v53[2];
      v54 = v53[3];
      if (v55 >= v54 >> 1)
      {
        v53 = sub_10028E2D4(v54 > 1, v55 + 1, 1, v53);
      }

      v53[2] = v55 + 1;
      v105 = v53;
      v36 = v103;
      v52(v53 + v90 + v55 * v103, v99, v32);
      v35 = v106;
LABEL_5:
      v29 += v36;
      if (!--v28)
      {

        goto LABEL_29;
      }

      v104(v35, v29, v32);
    }

    (*v101)(v33, 1, 1, v32);
LABEL_15:

    goto LABEL_19;
  }

  v105 = _swiftEmptyArrayStorage;
LABEL_29:
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v56 = type metadata accessor for Logger();
  sub_10000C4AC(v56, qword_100975380);
  v57 = v105;

  v58 = Logger.logObject.getter();
  v59 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v58, v59))
  {
    v60 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v108 = v61;
    *v60 = 136315138;
    v62 = Array.description.getter();
    v64 = sub_10000C4E4(v62, v63, &v108);

    *(v60 + 4) = v64;
    _os_log_impl(&_mh_execute_header, v58, v59, "Passing real URLS to zipper %s", v60, 0xCu);
    sub_10000C60C(v61);
  }

  v65 = ObjectType;
  v66 = v80;
  v67 = v79;
  sub_100467F54(v57);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v69 = v78;
  [v78 setSourceFiles:isa];

  [v69 setUseZip:v67 & 1];
  v70 = sub_1002929F0(v57);

  sub_100295C7C(v70);

  v71 = Set._bridgeToObjectiveC()().super.isa;

  [v69 setSkipReadableCheckFiles:v71];

  [v69 setDisableAdaptiveCompressionForZipping:0];
  [v69 setShouldExtractMediaFromPhotosBundles:1];
  v72 = v85;
  v85[3] = v69;
  v72[8] = v66;
  swift_unknownObjectWeakAssign();
  v73 = v69;
  v74 = v81;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v82 + 32))(v72 + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation, v74, v83);
  v107.receiver = v72;
  v107.super_class = v65;
  v75 = objc_msgSendSuper2(&v107, "init");
  [v73 setDelegate:v75];

  swift_unknownObjectRelease();
  return v75;
}

uint64_t sub_100295C7C(uint64_t a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v32 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v31 - v7;
  v33 = a1;
  if (*(a1 + 16))
  {
    sub_10028088C(&unk_100975460, &qword_1007F8820);
    v9 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  v10 = v33 + 56;
  v11 = 1 << *(v33 + 32);
  if (v11 < 64)
  {
    v12 = ~(-1 << v11);
  }

  else
  {
    v12 = -1;
  }

  v13 = v12 & *(v33 + 56);
  v14 = (v11 + 63) >> 6;
  v31[1] = v3 + 32;
  v31[2] = v3 + 16;
  v15 = (v9 + 7);

  v17 = 0;
  while (v13)
  {
LABEL_15:
    v23 = v32;
    (*(v3 + 16))(v32, *(v33 + 48) + *(v3 + 72) * (__clz(__rbit64(v13)) | (v17 << 6)), v2);
    (*(v3 + 32))(v8, v23, v2);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v9[5]);
    v24 = -1 << *(v9 + 32);
    v25 = result & ~v24;
    v26 = v25 >> 6;
    if (((-1 << v25) & ~*&v15[8 * (v25 >> 6)]) == 0)
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
        v30 = *&v15[8 * v26];
        if (v30 != -1)
        {
          v18 = __clz(__rbit64(~v30)) + (v26 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v18 = __clz(__rbit64((-1 << v25) & ~*&v15[8 * (v25 >> 6)])) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v15[(v18 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v18;
    v13 &= v13 - 1;
    v19 = v9[6] + 40 * v18;
    v20 = v34;
    v21 = v35;
    *(v19 + 32) = v36;
    *v19 = v20;
    *(v19 + 16) = v21;
    ++v9[2];
  }

  while (1)
  {
    v22 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v22 >= v14)
    {

      return v9;
    }

    v13 = *(v10 + 8 * v22);
    ++v17;
    if (v13)
    {
      v17 = v22;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_100295F98()
{
  *(v1 + 16) = v0;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100296050, v3, v2);
}

uint64_t sub_100296050()
{
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975380);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Send Compression Adapter", v4, 2u);
  }

  v5 = *(v0 + 16);

  v6 = *(v5 + 24);
  [v6 zip];
  v7 = [v6 copyReadStream];
  v8 = *(v5 + 32);
  *(v5 + 32) = v7;

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_100296198()
{
  *(v1 + 16) = v0;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_100296250, v3, v2);
}

uint64_t sub_100296250()
{
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975380);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping Send Compression Adapter", v4, 2u);
  }

  v5 = *(v0 + 16);

  [*(v5 + 24) stop];
  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1002963B0;
  v7 = *(v0 + 16);

  return sub_1002964A4();
}

uint64_t sub_1002963B0()
{
  v1 = *(*v0 + 24);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1002964A4()
{
  *(v1 + 16) = v0;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10029655C, v3, v2);
}

uint64_t sub_10029655C()
{
  v1 = *(v0 + 16);
  v2 = *(v1 + 32);
  if (v2)
  {
    v3 = v2;
    if ([v3 streamStatus] != 6)
    {
      [v3 close];

      v3 = *(v1 + 32);
      *(v1 + 32) = 0;
    }
  }

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_1002965FC()
{
  v1[2] = v0;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[3] = v2;
  v1[4] = v3;

  return _swift_task_switch(sub_1002966E8, v2, v3);
}

uint64_t sub_1002966E8()
{
  v1 = *(v0 + 16);
  if (!*(v1 + 41))
  {
    if (qword_100973528 != -1)
    {
LABEL_48:
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100975380);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_11;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Zipper not ready to send compressed data";
    goto LABEL_10;
  }

  if (*(v1 + 40))
  {
    if (qword_100973528 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100975380);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v3, v4))
    {
      goto LABEL_11;
    }

    v5 = swift_slowAlloc();
    *v5 = 0;
    v6 = "Adapter already sending compressed data";
LABEL_10:
    _os_log_impl(&_mh_execute_header, v3, v4, v6, v5, 2u);

LABEL_11:

    v8 = *(v0 + 8);
LABEL_12:

    return v8();
  }

  v10 = *(v1 + 32);
  *(v0 + 40) = v10;
  if (!v10)
  {
    v35 = type metadata accessor for SFAirDropSend.Failure();
    sub_10029A684(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v35 - 8) + 104))(v36, enum case for SFAirDropSend.Failure.streamError(_:), v35);
    swift_willThrow();
    v8 = *(v0 + 8);
    goto LABEL_12;
  }

  *(v1 + 40) = 1;
  v11 = qword_100973528;
  v12 = v10;
  if (v11 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  *(v0 + 48) = sub_10000C4AC(v13, qword_100975380);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Send compression adapter compressing data", v16, 2u);
  }

  *(v0 + 56) = swift_slowAlloc();
  [v12 open];
  v17 = 0;
  *&v18 = 134217984;
  v51 = v18;
  while (1)
  {
    if (([*(v0 + 40) hasBytesAvailable] & 1) == 0 && *(*(v0 + 16) + 41) == 3)
    {
      goto LABEL_36;
    }

    v19 = *(v0 + 48);
    v20 = [*(v0 + 40) read:*(v0 + 56) maxLength:0x100000];
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = v51;
      *(v23 + 4) = v20;
      _os_log_impl(&_mh_execute_header, v21, v22, "Reading compressed data %ld", v23, 0xCu);
    }

    if (v20 <= 0)
    {
      break;
    }

    v24 = __OFADD__(v17, v20);
    v17 += v20;
    *(v0 + 64) = v17;
    if (v24)
    {
      __break(1u);
      goto LABEL_48;
    }

    v25 = *(v0 + 56);
    if (v20 <= 0xE)
    {
      *(v0 + 158) = 0;
      *(v0 + 152) = 0;
      *(v0 + 166) = v20;
      memcpy((v0 + 152), v25, v20);
      v31 = *(v0 + 152);
      v15 = v15 & 0xF00000000000000 | *(v0 + 160) | ((*(v0 + 164) | (*(v0 + 166) << 16)) << 32);
      v32 = v15;
    }

    else
    {
      v26 = type metadata accessor for __DataStorage();
      v27 = *(v26 + 48);
      v28 = *(v26 + 52);
      swift_allocObject();
      v29 = __DataStorage.init(bytes:length:)();
      v30 = v29;
      if (v20 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v31 = swift_allocObject();
        *(v31 + 16) = 0;
        *(v31 + 24) = v20;
        v32 = v30 | 0x8000000000000000;
      }

      else
      {
        v31 = v20 << 32;
        v32 = v29 | 0x4000000000000000;
      }
    }

    *(v0 + 80) = v31;
    *(v0 + 88) = v32;
    *(v0 + 72) = v15;
    v33 = *(v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 96) = Strong;
    if (Strong)
    {
      v44 = swift_task_alloc();
      *(v0 + 104) = v44;
      *v44 = v0;
      v44[1] = sub_100296E9C;
      v40 = v31;
      v41 = v32;
      v42 = v17;
      v43 = 0;
      goto LABEL_39;
    }

    sub_100026AC0(v31, v32);
  }

  v37 = *(v0 + 16);
LABEL_36:
  v38 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = v38;
  if (v38)
  {
    v39 = swift_task_alloc();
    *(v0 + 128) = v39;
    *v39 = v0;
    v39[1] = sub_100297508;
    v40 = 0;
    v41 = 0xC000000000000000;
    v42 = v17;
    v43 = 1;
LABEL_39:

    return sub_10030A980(v40, v41, v42, v43);
  }

  v45 = *(v0 + 48);
  v46 = Logger.logObject.getter();
  v47 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v46, v47))
  {
    v48 = swift_slowAlloc();
    *v48 = 0;
    _os_log_impl(&_mh_execute_header, v46, v47, "Finished reading compressed data", v48, 2u);
  }

  v49 = swift_task_alloc();
  *(v0 + 144) = v49;
  *v49 = v0;
  v49[1] = sub_100297858;
  v50 = *(v0 + 16);

  return sub_1002964A4();
}

uint64_t sub_100296E9C()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = v2[12];
  swift_unknownObjectRelease();
  v6 = v2[4];
  v7 = v2[3];
  if (v0)
  {
    v8 = sub_100297470;
  }

  else
  {
    v8 = sub_10029701C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_10029701C()
{
  sub_100026AC0(*(v0 + 80), *(v0 + 88));
  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  *&v3 = 134217984;
  v35 = v3;
  while (1)
  {
    if (([*(v0 + 40) hasBytesAvailable] & 1) == 0 && *(*(v0 + 16) + 41) == 3)
    {
      goto LABEL_16;
    }

    v4 = *(v0 + 48);
    v5 = [*(v0 + 40) read:*(v0 + 56) maxLength:0x100000];
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = v35;
      *(v8 + 4) = v5;
      _os_log_impl(&_mh_execute_header, v6, v7, "Reading compressed data %ld", v8, 0xCu);
    }

    if (v5 <= 0)
    {
      break;
    }

    v9 = __OFADD__(v1, v5);
    v1 += v5;
    *(v0 + 64) = v1;
    if (v9)
    {
      __break(1u);
    }

    v10 = *(v0 + 56);
    if (v5 <= 0xE)
    {
      *(v0 + 158) = 0;
      *(v0 + 152) = 0;
      *(v0 + 166) = v5;
      memcpy((v0 + 152), v10, v5);
      v16 = *(v0 + 152);
      v2 = v2 & 0xF00000000000000 | *(v0 + 160) | ((*(v0 + 164) | (*(v0 + 166) << 16)) << 32);
      v17 = v2;
    }

    else
    {
      v11 = type metadata accessor for __DataStorage();
      v12 = *(v11 + 48);
      v13 = *(v11 + 52);
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:)();
      v15 = v14;
      if (v5 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        v16 = swift_allocObject();
        *(v16 + 16) = 0;
        *(v16 + 24) = v5;
        v17 = v15 | 0x8000000000000000;
      }

      else
      {
        v16 = v5 << 32;
        v17 = v14 | 0x4000000000000000;
      }
    }

    *(v0 + 80) = v16;
    *(v0 + 88) = v17;
    *(v0 + 72) = v2;
    v18 = *(v0 + 16);
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v0 + 96) = Strong;
    if (Strong)
    {
      v27 = swift_task_alloc();
      *(v0 + 104) = v27;
      *v27 = v0;
      v27[1] = sub_100296E9C;
      v23 = v16;
      v24 = v17;
      v25 = v1;
      v26 = 0;
      goto LABEL_19;
    }

    sub_100026AC0(v16, v17);
  }

  v20 = *(v0 + 16);
LABEL_16:
  v21 = swift_unknownObjectWeakLoadStrong();
  *(v0 + 120) = v21;
  if (v21)
  {
    v22 = swift_task_alloc();
    *(v0 + 128) = v22;
    *v22 = v0;
    v22[1] = sub_100297508;
    v23 = 0;
    v24 = 0xC000000000000000;
    v25 = v1;
    v26 = 1;
LABEL_19:

    return sub_10030A980(v23, v24, v25, v26);
  }

  v29 = *(v0 + 48);
  v30 = Logger.logObject.getter();
  v31 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v30, v31))
  {
    v32 = swift_slowAlloc();
    *v32 = 0;
    _os_log_impl(&_mh_execute_header, v30, v31, "Finished reading compressed data", v32, 2u);
  }

  v33 = swift_task_alloc();
  *(v0 + 144) = v33;
  *v33 = v0;
  v33[1] = sub_100297858;
  v34 = *(v0 + 16);

  return sub_1002964A4();
}

uint64_t sub_100297470()
{
  v1 = v0[5];
  sub_100026AC0(v0[10], v0[11]);

  v2 = v0[14];
  v3 = v0[1];

  return v3();
}

uint64_t sub_100297508()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 120);
  v5 = *v1;
  *(*v1 + 136) = v0;

  swift_unknownObjectRelease();
  v6 = *(v2 + 32);
  v7 = *(v2 + 24);
  if (v0)
  {
    v8 = sub_1002977C8;
  }

  else
  {
    v8 = sub_100297694;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_100297694()
{
  v1 = v0[6];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Finished reading compressed data", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_100297858;
  v6 = v0[2];

  return sub_1002964A4();
}

uint64_t sub_1002977C8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100297858()
{
  v1 = *v0;
  v2 = *(*v0 + 144);
  v6 = *v0;

  v3 = *(v1 + 32);
  v4 = *(v1 + 24);

  return _swift_task_switch(sub_1002979AC, v4, v3);
}

uint64_t sub_1002979AC()
{
  v1 = v0[7];
  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_100297A4C(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  swift_getObjectType();
  v3 = sub_10028088C(&qword_100975408, &qword_1007F87C8);
  v2[5] = v3;
  v4 = *(v3 - 8);
  v2[6] = v4;
  v5 = *(v4 + 64) + 15;
  v2[7] = swift_task_alloc();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[8] = v7;
  v2[9] = v6;

  return _swift_task_switch(sub_100297B6C, v7, v6);
}

uint64_t sub_100297B6C()
{
  v1 = v0[4];
  *(v1 + 41) = 1;
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v2 = v0[4];
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100975380);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[4];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v1 + 41);

    _os_log_impl(&_mh_execute_header, v4, v5, "Zipper State Update: %ld", v8, 0xCu);
  }

  else
  {
    v9 = v0[4];
  }

  v10 = v0[4];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[10] = Strong;
  if (Strong)
  {
    v12 = [*(v0[4] + 24) zipCompressionType];
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v13 = sub_10029984C();
    v15 = v14;

    v0[11] = v15;
    v16 = swift_task_alloc();
    v0[12] = v16;
    *v16 = v0;
    v16[1] = sub_100297E58;
    v17 = v0[3];

    return sub_10030B820(v17, v13, v15);
  }

  else
  {
    v20 = v0[6];
    v19 = v0[7];
    v21 = v0[5];
    v22 = v0[3];
    (*(v20 + 16))(v19, v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation, v21);
    v0[2] = v22;
    SFProgressContinuation.finish(with:)();
    (*(v20 + 8))(v19, v21);
    v23 = swift_task_alloc();
    v0[13] = v23;
    *v23 = v0;
    v23[1] = sub_1002980E4;
    v24 = v0[4];

    return sub_1002965FC();
  }
}

uint64_t sub_100297E58()
{
  v3 = *v1;
  v2 = *v1;
  v4 = *(*v1 + 96);
  v5 = *v1;

  v6 = v2[11];
  v7 = v2[10];
  if (v0)
  {

    swift_unknownObjectRelease();
    v8 = v3[7];

    v9 = *(v5 + 8);

    return v9();
  }

  else
  {
    swift_unknownObjectRelease();

    v11 = v3[8];
    v12 = v3[9];

    return _swift_task_switch(sub_100297FF0, v11, v12);
  }
}

uint64_t sub_100297FF0()
{
  v2 = v0[6];
  v1 = v0[7];
  v3 = v0[5];
  v4 = v0[3];
  (*(v2 + 16))(v1, v0[4] + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation, v3);
  v0[2] = v4;
  SFProgressContinuation.finish(with:)();
  (*(v2 + 8))(v1, v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1002980E4;
  v6 = v0[4];

  return sub_1002965FC();
}

uint64_t sub_1002980E4()
{
  v1 = *v0;
  v2 = *(*v0 + 104);
  v6 = *v0;

  v3 = *(v1 + 56);

  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_1002981FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  swift_getObjectType();
  v5 = type metadata accessor for SFAirDrop.Progress();
  v4[7] = v5;
  v6 = *(v5 - 8);
  v4[8] = v6;
  v7 = *(v6 + 64) + 15;
  v4[9] = swift_task_alloc();
  v8 = sub_10028088C(&unk_100975428, &qword_1007F87E8);
  v4[10] = v8;
  v9 = *(v8 - 8);
  v4[11] = v9;
  v10 = *(v9 + 64) + 15;
  v4[12] = swift_task_alloc();
  v11 = sub_10028088C(&qword_100975408, &qword_1007F87C8);
  v4[13] = v11;
  v12 = *(v11 - 8);
  v4[14] = v12;
  v13 = *(v12 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter);
  v15 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v15;
  v4[17] = v14;

  return _swift_task_switch(sub_1002983E4, v15, v14);
}

uint64_t sub_1002983E4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v2 + 16))(v1, v0[6] + OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation, v3);
  SFProgressContinuation.task.getter();
  (*(v2 + 8))(v1, v3);
  v4 = async function pointer to SFProgressTask.finalValue.getter[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1002984E4;
  v6 = v0[12];
  v7 = v0[10];

  return SFProgressTask.finalValue.getter(v0 + 2, v7);
}

uint64_t sub_1002984E4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 136);
  v9 = *(v2 + 128);
  if (v0)
  {
    v10 = sub_100298A4C;
  }

  else
  {
    v10 = sub_10029867C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_10029867C()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 16);
  *(v1 + 41) = 2;
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v3 = *(v0 + 48);
  v4 = type metadata accessor for Logger();
  sub_10000C4AC(v4, qword_100975380);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  v7 = os_log_type_enabled(v5, v6);
  v8 = *(v0 + 48);
  if (v7)
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(v1 + 41);

    _os_log_impl(&_mh_execute_header, v5, v6, "Zipper State Update: %ld", v9, 0xCu);
  }

  else
  {
    v10 = *(v0 + 48);
  }

  v12 = *(v0 + 64);
  v11 = *(v0 + 72);
  v14 = *(v0 + 48);
  v13 = *(v0 + 56);
  v15 = *(v0 + 32);
  *v11 = *(v0 + 24);
  *(v11 + 8) = v2;
  *(v11 + 16) = 0;
  *(v11 + 24) = v15;
  (*(v12 + 104))();
  if (swift_unknownObjectWeakLoadStrong())
  {
    sub_100309D50(*(v0 + 72));
    swift_unknownObjectRelease();
  }

  v16 = swift_task_alloc();
  *(v0 + 160) = v16;
  *v16 = v0;
  v16[1] = sub_100298870;
  v17 = *(v0 + 48);

  return sub_1002965FC();
}

uint64_t sub_100298870()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 136);
  v6 = *(v2 + 128);
  if (v0)
  {
    v7 = sub_100298AD0;
  }

  else
  {
    v7 = sub_1002989AC;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_1002989AC()
{
  v1 = v0[15];
  v2 = v0[12];
  (*(v0[8] + 8))(v0[9], v0[7]);

  v3 = v0[1];

  return v3();
}

uint64_t sub_100298A4C()
{
  v1 = v0[19];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100298AD0()
{
  (*(v0[8] + 8))(v0[9], v0[7]);
  v1 = v0[21];
  v2 = v0[15];
  v3 = v0[12];
  v4 = v0[9];

  v5 = v0[1];

  return v5();
}

uint64_t sub_100298B6C(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  swift_getObjectType();
  sub_10029A684(&unk_100975410, type metadata accessor for SDAirDropSendCompressionAdapter);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[4] = v4;
  v2[5] = v3;

  return _swift_task_switch(sub_100298C24, v4, v3);
}

uint64_t sub_100298C24()
{
  v1 = v0[3];
  *(v1 + 41) = 3;
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v2 = v0[3];
  v3 = type metadata accessor for Logger();
  sub_10000C4AC(v3, qword_100975380);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[3];
  if (v6)
  {
    v8 = swift_slowAlloc();
    *v8 = 134217984;
    *(v8 + 4) = *(v1 + 41);

    _os_log_impl(&_mh_execute_header, v4, v5, "Zipper State Update: %ld", v8, 0xCu);
  }

  else
  {
    v9 = v0[3];
  }

  if (v0[2])
  {
    v10 = v0[2];
    swift_errorRetain();
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138412290;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v15;
      *v14 = v15;
      _os_log_impl(&_mh_execute_header, v11, v12, "Compression failed with error: %@", v13, 0xCu);
      sub_100005508(v14, &qword_100975400, &qword_1007F65D0);
    }

    v16 = swift_task_alloc();
    v0[6] = v16;
    *v16 = v0;
    v16[1] = sub_100298F68;
    v17 = v0[3];

    return sub_1002964A4();
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&_mh_execute_header, v19, v20, "Compression finished", v21, 2u);
    }

    v22 = swift_task_alloc();
    v0[7] = v22;
    *v22 = v0;
    v22[1] = sub_100299120;
    v23 = v0[3];

    return sub_1002965FC();
  }
}

uint64_t sub_100298F68()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  v6 = *v0;

  v3 = *(v1 + 40);
  v4 = *(v1 + 32);

  return _swift_task_switch(sub_100299088, v4, v3);
}

uint64_t sub_100299088()
{
  v1 = v0[3];
  Strong = swift_unknownObjectWeakLoadStrong();
  v3 = v0[2];
  if (Strong)
  {
    v4 = v0[2];
    sub_10030A0C8();

    swift_unknownObjectRelease();
  }

  else
  {
    v5 = v0[2];
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_100299120()
{
  v1 = *(*v0 + 56);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_100299214(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_100297A4C(a5);
}

uint64_t sub_1002992B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100005C04;

  return sub_1002981FC(a5, a6, a7);
}

uint64_t sub_100299364()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_100298B6C(0);
}

uint64_t sub_1002993F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_100298B6C(a5);
}

uint64_t sub_10029953C()
{
  v1 = *(v0 + 16);

  sub_10004C60C(v0 + 56);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary31SDAirDropSendCompressionAdapter_compressionStartedContinuation;
  v3 = sub_10028088C(&qword_100975408, &qword_1007F87C8);
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  v4 = *((swift_isaMask & *v0) + 0x30);
  v5 = *((swift_isaMask & *v0) + 0x34);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropSendCompressionAdapter()
{
  result = qword_1009753C8;
  if (!qword_1009753C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100299670()
{
  sub_100299754();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_100299754()
{
  if (!qword_1009753D8)
  {
    v0 = type metadata accessor for SFProgressContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_1009753D8);
    }
  }
}

unint64_t sub_1002997C4()
{
  result = qword_1009753E0;
  if (!qword_1009753E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009753E0);
  }

  return result;
}

unint64_t sub_10029983C(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

const __CFString *sub_10029984C()
{
  v0 = String._bridgeToObjectiveC()();
  if (!@"pkzip")
  {
LABEL_5:
    v4 = v0;
    goto LABEL_6;
  }

  type metadata accessor for CFString(0);
  sub_10029A684(&qword_100975420, type metadata accessor for CFString);
  v1 = v0;
  v2 = @"pkzip";
  v3 = static _CFObject.== infix(_:_:)();

  if (v3)
  {

    if (@"application/zip")
    {
      goto LABEL_16;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  if (@"gzip")
  {
    type metadata accessor for CFString(0);
    sub_10029A684(&qword_100975420, type metadata accessor for CFString);
    v5 = v0;
    v6 = @"gzip";
    v7 = static _CFObject.== infix(_:_:)();

    if (v7)
    {

      if (@"application/x-cpio")
      {
        goto LABEL_16;
      }

      __break(1u);
    }
  }

  if (@"dvzip")
  {
    type metadata accessor for CFString(0);
    sub_10029A684(&qword_100975420, type metadata accessor for CFString);
    v8 = v0;
    v9 = @"dvzip";
    v10 = static _CFObject.== infix(_:_:)();

    if ((v10 & 1) == 0)
    {
      goto LABEL_15;
    }

    if (!@"application/x-dvzip")
    {
      __break(1u);
      goto LABEL_14;
    }

LABEL_16:
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();

    return v12;
  }

LABEL_14:

LABEL_15:
  result = @"application/x-cpio";
  if (@"application/x-cpio")
  {
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_100299A84(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v36 - v8;
  if (qword_100973528 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000C4AC(v10, qword_100975380);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v36[1] = v11;
    v15 = v9;
    v16 = v3;
    v17 = v14;
    v18 = swift_slowAlloc();
    v37[0] = v18;
    *v17 = 136315138;
    v39 = a2;
    swift_unknownObjectRetain();
    v19 = String.init<A>(describing:)();
    v21 = sub_10000C4E4(v19, v20, v37);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Zipper Update: %s", v17, 0xCu);
    sub_10000C60C(v18);

    v3 = v16;
    v9 = v15;
  }

  if (a1 <= 8)
  {
    if (a1 == 5)
    {
      ObjectType = swift_getObjectType();
      v37[0] = a2;
      sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
      swift_unknownObjectRetain();
      tryCast<A>(_:as:description:file:line:)();
      sub_10000C60C(v37);
      if (kSFOperationTotalBytesKey)
      {
        v22 = v39;
        NSDictionary.sf_value<A>(_:as:file:line:)();
        v30 = v37[0];
        v31 = type metadata accessor for TaskPriority();
        (*(*(v31 - 8) + 56))(v9, 1, 1, v31);
        v34 = swift_allocObject();
        v34[2] = 0;
        v34[3] = 0;
        v34[4] = v3;
        v34[5] = v30;

        v35 = &unk_1007F87B8;
        goto LABEL_21;
      }
    }

    else
    {
      if (a1 != 7)
      {
        return;
      }

      ObjectType = swift_getObjectType();
      v37[0] = a2;
      sub_1000276B4(0, &qword_100974E20, NSDictionary_ptr);
      swift_unknownObjectRetain();
      tryCast<A>(_:as:description:file:line:)();
      sub_10000C60C(v37);
      if (kSFOperationBytesCopiedKey)
      {
        v22 = v39;
        NSDictionary.sf_value<A>(_:as:file:line:)();
        if (kSFOperationFilesCopiedKey)
        {
          v23 = v37[0];
          NSDictionary.sf_value<A>(_:as:file:line:)();
          if (kSFOperationTimeRemainingKey)
          {
            v24 = v37[0];
            NSDictionary.sf_value<A>(_:as:file:line:)();
            v32 = v37[0];
            v33 = type metadata accessor for TaskPriority();
            (*(*(v33 - 8) + 56))(v9, 1, 1, v33);
            v34 = swift_allocObject();
            v34[2] = 0;
            v34[3] = 0;
            v34[4] = v3;
            v34[5] = v24;
            v34[6] = v23;
            v34[7] = v32;

            v35 = &unk_1007F87A8;
LABEL_21:
            sub_1002B281C(0, 0, v9, v35, v34);

            goto LABEL_19;
          }

LABEL_25:
          __break(1u);
          return;
        }

LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_24;
  }

  if (a1 == 9)
  {
    v25 = type metadata accessor for TaskPriority();
    (*(*(v25 - 8) + 56))(v9, 1, 1, v25);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v3;

    v29 = &unk_1007F8790;
  }

  else
  {
    if (a1 != 10)
    {
      return;
    }

    ObjectType = swift_getObjectType();
    v37[0] = a2;
    sub_1000276B4(0, &qword_1009753F0, NSError_ptr);
    swift_unknownObjectRetain();
    tryCast<A>(_:as:description:file:line:)();
    sub_10000C60C(v37);
    v26 = v39;
    v27 = type metadata accessor for TaskPriority();
    (*(*(v27 - 8) + 56))(v9, 1, 1, v27);
    v28 = swift_allocObject();
    v28[2] = 0;
    v28[3] = 0;
    v28[4] = v3;
    v28[5] = v26;

    v29 = &unk_1007F8780;
  }

  sub_1002B281C(0, 0, v9, v29, v28);
LABEL_19:
}

uint64_t sub_10029A330(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002993F8(a1, v4, v5, v7, v6);
}

uint64_t sub_10029A3F0()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_100299364();
}

uint64_t sub_10029A4A4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_1002992B0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_10029A578(uint64_t a1)
{
  v3 = *(v1 + 16);
  swift_unknownObjectRelease();
  v4 = *(v1 + 32);

  return _swift_deallocObject(v1, a1, 7);
}

uint64_t sub_10029A5C4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_100299214(a1, v4, v5, v7, v6);
}

uint64_t sub_10029A684(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_10029A6CC()
{
  result = qword_100975450;
  if (!qword_100975450)
  {
    sub_100280938(&qword_100975448, &qword_1007F8810);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100975450);
  }

  return result;
}

uint64_t sub_10029A730(uint64_t a1)
{
  type metadata accessor for URLResourceKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10029A78C()
{
  v0 = type metadata accessor for Logger();
  sub_100282710(v0, qword_100975470);
  v1 = sub_10000C4AC(v0, qword_100975470);
  if (qword_1009736D0 != -1)
  {
    swift_once();
  }

  v2 = sub_10000C4AC(v0, qword_1009A08B8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_10029A854(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v73 = a7;
  v78 = a6;
  v72 = a5;
  v77 = a4;
  v79 = a3;
  v70 = a2;
  v80 = a1;
  ObjectType = swift_getObjectType();
  v75 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v74 = *(v75 - 8);
  v9 = *(v74 + 64);
  __chkstk_darwin(v75);
  v71 = v65 - v10;
  v69 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v68 = *(v69 - 8);
  v11 = *(v68 + 64);
  __chkstk_darwin(v69);
  v67 = v65 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13);
  v15 = type metadata accessor for DispatchQoS();
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v17 = &v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider];
  *v17 = 0u;
  *(v17 + 1) = 0u;
  *(v17 + 4) = 0;
  v18 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestination;
  v19 = type metadata accessor for URL();
  (*(*(v19 - 8) + 56))(&v7[v18], 1, 1, v19);
  v20 = &v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter];
  *v20 = 0;
  *(v20 + 1) = 0;
  *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes] = 0;
  *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkInputStream] = 0;
  *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream] = 0;
  *&v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_adapterBufferSize] = 3145728;
  v21 = &v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate];
  *(v21 + 1) = 0;
  swift_unknownObjectWeakInit();
  v22 = &v7[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveServiceDelegate];
  *(v22 + 1) = 0;
  swift_unknownObjectWeakInit();
  v66 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_queue;
  v65[1] = sub_1000276B4(0, &qword_100975438, OS_dispatch_queue_serial_ptr);
  v65[0] = "v16@?0r^{__CFDictionary=}8";
  static DispatchQoS.userInitiated.getter();
  v23 = _swiftEmptyArrayStorage;
  aBlock[0] = _swiftEmptyArrayStorage;
  sub_1002A520C(&qword_100975440, &type metadata accessor for OS_dispatch_queue_serial.Attributes);
  sub_10028088C(&qword_100975448, &qword_1007F8810);
  sub_10029A6CC();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v68 + 104))(v67, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v69);
  v24 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v8[v66] = v24;
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask] = 0;
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipperFinishedTimeout] = 5;
  v25 = v80;
  sub_1002A5628(v80, &v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_askRequest]);
  v26 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveID;
  v27 = type metadata accessor for UUID();
  v68 = *(v27 - 8);
  (*(v68 + 16))(&v8[v26], v79, v27);
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalReceivedBytes] = 0;
  v28 = objc_allocWithZone(SDAirDropFileZipper);
  v29 = [v28 initWithQueue:v24 boundStreamSize:v70];
  *&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper] = v29;
  *(v21 + 1) = v72;
  swift_unknownObjectWeakAssign();
  *(v22 + 1) = v73;
  swift_unknownObjectWeakAssign();
  v30 = v71;
  SFProgressContinuation.init(_:initialProgress:file:line:)();
  (*(v74 + 32))(&v8[OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_decompressionStartedContinuation], v30, v75);
  v82.receiver = v8;
  v82.super_class = ObjectType;
  v31 = objc_msgSendSuper2(&v82, "init");
  v32 = (v31 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  v33 = *(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  *v32 = 0;
  v32[1] = 0;
  swift_unknownObjectRelease();
  v75 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper;
  v34 = *(v31 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper);
  v35 = _s10AskRequestVMa();
  v36 = (v25 + *(v35 + 36));
  v37 = *v36;
  v38 = v36[1];
  v39 = v34;
  v40 = String._bridgeToObjectiveC()();
  [v39 setSenderName:v40];

  v41 = *(v25 + *(v35 + 48));
  v69 = v27;
  ObjectType = v31;
  if (v41 && (v42 = *(v41 + 16)) != 0)
  {
    v43 = 0;
    v44 = v41 + 32;
    while (v43 < *(v41 + 16))
    {
      v45 = *(v44 + 16);
      v83[0] = *v44;
      v83[1] = v45;
      v46 = *(v44 + 32);
      v47 = *(v44 + 48);
      v48 = *(v44 + 64);
      v84 = *(v44 + 80);
      v83[3] = v47;
      v83[4] = v48;
      v83[2] = v46;
      sub_1002A56F0(v83, aBlock);
      v49 = v85;
      v50 = sub_100671374();
      if (v49)
      {
        (*(v68 + 8))(v79, v69);

        swift_unknownObjectRelease();
        sub_1002A574C(v83);

        goto LABEL_15;
      }

      v51 = v50;
      sub_1002A574C(v83);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v85 = 0;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v23 = sub_10028E2FC(0, v23[2] + 1, 1, v23);
      }

      v54 = v23[2];
      v53 = v23[3];
      if (v54 >= v53 >> 1)
      {
        v23 = sub_10028E2FC((v53 > 1), v54 + 1, 1, v23);
      }

      ++v43;
      v23[2] = v54 + 1;
      v23[v54 + 4] = v51;
      v44 += 88;
      if (v42 == v43)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_11:
    if (v23[2])
    {
      v55 = ObjectType;
      v56 = v75;
      v57 = *(ObjectType + v75);
      sub_1004680EC(v23);

      isa = Array._bridgeToObjectiveC()().super.isa;

      v59 = swift_allocObject();
      swift_weakInit();
      aBlock[4] = sub_1002A568C;
      aBlock[5] = v59;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_10029B760;
      aBlock[3] = &unk_1008D92A8;
      v60 = _Block_copy(aBlock);
      v61 = v55;

      [v57 setPlaceholderFiles:isa withCreationCompletionHandler:v60];
      _Block_release(v60);

      v62 = *(v55 + v56);
      [v62 setDelegate:v61];

      swift_unknownObjectRelease();
      (*(v68 + 8))(v79, v69);
      sub_1002A5694(v80);
    }

    else
    {

      v63 = type metadata accessor for SFAirDropReceive.Failure();
      sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v63 - 8) + 104))(v64, enum case for SFAirDropReceive.Failure.missingDownloadDirectory(_:), v63);
      swift_willThrow();

      swift_unknownObjectRelease();
      (*(v68 + 8))(v79, v69);
LABEL_15:
      sub_1002A5694(v80);
    }
  }
}

uint64_t sub_10029B2FC(uint64_t a1)
{
  v2 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v16 - v4;
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_10000C4AC(v6, qword_100975470);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 134217984;
    *(v9 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v7, v8, "Created %ld placeholder files", v9, 0xCu);
  }

  else
  {
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v11 = result;
    v12 = sub_10029B52C(a1);
    if (v12)
    {
      v13 = v12;
    }

    else
    {
      v13 = _swiftEmptyArrayStorage;
    }

    v14 = type metadata accessor for TaskPriority();
    (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
    v15 = swift_allocObject();
    v15[2] = 0;
    v15[3] = 0;
    v15[4] = v11;
    v15[5] = v13;
    sub_1002B281C(0, 0, v5, &unk_1007F8980, v15);
  }

  return result;
}

void *sub_10029B52C(uint64_t a1)
{
  v2 = *(a1 + 16);
  v10 = _swiftEmptyArrayStorage;
  sub_10028FB9C(0, v2, 0);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    for (i = a1 + 32; ; i += 32)
    {
      sub_10000C5B0(i, v9);
      sub_10028088C(&qword_100974F08, &unk_1007F8990);
      if ((swift_dynamicCast() & 1) == 0)
      {
        break;
      }

      v10 = v3;
      v6 = v3[2];
      v5 = v3[3];
      if (v6 >= v5 >> 1)
      {
        sub_10028FB9C((v5 > 1), v6 + 1, 1);
        v3 = v10;
      }

      v3[2] = v6 + 1;
      v3[v6 + 4] = v8;
      if (!--v2)
      {
        return v3;
      }
    }

    return 0;
  }

  return v3;
}

void *sub_10029B654(uint64_t a1)
{
  v7 = _swiftEmptyArrayStorage;
  v2 = *(a1 + 16);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return v7;
  }

  for (i = a1 + 32; ; i += 32)
  {
    sub_10000C5B0(i, v6);
    sub_1000276B4(0, &unk_100975600, _CDInteraction_ptr);
    if ((swift_dynamicCast() & 1) == 0)
    {
      break;
    }

    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    v4 = v7[2];
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    if (!--v2)
    {
      return v7;
    }
  }

  return 0;
}

uint64_t sub_10029B760(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);
  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v2(v3);
}

uint64_t sub_10029B7D4(uint64_t a1, char a2)
{
  *(v3 + 360) = a2;
  *(v3 + 216) = a1;
  *(v3 + 224) = v2;
  swift_getObjectType();
  v4 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  *(v3 + 232) = swift_task_alloc();
  *(v3 + 240) = swift_task_alloc();
  v5 = type metadata accessor for URL();
  *(v3 + 248) = v5;
  v6 = *(v5 - 8);
  *(v3 + 256) = v6;
  v7 = *(v6 + 64) + 15;
  *(v3 + 264) = swift_task_alloc();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  *(v3 + 272) = v8;
  *(v3 + 280) = v9;

  return _swift_task_switch(sub_10029B964, v8, v9);
}

uint64_t sub_10029B964()
{
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975470);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Starting Receive Compression Adapter", v4, 2u);
  }

  v5 = v0[28];

  v6 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkInputStream;
  swift_beginAccess();
  if (*(v5 + v6) || (v7 = v0[28], v8 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream, swift_beginAccess(), *(v7 + v8)))
  {
    v9 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v9 - 8) + 104))(v10, enum case for SFAirDropReceive.Failure.streamError(_:), v9);
    swift_willThrow();
LABEL_8:
    v11 = v0[33];
    v13 = v0[29];
    v12 = v0[30];

    v14 = v0[1];

    return v14();
  }

  v16 = objc_opt_self();
  swift_beginAccess();
  v0[25] = 0;
  swift_beginAccess();
  v0[26] = 0;
  [v16 getBoundStreamsWithBufferSize:3145728 inputStream:v0 + 25 outputStream:v0 + 26];
  v17 = v0[26];
  v0[36] = v17;
  *(v7 + v8) = v17;
  swift_endAccess();
  v18 = v0[25];
  v0[37] = v18;
  *(v5 + v6) = v18;
  swift_endAccess();
  if (!v18 || !v17)
  {
    v24 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    swift_allocError();
    (*(*(v24 - 8) + 104))(v25, enum case for SFAirDropReceive.Failure.streamError(_:), v24);
    swift_willThrow();
    v26 = v17;
    v27 = v18;
    goto LABEL_8;
  }

  v19 = qword_1009735E0;
  v20 = v17;
  v21 = v18;
  v22 = v20;
  if (v19 != -1)
  {
    swift_once();
  }

  v23 = static AirDropActor.shared;

  return _swift_task_switch(sub_10029BD98, v23, 0);
}

uint64_t sub_10029BD98()
{
  v1 = type metadata accessor for SDAirDropDownloadDestinationProvideriOS();
  v2 = swift_allocObject();
  v0[5] = v1;
  v0[6] = &off_1008D8778;
  v0[2] = v2;
  v3 = v0[34];
  v4 = v0[35];

  return _swift_task_switch(sub_10029BE48, v3, v4);
}

uint64_t sub_10029BE48()
{
  v1 = *(v0 + 224);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  *(v0 + 304) = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  v3 = v1 + v2;
  swift_beginAccess();
  sub_10000C788(v0 + 16, v3, &qword_100975598, &qword_1007F8930);
  swift_endAccess();
  if (*(v3 + 24))
  {
    v4 = *(v0 + 272);
    v5 = *(v0 + 280);

    return _swift_task_switch(sub_10029C078, v4, v5);
  }

  else
  {
    v6 = *(v0 + 240);
    (*(*(v0 + 256) + 56))(v6, 1, 1, *(v0 + 248));
    sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
    v7 = type metadata accessor for SFAirDropSend.Failure();
    sub_1002A520C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v7 - 8) + 104))(v8, enum case for SFAirDropSend.Failure.missingDownloadDirectory(_:), v7);
    swift_willThrow();
    v9 = *(v0 + 288);

    v10 = *(v0 + 264);
    v12 = *(v0 + 232);
    v11 = *(v0 + 240);

    v13 = *(v0 + 8);

    return v13();
  }
}

uint64_t sub_10029C078()
{
  v1 = *(v0 + 224);
  v2 = (v1 + *(v0 + 304));
  v3 = v2[3];
  if (v3)
  {
    v4 = sub_10002CDC0(v2, v3);
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveID;
    v6 = *v4;
    v7 = swift_task_alloc();
    *(v0 + 312) = v7;
    *v7 = v0;
    v7[1] = sub_10029C2B4;
    v8 = *(v0 + 240);

    return sub_10027D7A0(v8, v1 + v5);
  }

  else
  {
    v10 = *(v0 + 240);
    (*(*(v0 + 256) + 56))(v10, 1, 1, *(v0 + 248));
    sub_100005508(v10, &unk_100974E00, &qword_1007F8940);
    v11 = type metadata accessor for SFAirDropSend.Failure();
    sub_1002A520C(&qword_1009755A0, &type metadata accessor for SFAirDropSend.Failure);
    swift_allocError();
    (*(*(v11 - 8) + 104))(v12, enum case for SFAirDropSend.Failure.missingDownloadDirectory(_:), v11);
    swift_willThrow();
    v13 = *(v0 + 288);

    v14 = *(v0 + 264);
    v16 = *(v0 + 232);
    v15 = *(v0 + 240);

    v17 = *(v0 + 8);

    return v17();
  }
}

uint64_t sub_10029C2B4()
{
  v2 = *v1;
  v3 = *(*v1 + 312);
  v4 = *v1;
  *(*v1 + 320) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 272);
  if (v0)
  {
    v7 = sub_10029C750;
  }

  else
  {
    v7 = sub_10029C41C;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10029C41C()
{
  v2 = v0[32];
  v1 = v0[33];
  v4 = v0[30];
  v3 = v0[31];
  v6 = v0[28];
  v5 = v0[29];
  v7 = v0[27];
  v8 = *(v2 + 56);
  v8(v4, 0, 1, v3);
  (*(v2 + 32))(v1, v4, v3);
  (*(v2 + 16))(v5, v1, v3);
  v8(v5, 0, 1, v3);
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestination;
  swift_beginAccess();
  sub_10000C788(v5, v6 + v9, &unk_100974E00, &qword_1007F8940);
  swift_endAccess();
  v10 = _s13UploadRequestVMa();
  v0[41] = v10;
  v11 = *(v7 + *(v10 + 20));
  v0[42] = v11;
  v12 = swift_task_alloc();
  v0[43] = v12;
  *v12 = v0;
  v12[1] = sub_10029C5E8;
  v13 = v0[33];
  v14 = v0[28];

  return sub_10029CAD0(v13, v11);
}

uint64_t sub_10029C5E8()
{
  v2 = *v1;
  v3 = *(*v1 + 344);
  v4 = *v1;
  *(*v1 + 352) = v0;

  v5 = *(v2 + 280);
  v6 = *(v2 + 272);
  if (v0)
  {
    v7 = sub_10029C9F0;
  }

  else
  {
    v7 = sub_10029C808;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10029C750()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 288);

  v3 = *(v0 + 264);
  v5 = *(v0 + 232);
  v4 = *(v0 + 240);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_10029C808()
{
  v1 = *(v0 + 328);
  v3 = *(v0 + 288);
  v2 = *(v0 + 296);
  v5 = *(v0 + 256);
  v4 = *(v0 + 264);
  v18 = *(v0 + 248);
  v19 = *(v0 + 240);
  v20 = *(v0 + 232);
  v17 = *(v0 + 360);
  v7 = *(v0 + 216);
  v6 = *(v0 + 224);
  *(&v6->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes) = *(v0 + 336);
  v8 = *(&v6->super.isa + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper);
  URL._bridgeToObjectiveC()(v6);
  v10 = v9;
  [v8 setDestination:v9];

  [v8 setReadStream:v2];
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  [v8 setTotalBytes:isa];

  v12 = (v7 + *(v1 + 24));
  v13 = v12[1];
  sub_1002A52CC(*v12);
  v14 = String._bridgeToObjectiveC()();

  [v8 setUnzipCompressionType:v14];

  [v8 setShouldExtractMediaFromPhotosBundles:v17];
  [v3 open];
  [v8 unzip];

  (*(v5 + 8))(v4, v18);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t sub_10029C9F0()
{
  v1 = *(v0 + 296);
  v3 = *(v0 + 256);
  v2 = *(v0 + 264);
  v4 = *(v0 + 248);

  (*(v3 + 8))(v2, v4);
  v5 = *(v0 + 352);
  v6 = *(v0 + 264);
  v8 = *(v0 + 232);
  v7 = *(v0 + 240);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t sub_10029CAD0(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  swift_getObjectType();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10029CB8C, v5, v4);
}

uint64_t sub_10029CB8C()
{
  v1 = v0[3];
  if (v1 < 1)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    sub_10000C4AC(v11, qword_100975470);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "UPLOAD invalid total bytes";
      goto LABEL_12;
    }
  }

  else
  {
    v2 = v0[2];
    URL._bridgeToObjectiveC()(v1);
    v4 = v3;
    v5 = sub_1001EAEEC(v3, 0);

    if (v5)
    {
      static Int64._conditionallyBridgeFromObjectiveC(_:result:)();
    }

    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100975470);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Unable to get available storage";
LABEL_12:
      _os_log_impl(&_mh_execute_header, v7, v8, v10, v9, 2u);
    }
  }

  v12 = v0[1];

  return v12();
}

uint64_t sub_10029D004()
{
  v1 = *(*v0 + 40);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10029D0F8()
{
  v1[13] = v0;
  swift_getObjectType();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[14] = v3;
  v1[15] = v2;

  return _swift_task_switch(sub_10029D1B0, v3, v2);
}

uint64_t sub_10029D1B0()
{
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000C4AC(v1, qword_100975470);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Stopping Receive Compression Adapter", v4, 2u);
  }

  v5 = *(v0 + 104);

  [*(v5 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipper) stop];
  v6 = swift_task_alloc();
  *(v0 + 128) = v6;
  *v6 = v0;
  v6[1] = sub_10029D318;
  v7 = *(v0 + 104);

  return sub_10029DA7C();
}

uint64_t sub_10029D318()
{
  v1 = *v0;
  v2 = *(*v0 + 128);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_10029D438, v4, v3);
}

uint64_t sub_10029D438()
{
  v1 = *(v0 + 104);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  *(v0 + 136) = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  v3 = v1 + v2;
  swift_beginAccess();
  if (*(v3 + 24))
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v4 = *(v0 + 112);
    v5 = *(v0 + 120);

    return _swift_task_switch(sub_10029D6AC, v4, v5);
  }

  else
  {
    v6 = *(v0 + 104);
    v7 = v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
    v8 = *(v6 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
    *(v0 + 144) = v8;
    if (v8)
    {
      v9 = *(v7 + 8);
      ObjectType = swift_getObjectType();
      v11 = *(v9 + 24);
      swift_unknownObjectRetain();
      v17 = (v11 + *v11);
      v12 = v11[1];
      v13 = swift_task_alloc();
      *(v0 + 152) = v13;
      *v13 = v0;
      v13[1] = sub_10029D884;

      return v17(ObjectType, v9);
    }

    else
    {
      v14 = *(v0 + 136);
      *(v0 + 32) = 0u;
      *(v0 + 48) = 0;
      *(v0 + 16) = 0u;
      swift_beginAccess();
      sub_10000C788(v0 + 16, v6 + v14, &qword_100975598, &qword_1007F8930);
      swift_endAccess();
      v15 = *(v0 + 8);

      return v15();
    }
  }
}

uint64_t sub_10029D6AC()
{
  v1 = *(v0 + 104);
  v2 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  *(v0 + 144) = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 24);
    swift_unknownObjectRetain();
    v12 = (v6 + *v6);
    v7 = v6[1];
    v8 = swift_task_alloc();
    *(v0 + 152) = v8;
    *v8 = v0;
    v8[1] = sub_10029D884;

    return v12(ObjectType, v4);
  }

  else
  {
    v10 = *(v0 + 136);
    *(v0 + 32) = 0u;
    *(v0 + 48) = 0;
    *(v0 + 16) = 0u;
    swift_beginAccess();
    sub_10000C788(v0 + 16, v1 + v10, &qword_100975598, &qword_1007F8930);
    swift_endAccess();
    v11 = *(v0 + 8);

    return v11();
  }
}

uint64_t sub_10029D884()
{
  v1 = *v0;
  v2 = *(*v0 + 152);
  v3 = *(*v0 + 144);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 120);
  v5 = *(v1 + 112);

  return _swift_task_switch(sub_10029D9C8, v5, v4);
}

uint64_t sub_10029D9C8()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 104);
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 16) = 0u;
  swift_beginAccess();
  sub_10000C788(v0 + 16, v2 + v1, &qword_100975598, &qword_1007F8930);
  swift_endAccess();
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_10029DA7C()
{
  *(v1 + 64) = v0;
  swift_getObjectType();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_10029DB34, v3, v2);
}

uint64_t sub_10029DB34()
{
  v1 = *(v0 + 64);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream;
  swift_beginAccess();
  v3 = *(v1 + v2);
  if (v3)
  {
    v4 = v3;
    if ([v4 streamStatus] != 6 && objc_msgSend(v4, "streamStatus") != 7)
    {
      if (qword_100973530 != -1)
      {
        swift_once();
      }

      v5 = type metadata accessor for Logger();
      sub_10000C4AC(v5, qword_100975470);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v6, v7))
      {
        v8 = swift_slowAlloc();
        *v8 = 0;
        _os_log_impl(&_mh_execute_header, v6, v7, "Closing output stream", v8, 2u);
      }

      [v4 close];
      v4 = *(v1 + v2);
      *(v1 + v2) = 0;
    }
  }

  v9 = *(v0 + 64);
  v10 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkInputStream;
  swift_beginAccess();
  v11 = *(v9 + v10);
  if (v11)
  {
    v12 = v11;
    if ([v12 streamStatus] != 6 && objc_msgSend(v12, "streamStatus") != 7)
    {
      if (qword_100973530 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_10000C4AC(v13, qword_100975470);
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 0;
        _os_log_impl(&_mh_execute_header, v14, v15, "Closing input stream", v16, 2u);
      }

      [v12 close];
      v12 = *(v9 + v10);
      *(v9 + v10) = 0;
    }
  }

  v17 = *(v0 + 8);

  return v17();
}

void sub_10029DDF8(uint64_t a1, uint64_t a2)
{
  v3 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream;
  swift_beginAccess();
  v4 = *(a2 + v3);
  if (!v4)
  {
    goto LABEL_4;
  }

  v5 = v4;
  if ([v5 streamStatus] == 6)
  {

LABEL_4:
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_10000C4AC(v6, qword_100975470);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&_mh_execute_header, v7, v8, "Output stream closed", v9, 2u);
    }

    sub_10028088C(&qword_100975650, &qword_1007F8A30);
    CheckedContinuation.resume(returning:)();
    return;
  }

  if (([v5 hasSpaceAvailable] & 1) == 0)
  {
    do
    {
      if ([v5 streamStatus] == 6)
      {
        break;
      }

      if (qword_100973530 != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      sub_10000C4AC(v10, qword_100975470);
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&_mh_execute_header, v11, v12, "Buffer has no space, waiting for zipper to take bytes", v13, 2u);
      }
    }

    while (![v5 hasSpaceAvailable]);
  }

  sub_10028088C(&qword_100975650, &qword_1007F8A30);
  CheckedContinuation.resume(returning:)();
}

uint64_t sub_10029E094(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  swift_getObjectType();
  v3[8] = sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[9] = v5;
  v3[10] = v4;

  return _swift_task_switch(sub_10029E154, v5, v4);
}

uint64_t sub_10029E154()
{
  v76 = v0;
  v1 = *(v0 + 56);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream;
  v3 = swift_beginAccess();
  v11 = *(v1 + v2);
  *(v0 + 88) = v11;
  if (!v11)
  {
    goto LABEL_8;
  }

  v12 = *(v0 + 48);
  v13 = v12 >> 62;
  if ((v12 >> 62) <= 1)
  {
    if (!v13)
    {
      v14 = BYTE6(v12);
      goto LABEL_18;
    }

    v14 = *(v0 + 40);
    if (!__OFSUB__(HIDWORD(v14), v14))
    {
      if (HIDWORD(v14) - v14 <= 3145728)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v13 != 2)
  {
    goto LABEL_15;
  }

  v14 = *(v0 + 40);
  v16 = *(v14 + 16);
  v15 = *(v14 + 24);
  v17 = __OFSUB__(v15, v16);
  v18 = v15 - v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_69;
  }

  if (v18 <= 3145728)
  {
LABEL_11:
    if (v13 != 2)
    {
      v17 = __OFSUB__(HIDWORD(v14), v14);
      LODWORD(v14) = HIDWORD(v14) - v14;
      if (v17)
      {
LABEL_71:
        __break(1u);
        goto LABEL_72;
      }

      v14 = v14;
LABEL_18:
      v24 = *(v0 + 56);
      v25 = *(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalReceivedBytes);
      v17 = __OFADD__(v25, v14);
      v26 = v25 + v14;
      if (v17)
      {
        __break(1u);
      }

      else
      {
        v27 = *(v0 + 40);
        *(v24 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalReceivedBytes) = v26;
        v28 = v11;
        v2 = sub_10029EC64(v27, v12);
        if (qword_100973530 == -1)
        {
LABEL_24:
          v32 = *(v0 + 40);
          v31 = *(v0 + 48);
          v33 = type metadata accessor for Logger();
          sub_10000C4AC(v33, qword_100975470);
          sub_100294008(v32, v31);
          v34 = Logger.logObject.getter();
          v35 = static os_log_type_t.debug.getter();
          if (!os_log_type_enabled(v34, v35))
          {
            sub_100026AC0(*(v0 + 40), *(v0 + 48));
            goto LABEL_37;
          }

          v3 = swift_slowAlloc();
          *v3 = 134218240;
          *(v3 + 4) = v2;
          *(v3 + 12) = 2048;
          if (v13 > 1)
          {
            if (v13 != 2)
            {
              v36 = 0;
              goto LABEL_36;
            }

            v37 = *(*(v0 + 40) + 16);
            v38 = *(*(v0 + 40) + 24);
            v17 = __OFSUB__(v38, v37);
            v36 = v38 - v37;
            if (!v17)
            {
              goto LABEL_36;
            }

            __break(1u);
          }

          else if (!v13)
          {
            v36 = *(v0 + 54);
LABEL_36:
            v43 = *(v0 + 40);
            v42 = *(v0 + 48);
            *(v3 + 14) = v36;
            v44 = v3;
            sub_100026AC0(v43, v42);
            _os_log_impl(&_mh_execute_header, v34, v35, "Wrote %ld bytes of %ld to output stream", v44, 0x16u);

LABEL_37:

            if (v13 > 1)
            {
              if (v13 != 2)
              {
                if (!v2)
                {
                  goto LABEL_53;
                }

                v4 = 0;
                goto LABEL_60;
              }

              v45 = *(*(v0 + 40) + 16);
              v46 = *(*(v0 + 40) + 24);
              v17 = __OFSUB__(v46, v45);
              v47 = v46 - v45;
              if (v17)
              {
LABEL_72:
                __break(1u);
                goto LABEL_73;
              }

              if (v2 == v47)
              {
LABEL_53:
                v54 = *(v0 + 56);
                v55 = *(v0 + 64);
                v56 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
                v57 = swift_task_alloc();
                *(v0 + 128) = v57;
                *v57 = v0;
                v57[1] = sub_10029E9F4;
                v9 = *(v0 + 56);
                v10 = &type metadata for Bool;
                v8 = sub_1002A65D4;
                v3 = v0 + 144;
                v7 = 0x80000001007898D0;
                v4 = v54;
                v5 = v55;
                v6 = 0xD000000000000014;

                return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
              }
            }

            else if (v13)
            {
              v48 = *(v0 + 40);
              v49 = *(v0 + 44);
              v17 = __OFSUB__(v49, v48);
              v50 = v49 - v48;
              if (v17)
              {
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              if (v2 == v50)
              {
                goto LABEL_53;
              }
            }

            else if (v2 == *(v0 + 54))
            {
              goto LABEL_53;
            }

            if (v13 != 2)
            {
              if (v13 == 1)
              {
                v51 = *(v0 + 40);
                v52 = *(v0 + 44);
                v17 = __OFSUB__(v52, v51);
                v53 = v52 - v51;
                if (v17)
                {
LABEL_75:
                  __break(1u);
                  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v3, v4, v5, v6, v7, v8, v9, v10);
                }

                v4 = v53;
                goto LABEL_60;
              }

              goto LABEL_59;
            }

            v58 = *(*(v0 + 40) + 16);
            v59 = *(*(v0 + 40) + 24);
            v4 = v59 - v58;
            if (__OFSUB__(v59, v58))
            {
              __break(1u);
LABEL_59:
              v4 = *(v0 + 54);
            }

LABEL_60:
            if (v4 >= v2)
            {
              v60 = *(v0 + 40);
              v61 = *(v0 + 48);
              v62 = Data.subdata(in:)();
              v64 = v63;
              *(v0 + 96) = v62;
              *(v0 + 104) = v63;
              sub_100294008(v62, v63);
              v65 = Logger.logObject.getter();
              v66 = static os_log_type_t.debug.getter();
              sub_100026AC0(v62, v64);
              if (os_log_type_enabled(v65, v66))
              {
                v67 = swift_slowAlloc();
                v68 = swift_slowAlloc();
                v75 = v68;
                *v67 = 136315138;
                sub_100294008(v62, v64);
                v69 = Data.description.getter();
                v71 = v70;
                sub_100026AC0(v62, v64);
                v72 = sub_10000C4E4(v69, v71, &v75);

                *(v67 + 4) = v72;
                _os_log_impl(&_mh_execute_header, v65, v66, "Wrote remaining %s to output stream", v67, 0xCu);
                sub_10000C60C(v68);
              }

              v73 = swift_task_alloc();
              *(v0 + 112) = v73;
              *v73 = v0;
              v73[1] = sub_10029E7CC;
              v74 = *(v0 + 56);

              return sub_10029E094(v62, v64);
            }

            goto LABEL_70;
          }

          v39 = *(v0 + 40);
          v40 = *(v0 + 44);
          v17 = __OFSUB__(v40, v39);
          v41 = v40 - v39;
          if (v17)
          {
LABEL_74:
            __break(1u);
            goto LABEL_75;
          }

          v36 = v41;
          goto LABEL_36;
        }
      }

      swift_once();
      goto LABEL_24;
    }

    v23 = v14 + 16;
    v21 = *(v14 + 16);
    v22 = *(v23 + 8);
    v17 = __OFSUB__(v22, v21);
    v14 = v22 - v21;
    if (!v17)
    {
      goto LABEL_18;
    }

    __break(1u);
LABEL_15:
    v14 = 0;
    goto LABEL_18;
  }

LABEL_8:
  v19 = type metadata accessor for SFAirDropReceive.Failure();
  sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  swift_allocError();
  (*(*(v19 - 8) + 104))(v20, enum case for SFAirDropReceive.Failure.streamError(_:), v19);
  swift_willThrow();
  v29 = *(v0 + 8);

  return v29();
}

uint64_t sub_10029E7CC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *v1;
  *(*v1 + 120) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10029EBF8;
  }

  else
  {
    v7 = sub_10029E908;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10029E908()
{
  sub_100026AC0(v0[12], v0[13]);
  v1 = v0[7];
  v2 = v0[8];
  v3 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v4 = swift_task_alloc();
  v0[16] = v4;
  *v4 = v0;
  v4[1] = sub_10029E9F4;
  v5 = v0[7];

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 18, v1, v2, 0xD000000000000014, 0x80000001007898D0, sub_1002A65D4, v5, &type metadata for Bool);
}

uint64_t sub_10029E9F4()
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *v1;
  *(*v1 + 136) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10029EB94;
  }

  else
  {
    v7 = sub_10029EB30;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10029EB30()
{
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_10029EB94()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10029EBF8()
{
  v1 = v0[11];
  sub_100026AC0(v0[12], v0[13]);

  v2 = v0[15];
  v3 = v0[1];

  return v3();
}

unint64_t sub_10029EC64(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for POSIXError();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100294008(a1, a2);
  v10 = sub_10030DBB8(a1, a2);
  v11 = [v2 write:v10 + 4 maxLength:v10[2]];

  if ((v11 & 0x8000000000000000) != 0)
  {
    if (![v2 streamError])
    {
      v14 = 5;
      sub_1002A5860(_swiftEmptyArrayStorage);
      sub_1002A520C(&qword_100975638, &type metadata accessor for POSIXError);
      _BridgedStoredNSError.init(_:userInfo:)();
      POSIXError._nsError.getter();
      (*(v6 + 8))(v9, v5);
    }

    swift_willThrow();
  }

  return v11;
}

uint64_t sub_10029EE20()
{
  v1[8] = v0;
  swift_getObjectType();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v3 = dispatch thunk of Actor.unownedExecutor.getter();
  v1[9] = v3;
  v1[10] = v2;

  return _swift_task_switch(sub_10029EED8, v3, v2);
}

uint64_t sub_10029EED8()
{
  v1 = v0[8];
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkOutputStream;
  swift_beginAccess();
  v3 = *(v1 + v2);
  v0[11] = v3;
  if (!v3)
  {
    goto LABEL_6;
  }

  v4 = v0[8];
  v5 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_networkInputStream;
  swift_beginAccess();
  v6 = *(v4 + v5);
  v0[12] = v6;
  if (!v6)
  {
    goto LABEL_6;
  }

  v7 = v3;
  v8 = v6;
  if ([v7 streamStatus] == 6 || objc_msgSend(v7, "streamStatus") == 7)
  {

LABEL_6:
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000C4AC(v9, qword_100975470);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&_mh_execute_header, v10, v11, "Streams not ready for close", v12, 2u);
    }

LABEL_10:

    v13 = v0[1];

    return v13();
  }

  if (([v8 hasBytesAvailable] & 1) == 0)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    sub_10000C4AC(v21, qword_100975470);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&_mh_execute_header, v22, v23, "Closing output stream", v24, 2u);
    }

    [v7 close];
    v10 = *(v1 + v2);
    *(v1 + v2) = 0;
    goto LABEL_10;
  }

  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100975470);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Still bytes present on input stream", v18, 2u);
  }

  v19 = swift_task_alloc();
  v0[13] = v19;
  *v19 = v0;
  v19[1] = sub_10029F2A4;
  v20 = v0[8];

  return sub_10029EE20();
}

uint64_t sub_10029F2A4()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v4 = *v1;
  *(*v1 + 112) = v0;

  v5 = *(v2 + 80);
  v6 = *(v2 + 72);
  if (v0)
  {
    v7 = sub_10029F448;
  }

  else
  {
    v7 = sub_10029F3E0;
  }

  return _swift_task_switch(v7, v6, v5);
}

uint64_t sub_10029F3E0()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10029F448()
{
  v1 = *(v0 + 88);

  v2 = *(v0 + 8);
  v3 = *(v0 + 112);

  return v2();
}

uint64_t sub_10029F4B0(uint64_t a1)
{
  v2[27] = a1;
  v2[28] = v1;
  swift_getObjectType();
  v2[29] = sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v4 = dispatch thunk of Actor.unownedExecutor.getter();
  v2[30] = v4;
  v2[31] = v3;

  return _swift_task_switch(sub_10029F56C, v4, v3);
}

uint64_t sub_10029F56C()
{
  v1 = v0[27];
  sub_10028088C(&unk_1009755B0, &qword_1007F8958);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1007F8830;
  *(inited + 32) = String._bridgeToObjectiveC()();
  v3 = sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  v4 = NSString.init(stringLiteral:)();
  *(inited + 64) = v3;
  *(inited + 40) = v4;
  *(inited + 72) = String._bridgeToObjectiveC()();
  isa = Int._bridgeToObjectiveC()().super.super.isa;
  v6 = sub_1000276B4(0, &qword_1009755C0, NSNumber_ptr);
  *(inited + 104) = v6;
  *(inited + 80) = isa;
  *(inited + 112) = String._bridgeToObjectiveC()();
  v7.super.super.isa = Int32._bridgeToObjectiveC()().super.super.isa;
  *(inited + 144) = v6;
  *(inited + 120) = v7;
  v8 = sub_10027FE68(inited);
  swift_setDeallocating();
  sub_10028088C(&qword_1009744E0, &qword_1007F8960);
  swift_arrayDestroy();
  v0[25] = v8;
  sub_1002A5510();

  v9 = Dictionary._bridgeToObjectiveC()().super.isa;

  v10 = CacheDeleteCopyPurgeableSpaceWithInfo();

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v11 = sub_100011040(_swiftEmptyArrayStorage);
  if (!*(v11 + 16) || (v12 = sub_100012854(0xD000000000000013, 0x8000000100789710), (v13 & 1) == 0))
  {

    goto LABEL_14;
  }

  sub_10000C5B0(*(v11 + 56) + 32 * v12, (v0 + 21));

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_14:
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v24 = type metadata accessor for Logger();
    sub_10000C4AC(v24, qword_100975470);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {
      goto LABEL_19;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Insufficient storage, nothing to purge";
    goto LABEL_18;
  }

  v14 = v0[26];
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_10000C4AC(v15, qword_100975470);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134217984;
    *(v18 + 4) = v14;
    _os_log_impl(&_mh_execute_header, v16, v17, "Purgeable bytes %ld", v18, 0xCu);
  }

  v19 = v0[27];

  v20 = Logger.logObject.getter();
  if (v14 < v19)
  {
    v21 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v20, v21))
    {
LABEL_19:

      v25 = type metadata accessor for SFAirDropReceive.Failure();
      sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
      swift_allocError();
      (*(*(v25 - 8) + 104))(v26, enum case for SFAirDropReceive.Failure.insufficientStorage(_:), v25);
      swift_willThrow();
      v27 = v0[25];

      v28 = v0[1];

      return v28();
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "Insufficient storage, not enough purgeable bytes";
LABEL_18:
    _os_log_impl(&_mh_execute_header, v20, v21, v23, v22, 2u);

    goto LABEL_19;
  }

  v30 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v30))
  {
    v31 = swift_slowAlloc();
    *v31 = 0;
    _os_log_impl(&_mh_execute_header, v20, v30, "Starting cache purge", v31, 2u);
  }

  v33 = v0[28];
  v32 = v0[29];
  v34 = v0[27];

  v35 = swift_task_alloc();
  v0[32] = v35;
  *(v35 + 16) = v0 + 25;
  *(v35 + 24) = v34;
  v36 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v37 = swift_task_alloc();
  v0[33] = v37;
  *v37 = v0;
  v37[1] = sub_10029FBE0;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v37, v33, v32, 0xD000000000000020, 0x8000000100789750, sub_1002A5578, v35, &type metadata for () + 8);
}

uint64_t sub_10029FBE0()
{
  v2 = *v1;
  v3 = *(*v1 + 264);
  v9 = *v1;
  *(*v1 + 272) = v0;

  if (v0)
  {
    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_10029FD60;
  }

  else
  {
    v7 = v2[32];

    v4 = v2[30];
    v5 = v2[31];
    v6 = sub_10029FCFC;
  }

  return _swift_task_switch(v6, v4, v5);
}

uint64_t sub_10029FCFC()
{
  v1 = *(v0 + 200);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_10029FD60()
{
  v1 = v0[32];

  v2 = v0[34];
  v3 = v0[25];

  v4 = v0[1];

  return v4();
}

void sub_10029FDCC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v6 = sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = aBlock - v9;
  v11 = *a2;
  sub_1000276B4(0, &qword_100974E28, NSString_ptr);
  sub_1002A5510();

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  (*(v7 + 16))(v10, a1, v6);
  v13 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v14 = swift_allocObject();
  (*(v7 + 32))(v14 + v13, v10, v6);
  *(v14 + ((v8 + v13 + 7) & 0xFFFFFFFFFFFFFFF8)) = a3;
  aBlock[4] = sub_1002A5580;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100035F9C;
  aBlock[3] = &unk_1008D9258;
  v15 = _Block_copy(aBlock);

  CacheDeletePurgeAsync();
  _Block_release(v15);
}

uint64_t sub_10029FFE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v28[0] = 0;
    static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  v4 = sub_100011040(_swiftEmptyArrayStorage);
  if (!*(v4 + 16) || (v5 = sub_100012854(0xD000000000000013, 0x8000000100789710), (v6 & 1) == 0))
  {

    goto LABEL_12;
  }

  sub_10000C5B0(*(v4 + 56) + 32 * v5, v28);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100975470);
    v8 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v17))
    {
      goto LABEL_17;
    }

    v18 = swift_slowAlloc();
    *v18 = 0;
    v11 = "Insufficient storage, did not purge";
    v12 = v17;
    v13 = v8;
    v14 = v18;
    v15 = 2;
    goto LABEL_16;
  }

  if (v27 < a3)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    sub_10000C4AC(v7, qword_100975470);
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v8, v9))
    {
      goto LABEL_17;
    }

    v10 = swift_slowAlloc();
    *v10 = 134217984;
    *(v10 + 4) = v27;
    v11 = "Insufficient storage, not enough purgeable space %ld";
    v12 = v9;
    v13 = v8;
    v14 = v10;
    v15 = 12;
LABEL_16:
    _os_log_impl(&_mh_execute_header, v13, v12, v11, v14, v15);

LABEL_17:

    v19 = type metadata accessor for SFAirDropReceive.Failure();
    sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
    v20 = swift_allocError();
    (*(*(v19 - 8) + 104))(v21, enum case for SFAirDropReceive.Failure.insufficientStorage(_:), v19);
    v28[0] = v20;
    sub_10028088C(&qword_1009755D8, &qword_1007F8968);
    return CheckedContinuation.resume(throwing:)();
  }

  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v23 = type metadata accessor for Logger();
  sub_10000C4AC(v23, qword_100975470);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    *v26 = 0;
    _os_log_impl(&_mh_execute_header, v24, v25, "Purge cache successful, sufficient storage", v26, 2u);
  }

  sub_10028088C(&qword_1009755D8, &qword_1007F8968);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1002A03F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[8] = a4;
  v5[9] = a5;
  v6 = *(*(sub_10028088C(&unk_1009755F0, &unk_1007FE9A0) - 8) + 64) + 15;
  v5[10] = swift_task_alloc();
  v7 = *(*(sub_10028088C(&unk_100974E00, &qword_1007F8940) - 8) + 64) + 15;
  v8 = swift_task_alloc();
  v9 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
  v5[11] = v8;
  v5[12] = v9;
  type metadata accessor for SDAirDropReceiveCompressionAdapter();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v11 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[13] = v11;
  v5[14] = v10;

  return _swift_task_switch(sub_1002A052C, v11, v10);
}

uint64_t sub_1002A052C()
{
  v1 = v0[8];
  v2 = (v1 + v0[12]);
  v3 = *v2;
  v0[15] = *v2;
  if (v3)
  {
    v4 = v0[11];
    v5 = v2[1];
    ObjectType = swift_getObjectType();
    v7 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestination;
    swift_unknownObjectRetain();
    swift_beginAccess();
    sub_10000FF90(v1 + v7, v4, &unk_100974E00, &qword_1007F8940);
    v8 = *(v5 + 8);
    v17 = (v8 + *v8);
    v9 = v8[1];
    v10 = swift_task_alloc();
    v0[16] = v10;
    *v10 = v0;
    v10[1] = sub_1002A0710;
    v11 = v0[11];
    v12 = v0[9];

    return v17(v11, v12, ObjectType, v5);
  }

  else
  {
    v14 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate;
    v0[17] = 0;
    v0[18] = v14;
    v15 = v0[13];
    v16 = v0[14];

    return _swift_task_switch(sub_1002A0894, v15, v16);
  }
}

uint64_t sub_1002A0710(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 120);
  v6 = *(*v1 + 88);
  v11 = *v1;

  swift_unknownObjectRelease();
  sub_100005508(v6, &unk_100974E00, &qword_1007F8940);
  v7 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate;
  v3[17] = a1;
  v3[18] = v7;
  v8 = v3[14];
  v9 = v3[13];

  return _swift_task_switch(sub_1002A0894, v9, v8);
}

uint64_t sub_1002A0894()
{
  v1 = v0[8] + v0[18];
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[19] = Strong;
  if (Strong)
  {

    return _swift_task_switch(sub_1002A0958, 0, 0);
  }

  else
  {
    v3 = v0[17];

    v5 = v0[10];
    v4 = v0[11];

    v6 = v0[1];

    return v6();
  }
}

uint64_t sub_1002A0958()
{
  if (qword_1009735E0 != -1)
  {
    swift_once();
  }

  v0 = static AirDropActor.shared;

  return _swift_task_switch(sub_1002A09F0, v0, 0);
}

uint64_t sub_1002A09F0()
{
  if (*(v0 + 136))
  {
    v1 = *(v0 + 136);
  }

  else
  {
    v1 = _swiftEmptyArrayStorage;
  }

  if (v1[2])
  {
    v2 = *(v0 + 152);
    v3 = *(v0 + 80);
    SFAirDropReceive.FileInfo.init(placeholderURLs:)();
    v4 = type metadata accessor for SFAirDropReceive.FileInfo();
    (*(*(v4 - 8) + 56))(v3, 0, 1, v4);
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary23SDAirDropReceiveHandler_fileInfo;
    swift_beginAccess();
    sub_10000C788(v3, v2 + v5, &unk_1009755F0, &unk_1007FE9A0);
    swift_endAccess();
  }

  else
  {
  }

  v7 = *(v0 + 80);
  v6 = *(v0 + 88);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t sub_1002A0B30()
{
  v1[2] = v0;
  swift_getObjectType();
  v2 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();

  return _swift_task_switch(sub_1002A0C50, v6, v5);
}

uint64_t sub_1002A0C50()
{
  v2 = *(v0 + 32);
  v1 = *(v0 + 40);
  v3 = *(v0 + 24);
  (*(v2 + 16))(v1, *(v0 + 16) + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_decompressionStartedContinuation, v3);
  *(v0 + 80) = 1;
  SFProgressContinuation.finish(with:)();
  (*(v2 + 8))(v1, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 48) = Strong;
  if (Strong)
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    *(v0 + 56) = static AirDropActor.shared;
    v5 = swift_task_alloc();
    *(v0 + 64) = v5;
    *v5 = v0;
    v5[1] = sub_1002A0DF0;
    v6 = *(v0 + 16);

    return sub_10064ADD8(v6);
  }

  else
  {
    v8 = *(v0 + 40);

    v9 = *(v0 + 8);

    return v9();
  }
}

uint64_t sub_1002A0DF0()
{
  v2 = *(*v1 + 64);
  v3 = *(*v1 + 56);
  v6 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v4 = sub_1002A0F84;
  }

  else
  {
    v4 = sub_1002A0F18;
  }

  return _swift_task_switch(v4, v3, 0);
}

uint64_t sub_1002A0F18()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002A0F84()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);
  v3 = *(v0 + 72);

  return v2();
}

uint64_t sub_1002A0FF0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  swift_getObjectType();
  v5 = *(*(sub_10028088C(&qword_100976160, &qword_1007F8770) - 8) + 64) + 15;
  v4[9] = swift_task_alloc();
  v6 = sub_10028088C(&qword_100975658, &qword_1007F8A40);
  v4[10] = v6;
  v7 = *(v6 - 8);
  v4[11] = v7;
  v8 = *(v7 + 64) + 15;
  v4[12] = swift_task_alloc();
  v9 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  v4[13] = v9;
  v10 = *(v9 - 8);
  v4[14] = v10;
  v11 = *(v10 + 64) + 15;
  v4[15] = swift_task_alloc();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v13 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[16] = v13;
  v4[17] = v12;

  return _swift_task_switch(sub_1002A11B4, v13, v12);
}

uint64_t sub_1002A11B4()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[13];
  (*(v2 + 16))(v1, v0[8] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_decompressionStartedContinuation, v3);
  SFProgressContinuation.task.getter();
  (*(v2 + 8))(v1, v3);
  v4 = async function pointer to SFProgressTask.finalValue.getter[1];
  v5 = swift_task_alloc();
  v0[18] = v5;
  *v5 = v0;
  v5[1] = sub_1002A12B4;
  v6 = v0[12];
  v7 = v0[10];

  return SFProgressTask.finalValue.getter(v0 + 29, v7);
}

uint64_t sub_1002A12B4()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 88);
  v6 = *(*v1 + 80);
  v7 = *v1;
  *(*v1 + 152) = v0;

  (*(v5 + 8))(v4, v6);
  v8 = *(v2 + 136);
  v9 = *(v2 + 128);
  if (v0)
  {
    v10 = sub_100298A4C;
  }

  else
  {
    v10 = sub_1002A144C;
  }

  return _swift_task_switch(v10, v9, v8);
}

uint64_t sub_1002A144C()
{
  v1 = v0[8];
  v0[20] = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[21] = Strong;
  if (Strong)
  {
    v3 = swift_task_alloc();
    v0[22] = v3;
    *v3 = v0;
    v3[1] = sub_1002A18E4;
    v4 = v0[6];
    v5 = v0[7];
    v6 = v0[5];

    return sub_10064E8B8(v6, v4, v5);
  }

  v8 = v0[8];
  v9 = v8 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
  v10 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  v0[23] = v10;
  if (v10)
  {
    v11 = *(v9 + 8);
    ObjectType = swift_getObjectType();
    v13 = *(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes);
    v14 = *(v11 + 16);
    swift_unknownObjectRetain();
    v38 = (v14 + *v14);
    v15 = v14[1];
    v16 = swift_task_alloc();
    v0[24] = v16;
    *v16 = v0;
    v16[1] = sub_1002A1E44;
    v17 = v0[6];

    return v38(v17, v13, ObjectType, v11);
  }

  if (*(v8 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes) == v0[6] && v0[5] >= 1)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_10000C4AC(v19, qword_100975470);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&_mh_execute_header, v20, v21, "Received all expected bytes, closing streams after ASK response", v22, 2u);
    }

    v23 = v0[20];
    v24 = v0[8];

    v25 = swift_unknownObjectWeakLoadStrong();
    v0[25] = v25;
    if (v25)
    {
      if (qword_1009735E0 != -1)
      {
        swift_once();
      }

      v26 = static AirDropActor.shared;
      v0[26] = static AirDropActor.shared;

      return _swift_task_switch(sub_1002A2230, v26, 0);
    }

    v28 = v0[8];
    v27 = v0[9];
    v29 = type metadata accessor for TaskPriority();
    (*(*(v29 - 8) + 56))(v27, 1, 1, v29);
    v30 = swift_allocObject();
    swift_weakInit();
    v31 = swift_allocObject();
    v31[2] = 0;
    v31[3] = 0;
    v31[4] = v30;
    v32 = sub_1002B281C(0, 0, v27, &unk_1007F8A50, v31);
    v33 = *(v28 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask);
    *(v28 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask) = v32;
  }

  v34 = v0[15];
  v35 = v0[12];
  v36 = v0[9];

  v37 = v0[1];

  return v37();
}

uint64_t sub_1002A18E4()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *(*v1 + 168);
  v5 = *v1;

  if (v0)
  {
    v6 = v2[15];
    v7 = v2[12];
    v8 = v2[9];

    v9 = *(v5 + 8);

    return v9();
  }

  else
  {
    v11 = v2[16];
    v12 = v2[17];

    return _swift_task_switch(sub_1002A1A5C, v11, v12);
  }
}

uint64_t sub_1002A1A5C()
{
  v1 = v0[8];
  v2 = v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter;
  v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  v0[23] = v3;
  if (v3)
  {
    v4 = *(v2 + 8);
    ObjectType = swift_getObjectType();
    v6 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes);
    v7 = *(v4 + 16);
    swift_unknownObjectRetain();
    v32 = (v7 + *v7);
    v8 = v7[1];
    v9 = swift_task_alloc();
    v0[24] = v9;
    *v9 = v0;
    v9[1] = sub_1002A1E44;
    v10 = v0[6];

    return v32(v10, v6, ObjectType, v4);
  }

  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes) == v0[6] && v0[5] >= 1)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_10000C4AC(v13, qword_100975470);
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&_mh_execute_header, v14, v15, "Received all expected bytes, closing streams after ASK response", v16, 2u);
    }

    v17 = v0[20];
    v18 = v0[8];

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      if (qword_1009735E0 != -1)
      {
        swift_once();
      }

      v20 = static AirDropActor.shared;
      v0[26] = static AirDropActor.shared;

      return _swift_task_switch(sub_1002A2230, v20, 0);
    }

    v22 = v0[8];
    v21 = v0[9];
    v23 = type metadata accessor for TaskPriority();
    (*(*(v23 - 8) + 56))(v21, 1, 1, v23);
    v24 = swift_allocObject();
    swift_weakInit();
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v24;
    v26 = sub_1002B281C(0, 0, v21, &unk_1007F8A50, v25);
    v27 = *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask);
    *(v22 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask) = v26;
  }

  v28 = v0[15];
  v29 = v0[12];
  v30 = v0[9];

  v31 = v0[1];

  return v31();
}

uint64_t sub_1002A1E44()
{
  v1 = *v0;
  v2 = *(*v0 + 192);
  v3 = *(*v0 + 184);
  v7 = *v0;

  swift_unknownObjectRelease();
  v4 = *(v1 + 136);
  v5 = *(v1 + 128);

  return _swift_task_switch(sub_1002A1F88, v5, v4);
}

uint64_t sub_1002A1F88()
{
  if (*(v0[8] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_totalExpectedBytes) == v0[6] && v0[5] >= 1)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v2 = type metadata accessor for Logger();
    sub_10000C4AC(v2, qword_100975470);
    v3 = Logger.logObject.getter();
    v4 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v3, v4))
    {
      v5 = swift_slowAlloc();
      *v5 = 0;
      _os_log_impl(&_mh_execute_header, v3, v4, "Received all expected bytes, closing streams after ASK response", v5, 2u);
    }

    v6 = v0[20];
    v7 = v0[8];

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      if (qword_1009735E0 != -1)
      {
        swift_once();
      }

      v9 = static AirDropActor.shared;
      v0[26] = static AirDropActor.shared;

      return _swift_task_switch(sub_1002A2230, v9, 0);
    }

    v11 = v0[8];
    v10 = v0[9];
    v12 = type metadata accessor for TaskPriority();
    (*(*(v12 - 8) + 56))(v10, 1, 1, v12);
    v13 = swift_allocObject();
    swift_weakInit();
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v13;
    v15 = sub_1002B281C(0, 0, v10, &unk_1007F8A50, v14);
    v16 = *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask);
    *(v11 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask) = v15;
  }

  v17 = v0[15];
  v18 = v0[12];
  v19 = v0[9];

  v20 = v0[1];

  return v20();
}

uint64_t sub_1002A2230()
{
  v1 = v0[25];
  v2 = v0[5];
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadFinish(urlCount:)(v2);
  swift_endAccess();
  v3 = swift_task_alloc();
  v0[27] = v3;
  *v3 = v0;
  v3[1] = sub_1002A230C;
  v4 = v0[25];
  v5 = v0[8];

  return sub_10064D3F8(v5);
}

uint64_t sub_1002A230C()
{
  v2 = *v1;
  v3 = *(*v1 + 216);
  v4 = *v1;
  *(*v1 + 224) = v0;

  v5 = *(v2 + 208);
  if (v0)
  {
    v6 = sub_1002A25E4;
  }

  else
  {
    v6 = sub_1002A2438;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002A2438()
{
  v1 = *(v0 + 128);
  v2 = *(v0 + 136);

  return _swift_task_switch(sub_1002A249C, v1, v2);
}

uint64_t sub_1002A249C()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = type metadata accessor for TaskPriority();
  (*(*(v3 - 8) + 56))(v1, 1, 1, v3);
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v4;
  v6 = sub_1002B281C(0, 0, v1, &unk_1007F8A50, v5);
  v7 = *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask);
  *(v2 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask) = v6;

  v8 = v0[15];
  v9 = v0[12];
  v10 = v0[9];

  v11 = v0[1];

  return v11();
}

uint64_t sub_1002A25E4()
{
  v1 = *(v0 + 224);
  v2 = *(v0 + 120);
  v3 = *(v0 + 96);
  v4 = *(v0 + 72);

  v5 = *(v0 + 8);

  return v5();
}

uint64_t sub_1002A2670(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a4;
  v5 = type metadata accessor for ContinuousClock();
  v4[6] = v5;
  v6 = *(v5 - 8);
  v4[7] = v6;
  v7 = *(v6 + 64) + 15;
  v4[8] = swift_task_alloc();

  return _swift_task_switch(sub_1002A2730, 0, 0);
}

uint64_t sub_1002A2730()
{
  v1 = v0[5];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[9] = Strong;
  if (Strong)
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    v0[10] = sub_10000C4AC(v3, qword_100975470);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&_mh_execute_header, v4, v5, "Waiting for zipper finish callback", v6, 2u);
    }

    v0[11] = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_zipperFinishedTimeout;
    type metadata accessor for SDAirDropReceiveCompressionAdapter();
    sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return _swift_task_switch(sub_1002A2920, v8, v7);
  }

  else
  {
    v9 = v0[8];

    v10 = v0[1];

    return v10();
  }
}

uint64_t sub_1002A294C()
{
  v1 = v0[8];
  v2 = v0[12];
  v3 = 1000000000000000000 * v2;
  v4 = (v2 * 0xDE0B6B3A7640000uLL) >> 64;
  v5 = (v2 >> 63) & 0xF21F494C589C0000;
  static Clock<>.continuous.getter();
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_1002A2A40;
  v7 = v0[8];

  return (sub_10002ED10)(v3, v5 + v4, 0, 0, 1);
}

uint64_t sub_1002A2A40()
{
  v2 = *(*v1 + 104);
  v3 = *(*v1 + 64);
  v4 = *(*v1 + 56);
  v5 = *(*v1 + 48);
  v8 = *v1;
  *(*v1 + 112) = v0;

  (*(v4 + 8))(v3, v5);
  if (v0)
  {
    v6 = sub_1002A2CB8;
  }

  else
  {
    v6 = sub_1002A2BB0;
  }

  return _swift_task_switch(v6, 0, 0);
}

uint64_t sub_1002A2BB0()
{
  v1 = v0[10];
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "No response from zipper, closing streams", v4, 2u);
  }

  v5 = swift_task_alloc();
  v0[15] = v5;
  *v5 = v0;
  v5[1] = sub_1002A2D24;
  v6 = v0[9];

  return sub_10029EE20();
}

uint64_t sub_1002A2CB8()
{
  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A2D24()
{
  v2 = *(*v1 + 120);
  v3 = *v1;
  v3[16] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A2FF8, 0, 0);
  }

  else
  {
    v4 = swift_task_alloc();
    v3[17] = v4;
    *v4 = v3;
    v4[1] = sub_1002A2E90;
    v5 = v3[9];

    return sub_10029DA7C();
  }
}

uint64_t sub_1002A2E90()
{
  v1 = *(*v0 + 136);
  v3 = *v0;

  return _swift_task_switch(sub_1002A2F8C, 0, 0);
}

uint64_t sub_1002A2F8C()
{
  v1 = v0[9];

  v2 = v0[8];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002A2FF8()
{
  v1 = v0[16];
  v3 = v0[8];
  v2 = v0[9];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A3064(uint64_t a1, uint64_t a2)
{
  v3[9] = a2;
  v3[10] = v2;
  v3[8] = a1;
  swift_getObjectType();
  v4 = type metadata accessor for URL();
  v3[11] = v4;
  v5 = *(v4 - 8);
  v3[12] = v5;
  v6 = *(v5 + 64) + 15;
  v3[13] = swift_task_alloc();
  sub_1002A520C(&qword_100975590, type metadata accessor for SDAirDropReceiveCompressionAdapter);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v3[14] = v8;
  v3[15] = v7;

  return _swift_task_switch(sub_1002A317C, v8, v7);
}

uint64_t sub_1002A317C()
{
  v1 = v0[10];
  v0[16] = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate;
  Strong = swift_unknownObjectWeakLoadStrong();
  v0[17] = Strong;
  if (Strong)
  {
    v0[18] = *(v0[8] + 16);
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v3 = static AirDropActor.shared;
    v0[19] = static AirDropActor.shared;

    return _swift_task_switch(sub_1002A3324, v3, 0);
  }

  else
  {
    v4 = v0[10];
    v5 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask;
    if (*(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask))
    {
      v6 = *(v4 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask);

      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      Task.cancel()();

      v7 = *(v4 + v5);
    }

    *(v4 + v5) = 0;

    v8 = swift_task_alloc();
    v0[22] = v8;
    *v8 = v0;
    v8[1] = sub_1002A36FC;
    v9 = v0[10];

    return sub_10029EE20();
  }
}

uint64_t sub_1002A3324()
{
  v2 = v0[17];
  v1 = v0[18];
  swift_beginAccess();
  SFAirDrop.NetworkMetrics.logUploadFinish(urlCount:)(v1);
  swift_endAccess();
  v3 = swift_task_alloc();
  v0[20] = v3;
  *v3 = v0;
  v3[1] = sub_1002A33FC;
  v4 = v0[17];
  v5 = v0[10];

  return sub_10064D3F8(v5);
}

uint64_t sub_1002A33FC()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *v1;
  *(*v1 + 168) = v0;

  v5 = *(v2 + 152);
  if (v0)
  {
    v6 = sub_1002A3690;
  }

  else
  {
    v6 = sub_1002A3528;
  }

  return _swift_task_switch(v6, v5, 0);
}

uint64_t sub_1002A3528()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 120);

  return _swift_task_switch(sub_1002A358C, v1, v2);
}

uint64_t sub_1002A358C()
{
  v1 = *(v0 + 80);
  v2 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask;
  if (*(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask))
  {
    v3 = *(v1 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask);

    sub_10028088C(&unk_10097A930, &unk_1007F9050);
    Task.cancel()();

    v4 = *(v1 + v2);
  }

  *(v1 + v2) = 0;

  v5 = swift_task_alloc();
  *(v0 + 176) = v5;
  *v5 = v0;
  v5[1] = sub_1002A36FC;
  v6 = *(v0 + 80);

  return sub_10029EE20();
}

uint64_t sub_1002A3690()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 104);

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_1002A36FC()
{
  v2 = *v1;
  v3 = *(*v1 + 176);
  v4 = *v1;

  if (v0)
  {
    v5 = v2[13];

    v6 = *(v4 + 8);

    return v6();
  }

  else
  {
    v8 = swift_task_alloc();
    v2[23] = v8;
    *v8 = v4;
    v8[1] = sub_1002A3874;
    v9 = v2[10];

    return sub_10029DA7C();
  }
}

uint64_t sub_1002A3874()
{
  v1 = *v0;
  v2 = *(*v0 + 184);
  v6 = *v0;

  v3 = *(v1 + 120);
  v4 = *(v1 + 112);

  return _swift_task_switch(sub_1002A3994, v4, v3);
}

uint64_t sub_1002A3994()
{
  v53 = v0;
  v1 = v0[8];
  v2 = *(v1 + 16);
  v3 = _swiftEmptyArrayStorage;
  if (v2)
  {
    v4 = v0[12];
    v52 = _swiftEmptyArrayStorage;
    sub_10028FAB4(0, v2, 0);
    v3 = _swiftEmptyArrayStorage;
    v6 = *(v4 + 16);
    v5 = v4 + 16;
    v50 = v6;
    v7 = (*(v5 + 64) + 32) & ~*(v5 + 64);
    v8 = v1 + v7;
    v9 = *(v5 + 56);
    do
    {
      v50(v0[13], v8, v0[11]);
      v52 = v3;
      v11 = v3[2];
      v10 = v3[3];
      if (v11 >= v10 >> 1)
      {
        sub_10028FAB4(v10 > 1, v11 + 1, 1);
        v3 = v52;
      }

      v12 = v0[13];
      v13 = v0[11];
      v3[2] = v11 + 1;
      (*(v5 + 16))(v3 + v7 + v11 * v9, v12, v13);
      v8 += v9;
      --v2;
    }

    while (v2);
  }

  v0[24] = v3;
  v14 = v0[10] + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider;
  swift_beginAccess();
  if (*(v14 + 24))
  {
    if (qword_1009735E0 != -1)
    {
      swift_once();
    }

    v15 = v0[14];
    v16 = v0[15];

    return _swift_task_switch(sub_1002A3F34, v15, v16);
  }

  v17 = v0[9];
  if (v17)
  {
    v18 = v0[24];
    v19 = v0[9];
    swift_errorRetain();

    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_10000C4AC(v20, qword_100975470);
    swift_errorRetain();
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v23 = 138412290;
      swift_errorRetain();
      v25 = _swift_stdlib_bridgeErrorToNSError();
      *(v23 + 4) = v25;
      *v24 = v25;
      _os_log_impl(&_mh_execute_header, v21, v22, "Decompression failed %@", v23, 0xCu);
      sub_100005508(v24, &qword_100975400, &qword_1007F65D0);
    }

    v26 = v0[16];
    v27 = v0[10];

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v51 = sub_10064ECD0;
      v29 = swift_task_alloc();
      v0[26] = v29;
      *v29 = v0;
      v29[1] = sub_1002A4348;
      v30 = v17;
LABEL_25:

      return v51(v30);
    }
  }

  else
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v31 = v0[24];
    v32 = type metadata accessor for Logger();
    sub_10000C4AC(v32, qword_100975470);

    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = v0[24];
      v36 = v0[11];
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v52 = v38;
      *v37 = 136315138;
      v39 = Array.description.getter();
      v41 = sub_10000C4E4(v39, v40, &v52);

      *(v37 + 4) = v41;
      _os_log_impl(&_mh_execute_header, v33, v34, "Decompression succeeded %s", v37, 0xCu);
      sub_10000C60C(v38);
    }

    v42 = v0[16];
    v43 = v0[10];
    v44 = swift_unknownObjectWeakLoadStrong();
    v0[28] = v44;
    if (v44)
    {
      v51 = sub_10064F074;
      v45 = swift_task_alloc();
      v0[29] = v45;
      *v45 = v0;
      v45[1] = sub_1002A4574;
      v30 = v0[24];
      goto LABEL_25;
    }

    v46 = v0[24];
  }

  v47 = v0[13];

  v48 = v0[1];

  return v48();
}

uint64_t sub_1002A3F34()
{
  v36 = v0;
  v1 = v0[9];
  if (v1)
  {
    v2 = v0[24];
    v3 = v0[9];
    swift_errorRetain();

    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000C4AC(v4, qword_100975470);
    swift_errorRetain();
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138412290;
      swift_errorRetain();
      v9 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v9;
      *v8 = v9;
      _os_log_impl(&_mh_execute_header, v5, v6, "Decompression failed %@", v7, 0xCu);
      sub_100005508(v8, &qword_100975400, &qword_1007F65D0);
    }

    v10 = v0[16];
    v11 = v0[10];

    Strong = swift_unknownObjectWeakLoadStrong();
    v0[25] = Strong;
    if (Strong)
    {
      v34 = sub_10064ECD0;
      v13 = swift_task_alloc();
      v0[26] = v13;
      *v13 = v0;
      v13[1] = sub_1002A4348;
      v14 = v1;
LABEL_14:

      return v34(v14);
    }
  }

  else
  {
    if (qword_100973530 != -1)
    {
      swift_once();
    }

    v15 = v0[24];
    v16 = type metadata accessor for Logger();
    sub_10000C4AC(v16, qword_100975470);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[24];
      v20 = v0[11];
      v21 = swift_slowAlloc();
      v22 = swift_slowAlloc();
      v35 = v22;
      *v21 = 136315138;
      v23 = Array.description.getter();
      v25 = sub_10000C4E4(v23, v24, &v35);

      *(v21 + 4) = v25;
      _os_log_impl(&_mh_execute_header, v17, v18, "Decompression succeeded %s", v21, 0xCu);
      sub_10000C60C(v22);
    }

    v26 = v0[16];
    v27 = v0[10];
    v28 = swift_unknownObjectWeakLoadStrong();
    v0[28] = v28;
    if (v28)
    {
      v34 = sub_10064F074;
      v29 = swift_task_alloc();
      v0[29] = v29;
      *v29 = v0;
      v29[1] = sub_1002A4574;
      v14 = v0[24];
      goto LABEL_14;
    }

    v31 = v0[24];
  }

  v32 = v0[13];

  v33 = v0[1];

  return v33();
}

uint64_t sub_1002A4348()
{
  v2 = *v1;
  v3 = *(*v1 + 208);
  v4 = *(*v1 + 200);
  v5 = *v1;
  *(*v1 + 216) = v0;

  v6 = *(v2 + 120);
  v7 = *(v2 + 112);
  if (v0)
  {
    v8 = sub_1002A4508;
  }

  else
  {
    v8 = sub_1002A449C;
  }

  return _swift_task_switch(v8, v7, v6);
}

uint64_t sub_1002A449C()
{
  v1 = v0[9];

  v2 = v0[13];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1002A4508()
{
  v1 = v0[9];

  v2 = v0[27];
  v3 = v0[13];

  v4 = v0[1];

  return v4();
}

uint64_t sub_1002A4574()
{
  v1 = *v0;
  v2 = *(*v0 + 232);
  v3 = *(*v0 + 224);
  v4 = *(*v0 + 192);
  v8 = *v0;

  v5 = *(v1 + 104);

  v6 = *(v8 + 8);

  return v6();
}

uint64_t URL.quarantine()@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for URL();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_1002A4730()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_100005C00;

  return sub_1002A0B30();
}

uint64_t sub_1002A47C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v11 = swift_task_alloc();
  *(v7 + 16) = v11;
  *v11 = v7;
  v11[1] = sub_100005C04;

  return sub_1002A0FF0(a5, a6, a7);
}

uint64_t sub_1002A4894()
{
  v1 = type metadata accessor for SFAirDropReceive.Failure();
  sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
  v2 = swift_allocError();
  v0[3] = v2;
  (*(*(v1 - 8) + 104))(v3, enum case for SFAirDropReceive.Failure.incompleteTransfer(_:), v1);
  v4 = swift_task_alloc();
  v0[4] = v4;
  *v4 = v0;
  v4[1] = sub_1002A49CC;
  v5 = v0[2];

  return sub_1002A3064(_swiftEmptyArrayStorage, v2);
}

uint64_t sub_1002A49CC()
{
  v2 = *(*v1 + 32);
  v3 = *v1;
  v3[5] = v0;

  if (v0)
  {

    return _swift_task_switch(sub_1002A4B08, 0, 0);
  }

  else
  {
    v4 = v3[3];

    v5 = v3[1];

    return v5();
  }
}

uint64_t sub_1002A4B08()
{
  v1 = v0[3];

  v2 = v0[1];
  v3 = v0[5];

  return v2();
}

uint64_t sub_1002A4B6C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_1002A3064(a5, 0);
}

uint64_t sub_1002A4C0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_100005C00;

  return sub_1002A3064(_swiftEmptyArrayStorage, a5);
}

uint64_t sub_1002A4D5C()
{
  sub_1002A5694(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_askRequest);
  v1 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveID;
  v2 = type metadata accessor for UUID();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestinationProvider, &qword_100975598, &qword_1007F8930);
  sub_100005508(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_downloadDestination, &unk_100974E00, &qword_1007F8940);
  v3 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_progressReporter);
  swift_unknownObjectRelease();

  sub_10004C60C(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_delegate);
  sub_10004C60C(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_receiveServiceDelegate);

  v4 = OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_decompressionStartedContinuation;
  v5 = sub_10028088C(&unk_1009755E0, &qword_1007F8970);
  (*(*(v5 - 8) + 8))(v0 + v4, v5);
  v6 = *(v0 + OBJC_IVAR____TtC16DaemoniOSLibrary34SDAirDropReceiveCompressionAdapter_closeStreamsTask);

  return v0;
}

uint64_t sub_1002A4ED8()
{
  sub_1002A4D5C();
  v1 = *((swift_isaMask & *v0) + 0x30);
  v2 = *((swift_isaMask & *v0) + 0x34);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SDAirDropReceiveCompressionAdapter()
{
  result = qword_100975570;
  if (!qword_100975570)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1002A4F94()
{
  v0 = _s10AskRequestVMa();
  if (v1 <= 0x3F)
  {
    v8 = *(v0 - 8) + 64;
    v2 = type metadata accessor for UUID();
    if (v3 <= 0x3F)
    {
      v9 = *(v2 - 8) + 64;
      sub_1002A512C();
      if (v5 <= 0x3F)
      {
        v10 = *(v4 - 8) + 64;
        sub_1002A5184();
        if (v7 <= 0x3F)
        {
          v11 = *(v6 - 8) + 64;
          swift_updateClassMetadata2();
        }
      }
    }
  }
}

void sub_1002A512C()
{
  if (!qword_100975580)
  {
    type metadata accessor for URL();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_100975580);
    }
  }
}

void sub_1002A5184()
{
  if (!qword_100975588)
  {
    v0 = type metadata accessor for SFProgressContinuation();
    if (!v1)
    {
      atomic_store(v0, &qword_100975588);
    }
  }
}

uint64_t sub_1002A520C(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1002A5254(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();

  return sub_100011814(a1, a2, v6);
}

const __CFString *sub_1002A52CC(uint64_t a1)
{
  v2 = String._bridgeToObjectiveC()();
  if (!@"application/zip")
  {
LABEL_5:
    v6 = v2;
    goto LABEL_6;
  }

  type metadata accessor for CFString(0);
  sub_1002A520C(&qword_100975420, type metadata accessor for CFString);
  v3 = v2;
  v4 = @"application/zip";
  v5 = static _CFObject.== infix(_:_:)();

  if (v5)
  {

    if (@"pkzip")
    {
      goto LABEL_13;
    }

    __break(1u);
    goto LABEL_5;
  }

LABEL_6:
  if (@"application/x-cpio")
  {
    type metadata accessor for CFString(0);
    sub_1002A520C(&qword_100975420, type metadata accessor for CFString);
    v3 = v2;
    v7 = @"application/x-cpio";
    v8 = static _CFObject.== infix(_:_:)();

    if (v8)
    {

      if (!@"gzip")
      {
        __break(1u);
        goto LABEL_10;
      }

LABEL_13:
      a1 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return a1;
    }
  }

LABEL_10:
  if (!@"application/x-dvzip")
  {

    goto LABEL_15;
  }

  type metadata accessor for CFString(0);
  sub_1002A520C(&qword_100975420, type metadata accessor for CFString);
  v3 = v2;
  v9 = @"application/x-dvzip";
  v10 = static _CFObject.== infix(_:_:)();

  if ((v10 & 1) == 0)
  {
LABEL_15:

    return a1;
  }

  result = @"dvzip";
  if (@"dvzip")
  {
    goto LABEL_13;
  }

  __break(1u);
  return result;
}

unint64_t sub_1002A5510()
{
  result = qword_1009755D0;
  if (!qword_1009755D0)
  {
    sub_1000276B4(255, &qword_100974E28, NSString_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009755D0);
  }

  return result;
}

uint64_t sub_1002A5580(uint64_t a1)
{
  v3 = *(sub_10028088C(&qword_1009755D8, &qword_1007F8968) - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_10029FFE8(a1, v1 + v4, v5);
}

uint64_t sub_1002A5628(uint64_t a1, uint64_t a2)
{
  v4 = _s10AskRequestVMa();
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1002A5694(uint64_t a1)
{
  v2 = _s10AskRequestVMa();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1002A57A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002A03F8(a1, v4, v5, v7, v6);
}

unint64_t sub_1002A5860(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10028088C(&unk_100975640, &unk_1007F64E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_10000FF90(v4, &v13, &qword_1009744D0, &qword_1007F8A20);
      v5 = v13;
      v6 = v14;
      result = sub_1002A5254(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1000106E0(&v15, (v3[7] + 32 * result));
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

void sub_1002A5990(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_10028088C(&qword_100976160, &qword_1007F8770);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = v57 - v8;
  if (qword_100973530 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = sub_10000C4AC(v10, qword_100975470);
  swift_unknownObjectRetain();
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v57[1] = v11;
    v15 = v9;
    v16 = v3;
    v17 = v14;
    v18 = swift_slowAlloc();
    v58[0] = v18;
    *v17 = 136315138;
    v59 = a2;
    swift_unknownObjectRetain();
    v19 = String.init<A>(describing:)();
    v21 = sub_10000C4E4(v19, v20, v58);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v12, v13, "Zipper Update: %s", v17, 0xCu);
    sub_10000C60C(v18);

    v3 = v16;
    v9 = v15;
  }

  if (a1 > 8)
  {
    if (a1 != 9)
    {
      if (a1 != 10)
      {
        return;
      }

      v58[0] = a2;
      swift_unknownObjectRetain();
      sub_10028088C(&unk_10097A930, &unk_1007F9050);
      if (swift_dynamicCast())
      {
        v38 = v59;
      }

      else
      {
        v44 = type metadata accessor for SFAirDropReceive.Failure();
        sub_1002A520C(&unk_10097A660, &type metadata accessor for SFAirDropReceive.Failure);
        v38 = swift_allocError();
        (*(*(v44 - 8) + 104))(v45, enum case for SFAirDropReceive.Failure.incompleteTransfer(_:), v44);
      }

      v46 = type metadata accessor for TaskPriority();
      (*(*(v46 - 8) + 56))(v9, 1, 1, v46);
      v42 = swift_allocObject();
      v42[2] = 0;
      v42[3] = 0;
      v42[4] = v3;
      v42[5] = v38;

      v43 = &unk_1007F89A8;
      goto LABEL_26;
    }

    v58[0] = a2;
    swift_unknownObjectRetain();
    sub_10028088C(&qword_100975610, &qword_1007F89B0);
    if (swift_dynamicCast())
    {
      v40 = v59;
      if (*(v59 + 16))
      {
        v41 = type metadata accessor for TaskPriority();
        (*(*(v41 - 8) + 56))(v9, 1, 1, v41);
        v42 = swift_allocObject();
        v42[2] = 0;
        v42[3] = 0;
        v42[4] = v3;
        v42[5] = v40;

        v43 = &unk_1007F89D0;
LABEL_26:
        v47 = v43;
        v48 = v9;
        v49 = v42;
LABEL_36:
        sub_1002B281C(0, 0, v48, v47, v49);

        return;
      }
    }

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v53, v54))
    {
      v55 = swift_slowAlloc();
      *v55 = 0;
      _os_log_impl(&_mh_execute_header, v53, v54, "Invalid completed URLs", v55, 2u);
    }

    v56 = type metadata accessor for TaskPriority();
    (*(*(v56 - 8) + 56))(v9, 1, 1, v56);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v3;

    v37 = &unk_1007F89C0;
    goto LABEL_35;
  }

  if (a1 == 5)
  {
    v39 = type metadata accessor for TaskPriority();
    (*(*(v39 - 8) + 56))(v9, 1, 1, v39);
    v36 = swift_allocObject();
    v36[2] = 0;
    v36[3] = 0;
    v36[4] = v3;

    v37 = &unk_1007F8A00;
    goto LABEL_35;
  }

  if (a1 != 7)
  {
    return;
  }

  v58[0] = a2;
  swift_unknownObjectRetain();
  sub_10028088C(&qword_100975618, &qword_1007F89D8);
  if (swift_dynamicCast())
  {
    v22 = v59;
    v59 = kSFOperationFilesCopiedKey;
    v23 = kSFOperationFilesCopiedKey;
    sub_10028088C(&unk_100975620, &qword_1007F89E0);
    sub_100294298();
    AnyHashable.init<A>(_:)();
    if (*(v22 + 16))
    {
      v24 = sub_100570754(v58);
      if (v25)
      {
        v26 = *(*(v22 + 56) + 8 * v24);
        sub_100285E74(v58);
        v59 = kSFOperationBytesCopiedKey;
        v27 = kSFOperationBytesCopiedKey;
        AnyHashable.init<A>(_:)();
        if (*(v22 + 16))
        {
          v28 = sub_100570754(v58);
          if (v29)
          {
            v30 = *(*(v22 + 56) + 8 * v28);
            sub_100285E74(v58);
            v59 = kSFOperationTimeRemainingKey;
            v31 = kSFOperationTimeRemainingKey;
            AnyHashable.init<A>(_:)();
            if (*(v22 + 16))
            {
              v32 = sub_100570754(v58);
              if (v33)
              {
                v34 = *(*(v22 + 56) + 8 * v32);
                sub_100285E74(v58);

                v35 = type metadata accessor for TaskPriority();
                (*(*(v35 - 8) + 56))(v9, 1, 1, v35);
                v36 = swift_allocObject();
                v36[2] = 0;
                v36[3] = 0;
                v36[4] = v3;
                v36[5] = v26;
                v36[6] = v30;
                v36[7] = v34;

                v37 = &unk_1007F89F0;
LABEL_35:
                v47 = v37;
                v48 = v9;
                v49 = v36;
                goto LABEL_36;
              }
            }
          }
        }
      }
    }

    sub_100285E74(v58);
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    *v52 = 0;
    _os_log_impl(&_mh_execute_header, v50, v51, "Unknown progress info", v52, 2u);
  }
}

uint64_t sub_1002A61C0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002A4C0C(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A6280(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002A4874(a1, v4, v5, v6);
}

uint64_t sub_1002A6334(void (*a1)(void))
{
  v3 = v1[2];
  swift_unknownObjectRelease();
  v4 = v1[4];

  a1(v1[5]);

  return _swift_deallocObject(v1, 48, 7);
}

uint64_t sub_1002A638C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_100005C00;

  return sub_1002A4B6C(a1, v4, v5, v7, v6);
}

uint64_t sub_1002A644C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v9 = v1[6];
  v8 = v1[7];
  v10 = swift_task_alloc();
  *(v2 + 16) = v10;
  *v10 = v2;
  v10[1] = sub_100005C04;

  return sub_1002A47C0(a1, v4, v5, v6, v7, v9, v8);
}

uint64_t sub_1002A6520()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_100005C00;

  return sub_1002A4730();
}

uint64_t sub_1002A65DC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_100005C00;

  return sub_1002A2670(a1, v4, v5, v6);
}

id sub_1002A669C()
{
  v1 = *(_s15MacApprovePhoneV18InitialLockContextVMa(0) + 48);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationApprovePrompt) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

uint64_t sub_1002A670C()
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  result = swift_allocObject();
  *(result + 16) = xmmword_1007F8A60;
  if (qword_100973538 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(result + 56) = &type metadata for SDAuthentication.Operation.CheckRemoteDeviceOSVersionIsSupported;
  *(result + 64) = &off_10097BE00;
  *(result + 96) = &type metadata for SDAuthentication.Operation.RecordApproveClientBundleID;
  *(result + 104) = &off_10097BC80;
  *(result + 136) = &type metadata for SDAuthentication.Operation.RecordRemoteDevice;
  *(result + 144) = &off_10097BD70;
  *(result + 176) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(result + 184) = &off_10097BD58;
  *(result + 216) = &type metadata for SDAuthentication.Operation.CheckACMTokenExists;
  *(result + 224) = &off_10097BC68;
  *(result + 256) = &type metadata for SDAuthentication.Operation.IncludeApproveMetadataInMessage;
  *(result + 264) = &off_10097BC50;
  *(result + 296) = &type metadata for SDAuthentication.Operation.SendApprovePromptMessage;
  *(result + 304) = &off_10097BC38;
  return result;
}

void sub_1002A6864()
{
  type metadata accessor for SDAuthenticationCommonOperationInput();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_1009756D0);
    if (v1 <= 0x3F)
    {
      sub_1002A6C44(319, &qword_1009756D8, &type metadata for AuthenticationPolicies, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002A697C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002A6BEC();
        if (v3 <= 0x3F)
        {
          sub_1002A6C44(319, qword_1009771F0, &type metadata for String, &type metadata accessor for Optional);
          if (v4 <= 0x3F)
          {
            sub_1002A6C44(319, &qword_100975790, &type metadata for Bool, &type metadata accessor for Optional);
            if (v5 <= 0x3F)
            {
              sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
              if (v6 <= 0x3F)
              {
                sub_1002A6C94(319, &qword_100975798, &unk_1009757A0, off_1008C8D00);
                if (v7 <= 0x3F)
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

void sub_1002A6B2C()
{
  if (!qword_100975778)
  {
    sub_100280938(&qword_100975780, &qword_1007F8AF8);
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &qword_100975778);
    }
  }
}

uint64_t sub_1002A6B90(uint64_t a1, unint64_t *a2)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

void sub_1002A6BEC()
{
  if (!qword_10097DB80)
  {
    type metadata accessor for Date();
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &qword_10097DB80);
    }
  }
}

void sub_1002A6C44(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

void sub_1002A6C94(uint64_t a1, unint64_t *a2, unint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    sub_1000276B4(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void sub_1002A6D34()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    type metadata accessor for SDAuthenticationSessionMetrics();
    if (v1 <= 0x3F)
    {
      sub_1002A6B90(319, &qword_100975788);
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002A6DE0(uint64_t a1)
{
  v2 = (v1 + *(a1 + 32));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1002A6E18(uint64_t a1)
{
  v2 = (v1 + *(a1 + 36));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1002A6E50(uint64_t a1)
{
  v2 = v1 + *(a1 + 44);
  v3 = *v2;
  sub_1002A9924(*v2, *(v2 + 8));
  return v3;
}

uint64_t (*sub_1002A6E90(uint64_t a1, uint64_t a2))()
{
  result = LongHash.init(storage:);
  v4 = v2 + *(a2 + 24);
  return result;
}

uint64_t (*sub_1002A6F24(uint64_t a1, uint64_t a2))()
{
  result = LongHash.init(storage:);
  v4 = v2 + *(a2 + 20);
  return result;
}

id sub_1002A6F48@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.CheckLocalSecurityPolicy;
  *(v6 + 64) = &off_10097BD58;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RequestUserApproval;
  *(v6 + 104) = &off_10097C228;
  *a3 = v6;
  if ([a1 hasBundleID] && objc_msgSend(a1, "hasAppName") && objc_msgSend(a1, "hasBiometricOnly"))
  {
    v7 = _s15MacApprovePhoneV17InitialKeyContextVMa(0);
    sub_1002A9938(a2 + *(v7 + 24), (a3 + 1));
    v8 = *(v7 + 20);
    v9 = _s15MacApprovePhoneV26HandleApprovePromptContextVMa(0);
    sub_1002A985C(a2 + v8, a3 + v9[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 bundleID];
    if (result)
    {
      v11 = result;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v14 = v13;

      v15 = (a3 + v9[7]);
      *v15 = v12;
      v15[1] = v14;
      result = [a1 appName];
      if (result)
      {
        v16 = result;
        v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v19 = v18;

        v20 = (a3 + v9[8]);
        *v20 = v17;
        v20[1] = v19;
        LOBYTE(v16) = [a1 biometricOnly];

        result = sub_1002A98C4(a2, _s15MacApprovePhoneV17InitialKeyContextVMa);
        *(a3 + v9[9]) = v16;
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }

  else
  {
    _StringGuts.grow(_:)(55);
    v21._object = 0x8000000100789AF0;
    v21._countAndFlagsBits = 0xD000000000000035;
    String.append(_:)(v21);
    v22 = [a1 description];
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;

    v26._countAndFlagsBits = v23;
    v26._object = v25;
    String.append(_:)(v26);

    LODWORD(v23) = sub_100010F88(1, 0, 0xE000000000000000);
    v28 = v27;
    sub_1000115C8();
    swift_allocError();
    *v29 = v23;
    *(v29 + 8) = v28;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV17InitialKeyContextVMa);
  }

  return result;
}

uint64_t sub_1002A725C(uint64_t a1)
{
  v2 = (v1 + *(a1 + 28));
  v3 = *v2;
  v4 = v2[1];

  return v3;
}

uint64_t sub_1002A7294@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X4>, uint64_t *a4@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v8 + 56) = &type metadata for SDAuthentication.Operation.UseApprovalACMTokenForIncludingFirstAKSTokenInMessage;
  *(v8 + 64) = &off_10097BF28;
  *(v8 + 96) = &type metadata for SDAuthentication.Operation.SendRequestMessage;
  *(v8 + 104) = &off_10097BCF8;
  *a4 = v8;
  *(a4 + 3) = xmmword_1007F8A80;
  v9 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa(0);
  *(a4 + *(v9 + 32)) = 0;
  *(a4 + *(v9 + 36)) = 0;
  if (a2 >> 60 == 15)
  {
    v10 = sub_100010F88(30, 0xD00000000000001CLL, 0x8000000100789B30);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();
    sub_10028BCC0(a1, a2);

    sub_1002A98C4(a3, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);

    return sub_10028BCC0(a4[6], a4[7]);
  }

  else
  {
    v15 = v9;
    sub_100294008(a1, a2);
    sub_10028BCC0(a1, a2);

    sub_1002A9938(a3 + 8, (a4 + 1));
    sub_10028BCC0(a4[6], a4[7]);
    a4[6] = a1;
    a4[7] = a2;
    v16 = _s15MacApprovePhoneV26HandleApprovePromptContextVMa(0);
    sub_1002A985C(a3 + *(v16 + 24), a4 + *(v15 + 28), type metadata accessor for SDAuthenticationSessionMetrics);
    return sub_1002A98C4(a3, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);
  }
}

uint64_t sub_1002A74CC()
{
  v1 = *(v0 + 48);
  sub_1002A9924(v1, *(v0 + 56));
  return v1;
}

uint64_t (*sub_1002A756C(uint64_t a1, uint64_t a2))()
{
  result = LongHash.init(storage:);
  v4 = v2 + *(a2 + 28);
  return result;
}

id sub_1002A75C4()
{
  v1 = *(_s15MacApprovePhoneV20HandleRequestContextVMa(0) + 36);
  v2 = *(v0 + v1);
  if (v2)
  {
    v3 = *(v0 + v1);
LABEL_5:
    v5 = v2;
    return v3;
  }

  result = [objc_allocWithZone(SDAuthenticationResponse) init];
  if (result)
  {
    *(v0 + v1) = result;
    v3 = result;
    v2 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1002A7634@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.UseApproveTokenForIncludingFirstAKSTokenInMessage;
  *(v6 + 64) = &off_10097BF10;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendResponseMessage;
  *(v6 + 104) = &off_10097C1B0;
  *a3 = v6;
  v7 = _s15MacApprovePhoneV20HandleRequestContextVMa(0);
  v8 = a3 + v7[7];
  *v8 = xmmword_1007F8A80;
  *(a3 + v7[9]) = 0;
  *(a3 + v7[10]) = 1;
  if ([a1 hasAksToken])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v9 = _s15MacApprovePhoneV18InitialLockContextVMa(0);
    sub_1002A985C(a2 + *(v9 + 24), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    v10 = (a2 + *(v9 + 44));
    v11 = *v10;
    v12 = v10[1];
    v13 = *v8;
    v14 = *(v8 + 1);
    *v8 = *v10;
    *(v8 + 1) = v12;
    sub_1002A9924(v11, v12);
    sub_10028BCC0(v13, v14);
    result = [a1 aksToken];
    if (result)
    {
      v16 = result;
      v17 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v19 = v18;

      result = sub_1002A98C4(a2, _s15MacApprovePhoneV18InitialLockContextVMa);
      v20 = (a3 + v7[8]);
      *v20 = v17;
      v20[1] = v19;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = sub_100010F88(1, 0xD000000000000028, 0x8000000100789B50);
    v23 = v22;
    sub_1000115C8();
    swift_allocError();
    *v24 = v21;
    *(v24 + 8) = v23;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV18InitialLockContextVMa);

    return sub_10028BCC0(*v8, *(v8 + 1));
  }

  return result;
}

uint64_t sub_1002A78B8(uint64_t a1)
{
  v2 = v1 + *(a1 + 32);
  v3 = *v2;
  sub_100294008(*v2, *(v2 + 8));
  return v3;
}

uint64_t sub_1002A7924(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v3 = a3();
  v4 = [v3 data];

  if (v4)
  {
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v5;
  }

  else
  {
    v7 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v9 = v8;
    sub_1000115C8();
    swift_allocError();
    *v10 = v7;
    *(v10 + 8) = v9;
    return swift_willThrow();
  }
}

id sub_1002A79F8(uint64_t (*a1)(void), Class *a2)
{
  v4 = *(a1(0) + 32);
  v5 = *(v2 + v4);
  if (v5)
  {
    v6 = *(v2 + v4);
LABEL_5:
    v8 = v5;
    return v6;
  }

  result = [objc_allocWithZone(*a2) init];
  if (result)
  {
    *(v2 + v4) = result;
    v6 = result;
    v5 = 0;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

id sub_1002A7A78@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.IncludeNextAKSTokenInMessage;
  *(v6 + 64) = &off_10097BEF8;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendTokenMessage;
  *(v6 + 104) = &off_10097C180;
  *a3 = v6;
  v7 = _s15MacApprovePhoneV21HandleResponseContextVMa(0);
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 7;
  if ([a1 hasAksToken])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v8 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa(0);
    sub_1002A985C(a2 + *(v8 + 28), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_1002A98C4(a2, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
      v14 = (a3 + v7[7]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000029, 0x8000000100789B80);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
  }

  return result;
}

id sub_1002A7D08@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8830;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.ConsumeAKSToken;
  *(v6 + 64) = &off_10097BEE0;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.SendConfirmation;
  *(v6 + 104) = &off_10097C270;
  *(v6 + 136) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 144) = &off_10097BB00;
  *a3 = v6;
  v7 = _s15MacApprovePhoneV18HandleTokenContextVMa(0);
  *(a3 + v7[8]) = 0;
  *(a3 + v7[9]) = 2;
  if ([a1 hasAksToken])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v8 = _s15MacApprovePhoneV20HandleRequestContextVMa(0);
    sub_1002A985C(a2 + *(v8 + 24), a3 + v7[6], type metadata accessor for SDAuthenticationSessionMetrics);
    result = [a1 aksToken];
    if (result)
    {
      v10 = result;
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      result = sub_1002A98C4(a2, _s15MacApprovePhoneV20HandleRequestContextVMa);
      v14 = (a3 + v7[7]);
      *v14 = v11;
      v14[1] = v13;
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v15 = sub_100010F88(1, 0xD000000000000019, 0x8000000100789BB0);
    v17 = v16;
    sub_1000115C8();
    swift_allocError();
    *v18 = v15;
    *(v18 + 8) = v17;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV20HandleRequestContextVMa);
  }

  return result;
}

uint64_t sub_1002A7F44(uint64_t a1, uint64_t a2, void (*a3)(void, void))
{
  v4 = (v3 + *(a1 + 28));
  v5 = *v4;
  a3(*v4, v4[1]);
  return v5;
}

uint64_t sub_1002A7FEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), Class *a4)
{
  v4 = sub_1002A79F8(a3, a4);
  v5 = [v4 data];

  if (v5)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();

    return v6;
  }

  else
  {
    v8 = sub_100010F88(10, 0xD00000000000001ALL, 0x8000000100789BF0);
    v10 = v9;
    sub_1000115C8();
    swift_allocError();
    *v11 = v8;
    *(v11 + 8) = v10;
    return swift_willThrow();
  }
}

uint64_t sub_1002A80C4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  sub_10028088C(&qword_100975660, &qword_1007FA820);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1007F8A70;
  if (qword_100973538 != -1)
  {
    swift_once();
  }

  *(v6 + 56) = &type metadata for SDAuthentication.Operation.HandleSucceededResult;
  *(v6 + 64) = &off_10097C258;
  *(v6 + 96) = &type metadata for SDAuthentication.Operation.RecordSessionFinished;
  *(v6 + 104) = &off_10097BB00;
  *a3 = v6;
  if ([a1 hasSuccess])
  {
    sub_1002A9938(a2 + 8, (a3 + 1));
    v7 = *(_s15MacApprovePhoneV21HandleResponseContextVMa(0) + 24);
    v8 = _s15MacApprovePhoneV25HandleConfirmationContextVMa(0);
    sub_1002A985C(a2 + v7, a3 + *(v8 + 24), type metadata accessor for SDAuthenticationSessionMetrics);
    LOBYTE(v7) = [a1 success];

    result = sub_1002A98C4(a2, _s15MacApprovePhoneV21HandleResponseContextVMa);
    *(a3 + *(v8 + 28)) = v7;
  }

  else
  {
    v10 = sub_100010F88(1, 0xD000000000000016, 0x8000000100789BD0);
    v12 = v11;
    sub_1000115C8();
    swift_allocError();
    *v13 = v10;
    *(v13 + 8) = v12;
    swift_willThrow();

    sub_1002A98C4(a2, _s15MacApprovePhoneV21HandleResponseContextVMa);
  }

  return result;
}

void sub_1002A82AC(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v185 = a2;
  v178 = a3;
  v149 = _s15MacApprovePhoneV25HandleConfirmationContextVMa(0);
  v4 = *(*(v149 - 8) + 64);
  __chkstk_darwin(v149);
  v153 = (&v148 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = sub_10028088C(&qword_100975888, &qword_1007F8BF8);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v158 = &v148 - v8;
  v150 = _s15MacApprovePhoneV18HandleTokenContextVMa(0);
  v9 = *(*(v150 - 8) + 64);
  __chkstk_darwin(v150);
  v157 = (&v148 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_10028088C(&qword_100975890, &qword_1007F8C00);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v164 = &v148 - v13;
  v159 = _s15MacApprovePhoneV21HandleResponseContextVMa(0);
  v156 = *(v159 - 8);
  v14 = *(v156 + 64);
  v15 = __chkstk_darwin(v159);
  v151 = &v148 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v15);
  v152 = &v148 - v18;
  __chkstk_darwin(v17);
  v163 = (&v148 - v19);
  v20 = sub_10028088C(&qword_100975898, &qword_1007F8C08);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v170 = &v148 - v22;
  v165 = _s15MacApprovePhoneV20HandleRequestContextVMa(0);
  v162 = *(v165 - 8);
  v23 = *(v162 + 64);
  v24 = __chkstk_darwin(v165);
  v154 = &v148 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v155 = &v148 - v27;
  __chkstk_darwin(v26);
  v169 = (&v148 - v28);
  v29 = sub_10028088C(&qword_1009758A0, &qword_1007F8C10);
  v30 = *(*(v29 - 8) + 64);
  __chkstk_darwin(v29 - 8);
  v177 = &v148 - v31;
  v32 = _s15MacApprovePhoneV18InitialLockContextVMa(0);
  v175 = *(v32 - 8);
  v176 = v32;
  v33 = *(v175 + 64);
  v34 = __chkstk_darwin(v32);
  v167 = &v148 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v34);
  v168 = &v148 - v36;
  v171 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa(0);
  v166 = *(v171 - 8);
  v37 = *(v166 + 64);
  v38 = __chkstk_darwin(v171);
  v160 = &v148 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = __chkstk_darwin(v38);
  v161 = &v148 - v41;
  __chkstk_darwin(v40);
  v174 = (&v148 - v42);
  v43 = sub_10028088C(&qword_1009758A8, &qword_1007F8C18);
  v44 = *(*(v43 - 8) + 64);
  __chkstk_darwin(v43 - 8);
  v46 = &v148 - v45;
  v47 = _s15MacApprovePhoneV26HandleApprovePromptContextVMa(0);
  v179 = *(v47 - 8);
  v180 = v47;
  v48 = *(v179 + 64);
  v49 = __chkstk_darwin(v47);
  v172 = &v148 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = __chkstk_darwin(v49);
  v173 = &v148 - v52;
  __chkstk_darwin(v51);
  v54 = (&v148 - v53);
  v55 = sub_10028088C(&qword_1009758B0, &unk_1007F8C20);
  v56 = *(*(v55 - 8) + 64);
  __chkstk_darwin(v55 - 8);
  v58 = &v148 - v57;
  v59 = _s15MacApprovePhoneV17InitialKeyContextVMa(0);
  v60 = *(v59 - 8);
  v61 = *(v60 + 64);
  v62 = __chkstk_darwin(v59);
  v64 = &v148 - ((v63 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v62);
  v66 = &v148 - v65;
  sub_1002A9938(a1, v184);
  sub_10028088C(&qword_1009819F0, &unk_1007FAAA0);
  sub_1000276B4(0, &unk_1009757A0, off_1008C8D00);
  if (swift_dynamicCast())
  {
    v67 = v182;
    sub_1002A9938(v185, v184);
    sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
    v68 = swift_dynamicCast();
    v69 = *(v60 + 56);
    if (!v68)
    {
      v69(v58, 1, 1, v59);
      sub_100005508(v58, &qword_1009758B0, &unk_1007F8C20);
      v84 = sub_100010F88(10, 0xD000000000000046, 0x8000000100789AA0);
      v86 = v85;
      sub_1000115C8();
      swift_allocError();
      *v87 = v84;
      *(v87 + 8) = v86;
      swift_willThrow();

      return;
    }

    v69(v58, 0, 1, v59);
    sub_1002A97F4(v58, v66, _s15MacApprovePhoneV17InitialKeyContextVMa);
    sub_1002A985C(v66, v64, _s15MacApprovePhoneV17InitialKeyContextVMa);
    v70 = v67;
    v71 = v181;
    sub_1002A6F48(v70, v64, v54);
    if (v71)
    {
      v72 = _s15MacApprovePhoneV17InitialKeyContextVMa;
      v73 = v66;
LABEL_33:
      sub_1002A98C4(v73, v72);

      return;
    }

    v109 = v178;
    v178[3] = v180;
    v109[4] = &off_1008D9988;
    v110 = sub_10002F604(v109);
    sub_1002A97F4(v54, v110, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);

    v111 = _s15MacApprovePhoneV17InitialKeyContextVMa;
    v112 = v66;
    goto LABEL_43;
  }

  v74 = v185;
  sub_1002A9938(a1, v184);
  if (!swift_dynamicCast())
  {
    sub_1002A9938(a1, v184);
    sub_1000276B4(0, &qword_1009758B8, off_1008C8D48);
    if (swift_dynamicCast())
    {
      v88 = v182;
      sub_1002A9938(v74, v184);
      sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
      v90 = v176;
      v89 = v177;
      v91 = swift_dynamicCast();
      v92 = *(v175 + 56);
      if (v91)
      {
        v92(v89, 0, 1, v90);
        v93 = v168;
        sub_1002A97F4(v89, v168, _s15MacApprovePhoneV18InitialLockContextVMa);
        v94 = v167;
        sub_1002A985C(v93, v167, _s15MacApprovePhoneV18InitialLockContextVMa);
        v70 = v88;
        v95 = v169;
        v96 = v181;
        sub_1002A7634(v70, v94, v169);
        if (v96)
        {
          v97 = _s15MacApprovePhoneV18InitialLockContextVMa;
LABEL_32:
          v72 = v97;
          v73 = v93;
          goto LABEL_33;
        }

        v131 = v178;
        v178[3] = v165;
        v131[4] = &off_1008D99B8;
        v132 = sub_10002F604(v131);
        sub_1002A97F4(v95, v132, _s15MacApprovePhoneV20HandleRequestContextVMa);

        v133 = _s15MacApprovePhoneV18InitialLockContextVMa;
        goto LABEL_42;
      }

      v92(v89, 1, 1, v90);
      sub_100005508(v89, &qword_1009758A0, &qword_1007F8C10);
      v113 = "sult, message may be replayed";
      v114 = 0xD000000000000047;
    }

    else
    {
      sub_1002A9938(a1, v184);
      sub_1000276B4(0, &qword_1009758C0, off_1008C8D50);
      if (swift_dynamicCast())
      {
        v88 = v182;
        sub_1002A9938(v74, v184);
        sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
        v102 = v170;
        v103 = v171;
        v104 = swift_dynamicCast();
        v105 = *(v166 + 56);
        if (v104)
        {
          v105(v102, 0, 1, v103);
          v93 = v161;
          sub_1002A97F4(v102, v161, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
          v106 = v160;
          sub_1002A985C(v93, v160, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
          v70 = v88;
          v107 = v163;
          v108 = v181;
          sub_1002A7A78(v70, v106, v163);
          if (v108)
          {
            v97 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa;
            goto LABEL_32;
          }

          v138 = v178;
          v178[3] = v159;
          v138[4] = &off_1008D99D0;
          v139 = sub_10002F604(v138);
          sub_1002A97F4(v107, v139, _s15MacApprovePhoneV21HandleResponseContextVMa);

          v133 = _s15MacApprovePhoneV24HandleUserApprovalResultVMa;
LABEL_42:
          v111 = v133;
          v112 = v93;
          goto LABEL_43;
        }

        v105(v102, 1, 1, v103);
        sub_100005508(v102, &qword_100975898, &qword_1007F8C08);
        v113 = ", message may be replayed";
        v114 = 0xD00000000000004DLL;
      }

      else
      {
        sub_1002A9938(a1, v184);
        sub_1000276B4(0, &qword_1009758C8, off_1008C8D58);
        if (swift_dynamicCast())
        {
          v88 = v182;
          sub_1002A9938(v74, v184);
          sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
          v115 = v164;
          v116 = v165;
          v117 = swift_dynamicCast();
          v118 = *(v162 + 56);
          if (v117)
          {
            v118(v115, 0, 1, v116);
            v93 = v155;
            sub_1002A97F4(v115, v155, _s15MacApprovePhoneV20HandleRequestContextVMa);
            v119 = v154;
            sub_1002A985C(v93, v154, _s15MacApprovePhoneV20HandleRequestContextVMa);
            v70 = v88;
            v120 = v157;
            v121 = v181;
            sub_1002A7D08(v70, v119, v157);
            if (v121)
            {
              v97 = _s15MacApprovePhoneV20HandleRequestContextVMa;
              goto LABEL_32;
            }

            v144 = v178;
            v178[3] = v150;
            v144[4] = &off_1008D99E8;
            v145 = sub_10002F604(v144);
            sub_1002A97F4(v120, v145, _s15MacApprovePhoneV18HandleTokenContextVMa);

            v133 = _s15MacApprovePhoneV20HandleRequestContextVMa;
            goto LABEL_42;
          }

          v118(v115, 1, 1, v116);
          sub_100005508(v115, &qword_100975890, &qword_1007F8C00);
          v113 = "t, message may be replayed";
          v114 = 0xD000000000000049;
        }

        else
        {
          sub_1002A9938(a1, v184);
          sub_1000276B4(0, &qword_1009758D0, off_1008C8D08);
          if (!swift_dynamicCast())
          {
            v134 = sub_100010F88(10, 0xD00000000000001FLL, 0x80000001007898F0);
            v136 = v135;
            sub_1000115C8();
            swift_allocError();
            *v137 = v134;
            *(v137 + 8) = v136;
            swift_willThrow();
            return;
          }

          v88 = v182;
          sub_1002A9938(v74, v184);
          sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
          v124 = v158;
          v125 = v159;
          v126 = swift_dynamicCast();
          v127 = *(v156 + 56);
          if (v126)
          {
            v127(v124, 0, 1, v125);
            v93 = v152;
            sub_1002A97F4(v124, v152, _s15MacApprovePhoneV21HandleResponseContextVMa);
            v128 = v151;
            sub_1002A985C(v93, v151, _s15MacApprovePhoneV21HandleResponseContextVMa);
            v70 = v88;
            v129 = v153;
            v130 = v181;
            sub_1002A80C4(v70, v128, v153);
            if (v130)
            {
              v97 = _s15MacApprovePhoneV21HandleResponseContextVMa;
              goto LABEL_32;
            }

            v146 = v178;
            v178[3] = v149;
            v146[4] = &off_1008D9A00;
            v147 = sub_10002F604(v146);
            sub_1002A97F4(v129, v147, _s15MacApprovePhoneV25HandleConfirmationContextVMa);

            v133 = _s15MacApprovePhoneV21HandleResponseContextVMa;
            goto LABEL_42;
          }

          v127(v124, 1, 1, v125);
          sub_100005508(v124, &qword_100975888, &qword_1007F8BF8);
          v113 = "Invalid message object received";
          v114 = 0xD00000000000004ALL;
        }
      }
    }

    v140 = sub_100010F88(10, v114, v113 | 0x8000000000000000);
    v142 = v141;
    sub_1000115C8();
    swift_allocError();
    *v143 = v140;
    *(v143 + 8) = v142;
    swift_willThrow();

    return;
  }

  v76 = v182;
  v75 = v183;
  sub_1002A9938(v74, v184);
  sub_10028088C(&qword_1009758D8, &unk_1007F8C30);
  v77 = v180;
  v78 = swift_dynamicCast();
  v79 = *(v179 + 56);
  if (!v78)
  {
    v79(v46, 1, 1, v77);
    sub_100005508(v46, &qword_1009758A8, &qword_1007F8C18);
    v98 = sub_100010F88(10, 0xD00000000000004FLL, 0x8000000100789A50);
    v100 = v99;
    sub_1000115C8();
    swift_allocError();
    *v101 = v98;
    *(v101 + 8) = v100;
    swift_willThrow();
    goto LABEL_15;
  }

  v79(v46, 0, 1, v77);
  v80 = v173;
  sub_1002A97F4(v46, v173, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);
  v81 = v172;
  sub_1002A985C(v80, v172, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);
  sub_1002A9924(v76, v75);

  v82 = v174;
  v83 = v181;
  sub_1002A7294(v76, v75, v81, v174);
  if (v83)
  {
    sub_1002A98C4(v80, _s15MacApprovePhoneV26HandleApprovePromptContextVMa);
LABEL_15:
    sub_10028BCC0(v76, v75);

    return;
  }

  v122 = v178;
  v178[3] = v171;
  v122[4] = &off_1008D99A0;
  v123 = sub_10002F604(v122);
  sub_1002A97F4(v82, v123, _s15MacApprovePhoneV24HandleUserApprovalResultVMa);
  sub_10028BCC0(v76, v75);

  v111 = _s15MacApprovePhoneV26HandleApprovePromptContextVMa;
  v112 = v80;
LABEL_43:
  sub_1002A98C4(v112, v111);
}

uint64_t sub_1002A97F4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A985C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1002A98C4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1002A9924(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_100294008(a1, a2);
  }

  return a1;
}

uint64_t sub_1002A9938(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void sub_1002A99C4()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1002A9AAC()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
      if (v2 <= 0x3F)
      {
        type metadata accessor for SDAuthenticationSessionMetrics();
        if (v3 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_1009759E8, &qword_1009758B8, off_1008C8D48);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002A9BF4()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        sub_1002A6C44(319, &unk_100978AB0, &type metadata for Data, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          sub_1002A6C94(319, &unk_100975A90, &qword_1009758C0, off_1008C8D50);
          if (v4 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1002A9DB0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t *a4, unint64_t *a5, uint64_t *a6)
{
  sub_1002A6B2C();
  if (v9 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v10 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v11 <= 0x3F)
      {
        sub_1002A6C94(319, a4, a5, a6);
        if (v12 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t sub_1002A9EB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for SDAuthenticationSessionMetrics();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_1002A9F78(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for SDAuthenticationSessionMetrics();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_1002AA01C()
{
  sub_1002A6B2C();
  if (v0 <= 0x3F)
  {
    sub_1002A6B90(319, &qword_100975788);
    if (v1 <= 0x3F)
    {
      type metadata accessor for SDAuthenticationSessionMetrics();
      if (v2 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_1002AA0E8(unsigned __int8 a1, unsigned __int8 a2)
{
  v2 = 0x674179627261656ELL;
  v3 = 0xEB00000000746E65;
  v4 = a1;
  v5 = 0xD000000000000010;
  v6 = 0x80000001007888E0;
  if (a1 != 5)
  {
    v5 = 0x65756C4265726F63;
    v6 = 0xED000068746F6F74;
  }

  v7 = 0x4274726F70706172;
  v8 = 0xE900000000000054;
  if (a1 != 3)
  {
    v7 = 0x4174726F70706172;
    v8 = 0xEB000000004C4457;
  }

  if (a1 <= 4u)
  {
    v5 = v7;
    v6 = v8;
  }

  v9 = 0xE800000000000000;
  v10 = 0x6C61636F4C736469;
  if (a1 != 1)
  {
    v10 = 0x7265746E49736469;
    v9 = 0xEB0000000074656ELL;
  }

  if (!a1)
  {
    v10 = 0x674179627261656ELL;
    v9 = 0xEB00000000746E65;
  }

  if (a1 <= 2u)
  {
    v11 = v10;
  }

  else
  {
    v11 = v5;
  }

  if (v4 <= 2)
  {
    v12 = v9;
  }

  else
  {
    v12 = v6;
  }

  if (a2 <= 2u)
  {
    if (a2)
    {
      if (a2 == 1)
      {
        v3 = 0xE800000000000000;
        if (v11 != 0x6C61636F4C736469)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v3 = 0xEB0000000074656ELL;
        if (v11 != 0x7265746E49736469)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }
  }

  else
  {
    if (a2 > 4u)
    {
      if (a2 == 5)
      {
        v3 = 0x80000001007888E0;
        if (v11 != 0xD000000000000010)
        {
          goto LABEL_36;
        }
      }

      else
      {
        v3 = 0xED000068746F6F74;
        if (v11 != 0x65756C4265726F63)
        {
          goto LABEL_36;
        }
      }

      goto LABEL_33;
    }

    if (a2 == 3)
    {
      v3 = 0xE900000000000054;
      if (v11 != 0x4274726F70706172)
      {
        goto LABEL_36;
      }

      goto LABEL_33;
    }

    v2 = 0x4174726F70706172;
    v3 = 0xEB000000004C4457;
  }

  if (v11 != v2)
  {
LABEL_36:
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    goto LABEL_37;
  }

LABEL_33:
  if (v12 != v3)
  {
    goto LABEL_36;
  }

  v13 = 1;
LABEL_37:

  return v13 & 1;
}