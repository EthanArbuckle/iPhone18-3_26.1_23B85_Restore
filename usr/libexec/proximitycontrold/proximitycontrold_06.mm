uint64_t sub_100088250(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100035D04(&qword_10033DEE8, &qword_100274208);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v38 = v3;
    v39 = v5;
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
      v19 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v22 = v19 | (v9 << 6);
      v23 = (*(v5 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = (*(v5 + 56) + 24 * v22);
      v27 = v26[1];
      v41 = *v26;
      v28 = v26[2];
      if ((v40 & 1) == 0)
      {
      }

      v29 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v8 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v15 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v15 + 8 * v32);
          if (v36 != -1)
          {
            v16 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v31) & ~*(v15 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v41;
      v18[1] = v27;
      v18[2] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v21 = v10[v9];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v13 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v5 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v10, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v37;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100088520(uint64_t a1, int a2)
{
  v3 = v2;
  v57 = type metadata accessor for Date();
  v6 = *(v57 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v57);
  v56 = &v45 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v58 = &v45 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_100035D04(&qword_10033DEE0, &qword_100274200);
  v52 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v17 = 0;
    v18 = v10;
    v19 = (v13 + 64);
    v20 = 1 << *(v13 + 32);
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    else
    {
      v21 = -1;
    }

    v22 = v21 & *(v13 + 64);
    v23 = (v20 + 63) >> 6;
    v48 = (v18 + 16);
    v49 = v18;
    v46 = v3;
    v47 = v6 + 16;
    v50 = v13;
    v51 = v6;
    v53 = (v6 + 32);
    v54 = (v18 + 32);
    v24 = result + 64;
    v25 = v18;
    while (v22)
    {
      v27 = __clz(__rbit64(v22));
      v22 &= v22 - 1;
LABEL_17:
      v30 = v27 | (v17 << 6);
      v31 = *(v13 + 48);
      v55 = *(v25 + 72);
      v32 = v31 + v55 * v30;
      if (v52)
      {
        (*v54)(v58, v32, v9);
        v33 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 32))(v56, v33 + v34 * v30, v57);
      }

      else
      {
        (*v48)(v58, v32, v9);
        v35 = *(v13 + 56);
        v34 = *(v51 + 72);
        (*(v51 + 16))(v56, v35 + v34 * v30, v57);
      }

      v36 = *(v16 + 40);
      sub_100019194(&qword_100339848);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v37 = -1 << *(v16 + 32);
      v38 = result & ~v37;
      v39 = v38 >> 6;
      if (((-1 << v38) & ~*(v24 + 8 * (v38 >> 6))) == 0)
      {
        v40 = 0;
        v41 = (63 - v37) >> 6;
        while (++v39 != v41 || (v40 & 1) == 0)
        {
          v42 = v39 == v41;
          if (v39 == v41)
          {
            v39 = 0;
          }

          v40 |= v42;
          v43 = *(v24 + 8 * v39);
          if (v43 != -1)
          {
            v26 = __clz(__rbit64(~v43)) + (v39 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v38) & ~*(v24 + 8 * (v38 >> 6)))) | v38 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v24 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      (*v54)((*(v16 + 48) + v55 * v26), v58, v9);
      result = (*v53)(*(v16 + 56) + v34 * v26, v56, v57);
      ++*(v16 + 16);
      v25 = v49;
      v13 = v50;
    }

    v28 = v17;
    while (1)
    {
      v17 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v23)
      {
        break;
      }

      v29 = v19[v17];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v22 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v52 & 1) == 0)
    {

      v3 = v46;
      goto LABEL_36;
    }

    v44 = 1 << *(v13 + 32);
    v3 = v46;
    if (v44 >= 64)
    {
      bzero(v19, ((v44 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v19 = -1 << v44;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_1000889B4(uint64_t a1, int a2)
{
  v3 = v2;
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v47 = *(active - 8);
  v7 = *(v47 + 64);
  __chkstk_darwin(active - 8);
  v52 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for UUID();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v51 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v14 = *(*v3 + 24);
  }

  sub_100035D04(&qword_10033DF30, &unk_100274280);
  v48 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v16 = result;
  if (*(v13 + 16))
  {
    v43 = v3;
    v17 = 0;
    v18 = (v13 + 64);
    v19 = 1 << *(v13 + 32);
    if (v19 < 64)
    {
      v20 = ~(-1 << v19);
    }

    else
    {
      v20 = -1;
    }

    v21 = v20 & *(v13 + 64);
    v22 = (v19 + 63) >> 6;
    v44 = (v10 + 16);
    v45 = v10;
    v49 = (v10 + 32);
    v23 = result + 64;
    v46 = v13;
    while (v21)
    {
      v25 = __clz(__rbit64(v21));
      v21 &= v21 - 1;
LABEL_17:
      v28 = v25 | (v17 << 6);
      v29 = *(v13 + 48);
      v50 = *(v10 + 72);
      v30 = v29 + v50 * v28;
      if (v48)
      {
        (*v49)(v51, v30, v9);
        v31 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_10008CD9C(v31 + v32 * v28, v52);
      }

      else
      {
        (*v44)(v51, v30, v9);
        v33 = *(v13 + 56);
        v32 = *(v47 + 72);
        sub_10008CD34(v33 + v32 * v28, v52, type metadata accessor for PCUserAlertManager.ActiveAlertContext);
      }

      v34 = *(v16 + 40);
      sub_100019194(&qword_100339848);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v35 = -1 << *(v16 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v23 + 8 * (v36 >> 6))) == 0)
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
          v41 = *(v23 + 8 * v37);
          if (v41 != -1)
          {
            v24 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v24 = __clz(__rbit64((-1 << v36) & ~*(v23 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v23 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
      (*v49)((*(v16 + 48) + v50 * v24), v51, v9);
      result = sub_10008CD9C(v52, *(v16 + 56) + v32 * v24);
      ++*(v16 + 16);
      v10 = v45;
      v13 = v46;
    }

    v26 = v17;
    while (1)
    {
      v17 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v17 >= v22)
      {
        break;
      }

      v27 = v18[v17];
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v21 = (v27 - 1) & v27;
        goto LABEL_17;
      }
    }

    if ((v48 & 1) == 0)
    {

      v3 = v43;
      goto LABEL_36;
    }

    v42 = 1 << *(v13 + 32);
    v3 = v43;
    if (v42 >= 64)
    {
      bzero(v18, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v18 = -1 << v42;
    }

    *(v13 + 16) = 0;
  }

LABEL_36:
  *v3 = v16;
  return result;
}

uint64_t sub_100088E2C(uint64_t a1, int a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v7;
  if (*(*v7 + 24) > a1)
  {
    v16 = *(*v7 + 24);
  }

  sub_100035D04(a3, a4);
  v47 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v18 = result;
  if (*(v15 + 16))
  {
    v51 = v14;
    v43 = v7;
    v19 = 0;
    v20 = (v15 + 64);
    v21 = 1 << *(v15 + 32);
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    else
    {
      v22 = -1;
    }

    v23 = v22 & *(v15 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = (v11 + 16);
    v45 = v15;
    v46 = v11;
    v48 = (v11 + 32);
    v25 = result + 64;
    while (v23)
    {
      v27 = __clz(__rbit64(v23));
      v23 &= v23 - 1;
LABEL_17:
      v30 = v27 | (v19 << 6);
      v31 = *(v15 + 48);
      v50 = *(v46 + 72);
      v32 = v31 + v50 * v30;
      if (v47)
      {
        (*v48)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      else
      {
        (*v44)(v51, v32, v10);
        v49 = *(*(v15 + 56) + 8 * v30);
      }

      v33 = *(v18 + 40);
      sub_100019194(&qword_100339848);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v34 = -1 << *(v18 + 32);
      v35 = result & ~v34;
      v36 = v35 >> 6;
      if (((-1 << v35) & ~*(v25 + 8 * (v35 >> 6))) == 0)
      {
        v37 = 0;
        v38 = (63 - v34) >> 6;
        while (++v36 != v38 || (v37 & 1) == 0)
        {
          v39 = v36 == v38;
          if (v36 == v38)
          {
            v36 = 0;
          }

          v37 |= v39;
          v40 = *(v25 + 8 * v36);
          if (v40 != -1)
          {
            v26 = __clz(__rbit64(~v40)) + (v36 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v26 = __clz(__rbit64((-1 << v35) & ~*(v25 + 8 * (v35 >> 6)))) | v35 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v25 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
      result = (*v48)(*(v18 + 48) + v50 * v26, v51, v10);
      *(*(v18 + 56) + 8 * v26) = v49;
      ++*(v18 + 16);
      v15 = v45;
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v19 >= v24)
      {
        break;
      }

      v29 = v20[v19];
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v23 = (v29 - 1) & v29;
        goto LABEL_17;
      }
    }

    if ((v47 & 1) == 0)
    {

      v7 = v43;
      goto LABEL_36;
    }

    v41 = 1 << *(v15 + 32);
    v7 = v43;
    if (v41 >= 64)
    {
      bzero(v20, ((v41 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v20 = -1 << v41;
    }

    *(v15 + 16) = 0;
  }

LABEL_36:
  *v7 = v18;
  return result;
}

uint64_t sub_100089244(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100035D04(a3, a4);
  v40 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v38 = v5;
    v39 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v40 & 1) == 0)
      {
        v28 = v24[1];
      }

      v29 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v40 & 1) == 0)
    {

      v5 = v38;
      goto LABEL_35;
    }

    v37 = 1 << *(v7 + 32);
    v5 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_1000894F8(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100035D04(a3, a4);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v36 = v5;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v19 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v22 = v19 | (v11 << 6);
      v23 = *(v7 + 56);
      v24 = *(*(v7 + 48) + 8 * v22);
      v25 = *(v23 + 8 * v22);
      if ((a2 & 1) == 0)
      {
        v26 = *(v23 + 8 * v22);
      }

      v27 = *(v10 + 40);
      result = static Hasher._hash(seed:_:)();
      v28 = -1 << *(v10 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v17 + 8 * (v29 >> 6))) == 0)
      {
        v31 = 0;
        v32 = (63 - v28) >> 6;
        while (++v30 != v32 || (v31 & 1) == 0)
        {
          v33 = v30 == v32;
          if (v30 == v32)
          {
            v30 = 0;
          }

          v31 |= v33;
          v34 = *(v17 + 8 * v30);
          if (v34 != -1)
          {
            v18 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v29) & ~*(v17 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      *(*(v10 + 48) + 8 * v18) = v24;
      *(*(v10 + 56) + 8 * v18) = v25;
      ++*(v10 + 16);
    }

    v20 = v11;
    while (1)
    {
      v11 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v21 = v12[v11];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v15 = (v21 - 1) & v21;
        goto LABEL_17;
      }
    }

    if ((a2 & 1) == 0)
    {

      v5 = v36;
      goto LABEL_35;
    }

    v35 = 1 << *(v7 + 32);
    v5 = v36;
    if (v35 >= 64)
    {
      bzero((v7 + 64), ((v35 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v35;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

uint64_t sub_100089774(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v7 = *v4;
  if (*(*v4 + 24) > a1)
  {
    v8 = *(*v4 + 24);
  }

  sub_100035D04(a3, a4);
  v41 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v7 + 16))
  {
    v39 = v5;
    v40 = v7;
    v11 = 0;
    v12 = (v7 + 64);
    v13 = 1 << *(v7 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v7 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v23 = v20 | (v11 << 6);
      v24 = (*(v7 + 48) + 16 * v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = *(*(v7 + 56) + 8 * v23);
      if ((v41 & 1) == 0)
      {
        v28 = v24[1];

        v29 = v27;
      }

      v30 = *(v10 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v10 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v17 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v17 + 8 * v33);
          if (v37 != -1)
          {
            v18 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v32) & ~*(v17 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v25;
      v19[1] = v26;
      *(*(v10 + 56) + 8 * v18) = v27;
      ++*(v10 + 16);
      v7 = v40;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    if ((v41 & 1) == 0)
    {

      v5 = v39;
      goto LABEL_35;
    }

    v38 = 1 << *(v7 + 32);
    v5 = v39;
    if (v38 >= 64)
    {
      bzero(v12, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v38;
    }

    *(v7 + 16) = 0;
  }

LABEL_35:
  *v5 = v10;
  return result;
}

void *sub_100089A10()
{
  v1 = v0;
  sub_100035D04(&qword_100350F40, &qword_1002741B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        v19 = (*(v2 + 56) + 16 * v17);
        v20 = *v19;
        v21 = v19[1];
        *(*(v4 + 48) + 8 * v17) = v18;
        v22 = (*(v4 + 56) + 16 * v17);
        *v22 = v20;
        v22[1] = v21;
        v23 = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100089B80()
{
  v1 = v0;
  sub_100035D04(&qword_10033DE70, &qword_100274158);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 2 * v17) = *(*(v2 + 48) + 2 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100089D04()
{
  v1 = v0;
  sub_100035D04(&qword_10033DEF0, &qword_100274218);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v20 = *v18;
        v19 = v18[1];
        v21 = *(*(v2 + 56) + 8 * v17);
        v22 = (*(v4 + 48) + 16 * v17);
        *v22 = v20;
        v22[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v21;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_100089EBC()
{
  v1 = v0;
  sub_100035D04(&qword_10033DEC0, &qword_1002741D0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v20 = *v18;
        v19 = v18[1];
        v21 = (*(v2 + 56) + v17);
        v22 = *v21;
        v23 = v21[1];
        v24 = (*(v4 + 48) + v17);
        *v24 = v20;
        v24[1] = v19;
        v25 = (*(v4 + 56) + v17);
        *v25 = v22;
        v25[1] = v23;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_10008A034()
{
  v1 = v0;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v2 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(&qword_10033DF28, &qword_100274278);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v30 = v1;
    v31 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v37 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v32 = v38 + 32;
    v33 = v38 + 16;
    v34 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v39 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v38;
        v21 = *(v38 + 72) * v19;
        v22 = v35;
        v23 = v36;
        (*(v38 + 16))(v35, *(v4 + 48) + v21, v36);
        v24 = 16 * v19;
        v25 = (*(v4 + 56) + 16 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v37;
        (*(v20 + 32))(*(v37 + 48) + v21, v22, v23);
        v29 = (*(v28 + 56) + v24);
        *v29 = v26;
        v29[1] = v27;
        v4 = v34;

        v14 = v39;
      }

      while (v39);
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

        v1 = v30;
        v6 = v37;
        goto LABEL_18;
      }

      v18 = *(v31 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v6;
  }

  return result;
}

void *sub_10008A2E8()
{
  v1 = v0;
  sub_100035D04(&qword_10033DF18, &qword_100274258);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10008A458()
{
  v1 = v0;
  sub_100035D04(&unk_100350E90, &unk_10027C950);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 40 * v17;
        sub_100051658(*(v2 + 48) + 40 * v17, v23);
        v17 *= 32;
        sub_10001766C(*(v2 + 56) + v17, v22);
        v19 = *(v4 + 48) + v18;
        v20 = v23[0];
        v21 = v23[1];
        *(v19 + 32) = v24;
        *v19 = v20;
        *(v19 + 16) = v21;
        result = sub_1000516B4(v22, (*(v4 + 56) + v17));
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10008A624()
{
  v1 = v0;
  sub_100035D04(&qword_10033DED8, &qword_1002741F0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        sub_10001766C(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_1000516B4(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
      }

      v16 = *(v2 + 64 + 8 * v8);
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

id sub_10008A7DC(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

id sub_10008A964()
{
  v1 = v0;
  sub_100035D04(&qword_10033DEF8, &qword_100274220);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        sub_10001766C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_1000516B4(v19, (*(v4 + 56) + 32 * v17));
        result = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10008AAE4()
{
  v1 = v0;
  sub_100035D04(&unk_100350F90, &qword_100274210);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_10008AC54()
{
  v1 = v0;
  sub_100035D04(&qword_10033DEE8, &qword_100274208);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = 16 * v17;
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 24;
        v22 = (*(v2 + 56) + v17);
        v23 = *v22;
        v24 = v22[1];
        v25 = (*(v4 + 48) + v18);
        v26 = v22[2];
        *v25 = v21;
        v25[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v26;
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

      v16 = *(v2 + 64 + 8 * v8);
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

char *sub_10008ADDC()
{
  v1 = v0;
  v43 = type metadata accessor for Date();
  v46 = *(v43 - 8);
  v2 = *(v46 + 64);
  __chkstk_darwin(v43);
  v42 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = type metadata accessor for UUID();
  v45 = *(v41 - 8);
  v4 = *(v45 + 64);
  __chkstk_darwin(v41);
  v40 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(&qword_10033DEE0, &qword_100274200);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v32 = v1;
    v33 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v44 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v37 = v45 + 16;
    v38 = v17;
    v35 = v45 + 32;
    v36 = v46 + 16;
    v34 = v46 + 32;
    v39 = v6;
    v19 = v40;
    v18 = v41;
    if (v16)
    {
      do
      {
        v20 = __clz(__rbit64(v16));
        v47 = (v16 - 1) & v16;
LABEL_14:
        v23 = v20 | (v12 << 6);
        v24 = v45;
        v25 = *(v45 + 72) * v23;
        (*(v45 + 16))(v19, *(v6 + 48) + v25, v18);
        v26 = v46;
        v27 = *(v46 + 72) * v23;
        v28 = v42;
        v29 = v43;
        (*(v46 + 16))(v42, *(v6 + 56) + v27, v43);
        v30 = v44;
        (*(v24 + 32))(*(v44 + 48) + v25, v19, v18);
        v31 = *(v30 + 56);
        v6 = v39;
        result = (*(v26 + 32))(v31 + v27, v28, v29);
        v17 = v38;
        v16 = v47;
      }

      while (v47);
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

        v1 = v32;
        v8 = v44;
        goto LABEL_18;
      }

      v22 = *(v33 + 8 * v12);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v47 = (v22 - 1) & v22;
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

char *sub_10008B130()
{
  v1 = v0;
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  v38 = *(active - 8);
  v3 = *(v38 + 64);
  __chkstk_darwin(active - 8);
  v37 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for UUID();
  v39 = *(v36 - 8);
  v5 = *(v39 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(&qword_10033DF30, &unk_100274280);
  v7 = *v0;
  v8 = static _DictionaryStorage.copy(original:)();
  v9 = v8;
  if (*(v7 + 16))
  {
    result = (v8 + 64);
    v11 = (v7 + 64);
    v12 = ((1 << *(v9 + 32)) + 63) >> 6;
    v31 = v1;
    v32 = v7 + 64;
    if (v9 != v7 || result >= &v11[8 * v12])
    {
      result = memmove(result, v11, 8 * v12);
    }

    v13 = 0;
    v14 = *(v7 + 16);
    v40 = v9;
    *(v9 + 16) = v14;
    v15 = 1 << *(v7 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(v7 + 64);
    v18 = (v15 + 63) >> 6;
    v33 = v39 + 32;
    v34 = v39 + 16;
    v19 = v35;
    if (v17)
    {
      do
      {
        v20 = __clz(__rbit64(v17));
        v41 = (v17 - 1) & v17;
LABEL_14:
        v23 = v20 | (v13 << 6);
        v24 = v39;
        v25 = *(v39 + 72) * v23;
        v26 = v36;
        (*(v39 + 16))(v19, *(v7 + 48) + v25, v36);
        v27 = v37;
        v28 = *(v38 + 72) * v23;
        sub_10008CD34(*(v7 + 56) + v28, v37, type metadata accessor for PCUserAlertManager.ActiveAlertContext);
        v29 = v40;
        (*(v24 + 32))(*(v40 + 48) + v25, v19, v26);
        result = sub_10008CD9C(v27, *(v29 + 56) + v28);
        v17 = v41;
      }

      while (v41);
    }

    v21 = v13;
    v9 = v40;
    while (1)
    {
      v13 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v13 >= v18)
      {

        v1 = v31;
        goto LABEL_18;
      }

      v22 = *(v32 + 8 * v13);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v41 = (v22 - 1) & v22;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v9;
  }

  return result;
}

id sub_10008B45C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    v20 = v10;
    if (v18)
    {
      do
      {
        v21 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v24 = v21 | (v14 << 6);
        v25 = v38;
        v26 = *(v38 + 72) * v24;
        v28 = v35;
        v27 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v26, v36);
        v29 = *(*(v8 + 56) + 8 * v24);
        (*(v25 + 32))(*(v20 + 48) + v26, v28, v27);
        *(*(v20 + 56) + 8 * v24) = v29;
        result = v29;
        v18 = v39;
      }

      while (v39);
    }

    v22 = v14;
    while (1)
    {
      v14 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v23 = *(v32 + v14);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v39 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_10008B70C(uint64_t *a1, uint64_t *a2)
{
  v5 = v2;
  v36 = type metadata accessor for UUID();
  v38 = *(v36 - 8);
  v6 = *(v38 + 64);
  __chkstk_darwin(v36);
  v35 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100035D04(a1, a2);
  v8 = *v2;
  v9 = static _DictionaryStorage.copy(original:)();
  v10 = v9;
  if (*(v8 + 16))
  {
    result = (v9 + 64);
    v12 = ((1 << *(v10 + 32)) + 63) >> 6;
    v31 = v5;
    v32 = (v8 + 64);
    if (v10 != v8 || result >= v8 + 64 + 8 * v12)
    {
      result = memmove(result, v32, 8 * v12);
    }

    v14 = 0;
    v15 = *(v8 + 16);
    v37 = v10;
    *(v10 + 16) = v15;
    v16 = 1 << *(v8 + 32);
    v17 = -1;
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    v18 = v17 & *(v8 + 64);
    v19 = (v16 + 63) >> 6;
    v33 = v38 + 32;
    v34 = v38 + 16;
    if (v18)
    {
      do
      {
        v20 = __clz(__rbit64(v18));
        v39 = (v18 - 1) & v18;
LABEL_17:
        v23 = v20 | (v14 << 6);
        v24 = v38;
        v25 = *(v38 + 72) * v23;
        v27 = v35;
        v26 = v36;
        (*(v38 + 16))(v35, *(v8 + 48) + v25, v36);
        v28 = *(*(v8 + 56) + 8 * v23);
        v29 = v37;
        (*(v24 + 32))(*(v37 + 48) + v25, v27, v26);
        *(*(v29 + 56) + 8 * v23) = v28;

        v18 = v39;
      }

      while (v39);
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v19)
      {

        v5 = v31;
        v10 = v37;
        goto LABEL_21;
      }

      v22 = *(v32 + v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v39 = (v22 - 1) & v22;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v5 = v10;
  }

  return result;
}

void *sub_10008B998(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

void *sub_10008BB0C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = *(*(v4 + 48) + 8 * v19);
        *(*(v6 + 56) + 8 * v19) = v20;
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

      v18 = *(v4 + 64 + 8 * v10);
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

id sub_10008BC6C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100035D04(a1, a2);
  v4 = *v2;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v4 + 64 + 8 * v8)
    {
      result = memmove(result, (v4 + 64), 8 * v8);
    }

    v10 = 0;
    *(v6 + 16) = *(v4 + 16);
    v11 = 1 << *(v4 + 32);
    v12 = *(v4 + 64);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

      v18 = *(v4 + 64 + 8 * v10);
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

uint64_t sub_10008BDC8(void *a1, uint64_t a2)
{
  v4 = a1[1];
  v3 = a1[2];
  v5 = a1[4];
  v7[2] = a2;
  if ((sub_100081638(sub_10008CBD4, v7, v5) & 1) == 0)
  {
    return 0;
  }

  v4(&v8, a2);
  if (!v9)
  {
    return 0;
  }

  sub_10008CC38(v8, v9);
  return 1;
}

uint64_t sub_10008BE64()
{
  v1 = direct field offset for StateMachine2.edges;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_10008BEA8(char *a1)
{
  v3 = *(*v1 + 80);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(a1);
  v7 = &v11[-v6];
  v9 = *(v8 + 136);
  swift_beginAccess();
  (*(v4 + 16))(v7, v1 + v9, v3);
  sub_10007FA8C(a1);
  swift_beginAccess();
  (*(v4 + 24))(v1 + v9, a1, v3);
  swift_endAccess();
  sub_10007FC28(v7);
  return (*(v4 + 8))(v7, v3);
}

uint64_t sub_10008C040(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v23 = a4;
  v24 = a2;
  v21[1] = a3;
  v22 = a1;
  v21[0] = *v4;
  v6 = v21[0];
  v7 = type metadata accessor for Logger();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(v21[0] + 144)) = 0;
  v12 = *(*v4 + 152);
  v13 = v6[10];
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  *(v4 + v12) = PassthroughSubject.__allocating_init()();
  v14 = *(*v4 + 160);
  v15 = v6[11];
  v16 = v6[12];
  type metadata accessor for OutputEventContext();
  type metadata accessor for PassthroughSubject();
  *(v4 + v14) = PassthroughSubject.__allocating_init()();
  v17 = *(*v4 + 168);
  swift_getTupleTypeMetadata2();
  type metadata accessor for PassthroughSubject();
  *(v4 + v17) = PassthroughSubject.__allocating_init()();
  v18 = (v5 + *(*v5 + 176));
  *v18 = 0;
  v18[1] = 0;
  (*(*(v13 - 8) + 16))(v5 + *(*v5 + 136), v22, v13);
  v19 = v23;
  *(v4 + direct field offset for StateMachine2.edges) = v24;
  if (!v19)
  {
    v25 = v21[0];
    swift_getMetatypeMetadata();
    String.init<A>(describing:)();
  }

  Logger.init(subsystem:category:)();
  (*(v8 + 32))(v4 + qword_10038AFC0, v11, v7);
  return v4;
}

uint64_t sub_10008C374(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

void *sub_10008C3AC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 56);
  v5 = *(a1 + 8);
  result = (*a1)(&v7, v4);
  *a2 = v7;
  return result;
}

uint64_t sub_10008C3FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2[2];
  v4 = v2[5];
  v5 = v2[6];
  return sub_10008313C(a1, v2[7], v2[3], v2[4], a2);
}

uint64_t sub_10008C468(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v3 <= 0x3F)
  {
    v6 = *(result - 8) + 64;
    v4 = *(a1 + 80);
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v7 = *(result - 8) + 64;
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_10008C584(uint64_t a1)
{
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 40);
  type metadata accessor for Edge2();
  type metadata accessor for Array();
  TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return TupleTypeMetadata3;
}

uint64_t sub_10008C630(int *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = v7;
  v9 = *(v7 + 84);
  if (v9 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  v11 = *(v7 + 80);
  if (v10 <= 0x7FFFFFFF)
  {
    v12 = 0x7FFFFFFF;
  }

  else
  {
    v12 = v10;
  }

  if (!a2)
  {
    return 0;
  }

  v13 = *(*(*(a3 + 16) - 8) + 64) + v11;
  v14 = *(*(v6 - 8) + 64) + 7;
  if (v12 - 1 >= a2)
  {
    goto LABEL_29;
  }

  v15 = ((v14 + (v13 & ~v11)) & 0xFFFFFFFFFFFFFFF8) + 8;
  v16 = a2 - v12;
  v17 = v15 & 0xFFFFFFF8;
  v18 = v16 + 2;
  if ((v15 & 0xFFFFFFF8) != 0)
  {
    v18 = 2;
  }

  if (v18 >= 0x10000)
  {
    v19 = 4;
  }

  else
  {
    v19 = 2;
  }

  if (v18 < 0x100)
  {
    v19 = 1;
  }

  if (v18 >= 2)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0;
  }

  if (v20 <= 1)
  {
    if (!v20)
    {
      goto LABEL_29;
    }

    v21 = *(a1 + v15);
    if (!v21)
    {
      goto LABEL_29;
    }

LABEL_26:
    v23 = v21 - 1;
    if (v17)
    {
      v23 = 0;
      v24 = *a1;
    }

    else
    {
      v24 = 0;
    }

    return (v24 | v23) + v12;
  }

  if (v20 == 2)
  {
    v21 = *(a1 + v15);
    if (v21)
    {
      goto LABEL_26;
    }
  }

  else
  {
    v21 = *(a1 + v15);
    if (v21)
    {
      goto LABEL_26;
    }
  }

LABEL_29:
  if (v5 == v12)
  {
    v25 = (*(v4 + 48))(a1, v5);
  }

  else
  {
    v26 = (a1 + v13) & ~v11;
    if (v9 == v12)
    {
      v25 = (*(v8 + 48))(v26, v9, v6);
    }

    else
    {
      v27 = *((v14 + v26) & 0xFFFFFFFFFFFFFFF8);
      if (v27 >= 0xFFFFFFFF)
      {
        LODWORD(v27) = -1;
      }

      v25 = v27 + 1;
    }
  }

  if (v25 >= 2)
  {
    return v25 - 1;
  }

  else
  {
    return 0;
  }
}

unsigned int *sub_10008C82C(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  v12 = *(v8 + 64);
  if (v9 <= v6)
  {
    v13 = *(v5 + 84);
  }

  else
  {
    v13 = *(v8 + 84);
  }

  if (v13 <= 0x7FFFFFFF)
  {
    v13 = 0x7FFFFFFF;
  }

  v14 = v13 - 1;
  v15 = v10 + v11;
  v16 = (v10 + v11) & ~v11;
  v17 = v12 + 7;
  v18 = ((v12 + 7 + v16) & 0xFFFFFFFFFFFFFFF8) + 8;
  v19 = a3 - v13 + 2;
  if (v18)
  {
    v19 = 2;
  }

  if (v19 >= 0x10000)
  {
    v20 = 4;
  }

  else
  {
    v20 = 2;
  }

  if (v19 < 0x100)
  {
    v20 = 1;
  }

  if (v19 >= 2)
  {
    v21 = v20;
  }

  else
  {
    v21 = 0;
  }

  if (v14 < a3)
  {
    v22 = v21;
  }

  else
  {
    v22 = 0;
  }

  if (v14 < a2)
  {
    v23 = a2 - v13;
    if (v18)
    {
      v24 = 1;
    }

    else
    {
      v24 = v23 + 1;
    }

    if (v18)
    {
      v25 = result;
      bzero(result, v18);
      result = v25;
      *v25 = v23;
    }

    if (v22 > 1)
    {
      if (v22 == 2)
      {
        *(result + v18) = v24;
      }

      else
      {
        *(result + v18) = v24;
      }
    }

    else if (v22)
    {
      *(result + v18) = v24;
    }

    return result;
  }

  if (v22 > 1)
  {
    if (v22 != 2)
    {
      *(result + v18) = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_37;
    }

    *(result + v18) = 0;
  }

  else if (v22)
  {
    *(result + v18) = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_37;
  }

  if (!a2)
  {
    return result;
  }

LABEL_37:
  if (v6 == v13)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    result = ((result + v15) & ~v11);
    if (v9 == v13)
    {
      v27 = *(v8 + 56);
      v28 = a2 + 1;

      return v27(result, v28, v9, v7);
    }

    else
    {
      if (((a2 + 1) & 0x80000000) != 0)
      {
        v29 = a2 - 0x7FFFFFFF;
      }

      else
      {
        v29 = a2;
      }

      *((result + v17) & 0xFFFFFFFFFFFFFFF8) = v29;
    }
  }

  return result;
}

uint64_t sub_10008CAA4(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  return (*a1)(v2);
}

void *sub_10008CADC@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(a1 + 8);
  result = (*a1)(&v7, v4);
  *a2 = v7;
  return result;
}

uint64_t sub_10008CB2C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  sub_10008CD34(a1, a2, type metadata accessor for ExperienceEffect);
  v5 = sub_100035D04(&qword_10033B530, &unk_1002783D0);
  return sub_10008CD34(v4, a2 + *(v5 + 36), type metadata accessor for ExperienceEvent);
}

uint64_t sub_10008CBF0(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(a1 + 8);
  (*a1)(&v5, v2);
  return v5;
}

uint64_t sub_10008CC38(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_10008CCAC()
{
  v2 = *(v0 + 16);
  v3 = *(v0 + 32);
  v4 = *(v0 + 48);
  type metadata accessor for Edge2();
  return Array.init()();
}

unint64_t sub_10008CCE8()
{
  result = qword_10034B560;
  if (!qword_10034B560)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10034B560);
  }

  return result;
}

uint64_t sub_10008CD34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10008CD9C(uint64_t a1, uint64_t a2)
{
  active = type metadata accessor for PCUserAlertManager.ActiveAlertContext(0);
  (*(*(active - 8) + 32))(a2, a1, active);
  return a2;
}

BOOL sub_10008CE00(uint64_t a1)
{
  v2 = v1[2];
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[6];
  return sub_1000814F8(a1, v1[7]);
}

uint64_t sub_10008CE44(uint64_t a1)
{
  v2 = *(v1 + 56);
  v3 = *(a1 + 8);
  (*a1)(&v5, v2);
  return v5;
}

uint64_t sub_10008CECC()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher);
  }

  else
  {
    v3 = v0;
    v4 = *(v0 + 24);
    v2 = sub_10006E96C();
    v5 = *(v3 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10008CF3C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher);
  }

  else
  {
    v3 = v0;
    sub_10008D40C(v8);
    v4 = v9;
    v5 = v10;
    sub_10000EBC0(v8, v9);
    v2 = (*(v5 + 40))(v4, v5);
    sub_10000903C(v8);
    v6 = *(v0 + v1);
    *(v3 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10008D000()
{
  v1 = sub_100035D04(&qword_10033E218, &qword_100274460);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v8 - v4;
  v9 = *(*v0 + *(**v0 + 152));
  sub_100035D04(&qword_10033E220, &qword_100274468);
  sub_10000E244(&qword_10033E228, &qword_10033E220, &qword_100274468);
  v9 = Publisher.eraseToAnyPublisher()();
  sub_100035D04(&qword_10033E230, &unk_100274470);
  sub_10000E244(&qword_10033E238, &qword_10033E230, &unk_100274470);
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E240, &qword_10033E218, &qword_100274460);
  v6 = Publisher.eraseToAnyPublisher()();
  (*(v2 + 8))(v5, v1);
  return v6;
}

uint64_t sub_10008D228()
{
  v2 = *(*v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine__state);
  sub_100035D04(&qword_10033E248, &unk_100274480);
  sub_10000E244(&qword_10033E250, &qword_10033E248, &unk_100274480);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10008D2C0()
{
  v2 = *(*v0 + OBJC_IVAR____TtC17proximitycontrold19HandoffStateMachine_outputEventContextSubject);
  sub_100035D04(&qword_10033DE78, &qword_100274160);
  sub_10000E244(&qword_10033DE80, &qword_10033DE78, &qword_100274160);
  return Publisher.eraseToAnyPublisher()();
}

uint64_t sub_10008D35C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink);
  }

  else
  {
    v3 = *(v0 + 16);
    type metadata accessor for HandoffRemoteFollowerLink();
    swift_allocObject();

    v4 = v0;
    v2 = sub_100159930(v3, v0);

    v5 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t sub_10008D40C@<X0>(void *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___stateMachine;
  swift_beginAccess();
  sub_100009848(v1 + v3, &v10, &qword_10033E260, &qword_1002744A0);
  if (v11)
  {
    return sub_10000E754(&v10, a1);
  }

  sub_1000097E8(&v10, &qword_10033E260, &qword_1002744A0);
  v5 = type metadata accessor for HandoffStateMachine_Legacy();
  v6 = *(v5 + 48);
  v7 = *(v5 + 52);
  swift_allocObject();

  v9 = sub_1000D14E8(v8);
  a1[3] = v5;
  a1[4] = &off_100304108;
  *a1 = v9;
  sub_10007E790(a1, &v10);
  swift_beginAccess();
  sub_100094B04(&v10, v1 + v3);
  return swift_endAccess();
}

uint64_t sub_10008D520()
{
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  return v1;
}

uint64_t sub_10008D594@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = (v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
  v5 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
  v28 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
  v29 = v5;
  v6 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
  v30 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
  v31 = v6;
  v7 = *(&v28 + 1);
  if (*(&v28 + 1))
  {
    v8 = v31;
    v10 = *(&v30 + 1);
    v9 = v30;
    v11 = *(&v29 + 1);
    v12 = v29;
    v13 = v28;
    v14 = *(&v31 + 1);
  }

  else
  {
    v13 = UUID.uuidString.getter();
    v7 = v15;
    v9 = *(v2 + 24);
    *&v23 = v13;
    *(&v23 + 1) = v15;
    v11 = 0x800000010029A3E0;
    v12 = 0xD000000000000016;
    *&v24 = 0xD000000000000016;
    *(&v24 + 1) = 0x800000010029A3E0;
    v10 = 0x3FE0000000000000;
    *&v25 = v9;
    *(&v25 + 1) = 0x3FE0000000000000;
    v14 = _swiftEmptyArrayStorage;
    LOBYTE(v26) = 0;
    *(&v26 + 1) = _swiftEmptyArrayStorage;
    v16 = v4[1];
    v27[0] = *v4;
    v27[1] = v16;
    v17 = v4[3];
    v27[2] = v4[2];
    v27[3] = v17;
    v18 = v23;
    v19 = v24;
    v20 = v26;
    v4[2] = v25;
    v4[3] = v20;
    *v4 = v18;
    v4[1] = v19;

    sub_100094CD8(&v23, &v22);
    sub_1000097E8(v27, &qword_10033E428, &qword_100274640);
    v8 = 0;
  }

  LOBYTE(v23) = v8 & 1;
  result = sub_100009848(&v28, v27, &qword_10033E428, &qword_100274640);
  *a1 = v13;
  *(a1 + 8) = v7;
  *(a1 + 16) = v12;
  *(a1 + 24) = v11;
  *(a1 + 32) = v9;
  *(a1 + 40) = v10;
  *(a1 + 48) = v23;
  *(a1 + 56) = v14;
  return result;
}

uint64_t sub_10008D6FC()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return 0;
  }

  v1 = *(Strong + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active);

  return v1;
}

uint64_t sub_10008D760(unsigned __int8 *a1)
{
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    if (v6 == 4)
    {
      v8 = 0;
    }

    else
    {
      v8 = v6;
    }

    *v5 = v8;
    swift_storeEnumTagMultiPayload();
    sub_10008D86C(v5, 0xD000000000000018, 0x800000010029A4D0);

    return sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
  }

  return result;
}

void sub_10008D86C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v4 = v3;
  v34 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v8 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34);
  v10 = &v32 - v9;
  v11 = type metadata accessor for ExperienceEvent(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v14, type metadata accessor for ExperienceEvent);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = a1;
    v18 = v17;
    v19 = swift_slowAlloc();
    v32 = v3;
    v35 = v19;
    *v18 = 136315650;
    *(v18 + 4) = sub_100017494(0xD00000000000001ELL, 0x800000010029A400, &v35);
    *(v18 + 12) = 2080;
    v20 = sub_100243F84();
    v22 = v21;
    sub_100097C8C(v14, type metadata accessor for ExperienceEvent);
    v23 = sub_100017494(v20, v22, &v35);

    *(v18 + 14) = v23;
    *(v18 + 22) = 2080;
    *(v18 + 24) = sub_100017494(a2, a3, &v35);
    _os_log_impl(&_mh_execute_header, v15, v16, "%s: event=%s, reason=%s", v18, 0x20u);
    swift_arrayDestroy();
    v4 = v32;

    a1 = v33;
  }

  else
  {

    sub_100097C8C(v14, type metadata accessor for ExperienceEvent);
  }

  if (*(v4 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active) == 1)
  {
    v24 = a2;
    v25 = *(v4 + 16);
    v26 = UUID.uuidString.getter();
    v28 = v27;
    v29 = *(v25 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
    v30 = &v10[*(v34 + 48)];
    v31 = &v10[*(v34 + 64)];
    sub_100097CEC(a1, v10, type metadata accessor for ExperienceEvent);
    *v30 = v26;
    v30[1] = v28;
    *v31 = v24;
    *(v31 + 1) = a3;

    PassthroughSubject.send(_:)();
    sub_1000097E8(v10, &unk_10034C700, &qword_100273D30);
  }
}

uint64_t sub_10008DBB0(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);

    v4 = static UUID.== infix(_:_:)();
  }

  else
  {
    v4 = 0;
  }

  return v4 & 1;
}

uint64_t sub_10008DC4C()
{
  v0 = type metadata accessor for ExperienceEvent(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v3 = 6;
    swift_storeEnumTagMultiPayload();
    sub_10008D86C(v3, 0xD000000000000027, 0x800000010029A4A0);

    return sub_100097C8C(v3, type metadata accessor for ExperienceEvent);
  }

  return result;
}

uint64_t sub_10008DD4C(unsigned __int16 *a1)
{
  v2 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v26 - v5;
  v7 = type metadata accessor for Date();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v14 = result;
    *&v31[0] = 0x20A39F9FF0;
    *(&v31[0] + 1) = 0xA500000000000000;
    v15._countAndFlagsBits = sub_100243CA8(v12);
    String.append(_:)(v15);

    v16 = v31[0];
    sub_10008D594(v31);
    v27 = v31[0];
    v28 = v31[1];
    v29 = v31[2];
    v17 = v33;
    v30 = v32;
    static Date.now.getter();
    v18 = &v6[*(v2 + 48)];
    (*(v8 + 32))(v6, v11, v7);
    *v18 = v16;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v17 = sub_1000AFF4C(0, v17[2] + 1, 1, v17);
    }

    v20 = v17[2];
    v19 = v17[3];
    if (v20 >= v19 >> 1)
    {
      v17 = sub_1000AFF4C(v19 > 1, v20 + 1, 1, v17);
    }

    v17[2] = v20 + 1;
    sub_100098288(v6, v17 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v20);
    v21 = v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
    v22 = *(v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
    v23 = *(v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
    v24 = *(v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
    v26[3] = *(v14 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
    v26[2] = v22;
    v26[1] = v24;
    v26[0] = v23;
    v25 = v29;
    *(v21 + 16) = v28;
    *(v21 + 32) = v25;
    *v21 = v27;
    *(v21 + 48) = v30;
    *(v21 + 56) = v17;
    sub_1000097E8(v26, &qword_10033E428, &qword_100274640);
  }

  return result;
}

unsigned __int16 *sub_10008E02C(unsigned __int16 *result)
{
  v1 = *result;
  if (v1 >> 13 == 2)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (!result)
    {
      return result;
    }

    v2 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand;
    goto LABEL_9;
  }

  if (v1 >> 13 != 4)
  {
    return result;
  }

  if (v1 == 33024)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      _StringGuts.grow(_:)(21);

      v3._countAndFlagsBits = sub_100243CA8(33024);
      String.append(_:)(v3);

      sub_10008E18C(0xD000000000000013, 0x800000010029A460);
    }
  }

  else if (v1 == 0x8000)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v2 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didDwell;
LABEL_9:
      *(result + v2) = 1;
    }
  }

  return result;
}

uint64_t sub_10008E18C(uint64_t a1, unint64_t a2)
{
  v3 = v2;

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v24[0] = swift_slowAlloc();
    *v8 = 136315394;
    *(v8 + 4) = sub_100017494(0xD000000000000011, 0x800000010029A480, v24);
    *(v8 + 12) = 2080;
    *(v8 + 14) = sub_100017494(a1, a2, v24);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s: reason=%s", v8, 0x16u);
    swift_arrayDestroy();
  }

  if (*(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_dwellBannerPresenterTask))
  {
    v9 = *(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_dwellBannerPresenterTask);

    sub_100035D04(&unk_100346020, &qword_100271A00);
    Task.cancel()();
  }

  *(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active) = 0;
  sub_10008D40C(v24);
  v10 = v25;
  v11 = v26;
  sub_10000EBC0(v24, v25);
  (*(v11 + 48))(v10, v11);
  sub_10000903C(v24);
  v12 = *(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
  if (v12)
  {
    v13 = *(v3 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler + 8);

    v12(v3);
    sub_10002689C(v12);
  }

  sub_10008D594(v24);
  if (qword_100339270 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_10038B5E0);
  sub_100094CD8(v24, v23);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  sub_100098354(v24);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v23[0] = v18;
    *v17 = 136315138;
    v19 = sub_10022B95C();
    v21 = sub_100017494(v19, v20, v23);

    *(v17 + 4) = v21;
    _os_log_impl(&_mh_execute_header, v15, v16, "%s", v17, 0xCu);
    sub_10000903C(v18);
  }

  return sub_100098354(v24);
}

uint64_t sub_10008E508()
{
  v0 = type metadata accessor for ExperienceEvent(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v3 = xmmword_100274290;
    v3[16] = 4;
    swift_storeEnumTagMultiPayload();
    v7 = 0;
    v8 = 0xE000000000000000;
    Double.write<A>(to:)();
    v5._countAndFlagsBits = 115;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    sub_10008D86C(v3, v7, v8);

    return sub_100097C8C(v3, type metadata accessor for ExperienceEvent);
  }

  return result;
}

uint64_t sub_10008E668()
{
  v0 = type metadata accessor for ExperienceEvent(0);
  v1 = *(*(v0 - 8) + 64);
  __chkstk_darwin(v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v3 = 1;
    v3[56] = 96;
    swift_storeEnumTagMultiPayload();
    v7 = 0;
    v8 = 0xE000000000000000;
    Double.write<A>(to:)();
    v5._countAndFlagsBits = 115;
    v5._object = 0xE100000000000000;
    String.append(_:)(v5);
    sub_10008D86C(v3, v7, v8);

    return sub_100097C8C(v3, type metadata accessor for ExperienceEvent);
  }

  return result;
}

uint64_t sub_10008E7A8(void *a1)
{
  v1 = (*a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_sessionID);
  v2 = *v1;
  v3 = v1[1];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v4 = UUID.uuidString.getter();
    v6 = v5;

    if (v2 == v4 && v3 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t sub_10008E880(void *a1)
{
  v1 = *(*a1 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state);

  sub_10005E71C();
  sub_100035D04(&qword_10033C268, &qword_10028EAD0);
  sub_10000E244(&qword_10033E580, &qword_10033C268, &qword_10028EAD0);
  Publisher.eraseToAnyPublisher()();

  sub_100035D04(&qword_10033E588, &unk_100274730);
  sub_100035D04(&qword_10033E4F0, &qword_1002746F0);
  sub_10000E244(&qword_10033E590, &qword_10033E588, &unk_100274730);
  Publisher.map<A>(_:)();
}

uint64_t sub_10008EA00@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *a1;
  v4 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = a1[4];
  v9 = a1[5];
  v10 = a1[6];
  *a3 = *a1;
  a3[1] = v4;
  a3[2] = v6;
  a3[3] = v7;
  a3[4] = v8;
  a3[5] = v9;
  a3[6] = v10;
  a3[7] = a2;
  sub_10006C458(v5, v4, v6);
}

uint64_t sub_10008EA5C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v3[0] = *a1;
  v3[1] = v1;
  v3[2] = *(a1 + 32);
  v4 = *(a1 + 48);
  return sub_1000981E4(v3);
}

uint64_t sub_10008EA98(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 16);
  v5 = *(a1 + 32);
  v6 = *(a1 + 48);
  v7 = type metadata accessor for ExperienceEvent(0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = (&v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  switch(v4)
  {
    case 2:
      v12 = *(a2 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      *v10 = v12;
      type metadata accessor for TransferEvent();
      goto LABEL_10;
    case 1:
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

      goto LABEL_5;
    case 0:
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (!result)
      {
        return result;
      }

LABEL_5:
      type metadata accessor for TransferEvent();
LABEL_10:
      swift_storeEnumTagMultiPayload();
      swift_storeEnumTagMultiPayload();
      goto LABEL_13;
  }

  v13 = *(a1 + 40);
  v18 = *(a1 + 24);
  v19 = v13;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (!result)
  {
    return result;
  }

  sub_1000982F8();
  v14 = swift_allocError();
  *v15 = *a1;
  *(v15 + 16) = v4;
  v16 = v19;
  *(v15 + 24) = v18;
  *(v15 + 40) = v16;
  *v10 = v14;
  type metadata accessor for TransferEvent();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();

LABEL_13:
  sub_10008D86C(v10, 0x726566736E617274, 0xEF6574617473242ELL);

  return sub_100097C8C(v10, type metadata accessor for ExperienceEvent);
}

uint64_t sub_10008ED20(uint64_t *a1)
{
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v9[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = *a1;
  v7 = *(a1 + 8);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *v5 = v6;
    v5[8] = v7;
    swift_storeEnumTagMultiPayload();
    sub_10008D86C(v5, 0xD000000000000014, 0x800000010029A440);

    result = sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
  }

  if (v7 == 3)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      *v5 = v6 == 1;
      v5[8] = 4;
      swift_storeEnumTagMultiPayload();
      sub_10008D86C(v5, 0xD000000000000014, 0x800000010029A440);

      return sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
    }
  }

  return result;
}

unint64_t sub_10008EEC4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void *a5)
{
  _StringGuts.grow(_:)(43);

  v10._countAndFlagsBits = sub_100243F84(v9);
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6F6973736573202CLL;
  v11._object = 0xEC0000003D44496ELL;
  String.append(_:)(v11);
  v12._countAndFlagsBits = a2;
  v12._object = a3;
  String.append(_:)(v12);
  v13._countAndFlagsBits = 0x6E6F73616572202CLL;
  v13._object = 0xE90000000000003DLL;
  String.append(_:)(v13);
  v14._countAndFlagsBits = a4;
  v14._object = a5;
  String.append(_:)(v14);
  return 0xD000000000000010;
}

unint64_t sub_10008EFC8(uint64_t a1)
{
  v2 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v3 = (a1 + *(v2 + 48));
  v4 = *v3;
  v5 = v3[1];
  v6 = (a1 + *(v2 + 64));
  v7 = *v6;
  v8 = v6[1];

  return sub_10008EEC4(a1, v4, v5, v7, v8);
}

uint64_t sub_10008F028(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v5 = UUID.uuidString.getter();
    v7 = v6;

    if (v5 == a2 && v7 == a3)
    {
      v9 = 1;
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_10008F0F0()
{
  v0 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v23 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1002433A0();
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v11 = result;
      *&v28[0] = 0x208FB8EF86ACE2;
      *(&v28[0] + 1) = 0xA700000000000000;
      v12._countAndFlagsBits = sub_100243F84(result);
      String.append(_:)(v12);

      v13 = v28[0];
      sub_10008D594(v28);
      v24 = v28[0];
      v25 = v28[1];
      v26 = v28[2];
      v14 = v30;
      v27 = v29;
      static Date.now.getter();
      v15 = &v4[*(v0 + 48)];
      (*(v6 + 32))(v4, v9, v5);
      *v15 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1000AFF4C(0, v14[2] + 1, 1, v14);
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1000AFF4C(v16 > 1, v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      sub_100098288(v4, v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17);
      v18 = v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
      v19 = *(v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
      v20 = *(v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
      v21 = *(v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
      v23[3] = *(v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
      v23[2] = v19;
      v23[1] = v21;
      v23[0] = v20;
      v22 = v26;
      *(v18 + 16) = v25;
      *(v18 + 32) = v22;
      *v18 = v24;
      *(v18 + 48) = v27;
      *(v18 + 56) = v14;
      sub_1000097E8(v23, &qword_10033E428, &qword_100274640);
    }
  }

  return result;
}

uint64_t sub_10008F3D4(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = result;
    sub_10008D40C(&v8);
    v4 = v9;
    v5 = v10;
    sub_100051608(&v8, v9);
    (*(v5 + 56))(a1, v4, v5);
    sub_10000E754(&v8, v7);
    v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___stateMachine;
    swift_beginAccess();
    sub_100094B04(v7, v3 + v6);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10008F4B8()
{
  v1 = sub_100035D04(&qword_10033E288, &qword_1002744B8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008CF3C();
    sub_100035D04(&qword_10033B508, &qword_1002744C0);
    type metadata accessor for ExperienceEffect(0);
    sub_10000E244(&qword_10033B510, &qword_10033B508, &qword_1002744C0);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E290, &qword_10033E288, &qword_1002744B8);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_10008F6B0()
{
  v0 = sub_100035D04(&qword_10033E570, &unk_100274720);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = v23 - v3;
  v5 = type metadata accessor for Date();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100243A20();
  if (result)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v11 = result;
      *&v28[0] = 0x208FB8EF90ADE2;
      *(&v28[0] + 1) = 0xA700000000000000;
      v12._countAndFlagsBits = sub_100244CC4();
      String.append(_:)(v12);

      v13 = v28[0];
      sub_10008D594(v28);
      v24 = v28[0];
      v25 = v28[1];
      v26 = v28[2];
      v14 = v30;
      v27 = v29;
      static Date.now.getter();
      v15 = &v4[*(v0 + 48)];
      (*(v6 + 32))(v4, v9, v5);
      *v15 = v13;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v14 = sub_1000AFF4C(0, v14[2] + 1, 1, v14);
      }

      v17 = v14[2];
      v16 = v14[3];
      if (v17 >= v16 >> 1)
      {
        v14 = sub_1000AFF4C(v16 > 1, v17 + 1, 1, v14);
      }

      v14[2] = v17 + 1;
      sub_100098288(v4, v14 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v17);
      v18 = v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report;
      v19 = *(v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32);
      v20 = *(v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
      v21 = *(v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16);
      v23[3] = *(v11 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48);
      v23[2] = v19;
      v23[1] = v21;
      v23[0] = v20;
      v22 = v26;
      *(v18 + 16) = v25;
      *(v18 + 32) = v22;
      *v18 = v24;
      *(v18 + 48) = v27;
      *(v18 + 56) = v14;
      sub_1000097E8(v23, &qword_10033E428, &qword_100274640);
    }
  }

  return result;
}

uint64_t sub_10008F994(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    swift_getKeyPath();
    swift_getKeyPath();

    return static Published.subscript.setter();
  }

  return result;
}

uint64_t sub_10008FA2C()
{
  v1 = sub_100035D04(&qword_10033E560, &qword_100274718);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E568, &qword_10033E560, &qword_100274718);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_10008FC1C()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v12[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    (*(v1 + 16))(v4, Strong + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log, v0);

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "Kicking device to trigger call to PCRemoteActivityClient.updateHandler", v8, 2u);
    }

    (*(v1 + 8))(v4, v0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v10 = *(result + 24);

    v11 = *(v10 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_transferrableActivityPublisherKicker);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_10008FE10()
{
  v1 = sub_100035D04(&qword_10033E3D8, &qword_100274618);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E3E0, &qword_10033E3D8, &qword_100274618);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100090010()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);
    sub_10006F838();

    sub_1001E042C();
  }

  return result;
}

uint64_t sub_10009007C(unsigned __int16 *a1)
{
  v2 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v3 = *(v2 - 8);
  v4 = v3[8];
  v5 = __chkstk_darwin(v2);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v10 = &v22 - v9;
  __chkstk_darwin(v8);
  v12 = &v22 - v11;
  v13 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v15 = result;
    if ((v13 & 0xE100) == 0x4100)
    {
      v16 = *(result + 24);
      sub_10006F838();
      sub_1001E05F4();
    }

    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v17 = *(qword_10038B0B8 + 64);
    v18 = sub_1000031CC();

    if (v18)
    {
      sub_1000902DC(v15 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id, v13, v12);
      v19 = *(v15 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__nearbySharingInteractionState);
      v20 = v3[2];
      v20(v10, v12, v2);
      v20(v7, v10, v2);

      sub_1001C08B8(v7);

      v21 = v3[1];
      v21(v10, v2);
      return (v21)(v12, v2);
    }

    else
    {
    }
  }

  return result;
}

uint64_t sub_1000902DC@<X0>(uint64_t a1@<X0>, unsigned __int16 a2@<W1>, uint64_t a3@<X8>)
{
  v6 = a2;
  v7 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v27 - v9;
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType();
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  if ((a2 >> 13) > 1u)
  {
    if ((a2 >> 13) - 2 < 2)
    {
LABEL_3:
      (*(v19 + 104))(&v27 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0), enum case for SFAirDrop.NearbySharingInteraction.ConnectionContext.InteractionType.airDrop(_:));
      (*(v12 + 16))(v15, a1, v11);
      (*(v12 + 56))(v10, 1, 1, v11);
      SFAirDrop.NearbySharingInteraction.ConnectionContext.init(type:transactionIdentifier:endpointIdentifier:contactIdentifier:deviceName:deviceModel:accountID:isSameAccount:)();
      v20 = enum case for SFAirDrop.NearbySharingInteraction.State.connected(_:);
      v21 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
      return (*(*(v21 - 8) + 104))(a3, v20, v21);
    }

    if (v6 != 0x8000)
    {
      if (v6 == 32769)
      {
        goto LABEL_3;
      }

      goto LABEL_9;
    }

LABEL_10:
    SFAirDrop.NearbySharingInteraction.PresenceContext.init()();
    v23 = &enum case for SFAirDrop.NearbySharingInteraction.State.presenceDetected(_:);
    goto LABEL_11;
  }

  if (a2 >> 13 && (v6 & 0x100) == 0)
  {
    goto LABEL_10;
  }

LABEL_9:
  v23 = &enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:);
LABEL_11:
  v24 = *v23;
  v25 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v26 = *(*(v25 - 8) + 104);

  return v26(a3, v24, v25);
}

uint64_t sub_100090608()
{
  v1 = sub_100035D04(&qword_10033E3B8, &qword_100274608);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E3C0, &qword_10033E3B8, &qword_100274608);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

char *sub_1000907F8()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v68 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log;
  (*(v3 + 16))(v6, &v0[OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log], v2);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  v10 = &unk_10038A000;
  if (os_log_type_enabled(v8, v9))
  {
    v11 = swift_slowAlloc();
    v70 = v11;
    v12 = swift_slowAlloc();
    v72 = v12;
    *v11 = 136315138;
    v73 = 60;
    v74 = 0xE100000000000000;
    v75 = v12;
    v71 = v8;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v69 = v9;
    v13 = v2;
    v14 = v7;

    v15 = static String._fromSubstring(_:)();
    v17 = v16;

    v18._countAndFlagsBits = v15;
    v7 = v14;
    v2 = v13;
    v18._object = v17;
    String.append(_:)(v18);

    v19._countAndFlagsBits = 32;
    v19._object = 0xE100000000000000;
    String.append(_:)(v19);
    v20 = *(v1 + 3);
    v21._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v21);

    v22._countAndFlagsBits = 62;
    v22._object = 0xE100000000000000;
    String.append(_:)(v22);
    v23 = sub_100017494(v73, v74, &v75);

    v24 = v70;
    v25 = v71;
    *(v70 + 1) = v23;
    v10 = &unk_10038A000;
    _os_log_impl(&_mh_execute_header, v25, v69, "Deinit: %s", v24, 0xCu);
    sub_10000903C(v72);
  }

  else
  {
  }

  v26 = *(v3 + 8);
  v26(v6, v2);
  v27 = *(v1 + 2);

  v28 = *(v1 + 3);

  sub_1000983A8(*(v1 + 4), *(v1 + 5));
  v26(&v1[v7], v2);
  v29 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink];

  sub_1000097E8(&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___stateMachine], &qword_10033E260, &qword_1002744A0);
  v30 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__viewServiceLink;
  v31 = sub_100035D04(&qword_10033B550, &qword_1002746C0);
  (*(*(v31 - 8) + 8))(&v1[v30], v31);
  v32 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession_airDropUIPresenter];

  v33 = v10[508];
  v34 = type metadata accessor for UUID();
  (*(*(v34 - 8) + 8))(&v1[v33], v34);
  v35 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler + 8];
  sub_10002689C(*&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler]);
  v36 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 16];
  v37 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 24];
  v38 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 32];
  v39 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 40];
  v40 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 48];
  v41 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 56];
  sub_1000983C8(*&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report], *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report + 8]);
  v42 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession_dwellBannerPresenterTask];

  v43 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession_tasks];

  v44 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher];

  v45 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode];

  v46 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher];

  v47 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher];

  v48 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher];

  v49 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher];

  v50 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher];

  v51 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession__nearbySharingInteractionState];

  v52 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession__transferredThisCard];

  v53 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher];

  v54 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher];

  v55 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___callServicesUIEffectPublisher];

  v56 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher];

  v57 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___contentPreviewEffectPublisher];

  v58 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher];

  v59 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher];

  v60 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___dwellBannerEffectPublisher];

  v61 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher];

  v62 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher];

  v63 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher];

  v64 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher];

  v65 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher];

  v66 = *&v1[OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher];

  return v1;
}

uint64_t sub_100090D88()
{
  sub_1000907F8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffSession()
{
  result = qword_10033E040;
  if (!qword_10033E040)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_100090E34()
{
  v0 = type metadata accessor for Logger();
  if (v1 <= 0x3F)
  {
    v6 = *(v0 - 8) + 64;
    sub_100090FE0();
    if (v3 <= 0x3F)
    {
      v7 = *(v2 - 8) + 64;
      v4 = type metadata accessor for UUID();
      if (v5 <= 0x3F)
      {
        v8 = *(v4 - 8) + 64;
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_100090FE0()
{
  if (!qword_10033E050)
  {
    sub_100035D4C(&unk_10033E058, &qword_100274370);
    v0 = type metadata accessor for Published();
    if (!v1)
    {
      atomic_store(v0, &qword_10033E050);
    }
  }
}

uint64_t sub_100091044()
{
  v1 = v0;
  v2 = type metadata accessor for ExperienceEvent(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100017494(0x29287472617473, 0xE700000000000000, &v15);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000903C(v9);
  }

  *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active) = 1;
  v10 = *(v1 + 24);
  v11 = sub_100070EF4();
  if (v11 == 4)
  {
    v12 = 0;
  }

  else
  {
    v12 = v11;
  }

  *v5 = v12;
  swift_storeEnumTagMultiPayload();
  sub_10008D86C(v5, 0x7472617473, 0xE500000000000000);
  return sub_100097C8C(v5, type metadata accessor for ExperienceEvent);
}

uint64_t sub_10009120C()
{
  v1 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher))
  {
    v2 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher);
  }

  else
  {
    v3 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode);

    v4 = v0;
    sub_10005E99C();
    sub_100035D04(&qword_10033C2C8, &qword_100272AC0);
    sub_10000E244(&qword_10033E3B0, &qword_10033C2C8, &qword_100272AC0);
    v2 = Publisher.eraseToAnyPublisher()();

    v5 = *(v0 + v1);
    *(v4 + v1) = v2;
  }

  return v2;
}

uint64_t sub_100091318()
{
  v1 = sub_100035D04(&qword_10033D440, &unk_1002730B0);
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v12 - v3;
  v5 = *(v0 + 24);
  v6 = sub_100017E14();
  if (!v6)
  {
    v7 = sub_100070C80();
    if (!v8)
    {
      return sub_100017CB4();
    }

    v12[2] = v7;
    v12[3] = v8;
    v12[0] = 808334897;
    v12[1] = 0xE400000000000000;
    v9 = type metadata accessor for Locale();
    (*(*(v9 - 8) + 56))(v4, 1, 1, v9);
    sub_10001369C();
    v10 = StringProtocol.compare<A>(_:options:range:locale:)();
    sub_1000097E8(v4, &qword_10033D440, &unk_1002730B0);

    if (v10 >= 2)
    {
      return sub_100017CB4();
    }

    return 2;
  }

  if (v6 >= 4000000)
  {
    return 2;
  }

  return sub_100017CB4();
}

uint64_t sub_100091490()
{
  v1 = sub_100035D04(&qword_10033E360, &qword_1002745D8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v17 - v4;
  v6 = sub_100035D04(&qword_10033E368, &unk_1002745E0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v10 = &v17 - v9;
  v11 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher))
  {
    v12 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher);
  }

  else
  {
    v13 = *(v0 + 24);
    v19 = v2;
    v20 = v8;
    v21 = v0;
    v18 = sub_10006FD08();
    v22 = v18;
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_10033D4E0, &qword_10028EA40);
    sub_100035D04(&qword_10033E370, &qword_1002745F0);
    sub_10000E244(&qword_10033D4E8, &qword_10033D4E0, &qword_10028EA40);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E378, &qword_10033E360, &qword_1002745D8);
    sub_100094B9C();
    Publisher<>.removeDuplicates()();
    (*(v19 + 8))(v5, v1);
    sub_10000E244(&qword_10033E398, &qword_10033E368, &unk_1002745E0);
    v14 = Publisher.share()();
    (*(v20 + 8))(v10, v6);
    v22 = v14;
    sub_100035D04(&qword_10033E3A0, &unk_1002745F8);
    sub_10000E244(&qword_10033E3A8, &qword_10033E3A0, &unk_1002745F8);
    v12 = Publisher.eraseToAnyPublisher()();

    v15 = *(v21 + v11);
    *(v21 + v11) = v12;
  }

  return v12;
}

uint64_t sub_10009182C@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(*(*(result + 24) + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext) + 24);
    v4 = [v3 proxDeviceState];
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_1000918D0()
{
  v1 = sub_100035D04(&qword_10033E2C8, &qword_100274538);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v31 - v4;
  v6 = sub_100035D04(&qword_10033E2D0, &qword_100274540);
  v41 = *(v6 - 8);
  v7 = *(v41 + 64);
  __chkstk_darwin(v6);
  v9 = &v31 - v8;
  v10 = sub_100035D04(&qword_10033E2D8, &qword_100274548);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v31 - v13;
  v15 = sub_100035D04(&qword_10033E2E0, &qword_100274550);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15);
  v20 = &v31 - v19;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher))
  {
    v21 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher);
  }

  else
  {
    v39 = v0;
    v40 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher;
    v22 = *(v0 + 24);
    v37 = v17;
    v38 = v18;
    v23 = sub_10007005C();
    v35 = v10;
    v36 = v11;
    v42 = v23;
    sub_100035D04(&qword_10033E2E8, &qword_100274558);
    v34 = v14;
    sub_100035D04(&qword_10033E2F0, &qword_100274560);
    v32 = v1;
    v33 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000E244(&qword_10033E2F8, &qword_10033E2E8, &qword_100274558);
    Publisher.map<A>(_:)();

    sub_100035D04(&qword_10033E300, &qword_100274568);
    sub_10000E244(&qword_10033E308, &qword_10033E2D0, &qword_100274540);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033E310, &qword_10033E2C8, &qword_100274538);
    v24 = v32;
    v25 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v24);
    (*(v41 + 8))(v9, v6);
    v42 = v25;
    sub_100035D04(&qword_10033E318, &qword_100274570);
    sub_10000E244(&qword_10033E320, &qword_10033E318, &qword_100274570);
    sub_10000E244(&qword_10033E328, &qword_10033E300, &qword_100274568);
    v26 = v34;
    Publisher<>.switchToLatest()();

    sub_10000E244(&qword_10033E330, &qword_10033E2D8, &qword_100274548);
    v27 = v35;
    Publisher.map<A>(_:)();
    (*(v36 + 8))(v26, v27);
    sub_10000E244(&qword_10033E338, &qword_10033E2E0, &qword_100274550);
    v28 = v37;
    v21 = Publisher.eraseToAnyPublisher()();
    (*(v38 + 8))(v20, v28);
    v29 = *(v39 + v40);
    *(v39 + v40) = v21;
  }

  return v21;
}

uint64_t sub_100091E64@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
    result = sub_10023D1DC();
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

id sub_100091E9C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  if (*a1 == 2)
  {
    v4 = 1;
  }

  else
  {
    v4 = *a1;
  }

  if (*a1 == 2)
  {
    v5 = 0;
  }

  else
  {
    v5 = a1[1];
  }

  *a2 = v4;
  a2[1] = v5;
  return sub_100094B7C(v3);
}

void sub_100091EB8()
{
  v1 = *(*(v0 + 24) + 24);
  v2 = *(v1 + 24);

  CurrentValueSubject.value.getter();
  if ((v10[0] & 0x10000000000) != 0)
  {
    v3 = *(v1 + 16);
    CurrentValueSubject.value.getter();

    if (v13)
    {
      return;
    }
  }

  else
  {

    if (((LODWORD(v10[0]) | (BYTE4(v10[0]) << 32)) & 0x100000000) != 0)
    {
      return;
    }
  }

  sub_10008D40C(v10);
  v4 = v11;
  v5 = v12;
  sub_10000EBC0(v10, v11);
  v6 = (*(v5 + 8))(v4, v5);
  sub_10000903C(v10);
  if ((v6 >> 13) <= 1u && v6 >> 13)
  {
    if ((v6 & 0x100) != 0)
    {
      if (qword_100338F18 != -1)
      {
        swift_once();
      }

      v8 = *(qword_10038B0B8 + 456);
      v9 = sub_1000031CC();

      v7 = sub_100092098();
      if (v9)
      {
        sub_10015F318(v7);
        return;
      }
    }

    else
    {
      v7 = sub_100092098();
    }

    sub_10015F4A0(v7);
  }
}

uint64_t sub_100092098()
{
  v1 = *(v0 + 24);
  LODWORD(v0) = *(v1 + 16);
  if (v0 != 7)
  {
    return 0x1010101010001uLL >> (8 * v0);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v0 = sub_10000A0B4();
  v3 = v2;

  if (v3)
  {
    LOBYTE(v0) = sub_100011F00(v0, v3);
  }

  else
  {
    LOBYTE(v0) = 7;
  }

  if ((*(v1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_isMock) & 1) == 0)
  {
    *(v1 + 16) = v0;
  }

  if (v0 == 7)
  {
    return 1;
  }

  else
  {
    return 0x1010101010001uLL >> (8 * v0);
  }
}

uint64_t sub_10009219C()
{
  v1 = sub_100035D04(&qword_10033E340, &qword_100274578);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v13 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher);
  }

  else
  {
    v8 = v0;
    v9 = *(v0 + 24);
    v14 = sub_10006E2CC();
    swift_allocObject();
    swift_weakInit();
    sub_100035D04(&qword_10033C3E8, &qword_100274580);
    sub_10000E244(&qword_10033C3F0, &qword_10033C3E8, &qword_100274580);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E348, &qword_10033E340, &qword_100274578);
    v10 = Publisher.share()();
    (*(v2 + 8))(v5, v1);
    v14 = v10;
    sub_100035D04(&qword_10033E350, &qword_100274588);
    sub_10000E244(&qword_10033E358, &qword_10033E350, &qword_100274588);
    v7 = Publisher.eraseToAnyPublisher()();

    v11 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100092428@<X0>(_DWORD *a1@<X8>)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_100091EB8();
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  *a1 = v4;
  return result;
}

uint64_t sub_10009249C@<X0>(char *a1@<X8>)
{
  v33 = a1;
  v2 = sub_100035D04(&unk_100348F30, &unk_100272540);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - v4;
  v5 = sub_100035D04(&qword_100339A90, &qword_1002704B0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v30 - v7;
  v9 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for SFAirDrop.NearbySharingInteraction();
  v14 = *(v30 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v30);
  v17 = &v30 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = v1;
  v18 = *(v1 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__nearbySharingInteractionState);
  v19 = *(v18 + 24);

  CurrentValueSubject.value.getter();
  v20 = *(v10 + 48);
  if (v20(v8, 1, v9) == 1)
  {
    v21 = *(v18 + 16);
    CurrentValueSubject.value.getter();

    if (v20(v8, 1, v9) != 1)
    {
      sub_1000097E8(v8, &qword_100339A90, &qword_1002704B0);
    }
  }

  else
  {

    (*(v10 + 32))(v13, v8, v9);
  }

  v22 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v23 = type metadata accessor for UUID();
  v24 = *(v23 - 8);
  v25 = v32 + v22;
  v26 = v31;
  (*(v24 + 16))(v31, v25, v23);
  (*(v24 + 56))(v26, 0, 1, v23);
  SFAirDrop.NearbySharingInteraction.init(state:id:)();
  v27 = v33;
  *v33 = _swiftEmptyArrayStorage;
  v28 = type metadata accessor for NearbySharingInteractionDisplayContext();
  return (*(v14 + 32))(&v27[*(v28 + 20)], v17, v30);
}

uint64_t sub_100092814()
{
  v1 = sub_100035D04(&qword_10033D6B0, &unk_100274510);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v38 - v4;
  v6 = sub_100035D04(&qword_10034D8F0, &unk_100273380);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - v9;
  v11 = sub_100035D04(&qword_10033E298, &qword_100274520);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v38 - v14;
  v16 = sub_100035D04(&qword_10033E2A0, &qword_100274528);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16);
  v21 = &v38 - v20;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher))
  {
    v22 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher);
  }

  else
  {
    v48 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher;
    v23 = *(v0 + 24);
    v44 = v21;
    v24 = *(v23 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
    v40 = v0;
    v46 = v18;
    v47 = v19;
    v25 = sub_1001EF664();
    v43 = v11;
    v50[0] = v25;
    v45 = v12;
    sub_100035D04(&unk_10034D910, &unk_100273390);
    v39 = v1;
    sub_100035D04(&qword_10034B4F0, &unk_10027C100);
    v42 = v15;
    v41 = &protocol conformance descriptor for AnyPublisher<A, B>;
    sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033D6B8, &qword_10034D8F0, &unk_100273380);
    Publisher.removeDuplicates(by:)();
    sub_10000E244(&unk_10034D930, &qword_10033D6B0, &unk_100274510);
    v26 = v39;
    v27 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v26);
    (*(v7 + 8))(v10, v6);
    v53 = v27;
    v28 = v40;
    sub_10008D40C(v50);
    v29 = v51;
    v30 = v52;
    sub_10000EBC0(v50, v51);
    v31 = (*(v30 + 32))(v29, v30);
    sub_10000903C(v50);
    v49 = *(v28 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__nearbySharingInteractionState);
    v50[0] = v31;

    sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
    sub_100035D04(&qword_10033B590, &qword_100272048);
    sub_100035D04(&qword_10033E2A8, &qword_100274530);
    sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0);
    sub_10000E244(&qword_10033B598, &qword_10033B590, &qword_100272048);
    sub_10000E244(&qword_10033E2B0, &qword_10033E2A8, &qword_100274530);
    v32 = v42;
    Publishers.CombineLatest3.init(_:_:_:)();
    swift_allocObject();
    swift_weakInit();
    type metadata accessor for NearbySharingInteractionDisplayContext();
    sub_10000E244(&qword_10033E2B8, &qword_10033E298, &qword_100274520);
    v33 = v43;
    v34 = v44;
    Publisher.compactMap<A>(_:)();

    (*(v45 + 8))(v32, v33);
    sub_10000E244(&qword_10033E2C0, &qword_10033E2A0, &qword_100274528);
    v35 = v46;
    v22 = Publisher.eraseToAnyPublisher()();
    (*(v47 + 8))(v34, v35);
    v36 = *(v28 + v48);
    *(v28 + v48) = v22;
  }

  return v22;
}

uint64_t sub_100092EC4@<X0>(char *a1@<X8>)
{
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_10009249C(a1);

    v2 = 0;
  }

  else
  {
    v2 = 1;
  }

  v3 = type metadata accessor for NearbySharingInteractionDisplayContext();
  return (*(*(v3 - 8) + 56))(a1, v2, 1, v3);
}

uint64_t sub_100092F70()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = sub_10000A0B4();
  v4 = v3;

  if (v4)
  {
    v5 = sub_100011F00(v2, v4);

    if (v5 - 3 < 4)
    {
      v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_6:

      return v6 & 1;
    }

    v6 = 1;
    if (v5 < 3u)
    {
      goto LABEL_6;
    }
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

uint64_t sub_100093088()
{
  v1 = *(v0 + 24);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v2 = sub_10000A0B4();
  v4 = v3;

  if (v4)
  {
    sub_100011F00(v2, v4);
  }

  return 0;
}

uint64_t sub_100093164@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 2)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
    v9 = 6;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100093240()
{
  v1 = sub_100035D04(&qword_10033E418, &qword_100274638);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E420, &qword_10033E418, &qword_100274638);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100093430@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  if (swift_getEnumCaseMultiPayload())
  {
    sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
  }

  else
  {
    result = *v7;
    v9 = v7[16];
    if ((v9 & 0x80000000) == 0)
    {
      goto LABEL_5;
    }

    sub_100094CB0(result, *(v7 + 1), v9);
  }

  result = 3;
LABEL_5:
  *a2 = result;
  return result;
}

uint64_t sub_10009351C@<X0>(uint64_t a1@<X0>, BOOL *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  v9 = result;
  if (result != 10)
  {
    result = sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
  }

  *a2 = v9 != 10;
  return result;
}

uint64_t sub_1000935F8()
{
  v1 = sub_100035D04(&qword_10033E408, &qword_100274630);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E410, &qword_10033E408, &qword_100274630);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_1000937E8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 4)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
    v9 = 6;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_1000938C4()
{
  v1 = sub_100035D04(&qword_10033E3F8, &qword_100274628);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E400, &qword_10033E3F8, &qword_100274628);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100093AB4@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 5)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
    v9 = 4;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100093B90()
{
  v1 = sub_100035D04(&qword_10033E3C8, &qword_100274610);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E3D0, &qword_10033E3C8, &qword_100274610);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100093D80@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 7)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
    v9 = 2;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100093E5C()
{
  v1 = sub_100035D04(&qword_10033E3E8, &qword_100274620);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    type metadata accessor for NoticeEffect();
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E3F0, &qword_10033E3E8, &qword_100274620);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100094054@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  if (swift_getEnumCaseMultiPayload() == 6)
  {
    sub_100094C4C(v7, a2);
    v8 = 0;
  }

  else
  {
    sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
    v8 = 1;
  }

  v9 = type metadata accessor for NoticeEffect();
  return (*(*(v9 - 8) + 56))(a2, v8, 1, v9);
}

uint64_t sub_100094178@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 8)
  {
    v9 = *v7;
  }

  else
  {
    result = sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
    v9 = 3;
  }

  *a2 = v9;
  return result;
}

uint64_t sub_100094254()
{
  v1 = sub_100035D04(&qword_10033E268, &qword_1002744A8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v11 - v4;
  v6 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher;
  if (*(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher))
  {
    v7 = *(v0 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher);
  }

  else
  {
    v8 = v0;
    v11[1] = sub_10008F4B8();
    sub_100035D04(&qword_10033E270, &qword_1002744B0);
    sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
    Publisher.compactMap<A>(_:)();

    sub_10000E244(&qword_10033E280, &qword_10033E268, &qword_1002744A8);
    v7 = Publisher.eraseToAnyPublisher()();
    (*(v2 + 8))(v5, v1);
    v9 = *(v8 + v6);
    *(v8 + v6) = v7;
  }

  return v7;
}

uint64_t sub_100094444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ExperienceEffect(0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v7, type metadata accessor for ExperienceEffect);
  result = swift_getEnumCaseMultiPayload();
  if (result == 9)
  {
    v9 = *v7;
    v10 = *(v7 + 2);
    v11 = v7[24];
  }

  else
  {
    result = sub_100097C8C(v7, type metadata accessor for ExperienceEffect);
    v10 = 0;
    v9 = 0uLL;
    v11 = -1;
  }

  *a2 = v9;
  *(a2 + 16) = v10;
  *(a2 + 24) = v11;
  return result;
}

uint64_t sub_10009455C()
{
  UUID.uuidString.getter();
  sub_10000B584(8);

  v1 = static String._fromSubstring(_:)();
  v3 = v2;

  v4._countAndFlagsBits = v1;
  v4._object = v3;
  String.append(_:)(v4);

  v5._countAndFlagsBits = 32;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  v6 = *(v0 + 24);
  v7._countAndFlagsBits = sub_1000092A0();
  String.append(_:)(v7);

  v8._countAndFlagsBits = 62;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  return 60;
}

uint64_t sub_10009465C@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_id;
  v5 = type metadata accessor for UUID();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

uint64_t sub_100094A94@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *)@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X6>, _OWORD *a7@<X8>, os_log_type_t a8)
{
  v8 = *(a1 + 48);
  v9 = *(a1 + 56);
  v10 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v10;
  v12[2] = *(a1 + 32);
  v13 = v8;
  v14 = v9;
  return sub_1001BEE9C(v12, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t sub_100094AD8@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100141E74(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_100094B04(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E260, &qword_1002744A0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

id sub_100094B7C(id result)
{
  if (result != 2)
  {
    return sub_100056F7C(result);
  }

  return result;
}

unint64_t sub_100094B9C()
{
  result = qword_10033E380;
  if (!qword_10033E380)
  {
    sub_100035D4C(&qword_10033E370, &qword_1002745F0);
    sub_100076FC4(&qword_10033E388, &qword_10033E390, MRNowPlayingPlayerResponse_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033E380);
  }

  return result;
}

uint64_t sub_100094C4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NoticeEffect();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100094CB0(uint64_t result, uint64_t a2, char a3)
{
  if (a3 < 0)
  {
    return sub_100094CC0(result, a2, a3 & 0x7F);
  }

  return result;
}

uint64_t sub_100094CC0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
  }

  return result;
}

uint64_t sub_100094D34(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, void (*)(void, void), uint64_t), void (*a4)(char *, uint64_t))
{
  v5 = v4;
  v250 = a3;
  v251 = a4;
  v254 = a2;
  v255 = a1;
  v236 = sub_100035D04(&qword_10033E430, &qword_100274648);
  v235 = *(v236 - 8);
  v6 = *(v235 + 64);
  __chkstk_darwin(v236);
  v234 = &v201 - v7;
  v248 = sub_100035D04(&qword_10033E438, &qword_100274650);
  v233 = *(v248 - 8);
  v8 = *(v233 + 64);
  __chkstk_darwin(v248);
  v232 = &v201 - v9;
  v247 = sub_100035D04(&qword_10033E440, &qword_100274658);
  v231 = *(v247 - 8);
  v10 = *(v231 + 64);
  v11 = __chkstk_darwin(v247);
  v229 = &v201 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v230 = &v201 - v13;
  v239 = sub_100035D04(&qword_10033E448, &qword_100274660);
  v228 = *(v239 - 8);
  v14 = *(v228 + 64);
  __chkstk_darwin(v239);
  v227 = &v201 - v15;
  v215 = sub_100035D04(&qword_10033E450, &qword_100274668);
  v214 = *(v215 - 8);
  v16 = *(v214 + 64);
  __chkstk_darwin(v215);
  v213 = &v201 - v17;
  v246 = sub_100035D04(&qword_10033E458, &qword_100274670);
  v217 = *(v246 - 1);
  v18 = *(v217 + 64);
  __chkstk_darwin(v246);
  v216 = &v201 - v19;
  v221 = sub_100035D04(&qword_10033E460, &qword_100274678);
  v220 = *(v221 - 8);
  v20 = *(v220 + 64);
  __chkstk_darwin(v221);
  v218 = &v201 - v21;
  v223 = sub_100035D04(&qword_10033E468, &qword_100274680);
  v222 = *(v223 - 8);
  v22 = *(v222 + 64);
  __chkstk_darwin(v223);
  v219 = &v201 - v23;
  v226 = sub_100035D04(&qword_10033E470, &unk_100274688);
  v225 = *(v226 - 8);
  v24 = *(v225 + 64);
  __chkstk_darwin(v226);
  v224 = &v201 - v25;
  v26 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v27 = *(*(v26 - 8) + 64);
  __chkstk_darwin(v26 - 8);
  v202 = &v201 - v28;
  v204 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v201 = *(v204 - 8);
  v29 = *(v201 + 64);
  __chkstk_darwin(v204);
  v245 = &v201 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v206 = sub_100035D04(&qword_10033E478, &qword_100274698);
  v205 = *(v206 - 8);
  v31 = *(v205 + 64);
  __chkstk_darwin(v206);
  v203 = &v201 - v32;
  v209 = sub_100035D04(&qword_10033E480, &qword_1002746A0);
  v208 = *(v209 - 8);
  v33 = *(v208 + 64);
  __chkstk_darwin(v209);
  v207 = &v201 - v34;
  v244 = sub_100035D04(&qword_10033E488, &qword_1002746A8);
  v243 = *(v244 - 8);
  v35 = *(v243 + 64);
  __chkstk_darwin(v244);
  v240 = &v201 - v36;
  v238 = sub_100035D04(&qword_10033E490, &qword_1002746B0);
  v237 = *(v238 - 8);
  v37 = *(v237 + 64);
  __chkstk_darwin(v238);
  v212 = &v201 - v38;
  v242 = sub_100035D04(&qword_10033E498, &qword_1002746B8);
  v211 = *(v242 - 8);
  v39 = *(v211 + 64);
  __chkstk_darwin(v242);
  v210 = &v201 - v40;
  v253 = type metadata accessor for Logger();
  v256 = *(v253 - 8);
  v41 = v256[8];
  __chkstk_darwin(v253);
  v241 = v42;
  v43 = &v201 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v44 = type metadata accessor for SFAirDrop.NearbySharingInteraction.State();
  v45 = *(v44 - 8);
  v46 = *(v45 + 64);
  v47 = __chkstk_darwin(v44);
  v49 = &v201 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v47);
  v51 = &v201 - v50;
  v52 = sub_100035D04(&qword_10033B550, &qword_1002746C0);
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  __chkstk_darwin(v52);
  v56 = &v201 - v55;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___remoteFollowerLink) = 0;
  v57 = v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___stateMachine;
  *v57 = 0u;
  *(v57 + 16) = 0u;
  *(v57 + 32) = 0;
  v58 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__viewServiceLink;
  v259 = 0;
  sub_100035D04(&unk_10033E058, &qword_100274370);
  Published.init(initialValue:)();
  (*(v53 + 32))(v5 + v58, v56, v52);
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_airDropUIPresenter) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_dwellBannerPresenter) = 0;
  UUID.init()();
  v59 = (v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_finishedHandler);
  *v59 = 0;
  v59[1] = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_active) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didDwell) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_didExpand) = 0;
  v60 = (v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___report);
  *v60 = 0u;
  v60[1] = 0u;
  v60[2] = 0u;
  v60[3] = 0u;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_dwellBannerPresenterTask) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_tasks) = &_swiftEmptySetSingleton;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___activityDisplayContextPublisher) = 0;
  v61 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode;
  sub_100035D04(&qword_10033E4A0, &qword_1002746C8);
  v62 = swift_allocObject();
  *(v62 + 16) = 0;
  *(v62 + 24) = 4;
  *(v5 + v61) = v62;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardModePublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mrResponsePublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___mediaTransferStatusPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___progressPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionDisplayContextPublisher) = 0;
  v63 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__nearbySharingInteractionState;
  (*(v45 + 104))(v51, enum case for SFAirDrop.NearbySharingInteraction.State.ended(_:), v44);
  (*(v45 + 16))(v49, v51, v44);
  v64 = sub_100035D04(&qword_10033E2A8, &qword_100274530);
  v65 = *(v64 + 48);
  v66 = *(v64 + 52);
  swift_allocObject();
  v67 = sub_10002E2C0(v49, 0, 0, 0);
  (*(v45 + 8))(v51, v44);
  *(v5 + v63) = v67;
  v68 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession__transferredThisCard;
  sub_100035D04(&unk_10034A300, &unk_1002746D0);
  v69 = swift_allocObject();
  *(v69 + 16) = 0;
  *(v69 + 24) = 0;
  *(v5 + v68) = v69;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___outputEventContextPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___experienceEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___callServicesUIEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___cardEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___contentPreviewEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___classicBannerEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___deviceEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___dwellBannerEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___hapticEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___ledEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___nearbySharingInteractionViewEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___noticeEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___shockwaveEffectPublisher) = 0;
  *(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession____lazy_storage___transferEffectPublisher) = 0;
  v70 = v254;
  *(v5 + 16) = v255;
  *(v5 + 24) = v70;
  v72 = v250;
  v71 = v251;
  *(v5 + 32) = v250;
  *(v5 + 40) = v71;
  v73 = *(v70 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionTimestamp + 8);
  *(v5 + 48) = *(v70 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_regionTimestamp);
  *(v5 + 56) = v73;
  v259 = 0;
  v260 = 0xE000000000000000;

  sub_100097D54(v72, v71);
  _StringGuts.grow(_:)(17);

  v259 = 0x5366666F646E6148;
  v260 = 0xEF2D6E6F69737365;
  UUID.uuidString.getter();
  sub_10000B584(8);

  v74 = static String._fromSubstring(_:)();
  v76 = v75;

  v77._countAndFlagsBits = v74;
  v77._object = v76;
  String.append(_:)(v77);

  Logger.init(subsystem:category:)();
  v78 = v256[4];
  v251 = (v256 + 4);
  v252 = v43;
  v250 = v78;
  v78(v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log, v43, v253);
  v79 = v5 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession_log;

  v249 = v79;
  v80 = Logger.logObject.getter();
  v81 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v80, v81))
  {
    v82 = swift_slowAlloc();
    v83 = swift_slowAlloc();
    *v82 = 136315138;
    v258 = v83;
    v259 = 60;
    v260 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v84 = static String._fromSubstring(_:)();
    v86 = v85;

    v87._countAndFlagsBits = v84;
    v87._object = v86;
    String.append(_:)(v87);

    v88._countAndFlagsBits = 32;
    v88._object = 0xE100000000000000;
    String.append(_:)(v88);
    v89 = *(v5 + 24);
    v90._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v90);

    v91._countAndFlagsBits = 62;
    v91._object = 0xE100000000000000;
    String.append(_:)(v91);
    v92 = sub_100017494(v259, v260, &v258);

    *(v82 + 4) = v92;
    _os_log_impl(&_mh_execute_header, v80, v81, "Init: %s", v82, 0xCu);
    sub_10000903C(v83);
  }

  v259 = sub_100070F78();
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_10033D680, &qword_100273290);
  sub_10000E244(&qword_10033D688, &qword_10033D680, &qword_100273290);
  v93 = v210;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E4A8, &qword_10033E498, &qword_1002746B8);
  v94 = v242;
  Publisher<>.sink(receiveValue:)();

  (*(v211 + 8))(v93, v94);
  v95 = OBJC_IVAR____TtC17proximitycontrold14HandoffSession_tasks;
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v259 = *(*(v255 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage) + 48);
  sub_100035D04(&qword_100339828, &unk_100270300);
  sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
  v259 = Publisher.eraseToAnyPublisher()();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_100339838, &qword_100271F10);
  sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
  v96 = v212;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E4B0, &qword_10033E490, &qword_1002746B0);
  v97 = v238;
  Publisher<>.sink(receiveValue:)();

  (*(v237 + 8))(v96, v97);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10008D40C(&v259);
  v98 = v261;
  v99 = v262;
  sub_10000EBC0(&v259, v261);
  v100 = (*(v99 + 32))(v98, v99);
  v101 = swift_allocObject();
  swift_weakInit();
  v258 = v100;
  v102 = swift_allocObject();
  *(v102 + 16) = sub_100097D94;
  *(v102 + 24) = v101;

  v103 = sub_100035D04(&qword_10033B590, &qword_100272048);
  v104 = sub_10000E244(&qword_10033B598, &qword_10033B590, &qword_100272048);
  v105 = v240;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E4B8, &qword_10033E488, &qword_1002746A8);
  v106 = v244;
  v107 = Publisher.eraseToAnyPublisher()();

  (*(v243 + 8))(v105, v106);
  sub_10000903C(&v259);
  v259 = v107;
  swift_allocObject();
  swift_weakInit();
  v238 = v103;
  v237 = v104;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v108 = qword_10038B0B8;
  v109 = *(qword_10038B0B8 + 728);
  sub_10005F4E4();
  v111 = v110;

  v112 = v245;
  if (v111 > 0.0)
  {
    v113 = *(v108 + 96);
    v114 = sub_1000031CC();

    if (v114)
    {
      sub_10008D40C(&v259);
      v115 = v261;
      v116 = v262;
      sub_10000EBC0(&v259, v261);
      v244 = (*(v116 + 32))(v115, v116);
      v258 = v244;
      static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
      if (qword_1003391E8 != -1)
      {
        swift_once();
      }

      v117 = qword_10038B5B8;
      v257 = qword_10038B5B8;
      v118 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
      v119 = v202;
      (*(*(v118 - 8) + 56))(v202, 1, 1, v118);
      sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
      sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr);
      v120 = v117;
      v121 = v203;
      Publisher.debounce<A>(for:scheduler:options:)();
      sub_1000097E8(v119, &qword_10034C680, &qword_100270390);

      (*(v201 + 8))(v112, v204);

      sub_10000903C(&v259);
      sub_10000E244(&qword_10033E550, &qword_10033E478, &qword_100274698);
      v122 = v207;
      v123 = v206;
      Publisher.filter(_:)();
      (*(v205 + 8))(v121, v123);
      v124 = swift_allocObject();
      swift_weakInit();
      v125 = swift_allocObject();
      *(v125 + 16) = v124;
      *(v125 + 24) = v111;
      sub_10000E244(&qword_10033E558, &qword_10033E480, &qword_1002746A0);
      v126 = v209;
      Publisher<>.sink(receiveValue:)();

      (*(v208 + 8))(v122, v126);
      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();
    }
  }

  v127 = *(v108 + 344);
  sub_10005F4E4();
  v129 = v128;

  if (v129 > 0.0)
  {
    sub_10008D40C(&v259);
    v130 = v261;
    v131 = v262;
    sub_10000EBC0(&v259, v261);
    v258 = (*(v131 + 32))(v130, v131);
    static OS_dispatch_queue.SchedulerTimeType.Stride.seconds(_:)();
    if (qword_1003391E8 != -1)
    {
      swift_once();
    }

    v132 = qword_10038B5B8;
    v257 = qword_10038B5B8;
    v133 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
    v134 = v202;
    (*(*(v133 - 8) + 56))(v202, 1, 1, v133);
    sub_100003118(0, &qword_100339320, OS_dispatch_queue_ptr);
    sub_100076FC4(&qword_10034B420, &qword_100339320, OS_dispatch_queue_ptr);
    v135 = v132;
    v136 = v203;
    Publisher.debounce<A>(for:scheduler:options:)();
    sub_1000097E8(v134, &qword_10034C680, &qword_100270390);

    (*(v201 + 8))(v112, v204);

    sub_10000903C(&v259);
    sub_10000E244(&qword_10033E550, &qword_10033E478, &qword_100274698);
    v137 = v207;
    v138 = v206;
    Publisher.filter(_:)();
    (*(v205 + 8))(v136, v138);
    v139 = swift_allocObject();
    swift_weakInit();
    v140 = swift_allocObject();
    *(v140 + 16) = v139;
    *(v140 + 24) = v129;
    sub_10000E244(&qword_10033E558, &qword_10033E480, &qword_1002746A0);
    v141 = v209;
    Publisher<>.sink(receiveValue:)();

    (*(v208 + 8))(v137, v141);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();
  }

  v142 = sub_10007005C();
  v143 = static os_log_type_t.info.getter();
  v259 = v142;
  v242 = v95;
  v144 = v256[2];
  v256 += 2;
  v145 = v256;
  v245 = v144;
  v146 = v252;
  v147 = v253;
  (v144)(v252, v249, v253);
  v244 = *(v145 + 64);
  v148 = (v244 + 64) & ~v244;
  v243 = v148;
  v149 = &v241[v148];
  v240 = &v241[v148];
  v150 = swift_allocObject();
  *(v150 + 16) = 0;
  *(v150 + 24) = 0;
  strcpy((v150 + 32), "New Transfer: ");
  *(v150 + 47) = -18;
  *(v150 + 48) = 0;
  *(v150 + 56) = 0xE000000000000000;
  v250(v150 + v148, v146, v147);
  v149[v150] = v143;
  sub_100035D04(&qword_10033E2E8, &qword_100274558);
  sub_100035D04(&unk_10034B620, &qword_1002746E0);
  v241 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033E2F8, &qword_10033E2E8, &qword_100274558);
  v151 = v213;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E4C0, &qword_10033E450, &qword_100274668);
  v152 = v215;
  v153 = Publisher.eraseToAnyPublisher()();

  (*(v214 + 8))(v151, v152);
  v259 = v153;
  type metadata accessor for HandoffTransfer();
  v154 = v216;
  Publisher.compactMap<A>(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E4C8, &qword_10033E458, &qword_100274670);
  v155 = v218;
  v156 = v246;
  Publisher.filter(_:)();

  (*(v217 + 8))(v154, v156);
  sub_100035D04(&qword_10033E4D0, &qword_1002746E8);
  v246 = &protocol conformance descriptor for Publishers.Filter<A>;
  sub_10000E244(&qword_10033E4D8, &qword_10033E460, &qword_100274678);
  v157 = v219;
  v158 = v221;
  Publisher.map<A>(_:)();
  (*(v220 + 8))(v155, v158);
  sub_10000E244(&qword_10033E4E0, &qword_10033E468, &qword_100274680);
  v212 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033E4E8, &qword_10033E4D0, &qword_1002746E8);
  v159 = v224;
  v160 = v223;
  Publisher<>.switchToLatest()();
  (*(v222 + 8))(v157, v160);
  v161 = static os_log_type_t.info.getter();
  v162 = v252;
  v163 = v253;
  (v245)(v252, v249, v253);
  v164 = v240;
  v165 = swift_allocObject();
  *(v165 + 16) = sub_10008EA5C;
  *(v165 + 24) = 0;
  *(v165 + 32) = 0;
  *(v165 + 40) = 0xE000000000000000;
  *(v165 + 48) = 0;
  *(v165 + 56) = 0xE000000000000000;
  v250(v165 + v243, v162, v163);
  v164[v165] = v161;
  sub_100035D04(&qword_10033E4F0, &qword_1002746F0);
  sub_10000E244(&qword_10033E4F8, &qword_10033E470, &unk_100274688);
  v166 = v227;
  v167 = v226;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E500, &qword_10033E448, &qword_100274660);
  v168 = v239;
  v169 = Publisher.eraseToAnyPublisher()();
  (*(v228 + 8))(v166, v168);
  (*(v225 + 8))(v159, v167);
  v259 = v169;
  v170 = swift_allocObject();
  swift_weakInit();
  v171 = swift_allocObject();
  *(v171 + 16) = sub_100097F60;
  *(v171 + 24) = v170;
  sub_100035D04(&qword_10033E508, &unk_1002746F8);
  sub_10000E244(&qword_10033E510, &qword_10033E508, &unk_1002746F8);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10014330C();
  v172 = sub_1000D7228();

  v259 = v172;
  v173 = swift_allocObject();
  swift_weakInit();
  v174 = swift_allocObject();
  *(v174 + 16) = v173;
  *(v174 + 24) = v254;

  sub_100035D04(&qword_10033B308, &qword_100271EF0);
  sub_10000E244(&qword_10033B318, &qword_10033B308, &qword_100271EF0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v259 = sub_1001410D0();
  swift_allocObject();
  swift_weakInit();
  v254 = sub_100035D04(&qword_10033B480, &qword_100271FA0);
  v239 = sub_10000E244(&qword_10033B488, &qword_10033B480, &qword_100271FA0);
  v175 = v229;
  Publisher.filter(_:)();

  LOBYTE(v173) = static os_log_type_t.info.getter();
  v177 = v252;
  v176 = v253;
  (v245)(v252, v249, v253);
  v178 = v240;
  v179 = swift_allocObject();
  *(v179 + 16) = sub_10008EFC8;
  *(v179 + 24) = 0;
  *(v179 + 32) = 0;
  *(v179 + 40) = 0xE000000000000000;
  *(v179 + 48) = 0;
  *(v179 + 56) = 0xE000000000000000;
  v250(v179 + v243, v177, v176);
  v178[v179] = v173;
  v256 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v253 = sub_10000E244(&qword_10033E518, &qword_10033E440, &qword_100274658);
  v180 = v232;
  v181 = v247;
  Publisher.map<A>(_:)();

  v250 = sub_10000E244(&qword_10033E520, &qword_10033E438, &qword_100274650);
  v182 = v248;
  v183 = Publisher.eraseToAnyPublisher()();
  v252 = *(v233 + 8);
  v252(v180, v182);
  v251 = *(v231 + 8);
  v251(v175, v181);
  v259 = v183;
  v184 = swift_allocObject();
  swift_weakInit();
  v185 = swift_allocObject();
  *(v185 + 16) = sub_100098068;
  *(v185 + 24) = v184;
  v186 = v230;
  Publisher.filter(_:)();

  v187 = swift_allocObject();
  swift_weakInit();
  v188 = swift_allocObject();
  *(v188 + 16) = sub_1000980D8;
  *(v188 + 24) = v187;
  v189 = swift_allocObject();
  *(v189 + 16) = sub_1000980E0;
  *(v189 + 24) = v188;

  v190 = v5;
  v191 = v247;
  Publisher.map<A>(_:)();

  v192 = v248;
  v193 = Publisher.eraseToAnyPublisher()();

  v252(v180, v192);
  v251(v186, v191);
  v259 = v193;
  v194 = swift_allocObject();
  swift_weakInit();
  v195 = swift_allocObject();
  *(v195 + 16) = sub_100098138;
  *(v195 + 24) = v194;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v259 = sub_10008F4B8();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033E270, &qword_1002744B0);
  sub_10000E244(&qword_10033E278, &qword_10033E270, &qword_1002744B0);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v259 = sub_100141270();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033B560, &qword_100272030);
  sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v259 = sub_10008FA2C();
  swift_allocObject();
  swift_weakInit();
  sub_100035D04(&qword_10033E528, &qword_100274708);
  sub_10000E244(&qword_10033E530, &qword_10033E528, &qword_100274708);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v259 = sub_10008FE10();
  sub_100035D04(&qword_10033E538, &qword_100274710);
  sub_10000E244(&qword_10033E540, &qword_10033E538, &qword_100274710);
  v196 = v234;
  Publisher.filter(_:)();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10033E548, &qword_10033E430, &qword_100274648);
  v197 = v236;
  Publisher<>.sink(receiveValue:)();

  (*(v235 + 8))(v196, v197);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  sub_10008D40C(&v259);
  v198 = v261;
  v199 = v262;
  sub_10000EBC0(&v259, v261);
  v258 = (*(v199 + 32))(v198, v199);
  swift_allocObject();
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  sub_10000903C(&v259);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v190;
}

uint64_t sub_100097C8C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_100097CEC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_100097D54(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 5 || a2 >> 61 == 2)
  {
  }

  return result;
}

uint64_t sub_100097D9C@<X0>(__int16 *a1@<X0>, _WORD *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *(v2 + 24);
  v8 = *a1;
  v6 = v8;
  result = v4(&v8);
  *a2 = v6;
  return result;
}

uint64_t sub_100097DF0@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  *a2 = sub_1001CC6C0(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_100097EB4@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = *(v2 + 24);
  return sub_100094A94(a1, *(v2 + 16), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), a2, *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
}

uint64_t sub_100097F68(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(a1 + 16);
  v7[0] = *a1;
  v7[1] = v4;
  v7[2] = *(a1 + 32);
  v5 = *(a1 + 56);
  v8 = *(a1 + 48);
  return v2(v7, v5);
}

uint64_t sub_100097FB4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_10008ED20(a1);
}

uint64_t sub_100097FBC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  return sub_1001BEA2C(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, a2, *(v2 + v6 + *(v5 + 64)));
}

uint64_t sub_100098070(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  return v4(a1, *(a1 + *(v5 + 48)), *(a1 + *(v5 + 48) + 8), *(a1 + *(v5 + 64)), *(a1 + *(v5 + 64) + 8)) & 1;
}

uint64_t sub_1000980E4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v5();
  return sub_100009848(a1, a2, &unk_10034C700, &qword_100273D30);
}

uint64_t sub_100098140(uint64_t a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  return v4(a1, *(a1 + *(v5 + 48)), *(a1 + *(v5 + 48) + 8), *(a1 + *(v5 + 64)), *(a1 + *(v5 + 64) + 8));
}

uint64_t sub_1000981CC()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10008E668();
}

uint64_t sub_1000981D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10008E508();
}

uint64_t sub_1000981E4(__int128 *a1)
{
  _StringGuts.grow(_:)(21);
  v2._object = 0x8000000100299440;
  v2._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v2);
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = *(a1 + 6);
  _print_unlocked<A, B>(_:_:)();
  return 0;
}

uint64_t sub_100098288(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_10033E570, &unk_100274720);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000982F8()
{
  result = qword_10033E578;
  if (!qword_10033E578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033E578);
  }

  return result;
}

uint64_t sub_1000983A8(uint64_t a1, unint64_t a2)
{
  if (a2 >> 61 == 5 || a2 >> 61 == 2)
  {
  }

  return result;
}

uint64_t sub_1000983C8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_100098430()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033E598);
  sub_100003078(v0, qword_10033E598);
  return Logger.init(subsystem:category:)();
}

void *sub_1000984B0()
{
  v1 = v0;
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E598);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  swift_weakDestroy();
  v6 = v1[3];

  v7 = v1[4];

  v8 = v1[5];

  v9 = v1[7];
  sub_10002689C(v1[6]);
  return v1;
}

uint64_t sub_1000985B8()
{
  sub_1000984B0();

  return swift_deallocClassInstance();
}

void sub_100098610()
{
  v1 = sub_100035D04(&qword_10033E6E0, &qword_1002747E8);
  v108 = *(v1 - 8);
  v2 = *(v108 + 64);
  __chkstk_darwin(v1);
  v4 = &v82 - v3;
  v5 = sub_100035D04(&qword_10033E6E8, &unk_1002747F0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v82 - v8;
  v107 = sub_100035D04(&qword_10033E6F0, &qword_10027A060);
  v106 = *(v107 - 8);
  v10 = *(v106 + 64);
  __chkstk_darwin(v107);
  v105 = &v82 - v11;
  v12 = sub_100035D04(&qword_10033E6F8, &qword_100274800);
  v113 = *(v12 - 8);
  v114 = v12;
  v13 = *(v113 + 64);
  __chkstk_darwin(v12);
  v112 = &v82 - v14;
  v119 = type metadata accessor for Logger();
  v111 = *(v119 - 8);
  v15 = *(v111 + 64);
  __chkstk_darwin(v119);
  v117 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = sub_100035D04(&qword_10033E700, &qword_100274808);
  v109 = *(v110 - 8);
  v16 = *(v109 + 64);
  __chkstk_darwin(v110);
  v18 = &v82 - v17;
  v118 = type metadata accessor for UUID();
  v19 = *(v118 - 8);
  v20 = v19[8];
  __chkstk_darwin(v118);
  v22 = &v82 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    goto LABEL_7;
  }

  v91 = v15;
  v98 = v18;
  v83 = v4;
  v84 = v1;
  v85 = v9;
  v86 = v6;
  v87 = v5;
  v23 = *(v0 + 24);
  *&v123 = *(v23 + qword_10033E9A0);
  v116 = v0;
  sub_100035D04(&qword_10033E708, &qword_100274810);
  sub_10000E244(&qword_10033E710, &qword_10033E708, &qword_100274810);
  v88 = Publisher.eraseToAnyPublisher()();
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(17);

  strcpy(&v123, "New output (");
  BYTE13(v123) = 0;
  HIWORD(v123) = -5120;
  v115 = v23;
  v24 = v19[2];
  v103 = v23 + qword_10038B038;
  v25 = v118;
  v102 = v19 + 2;
  v101 = v24;
  (v24)(v22);
  v100 = sub_10009D5A0(&qword_10033E718, &type metadata accessor for UUID);
  v26._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v26);

  v27 = v19[1];
  v104 = v19 + 1;
  v99 = v27;
  v27(v22, v25);
  v28._countAndFlagsBits = 2112041;
  v28._object = 0xE300000000000000;
  String.append(_:)(v28);
  v29 = v123;
  v94 = v22;
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v30 = v119;
  v31 = sub_100003078(v119, qword_10033E598);
  v96 = v31;
  v32 = static os_log_type_t.info.getter();
  *&v123 = v88;
  v33 = v111;
  v34 = *(v111 + 16);
  v95 = v111 + 16;
  v97 = v34;
  v35 = v117;
  v34(v117, v31, v30);
  v93 = *(v33 + 80);
  v36 = (v93 + 64) & ~v93;
  v92 = v36;
  v37 = &v91[v36];
  v89 = &v91[v36];
  v38 = swift_allocObject();
  *(v38 + 16) = 0;
  *(v38 + 24) = 0;
  *(v38 + 32) = v29;
  *(v38 + 48) = 0;
  *(v38 + 56) = 0xE000000000000000;
  v111 = *(v33 + 32);
  (v111)(v38 + v36, v35, v30);
  v37[v38] = v32;
  sub_100035D04(&qword_10033E720, &qword_100274818);
  v91 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&qword_10033E728, &qword_10033E720, &qword_100274818);
  v39 = v98;
  Publisher.map<A>(_:)();

  v90 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_10033E730, &qword_10033E700, &qword_100274808);
  v40 = v110;
  v41 = Publisher.eraseToAnyPublisher()();

  (*(v109 + 8))(v39, v40);
  *&v123 = v41;
  v42 = swift_allocObject();
  swift_weakInit();
  v43 = swift_allocObject();
  swift_weakInit();
  v44 = swift_allocObject();
  *(v44 + 16) = v42;
  *(v44 + 24) = v43;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v46 = sub_10013CB44(v45);
  v110 = v46;
  *&v123 = 0;
  *(&v123 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(29);

  *&v123 = 0xD000000000000018;
  *(&v123 + 1) = 0x800000010029A570;
  v47 = v94;
  v48 = v118;
  v101(v94, v103, v118);
  v49._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v49);

  v99(v47, v48);
  v50._countAndFlagsBits = 2112041;
  v50._object = 0xE300000000000000;
  String.append(_:)(v50);
  v51 = v123;
  LOBYTE(v42) = static os_log_type_t.info.getter();
  *&v123 = v46;
  v52 = v117;
  v53 = v119;
  v97(v117, v96, v119);
  v54 = v89;
  v55 = swift_allocObject();
  *(v55 + 16) = 0;
  *(v55 + 24) = 0;
  *(v55 + 32) = v51;
  *(v55 + 48) = 0;
  *(v55 + 56) = 0xE000000000000000;
  (v111)(v55 + v92, v52, v53);
  v54[v55] = v42;
  sub_100035D04(&qword_10033E738, &unk_100274820);
  sub_10000E244(&qword_10033E740, &qword_10033E738, &unk_100274820);
  v56 = v112;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_10033E748, &qword_10033E6F8, &qword_100274800);
  v57 = v114;
  v58 = Publisher.eraseToAnyPublisher()();

  (*(v113 + 8))(v56, v57);
  *&v123 = v58;
  swift_allocObject();
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v59 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage;
  v60 = Strong;
  *&v123 = (*(&Strong->isa + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage))[4];
  v61 = sub_100035D04(&qword_100339828, &unk_100270300);
  v62 = sub_10000E244(&qword_100339830, &qword_100339828, &unk_100270300);
  v117 = v61;
  v122 = Publisher.eraseToAnyPublisher()();
  v63 = *(&v60->isa + v59);
  __chkstk_darwin(v122);
  *(&v82 - 4) = type metadata accessor for HandoffDevice();
  *(&v82 - 3) = v48;
  *(&v82 - 2) = sub_10009D5A0(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v64 = v63 + qword_100346AF8;
  os_unfair_lock_lock((v63 + qword_100346AF8));
  *&v123 = *(v64 + 8);

  swift_getAtKeyPath();

  v65 = v121;
  os_unfair_lock_unlock(v64);

  v66 = *(v65 + 16);
  v119 = v59;
  v114 = v62;
  if (!v66)
  {

    v67 = _swiftEmptyArrayStorage;
    goto LABEL_15;
  }

  v67 = sub_100009194(v66, 0);
  v68 = sub_100009A04(&v123, v67 + 4, v66, v65);
  sub_100004F98();
  if (v68 == v66)
  {
LABEL_15:
    *&v123 = v67;
    sub_100035D04(&qword_100339838, &qword_100271F10);
    sub_100035D04(&qword_10033BAA0, &unk_100274880);
    sub_10000E244(&qword_100339840, &qword_100339838, &qword_100271F10);
    sub_10000E244(&qword_10033E750, &qword_10033BAA0, &unk_100274880);
    v72 = v105;
    Publisher.prepend<A>(_:)();

    swift_allocObject();
    swift_weakInit();
    sub_10000E244(&qword_10033E758, &qword_10033E6F0, &qword_10027A060);
    v73 = v107;
    Publisher<>.sink(receiveValue:)();

    (*(v106 + 8))(v72, v73);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *&v123 = (*(&Strong->isa + v119))[6];
    *&v123 = Publisher.eraseToAnyPublisher()();
    swift_allocObject();
    swift_weakInit();
    Publisher<>.sink(receiveValue:)();

    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    *&v123 = sub_100140E18();

    sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
    sub_100035D04(&qword_10033E760, &unk_100274890);
    sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0);
    v74 = v83;
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E768, &qword_10033E6E0, &qword_1002747E8);
    sub_10000E244(&qword_10033E770, &qword_10033E760, &unk_100274890);
    v75 = v85;
    v76 = v84;
    Publisher<>.switchToLatest()();
    (*(v108 + 8))(v74, v76);
    swift_allocObject();
    swift_weakInit();
    sub_10000E244(&qword_10033E778, &qword_10033E6E8, &unk_1002747F0);
    v77 = v87;
    Publisher<>.sink(receiveValue:)();

    (*(v86 + 8))(v75, v77);
    swift_beginAccess();
    AnyCancellable.store(in:)();
    swift_endAccess();

    sub_1000DC458(v78);
    v79 = swift_weakLoadStrong();
    if (v79)
    {

      v80 = [objc_opt_self() processInfo];
      v81 = [v80 processIdentifier];
    }

    else
    {
      v81 = 0;
    }

    LOBYTE(v122) = v79 == 0;
    LODWORD(v123) = v81;
    BYTE4(v123) = v79 == 0;
    v124 = 0x4000;
    sub_1000DBD34(&v123);

    return;
  }

  __break(1u);
LABEL_7:
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  sub_100003078(v119, qword_10033E598);
  Strong = Logger.logObject.getter();
  v69 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(Strong, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 0;
    _os_log_impl(&_mh_execute_header, Strong, v69, "### No environment?", v70, 2u);
  }

  v71 = Strong;
}

void sub_10009997C(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = v167 - v4;
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v175 = a1[3];
  v9 = a1[5];
  v177 = a1[4];
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    return;
  }

  v11 = Strong;
  v168 = v5;
  v169 = v8;
  v170 = v7;
  *&v176 = v6;
  swift_beginAccess();
  v12 = swift_weakLoadStrong();
  if (!v12)
  {
    if (qword_100338EA0 == -1)
    {
LABEL_15:
      v20 = type metadata accessor for Logger();
      sub_100003078(v20, qword_10033E598);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&_mh_execute_header, v21, v22, "### No environment?", v23, 2u);
      }

      return;
    }

LABEL_75:
    swift_once();
    goto LABEL_15;
  }

  v13 = v175;
  if (v175 >> 62)
  {
    if (v175 >> 62 == 1)
    {
      v14 = *(v176 + 16);
      if (v170)
      {
        if (v14)
        {
          if (qword_100338EA0 != -1)
          {
            swift_once();
          }

          v15 = 0;
          while (v15 < *(v176 + 16))
          {
            v16 = type metadata accessor for Logger();
            sub_100003078(v16, qword_10033E598);
            v17 = Logger.logObject.getter();
            v18 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v17, v18))
            {
              v19 = swift_slowAlloc();
              *v19 = 0;
              _os_log_impl(&_mh_execute_header, v17, v18, "### Unsupported command", v19, 2u);
            }

            ++v15;

            if (v14 == v15)
            {
              goto LABEL_147;
            }
          }

LABEL_73:
          __break(1u);
          goto LABEL_74;
        }
      }

      else if (v14)
      {
        if (qword_100338EA0 != -1)
        {
          swift_once();
        }

        v35 = 0;
        while (v35 < *(v176 + 16))
        {
          v36 = type metadata accessor for Logger();
          sub_100003078(v36, qword_10033E598);
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&_mh_execute_header, v37, v38, "### Unsupported command", v39, 2u);
          }

          ++v35;

          if (v14 == v35)
          {
            goto LABEL_147;
          }
        }

LABEL_74:
        __break(1u);
        goto LABEL_75;
      }

LABEL_147:

      return;
    }

LABEL_21:
    v30 = v169 | v170;
    if (v13 == 0x8000000000000000 && !(v30 | v176 | v177 | v9))
    {
      v31 = v11[3];
      v32 = swift_weakLoadStrong();
      if (v32)
      {

        v33 = [objc_opt_self() processInfo];
        v34 = [v33 processIdentifier];
      }

      else
      {
        v34 = 0;
      }

      LOBYTE(v178) = v32 == 0;
      LODWORD(v179) = v34;
      BYTE4(v179) = v32 == 0;
      v180 = 0x4000;
      sub_1000DBD34(&v179);
      goto LABEL_147;
    }

    if (v13 == 0x8000000000000000 && v176 == 1 && !(v30 | v177 | v9))
    {
      if (qword_100338EA0 != -1)
      {
        swift_once();
      }

      v163 = type metadata accessor for Logger();
      sub_100003078(v163, qword_10033E598);
      v164 = Logger.logObject.getter();
      v165 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v164, v165))
      {
        v166 = swift_slowAlloc();
        *v166 = 0;
        _os_log_impl(&_mh_execute_header, v164, v165, "### Received 'kill' message, exiting...", v166, 2u);
      }

      exit(0);
    }

    if (qword_1003390F0 == -1)
    {
LABEL_38:
      if (qword_10038B2F0)
      {
        sub_100170DEC();
      }

      goto LABEL_147;
    }

LABEL_149:
    swift_once();
    goto LABEL_38;
  }

  v167[0] = v11;
  v167[1] = v12;
  v24 = *(v12 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_deviceStorage);
  __chkstk_darwin(v12);
  v11 = v167;
  v167[-4] = type metadata accessor for HandoffDevice();
  v167[-3] = type metadata accessor for UUID();
  v167[-2] = sub_10009D5A0(&qword_100339848, &type metadata accessor for UUID);
  swift_getKeyPath();
  v25 = v24 + qword_100346AF8;
  os_unfair_lock_lock(v25);
  *&v179 = *(v25 + 8);

  swift_getAtKeyPath();

  v26 = v178;
  os_unfair_lock_unlock(v25);

  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = sub_100009194(*(v26 + 16), 0);
    v29 = sub_100009A04(&v179, v28 + 32, v27, v26);
    sub_100004F98();
    if (v29 != v27)
    {
      __break(1u);
      goto LABEL_21;
    }
  }

  else
  {

    v28 = _swiftEmptyArrayStorage;
  }

  *&v179 = _swiftEmptyArrayStorage;
  if (v28 < 0 || (v28 & 0x4000000000000000) != 0)
  {
    v40 = _CocoaArrayWrapper.endIndex.getter();
    if (v40)
    {
      goto LABEL_44;
    }
  }

  else
  {
    v40 = *(v28 + 16);
    if (v40)
    {
LABEL_44:
      v41 = 0;
      v42 = v28 & 0xC000000000000001;
      v43 = v28 + 32;
      *&v174 = v28;
      v173 = v40;
      v172 = v28 & 0xC000000000000001;
      v171 = v28 + 32;
      while (1)
      {
        if (v42)
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v46 = __OFADD__(v41++, 1);
          if (v46)
          {
LABEL_66:
            __break(1u);
LABEL_67:
            v62 = v179;
            goto LABEL_78;
          }
        }

        else
        {
          if (v41 >= *(v28 + 16))
          {
LABEL_72:
            __break(1u);
            goto LABEL_73;
          }

          v45 = *(v43 + 8 * v41);

          v46 = __OFADD__(v41++, 1);
          if (v46)
          {
            goto LABEL_66;
          }
        }

        UUID.uuidString.getter();
        v47._countAndFlagsBits = v177;
        v47._object = v9;
        v48 = String.hasPrefix(_:)(v47);

        if (!v48)
        {
          v49 = v9;
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v50 = sub_1000BCFD0();

          v51 = 1 << *(v50 + 32);
          if (v51 < 64)
          {
            v52 = ~(-1 << v51);
          }

          else
          {
            v52 = -1;
          }

          v53 = v52 & v50[7];
          v54 = (v51 + 63) >> 6;

          v55 = 0;
          while (v53)
          {
            v56 = v55;
LABEL_60:
            v57 = __clz(__rbit64(v53));
            v53 &= v53 - 1;
            v58 = (v50[6] + ((v56 << 10) | (16 * v57)));
            v59 = *v58;
            v60 = v58[1];

            v61._countAndFlagsBits = v177;
            v61._object = v49;
            LOBYTE(v59) = String.hasPrefix(_:)(v61);

            if (v59)
            {

              v9 = v49;
              v28 = v174;
              v40 = v173;
              v42 = v172;
              v43 = v171;
              goto LABEL_45;
            }
          }

          while (1)
          {
            v56 = v55 + 1;
            if (__OFADD__(v55, 1))
            {
              __break(1u);
              goto LABEL_72;
            }

            if (v56 >= v54)
            {
              break;
            }

            v53 = v50[v56 + 7];
            ++v55;
            if (v53)
            {
              v55 = v56;
              goto LABEL_60;
            }
          }

          v9 = v49;
          v28 = v174;
          v40 = v173;
          v42 = v172;
          v43 = v171;
          if (v41 != v173)
          {
            continue;
          }

          goto LABEL_67;
        }

LABEL_45:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v44 = *(v179 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        if (v41 == v40)
        {
          goto LABEL_67;
        }
      }
    }
  }

  v62 = _swiftEmptyArrayStorage;
LABEL_78:

  v63 = v62 < 0 || (v62 & 0x4000000000000000) != 0;
  if (!v63)
  {
    if (*(v62 + 16))
    {
      goto LABEL_83;
    }

LABEL_88:

    if (qword_100338EA0 != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    sub_100003078(v66, qword_10033E598);

    v67 = Logger.logObject.getter();
    v68 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      *&v179 = v70;
      *v69 = 136315138;
      *(v69 + 4) = sub_100017494(v177, v9, &v179);
      _os_log_impl(&_mh_execute_header, v67, v68, "### Error: no device for id: %s", v69, 0xCu);
      sub_10000903C(v70);
    }

    goto LABEL_110;
  }

  if (!_CocoaArrayWrapper.endIndex.getter())
  {
    goto LABEL_88;
  }

LABEL_83:
  if ((v62 & 0xC000000000000001) != 0)
  {
    v64 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    if (v63)
    {
LABEL_86:
      v65 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_95;
    }
  }

  else
  {
    if (!*(v62 + 16))
    {
      __break(1u);
      goto LABEL_149;
    }

    v64 = *(v62 + 32);

    if (v63)
    {
      goto LABEL_86;
    }
  }

  v65 = *(v62 + 16);
LABEL_95:

  if (v65 != 1)
  {
    if (qword_100338EA0 != -1)
    {
      swift_once();
    }

    v95 = type metadata accessor for Logger();
    sub_100003078(v95, qword_10033E598);

    v67 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v67, v96))
    {
      goto LABEL_109;
    }

    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    *&v179 = v98;
    *v97 = 136315138;
    *(v97 + 4) = sub_100017494(v177, v9, &v179);
    _os_log_impl(&_mh_execute_header, v67, v96, "### Error: multiple devices for id: %s", v97, 0xCu);
    sub_10000903C(v98);

    goto LABEL_108;
  }

  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v71 = type metadata accessor for Logger();
  sub_100003078(v71, qword_10033E598);

  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v72, v73))
  {
    v74 = swift_slowAlloc();
    *&v179 = swift_slowAlloc();
    *v74 = 136315394;
    *(v74 + 4) = sub_100017494(v177, v9, &v179);
    *(v74 + 12) = 2080;

    v76 = sub_1001EE1E4(v75);
    v78 = v77;

    v79 = sub_100017494(v76, v78, &v179);

    *(v74 + 14) = v79;
    _os_log_impl(&_mh_execute_header, v72, v73, "Found device for id %s: %s", v74, 0x16u);
    swift_arrayDestroy();
  }

  if (v175)
  {

    v80 = v176;
    v81 = v170;
    v82 = v169;
    sub_10009D4F0(v176, v170, v169, 1);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.default.getter();

    sub_10009D548(v80, v81, v82, 1);
    v85 = os_log_type_enabled(v83, v84);
    v177 = v64;
    if (v81)
    {
      if (v85)
      {
        v86 = swift_slowAlloc();
        *&v179 = swift_slowAlloc();
        *v86 = 136315394;
        v87 = sub_1000092A0();
        v89 = sub_100017494(v87, v88, &v179);

        *(v86 + 4) = v89;
        *(v86 + 12) = 2080;
        v90 = v176;
        v178 = v176;

        v91 = String.init<A>(describing:)();
        v93 = sub_100017494(v91, v92, &v179);

        *(v86 + 14) = v93;
        _os_log_impl(&_mh_execute_header, v83, v84, "Unsetting overrides for %s: %s", v86, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v90 = v176;
      }

      v121 = *(v90 + 16);
      if (!v121)
      {

        goto LABEL_147;
      }

      v122 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region;
      v123 = (v90 + 32);
      *&v94 = 136315138;
      v176 = v94;
      do
      {
        if (((*v123 | (*(v123 + 4) << 32)) & 0x8000000000000000) != 0)
        {
          v131 = *(v177 + v122);
          v132 = *(*v131 + 144);

          v133 = Logger.logObject.getter();
          v134 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v133, v134))
          {
            v135 = swift_slowAlloc();
            v136 = swift_slowAlloc();
            *&v179 = v136;
            *v135 = v176;
            *(v135 + 4) = sub_100017494(0xD000000000000014, 0x800000010029A590, &v179);
            _os_log_impl(&_mh_execute_header, v133, v134, "%s", v135, 0xCu);
            sub_10000903C(v136);
          }

          v137 = v131[3];
          LOBYTE(v179) = 6;
        }

        else
        {
          v125 = *(v177 + 24);
          v126 = *(*v125 + 144);

          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v130 = swift_slowAlloc();
            *&v179 = v130;
            *v129 = v176;
            *(v129 + 4) = sub_100017494(0xD000000000000014, 0x800000010029A590, &v179);
            _os_log_impl(&_mh_execute_header, v127, v128, "%s", v129, 0xCu);
            sub_10000903C(v130);
          }

          v124 = v125[3];
          LODWORD(v179) = 0;
          WORD2(v179) = 256;
        }

        CurrentValueSubject.send(_:)();

        v123 += 2;
        --v121;
      }

      while (v121);
    }

    else
    {
      if (v85)
      {
        v110 = swift_slowAlloc();
        *&v179 = swift_slowAlloc();
        *v110 = 136315394;
        v111 = sub_1000092A0();
        v113 = sub_100017494(v111, v112, &v179);

        *(v110 + 4) = v113;
        *(v110 + 12) = 2080;
        v114 = v176;
        v178 = v176;

        v115 = String.init<A>(describing:)();
        v117 = sub_100017494(v115, v116, &v179);

        *(v110 + 14) = v117;
        _os_log_impl(&_mh_execute_header, v83, v84, "Setting overrides for %s: %s", v110, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v114 = v176;
      }

      v138 = *(v114 + 16);
      if (v138)
      {
        v173 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region;
        v139 = (v114 + 32);
        v175 = "unsetOverrideValue()";
        *&v118 = 136315394;
        v174 = v118;
        do
        {
          v141 = *v139 | (*(v139 + 4) << 32);
          if ((v141 & 0x8000000000) != 0)
          {
            v151 = *(v64 + v173);
            v152 = *(*v151 + 144);

            v153 = Logger.logObject.getter();
            v154 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v153, v154))
            {
              v155 = swift_slowAlloc();
              *&v179 = swift_slowAlloc();
              *v155 = v174;
              *(v155 + 4) = sub_100017494(0xD000000000000014, v175 | 0x8000000000000000, &v179);
              *(v155 + 12) = 2080;
              LOBYTE(v178) = v141;
              sub_100035D04(&qword_100339988, &qword_100272B60);
              v156 = String.init<A>(describing:)();
              v158 = sub_100017494(v156, v157, &v179);

              *(v155 + 14) = v158;
              _os_log_impl(&_mh_execute_header, v153, v154, "%s: %s", v155, 0x16u);
              swift_arrayDestroy();
              v64 = v177;
            }

            v159 = v151[3];
            LOBYTE(v179) = v141;
          }

          else
          {
            v142 = *(v64 + 24);
            v143 = *(*v142 + 144);

            v144 = Logger.logObject.getter();
            v145 = static os_log_type_t.default.getter();
            v146 = HIDWORD(v141) & 1;
            if (os_log_type_enabled(v144, v145))
            {
              v147 = swift_slowAlloc();
              *&v176 = swift_slowAlloc();
              *&v179 = v176;
              *v147 = v174;
              *(v147 + 4) = sub_100017494(0xD000000000000014, v175 | 0x8000000000000000, &v179);
              *(v147 + 12) = 2080;
              LODWORD(v178) = v141;
              BYTE4(v178) = BYTE4(v141) & 1;
              sub_100035D04(&unk_10034B5D0, &unk_100289850);
              v148 = String.init<A>(describing:)();
              v150 = sub_100017494(v148, v149, &v179);
              v146 = HIDWORD(v141) & 1;

              *(v147 + 14) = v150;
              _os_log_impl(&_mh_execute_header, v144, v145, "%s: %s", v147, 0x16u);
              swift_arrayDestroy();
              v64 = v177;
            }

            v140 = v142[3];
            WORD2(v179) = v146;
            LODWORD(v179) = v141;
          }

          CurrentValueSubject.send(_:)();

          v139 += 2;
          --v138;
        }

        while (v138);
      }
    }

    return;
  }

  v99 = v176;
  v100 = v170;
  sub_10009D534(v176, v170);
  v101 = sub_100070D94();
  if (!v101)
  {

    sub_10009D58C(v99, v100);
    v67 = Logger.logObject.getter();
    v119 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v67, v119))
    {
      goto LABEL_109;
    }

    v120 = swift_slowAlloc();
    *v120 = 0;
    _os_log_impl(&_mh_execute_header, v67, v119, "### Error: no rpCLDevice", v120, 2u);
LABEL_108:

LABEL_109:

LABEL_110:

    return;
  }

  v102 = v101;
  v103 = sub_100142E20()[4];
  v104 = v103;

  if (v103)
  {
    v105 = sub_10009D5A0(&qword_10033E808, type metadata accessor for RapportProxy);
    v106 = type metadata accessor for TaskPriority();
    v107 = v168;
    (*(*(v106 - 8) + 56))(v168, 1, 1, v106);
    v108 = swift_allocObject();
    v108[2] = 0;
    v108[3] = 0;
    v109 = v170;
    v108[4] = v176;
    v108[5] = v109;
    v108[6] = v169;
    v108[7] = v104;
    v108[8] = v105;
    v108[9] = v102;
    sub_100240220(0, 0, v107, &unk_100274978, v108);

    goto LABEL_147;
  }

  sub_10009D58C(v176, v170);
  v160 = Logger.logObject.getter();
  v161 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v160, v161))
  {
    v162 = swift_slowAlloc();
    *v162 = 0;
    _os_log_impl(&_mh_execute_header, v160, v161, "### Error: no remoteTransportLink", v162, 2u);
  }
}

uint64_t sub_10009B2CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[12] = a7;
  v7[13] = v9;
  v7[10] = a5;
  v7[11] = a6;
  v7[9] = a4;
  return (_swift_task_switch)(sub_10009B2FC, 0, 0);
}

uint64_t sub_10009B2FC()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[10];
  v4 = v0[11];
  v5 = v0[9];
  v0[5] = &type metadata for LaunchAppRequest;
  v0[6] = &off_100311D20;
  v6 = swift_allocObject();
  v0[2] = v6;
  v6[2] = v5;
  v6[3] = v3;
  v6[4] = 0;
  v6[5] = v4;
  sub_10009D534(v5, v3);

  v7 = swift_task_alloc();
  v0[14] = v7;
  v7[2] = v2;
  v7[3] = v0 + 2;
  v7[4] = v1;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  v0[15] = v9;
  v10 = sub_100035D04(&qword_10033E810, &unk_100274980);
  *v9 = v0;
  v9[1] = sub_10009B464;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 7, 0, 0, 0xD000000000000012, 0x800000010029A5D0, sub_10009D7C8, v7, v10);
}

uint64_t sub_10009B464()
{
  v2 = *v1;
  v3 = *(*v1 + 120);
  v7 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = sub_10009B5F0;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_10009B580;
  }

  return (_swift_task_switch)(v4, 0, 0);
}

uint64_t sub_10009B580()
{
  v1 = v0[7];

  v2 = v0[8];

  sub_10000903C(v0 + 2);
  v3 = v0[1];

  return v3();
}

uint64_t sub_10009B5F0()
{
  v1 = v0[14];

  sub_10000903C(v0 + 2);
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v2 = v0[16];
  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033E598);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = v0[16];
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v10;
    *v9 = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "### LaunchAppRequest failed: %@", v8, 0xCu);
    sub_1000097E8(v9, &qword_100339940, &unk_100272C50);
  }

  else
  {
  }

  v11 = v0[1];

  return v11();
}

unsigned __int8 *sub_10009B7A4(unsigned __int8 *result)
{
  if (*result >= 2u)
  {
    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      v1 = *(result + 6);
      sub_10009D4E0(v1);

      if (v1)
      {
        v1(result);
        return sub_10002689C(v1);
      }
    }
  }

  return result;
}

uint64_t sub_10009B838(uint64_t *a1, uint64_t a2)
{
  v37 = sub_100035D04(&qword_10033E7E0, &qword_100274930);
  v36 = *(v37 - 8);
  v4 = *(v36 + 64);
  __chkstk_darwin(v37);
  v35 = &v30 - v5;
  v6 = sub_100035D04(&qword_10033E7E8, &qword_100274938);
  v34 = *(v6 - 8);
  v7 = *(v34 + 64);
  __chkstk_darwin(v6);
  v9 = &v30 - v8;
  v10 = sub_100035D04(&qword_10033D6F8, &unk_100274940);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v38 = &v30 - v13;
  v14 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v16 = *(Strong + 24);

    sub_10009BEFC(&v42);
    v41 = v45;
    v49[0] = v42;
    v49[1] = v43;
    v50 = v44 | (v46 << 40) | (v45 << 32);
    v51 = -16384;
    sub_1000DBD34(v49);

    v48 = v42;
    sub_100056F28(&v48);
    v47 = v43;
    sub_1000097E8(&v47, &qword_10033A238, &qword_10027D3E0);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v18 = result;
    v33 = UUID.uuidString.getter();
    v32 = v19;
    v39 = *(v14 + 24);

    v30 = v10;
    sub_100035D04(&qword_10033D400, &unk_100274950);
    v31 = v11;
    sub_10000E244(&qword_10033D780, &qword_10033D400, &unk_100274950);
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033E7F0, &qword_10033E7E8, &qword_100274938);
    v20 = Publisher.eraseToAnyPublisher()();

    (*(v34 + 8))(v9, v6);
    v39 = v20;
    v40 = *(v14 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);

    sub_100035D04(&qword_10033D408, &qword_100273060);
    sub_10000E244(&qword_10033D748, &qword_10033D408, &qword_100273060);
    v21 = v35;
    Publisher.map<A>(_:)();
    sub_10000E244(&qword_10033E7F8, &qword_10033E7E0, &qword_100274930);
    v22 = v37;
    v23 = Publisher.eraseToAnyPublisher()();

    (*(v36 + 8))(v21, v22);
    v40 = v23;
    sub_100035D04(&qword_10033D630, &unk_100274960);
    sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960);
    v24 = v38;
    Publishers.Merge.init(_:_:)();
    v25 = swift_allocObject();
    *(v25 + 16) = a2;
    *(v25 + 24) = v14;
    sub_10000E244(&qword_10033D720, &qword_10033D6F8, &unk_100274940);

    v26 = v30;
    v27 = Publisher<>.sink(receiveValue:)();

    (*(v31 + 8))(v24, v26);
    swift_beginAccess();
    v28 = *(v18 + 40);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *(v18 + 40);
    *(v18 + 40) = 0x8000000000000000;
    sub_10004D1EC(v27, v33, v32, isUniquelyReferenced_nonNull_native);

    *(v18 + 40) = v40;
    swift_endAccess();
  }

  return result;
}

uint64_t sub_10009BEFC@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = UUID.uuidString.getter();
  v6 = v5;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  v7 = sub_10000C868();
  v9 = v8;

  v10 = *(v1 + 24);
  v11 = *(v10 + 24);

  CurrentValueSubject.value.getter();
  if (v24)
  {
    v12 = *(v10 + 16);
    CurrentValueSubject.value.getter();

    v13 = v20;
    v14 = v21;
  }

  else
  {
    v13 = v22;

    v14 = v23 & 1;
  }

  v15 = *(v2 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__region);
  v16 = *(v15 + 24);

  CurrentValueSubject.value.getter();
  v17 = v20;
  if (v20 == 6)
  {
    v18 = *(v15 + 16);
    CurrentValueSubject.value.getter();

    v17 = v22;
  }

  else
  {
  }

  *a1 = v4;
  *(a1 + 8) = v6;
  *(a1 + 16) = v7;
  *(a1 + 24) = v9;
  *(a1 + 32) = v13;
  *(a1 + 36) = v14;
  *(a1 + 37) = v17;
  return result;
}

uint64_t sub_10009C078()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v1 = *(result + 24);

    sub_10009BEFC(&v2);
    v9[0] = v2;
    v9[1] = v3;
    v10 = v4 | (v6 << 40) | (v5 << 32);
    v11 = -16384;
    sub_1000DBD34(v9);

    v8 = v2;
    sub_100056F28(&v8);
    v7 = v3;
    return sub_1000097E8(&v7, &qword_10033A238, &qword_10027D3E0);
  }

  return result;
}

uint64_t sub_10009C168(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + 24);

    *&v10 = UUID.uuidString.getter();
    *(&v10 + 1) = v4;
    v11 = -16128;
    sub_1000DBD34(&v10);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = UUID.uuidString.getter();
    v8 = v7;
    swift_beginAccess();
    v9 = sub_1001D0A1C(v6, v8);
    swift_endAccess();
    sub_10009D4C8(v9);
  }

  return result;
}

uint64_t sub_10009C29C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v68 = a2;
  v77 = a3;
  v73 = sub_100035D04(&qword_10033E440, &qword_100274658);
  v71 = *(v73 - 8);
  v4 = *(v71 + 64);
  __chkstk_darwin(v73);
  v69 = &v56 - v5;
  v74 = sub_100035D04(&qword_10033E780, &qword_1002748A0);
  v72 = *(v74 - 8);
  v6 = *(v72 + 64);
  __chkstk_darwin(v74);
  v70 = &v56 - v7;
  v61 = sub_100035D04(&qword_10033E788, &qword_1002748A8);
  v60 = *(v61 - 8);
  v8 = *(v60 + 64);
  __chkstk_darwin(v61);
  v59 = &v56 - v9;
  v10 = sub_100035D04(&qword_10033E790, &qword_1002748B0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v56 - v13;
  v57 = sub_100035D04(&qword_10033E798, &qword_1002748B8);
  v58 = *(v57 - 8);
  v15 = *(v58 + 64);
  __chkstk_darwin(v57);
  v17 = &v56 - v16;
  v18 = sub_100035D04(&qword_10033E7A0, &qword_1002748C0);
  v64 = *(v18 - 8);
  v65 = v18;
  v19 = *(v64 + 64);
  __chkstk_darwin(v18);
  v62 = &v56 - v20;
  v21 = sub_100035D04(&qword_10033E7A8, &qword_1002748C8);
  v66 = *(v21 - 8);
  v67 = v21;
  v22 = *(v66 + 64);
  __chkstk_darwin(v21);
  v63 = &v56 - v23;
  v24 = sub_100035D04(&qword_10033E7B0, &unk_1002748D0);
  v75 = *(v24 - 8);
  v76 = v24;
  v25 = *(v75 + 64);
  __chkstk_darwin(v24);
  v78 = &v56 - v26;
  v27 = *a1;
  if (*a1)
  {
    v28 = UUID.uuidString.getter();
    v30 = v29;
    v31 = *(v27 + 24);
    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    v32 = sub_10000C868();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
    v28 = 0;
    v30 = 0;
  }

  v80[0] = v28;
  v80[1] = v30;
  v80[2] = v32;
  v81 = v34;
  LOBYTE(v82) = 0;
  v35 = v78;
  Just.init(_:)();
  if (v27)
  {

    sub_10008D40C(v80);
    v36 = v81;
    v37 = v82;
    sub_10000EBC0(v80, v81);
    v38 = (*(v37 + 32))(v36, v37);
    sub_10000903C(v80);
    v80[0] = v38;
    sub_100035D04(&qword_10033B590, &qword_100272048);
    sub_10000E244(&qword_10033B598, &qword_10033B590, &qword_100272048);
    Publisher.map<A>(_:)();

    sub_10000E244(&qword_10033E7B8, &qword_10033E7B0, &unk_1002748D0);
    sub_10000E244(&qword_10033E7C0, &qword_10033E790, &qword_1002748B0);
    v39 = v76;
    Publisher.merge<A>(with:)();
    (*(v11 + 8))(v14, v10);
    sub_10008D40C(v80);
    v40 = v81;
    v41 = v82;
    sub_10000EBC0(v80, v81);
    v79 = (*(v41 + 40))(v40, v41);
    sub_100035D04(&qword_10033B508, &qword_1002744C0);
    sub_10000E244(&qword_10033B510, &qword_10033B508, &qword_1002744C0);
    v42 = v59;
    Publisher.map<A>(_:)();

    sub_10000903C(v80);
    sub_10000E244(&qword_10033E7C8, &qword_10033E788, &qword_1002748A8);
    v43 = v62;
    v44 = v57;
    v45 = v61;
    Publishers.Merge.merge<A>(with:)();
    (*(v60 + 8))(v42, v45);
    (*(v58 + 8))(v17, v44);
    v80[0] = sub_1001410D0();

    sub_100035D04(&qword_10033B480, &qword_100271FA0);
    sub_10000E244(&qword_10033B488, &qword_10033B480, &qword_100271FA0);
    v46 = v69;
    Publisher.filter(_:)();

    sub_10000E244(&qword_10033E518, &qword_10033E440, &qword_100274658);
    v47 = v70;
    v48 = v73;
    Publisher.map<A>(_:)();
    (*(v71 + 8))(v46, v48);
    sub_10000E244(&qword_10033E7D0, &qword_10033E780, &qword_1002748A0);
    v49 = v63;
    v50 = v65;
    v51 = v74;
    Publishers.Merge3.merge<A>(with:)();
    (*(v72 + 8))(v47, v51);
    (*(v64 + 8))(v43, v50);
    sub_10000E244(&qword_10033E7D8, &qword_10033E7A8, &qword_1002748C8);
    v52 = v67;
    v53 = Publisher.eraseToAnyPublisher()();

    v54 = v52;
    v35 = v78;
    (*(v66 + 8))(v49, v54);
  }

  else
  {
    sub_10000E244(&qword_10033E7B8, &qword_10033E7B0, &unk_1002748D0);
    v39 = v76;
    v53 = Publisher.eraseToAnyPublisher()();
  }

  result = (*(v75 + 8))(v35, v39);
  *v77 = v53;
  return result;
}

uint64_t sub_10009CD34@<X0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_100243CA8(*a1);
  *a2 = result;
  *(a2 + 8) = v4;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 1;
  return result;
}

uint64_t sub_10009CD6C@<X0>(uint64_t a1@<X8>)
{
  result = sub_100244CC4();
  *a1 = result;
  *(a1 + 8) = v3;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 3;
  return result;
}

uint64_t sub_10009CDA4(uint64_t a1)
{
  v1 = (a1 + *(sub_100035D04(&unk_10034C700, &qword_100273D30) + 48));
  v2 = *v1;
  v3 = v1[1];
  if (v2 == UUID.uuidString.getter() && v3 == v4)
  {
    v6 = 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v6 & 1;
}

uint64_t sub_10009CE44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v5 = v4 - 8;
  v6 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - v7;
  sub_10009D458(a1, &v16 - v7);
  v9 = *&v8[*(v5 + 56) + 8];

  v10 = *&v8[*(v5 + 72) + 8];

  v12 = sub_100243F84(v11);
  v14 = v13;
  result = sub_10007E6BC(v8);
  *a2 = v12;
  *(a2 + 8) = v14;
  *(a2 + 16) = 0;
  *(a2 + 24) = 0;
  *(a2 + 32) = 2;
  return result;
}

uint64_t sub_10009CF18(__int128 *a1)
{
  v4 = a1[1];
  v5 = *a1;
  v1 = *(a1 + 32);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 24);

    v6[0] = v5;
    v6[1] = v4;
    v7 = v1;
    v8 = 0x8000;
    sub_1000DBD34(v6);
  }

  return result;
}

uint64_t sub_10009CFB0@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  type metadata accessor for ProxControlDemoBridgeServer();
  result = Identifiable<>.id.getter();
  *a1 = result;
  return result;
}

uint64_t sub_10009CFF0(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  v8 = sub_100035D04(&qword_10033E818, qword_100274990);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v19 - v11;
  (*(v9 + 16))(&v19 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  v15 = a3[3];
  v16 = a3[4];
  v17 = sub_10000EBC0(a3, v15);
  sub_100253174(v17, a4, sub_10009D7D4, v14, a2, v15, v16);
}

void *sub_10009D168(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_weakInit();
  v2[4] = &_swiftEmptySetSingleton;
  v2[5] = _swiftEmptyDictionarySingleton;
  v2[6] = 0;
  v2[7] = 0;
  if (qword_100338EA0 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033E598);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "Init", v8, 2u);
  }

  swift_weakAssign();
  v3[3] = a2;

  sub_100098610();
  return v3;
}

uint64_t sub_10009D29C@<X0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = v2[2];
  v7 = v2[3];
  v8 = v2[4];
  v9 = v2[5];
  v10 = v2[6];
  v11 = v2[7];
  v12 = *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64));
  v13 = a1[1];
  v18[0] = *a1;
  v18[1] = v13;
  v18[2] = a1[2];
  sub_1001CD050(v18, v6, v8, v9, v10, v11, v17, v12);
  v14 = v17[1];
  *a2 = v17[0];
  a2[1] = v14;
  a2[2] = v17[2];
  return sub_10009D868(v17, v16);
}

void sub_10009D374(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_10009997C(a1);
}

uint64_t sub_10009D37C@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  v6 = (*(v5 + 80) + 64) & ~*(v5 + 80);
  result = sub_1001BF964(*a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result;
  return result;
}

uint64_t sub_10009D458(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009D4C8(uint64_t result)
{
  if (result != 1)
  {
  }

  return result;
}

uint64_t sub_10009D4D8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return sub_10009C078();
}

uint64_t sub_10009D4E0(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_10009D4F0(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    sub_10009D534(a1, a2);
  }
}

uint64_t sub_10009D534(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_10009D548(uint64_t a1, unint64_t a2, uint64_t a3, char a4)
{
  if ((a4 & 1) == 0)
  {
    sub_10009D58C(a1, a2);
  }
}

uint64_t sub_10009D58C(uint64_t a1, unint64_t a2)
{
  if (a2 >= 5)
  {
  }

  return result;
}

uint64_t sub_10009D5A0(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10009D5E8(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v11 = v1[8];
  v10 = v1[9];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = sub_10009D6D4;

  return sub_10009B2CC(a1, v4, v5, v6, v7, v8, v9);
}

uint64_t sub_10009D6D4()
{
  v1 = *(*v0 + 16);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_10009D7D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *(*(sub_100035D04(&qword_10033E818, qword_100274990) - 8) + 80);

  return sub_1000F39D4(a1, a2, a3);
}

uint64_t sub_10009D8C4()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033E820);
  sub_100003078(v0, qword_10033E820);
  return Logger.init(subsystem:category:)();
}

id sub_10009D944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  ObjectType = swift_getObjectType();
  *&v5[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle] = 0;
  if (qword_100338EA8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10033E820);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Init", v16, 2u);
  }

  v17 = &v6[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_viewControllerClassName];
  *v17 = a1;
  *(v17 + 1) = a2;
  sub_10009E1B0(a3, &v6[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_context]);
  v18 = &v6[OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler];
  *v18 = a4;
  *(v18 + 1) = a5;
  v21.receiver = v6;
  v21.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v21, "init");
  sub_10009E220(a3);
  return v19;
}

id sub_10009DAC4()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  if (qword_100338EA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033E820);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Deinit", v6, 2u);
  }

  sub_10009DBD8();
  v8.receiver = v1;
  v8.super_class = ObjectType;
  return objc_msgSendSuper2(&v8, "dealloc");
}

void sub_10009DBD8()
{
  v1 = v0;
  if (qword_100338EA8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E820);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Invalidating...", v5, 2u);
  }

  v6 = OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle;
  v7 = *(v1 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle);
  if (v7)
  {
    [v7 invalidate];
    v7 = *(v1 + v6);
  }

  *(v1 + v6) = 0;
}

void sub_10009DD84()
{
  v2 = v0;
  if (qword_100338EA8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_100003078(v3, qword_10033E820);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "Activating...", v6, 2u);
  }

  v7 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_viewControllerClassName);
  v8 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_viewControllerClassName + 8);
  v9 = objc_allocWithZone(SBSRemoteAlertDefinition);
  v10 = String._bridgeToObjectiveC()();
  v11 = String._bridgeToObjectiveC()();
  v12 = [v9 initWithServiceName:v10 viewControllerClassName:v11];

  v13 = [objc_allocWithZone(SBSRemoteAlertConfigurationContext) init];
  sub_10009E1B0(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_context, v21);
  v14 = v22;
  if (v22)
  {
    v15 = v23;
    sub_10000EBC0(v21, v22);
    sub_1000EF198(v13, v14, v15);
    if (v1)
    {

      sub_10000903C(v21);
      return;
    }

    sub_10000903C(v21);
  }

  else
  {
    sub_10009E220(v21);
  }

  v16 = [objc_opt_self() newHandleWithDefinition:v12 configurationContext:v13];
  [v16 registerObserver:v2];
  v17 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle);
  *(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_remoteAlertHandle) = v16;
  v18 = v16;

  v19 = [objc_allocWithZone(SBSRemoteAlertActivationContext) init];
  [v18 activateWithContext:v19];
  v20 = *(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler + 8);
  (*(v2 + OBJC_IVAR____TtC17proximitycontrold19PCViewServiceHandle_eventHandler))(1);
}

uint64_t sub_10009E1B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&unk_10033E8E0, qword_1002749D8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_10009E220(uint64_t a1)
{
  v2 = sub_100035D04(&unk_10033E8E0, qword_1002749D8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10009E298()
{
  v1 = 0x7373696D736964;
  if (*v0 != 1)
  {
    v1 = 7368560;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E6573657270;
  }
}

unint64_t sub_10009E2F0()
{
  result = qword_10033E8F0;
  if (!qword_10033E8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10033E8F0);
  }

  return result;
}

uint64_t sub_10009E34C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 321))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 72);
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

uint64_t sub_10009E3A8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 312) = 0;
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 320) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 321) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 321) = 0;
    }

    if (a2)
    {
      *(result + 72) = a2;
    }
  }

  return result;
}

uint64_t sub_10009E464@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v63 = a2;
  v3 = sub_100035D04(&qword_10033E910, &qword_100274B40);
  v4 = *(v3 - 8);
  v57 = v3;
  v58 = v4;
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v54 = &v47 - v6;
  v7 = sub_100035D04(&qword_10033D6F0, &unk_100273460);
  v8 = *(v7 - 8);
  v52 = v7;
  v53 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v51 = &v47 - v10;
  v11 = sub_100035D04(&qword_10033E918, &qword_100274B48);
  v12 = *(v11 - 8);
  v49 = v11;
  v50 = v12;
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v48 = &v47 - v14;
  v15 = sub_100035D04(&qword_10033E920, &qword_100274B50);
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = &v47 - v18;
  v59 = sub_100035D04(&qword_10033E928, &qword_10028C7C0);
  v62 = *(v59 - 8);
  v20 = *(v62 + 64);
  __chkstk_darwin(v59);
  v55 = &v47 - v21;
  v22 = sub_100035D04(&qword_10033E930, &qword_100274B58);
  v23 = *(v22 - 8);
  v60 = v22;
  v61 = v23;
  v24 = *(v23 + 64);
  __chkstk_darwin(v22);
  v56 = &v47 - v25;
  sub_100035D04(&qword_10034A390, &qword_100287650);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_100274B30;
  v27 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
  v64 = sub_1001EF03C();
  sub_100035D04(&unk_10034D910, &unk_100273390);
  v47 = &protocol conformance descriptor for AnyPublisher<A, B>;
  sub_10000E244(&unk_10034D920, &unk_10034D910, &unk_100273390);
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033E938, &qword_10033E920, &qword_100274B50);
  v28 = Publisher.eraseToAnyPublisher()();

  (*(v16 + 8))(v19, v15);
  *(v26 + 32) = v28;
  v29 = a1;
  v64 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__handoffTargetStatus);

  sub_100035D04(&qword_10033D410, &unk_100273068);
  sub_10000E244(&qword_10033E940, &qword_10033D410, &unk_100273068);
  v30 = v48;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033E948, &qword_10033E918, &qword_100274B48);
  v31 = v49;
  v32 = Publisher.eraseToAnyPublisher()();

  (*(v50 + 8))(v30, v31);
  *(v26 + 40) = v32;
  v33 = v29;
  v64 = sub_100070630();
  sub_100035D04(&qword_10033D6C8, &unk_1002733A0);
  sub_10000E244(&unk_10034D940, &qword_10033D6C8, &unk_1002733A0);
  v34 = v51;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033D710, &qword_10033D6F0, &unk_100273460);
  v35 = v52;
  v36 = Publisher.eraseToAnyPublisher()();

  (*(v53 + 8))(v34, v35);
  *(v26 + 48) = v36;
  v64 = sub_10007005C();
  sub_100035D04(&qword_10033E2E8, &qword_100274558);
  sub_10000E244(&qword_10033E2F8, &qword_10033E2E8, &qword_100274558);
  v37 = v54;
  Publisher.map<A>(_:)();
  sub_10000E244(&qword_10033E950, &qword_10033E910, &qword_100274B40);
  v38 = v57;
  v39 = Publisher.eraseToAnyPublisher()();

  (*(v58 + 8))(v37, v38);
  *(v26 + 56) = v39;
  v64 = *(v33 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_transferrableActivityPublisherKicker);
  sub_100035D04(&qword_10034C750, &unk_100287670);
  sub_10000E244(&unk_10034A3E0, &qword_10034C750, &unk_100287670);
  *(v26 + 64) = Publisher.eraseToAnyPublisher()();
  v64 = v26;
  sub_100035D04(&qword_10033D630, &unk_100274960);
  sub_100035D04(&qword_10033E958, &qword_100274B60);
  sub_10000E244(&qword_10034A3F0, &qword_10033D630, &unk_100274960);
  sub_10000E244(&qword_10033E960, &qword_10033E958, &qword_100274B60);
  v40 = v55;
  Publishers.MergeMany.init<A>(_:)();
  v41 = swift_allocObject();
  *(v41 + 16) = sub_1000A02C8;
  *(v41 + 24) = v33;

  sub_100035D04(&qword_10033E968, &qword_100274B68);
  sub_10000E244(&qword_10034A400, &qword_10033E928, &qword_10028C7C0);
  v42 = v56;
  v43 = v59;
  Publisher.map<A>(_:)();

  (*(v62 + 8))(v40, v43);
  sub_10000E244(&qword_10033E970, &qword_10033E930, &qword_100274B58);
  v44 = v60;
  v45 = Publisher.eraseToAnyPublisher()();
  result = (*(v61 + 8))(v42, v44);
  *v63 = v45;
  return result;
}

uint64_t sub_10009EDF8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10038B018);
  sub_100003078(v0, qword_10038B018);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_10009EE7C()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_10033E8F8);
  v1 = sub_100003078(v0, qword_10033E8F8);
  if (qword_100338EB0 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B018);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void *sub_10009EF44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  v7 = (a1 + 32);
  while (1)
  {
    if (!v6)
    {
      return 0;
    }

    if ((*v7 & 1) == 0)
    {
      break;
    }

    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v7;
    --v6;
    if (v8)
    {
      goto LABEL_8;
    }
  }

LABEL_8:
  v10 = *(a2 + 40);
  v11 = *(v10 + 24);

  CurrentValueSubject.value.getter();
  v9 = v25;
  if (v25 == 1)
  {
    v12 = *(v10 + 16);
    CurrentValueSubject.value.getter();

    v9 = v26;
    if (!v26)
    {
      return v9;
    }

LABEL_12:
    if ([v9 isVideo])
    {
      goto LABEL_27;
    }

    v13 = *(a4 + 40);
    v14 = *(v13 + 24);

    CurrentValueSubject.value.getter();
    v15 = v25;
    if (v25 == 1)
    {
      v16 = *(v13 + 16);
      CurrentValueSubject.value.getter();

      v15 = v26;
      if (!v26)
      {
        goto LABEL_18;
      }
    }

    else
    {
    }

    v17 = sub_100107F20(v15);

    if (v17)
    {
LABEL_23:

      return v9;
    }

LABEL_18:
    if (qword_100339180 != -1)
    {
      swift_once();
    }

    v18 = qword_10038B4E8;
    v19 = sub_1001CB464();
    if (v19)
    {
      v20 = v19;
      v21 = [*&v18[OBJC_IVAR____TtC17proximitycontrold14TelephonyProxy_callCenter] neighborhoodActivityConduit];
      v22 = [v21 activeSplitSessionTV];

      if (v22)
      {
        v23 = [v22 isEquivalentToDeviceHandle:v20];

        if (v23)
        {
          goto LABEL_23;
        }

        goto LABEL_26;
      }
    }

LABEL_26:
    if ([v9 hostedOnCurrentDevice])
    {
      return v9;
    }

LABEL_27:

    return 0;
  }

  if (v25)
  {
    goto LABEL_12;
  }

  return v9;
}

char *sub_10009F1DC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_localDeviceActivity);
  v4 = *(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity);
  v5 = qword_100338EB8;
  v86 = *(*(a1 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer) + 24);

  if (v5 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = sub_100003078(v6, qword_10033E8F8);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v82 = v7;
    v10 = swift_slowAlloc();
    v87[0] = swift_slowAlloc();
    *v10 = 136315906;
    *(v10 + 4) = sub_100017494(0xD00000000000002BLL, 0x800000010029A790, v87);
    *(v10 + 12) = 2080;
    v11 = sub_1000092A0();
    v13 = sub_100017494(v11, v12, v87);

    *(v10 + 14) = v13;
    *(v10 + 22) = 2080;
    v14 = sub_1001F129C();
    v16 = sub_100017494(v14, v15, v87);

    *(v10 + 24) = v16;
    *(v10 + 32) = 2080;
    v17 = sub_1001F129C();
    v19 = sub_100017494(v17, v18, v87);

    *(v10 + 34) = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "%s: %s, local=%s, remote=%s", v10, 0x2Au);
    swift_arrayDestroy();
  }

  if (v86 && *(*&v86[OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state] + 40) <= 1uLL)
  {

    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v88 = v23;
      *v22 = 136315138;
      v87[3] = type metadata accessor for HandoffTransfer();
      v87[0] = v86;

      v24 = sub_100057A5C(v87);
      v26 = v25;
      sub_10000903C(v87);
      v27 = sub_100017494(v24, v26, &v88);

      *(v22 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v20, v21, "Existing active transfer: %s", v22, 0xCu);
      sub_10000903C(v23);
    }

    goto LABEL_24;
  }

  v28 = *(a2 + 16);
  v29 = (a2 + 32);
  v30 = 1;
  while (1)
  {
    if (!v28)
    {
      goto LABEL_28;
    }

    if (*v29 == 1)
    {
      break;
    }

    v31 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v29;
    v28 = (v28 - 1);
    if (v31)
    {
      goto LABEL_15;
    }
  }

LABEL_15:
  v32 = *(v4 + 48);
  v33 = *(v32 + 24);

  CurrentValueSubject.value.getter();
  v28 = v88;
  if (v88 == 1)
  {
    v34 = *(v32 + 16);
    CurrentValueSubject.value.getter();

    v28 = v87[0];
    if (!v87[0])
    {
      goto LABEL_27;
    }
  }

  else
  {

    if (!v28)
    {
LABEL_27:
      v30 = 1;
      goto LABEL_28;
    }
  }

  v35 = [v28 direction];
  if (!v35)
  {
LABEL_26:

    v28 = 0;
    goto LABEL_27;
  }

  if (v35 != 1)
  {
    if (v35 == 2)
    {

      v30 = a1;
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v30 = 0;
LABEL_28:
  v37 = sub_10009EF44(a2, v3, a1, v4);
  v36 = v37;
  v85 = v38;
  v40 = v39;
  if (v39 == 1)
  {
    if (v30 == 1)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  v83 = v3;
  v53 = qword_100338F70;
  v54 = v37;

  if (v53 != -1)
  {
    swift_once();
  }

  v55 = qword_10038B100;
  v56 = *(qword_10038B100 + 32);

  v57 = sub_1000E9168(0xD000000000000017, 0x800000010029A770);

  if (v57)
  {
    goto LABEL_42;
  }

  v58 = [v54 bundleIdentifier];
  v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v61 = v60;

  v62 = *(v55 + 32);

  LOBYTE(v59) = sub_1000E9168(v59, v61);

  if (v59)
  {
LABEL_42:
    sub_100077374(v36, v85, v40);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&_mh_execute_header, v63, v64, "Active call app is local foreground! Returning call", v65, 2u);
    }

    goto LABEL_44;
  }

  v3 = v83;
  if (v30 != 1)
  {
LABEL_30:

    v41 = v28;
    v42 = [v41 bundleIdentifier];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    if (qword_100338F70 != -1)
    {
      swift_once();
    }

    v46 = *(qword_10038B100 + 32);

    v47 = sub_1000E9168(v43, v45);

    if (v47)
    {
      sub_100077374(v28, 0, v30);
      v20 = Logger.logObject.getter();
      v48 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v20, v48))
      {
        v49 = swift_slowAlloc();
        *v49 = 0;
        _os_log_impl(&_mh_execute_header, v20, v48, "Active media app is local foreground! Returning media", v49, 2u);
      }

      v50 = v36;
      v51 = v85;
      v52 = v40;
      goto LABEL_36;
    }
  }

LABEL_47:
  if (v40 != 1)
  {
    v63 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v63, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v63, v75, "Active call exists!", v76, 2u);
    }

LABEL_44:

    sub_100077374(v28, 0, v30);

    return v36;
  }

  v66 = *(v3 + 40);
  v67 = *(v66 + 24);

  CurrentValueSubject.value.getter();
  v68 = v88;
  if (v88 == 1)
  {
    v69 = *(v66 + 16);
    CurrentValueSubject.value.getter();

    v68 = v87[0];
    v70 = v85;
    if (v87[0])
    {
      goto LABEL_50;
    }

LABEL_56:
    v20 = Logger.logObject.getter();
    v77 = static os_log_type_t.default.getter();
    v78 = os_log_type_enabled(v20, v77);
    if (v30 != 1)
    {
      if (!v78)
      {

        return v28;
      }

      v81 = swift_slowAlloc();
      *v81 = 0;
      _os_log_impl(&_mh_execute_header, v20, v77, "Active media exists!", v81, 2u);

      v50 = v36;
      v51 = v70;
      v52 = 1;
LABEL_36:
      sub_100077374(v50, v51, v52);

      return v28;
    }

    if (!v78)
    {

      return 0;
    }

    v79 = swift_slowAlloc();
    *v79 = 0;
    _os_log_impl(&_mh_execute_header, v20, v77, "No transferrable content.", v79, 2u);

    sub_100077374(v36, v70, 1);
    v73 = v28;
    v74 = 1;
LABEL_59:
    sub_100077374(v73, 0, v74);

    return 0;
  }

  v70 = v85;
  if (!v68)
  {
    goto LABEL_56;
  }

LABEL_50:

  v20 = Logger.logObject.getter();
  v71 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v20, v71))
  {
    v72 = swift_slowAlloc();
    *v72 = 0;
    _os_log_impl(&_mh_execute_header, v20, v71, "Active call can't be transferred. Returning nil", v72, 2u);

    sub_100077374(v36, v70, 1);
    v73 = v28;
    v74 = v30;
    goto LABEL_59;
  }

  sub_100077374(v28, 0, v30);
LABEL_24:

  return 0;
}