void sub_100AF8E04(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v11 = v10;
      String.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 8 * v3);
        v19 = (v17 + 8 * v6);
        if (v3 != v6 || v18 >= v19 + 1)
        {
          *v18 = *v19;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

unint64_t sub_100AF9014(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = _HashTable.previousHole(before:)();
    v19 = v17;
    v42 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v46 = *(v20 + 56);
    v40 = (v20 - 8);
    v41 = v21;
    do
    {
      v22 = v46 * v16;
      v23 = v19;
      v24 = v20;
      v41(v13, *(a2 + 48) + v46 * v16, v8);
      v25 = *(a2 + 40);
      sub_10000768C(v43, v44);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          result = v30 + v46 * a1;
          v31 = v30 + v22 + v46;
          v32 = v46 * a1 < v22 || result >= v31;
          v20 = v24;
          if (!v32)
          {
            if (v46 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v33 = *(a2 + 56);
            v34 = (v33 + 8 * a1);
            v35 = (v33 + 8 * v16);
            if (a1 != v16 || v34 >= v35 + 1)
            {
              *v34 = *v35;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

char *sub_100AF92C8(int64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for UUID();
  v4 = *(v40 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v40);
  v39 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = _HashTable.previousHole(before:)();
    v13 = v11;
    v15 = *(v4 + 16);
    v14 = v4 + 16;
    v37 = (v12 + 1) & v11;
    v38 = v15;
    v16 = *(v14 + 56);
    v35 = (v14 - 8);
    v36 = a2 + 64;
    v41 = v13;
    v17 = v40;
    do
    {
      v18 = v16;
      v19 = v16 * v10;
      v20 = *(a2 + 48) + v16 * v10;
      v21 = v39;
      v22 = v14;
      v38(v39, v20, v17);
      v23 = *(a2 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v35)(v21, v17);
      v25 = v41;
      v26 = v24 & v41;
      if (a1 >= v37)
      {
        if (v26 >= v37 && a1 >= v26)
        {
LABEL_15:
          v14 = v22;
          v16 = v18;
          if (v18 * a1 < v19 || *(a2 + 48) + v18 * a1 >= (*(a2 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
            v25 = v41;
            v8 = v36;
          }

          else
          {
            v8 = v36;
            if (v18 * a1 != v19)
            {
              swift_arrayInitWithTakeBackToFront();
              v25 = v41;
            }
          }

          v29 = *(a2 + 56);
          result = (v29 + 72 * a1);
          v30 = (v29 + 72 * v10);
          if (a1 != v10 || result >= v30 + 72)
          {
            result = memmove(result, v30, 0x48uLL);
            v25 = v41;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v37 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v14 = v22;
      v8 = v36;
      v16 = v18;
LABEL_4:
      v10 = (v10 + 1) & v25;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v31 = *(a2 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v33;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AF95EC(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 24 * v6);
      v11 = *v10;
      v12 = *(v10 + 1);
      v13 = *(v10 + 2);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v11);

      String.hash(into:)();
      v14 = Hasher._finalize()();

      v15 = v14 & v7;
      if (v3 >= v8)
      {
        if (v15 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v15 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v15)
      {
LABEL_10:
        v16 = *(a2 + 48);
        v17 = v16 + 24 * v3;
        v18 = (v16 + 24 * v6);
        if (v3 != v6 || v17 >= v18 + 24)
        {
          v19 = *v18;
          *(v17 + 16) = *(v18 + 2);
          *v17 = v19;
        }

        v20 = *(a2 + 56);
        v21 = (v20 + 16 * v3);
        v22 = (v20 + 16 * v6);
        if (v3 != v6 || v21 >= v22 + 1)
        {
          *v21 = *v22;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(a2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v25;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AF97C0(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for UUID();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

Swift::Int sub_100AF9AE0(Swift::Int result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v11 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v11)
      {
LABEL_10:
        v12 = *(a2 + 48);
        v13 = (v12 + 8 * v3);
        v14 = (v12 + 8 * v6);
        if (v3 != v6 || v13 >= v14 + 1)
        {
          *v13 = *v14;
        }

        v15 = *(a2 + 56);
        v16 = (v15 + 8 * v3);
        v17 = (v15 + 8 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v18 = *(a2 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v20;
    ++*(a2 + 36);
  }

  return result;
}

void sub_100AF9CCC(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = a1;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (a1 + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    do
    {
      v11 = *(a2 + 40);
      v12 = *(*(a2 + 48) + 8 * v7);
      v13 = NSObject._rawHashValue(seed:)(v11);

      v14 = v13 & v9;
      if (v4 >= v10)
      {
        if (v14 < v10 || v4 < v14)
        {
          goto LABEL_5;
        }
      }

      else if (v14 < v10 && v4 < v14)
      {
        goto LABEL_5;
      }

      v17 = *(a2 + 48);
      v18 = (v17 + 8 * v4);
      v19 = (v17 + 8 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      v23 = v20 + v21 * v4;
      v24 = v21 * v7;
      v25 = v20 + v21 * v7 + v21;
      if (v22 < v24 || v23 >= v25)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v24)
        {
          goto LABEL_5;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }
}

unint64_t sub_100AF9EDC(int64_t a1, uint64_t a2)
{
  v45 = type metadata accessor for UUID();
  v4 = *(v45 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v45);
  v44 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v46 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v45;
    v7 = v46;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v42 = (v13 + 1) & v12;
    v43 = v17;
    v18 = *(v16 + 56);
    v40 = (v16 - 8);
    v41 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v44;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v43(v44, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v7 = v46;
          v30 = *(v46 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v46;
            v18 = v19;
            v15 = v22;
            v9 = v41;
          }

          else
          {
            v9 = v41;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v46;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 40 * a1;
          v33 = (v31 + 40 * v11);
          if (a1 != v11 || v32 >= v33 + 40)
          {
            v34 = *v33;
            v35 = v33[1];
            *(v32 + 32) = *(v33 + 4);
            *v32 = v34;
            *(v32 + 16) = v35;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v41;
      v18 = v19;
      v7 = v46;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(v7 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v38;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_100AFA200(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for MACAddress();
  v4 = *(v43 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v43);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v41 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v39 = a2 + 64;
    v40 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v40(v42, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_10000768C(&unk_1016BC080, &type metadata accessor for MACAddress);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v44;
          v30 = *(v44 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = (v31 + 16 * a1);
          v33 = (v31 + 16 * v11);
          if (a1 != v11 || v32 >= v33 + 1)
          {
            *v32 = *v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v27 >= v41 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

uint64_t sub_100AFA520(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = *(a2 + 48);
      v11 = (v10 + 8 * v6);
      v12 = *v11;
      result = static Hasher._hash(seed:_:)();
      v13 = result & v7;
      if (v3 >= v8)
      {
        if (v13 >= v8 && v3 >= v13)
        {
LABEL_15:
          v16 = (v10 + 8 * v3);
          if (v3 != v6 || v16 >= v11 + 1)
          {
            *v16 = *v11;
          }

          v17 = *(a2 + 56);
          v18 = (v17 + 16 * v3);
          v19 = (v17 + 16 * v6);
          if (v3 != v6 || v18 >= v19 + 1)
          {
            *v18 = *v19;
            v3 = v6;
          }
        }
      }

      else if (v13 >= v8 || v3 >= v13)
      {
        goto LABEL_15;
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t sub_100AFA690(uint64_t result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(a2 + 40);
      v10 = (*(a2 + 48) + 16 * v6);
      v11 = *v10;
      v12 = v10[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v13 = Hasher._finalize()();

      v14 = v13 & v7;
      if (v3 >= v8)
      {
        if (v14 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v14 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v14)
      {
LABEL_10:
        v15 = *(a2 + 48);
        v16 = (v15 + 16 * v3);
        v17 = (v15 + 16 * v6);
        if (v3 != v6 || v16 >= v17 + 1)
        {
          *v16 = *v17;
        }

        v18 = *(a2 + 56);
        v19 = (v18 + 8 * v3);
        v20 = (v18 + 8 * v6);
        if (v3 != v6 || v19 >= v20 + 1)
        {
          *v19 = *v20;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v21 = *(a2 + 16);
  v22 = __OFSUB__(v21, 1);
  v23 = v21 - 1;
  if (v22)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v23;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFA840(int64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_10169A060, &unk_10139DB00);
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - v8;
  v10 = a2 + 64;
  v11 = -1 << *(a2 + 32);
  v12 = (a1 + 1) & ~v11;
  if ((*(a2 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v43 = a2;
    v13 = ~v11;
    v14 = _HashTable.previousHole(before:)();
    v15 = v13;
    a2 = v43;
    v42 = (v14 + 1) & v15;
    v17 = *(v5 + 16);
    v16 = v5 + 16;
    v40 = v10;
    v41 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v12;
      v21 = v15;
      v22 = v16;
      v41(v9, *(a2 + 48) + v18 * v12, v4);
      v23 = *(a2 + 40);
      sub_1000041A4(&unk_1016C3020, &qword_10169A060, &unk_10139DB00);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v9, v4);
      v15 = v21;
      v25 = v24 & v21;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v16 = v22;
          if (v19 * a1 < v20 || *(v43 + 48) + v19 * a1 >= (*(v43 + 48) + v20 + v19))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v19 * a1 != v20)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(type metadata accessor for BeaconScanner.AISLookupState(0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v12;
          v32 = v28 + v29 * v12 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v12;
            v10 = v40;
            v15 = v21;
          }

          else
          {
            a1 = v12;
            v34 = v30 == v31;
            v10 = v40;
            v15 = v21;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v15 = v21;
              a1 = v12;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v22;
      v10 = v40;
      a2 = v43;
LABEL_4:
      v12 = (v12 + 1) & v15;
      v18 = v19;
    }

    while (((*(v10 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFAB9C(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v40 = a3;
  v41 = a4;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  result = __chkstk_darwin(v6);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a2 + 64;
  v13 = -1 << *(a2 + 32);
  v14 = (a1 + 1) & ~v13;
  if ((*(a2 + 64 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    v16 = _HashTable.previousHole(before:)();
    v17 = v15;
    v45 = (v16 + 1) & v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v43 = a2 + 64;
    v44 = v19;
    v20 = *(v18 + 56);
    v42 = (v18 - 8);
    v46 = v20;
    do
    {
      v21 = v20 * v14;
      v22 = v17;
      v23 = v18;
      v44(v11, *(a2 + 48) + v20 * v14, v6);
      v24 = *(a2 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v42)(v11, v6);
      v17 = v22;
      v26 = v25 & v22;
      if (a1 >= v45)
      {
        if (v26 >= v45 && a1 >= v26)
        {
LABEL_15:
          v18 = v23;
          if (v46 * a1 < v21 || *(a2 + 48) + v46 * a1 >= (*(a2 + 48) + v21 + v46))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v46 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v29 = *(a2 + 56);
          v30 = *(*(sub_1000BC4D4(v40, v41) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v14;
          v33 = v29 + v30 * v14 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v14;
            v12 = v43;
            v17 = v22;
          }

          else
          {
            a1 = v14;
            v35 = v31 == v32;
            v12 = v43;
            v17 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v17 = v22;
              a1 = v14;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v45 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v18 = v23;
      v12 = v43;
LABEL_4:
      v14 = (v14 + 1) & v17;
      v20 = v46;
    }

    while (((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) != 0);
  }

  *(v12 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFAF10(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v39 = a3;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  result = __chkstk_darwin(v5);
  v10 = &v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v44 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v44;
    v43 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v41 = v11;
    v42 = v18;
    v19 = *(v17 + 56);
    v40 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v42(v10, *(a2 + 48) + v19 * v13, v5);
      v24 = *(a2 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v10, v5);
      v16 = v22;
      v26 = v25 & v22;
      if (a1 >= v43)
      {
        if (v26 >= v43 && a1 >= v26)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v44 + 48) + v20 * a1 >= (*(v44 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v44;
          v29 = *(v44 + 56);
          v30 = *(*(v39(0) - 8) + 72);
          v31 = v30 * a1;
          result = v29 + v30 * a1;
          v32 = v30 * v13;
          v33 = v29 + v30 * v13 + v30;
          if (v31 < v32 || result >= v33)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v41;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v35 = v31 == v32;
            v11 = v41;
            v16 = v22;
            if (!v35)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v26 >= v43 || a1 >= v26)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v41;
      a2 = v44;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFB260(int64_t a1, uint64_t a2)
{
  v31 = type metadata accessor for ShareAttemptTracker.AttemptKey(0);
  v4 = *(v31 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v31);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v29 = v12;
    v30 = (v13 + 1) & v12;
    v14 = *(v4 + 72);
    do
    {
      v15 = v14 * v11;
      sub_100022A54(*(a2 + 48) + v14 * v11, v8, type metadata accessor for ShareAttemptTracker.AttemptKey);
      v16 = *(a2 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(dword_1013D6F30[*v8]);
      v17 = *(v31 + 20);
      type metadata accessor for UUID();
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v18 = Hasher._finalize()();
      result = sub_100022C40(v8, type metadata accessor for ShareAttemptTracker.AttemptKey);
      v19 = v18 & v12;
      if (a1 >= v30)
      {
        if (v19 >= v30 && a1 >= v19)
        {
LABEL_11:
          if (v14 * a1 < v15 || *(a2 + 48) + v14 * a1 >= (*(a2 + 48) + v15 + v14))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v14 * a1 != v15)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v20 = *(a2 + 56);
          v21 = *(*(type metadata accessor for Date() - 8) + 72);
          v22 = v21 * a1;
          result = v20 + v21 * a1;
          v23 = v21 * v11;
          v24 = v20 + v21 * v11 + v21;
          if (v22 < v23 || result >= v24)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v12 = v29;
          }

          else
          {
            a1 = v11;
            v12 = v29;
            if (v22 != v23)
            {
              result = swift_arrayInitWithTakeBackToFront();
              a1 = v11;
            }
          }
        }
      }

      else if (v19 >= v30 || a1 >= v19)
      {
        goto LABEL_11;
      }

      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v26 = *(a2 + 16);
  v27 = __OFSUB__(v26, 1);
  v28 = v26 - 1;
  if (v27)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v28;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFB5AC(int64_t a1, uint64_t a2)
{
  v30 = type metadata accessor for BeaconKeyManager.FileKey(0);
  v4 = *(v30 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v30);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v13 = (_HashTable.previousHole(before:)() + 1) & ~v10;
    v14 = *(v4 + 72);
    v29 = a2 + 64;
    do
    {
      v15 = v14;
      v16 = v14 * v11;
      sub_100022A54(*(a2 + 48) + v14 * v11, v8, type metadata accessor for BeaconKeyManager.FileKey);
      v17 = *(a2 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v8[*(v30 + 20)];
      v8[*(v30 + 20)];
      String.hash(into:)();

      v18 = Hasher._finalize()();
      result = sub_100022C40(v8, type metadata accessor for BeaconKeyManager.FileKey);
      v19 = v18 & v12;
      if (a1 >= v13)
      {
        if (v19 < v13)
        {
          v9 = v29;
          v14 = v15;
          goto LABEL_4;
        }

        v14 = v15;
        if (a1 >= v19)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v14 = v15;
        if (v19 >= v13 || a1 >= v19)
        {
LABEL_11:
          v20 = *(a2 + 48);
          result = v20 + v14 * a1;
          if (v14 * a1 < v16 || result >= v20 + v16 + v14)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v9 = v29;
          }

          else
          {
            v21 = v14 * a1 == v16;
            v9 = v29;
            if (!v21)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v22 = *(a2 + 56);
          v23 = (v22 + 8 * a1);
          v24 = (v22 + 8 * v11);
          if (a1 != v11 || v23 >= v24 + 1)
          {
            *v23 = *v24;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      v9 = v29;
LABEL_4:
      v11 = (v11 + 1) & v12;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v25 = *(a2 + 16);
  v26 = __OFSUB__(v25, 1);
  v27 = v25 - 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v27;
    ++*(a2 + 36);
  }

  return result;
}

unint64_t sub_100AFB914(int64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, void (*a5)(uint64_t), uint64_t a6)
{
  v44 = a5;
  v45 = a6;
  v43 = a4;
  v8 = a3(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  result = __chkstk_darwin(v8);
  v13 = &v39 - v12;
  v14 = a2 + 64;
  v15 = -1 << *(a2 + 32);
  v16 = (a1 + 1) & ~v15;
  if ((*(a2 + 64 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16))
  {
    v17 = ~v15;
    v18 = _HashTable.previousHole(before:)();
    v19 = v17;
    v42 = (v18 + 1) & v17;
    v21 = *(v9 + 16);
    v20 = v9 + 16;
    v46 = *(v20 + 56);
    v40 = (v20 - 8);
    v41 = v21;
    do
    {
      v22 = v46 * v16;
      v23 = v19;
      v24 = v20;
      v41(v13, *(a2 + 48) + v46 * v16, v8);
      v25 = *(a2 + 40);
      sub_10000768C(v43, v44);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v40)(v13, v8);
      v19 = v23;
      v27 = v26 & v23;
      if (a1 >= v42)
      {
        if (v27 >= v42 && a1 >= v27)
        {
LABEL_15:
          v30 = *(a2 + 48);
          result = v30 + v46 * a1;
          v31 = v30 + v22 + v46;
          v32 = v46 * a1 < v22 || result >= v31;
          v20 = v24;
          if (!v32)
          {
            if (v46 * a1 != v22)
            {
              result = swift_arrayInitWithTakeBackToFront();
LABEL_23:
              v19 = v23;
            }

            v33 = *(a2 + 56);
            v34 = (v33 + 8 * a1);
            v35 = (v33 + 8 * v16);
            if (a1 != v16 || v34 >= v35 + 1)
            {
              *v34 = *v35;
              a1 = v16;
            }

            goto LABEL_4;
          }

          result = swift_arrayInitWithTakeFrontToBack();
          goto LABEL_23;
        }
      }

      else if (v27 >= v42 || a1 >= v27)
      {
        goto LABEL_15;
      }

      v20 = v24;
LABEL_4:
      v16 = (v16 + 1) & v19;
    }

    while (((*(v14 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) != 0);
  }

  *(v14 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v36 = *(a2 + 16);
  v37 = __OFSUB__(v36, 1);
  v38 = v36 - 1;
  if (v37)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v38;
    ++*(a2 + 36);
  }

  return result;
}

Swift::Int sub_100AFBBC8(uint64_t *a1)
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
        type metadata accessor for BeaconEstimatedLocation();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for BeaconEstimatedLocation() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100AFC884(v8, v9, a1, v4);
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
    return sub_100AFBF5C(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100AFBCF4(uint64_t *a1)
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
        type metadata accessor for OwnedBeaconRecord();
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v6[2] = v5;
      }

      v7 = *(type metadata accessor for OwnedBeaconRecord() - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_100AFD8FC(v8, v9, a1, v4);
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
    return sub_100AFC3A8(0, v2, 1, a1);
  }

  return result;
}

Swift::Int sub_100AFBE20(uint64_t (*a1)(char *, char *), uint64_t a2)
{
  v5 = v2[1];
  result = _minimumMergeRunLength(_:)(v5);
  if (result < v5)
  {
    if (v5 >= -1)
    {
      v7 = result;
      v8 = v5 / 2;
      if (v5 < 2)
      {
        v9 = _swiftEmptyArrayStorage;
      }

      else
      {
        type metadata accessor for BeaconStatus(0);
        v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        v9[2] = v8;
      }

      v10 = *(type metadata accessor for BeaconStatus(0) - 8);
      v11[0] = v9 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
      v11[1] = v8;
      sub_100AFE260(v11, v12, v2, a1, a2, v7);
      v9[2] = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v5 < 0)
  {
    goto LABEL_12;
  }

  if (v5)
  {
    return sub_100AFC60C(0, v5, 1, a1);
  }

  return result;
}

uint64_t sub_100AFBF5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v59 = sub_1000BC4D4(&qword_1016B5598, &unk_1013D6AA0);
  v8 = *(*(v59 - 8) + 64);
  v9 = __chkstk_darwin(v59);
  v58 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v47 - v11;
  v61 = type metadata accessor for BeaconEstimatedLocation();
  v13 = *(*(v61 - 8) + 64);
  v14 = __chkstk_darwin(v61);
  v56 = &v47 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v67 = &v47 - v17;
  result = __chkstk_darwin(v16);
  v66 = &v47 - v20;
  v49 = a2;
  if (a3 != a2)
  {
    v21 = *a4;
    v22 = *(v19 + 72);
    v23 = *a4 + v22 * (a3 - 1);
    v54 = -v22;
    v55 = v21;
    v24 = a1 - a3;
    v48 = v22;
    v25 = v21 + v22 * a3;
    v57 = v12;
LABEL_5:
    v52 = v23;
    v53 = a3;
    v50 = v25;
    v51 = v24;
    v26 = v24;
    while (1)
    {
      v64 = v26;
      v65 = v25;
      v27 = v25;
      v28 = v66;
      sub_100022A54(v27, v66, type metadata accessor for BeaconEstimatedLocation);
      v63 = v23;
      v29 = v23;
      v30 = v67;
      sub_100022A54(v29, v67, type metadata accessor for BeaconEstimatedLocation);
      v31 = *(v61 + 44);
      v62 = *(v61 + 40);
      v32 = *(v28 + v31);
      v33 = *(v30 + v31);
      *v12 = v32;
      v34 = v59;
      v35 = *(v59 + 48);
      v36 = type metadata accessor for Date();
      v37 = *(*(v36 - 8) + 16);
      v60 = v35;
      v38 = &v12[v35];
      v39 = v62;
      v37(v38, v28 + v62, v36);
      v40 = v58;
      *v58 = v33;
      v37((v40 + *(v34 + 48)), v30 + v39, v36);
      if (v32 == v33)
      {
        sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
        v12 = v57;
        v41 = dispatch thunk of static Comparable.> infix(_:_:)();
        sub_10000B3A8(v40, &qword_1016B5598, &unk_1013D6AA0);
        sub_10000B3A8(v12, &qword_1016B5598, &unk_1013D6AA0);
      }

      else
      {
        v12 = v57;
        sub_10000B3A8(v57, &qword_1016B5598, &unk_1013D6AA0);
        sub_10000B3A8(v40, &qword_1016B5598, &unk_1013D6AA0);
        v41 = v33 < v32;
      }

      sub_100022C40(v67, type metadata accessor for BeaconEstimatedLocation);
      result = sub_100022C40(v66, type metadata accessor for BeaconEstimatedLocation);
      v43 = v64;
      v42 = v65;
      v44 = v63;
      if ((v41 & 1) == 0)
      {
LABEL_4:
        a3 = v53 + 1;
        v23 = v52 + v48;
        v24 = v51 - 1;
        v25 = v50 + v48;
        if (v53 + 1 == v49)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v55)
      {
        break;
      }

      v45 = v56;
      sub_10002911C(v65, v56, type metadata accessor for BeaconEstimatedLocation);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002911C(v45, v44, type metadata accessor for BeaconEstimatedLocation);
      v23 = v44 + v54;
      v25 = v42 + v54;
      v46 = __CFADD__(v43, 1);
      v26 = v43 + 1;
      if (v46)
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100AFC3A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = type metadata accessor for OwnedBeaconRecord();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v37 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v29 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v29 - v17;
  v31 = a2;
  if (a3 != a2)
  {
    v19 = *a4;
    v20 = *(v16 + 72);
    v21 = *a4 + v20 * (a3 - 1);
    v22 = -v20;
    v23 = a1 - a3;
    v36 = v19;
    v30 = v20;
    v24 = v19 + v20 * a3;
LABEL_5:
    v34 = v21;
    v35 = a3;
    v32 = v24;
    v33 = v23;
    while (1)
    {
      sub_100022A54(v24, v18, type metadata accessor for OwnedBeaconRecord);
      sub_100022A54(v21, v14, type metadata accessor for OwnedBeaconRecord);
      v25 = *(v8 + 32);
      v26 = static Date.< infix(_:_:)();
      sub_100022C40(v14, type metadata accessor for OwnedBeaconRecord);
      result = sub_100022C40(v18, type metadata accessor for OwnedBeaconRecord);
      if ((v26 & 1) == 0)
      {
LABEL_4:
        a3 = v35 + 1;
        v21 = v34 + v30;
        v23 = v33 - 1;
        v24 = v32 + v30;
        if (v35 + 1 == v31)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v36)
      {
        break;
      }

      v27 = v37;
      sub_10002911C(v24, v37, type metadata accessor for OwnedBeaconRecord);
      swift_arrayInitWithTakeFrontToBack();
      result = sub_10002911C(v27, v21, type metadata accessor for OwnedBeaconRecord);
      v21 += v22;
      v24 += v22;
      if (__CFADD__(v23++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100AFC60C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *, char *))
{
  v38 = a4;
  v37 = type metadata accessor for BeaconStatus(0);
  v9 = *(*(v37 - 8) + 64);
  v10 = __chkstk_darwin(v37);
  v36 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __chkstk_darwin(v10);
  v14 = &v28 - v13;
  result = __chkstk_darwin(v12);
  v18 = &v28 - v17;
  v29 = a2;
  if (a3 != a2)
  {
    v19 = *v4;
    v20 = *(v16 + 72);
    v21 = *v4 + v20 * (a3 - 1);
    v34 = -v20;
    v35 = v19;
    v22 = a1 - a3;
    v28 = v20;
    v23 = v19 + v20 * a3;
LABEL_4:
    v32 = v21;
    v33 = a3;
    v30 = v23;
    v31 = v22;
    v24 = v21;
    while (1)
    {
      sub_100022A54(v23, v18, type metadata accessor for BeaconStatus);
      sub_100022A54(v24, v14, type metadata accessor for BeaconStatus);
      v25 = v38(v18, v14);
      sub_100022C40(v14, type metadata accessor for BeaconStatus);
      result = sub_100022C40(v18, type metadata accessor for BeaconStatus);
      if (v5)
      {
        break;
      }

      if (v25)
      {
        if (!v35)
        {
          __break(1u);
          return result;
        }

        v26 = v36;
        sub_10002911C(v23, v36, type metadata accessor for BeaconStatus);
        swift_arrayInitWithTakeFrontToBack();
        result = sub_10002911C(v26, v24, type metadata accessor for BeaconStatus);
        v24 += v34;
        v23 += v34;
        if (!__CFADD__(v22++, 1))
        {
          continue;
        }
      }

      a3 = v33 + 1;
      v21 = v32 + v28;
      v22 = v31 - 1;
      v23 = v30 + v28;
      if (v33 + 1 != v29)
      {
        goto LABEL_4;
      }

      return result;
    }
  }

  return result;
}

uint64_t sub_100AFC884(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v179 = a4;
  v178 = a1;
  v200 = sub_1000BC4D4(&qword_1016B5598, &unk_1013D6AA0);
  v7 = *(*(v200 - 8) + 64);
  v8 = __chkstk_darwin(v200);
  v198 = &v172 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __chkstk_darwin(v8);
  v12 = &v172 - v11;
  v13 = __chkstk_darwin(v10);
  v15 = &v172 - v14;
  v16 = __chkstk_darwin(v13);
  v188 = &v172 - v17;
  v18 = __chkstk_darwin(v16);
  v173 = &v172 - v19;
  __chkstk_darwin(v18);
  v177 = &v172 - v20;
  v201 = type metadata accessor for BeaconEstimatedLocation();
  v21 = *(v201 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v201);
  v181 = &v172 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v23);
  v197 = &v172 - v26;
  v27 = __chkstk_darwin(v25);
  v208 = &v172 - v28;
  v29 = __chkstk_darwin(v27);
  v207 = &v172 - v30;
  v31 = __chkstk_darwin(v29);
  v194 = &v172 - v32;
  v33 = __chkstk_darwin(v31);
  v193 = &v172 - v34;
  v35 = __chkstk_darwin(v33);
  v176 = &v172 - v36;
  result = __chkstk_darwin(v35);
  v175 = &v172 - v38;
  v39 = a3[1];
  v182 = a3;
  if (v39 < 1)
  {
    v41 = _swiftEmptyArrayStorage;
LABEL_109:
    v42 = *v178;
    if (!*v178)
    {
      goto LABEL_147;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_141:
      result = sub_100B31E68(v41);
      v41 = result;
    }

    v209 = v41;
    v168 = *(v41 + 2);
    if (v168 >= 2)
    {
      while (*v182)
      {
        v169 = *&v41[16 * v168];
        v170 = *&v41[16 * v168 + 24];
        sub_100AFED58(*v182 + *(v21 + 72) * v169, *v182 + *(v21 + 72) * *&v41[16 * v168 + 16], *v182 + *(v21 + 72) * v170, v42);
        if (v5)
        {
        }

        if (v170 < v169)
        {
          goto LABEL_134;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100B31E68(v41);
        }

        if (v168 - 2 >= *(v41 + 2))
        {
          goto LABEL_135;
        }

        v171 = &v41[16 * v168];
        *v171 = v169;
        *(v171 + 1) = v170;
        v209 = v41;
        result = sub_100B31DDC(v168 - 1);
        v41 = v209;
        v168 = *(v209 + 2);
        if (v168 <= 1)
        {
        }
      }

      goto LABEL_145;
    }
  }

  v183 = v15;
  v40 = 0;
  v41 = _swiftEmptyArrayStorage;
  v191 = v21;
  v199 = v12;
  while (1)
  {
    v43 = v40 + 1;
    v190 = v41;
    v180 = v40;
    if (v40 + 1 >= v39)
    {
      v65 = v179;
      v42 = v182;
    }

    else
    {
      v44 = v40;
      v187 = v39;
      v174 = v5;
      v45 = *v182;
      v46 = *(v21 + 72);
      v192 = v40 + 1;
      v47 = v175;
      sub_100022A54(v45 + v46 * v43, v175, type metadata accessor for BeaconEstimatedLocation);
      v195 = v46;
      v206 = v45;
      v48 = v176;
      sub_100022A54(v45 + v46 * v44, v176, type metadata accessor for BeaconEstimatedLocation);
      v49 = v200;
      v50 = *(v201 + 44);
      v203 = *(v201 + 40);
      LODWORD(v205) = *(v47 + v50);
      LODWORD(v204) = *(v48 + v50);
      v51 = v177;
      *v177 = v205;
      v52 = *(v49 + 48);
      v202 = v52;
      v53 = type metadata accessor for Date();
      v54 = *(v53 - 8);
      v55 = *(v54 + 16);
      v56 = v54 + 16;
      v57 = &v51[v52];
      v58 = v203;
      v55(v57, v47 + v203, v53);
      v59 = v173;
      v60 = v204;
      *v173 = v204;
      v61 = v59 + *(v49 + 48);
      v62 = v60;
      v185 = v55;
      v184 = v56;
      v55(v61, v48 + v58, v53);
      v63 = v205;
      v186 = v53;
      if (v205 == v62)
      {
        sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
        v64 = v177;
        LODWORD(v189) = dispatch thunk of static Comparable.> infix(_:_:)();
        sub_10000B3A8(v59, &qword_1016B5598, &unk_1013D6AA0);
        sub_10000B3A8(v64, &qword_1016B5598, &unk_1013D6AA0);
      }

      else
      {
        sub_10000B3A8(v177, &qword_1016B5598, &unk_1013D6AA0);
        sub_10000B3A8(v59, &qword_1016B5598, &unk_1013D6AA0);
        LODWORD(v189) = v62 < v63;
      }

      v21 = v188;
      sub_100022C40(v176, type metadata accessor for BeaconEstimatedLocation);
      sub_100022C40(v175, type metadata accessor for BeaconEstimatedLocation);
      v66 = v180 + 2;
      v67 = v195 * (v180 + 2);
      result = v206 + v67;
      v68 = v192;
      v69 = v195 * v192;
      v42 = v206 + v195 * v192;
      do
      {
        v72 = v66;
        v73 = v68;
        v206 = v69;
        v74 = v67;
        if (v66 >= v187)
        {
          break;
        }

        v203 = v68;
        v204 = v67;
        v205 = v66;
        v202 = result;
        v75 = v193;
        sub_100022A54(result, v193, type metadata accessor for BeaconEstimatedLocation);
        v196 = v42;
        v76 = v194;
        sub_100022A54(v42, v194, type metadata accessor for BeaconEstimatedLocation);
        v77 = v200;
        v79 = *(v201 + 40);
        v78 = *(v201 + 44);
        v80 = *(v75 + v78);
        v81 = *(v76 + v78);
        *v21 = v80;
        v192 = *(v77 + 48);
        v82 = v75 + v79;
        v83 = v186;
        v84 = v185;
        v185(v21 + v192, v82, v186);
        v85 = v183;
        *v183 = v81;
        v84(v85 + *(v77 + 48), v76 + v79, v83);
        if (v80 == v81)
        {
          sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
          v70 = v188;
          v71 = dispatch thunk of static Comparable.> infix(_:_:)();
          sub_10000B3A8(v85, &qword_1016B5598, &unk_1013D6AA0);
          sub_10000B3A8(v70, &qword_1016B5598, &unk_1013D6AA0);
        }

        else
        {
          v70 = v188;
          sub_10000B3A8(v188, &qword_1016B5598, &unk_1013D6AA0);
          sub_10000B3A8(v85, &qword_1016B5598, &unk_1013D6AA0);
          v71 = v81 < v80;
        }

        v41 = v190;
        v21 = v70;
        sub_100022C40(v194, type metadata accessor for BeaconEstimatedLocation);
        sub_100022C40(v193, type metadata accessor for BeaconEstimatedLocation);
        v72 = v205;
        v66 = v205 + 1;
        v73 = v203;
        result = v202 + v195;
        v42 = v196 + v195;
        v68 = v203 + 1;
        v69 = v206 + v195;
        v74 = v204;
        v67 = v204 + v195;
      }

      while ((v189 & 1) == (v71 & 1));
      if (v189)
      {
        v5 = v174;
        v65 = v179;
        if (v72 < v180)
        {
          goto LABEL_138;
        }

        if (v180 >= v72)
        {
          v43 = v72;
        }

        else
        {
          v86 = v180 * v195;
          v87 = v180;
          v88 = v206;
          do
          {
            if (v87 != v73)
            {
              v90 = *v182;
              if (!*v182)
              {
                goto LABEL_144;
              }

              v91 = v74;
              sub_10002911C(v90 + v86, v181, type metadata accessor for BeaconEstimatedLocation);
              if (v86 < v88 || v90 + v86 >= (v90 + v91))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v86 != v88)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002911C(v181, v90 + v88, type metadata accessor for BeaconEstimatedLocation);
              v65 = v179;
              v74 = v91;
            }

            ++v87;
            v88 -= v195;
            v74 -= v195;
            v86 += v195;
          }

          while (v87 < v73--);
          v43 = v72;
          v5 = v174;
        }

        v42 = v182;
        v21 = v191;
      }

      else
      {
        v43 = v72;
        v5 = v174;
        v42 = v182;
        v21 = v191;
        v65 = v179;
      }

      v12 = v199;
    }

    v92 = *(v42 + 8);
    if (v43 >= v92)
    {
      goto LABEL_55;
    }

    if (__OFSUB__(v43, v180))
    {
      goto LABEL_137;
    }

    if (v43 - v180 >= v65)
    {
LABEL_55:
      v94 = v180;
      goto LABEL_56;
    }

    if (__OFADD__(v180, v65))
    {
      goto LABEL_139;
    }

    if (v180 + v65 >= v92)
    {
      v93 = *(v42 + 8);
    }

    else
    {
      v93 = (v180 + v65);
    }

    if (v93 < v180)
    {
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v94 = v180;
    if (v43 != v93)
    {
      break;
    }

LABEL_56:
    if (v43 < v94)
    {
      goto LABEL_136;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    v192 = v43;
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v41 + 2) + 1, 1, v41);
      v41 = result;
    }

    v122 = *(v41 + 2);
    v121 = *(v41 + 3);
    v123 = v122 + 1;
    if (v122 >= v121 >> 1)
    {
      result = sub_100A5B430((v121 > 1), v122 + 1, 1, v41);
      v41 = result;
    }

    *(v41 + 2) = v123;
    v124 = &v41[16 * v122];
    v125 = v192;
    *(v124 + 4) = v180;
    *(v124 + 5) = v125;
    if (!*v178)
    {
      goto LABEL_146;
    }

    v21 = v5;
    if (v122)
    {
      v126 = *v178;
      v42 = v182;
      while (1)
      {
        v5 = v123 - 1;
        if (v123 >= 4)
        {
          break;
        }

        if (v123 == 3)
        {
          v127 = *(v41 + 4);
          v128 = *(v41 + 5);
          v137 = __OFSUB__(v128, v127);
          v129 = v128 - v127;
          v130 = v137;
LABEL_77:
          if (v130)
          {
            goto LABEL_125;
          }

          v143 = &v41[16 * v123];
          v145 = *v143;
          v144 = *(v143 + 1);
          v146 = __OFSUB__(v144, v145);
          v147 = v144 - v145;
          v148 = v146;
          if (v146)
          {
            goto LABEL_128;
          }

          v149 = &v41[16 * v5 + 32];
          v151 = *v149;
          v150 = *(v149 + 1);
          v137 = __OFSUB__(v150, v151);
          v152 = v150 - v151;
          if (v137)
          {
            goto LABEL_131;
          }

          if (__OFADD__(v147, v152))
          {
            goto LABEL_132;
          }

          if (v147 + v152 >= v129)
          {
            if (v129 < v152)
            {
              v5 = v123 - 2;
            }

            goto LABEL_98;
          }

          goto LABEL_91;
        }

        v153 = &v41[16 * v123];
        v155 = *v153;
        v154 = *(v153 + 1);
        v137 = __OFSUB__(v154, v155);
        v147 = v154 - v155;
        v148 = v137;
LABEL_91:
        if (v148)
        {
          goto LABEL_127;
        }

        v156 = &v41[16 * v5];
        v158 = *(v156 + 4);
        v157 = *(v156 + 5);
        v137 = __OFSUB__(v157, v158);
        v159 = v157 - v158;
        if (v137)
        {
          goto LABEL_130;
        }

        if (v159 < v147)
        {
          goto LABEL_4;
        }

LABEL_98:
        v164 = v5 - 1;
        if (v5 - 1 >= v123)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
          goto LABEL_140;
        }

        if (!*v42)
        {
          goto LABEL_143;
        }

        v165 = *&v41[16 * v164 + 32];
        v166 = *&v41[16 * v5 + 40];
        sub_100AFED58(*v42 + *(v191 + 72) * v165, *v42 + *(v191 + 72) * *&v41[16 * v5 + 32], *v42 + *(v191 + 72) * v166, v126);
        if (v21)
        {
        }

        if (v166 < v165)
        {
          goto LABEL_121;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v41 = sub_100B31E68(v41);
        }

        if (v164 >= *(v41 + 2))
        {
          goto LABEL_122;
        }

        v167 = &v41[16 * v164];
        *(v167 + 4) = v165;
        *(v167 + 5) = v166;
        v209 = v41;
        result = sub_100B31DDC(v5);
        v41 = v209;
        v123 = *(v209 + 2);
        v12 = v199;
        if (v123 <= 1)
        {
          goto LABEL_4;
        }
      }

      v131 = &v41[16 * v123 + 32];
      v132 = *(v131 - 64);
      v133 = *(v131 - 56);
      v137 = __OFSUB__(v133, v132);
      v134 = v133 - v132;
      if (v137)
      {
        goto LABEL_123;
      }

      v136 = *(v131 - 48);
      v135 = *(v131 - 40);
      v137 = __OFSUB__(v135, v136);
      v129 = v135 - v136;
      v130 = v137;
      if (v137)
      {
        goto LABEL_124;
      }

      v138 = &v41[16 * v123];
      v140 = *v138;
      v139 = *(v138 + 1);
      v137 = __OFSUB__(v139, v140);
      v141 = v139 - v140;
      if (v137)
      {
        goto LABEL_126;
      }

      v137 = __OFADD__(v129, v141);
      v142 = v129 + v141;
      if (v137)
      {
        goto LABEL_129;
      }

      if (v142 >= v134)
      {
        v160 = &v41[16 * v5 + 32];
        v162 = *v160;
        v161 = *(v160 + 1);
        v137 = __OFSUB__(v161, v162);
        v163 = v161 - v162;
        if (v137)
        {
          goto LABEL_133;
        }

        if (v129 < v163)
        {
          v5 = v123 - 2;
        }

        goto LABEL_98;
      }

      goto LABEL_77;
    }

    v42 = v182;
LABEL_4:
    v39 = *(v42 + 8);
    v40 = v192;
    v5 = v21;
    v21 = v191;
    if (v192 >= v39)
    {
      goto LABEL_109;
    }
  }

  v174 = v5;
  v95 = *v42;
  v96 = *(v21 + 72);
  v97 = *v42 + v96 * (v43 - 1);
  v195 = -v96;
  v196 = v95;
  v98 = v180 - v43;
  v184 = v96;
  v99 = v95 + v43 * v96;
  v42 = v201;
  v185 = v93;
LABEL_45:
  v192 = v43;
  v186 = v99;
  v187 = v98;
  v100 = v98;
  v189 = v97;
  while (1)
  {
    v204 = v99;
    v205 = v100;
    v101 = v207;
    sub_100022A54(v99, v207, type metadata accessor for BeaconEstimatedLocation);
    v203 = v97;
    v102 = v97;
    v103 = v208;
    sub_100022A54(v102, v208, type metadata accessor for BeaconEstimatedLocation);
    v105 = *(v42 + 40);
    v104 = *(v42 + 44);
    v106 = *(v101 + v104);
    LODWORD(v206) = *(v103 + v104);
    *v12 = v106;
    v107 = v200;
    v108 = *(v200 + 48);
    v109 = type metadata accessor for Date();
    v110 = *(*(v109 - 8) + 16);
    v202 = v108;
    v111 = &v12[v108];
    v112 = v106;
    v113 = v206;
    v110(v111, v101 + v105, v109);
    v114 = v198;
    *v198 = v113;
    v21 = *(v107 + 48);
    v110((v114 + v21), v103 + v105, v109);
    if (v112 == v113)
    {
      sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
      v12 = v199;
      v115 = dispatch thunk of static Comparable.> infix(_:_:)();
      sub_10000B3A8(v114, &qword_1016B5598, &unk_1013D6AA0);
      sub_10000B3A8(v12, &qword_1016B5598, &unk_1013D6AA0);
    }

    else
    {
      v12 = v199;
      sub_10000B3A8(v199, &qword_1016B5598, &unk_1013D6AA0);
      sub_10000B3A8(v114, &qword_1016B5598, &unk_1013D6AA0);
      v115 = v113 < v112;
    }

    sub_100022C40(v208, type metadata accessor for BeaconEstimatedLocation);
    result = sub_100022C40(v207, type metadata accessor for BeaconEstimatedLocation);
    v42 = v201;
    if ((v115 & 1) == 0)
    {
LABEL_44:
      v43 = v192 + 1;
      v97 = v189 + v184;
      v98 = v187 - 1;
      v99 = v186 + v184;
      if ((v192 + 1) != v185)
      {
        goto LABEL_45;
      }

      v43 = v185;
      v5 = v174;
      v41 = v190;
      goto LABEL_55;
    }

    v116 = v205;
    if (!v196)
    {
      break;
    }

    v117 = v204;
    v118 = v197;
    sub_10002911C(v204, v197, type metadata accessor for BeaconEstimatedLocation);
    v119 = v203;
    swift_arrayInitWithTakeFrontToBack();
    sub_10002911C(v118, v119, type metadata accessor for BeaconEstimatedLocation);
    v97 = v119 + v195;
    v99 = v117 + v195;
    v120 = __CFADD__(v116, 1);
    v100 = v116 + 1;
    if (v120)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_143:
  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
LABEL_146:
  __break(1u);
LABEL_147:
  __break(1u);
  return result;
}

uint64_t sub_100AFD8FC(unint64_t *a1, uint64_t a2, uint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v108 = a1;
  v9 = type metadata accessor for OwnedBeaconRecord();
  v116 = *(v9 - 8);
  v10 = *(v116 + 64);
  v11 = __chkstk_darwin(v9);
  v111 = &v104 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v119 = &v104 - v14;
  v15 = __chkstk_darwin(v13);
  v120 = &v104 - v16;
  result = __chkstk_darwin(v15);
  v19 = &v104 - v18;
  v118 = a3;
  v20 = a3[1];
  if (v20 < 1)
  {
    v22 = _swiftEmptyArrayStorage;
LABEL_96:
    v5 = *v108;
    if (!*v108)
    {
      goto LABEL_135;
    }

    a4 = v22;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      result = a4;
LABEL_99:
      v122 = result;
      a4 = *(result + 16);
      if (a4 >= 2)
      {
        while (*v118)
        {
          v100 = *(result + 16 * a4);
          v101 = result;
          v102 = *(result + 16 * (a4 - 1) + 40);
          sub_100AFF61C(*v118 + *(v116 + 72) * v100, *v118 + *(v116 + 72) * *(result + 16 * (a4 - 1) + 32), *v118 + *(v116 + 72) * v102, v5);
          if (v6)
          {
          }

          if (v102 < v100)
          {
            goto LABEL_122;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v101 = sub_100B31E68(v101);
          }

          if (a4 - 2 >= *(v101 + 2))
          {
            goto LABEL_123;
          }

          v103 = &v101[16 * a4];
          *v103 = v100;
          *(v103 + 1) = v102;
          v122 = v101;
          sub_100B31DDC(a4 - 1);
          result = v122;
          a4 = *(v122 + 16);
          if (a4 <= 1)
          {
          }
        }

        goto LABEL_133;
      }
    }

LABEL_129:
    result = sub_100B31E68(a4);
    goto LABEL_99;
  }

  v21 = 0;
  v22 = _swiftEmptyArrayStorage;
  v107 = a4;
  v121 = v9;
  while (1)
  {
    v23 = v21;
    v24 = v21 + 1;
    v112 = v22;
    if (v21 + 1 >= v20)
    {
      v20 = v21 + 1;
    }

    else
    {
      v25 = *(v116 + 72);
      v5 = *v118 + v25 * v24;
      v114 = *v118;
      v26 = v114;
      sub_100022A54(v114 + v25 * v24, v19, type metadata accessor for OwnedBeaconRecord);
      v27 = v26 + v25 * v23;
      v28 = v23;
      v29 = v120;
      sub_100022A54(v27, v120, type metadata accessor for OwnedBeaconRecord);
      v30 = *(v9 + 32);
      LODWORD(v115) = static Date.< infix(_:_:)();
      sub_100022C40(v29, type metadata accessor for OwnedBeaconRecord);
      result = sub_100022C40(v19, type metadata accessor for OwnedBeaconRecord);
      v106 = v28;
      v31 = v28 + 2;
      v117 = v25;
      v32 = v114 + v25 * (v28 + 2);
      while (v20 != v31)
      {
        sub_100022A54(v32, v19, type metadata accessor for OwnedBeaconRecord);
        v33 = v120;
        sub_100022A54(v5, v120, type metadata accessor for OwnedBeaconRecord);
        v34 = *(v121 + 32);
        v35 = static Date.< infix(_:_:)() & 1;
        sub_100022C40(v33, type metadata accessor for OwnedBeaconRecord);
        result = sub_100022C40(v19, type metadata accessor for OwnedBeaconRecord);
        ++v31;
        v32 += v117;
        v5 += v117;
        if ((v115 & 1) != v35)
        {
          v20 = v31 - 1;
          break;
        }
      }

      v23 = v106;
      a4 = v107;
      v9 = v121;
      if (v115)
      {
        if (v20 < v106)
        {
          goto LABEL_126;
        }

        if (v106 < v20)
        {
          v105 = v6;
          v36 = v117 * (v20 - 1);
          v37 = v20;
          v38 = v20 * v117;
          v115 = v20;
          v39 = v106;
          v40 = v106;
          v41 = v106 * v117;
          do
          {
            if (v39 != --v37)
            {
              v42 = *v118;
              if (!*v118)
              {
                goto LABEL_132;
              }

              v5 = v42 + v41;
              sub_10002911C(v42 + v41, v111, type metadata accessor for OwnedBeaconRecord);
              if (v41 < v36 || v5 >= v42 + v38)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v41 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              result = sub_10002911C(v111, v42 + v36, type metadata accessor for OwnedBeaconRecord);
            }

            ++v39;
            v36 -= v117;
            v38 -= v117;
            v41 += v117;
          }

          while (v39 < v37);
          v6 = v105;
          a4 = v107;
          v9 = v121;
          v23 = v40;
          v20 = v115;
        }
      }
    }

    v43 = v118[1];
    if (v20 >= v43)
    {
      goto LABEL_32;
    }

    if (__OFSUB__(v20, v23))
    {
      goto LABEL_125;
    }

    if (v20 - v23 >= a4)
    {
LABEL_32:
      v21 = v20;
      if (v20 < v23)
      {
        goto LABEL_124;
      }

      goto LABEL_33;
    }

    if (__OFADD__(v23, a4))
    {
      goto LABEL_127;
    }

    if ((v23 + a4) >= v43)
    {
      v44 = v118[1];
    }

    else
    {
      v44 = v23 + a4;
    }

    if (v44 < v23)
    {
LABEL_128:
      __break(1u);
      goto LABEL_129;
    }

    if (v20 == v44)
    {
      goto LABEL_32;
    }

    v105 = v6;
    v89 = v20;
    v90 = v23;
    v91 = *v118;
    v92 = *(v116 + 72);
    v93 = *v118 + v92 * (v20 - 1);
    v94 = -v92;
    v106 = v90;
    v95 = v90 - v20;
    v115 = v89;
    v109 = v92;
    v110 = v44;
    v5 = v91 + v89 * v92;
LABEL_86:
    v113 = v5;
    v114 = v95;
    v117 = v93;
LABEL_87:
    sub_100022A54(v5, v19, type metadata accessor for OwnedBeaconRecord);
    v96 = v120;
    sub_100022A54(v93, v120, type metadata accessor for OwnedBeaconRecord);
    v97 = *(v9 + 32);
    a4 = static Date.< infix(_:_:)();
    sub_100022C40(v96, type metadata accessor for OwnedBeaconRecord);
    result = sub_100022C40(v19, type metadata accessor for OwnedBeaconRecord);
    if (a4)
    {
      break;
    }

    v9 = v121;
LABEL_85:
    v21 = v110;
    v93 = v117 + v109;
    v95 = v114 - 1;
    v5 = v113 + v109;
    if (++v115 != v110)
    {
      goto LABEL_86;
    }

    v6 = v105;
    v23 = v106;
    if (v110 < v106)
    {
      goto LABEL_124;
    }

LABEL_33:
    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
      v22 = v112;
    }

    else
    {
      result = sub_100A5B430(0, *(v112 + 2) + 1, 1, v112);
      v22 = result;
    }

    a4 = *(v22 + 2);
    v45 = *(v22 + 3);
    v5 = a4 + 1;
    if (a4 >= v45 >> 1)
    {
      result = sub_100A5B430((v45 > 1), a4 + 1, 1, v22);
      v22 = result;
    }

    *(v22 + 2) = v5;
    v46 = &v22[16 * a4];
    *(v46 + 4) = v23;
    *(v46 + 5) = v21;
    v47 = *v108;
    if (!*v108)
    {
      goto LABEL_134;
    }

    if (a4)
    {
      while (2)
      {
        v48 = v5 - 1;
        if (v5 >= 4)
        {
          v53 = &v22[16 * v5 + 32];
          v54 = *(v53 - 64);
          v55 = *(v53 - 56);
          v59 = __OFSUB__(v55, v54);
          v56 = v55 - v54;
          if (v59)
          {
            goto LABEL_111;
          }

          v58 = *(v53 - 48);
          v57 = *(v53 - 40);
          v59 = __OFSUB__(v57, v58);
          v51 = v57 - v58;
          v52 = v59;
          if (v59)
          {
            goto LABEL_112;
          }

          v60 = &v22[16 * v5];
          v62 = *v60;
          v61 = *(v60 + 1);
          v59 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v59)
          {
            goto LABEL_114;
          }

          v59 = __OFADD__(v51, v63);
          v64 = v51 + v63;
          if (v59)
          {
            goto LABEL_117;
          }

          if (v64 >= v56)
          {
            v82 = &v22[16 * v48 + 32];
            v84 = *v82;
            v83 = *(v82 + 1);
            v59 = __OFSUB__(v83, v84);
            v85 = v83 - v84;
            if (v59)
            {
              goto LABEL_121;
            }

            if (v51 < v85)
            {
              v48 = v5 - 2;
            }
          }

          else
          {
LABEL_52:
            if (v52)
            {
              goto LABEL_113;
            }

            v65 = &v22[16 * v5];
            v67 = *v65;
            v66 = *(v65 + 1);
            v68 = __OFSUB__(v66, v67);
            v69 = v66 - v67;
            v70 = v68;
            if (v68)
            {
              goto LABEL_116;
            }

            v71 = &v22[16 * v48 + 32];
            v73 = *v71;
            v72 = *(v71 + 1);
            v59 = __OFSUB__(v72, v73);
            v74 = v72 - v73;
            if (v59)
            {
              goto LABEL_119;
            }

            if (__OFADD__(v69, v74))
            {
              goto LABEL_120;
            }

            if (v69 + v74 < v51)
            {
              goto LABEL_66;
            }

            if (v51 < v74)
            {
              v48 = v5 - 2;
            }
          }
        }

        else
        {
          if (v5 == 3)
          {
            v49 = *(v22 + 4);
            v50 = *(v22 + 5);
            v59 = __OFSUB__(v50, v49);
            v51 = v50 - v49;
            v52 = v59;
            goto LABEL_52;
          }

          v75 = &v22[16 * v5];
          v77 = *v75;
          v76 = *(v75 + 1);
          v59 = __OFSUB__(v76, v77);
          v69 = v76 - v77;
          v70 = v59;
LABEL_66:
          if (v70)
          {
            goto LABEL_115;
          }

          v78 = &v22[16 * v48];
          v80 = *(v78 + 4);
          v79 = *(v78 + 5);
          v59 = __OFSUB__(v79, v80);
          v81 = v79 - v80;
          if (v59)
          {
            goto LABEL_118;
          }

          if (v81 < v69)
          {
            break;
          }
        }

        a4 = v48 - 1;
        if (v48 - 1 >= v5)
        {
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
          goto LABEL_128;
        }

        if (!*v118)
        {
          goto LABEL_131;
        }

        v86 = v22;
        v87 = *&v22[16 * a4 + 32];
        v5 = *&v22[16 * v48 + 40];
        sub_100AFF61C(*v118 + *(v116 + 72) * v87, *v118 + *(v116 + 72) * *&v22[16 * v48 + 32], *v118 + *(v116 + 72) * v5, v47);
        if (v6)
        {
        }

        if (v5 < v87)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v86 = sub_100B31E68(v86);
        }

        if (a4 >= *(v86 + 2))
        {
          goto LABEL_110;
        }

        v88 = &v86[16 * a4];
        *(v88 + 4) = v87;
        *(v88 + 5) = v5;
        v122 = v86;
        result = sub_100B31DDC(v48);
        v22 = v122;
        v5 = *(v122 + 16);
        if (v5 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v20 = v118[1];
    a4 = v107;
    v9 = v121;
    if (v21 >= v20)
    {
      goto LABEL_96;
    }
  }

  if (v91)
  {
    a4 = type metadata accessor for OwnedBeaconRecord;
    v98 = v119;
    sub_10002911C(v5, v119, type metadata accessor for OwnedBeaconRecord);
    v9 = v121;
    swift_arrayInitWithTakeFrontToBack();
    sub_10002911C(v98, v93, type metadata accessor for OwnedBeaconRecord);
    v93 += v94;
    v5 += v94;
    if (__CFADD__(v95++, 1))
    {
      goto LABEL_85;
    }

    goto LABEL_87;
  }

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
  return result;
}

uint64_t sub_100AFE260(unint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(char *, char *), uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v143 = a4;
  v144 = a5;
  v131 = a1;
  v136 = type metadata accessor for BeaconStatus(0);
  v141 = *(v136 - 8);
  v10 = *(v141 + 64);
  v11 = __chkstk_darwin(v136);
  v133 = &v120 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v135 = &v120 - v14;
  v15 = __chkstk_darwin(v13);
  v16 = __chkstk_darwin(v15);
  v18 = &v120 - v17;
  v19 = __chkstk_darwin(v16);
  v20 = __chkstk_darwin(v19);
  v22 = &v120 - v21;
  v23 = __chkstk_darwin(v20);
  result = __chkstk_darwin(v23);
  v142 = a3;
  if (a3[1] < 1)
  {
    v31 = _swiftEmptyArrayStorage;
LABEL_99:
    v22 = *v131;
    if (*v131)
    {
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        goto LABEL_133;
      }

      goto LABEL_101;
    }

    goto LABEL_142;
  }

  v29 = a3[1];
  v126 = &v120 - v25;
  v127 = v28;
  v137 = v27;
  v134 = v26;
  v125 = a6;
  v30 = 0;
  v31 = _swiftEmptyArrayStorage;
  v124 = v18;
  while (1)
  {
    if (v30 + 1 >= v29)
    {
      v44 = v30 + 1;
    }

    else
    {
      v129 = v29;
      v32 = *v142;
      v33 = *(v141 + 72);
      v34 = v30;
      v35 = *v142 + v33 * (v30 + 1);
      v36 = v126;
      sub_100022A54(v35, v126, type metadata accessor for BeaconStatus);
      v140 = v32;
      v37 = v32 + v33 * v34;
      v38 = v127;
      sub_100022A54(v37, v127, type metadata accessor for BeaconStatus);
      LODWORD(v139) = v143(v36, v38);
      if (v7)
      {
        sub_100022C40(v38, type metadata accessor for BeaconStatus);
        v119 = v36;
        goto LABEL_112;
      }

      sub_100022C40(v38, type metadata accessor for BeaconStatus);
      result = sub_100022C40(v36, type metadata accessor for BeaconStatus);
      v123 = v129 - 1;
      v138 = v129 - 2;
      v39 = v140 + v33 * (v34 + 2);
      v128 = v34;
      v40 = v33;
      v140 = v33;
      while (v138 != v34)
      {
        sub_100022A54(v39, v22, type metadata accessor for BeaconStatus);
        v41 = v22;
        v42 = v137;
        sub_100022A54(v35, v137, type metadata accessor for BeaconStatus);
        v43 = v143(v41, v42);
        sub_100022C40(v42, type metadata accessor for BeaconStatus);
        result = sub_100022C40(v41, type metadata accessor for BeaconStatus);
        ++v34;
        v40 = v140;
        v39 += v140;
        v35 += v140;
        v22 = v41;
        if ((v139 ^ v43))
        {
          v44 = v34 + 1;
          goto LABEL_12;
        }
      }

      v34 = v123;
      v44 = v129;
LABEL_12:
      v30 = v128;
      if ((v139 & 1) == 0)
      {
        goto LABEL_15;
      }

      if (v44 < v128)
      {
        goto LABEL_136;
      }

      if (v128 <= v34)
      {
        v45 = v44;
        v46 = v40 * (v44 - 1);
        v47 = v45 * v40;
        v129 = v45;
        v130 = v22;
        v48 = v45;
        v49 = v128;
        v50 = v128 * v40;
        do
        {
          if (v49 != --v48)
          {
            v51 = *v142;
            if (!*v142)
            {
              goto LABEL_140;
            }

            sub_10002911C(v51 + v50, v133, type metadata accessor for BeaconStatus);
            if (v50 < v46 || v51 + v50 >= (v51 + v47))
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v50 != v46)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            result = sub_10002911C(v133, v51 + v46, type metadata accessor for BeaconStatus);
            v22 = v130;
            v40 = v140;
          }

          ++v49;
          v46 -= v40;
          v47 -= v40;
          v50 += v40;
        }

        while (v49 < v48);
        v18 = v124;
        v30 = v128;
        v44 = v129;
      }

      else
      {
LABEL_15:
        v18 = v124;
      }
    }

    v52 = v142[1];
    if (v44 >= v52)
    {
      goto LABEL_36;
    }

    if (__OFSUB__(v44, v30))
    {
      goto LABEL_132;
    }

    if (v44 - v30 >= v125)
    {
LABEL_36:
      v54 = v44;
      if (v44 < v30)
      {
        goto LABEL_131;
      }

      goto LABEL_37;
    }

    if (__OFADD__(v30, v125))
    {
      __break(1u);
LABEL_135:
      __break(1u);
LABEL_136:
      __break(1u);
LABEL_137:
      __break(1u);
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }

    if (v30 + v125 >= v52)
    {
      v53 = v142[1];
    }

    else
    {
      v53 = v30 + v125;
    }

    if (v53 < v30)
    {
      goto LABEL_135;
    }

    if (v44 == v53)
    {
      goto LABEL_36;
    }

    v130 = v22;
    v102 = *v142;
    v103 = *(v141 + 72);
    v104 = *v142 + v103 * (v44 - 1);
    v139 = -v103;
    v140 = v102;
    v128 = v30;
    v105 = v30 - v44;
    v121 = v103;
    v106 = v102 + v44 * v103;
    v138 = v53;
    v132 = v31;
    do
    {
      v122 = v106;
      v123 = v105;
      v129 = v104;
      while (1)
      {
        sub_100022A54(v106, v18, type metadata accessor for BeaconStatus);
        v107 = v18;
        v108 = v134;
        sub_100022A54(v104, v134, type metadata accessor for BeaconStatus);
        v109 = v143(v107, v108);
        if (v7)
        {
          sub_100022C40(v108, type metadata accessor for BeaconStatus);
          v119 = v107;
LABEL_112:
          sub_100022C40(v119, type metadata accessor for BeaconStatus);
        }

        v110 = v109;
        v111 = v44;
        sub_100022C40(v108, type metadata accessor for BeaconStatus);
        result = sub_100022C40(v107, type metadata accessor for BeaconStatus);
        v18 = v107;
        if ((v110 & 1) == 0)
        {
          break;
        }

        if (!v140)
        {
          goto LABEL_138;
        }

        v112 = v135;
        sub_10002911C(v106, v135, type metadata accessor for BeaconStatus);
        swift_arrayInitWithTakeFrontToBack();
        sub_10002911C(v112, v104, type metadata accessor for BeaconStatus);
        v104 += v139;
        v106 += v139;
        v113 = __CFADD__(v105++, 1);
        v44 = v111;
        v7 = 0;
        v31 = v132;
        if (v113)
        {
          goto LABEL_95;
        }
      }

      v7 = 0;
      v31 = v132;
LABEL_95:
      ++v44;
      v104 = v129 + v121;
      v105 = v123 - 1;
      v106 = v122 + v121;
      v54 = v138;
    }

    while (v44 != v138);
    v22 = v130;
    v30 = v128;
    if (v138 < v128)
    {
      goto LABEL_131;
    }

LABEL_37:
    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, *(v31 + 2) + 1, 1, v31);
      v31 = result;
    }

    v56 = *(v31 + 2);
    v55 = *(v31 + 3);
    v57 = v56 + 1;
    if (v56 >= v55 >> 1)
    {
      result = sub_100A5B430((v55 > 1), v56 + 1, 1, v31);
      v31 = result;
    }

    *(v31 + 2) = v57;
    v58 = &v31[16 * v56];
    *(v58 + 4) = v30;
    *(v58 + 5) = v54;
    v138 = v54;
    v59 = *v131;
    if (!*v131)
    {
      goto LABEL_141;
    }

    if (v56)
    {
      break;
    }

LABEL_3:
    v29 = v142[1];
    v30 = v138;
    if (v138 >= v29)
    {
      goto LABEL_99;
    }
  }

  while (2)
  {
    v60 = v57 - 1;
    if (v57 >= 4)
    {
      v65 = &v31[16 * v57 + 32];
      v66 = *(v65 - 64);
      v67 = *(v65 - 56);
      v71 = __OFSUB__(v67, v66);
      v68 = v67 - v66;
      if (v71)
      {
        goto LABEL_118;
      }

      v70 = *(v65 - 48);
      v69 = *(v65 - 40);
      v71 = __OFSUB__(v69, v70);
      v63 = v69 - v70;
      v64 = v71;
      if (v71)
      {
        goto LABEL_119;
      }

      v72 = &v31[16 * v57];
      v74 = *v72;
      v73 = *(v72 + 1);
      v71 = __OFSUB__(v73, v74);
      v75 = v73 - v74;
      if (v71)
      {
        goto LABEL_121;
      }

      v71 = __OFADD__(v63, v75);
      v76 = v63 + v75;
      if (v71)
      {
        goto LABEL_124;
      }

      if (v76 >= v68)
      {
        v94 = &v31[16 * v60 + 32];
        v96 = *v94;
        v95 = *(v94 + 1);
        v71 = __OFSUB__(v95, v96);
        v97 = v95 - v96;
        if (v71)
        {
          goto LABEL_130;
        }

        if (v63 < v97)
        {
          v60 = v57 - 2;
        }
      }

      else
      {
LABEL_56:
        if (v64)
        {
          goto LABEL_120;
        }

        v77 = &v31[16 * v57];
        v79 = *v77;
        v78 = *(v77 + 1);
        v80 = __OFSUB__(v78, v79);
        v81 = v78 - v79;
        v82 = v80;
        if (v80)
        {
          goto LABEL_123;
        }

        v83 = &v31[16 * v60 + 32];
        v85 = *v83;
        v84 = *(v83 + 1);
        v71 = __OFSUB__(v84, v85);
        v86 = v84 - v85;
        if (v71)
        {
          goto LABEL_126;
        }

        if (__OFADD__(v81, v86))
        {
          goto LABEL_127;
        }

        if (v81 + v86 < v63)
        {
          goto LABEL_70;
        }

        if (v63 < v86)
        {
          v60 = v57 - 2;
        }
      }
    }

    else
    {
      if (v57 == 3)
      {
        v61 = *(v31 + 4);
        v62 = *(v31 + 5);
        v71 = __OFSUB__(v62, v61);
        v63 = v62 - v61;
        v64 = v71;
        goto LABEL_56;
      }

      v87 = &v31[16 * v57];
      v89 = *v87;
      v88 = *(v87 + 1);
      v71 = __OFSUB__(v88, v89);
      v81 = v88 - v89;
      v82 = v71;
LABEL_70:
      if (v82)
      {
        goto LABEL_122;
      }

      v90 = &v31[16 * v60];
      v92 = *(v90 + 4);
      v91 = *(v90 + 5);
      v71 = __OFSUB__(v91, v92);
      v93 = v91 - v92;
      if (v71)
      {
        goto LABEL_125;
      }

      if (v93 < v81)
      {
        goto LABEL_3;
      }
    }

    v98 = v60 - 1;
    if (v60 - 1 < v57)
    {
      if (!*v142)
      {
        goto LABEL_137;
      }

      v99 = *&v31[16 * v98 + 32];
      v100 = *&v31[16 * v60 + 40];
      sub_100AFFB4C(*v142 + *(v141 + 72) * v99, *v142 + *(v141 + 72) * *&v31[16 * v60 + 32], *v142 + *(v141 + 72) * v100, v59, v143, v144);
      if (v7)
      {
      }

      if (v100 < v99)
      {
        goto LABEL_116;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v31 = sub_100B31E68(v31);
      }

      if (v98 >= *(v31 + 2))
      {
        goto LABEL_117;
      }

      v101 = &v31[16 * v98];
      *(v101 + 4) = v99;
      *(v101 + 5) = v100;
      v145 = v31;
      result = sub_100B31DDC(v60);
      v31 = v145;
      v57 = *(v145 + 2);
      if (v57 <= 1)
      {
        goto LABEL_3;
      }

      continue;
    }

    break;
  }

  __break(1u);
LABEL_116:
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
  result = sub_100B31E68(v31);
  v31 = result;
LABEL_101:
  v145 = v31;
  v114 = *(v31 + 2);
  if (v114 < 2)
  {
  }

  v115 = v143;
  while (*v142)
  {
    v116 = *&v31[16 * v114];
    v117 = *&v31[16 * v114 + 24];
    sub_100AFFB4C(*v142 + *(v141 + 72) * v116, *v142 + *(v141 + 72) * *&v31[16 * v114 + 16], *v142 + *(v141 + 72) * v117, v22, v115, v144);
    if (v7)
    {
    }

    if (v117 < v116)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v31 = sub_100B31E68(v31);
    }

    if (v114 - 2 >= *(v31 + 2))
    {
      goto LABEL_129;
    }

    v118 = &v31[16 * v114];
    *v118 = v116;
    *(v118 + 1) = v117;
    v145 = v31;
    result = sub_100B31DDC(v114 - 1);
    v31 = v145;
    v114 = *(v145 + 2);
    if (v114 <= 1)
    {
    }
  }

LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
  return result;
}

uint64_t sub_100AFED58(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v86 = sub_1000BC4D4(&qword_1016B5598, &unk_1013D6AA0);
  v8 = *(*(v86 - 8) + 64);
  v9 = __chkstk_darwin(v86);
  v80 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __chkstk_darwin(v9);
  v85 = &v75 - v12;
  v13 = __chkstk_darwin(v11);
  v83 = &v75 - v14;
  __chkstk_darwin(v13);
  v16 = &v75 - v15;
  v94 = type metadata accessor for BeaconEstimatedLocation();
  v17 = *(*(v94 - 8) + 64);
  v18 = __chkstk_darwin(v94);
  v88 = &v75 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v87 = &v75 - v21;
  v22 = __chkstk_darwin(v20);
  v90 = &v75 - v23;
  result = __chkstk_darwin(v22);
  v89 = &v75 - v25;
  v27 = *(v26 + 72);
  if (!v27)
  {
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_68;
  }

  v28 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v27 == -1)
  {
    goto LABEL_69;
  }

  v29 = (a2 - a1) / v27;
  v97 = a1;
  v96 = a4;
  v84 = v27;
  if (v29 >= v28 / v27)
  {
    v31 = v28 / v27 * v27;
    if (a4 < a2 || a2 + v31 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v52 = a4 + v31;
    if (v31 >= 1)
    {
      v53 = -v84;
      v54 = v52;
      v91 = a4;
      v92 = a1;
      v78 = -v84;
      while (2)
      {
        while (1)
        {
          v76 = v52;
          v55 = a2;
          a2 += v53;
          v93 = a2;
          v79 = v55;
          while (1)
          {
            if (v55 <= a1)
            {
              v97 = v55;
              v95 = v76;
              goto LABEL_66;
            }

            v89 = a3;
            v90 = v54;
            v77 = v52;
            v82 = v54 + v53;
            v56 = v87;
            sub_100022A54(v54 + v53, v87, type metadata accessor for BeaconEstimatedLocation);
            v57 = v88;
            sub_100022A54(a2, v88, type metadata accessor for BeaconEstimatedLocation);
            v59 = *(v94 + 40);
            v58 = *(v94 + 44);
            LODWORD(v84) = *(v56 + v58);
            LODWORD(v83) = *(v57 + v58);
            v60 = v85;
            v61 = v86;
            *v85 = v84;
            v62 = *(v61 + 48);
            v63 = type metadata accessor for Date();
            v64 = *(*(v63 - 8) + 16);
            v81 = v62;
            v65 = &v60[v62];
            v66 = v80;
            v67 = v56 + v59;
            v68 = v83;
            v64(v65, v67, v63);
            *v66 = v68;
            v64(&v66[*(v61 + 48)], v57 + v59, v63);
            v69 = v84;
            if (v84 == v68)
            {
              sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
              v70 = v85;
              v71 = dispatch thunk of static Comparable.> infix(_:_:)();
              sub_10000B3A8(v66, &qword_1016B5598, &unk_1013D6AA0);
              sub_10000B3A8(v70, &qword_1016B5598, &unk_1013D6AA0);
            }

            else
            {
              sub_10000B3A8(v85, &qword_1016B5598, &unk_1013D6AA0);
              sub_10000B3A8(v66, &qword_1016B5598, &unk_1013D6AA0);
              v71 = v68 < v69;
            }

            v53 = v78;
            v72 = v89;
            a3 = v89 + v78;
            sub_100022C40(v88, type metadata accessor for BeaconEstimatedLocation);
            sub_100022C40(v87, type metadata accessor for BeaconEstimatedLocation);
            a1 = v92;
            a2 = v93;
            v54 = v90;
            v73 = v91;
            if (v71)
            {
              break;
            }

            v74 = v82;
            v52 = v82;
            if (v72 < v90 || a3 >= v90)
            {
              swift_arrayInitWithTakeFrontToBack();
            }

            else if (v72 != v90)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            v54 = v52;
            v55 = v79;
            if (v74 <= v73)
            {
              a2 = v79;
              goto LABEL_65;
            }
          }

          if (v72 < v79 || a3 >= v79)
          {
            break;
          }

          v52 = v77;
          if (v72 != v79)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          if (v54 <= v73)
          {
            goto LABEL_65;
          }
        }

        swift_arrayInitWithTakeFrontToBack();
        v52 = v77;
        if (v54 > v73)
        {
          continue;
        }

        break;
      }
    }

LABEL_65:
    v97 = a2;
    v95 = v52;
  }

  else
  {
    v30 = v29 * v27;
    if (a4 < a1 || a1 + v30 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v85 = (a4 + v30);
    v95 = a4 + v30;
    if (v30 >= 1 && a2 < a3)
    {
      v81 = v16;
      v82 = a3;
      do
      {
        v92 = a1;
        v93 = a2;
        v33 = v89;
        sub_100022A54(a2, v89, type metadata accessor for BeaconEstimatedLocation);
        v91 = a4;
        v34 = v90;
        sub_100022A54(a4, v90, type metadata accessor for BeaconEstimatedLocation);
        v35 = *(v94 + 44);
        v87 = *(v94 + 40);
        LODWORD(v88) = *(v33 + v35);
        v36 = *(v34 + v35);
        *v16 = v88;
        v37 = v86;
        v38 = *(v86 + 48);
        v39 = type metadata accessor for Date();
        v40 = *(*(v39 - 8) + 16);
        v41 = &v16[v38];
        v42 = v87;
        v43 = v33 + v87;
        v44 = v83;
        v40(v41, v43, v39);
        *v44 = v36;
        v45 = v34 + v42;
        v46 = v88;
        v40(&v44[*(v37 + 48)], v45, v39);
        if (v46 == v36)
        {
          sub_10000768C(&qword_1016C9070, &type metadata accessor for Date);
          v47 = v81;
          v48 = dispatch thunk of static Comparable.> infix(_:_:)();
          sub_10000B3A8(v44, &qword_1016B5598, &unk_1013D6AA0);
          sub_10000B3A8(v47, &qword_1016B5598, &unk_1013D6AA0);
          v16 = v47;
        }

        else
        {
          v16 = v81;
          sub_10000B3A8(v81, &qword_1016B5598, &unk_1013D6AA0);
          sub_10000B3A8(v44, &qword_1016B5598, &unk_1013D6AA0);
          v48 = v36 < v46;
        }

        sub_100022C40(v90, type metadata accessor for BeaconEstimatedLocation);
        sub_100022C40(v89, type metadata accessor for BeaconEstimatedLocation);
        v49 = v92;
        a2 = v93;
        a4 = v91;
        v50 = v82;
        v51 = v84;
        if (v48)
        {
          if (v92 < v93 || v92 >= v93 + v84)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v92 != v93)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v51;
        }

        else
        {
          if (v92 < v91 || v92 >= v91 + v84)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v92 != v91)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v96 = a4 + v51;
          a4 += v51;
        }

        a1 = v49 + v51;
        v97 = a1;
      }

      while (a4 < v85 && a2 < v50);
    }
  }

LABEL_66:
  sub_10060AA9C(&v97, &v96, &v95);
  return 1;
}

uint64_t sub_100AFF61C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v49 = type metadata accessor for OwnedBeaconRecord();
  v8 = *(*(v49 - 8) + 64);
  v9 = __chkstk_darwin(v49);
  v48 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v47 = &v39 - v12;
  v14 = *(v13 + 72);
  if (!v14)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return result;
  }

  if (a2 - a1 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_61;
  }

  v15 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v14 == -1)
  {
    goto LABEL_62;
  }

  v16 = (a2 - a1) / v14;
  v52 = a1;
  v51 = a4;
  if (v16 >= v15 / v14)
  {
    v18 = v15 / v14 * v14;
    if (a4 < a2 || a2 + v18 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v18;
    if (v18 >= 1)
    {
      v26 = -v14;
      v27 = a4 + v18;
      v43 = a1;
      v44 = a4;
      v42 = -v14;
      do
      {
        v40 = v25;
        v28 = a2;
        v29 = a2 + v26;
        v45 = v28;
        v46 = v29;
        while (1)
        {
          if (v28 <= a1)
          {
            v52 = v28;
            v50 = v40;
            goto LABEL_59;
          }

          v41 = v25;
          v31 = v49;
          v32 = a3 + v26;
          v33 = v27 + v26;
          v34 = v47;
          sub_100022A54(v33, v47, type metadata accessor for OwnedBeaconRecord);
          v35 = v48;
          sub_100022A54(v29, v48, type metadata accessor for OwnedBeaconRecord);
          v36 = *(v31 + 32);
          v37 = static Date.< infix(_:_:)();
          sub_100022C40(v35, type metadata accessor for OwnedBeaconRecord);
          sub_100022C40(v34, type metadata accessor for OwnedBeaconRecord);
          if (v37)
          {
            break;
          }

          v25 = v33;
          if (a3 < v27 || v32 >= v27)
          {
            a3 = v32;
            swift_arrayInitWithTakeFrontToBack();
            a1 = v43;
          }

          else
          {
            v38 = a3 == v27;
            a3 = v32;
            a1 = v43;
            if (!v38)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v27 = v33;
          v28 = v45;
          v30 = v33 > v44;
          v29 = v46;
          v26 = v42;
          if (!v30)
          {
            a2 = v45;
            goto LABEL_58;
          }
        }

        if (a3 < v45 || v32 >= v45)
        {
          a3 = v32;
          a2 = v46;
          swift_arrayInitWithTakeFrontToBack();
          v26 = v42;
          a1 = v43;
          v25 = v41;
        }

        else
        {
          v38 = a3 == v45;
          a3 = v32;
          a2 = v46;
          v26 = v42;
          a1 = v43;
          v25 = v41;
          if (!v38)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v27 > v44);
    }

LABEL_58:
    v52 = a2;
    v50 = v25;
  }

  else
  {
    v17 = v16 * v14;
    if (a4 < a1 || a1 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v17;
    v50 = a4 + v17;
    if (v17 >= 1 && a2 < a3)
    {
      do
      {
        v20 = a3;
        v21 = v47;
        sub_100022A54(a2, v47, type metadata accessor for OwnedBeaconRecord);
        v22 = v48;
        sub_100022A54(a4, v48, type metadata accessor for OwnedBeaconRecord);
        v23 = *(v49 + 32);
        v24 = static Date.< infix(_:_:)();
        sub_100022C40(v22, type metadata accessor for OwnedBeaconRecord);
        sub_100022C40(v21, type metadata accessor for OwnedBeaconRecord);
        if (v24)
        {
          if (a1 < a2 || a1 >= a2 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a2 += v14;
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a2)
            {
              swift_arrayInitWithTakeBackToFront();
            }

            a2 += v14;
          }
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v14)
          {
            swift_arrayInitWithTakeFrontToBack();
            a3 = v20;
          }

          else
          {
            a3 = v20;
            if (a1 != a4)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v51 = a4 + v14;
          a4 += v14;
        }

        a1 += v14;
        v52 = a1;
      }

      while (a4 < v46 && a2 < a3);
    }
  }

LABEL_59:
  sub_10060AB44(&v52, &v51, &v50);
  return 1;
}

unint64_t sub_100AFFB4C(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t (*a5)(char *, char *), uint64_t a6)
{
  v7 = v6;
  v55 = a6;
  v56 = a5;
  v57 = a3;
  v54 = type metadata accessor for BeaconStatus(0);
  v11 = *(*(v54 - 8) + 64);
  v12 = __chkstk_darwin(v54);
  v14 = &v46 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v12);
  v17 = &v46 - v16;
  v18 = __chkstk_darwin(v15);
  v20 = &v46 - v19;
  result = __chkstk_darwin(v18);
  v23 = &v46 - v22;
  v53 = *(v24 + 72);
  if (!v53)
  {
    __break(1u);
LABEL_66:
    __break(1u);
    goto LABEL_67;
  }

  result = a1;
  if (a2 - a1 == 0x8000000000000000 && v53 == -1)
  {
    goto LABEL_66;
  }

  v25 = v57 - a2;
  if (v57 - a2 != 0x8000000000000000 || v53 != -1)
  {
    v26 = (a2 - a1) / v53;
    v60 = a1;
    v59 = a4;
    v52 = a1;
    if (v26 < v25 / v53)
    {
      v27 = v26 * v53;
      if (a4 < result || result + v27 <= a4)
      {
        swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        if (a4 == result)
        {
          goto LABEL_17;
        }

        swift_arrayInitWithTakeBackToFront();
      }

      result = v52;
LABEL_17:
      v52 = a4 + v27;
      v58 = a4 + v27;
      if (v27 >= 1 && a2 < v57)
      {
        while (1)
        {
          v30 = result;
          sub_100022A54(a2, v23, type metadata accessor for BeaconStatus);
          sub_100022A54(a4, v20, type metadata accessor for BeaconStatus);
          v31 = v56(v23, v20);
          if (v7)
          {
            break;
          }

          v32 = v31;
          v33 = a4;
          sub_100022C40(v20, type metadata accessor for BeaconStatus);
          sub_100022C40(v23, type metadata accessor for BeaconStatus);
          if (v32)
          {
            v34 = v53;
            v35 = v30;
            if (v30 < a2 || v30 >= a2 + v53)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              a2 += v34;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != a2)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }

              a2 += v34;
            }
          }

          else
          {
            v36 = a4;
            v34 = v53;
            a4 += v53;
            v35 = v30;
            if (v30 < v33 || v30 >= a4)
            {
              swift_arrayInitWithTakeFrontToBack();
              v35 = v30;
              v7 = 0;
            }

            else
            {
              v7 = 0;
              if (v30 != v36)
              {
                swift_arrayInitWithTakeBackToFront();
                v35 = v30;
              }
            }

            v59 = a4;
          }

          result = v35 + v34;
          v60 = result;
          if (a4 >= v52 || a2 >= v57)
          {
            goto LABEL_64;
          }
        }

        sub_100022C40(v20, type metadata accessor for BeaconStatus);
        sub_100022C40(v23, type metadata accessor for BeaconStatus);
      }

LABEL_64:
      sub_10060ABA4(&v60, &v59, &v58);
      return 1;
    }

    v28 = v25 / v53 * v53;
    if (a4 < a2 || a2 + v28 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else
    {
      if (a4 == a2)
      {
LABEL_40:
        v37 = a4 + v28;
        if (v28 >= 1)
        {
          v38 = -v53;
          v39 = v37;
          v48 = v17;
          v49 = v14;
          do
          {
            v46 = v37;
            v40 = a2;
            v50 = a2;
            v51 = a2 + v38;
            while (1)
            {
              v41 = v57;
              if (v40 <= result)
              {
                v60 = v40;
                v58 = v46;
                goto LABEL_64;
              }

              v47 = v37;
              v53 = v39;
              v42 = v39 + v38;
              sub_100022A54(v39 + v38, v17, type metadata accessor for BeaconStatus);
              sub_100022A54(v51, v14, type metadata accessor for BeaconStatus);
              v43 = v56(v17, v14);
              if (v7)
              {
                sub_100022C40(v14, type metadata accessor for BeaconStatus);
                sub_100022C40(v17, type metadata accessor for BeaconStatus);
                v60 = v50;
                v58 = v47;
                goto LABEL_64;
              }

              v44 = v43;
              v57 = v41 + v38;
              sub_100022C40(v14, type metadata accessor for BeaconStatus);
              sub_100022C40(v17, type metadata accessor for BeaconStatus);
              if (v44)
              {
                break;
              }

              v37 = v42;
              if (v41 < v53 || v57 >= v53)
              {
                swift_arrayInitWithTakeFrontToBack();
                v7 = 0;
              }

              else
              {
                v7 = 0;
                if (v41 != v53)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v39 = v42;
              result = v52;
              v17 = v48;
              v14 = v49;
              v40 = v50;
              if (v42 <= a4)
              {
                a2 = v50;
                goto LABEL_63;
              }
            }

            if (v41 < v50 || v57 >= v50)
            {
              a2 = v51;
              swift_arrayInitWithTakeFrontToBack();
              v7 = 0;
              v37 = v47;
            }

            else
            {
              v45 = v41 == v50;
              a2 = v51;
              v7 = 0;
              v37 = v47;
              if (!v45)
              {
                swift_arrayInitWithTakeBackToFront();
              }
            }

            result = v52;
            v39 = v53;
            v17 = v48;
            v14 = v49;
          }

          while (v53 > a4);
        }

LABEL_63:
        v60 = a2;
        v58 = v37;
        goto LABEL_64;
      }

      swift_arrayInitWithTakeBackToFront();
    }

    result = v52;
    goto LABEL_40;
  }

LABEL_67:
  __break(1u);
  return result;
}

void *sub_100B00194(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = sub_10061B7B8(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_100B00224(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v44 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  v8 = v7[8];
  v9 = __chkstk_darwin(v6);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v10) = *(a3 + 32);
  v12 = ((1 << v10) + 63) >> 6;
  if ((v10 & 0x3Fu) > 0xD)
  {
    goto LABEL_22;
  }

  while (1)
  {
    v36 = v12;
    v42 = v11;
    v43 = v9;
    v47 = v4;
    v38 = &v35;
    __chkstk_darwin(v9);
    v37 = &v35 - ((v13 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v13);
    v14 = 0;
    v45 = a3;
    v16 = *(a3 + 56);
    a3 += 56;
    v15 = v16;
    v17 = 1 << *(a3 - 24);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & v15;
    v11 = ((v17 + 63) >> 6);
    v39 = 0;
    v40 = v7 + 2;
    v41 = (v7 + 1);
    while (v19)
    {
      v20 = __clz(__rbit64(v19));
      v46 = (v19 - 1) & v19;
LABEL_12:
      v12 = v20 | (v14 << 6);
      v23 = *(v45 + 48) + v7[9] * v12;
      v4 = v7;
      v24 = v7[2];
      v25 = v42;
      v26 = v43;
      v24(v42, v23, v43);
      v27 = v47;
      v28 = v44(v25);
      v47 = v27;
      if (v27)
      {
        (*v41)(v25, v26);

        return swift_willThrow();
      }

      v29 = v28;
      v9 = (*v41)(v25, v26);
      v7 = v4;
      v19 = v46;
      if (v29)
      {
        *&v37[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
        if (__OFADD__(v39++, 1))
        {
          __break(1u);
          return sub_10060AF64(v37, v36, v39, v45);
        }
      }
    }

    v21 = v14;
    while (1)
    {
      v14 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v14 >= v11)
      {
        return sub_10060AF64(v37, v36, v39, v45);
      }

      v22 = *(a3 + 8 * v14);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v46 = (v22 - 1) & v22;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_22:
    v32 = v9;

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v9 = v32;
  }

  v33 = swift_slowAlloc();
  v34 = sub_100B00194(v33, v12, a3, v44);

  if (!v4)
  {
    return v34;
  }

  return result;
}

id sub_100B005BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v369 = a2;
  v328 = sub_1000BC4D4(&unk_101698C20, &qword_101390748);
  v7 = *(*(v328 - 8) + 64);
  __chkstk_darwin(v328);
  v330 = &v317 - v8;
  v329 = type metadata accessor for KeyDropLostItemDates(0);
  v327 = *(v329 - 8);
  v9 = *(v327 + 64);
  __chkstk_darwin(v329);
  v322 = &v317 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v324 = &v317 - v13;
  v14 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v359 = &v317 - v16;
  v360 = type metadata accessor for SharedBeaconRecord(0);
  v337 = *(v360 - 8);
  v17 = *(v337 + 64);
  v18 = __chkstk_darwin(v360);
  v321 = &v317 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __chkstk_darwin(v18);
  v22 = &v317 - v21;
  v23 = __chkstk_darwin(v20);
  v325 = &v317 - v24;
  v326 = v25;
  __chkstk_darwin(v23);
  v361 = &v317 - v26;
  v27 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v28 = *(*(v27 - 8) + 64);
  v29 = __chkstk_darwin(v27 - 8);
  v323 = &v317 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v29);
  v335 = &v317 - v31;
  v32 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v33 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v32 - 8);
  v357 = &v317 - v34;
  v358 = type metadata accessor for OwnedBeaconRecord();
  v356 = *(v358 - 8);
  v35 = *(v356 + 64);
  __chkstk_darwin(v358);
  v37 = &v317 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v352 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v38 = *(*(v352 - 8) + 64);
  __chkstk_darwin(v352);
  v353 = &v317 - v39;
  v354 = type metadata accessor for BeaconNamingRecord();
  v351 = *(v354 - 8);
  v40 = *(v351 + 64);
  __chkstk_darwin(v354);
  v362 = &v317 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v43 = *(*(v42 - 8) + 64);
  __chkstk_darwin(v42 - 8);
  v350 = &v317 - v44;
  v349 = type metadata accessor for BeaconProductInfoRecord();
  v348 = *(v349 - 8);
  v45 = *(v348 + 64);
  __chkstk_darwin(v349);
  v334 = &v317 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = sub_1000BC4D4(&qword_10169F328, &unk_1013CB040);
  v48 = *(*(v47 - 8) + 64);
  __chkstk_darwin(v47 - 8);
  v346 = &v317 - v49;
  v347 = type metadata accessor for KeyAlignmentRecord();
  v345 = *(v347 - 8);
  v50 = *(v345 + 64);
  __chkstk_darwin(v347);
  v333 = &v317 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v53 = *(*(v52 - 8) + 64);
  v54 = __chkstk_darwin(v52 - 8);
  v320 = &v317 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v54);
  v344 = &v317 - v56;
  v340 = sub_1000BC4D4(&unk_1016AF8A0, &unk_10139D7C0);
  v57 = *(*(v340 - 8) + 64);
  v58 = __chkstk_darwin(v340);
  v343 = &v317 - ((v59 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = __chkstk_darwin(v58);
  v341 = (&v317 - v61);
  __chkstk_darwin(v60);
  v372 = &v317 - v62;
  v339 = sub_1000BC4D4(&unk_1016AA420, &unk_1013BCFE0);
  v63 = *(*(v339 - 8) + 64);
  v64 = __chkstk_darwin(v339);
  v66 = &v317 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v64);
  v367 = &v317 - v67;
  v68 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v69 = *(*(v68 - 8) + 64);
  __chkstk_darwin(v68 - 8);
  v338 = (&v317 - v70);
  v376 = type metadata accessor for Date();
  v368 = *(v376 - 8);
  v71 = v368[8];
  v72 = __chkstk_darwin(v376);
  v74 = &v317 - ((v73 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = __chkstk_darwin(v72);
  v319 = &v317 - v76;
  v77 = __chkstk_darwin(v75);
  v342 = &v317 - v78;
  v79 = __chkstk_darwin(v77);
  v365 = &v317 - v80;
  __chkstk_darwin(v79);
  v363 = &v317 - v81;
  v383 = type metadata accessor for UUID();
  v364 = *(v383 - 8);
  v82 = *(v364 + 64);
  v83 = __chkstk_darwin(v383);
  v382 = &v317 - ((v84 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v83);
  v86 = &v317 - v85;
  v396[3] = a3;
  v396[4] = a4;
  v87 = sub_1000280DC(v396);
  (*(*(a3 - 8) + 16))(v87, a1, a3);
  v379 = [objc_allocWithZone(SPBeacon) init];
  v88 = *(a4 + 48);
  v371 = (a4 + 48);
  v370 = v88;
  v89 = v88(a3, a4);
  v90 = *(a4 + 56);
  v381 = v87;
  v380 = a3;
  v375 = a4;
  v374 = a4 + 56;
  v373 = v90;
  v91 = v90(a3, a4);
  v92 = sub_100314604(v89, v91);
  v366 = v86;
  v318 = v22;
  v317 = v74;
  v336 = v37;
  v355 = v66;
  if (v93 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v94 = type metadata accessor for Logger();
    sub_1000076D4(v94, qword_10177BA08);
    sub_10001F280(v396, &v391);
    sub_10001F280(v396, &v386);
    v95 = Logger.logObject.getter();
    v96 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v95, v96))
    {
      v97 = swift_slowAlloc();
      *v97 = 134218240;
      sub_1000035D0(&v391, *(&v392 + 1));
      v98 = v380;
      v99 = v375;
      v100 = v370(v380, v375);
      sub_100007BAC(&v391);
      *(v97 + 4) = v100;
      *(v97 + 12) = 2048;
      sub_1000035D0(&v386, *(&v387 + 1));
      v101 = v373(v98, v99);
      sub_100007BAC(&v386);
      *(v97 + 14) = v101;
      _os_log_impl(&_mh_execute_header, v95, v96, "Unable to create AccessoryProductData from %ld/%ld", v97, 0x16u);
    }

    else
    {
      sub_100007BAC(&v386);
      sub_100007BAC(&v391);
    }

    UUID.init(uuid:)();
  }

  else
  {
    v102 = v93;
    v103 = v92;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v391 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v104 = v391;
    v386 = v391;
    sub_100017D5C(v391, *(&v391 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v103, v102);
    sub_100016590(v104, *(&v104 + 1));
    sub_100016590(v104, *(&v104 + 1));
  }

  v105 = v375;
  v378 = *(*(v375 + 8) + 8);
  v106 = (v378 + 32);
  v377 = *(v378 + 32);
  v107 = v382;
  v108 = v380;
  v377(v380);
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v110 = v364 + 8;
  v384 = *(v364 + 8);
  v111 = v383;
  v384(v107, v383);
  v112 = v379;
  [v379 setIdentifier:isa];

  (*(v105 + 16))(v108, v105);
  v113 = String._bridgeToObjectiveC()();

  [v112 setModel:v113];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  v114 = Set._bridgeToObjectiveC()().super.isa;
  [v112 setShares:v114];

  (*(v105 + 24))(v108, v105);
  v115 = String._bridgeToObjectiveC()();

  [v112 setSystemVersion:v115];

  v116 = UUID._bridgeToObjectiveC()().super.isa;
  [v112 setProductUUID:v116];

  [v112 setVendorId:{v370(v108, v105)}];
  [v112 setProductId:{v373(v108, v105)}];
  v117 = *(v105 + 192);
  v118 = v363;
  v332 = v105 + 192;
  v331 = v117;
  v117(v108, v105);
  v119 = Date._bridgeToObjectiveC()().super.isa;
  v120 = v368[1];
  v370 = (v368 + 1);
  v371 = v120;
  v120(v118, v376);
  [v112 setPairingDate:v119];

  v121 = *(v105 + 184);
  v122 = v105;
  v123 = v382;
  v124 = v121(v108, v122);
  [v112 setType:v124];

  v373 = v106;
  (v377)(v108, v378);
  v125 = v338;
  sub_100ABD87C(v338);
  v374 = v110;
  v384(v123, v111);
  v126 = type metadata accessor for LostModeRecord();
  if ((*(*(v126 - 8) + 48))(v125, 1, v126) == 1)
  {
    sub_10000B3A8(v125, &unk_1016A99E0, &qword_1013A07B0);
    v127 = 0;
  }

  else
  {
    v127 = sub_100E78AA8();
    sub_100022C40(v125, type metadata accessor for LostModeRecord);
  }

  v128 = v355;
  v129 = v339;
  [v112 setLostModeInfo:{v127, v317}];

  v130 = *(v129 + 48);
  (v377)(v108, v378);
  v131 = v112;
  v132 = v369;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v133 = sub_100035730(v123, 0, 0);
  v134 = v367;
  v135 = sub_10003ABC0(&v367[v130], v123, v133, 1);

  v384(v123, v383);
  *v134 = v135 & 1;
  [v131 setConnected:?];
  sub_1000D2A70(v134, v128, &unk_1016AA420, &unk_1013BCFE0);
  v136 = *(v129 + 48);
  v137 = v368;
  v138 = v368 + 6;
  v139 = v368[6];
  v140 = v376;
  v141 = (v139)(v128 + v136, 1, v376);
  v142 = 0;
  v143 = v346;
  if (v141 != 1)
  {
    v142 = Date._bridgeToObjectiveC()().super.isa;
    v371(v128 + v136, v140);
  }

  v144 = v379;
  [v379 setConnectedStateExpiryDate:v142];

  [v144 setIsAppleAudioAccessory:(*(v375 + 120))(v380) & 1];
  if (qword_101694940 != -1)
  {
    swift_once();
  }

  v145 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  sub_10107485C(v391);

  Date.init(timeIntervalSinceNow:)();
  v146 = *(v132 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v147 = v391;
  sub_10001F280(v396, &v391);
  v148 = swift_allocObject();
  *(v148 + 16) = v147;
  sub_10000A748(&v391, v148 + 24);
  v355 = v147;

  v149 = v372;
  unsafeFromAsyncTask<A>(_:)();

  v150 = v341;
  sub_1000D2A70(v149, v341, &unk_1016AF8A0, &unk_10139D7C0);
  v151 = sub_1000BC4D4(&unk_1016C8FC0, &unk_10139D7D0);
  v152 = *(*(v151 - 8) + 48);
  if (v152(v150, 1, v151) == 1)
  {
    sub_10000B3A8(v150, &unk_1016AF8A0, &unk_10139D7C0);
    v153 = 1;
  }

  else
  {
    v154 = v150;
    v153 = *v150;
    sub_10000B3A8(v154, &unk_1016C8FC0, &unk_10139D7D0);
  }

  [v379 setKeySyncLastObservedIndex:v153];
  v155 = v343;
  sub_1000D2A70(v372, v343, &unk_1016AF8A0, &unk_10139D7C0);
  v156 = v152(v155, 1, v151);
  v339 = v138;
  v338 = v139;
  if (v156 == 1)
  {
    sub_10000B3A8(v155, &unk_1016AF8A0, &unk_10139D7C0);
    v157 = v344;
    v158 = v376;
    (v137[7])(v344, 1, 1, v376);
    v159 = v342;
    v331(v380, v375);
    v160 = (v139)(v157, 1, v158);
    v161 = v383;
    if (v160 != 1)
    {
      sub_10000B3A8(v157, &unk_101696900, &unk_10138B1E0);
    }
  }

  else
  {
    v162 = v155 + *(v151 + 36);
    v163 = v155;
    v164 = v344;
    v158 = v376;
    (v137[2])(v344, v162, v376);
    sub_10000B3A8(v163, &unk_1016C8FC0, &unk_10139D7D0);
    (v137[7])(v164, 0, 1, v158);
    v165 = v137[4];
    v159 = v342;
    v165(v342, v164, v158);
    v161 = v383;
  }

  v166 = Date._bridgeToObjectiveC()().super.isa;
  v167 = v159;
  v168 = v371;
  v371(v167, v158);
  v169 = v379;
  [v379 setKeySyncLastIndexObservationDate:v166];

  [v169 setKeySyncWildIndexFallback:1];
  v170 = v382;
  (v377)(v380, v378);
  v171 = *(v132 + 168);
  sub_100B2DA4C(v143);
  v384(v170, v161);
  v172 = v347;
  if ((*(v345 + 48))(v143, 1, v347) == 1)
  {
    sub_10000B3A8(v143, &qword_10169F328, &unk_1013CB040);
    [v169 setKeyAlignmentLastObservedIndex:0];
    v173 = v363;
    static Date.distantPast.getter();
    v174 = Date._bridgeToObjectiveC()().super.isa;
    v168(v173, v158);
    [v169 setKeyAlignmentLastIndexObservationDate:v174];
  }

  else
  {
    v175 = v333;
    sub_10002911C(v143, v333, type metadata accessor for KeyAlignmentRecord);
    [v169 setKeyAlignmentLastObservedIndex:*(v175 + *(v172 + 28))];
    v176 = v175 + *(v172 + 32);
    v177 = Date._bridgeToObjectiveC()().super.isa;
    [v169 setKeyAlignmentLastIndexObservationDate:v177];

    sub_100022C40(v175, type metadata accessor for KeyAlignmentRecord);
  }

  v178 = [v169 identifier];
  v179 = v382;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v180 = v350;
  sub_100AC1584(v179, v350);
  v384(v179, v383);
  v181 = (*(v348 + 48))(v180, 1, v349);
  v182 = v380;
  v183 = v353;
  if (v181 == 1)
  {
    sub_10000B3A8(v180, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v184 = v334;
    sub_10002911C(v180, v334, type metadata accessor for BeaconProductInfoRecord);
    v185 = sub_10083B890();
    [v169 setAccessoryProductInfo:v185];

    sub_100022C40(v184, type metadata accessor for BeaconProductInfoRecord);
  }

  v186 = v382;
  v187 = (v377)(v182, v378);
  v188 = *(v132 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v187);
  QueueSynchronizer.conditionalSync<A>(_:)();
  v384(v186, v383);
  v189 = v354;
  if ((*(v351 + 48))(v183, 1, v354) != 1)
  {
    v203 = v362;
    sub_10002911C(v183, v362, type metadata accessor for BeaconNamingRecord);
    v204 = (v203 + *(v189 + 32));
    v205 = *v204;
    v206 = v204[1];
    v207 = String._bridgeToObjectiveC()();
    [v169 setName:v207];

    v208 = v189;
    v209 = *(v203 + *(v189 + 28));
    v210 = (*(v375 + 208))(v209, v182);
    v211 = v210;
    v212 = v371;
    if (v209 == SPBeaconRoleIdOther && (v213 = (v362 + *(v208 + 36)), v213[1]) && v210)
    {
      v214 = v383;
      v215 = *v213;
      v216 = [v210 role];
      v217 = v360;
      if (!v216)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v216 = String._bridgeToObjectiveC()();
      }

      v218 = objc_allocWithZone(SPBeaconRole);
      v219 = String._bridgeToObjectiveC()();
      v220 = [v218 initWithRoleId:v209 role:v216 roleEmoji:v219];

      v169 = v379;
      [v379 setRole:v220];

      v221 = v214;
      v212 = v371;
    }

    else
    {
      [v169 setRole:v210];
      v217 = v360;
      v221 = v383;
    }

    sub_100022C40(v362, type metadata accessor for BeaconNamingRecord);
    v222 = v359;
    v223 = v358;
    goto LABEL_58;
  }

  sub_10000B3A8(v183, &unk_1016B29E0, &unk_1013B70E0);
  sub_10001F280(v396, &v385);
  v190 = swift_allocObject();
  *(v190 + 16) = v132;
  sub_10000A748(&v385, v190 + 24);

  sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
  unsafeFromAsyncTask<A>(_:)();

  v391 = v386;
  v392 = v387;
  v393 = v388;
  v394 = v389;
  v191 = v390;
  v395 = v390;
  if (*(&v386 + 1))
  {
    v192 = v383;
    v193 = v393;
    v194 = v182;
    v382 = *(&v394 + 1);
    v195 = v392;
    v196 = String._bridgeToObjectiveC()();
    [v169 setName:v196];

    v197 = (*(v375 + 208))(v195, v194);
    v198 = v197;
    if (v195 == SPBeaconRoleIdOther && v193 && v197)
    {

      v199 = [v198 role];
      if (!v199)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v199 = String._bridgeToObjectiveC()();
      }

      v200 = objc_allocWithZone(SPBeaconRole);
      v201 = String._bridgeToObjectiveC()();

      v202 = [v200 initWithRoleId:v195 role:v199 roleEmoji:v201];

      v169 = v379;
      [v379 setRole:v202];
    }

    else
    {
      [v169 setRole:v197];
    }

    v217 = v360;
    v223 = v358;
    v221 = v192;
    if (v191)
    {

      v224 = String._bridgeToObjectiveC()();
      sub_10000B3A8(&v391, &unk_1016AF910, &unk_10138C4C0);
    }

    else
    {
      sub_10000B3A8(&v391, &unk_1016AF910, &unk_10138C4C0);
      v224 = 0;
    }

    v212 = v371;
    [v169 setSerialNumber:v224];

    v222 = v359;
LABEL_58:
    v236 = v357;
    goto LABEL_59;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v225 = type metadata accessor for Logger();
  sub_1000076D4(v225, qword_10177BA08);
  sub_10001F280(v396, &v386);
  v226 = Logger.logObject.getter();
  v227 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v226, v227))
  {
    v228 = swift_slowAlloc();
    v229 = swift_slowAlloc();
    *&v385 = v229;
    *v228 = 141558275;
    *(v228 + 4) = 1752392040;
    *(v228 + 12) = 2081;
    sub_1000035D0(&v386, *(&v387 + 1));
    v230 = v382;
    (v377)(v182, v378);
    sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
    v231 = v383;
    v232 = dispatch thunk of CustomStringConvertible.description.getter();
    v234 = v233;
    v384(v230, v231);
    sub_100007BAC(&v386);
    v235 = sub_1000136BC(v232, v234, &v385);
    v169 = v379;

    *(v228 + 14) = v235;
    _os_log_impl(&_mh_execute_header, v226, v227, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v228, 0x16u);
    sub_100007BAC(v229);
  }

  else
  {

    sub_100007BAC(&v386);
  }

  v217 = v360;
  v212 = v371;
  v222 = v359;
  v223 = v358;
  v236 = v357;
  v263 = String._bridgeToObjectiveC()();
  [v169 setName:v263];

  v221 = v383;
LABEL_59:
  sub_10001F280(v396, &v391);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v237 = swift_dynamicCast();
  v238 = *(v356 + 56);
  if (!v237)
  {
    v238(v236, 1, 1, v223);
    sub_10000B3A8(v236, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v396, &v391);
    if ((swift_dynamicCast() & 1) == 0)
    {

      sub_10000B3A8(v372, &unk_1016AF8A0, &unk_10139D7C0);
      v212(v365, v376);
      sub_10000B3A8(v367, &unk_1016AA420, &unk_1013BCFE0);
      v384(v366, v221);
      (*(v337 + 56))(v222, 1, 1, v217);
      sub_10000B3A8(v222, &unk_101698C30, &unk_101392630);
      goto LABEL_95;
    }

    (*(v337 + 56))(v222, 0, 1, v217);
    v244 = v222;
    v245 = v361;
    sub_10002911C(v244, v361, type metadata accessor for SharedBeaconRecord);
    v246 = String._bridgeToObjectiveC()();
    [v169 setStableIdentifier:v246];

    v247 = sub_100EB3708(*(v245 + v217[7]), *(v245 + v217[7] + 8), *(v245 + v217[7] + 16));
    [v169 setOwner:v247];

    [v169 setAccepted:*(v245 + v217[13])];
    v248 = (v245 + v217[8]);
    v249 = *v248;
    v250 = v248[1];
    v251 = String._bridgeToObjectiveC()();
    [v169 setCorrelationIdentifier:v251];

    [v169 setInternalShareType:*(v245 + v217[16])];
    v252 = v245 + v217[20];
    v253 = v324;
    sub_1000D2A70(v252, v324, &unk_1016AF890, &qword_1013926D0);
    v254 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v254 - 8) + 48))(v253, 1, v254) == 1)
    {
      sub_10000B3A8(v253, &unk_1016AF890, &qword_1013926D0);
      (*(v364 + 56))(v323, 1, 1, v221);
      v255 = 0;
      v256 = v368;
    }

    else
    {
      v260 = v253 + *(v254 + 20);
      v261 = v323;
      sub_1000D2A70(v260, v323, &qword_1016980D0, &unk_10138F3B0);
      sub_100022C40(v253, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      v262 = (*(v364 + 48))(v261, 1, v221);
      v256 = v368;
      if (v262 == 1)
      {
        v255 = 0;
      }

      else
      {
        v264.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v265 = v261;
        v255 = v264.super.isa;
        v384(v265, v221);
      }
    }

    [v169 setOwnerBeaconIdentifier:v255];

    v266 = v325;
    sub_100022A54(v361, v325, type metadata accessor for SharedBeaconRecord);
    v267 = (*(v337 + 80) + 24) & ~*(v337 + 80);
    v268 = swift_allocObject();
    *(v268 + 16) = v369;
    sub_10002911C(v266, v268 + v267, type metadata accessor for SharedBeaconRecord);

    v269 = v330;
    unsafeFromAsyncTask<A>(_:)();

    v270 = v329;
    if ((*(v327 + 48))(v269, 1, v329) == 1)
    {
      v271 = v221;
      v272 = &unk_101698C20;
      v273 = &qword_101390748;
    }

    else
    {
      v274 = v269;
      v275 = v270;
      v276 = v322;
      sub_10002911C(v274, v322, type metadata accessor for KeyDropLostItemDates);
      v277 = v276 + *(v275 + 20);
      v269 = v320;
      sub_1000D2A70(v277, v320, &unk_101696900, &unk_10138B1E0);
      v278 = v376;
      if ((v338)(v269, 1, v376) != 1)
      {
        v292 = v221;
        v293 = v319;
        (v256[4])(v319, v269, v278);
        if (qword_101694480 != -1)
        {
          swift_once();
        }

        v294 = type metadata accessor for Logger();
        sub_1000076D4(v294, qword_10177A560);
        v295 = v318;
        sub_100022A54(v361, v318, type metadata accessor for SharedBeaconRecord);
        v296 = v256[2];
        v297 = v317;
        v296(v317, v293, v278);
        v298 = Logger.logObject.getter();
        v299 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v298, v299))
        {
          v300 = swift_slowAlloc();
          *&v391 = swift_slowAlloc();
          *v300 = 141558531;
          *(v300 + 4) = 1752392040;
          *(v300 + 12) = 2081;
          LODWORD(v382) = v299;
          v301 = v217[5];
          sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
          v302 = dispatch thunk of CustomStringConvertible.description.getter();
          v304 = v303;
          sub_100022C40(v295, type metadata accessor for SharedBeaconRecord);
          v305 = sub_1000136BC(v302, v304, &v391);

          *(v300 + 14) = v305;
          *(v300 + 22) = 2080;
          sub_10000768C(&qword_1016969A0, &type metadata accessor for Date);
          v306 = dispatch thunk of CustomStringConvertible.description.getter();
          v308 = v307;
          v309 = v297;
          v310 = v371;
          v371(v309, v278);
          v311 = sub_1000136BC(v306, v308, &v391);

          *(v300 + 24) = v311;
          _os_log_impl(&_mh_execute_header, v298, v382, "Lost mode is enabled for shared beacon %{private,mask.hash}s\nwith timestamp of %s.", v300, 0x20u);
          swift_arrayDestroy();
          v169 = v379;

          v293 = v319;
        }

        else
        {

          v312 = v297;
          v310 = v371;
          v371(v312, v278);
          sub_100022C40(v295, type metadata accessor for SharedBeaconRecord);
        }

        v313 = objc_allocWithZone(SPLostModeInfo);
        v314 = Date._bridgeToObjectiveC()().super.isa;
        v315 = [v313 initWithMessage:0 email:0 phoneNumber:0 timestamp:v314];

        [v169 setLostModeInfo:v315];

        v310(v293, v278);
        sub_100022C40(v322, type metadata accessor for KeyDropLostItemDates);
        sub_10000B3A8(v372, &unk_1016AF8A0, &unk_10139D7C0);
        v310(v365, v278);
        sub_10000B3A8(v367, &unk_1016AA420, &unk_1013BCFE0);
        v290 = v366;
        v291 = v292;
        goto LABEL_93;
      }

      v271 = v221;
      sub_100022C40(v276, type metadata accessor for KeyDropLostItemDates);
      v272 = &unk_101696900;
      v273 = &unk_10138B1E0;
    }

    sub_10000B3A8(v269, v272, v273);
    [v169 setLostModeInfo:0];
    v279 = v321;
    if (qword_101694480 != -1)
    {
      swift_once();
    }

    v280 = type metadata accessor for Logger();
    sub_1000076D4(v280, qword_10177A560);
    sub_100022A54(v361, v279, type metadata accessor for SharedBeaconRecord);
    v281 = Logger.logObject.getter();
    v282 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v281, v282))
    {
      v283 = swift_slowAlloc();
      v284 = swift_slowAlloc();
      *&v391 = v284;
      *v283 = 141558275;
      *(v283 + 4) = 1752392040;
      *(v283 + 12) = 2081;
      v285 = v217[5];
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v286 = dispatch thunk of CustomStringConvertible.description.getter();
      v288 = v287;
      sub_100022C40(v279, type metadata accessor for SharedBeaconRecord);
      v289 = sub_1000136BC(v286, v288, &v391);

      *(v283 + 14) = v289;
      _os_log_impl(&_mh_execute_header, v281, v282, "Lost mode is not enabled for shared beacon %{private,mask.hash}s.", v283, 0x16u);
      sub_100007BAC(v284);
      v169 = v379;

      sub_10000B3A8(v372, &unk_1016AF8A0, &unk_10139D7C0);
      v212(v365, v376);
      sub_10000B3A8(v367, &unk_1016AA420, &unk_1013BCFE0);
      v384(v366, v271);
LABEL_94:
      sub_100022C40(v361, type metadata accessor for SharedBeaconRecord);
      goto LABEL_95;
    }

    sub_100022C40(v279, type metadata accessor for SharedBeaconRecord);
    sub_10000B3A8(v372, &unk_1016AF8A0, &unk_10139D7C0);
    v212(v365, v376);
    sub_10000B3A8(v367, &unk_1016AA420, &unk_1013BCFE0);
    v290 = v366;
    v291 = v271;
LABEL_93:
    v384(v290, v291);
    goto LABEL_94;
  }

  v238(v236, 0, 1, v223);
  v239 = v336;
  sub_10002911C(v236, v336, type metadata accessor for OwnedBeaconRecord);
  v240 = v239 + v223[6];
  sub_1010DA578();
  v241 = String._bridgeToObjectiveC()();

  [v169 setStableIdentifier:v241];

  v242 = v335;
  sub_1000D2A70(v239 + v223[7], v335, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v364 + 48))(v242, 1, v221) == 1)
  {
    v243 = 0;
  }

  else
  {
    v243 = UUID._bridgeToObjectiveC()().super.isa;
    v384(v242, v221);
  }

  [v169 setGroupIdentifier:v243];

  sub_100B0E4A8(v239);
  if (v257)
  {
    v258 = String._bridgeToObjectiveC()();
  }

  else
  {
    v258 = 0;
  }

  [v169 setSerialNumber:v258];

  [v169 setPartIdentifier:sub_100B0E7A8(v239)];
  [v169 setBatteryLevel:*(v239 + v223[19])];
  [v169 setIsZeus:*(v239 + v223[20])];
  if (qword_101694E80 != -1)
  {
    swift_once();
  }

  [v169 setOwner:qword_10177C088];
  [v169 setAccepted:1];
  v259 = String._bridgeToObjectiveC()();
  [v169 setCorrelationIdentifier:v259];

  [v169 setInternalShareType:-1];
  [v169 setOwnerBeaconIdentifier:0];

  sub_100022C40(v239, type metadata accessor for OwnedBeaconRecord);
  sub_10000B3A8(v372, &unk_1016AF8A0, &unk_10139D7C0);
  v212(v365, v376);
  sub_10000B3A8(v367, &unk_1016AA420, &unk_1013BCFE0);
  v384(v366, v221);
LABEL_95:
  sub_100007BAC(v396);
  return v169;
}

uint64_t sub_100B039C0(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v13 = a4;
  v14 = a5;
  v9 = sub_1000280DC(&v12);
  (*(*(a4 - 8) + 32))(v9, a2, a4);
  v10 = *a3;
  *(v10 + 16) = a1 + 1;
  return sub_10000A748(&v12, v10 + 40 * a1 + 32);
}

uint64_t sub_100B03A58(uint64_t a1, uint64_t a2, char a3, int a4, int a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v26 = a4;
  v27 = a5;
  v14 = type metadata accessor for DateInterval();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v29[3] = a7;
  v29[4] = a8;
  v17 = sub_1000280DC(v29);
  (*(*(a7 - 8) + 16))(v17, a1, a7);
  v18 = *(a6 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_beaconKeyManagerLock);
  type metadata accessor for BeaconKeyManager(0);
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v19 = v28;
  sub_10001F280(v29, &v28);
  (*(v15 + 16))(&v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v14);
  v20 = (*(v15 + 80) + 64) & ~*(v15 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = v19;
  sub_10000A748(&v28, v21 + 24);
  (*(v15 + 32))(v21 + v20, &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0), v14);
  v22 = (v21 + v20 + v16);
  *v22 = a3 & 1;
  v23 = v27;
  v22[1] = v26;
  v22[2] = v23;

  unsafeFromAsyncTask<A>(_:)();

  v24 = v28;
  sub_100007BAC(v29);
  return v24;
}

uint64_t sub_100B03CB0()
{
  v1 = v0;
  v2 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 23) & 0xFFFFFFFFFFFFFFF8;
  v6 = v0 + v4;
  v7 = *v6;
  v8 = *(v6 + 8);
  v9 = v0 + v5;
  v10 = *(v0 + v5);
  v11 = *(v9 + 8);
  v10(0, 0);

  return sub_100AE8F9C(v1 + v3, v7, v8);
}

uint64_t sub_100B03D84(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }
}

uint64_t sub_100B03DD0()
{
  v1 = *(type metadata accessor for CloudKitChangeSet(0) - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 47) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + ((v6 + 23) & 0xFFFFFFFFFFFFFFF8));
  return sub_100AE97C0(*(v0 + 16), v0 + v2, *(v0 + v3), *(v0 + v3 + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8)), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 8), *(v0 + ((v3 + 23) & 0xFFFFFFFFFFFFFFF8) + 16), *(v0 + v4), *(v0 + v5), *(v0 + v6), *(v0 + v6 + 8));
}

uint64_t sub_100B03EB0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {

    return swift_errorRetain();
  }

  else
  {
  }
}

double sub_100B03EFC(double a1)
{
  v1 = a1;
  if (a1 < 4.0)
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v2 = swift_allocObject();
    *(v2 + 16) = xmmword_10138BBE0;
    *(v2 + 56) = &type metadata for Double;
    *(v2 + 64) = &protocol witness table for Double;
    *(v2 + 32) = v1;
    *(v2 + 96) = &type metadata for Double;
    *(v2 + 104) = &protocol witness table for Double;
    *(v2 + 72) = 0x4010000000000000;
    os_log(_:dso:log:_:_:)();
    v1 = 4.0;
LABEL_9:

    return v1;
  }

  if (a1 > 20.0)
  {
    static os_log_type_t.error.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v3 = swift_allocObject();
    *(v3 + 16) = xmmword_10138BBE0;
    *(v3 + 56) = &type metadata for Double;
    *(v3 + 64) = &protocol witness table for Double;
    *(v3 + 32) = v1;
    *(v3 + 96) = &type metadata for Double;
    *(v3 + 104) = &protocol witness table for Double;
    *(v3 + 72) = 0x4034000000000000;
    os_log(_:dso:log:_:_:)();
    v1 = 20.0;
    goto LABEL_9;
  }

  return v1;
}

uint64_t sub_100B040D4()
{
  if (qword_101694B98 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000076D4(v0, qword_10177B810);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "Posting SPManagedCBPeripheralChanged from BeaconStore.", v3, 2u);
  }

  return static DarwinNotification.post(name:)();
}

Swift::Int sub_100B041C8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016A5A68, &qword_1013B3588);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v31 = a1 + 32;
    v30 = v1;
    while (1)
    {
      v6 = *(v31 + v4);
      v7 = *(v3 + 40);
      Hasher.init(_seed:)();
      sub_1012C5AB0(v6);
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        while (1)
        {
          v14 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E75;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v15 = 0xD000000000000015;
              v14 = 0x8000000101347FF0;
              break;
            case 2:
              v15 = 0xD000000000000016;
              v14 = 0x8000000101348010;
              break;
            case 3:
              v14 = 0xE600000000000000;
              v15 = 0x657461636F6CLL;
              break;
            case 4:
              v14 = 0xEC000000676E6972;
              v15 = 0x6168537472617473;
              break;
            case 5:
              v15 = 0x72616853706F7473;
              goto LABEL_21;
            case 6:
              v17 = 2036427888;
              goto LABEL_25;
            case 7:
              v17 = 1886352499;
LABEL_25:
              v15 = v17 | 0x6E756F5300000000;
              v14 = 0xE900000000000064;
              break;
            case 8:
              v15 = 0x61654C6E69676562;
              v14 = 0xED0000676E696873;
              break;
            case 9:
              v15 = 0x687361654C646E65;
LABEL_21:
              v14 = 0xEB00000000676E69;
              break;
            case 0xA:
              v15 = 0x4654426E69676562;
              v14 = 0xEE00676E69646E69;
              break;
            case 0xB:
              v15 = 0x6E69465442646E65;
              v16 = 1735289188;
              goto LABEL_32;
            case 0xC:
              v14 = 0xEC000000676E6967;
              v15 = 0x6E61526E69676562;
              break;
            case 0xD:
              v15 = 0x69676E6152646E65;
              v14 = 0xEA0000000000676ELL;
              break;
            case 0xE:
              v15 = 0x6F4C656C62616E65;
              v14 = 0xEE0065646F4D7473;
              break;
            case 0xF:
              v15 = 0x4C656C6261736964;
              v14 = 0xEF65646F4D74736FLL;
              break;
            case 0x10:
              v14 = 0xE600000000000000;
              v15 = 0x656D616E6572;
              break;
            case 0x11:
              v15 = 0x7463656E6E6F63;
              break;
            case 0x12:
              v14 = 0xEA00000000007463;
              v15 = 0x656E6E6F63736964;
              break;
            case 0x13:
              v15 = 0xD000000000000017;
              v14 = 0x80000001013480F0;
              break;
            case 0x14:
              v14 = 0xE600000000000000;
              v15 = 0x726961706E75;
              break;
            case 0x15:
              v15 = 0x65746167656C6564;
              v14 = 0xEE00657261685364;
              break;
            case 0x16:
              v15 = 0xD000000000000013;
              v14 = 0x8000000101348120;
              break;
            case 0x17:
              v15 = 0x6F69736963657270;
              v16 = 1481004654;
LABEL_32:
              v14 = v16 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              break;
            default:
              break;
          }

          v18 = 0xE700000000000000;
          v19 = 0x6E776F6E6B6E75;
          switch(v6)
          {
            case 1:
              v18 = 0x8000000101347FF0;
              if (v15 == 0xD000000000000015)
              {
                goto LABEL_76;
              }

              goto LABEL_77;
            case 2:
              v18 = 0x8000000101348010;
              if (v15 != 0xD000000000000016)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 3:
              v18 = 0xE600000000000000;
              if (v15 != 0x657461636F6CLL)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 4:
              v18 = 0xEC000000676E6972;
              if (v15 != 0x6168537472617473)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 5:
              v24 = 0x72616853706F7473;
              goto LABEL_57;
            case 6:
              v25 = 2036427888;
              goto LABEL_63;
            case 7:
              v25 = 1886352499;
LABEL_63:
              v18 = 0xE900000000000064;
              if (v15 != (v25 | 0x6E756F5300000000))
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 8:
              v18 = 0xED0000676E696873;
              if (v15 != 0x61654C6E69676562)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 9:
              v24 = 0x687361654C646E65;
LABEL_57:
              v18 = 0xEB00000000676E69;
              if (v15 != v24)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 10:
              v20 = 0x4654426E69676562;
              v21 = 0x676E69646E69;
              goto LABEL_68;
            case 11:
              v22 = 0x6E69465442646E65;
              v23 = 1735289188;
              goto LABEL_81;
            case 12:
              v18 = 0xEC000000676E6967;
              if (v15 != 0x6E61526E69676562)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 13:
              v18 = 0xEA0000000000676ELL;
              if (v15 != 0x69676E6152646E65)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 14:
              v20 = 0x6F4C656C62616E65;
              v21 = 0x65646F4D7473;
              goto LABEL_68;
            case 15:
              v18 = 0xEF65646F4D74736FLL;
              if (v15 != 0x4C656C6261736964)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 16:
              v18 = 0xE600000000000000;
              if (v15 != 0x656D616E6572)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 17:
              if (v15 != 0x7463656E6E6F63)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 18:
              v18 = 0xEA00000000007463;
              if (v15 != 0x656E6E6F63736964)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 19:
              v19 = 0xD000000000000017;
              v18 = 0x80000001013480F0;
              goto LABEL_75;
            case 20:
              v18 = 0xE600000000000000;
              if (v15 != 0x726961706E75)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 21:
              v20 = 0x65746167656C6564;
              v21 = 0x657261685364;
LABEL_68:
              v18 = v21 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v15 != v20)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 22:
              v18 = 0x8000000101348120;
              if (v15 != 0xD000000000000013)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            case 23:
              v22 = 0x6F69736963657270;
              v23 = 1481004654;
LABEL_81:
              v18 = v23 & 0xFFFFFFFFFFFFLL | 0xEC00000000000000;
              if (v15 != v22)
              {
                goto LABEL_77;
              }

              goto LABEL_76;
            default:
LABEL_75:
              if (v15 != v19)
              {
                goto LABEL_77;
              }

LABEL_76:
              if (v14 == v18)
              {

                goto LABEL_4;
              }

LABEL_77:
              v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v26)
              {
                goto LABEL_4;
              }

              v10 = (v10 + 1) & v9;
              v11 = v10 >> 6;
              v12 = *(v5 + 8 * (v10 >> 6));
              v13 = 1 << v10;
              if ((v12 & (1 << v10)) == 0)
              {
                goto LABEL_83;
              }

              break;
          }
        }
      }

LABEL_83:
      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v27 = *(v3 + 16);
      v28 = __OFADD__(v27, 1);
      v29 = v27 + 1;
      if (v28)
      {
        break;
      }

      *(v3 + 16) = v29;
LABEL_4:
      if (++v4 == v30)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

Swift::Int sub_100B04978(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&qword_1016B54C8, &qword_1013D6910);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = a1 + 32;
    v26 = v1;
    while (1)
    {
      v6 = *(v27 + v4);
      v7 = *(v3 + 40);
      Hasher.init(_seed:)();
      sub_10125403C(v6);
      String.hash(into:)();

      result = Hasher._finalize()();
      v9 = ~(-1 << *(v3 + 32));
      v10 = result & v9;
      v11 = (result & v9) >> 6;
      v12 = *(v5 + 8 * v11);
      v13 = 1 << (result & v9);
      if ((v13 & v12) != 0)
      {
        while (1)
        {
          v14 = 0xE700000000000000;
          v15 = 0x7972616D697270;
          switch(*(*(v3 + 48) + v10))
          {
            case 1:
              v14 = 0xE900000000000079;
              v15 = 0x7261646E6F636573;
              break;
            case 2:
              v15 = 0xD000000000000019;
              v14 = 0x8000000101348160;
              break;
            case 3:
              v15 = 0xD00000000000001BLL;
              v14 = 0x8000000101348180;
              break;
            case 4:
              v15 = 0x646E7542646C6977;
              v14 = 0xEA0000000000656CLL;
              break;
            case 5:
              v15 = 0x417972616D697270;
              v14 = 0xEE00737365726464;
              break;
            case 6:
              v15 = 0xD000000000000010;
              v14 = 0x80000001013481C0;
              break;
            case 7:
              v15 = 0xD000000000000012;
              v14 = 0x80000001013475D0;
              break;
            case 8:
              v15 = 0xD000000000000011;
              v14 = 0x80000001013475F0;
              break;
            case 9:
              v15 = 0x697463656E6E6F63;
              v14 = 0xED000079654B6E6FLL;
              break;
            case 0xA:
              v15 = 0x656E774F7261656ELL;
              v14 = 0xEC00000079654B72;
              break;
            case 0xB:
              v15 = 0x656B6F546E696F6ALL;
              v14 = 0xE90000000000006ELL;
              break;
            case 0xC:
              v15 = 0xD000000000000015;
              v14 = 0x80000001013481F0;
              break;
            case 0xD:
              v15 = 0xD000000000000010;
              v14 = 0x8000000101348210;
              break;
            case 0xE:
              v15 = 0x7461636F4C626577;
              v14 = 0xEE0079654B6E6F69;
              break;
            case 0xF:
              v15 = 0x646174654D626577;
              v14 = 0xEB00000000617461;
              break;
            case 0x10:
              v15 = 0x6D65744974736F6CLL;
              v14 = 0xED00007365746144;
              break;
            case 0x11:
              v15 = 0xD000000000000014;
              v14 = 0x8000000101348240;
              break;
            case 0x12:
              v15 = 0xD000000000000016;
              v14 = 0x8000000101348260;
              break;
            default:
              break;
          }

          v16 = 0xE700000000000000;
          v17 = 0x7972616D697270;
          switch(v6)
          {
            case 1:
              v16 = 0xE900000000000079;
              if (v15 == 0x7261646E6F636573)
              {
                goto LABEL_60;
              }

              goto LABEL_61;
            case 2:
              v16 = 0x8000000101348160;
              if (v15 != 0xD000000000000019)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 3:
              v16 = 0x8000000101348180;
              if (v15 != 0xD00000000000001BLL)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 4:
              v16 = 0xEA0000000000656CLL;
              if (v15 != 0x646E7542646C6977)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 5:
              v20 = 0x417972616D697270;
              v21 = 0x737365726464;
              goto LABEL_50;
            case 6:
              v16 = 0x80000001013481C0;
              if (v15 != 0xD000000000000010)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 7:
              v16 = 0x80000001013475D0;
              if (v15 != 0xD000000000000012)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 8:
              v16 = 0x80000001013475F0;
              if (v15 != 0xD000000000000011)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 9:
              v18 = 0x697463656E6E6F63;
              v19 = 0x79654B6E6FLL;
              goto LABEL_37;
            case 10:
              v17 = 0x656E774F7261656ELL;
              v16 = 0xEC00000079654B72;
              goto LABEL_59;
            case 11:
              v16 = 0xE90000000000006ELL;
              if (v15 != 0x656B6F546E696F6ALL)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 12:
              v16 = 0x80000001013481F0;
              if (v15 != 0xD000000000000015)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 13:
              v16 = 0x8000000101348210;
              if (v15 != 0xD000000000000010)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 14:
              v20 = 0x7461636F4C626577;
              v21 = 0x79654B6E6F69;
LABEL_50:
              v16 = v21 & 0xFFFFFFFFFFFFLL | 0xEE00000000000000;
              if (v15 != v20)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 15:
              v16 = 0xEB00000000617461;
              if (v15 != 0x646174654D626577)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 16:
              v18 = 0x6D65744974736F6CLL;
              v19 = 0x7365746144;
LABEL_37:
              v16 = v19 & 0xFFFFFFFFFFFFLL | 0xED00000000000000;
              if (v15 != v18)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 17:
              v16 = 0x8000000101348240;
              if (v15 != 0xD000000000000014)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            case 18:
              v16 = 0x8000000101348260;
              if (v15 != 0xD000000000000016)
              {
                goto LABEL_61;
              }

              goto LABEL_60;
            default:
LABEL_59:
              if (v15 != v17)
              {
                goto LABEL_61;
              }

LABEL_60:
              if (v14 == v16)
              {

                goto LABEL_4;
              }

LABEL_61:
              v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v22)
              {
                goto LABEL_4;
              }

              v10 = (v10 + 1) & v9;
              v11 = v10 >> 6;
              v12 = *(v5 + 8 * (v10 >> 6));
              v13 = 1 << v10;
              if ((v12 & (1 << v10)) == 0)
              {
                goto LABEL_66;
              }

              break;
          }
        }
      }

LABEL_66:
      *(v5 + 8 * v11) = v12 | v13;
      *(*(v3 + 48) + v10) = v6;
      v23 = *(v3 + 16);
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
        break;
      }

      *(v3 + 16) = v25;
LABEL_4:
      if (++v4 == v26)
      {
        return v3;
      }
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

void *sub_100B05044(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1000BC4D4(&qword_1016A59A0, &unk_1013B34C0);
    v10 = static _SetStorage.allocate(capacity:)();
    v11 = 0;
    v13 = *(v3 + 16);
    v12 = v3 + 16;
    v37 = v13;
    v38 = v10 + 56;
    v14 = *(v12 + 64);
    v34 = v9;
    v35 = a1 + ((v14 + 32) & ~v14);
    v15 = *(v12 + 56);
    v16 = (v12 - 8);
    v33 = (v12 + 16);
    while (1)
    {
      v36 = v11;
      v37(v39, v35 + v15 * v11, v2);
      v17 = *(v10 + 40);
      sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);
      v18 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v19 = ~(-1 << *(v10 + 32));
      v20 = v18 & v19;
      v21 = (v18 & v19) >> 6;
      v22 = *(v38 + 8 * v21);
      v23 = 1 << (v18 & v19);
      if ((v23 & v22) != 0)
      {
        while (1)
        {
          v24 = v12;
          v37(v7, *(v10 + 48) + v20 * v15, v2);
          sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v7, v2);
          if (v25)
          {
            break;
          }

          v20 = (v20 + 1) & v19;
          v21 = v20 >> 6;
          v22 = *(v38 + 8 * (v20 >> 6));
          v23 = 1 << v20;
          v12 = v24;
          if (((1 << v20) & v22) == 0)
          {
            goto LABEL_8;
          }
        }

        v26(v39, v2);
        v12 = v24;
      }

      else
      {
LABEL_8:
        v27 = v39;
        *(v38 + 8 * v21) = v23 | v22;
        result = (*v33)(*(v10 + 48) + v20 * v15, v27, v2);
        v29 = *(v10 + 16);
        v30 = __OFADD__(v29, 1);
        v31 = v29 + 1;
        if (v30)
        {
          __break(1u);
          return result;
        }

        *(v10 + 16) = v31;
      }

      v11 = v36 + 1;
      if (v36 + 1 == v34)
      {
        return v10;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void *sub_100B05364(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for SystemInfo.DeviceLockState();
  v5 = *(v84 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v84);
  v83 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v82 = &v61 - v9;
  v10 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v61 - v12;
  v81 = type metadata accessor for OwnedBeaconRecord();
  v14 = *(v81 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v81);
  v62 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  __chkstk_darwin(v17);
  v86 = &v61 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1000BC4D4(&qword_1016B54A8, &qword_1013D6838);
  v79 = *(v21 - 8);
  v80 = v21;
  v22 = *(v79 + 64);
  __chkstk_darwin(v21);
  v78 = (&v61 - v23);
  v24 = *(a1 + 16);
  if (!v24)
  {
    return _swiftEmptyArrayStorage;
  }

  v66 = a2;
  v85 = v2;
  v94 = _swiftEmptyArrayStorage;
  sub_101124BB4(0, v24, 0);
  v25 = -1 << *(a1 + 32);
  v92 = a1 + 56;
  v93 = v94;
  result = _HashTable.startBucket.getter();
  v27 = v5;
  v28 = result;
  v29 = 0;
  v74 = v18 + 16;
  v73 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v72 = (v27 + 104);
  v71 = (v27 + 8);
  v65 = (v14 + 48);
  v64 = (v14 + 56);
  v70 = (v18 + 8);
  v63 = a1 + 64;
  v69 = xmmword_101385D80;
  v30 = v86;
  v76 = v13;
  v77 = a1;
  v75 = v17;
  v68 = v18;
  v67 = v24;
  while ((v28 & 0x8000000000000000) == 0 && v28 < 1 << *(a1 + 32))
  {
    if ((*(v92 + 8 * (v28 >> 6)) & (1 << v28)) == 0)
    {
      goto LABEL_30;
    }

    v89 = 1 << v28;
    v90 = v28 >> 6;
    v33 = *(a1 + 36);
    v87 = v29;
    v88 = v33;
    (*(v18 + 16))(v30, *(a1 + 48) + *(v18 + 72) * v28, v17);
    v91 = *(v80 + 48);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v34 = swift_allocObject();
    *(v34 + 16) = v69;
    v35 = v30;
    v36 = UUID.uuidString.getter();
    v38 = v37;
    *(v34 + 56) = &type metadata for String;
    *(v34 + 64) = sub_100008C00();
    *(v34 + 32) = v36;
    *(v34 + 40) = v38;
    os_log(_:dso:log:_:_:)();

    v39 = v82;
    static SystemInfo.lockState.getter();
    v41 = v83;
    v40 = v84;
    (*v72)(v83, v73, v84);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    v42 = dispatch thunk of static Equatable.== infix(_:_:)();
    v43 = *v71;
    (*v71)(v41, v40);
    v43(v39, v40);
    if (v42)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v44 = v76;
      (*v64)(v76, 1, 1, v81);
LABEL_13:
      a1 = v77;
      v47 = v78;
      v17 = v75;
      sub_10000B3A8(v44, &unk_1016A9A20, &qword_10138B280);
      static Date.distantPast.getter();
      v48 = 0;
      goto LABEL_15;
    }

    v45 = sub_100025044();
    __chkstk_darwin(v45);
    *(&v61 - 2) = v35;
    v44 = v76;
    v46 = v85;
    sub_1012BBBD0(sub_100B27F94, v45, v76);
    v85 = v46;

    if ((*v65)(v44, 1, v81) == 1)
    {
      goto LABEL_13;
    }

    v49 = v62;
    sub_10002911C(v44, v62, type metadata accessor for OwnedBeaconRecord);
    v47 = v78;
    v48 = sub_100AD43C8(v78 + v91, v49);
    sub_100022C40(v49, type metadata accessor for OwnedBeaconRecord);
    a1 = v77;
    v17 = v75;
LABEL_15:
    v30 = v86;
    *v47 = v48;
    (*v70)(v30, v17);
    v50 = v93;
    v94 = v93;
    v52 = v93[2];
    v51 = v93[3];
    if (v52 >= v51 >> 1)
    {
      sub_101124BB4(v51 > 1, v52 + 1, 1);
      v30 = v86;
      v50 = v94;
    }

    v50[2] = v52 + 1;
    v53 = (*(v79 + 80) + 32) & ~*(v79 + 80);
    v93 = v50;
    result = sub_1000D2AD8(v47, v50 + v53 + *(v79 + 72) * v52, &qword_1016B54A8, &qword_1013D6838);
    v31 = 1 << *(a1 + 32);
    if (v28 >= v31)
    {
      goto LABEL_31;
    }

    v54 = *(v92 + 8 * v90);
    if ((v54 & v89) == 0)
    {
      goto LABEL_32;
    }

    if (v88 != *(a1 + 36))
    {
      goto LABEL_33;
    }

    v55 = v54 & (-2 << (v28 & 0x3F));
    if (v55)
    {
      v31 = __clz(__rbit64(v55)) | v28 & 0x7FFFFFFFFFFFFFC0;
      v32 = v67;
    }

    else
    {
      v56 = v90 << 6;
      v57 = v90 + 1;
      v58 = (v63 + 8 * v90);
      v32 = v67;
      while (v57 < (v31 + 63) >> 6)
      {
        v60 = *v58++;
        v59 = v60;
        v56 += 64;
        ++v57;
        if (v60)
        {
          result = sub_10040BA00(v28, v88, 0);
          v31 = __clz(__rbit64(v59)) + v56;
          goto LABEL_26;
        }
      }

      result = sub_10040BA00(v28, v88, 0);
LABEL_26:
      v30 = v86;
    }

    v29 = v87 + 1;
    v28 = v31;
    v18 = v68;
    if (v87 + 1 == v32)
    {
      return v93;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
  return result;
}

void *sub_100B05C44(uint64_t a1, char a2, char a3, int a4)
{
  v59 = a4;
  v7 = type metadata accessor for StableIdentifier();
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7);
  v10 = &v58[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = &v58[-v13];
  v15 = type metadata accessor for OwnedBeaconRecord();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  v18 = __chkstk_darwin(v15);
  v20 = &v58[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v21 = __chkstk_darwin(v18);
  v23 = &v58[-v22];
  v61[3] = v21;
  v61[4] = sub_10000768C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v24 = sub_1000280DC(v61);
  sub_100022A54(a1, v24, type metadata accessor for OwnedBeaconRecord);
  sub_10001F280(v61, v60);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v25 = swift_dynamicCast();
  v26 = *(v16 + 56);
  if (!v25)
  {
    v26(v14, 1, 1, v15);
    sub_10000B3A8(v14, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_16;
  }

  v26(v14, 0, 1, v15);
  sub_10002911C(v14, v23, type metadata accessor for OwnedBeaconRecord);
  sub_100022A54(&v23[*(v15 + 24)], v10, type metadata accessor for StableIdentifier);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload == 2)
  {
    v36 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
    v37 = *&v10[v36[12] + 8];

    v38 = *&v10[v36[16] + 8];

    v39 = *&v10[v36[20] + 8];

    v40 = &v10[v36[24]];
    v41 = *v40;
    v42 = v40[1];
    v43 = *&v10[v36[28] + 8];

    if ((v42 & 1) == 0)
    {
      v33 = a2 & 1;
      v34 = a3 & 1;
      v35 = v59 & 1;
      v32 = v41;
      goto LABEL_13;
    }

    sub_100022C40(v23, type metadata accessor for OwnedBeaconRecord);
    v44 = type metadata accessor for UUID();
    (*(*(v44 - 8) + 8))(v10, v44);
LABEL_16:
    v55 = &_swiftEmptySetSingleton;
    goto LABEL_17;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (qword_101694BF8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_10177BA38);
    sub_100022A54(v23, v20, type metadata accessor for OwnedBeaconRecord);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v60[0] = v49;
      *v48 = 141558275;
      *(v48 + 4) = 1752392040;
      *(v48 + 12) = 2081;
      v50 = &v20[*(v15 + 24)];
      v51 = sub_1010DA578();
      v53 = v52;
      sub_100022C40(v20, type metadata accessor for OwnedBeaconRecord);
      v54 = sub_1000136BC(v51, v53, v60);

      *(v48 + 14) = v54;
      _os_log_impl(&_mh_execute_header, v46, v47, "nearbyParts: Invalid stableIdentifier %{private,mask.hash}s", v48, 0x16u);
      sub_100007BAC(v49);
    }

    else
    {

      sub_100022C40(v20, type metadata accessor for OwnedBeaconRecord);
    }

    sub_100022C40(v23, type metadata accessor for OwnedBeaconRecord);
    sub_100022C40(v10, type metadata accessor for StableIdentifier);
    goto LABEL_16;
  }

  v28 = sub_1000BC4D4(&qword_1016B1670, &unk_10139D790);
  v29 = *&v10[v28[12] + 8];

  v30 = *&v10[v28[16] + 8];

  v31 = *&v10[v28[20] + 8];

  v32 = v10[v28[24]];
  v33 = a2 & 1;
  v34 = a3 & 1;
  v35 = v59 & 1;
LABEL_13:
  v55 = sub_100165BD4(v32, v33, v34, v35);
  sub_100022C40(v23, type metadata accessor for OwnedBeaconRecord);
  v56 = type metadata accessor for UUID();
  (*(*(v56 - 8) + 8))(v10, v56);
LABEL_17:
  sub_100007BAC(v61);
  return v55;
}

uint64_t sub_100B06298(uint64_t a1, int a2, int a3, int a4, uint64_t a5)
{
  v113 = a5;
  LODWORD(v107) = a4;
  LODWORD(v106) = a3;
  LODWORD(v105) = a2;
  v117 = type metadata accessor for SystemInfo.DeviceLockState();
  v108 = *(v117 - 8);
  v6 = *(v108 + 64);
  v7 = __chkstk_darwin(v117);
  v116 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v115 = &v89 - v9;
  v10 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v13 = &v89 - v12;
  v112 = type metadata accessor for OwnedBeaconGroup(0);
  v110 = *(v112 - 1);
  v14 = v110[8];
  __chkstk_darwin(v112);
  v109 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v19 = &v89 - v18;
  v20 = type metadata accessor for UUID();
  v21 = *(v20 - 8);
  v22 = *(v21 + 64);
  v23 = __chkstk_darwin(v20);
  v118 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v111 = &v89 - v25;
  v26 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v27 = *(*(v26 - 8) + 64);
  v28 = __chkstk_darwin(v26 - 8);
  v114 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v28);
  v31 = &v89 - v30;
  v32 = type metadata accessor for OwnedBeaconRecord();
  v33 = *(v32 - 8);
  v34 = *(v33 + 64);
  v35 = __chkstk_darwin(v32);
  v119 = &v89 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v37 = __chkstk_darwin(v35);
  v39 = &v89 - v38;
  v40 = __chkstk_darwin(v37);
  v104 = &v89 - v41;
  v42 = __chkstk_darwin(v40);
  v44 = &v89 - v43;
  v122[3] = v42;
  v122[4] = sub_10000768C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v45 = sub_1000280DC(v122);
  sub_100022A54(a1, v45, type metadata accessor for OwnedBeaconRecord);
  sub_10001F280(v122, &v121);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v46 = swift_dynamicCast();
  v120 = v33;
  v49 = *(v33 + 56);
  v48 = v33 + 56;
  v47 = v49;
  if (!v46)
  {
    v47(v31, 1, 1, v32);
    sub_10000B3A8(v31, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_5;
  }

  v47(v31, 0, 1, v32);
  sub_10002911C(v31, v44, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(&v44[*(v32 + 28)], v19, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v21 + 48))(v19, 1, v20) == 1)
  {
    sub_10000B3A8(v19, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v44, type metadata accessor for OwnedBeaconRecord);
LABEL_5:
    v50 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v103 = v32;
  v92 = v44;
  v52 = v111;
  (*(v21 + 32))(v111, v19, v20);
  sub_100AC53EC(v52, v13);
  if ((v110[6])(v13, 1, v112) == 1)
  {
    sub_10000B3A8(v13, &unk_1016AF8B0, &unk_1013A0700);
    (*(v21 + 8))(v52, v20);
    sub_100022C40(v92, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_5;
  }

  v90 = v47;
  v91 = v48;
  sub_10002911C(v13, v109, type metadata accessor for OwnedBeaconGroup);
  v53 = sub_100B05C44(v92, v105 & 1, v106 & 1, v107 & 1);
  v54 = sub_100519FB0();
  v55 = v53;
  v56 = v54 + 56;
  v57 = 1 << *(v54 + 32);
  v58 = -1;
  if (v57 < 64)
  {
    v58 = ~(-1 << v57);
  }

  v59 = v58 & *(v54 + 56);
  v60 = (v57 + 63) >> 6;
  v99 = v21 + 16;
  v98 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v97 = (v108 + 104);
  v96 = (v108 + 8);
  v105 = v21;
  v106 = (v21 + 8);
  v94 = (v120 + 48);
  v107 = v54;

  v61 = 0;
  v93 = xmmword_101385D80;
  v112 = _swiftEmptyArrayStorage;
  v62 = v118;
  v110 = v53;
  v101 = v56;
  v102 = v20;
  v100 = v60;
  v95 = v39;
  while (v59)
  {
    v63 = v61;
LABEL_17:
    (*(v105 + 16))(v62, *(v107 + 48) + *(v105 + 72) * (__clz(__rbit64(v59)) | (v63 << 6)), v20);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v64 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v65 = swift_allocObject();
    *(v65 + 16) = v93;
    v66 = UUID.uuidString.getter();
    v68 = v67;
    *(v65 + 56) = &type metadata for String;
    *(v65 + 64) = sub_100008C00();
    *(v65 + 32) = v66;
    *(v65 + 40) = v68;
    v108 = v64;
    os_log(_:dso:log:_:_:)();

    v69 = v115;
    static SystemInfo.lockState.getter();
    v71 = v116;
    v70 = v117;
    (*v97)(v116, v98, v117);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v66) = dispatch thunk of static Equatable.== infix(_:_:)();
    v72 = *v96;
    (*v96)(v71, v70);
    v72(v69, v70);
    if (v66)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v73 = v114;
      v74 = v103;
      v90(v114, 1, 1, v103);
      v20 = v102;
      v62 = v118;
    }

    else
    {
      v75 = sub_100025044();
      __chkstk_darwin(v75);
      v76 = v118;
      *(&v89 - 2) = v118;
      v73 = v114;
      sub_1012BBBD0(sub_100B27F94, v75, v114);

      v20 = v102;
      v62 = v76;
      v74 = v103;
    }

    v60 = v100;
    v39 = v95;
    v59 &= v59 - 1;
    (*v106)(v62, v20);
    if ((*v94)(v73, 1, v74) == 1)
    {
      sub_10000B3A8(v73, &unk_1016A9A20, &qword_10138B280);
      v61 = v63;
      v55 = v110;
      v56 = v101;
    }

    else
    {
      sub_10002911C(v73, v104, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v112 = sub_100A5C050(0, v112[2] + 1, 1, v112);
      }

      v56 = v101;
      v78 = v112[2];
      v77 = v112[3];
      if (v78 >= v77 >> 1)
      {
        v112 = sub_100A5C050(v77 > 1, v78 + 1, 1, v112);
      }

      v79 = v112;
      v112[2] = v78 + 1;
      sub_10002911C(v104, v79 + ((*(v120 + 80) + 32) & ~*(v120 + 80)) + *(v120 + 72) * v78, type metadata accessor for OwnedBeaconRecord);
      v61 = v63;
      v55 = v110;
    }
  }

  while (1)
  {
    v63 = v61 + 1;
    if (__OFADD__(v61, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);

      sub_100022C40(v39, type metadata accessor for OwnedBeaconRecord);

      __break(1u);
      return result;
    }

    if (v63 >= v60)
    {
      break;
    }

    v59 = *(v56 + 8 * v63);
    ++v61;
    if (v59)
    {
      goto LABEL_17;
    }
  }

  v80 = v112;
  v81 = v112[2];
  if (v81)
  {
    v82 = 0;
    v83 = _swiftEmptyArrayStorage;
    while (v82 < v80[2])
    {
      v84 = (*(v120 + 80) + 32) & ~*(v120 + 80);
      v85 = *(v120 + 72);
      sub_100022A54(v80 + v84 + v85 * v82, v39, type metadata accessor for OwnedBeaconRecord);
      if (sub_100AD69D8(v39, v55))
      {
        sub_10002911C(v39, v119, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v121 = v83;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v83[2] + 1, 1);
          v55 = v110;
          v83 = v121;
        }

        v88 = v83[2];
        v87 = v83[3];
        if (v88 >= v87 >> 1)
        {
          sub_10112434C(v87 > 1, v88 + 1, 1);
          v55 = v110;
          v83 = v121;
        }

        v83[2] = v88 + 1;
        sub_10002911C(v119, v83 + v84 + v88 * v85, type metadata accessor for OwnedBeaconRecord);
        v80 = v112;
      }

      else
      {
        sub_100022C40(v39, type metadata accessor for OwnedBeaconRecord);
      }

      if (v81 == ++v82)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_43;
  }

  v83 = _swiftEmptyArrayStorage;
LABEL_41:

  v50 = sub_1000257D0(v83);

  sub_100022C40(v109, type metadata accessor for OwnedBeaconGroup);
  (*v106)(v111, v102);
  sub_100022C40(v92, type metadata accessor for OwnedBeaconRecord);
LABEL_6:
  sub_100007BAC(v122);
  return v50;
}

void *sub_100B07144(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v44 - v6;
  v8 = type metadata accessor for UUID();
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8);
  v56 = &v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v58 = &v44 - v13;
  v15 = a1 + 56;
  v14 = *(a1 + 56);
  v16 = 1 << *(a1 + 32);
  v60 = &_swiftEmptySetSingleton;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  else
  {
    v17 = -1;
  }

  v18 = v17 & v14;
  v19 = (v16 + 63) >> 6;
  v49 = (v12 + 48);
  v45 = (v12 + 32);
  v55 = v12 + 16;
  v44 = v12;
  v57 = (v12 + 8);

  v20 = 0;
  v51 = a1 + 56;
  v52 = 0;
  v50 = v19;
  v47 = a2;
  v48 = a1;
  v46 = v7;
  if (v18)
  {
    while (1)
    {
LABEL_9:
      v22 = __clz(__rbit64(v18));
      v18 &= v18 - 1;
      v23 = *(*(a1 + 48) + ((v20 << 9) | (8 * v22)));
      sub_1000D2A70(a2, v7, &qword_1016980D0, &unk_10138F3B0);
      if ((*v49)(v7, 1, v8) == 1)
      {

        sub_10000B3A8(v7, &qword_1016980D0, &unk_10138F3B0);
      }

      else
      {
        (*v45)(v58, v7, v8);
        if (*(v23 + 16))
        {
          v24 = *(v23 + 40);
          sub_10000768C(&qword_1016967B0, &type metadata accessor for UUID);

          v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v26 = -1 << *(v23 + 32);
          v27 = v25 & ~v26;
          v54 = v23 + 56;
          if ((*(v23 + 56 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27))
          {
            v53 = ~v26;
            v28 = *(v44 + 72);
            v29 = *(v44 + 16);
            while (1)
            {
              v30 = v56;
              v29(v56, *(v23 + 48) + v28 * v27, v8);
              sub_10000768C(&qword_1016984A0, &type metadata accessor for UUID);
              v31 = dispatch thunk of static Equatable.== infix(_:_:)();
              v32 = *v57;
              (*v57)(v30, v8);
              if (v31)
              {
                break;
              }

              v27 = (v27 + 1) & v53;
              if (((*(v54 + ((v27 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v27) & 1) == 0)
              {
                goto LABEL_18;
              }
            }

            sub_100DEEB44(v59, v23);

            v32(v58, v8);
            a2 = v47;
            a1 = v48;
            v7 = v46;
            goto LABEL_20;
          }
        }

        else
        {
        }

LABEL_18:
        (*v57)(v58, v8);
        a2 = v47;
        a1 = v48;
        v7 = v46;
      }

      v33 = v52;
      sub_100A81AC4(v23, &v60);
      v52 = v33;

LABEL_20:
      v19 = v50;
      v15 = v51;
      if (!v18)
      {
        goto LABEL_5;
      }
    }
  }

  while (1)
  {
LABEL_5:
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      __break(1u);
      goto LABEL_28;
    }

    if (v21 >= v19)
    {
      break;
    }

    v18 = *(v15 + 8 * v21);
    ++v20;
    if (v18)
    {
      v20 = v21;
      goto LABEL_9;
    }
  }

  if (qword_101694BF8 == -1)
  {
    goto LABEL_24;
  }

LABEL_28:
  swift_once();
LABEL_24:
  v34 = type metadata accessor for Logger();
  sub_1000076D4(v34, qword_10177BA38);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v59[0] = v38;
    *v37 = 136315138;
    swift_beginAccess();

    sub_1000BC4D4(&qword_1016AF8E0, &qword_101393130);
    sub_1000041A4(&unk_1016AF8E8, &qword_1016AF8E0, &qword_101393130);
    v39 = Set.description.getter();
    v41 = v40;

    v42 = sub_1000136BC(v39, v41, v59);

    *(v37 + 4) = v42;
    _os_log_impl(&_mh_execute_header, v35, v36, "Multipart Status after separating non-primary parts: %s", v37, 0xCu);
    sub_100007BAC(v38);
  }

  swift_beginAccess();
  return v60;
}

uint64_t sub_100B07780(uint64_t a1, void *a2, uint64_t a3)
{
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v6 - 8);
  v30 = v6;
  v7 = *(v29 + 64);
  __chkstk_darwin(v6);
  v27 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = type metadata accessor for DispatchQoS();
  v26 = *(v28 - 8);
  v9 = *(v26 + 64);
  __chkstk_darwin(v28);
  v25 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = swift_allocObject();
  *(v11 + 16) = a2;
  *(v11 + 24) = a3;
  v12 = *(a1 + 184);

  sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
  type metadata accessor for CloudKitCoordinator();
  OSAllocatedUnfairLock.callAsFunction<A>(_:)();
  v13 = aBlock[0];
  v14 = swift_allocObject();
  v14[2] = sub_100B24ADC;
  v14[3] = v11;
  v14[4] = a1;
  v15 = *(v13 + 40);

  QueueSynchronizer.conditionalSync<A>(_:)();
  v16 = LOBYTE(aBlock[0]);
  static os_log_type_t.default.getter();
  if (qword_101695048 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_101385D80;
  *(v17 + 56) = &type metadata for Bool;
  *(v17 + 64) = &protocol witness table for Bool;
  *(v17 + 32) = v16;
  os_log(_:dso:log:_:_:)();

  static os_log_type_t.default.getter();
  os_log(_:dso:log:_:_:)();
  if (v16)
  {
    sub_100139244(a2, a3);
  }

  else
  {
    static os_log_type_t.default.getter();
    os_log(_:dso:log:_:_:)();
    v24[1] = *(v13 + 72);
    v18 = swift_allocObject();
    v18[2] = v13;
    v18[3] = sub_100B27E44;
    v18[4] = v14;
    aBlock[4] = sub_100B28008;
    aBlock[5] = v18;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_100006684;
    aBlock[3] = &unk_101647230;
    v19 = _Block_copy(aBlock);

    v20 = v25;
    static DispatchQoS.unspecified.getter();
    v31 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v21 = v27;
    v22 = v30;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v19);

    (*(v29 + 8))(v21, v22);
    (*(v26 + 8))(v20, v28);
  }
}

uint64_t sub_100B07CF0()
{
  static os_log_type_t.debug.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_101385D80;
  v1 = objc_opt_self();
  v2 = [v1 standardUserDefaults];
  v3 = String._bridgeToObjectiveC()();
  v4 = [v2 objectForKey:v3];

  if (v4)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    v5 = swift_dynamicCast();
    v6 = v14;
    if (!v5)
    {
      v6 = 2;
    }
  }

  else
  {
    sub_10000B3A8(&v17, &unk_1016A0B10, &qword_10139BF40);
    v6 = 2;
  }

  LOBYTE(v17) = v6;
  sub_1000BC4D4(&unk_1016BB0A0, &qword_10139A220);
  v7 = String.init<A>(describing:)();
  v9 = v8;
  *(v0 + 56) = &type metadata for String;
  *(v0 + 64) = sub_100008C00();
  *(v0 + 32) = v7;
  *(v0 + 40) = v9;
  os_log(_:dso:log:_:_:)();

  v10 = [v1 standardUserDefaults];
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 objectForKey:v11];

  if (v12)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v15 = 0u;
    v16 = 0u;
  }

  v17 = v15;
  v18 = v16;
  if (*(&v16 + 1))
  {
    result = swift_dynamicCast();
    if (result)
    {
      return v14;
    }
  }

  else
  {
    sub_10000B3A8(&v17, &unk_1016A0B10, &qword_10139BF40);
    return 0;
  }

  return result;
}

void sub_100B07FD8(char a1)
{
  static os_log_type_t.debug.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v2 = swift_allocObject();
  v3 = v2;
  *(v2 + 16) = xmmword_101385D80;
  v4 = a1 & 1;
  if (v4)
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (v4)
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  *(v2 + 56) = &type metadata for String;
  *(v2 + 64) = sub_100008C00();
  *(v3 + 32) = v5;
  *(v3 + 40) = v6;
  os_log(_:dso:log:_:_:)();

  v7 = [objc_opt_self() standardUserDefaults];
  v8 = String._bridgeToObjectiveC()();
  [v7 setBool:v4 forKey:v8];
}

uint64_t sub_100B081DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v121 = a2;
  v120 = type metadata accessor for BeaconStoreFileRecord();
  v116 = *(v120 - 1);
  v7 = *(v116 + 64);
  __chkstk_darwin(v120);
  v114 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v117 = type metadata accessor for URL();
  v9 = *(v117 - 8);
  isa = v9[8].isa;
  v11 = __chkstk_darwin(v117);
  v13 = &v101 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v106 = &v101 - v14;
  v15 = type metadata accessor for UUID();
  v122 = *(v15 - 1);
  v123 = v15;
  v16 = *(v122 + 64);
  v17 = __chkstk_darwin(v15);
  v101 = &v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v113 = &v101 - v20;
  __chkstk_darwin(v19);
  v104 = &v101 - v21;
  v102 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v22 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v103 = &v101 - v23;
  v24 = type metadata accessor for OwnedBeaconGroup(0);
  v109 = *(v24 - 8);
  v25 = *(v109 + 64);
  v26 = __chkstk_darwin(v24);
  v111 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v26);
  v28 = &v101 - v27;
  v29 = swift_allocObject();
  *(v29 + 16) = a3;
  *(v29 + 24) = a4;
  v118 = v29;

  v115 = a4;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v30 = qword_10177C380;
  v112 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v31 = swift_allocObject();
  v105 = xmmword_101385D80;
  *(v31 + 16) = xmmword_101385D80;
  sub_100022A54(a1, v28, type metadata accessor for OwnedBeaconGroup);
  v110 = v28;
  v119 = v24;
  v32 = String.init<A>(describing:)();
  v34 = v33;
  *(v31 + 56) = &type metadata for String;
  v107 = sub_100008C00();
  *(v31 + 64) = v107;
  *(v31 + 32) = v32;
  *(v31 + 40) = v34;
  v108 = v30;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v35 = qword_10177C218;
  v36 = [objc_opt_self() sharedInstance];
  v37 = [v36 isInternalBuild];

  if (v37)
  {
    v38 = String._bridgeToObjectiveC()();
    v37 = [v35 BOOLForKey:v38];
  }

  v39 = v13;
  v40 = [objc_opt_self() defaultStore];
  if (v40)
  {
    v41 = v40;
    v42 = [v40 aa_primaryAppleAccount];

    v124 = a1;
    if (v42 && (v42, (v37 & 1) == 0))
    {
      v114 = v25;
      v115 = v9;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v56 = *(v119 + 24);
      v57 = UUID.uuidString.getter();
      v59 = v58;
      v60 = v121;
      v61 = *(v121 + 160);
      v62._countAndFlagsBits = v57;
      v62._object = v59;
      v63 = CKRecordID.init(recordName:zoneID:)(v62, v61).super.isa;
      v64 = *(v60 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v111 = v63;
      v119 = sub_100FDB020(v63);

      v113 = swift_allocBox();
      v65 = *(v116 + 56);
      v102 = v66;
      v116 += 56;
      v101 = v65;
      (v65)(v66, 1, 1, v120);
      v67 = *(v60 + 168);
      v69 = v122;
      v68 = v123;
      v70 = a1 + v56;
      v71 = v104;
      (*(v122 + 16))(v104, v70, v123);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v72 = v117;
      v73 = sub_1000076D4(v117, qword_10177AEF8);
      v74 = v115;
      v75 = v106;
      v76 = (v115[2].isa)(v106, v73, v72);
      v77 = *(v67 + 16);
      __chkstk_darwin(v76);
      *(&v101 - 4) = v67;
      *(&v101 - 3) = v71;
      *(&v101 - 2) = v75;
      v78 = v103;
      OS_dispatch_queue.sync<A>(execute:)();
      (v74[1].isa)(v75, v72);
      (*(v69 + 8))(v71, v68);
      (v101)(v78, 0, 1, v120);
      sub_10002311C(v78, v102, &qword_1016B53E0, &unk_1013D65D0);
      v82 = v107;
      v83 = v111;
      static os_log_type_t.default.getter();
      v84 = swift_allocObject();
      *(v84 + 16) = v105;
      v85 = v83;
      v123 = v85;
      v86 = [v85 description];
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      *(v84 + 56) = &type metadata for String;
      *(v84 + 64) = v82;
      *(v84 + 32) = v87;
      *(v84 + 40) = v89;
      os_log(_:dso:log:_:_:)();

      v90 = v110;
      sub_100022A54(v124, v110, type metadata accessor for OwnedBeaconGroup);
      v91 = *(v109 + 80);
      v122 = (v91 + 32) & ~v91;
      v92 = &v114[v122 + 7] & 0xFFFFFFFFFFFFFFF8;
      v93 = swift_allocObject();
      v94 = v113;
      v95 = v121;
      *(v93 + 16) = v113;
      *(v93 + 24) = v95;
      v120 = type metadata accessor for OwnedBeaconGroup;
      sub_10002911C(v90, v93 + ((v91 + 32) & ~v91), type metadata accessor for OwnedBeaconGroup);
      v96 = (v93 + v92);
      v117 = sub_100B247EC;
      v97 = v118;
      *v96 = sub_100B247EC;
      v96[1] = v97;

      Future.addSuccess(block:)();

      sub_100022A54(v124, v90, type metadata accessor for OwnedBeaconGroup);
      v98 = swift_allocObject();
      *(v98 + 16) = v94;
      *(v98 + 24) = v95;
      sub_10002911C(v90, v98 + v122, v120);
      v99 = (v98 + v92);
      *v99 = v117;
      v99[1] = v97;

      Future.addFailure(block:)();
    }

    else
    {
      v43 = v9;
      v116 = a3;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v44 = type metadata accessor for Logger();
      sub_1000076D4(v44, qword_10177BA08);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 67109376;
        *(v47 + 4) = v37;
        *(v47 + 8) = 1024;
        *(v47 + 10) = v42 != 0;
        _os_log_impl(&_mh_execute_header, v45, v46, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v47, 0xEu);
      }

      v48 = *(v121 + 168);
      v49 = v124 + *(v119 + 24);
      v50 = v113;
      v112 = *(v122 + 16);
      v112(v113, v49, v123);
      if (qword_1016947B8 != -1)
      {
        swift_once();
      }

      v51 = v117;
      v52 = sub_1000076D4(v117, qword_10177AEF8);
      v53 = (v43[2].isa)(v39, v52, v51);
      v54 = *(v48 + 16);
      __chkstk_darwin(v53);
      *(&v101 - 4) = v48;
      *(&v101 - 3) = v50;
      *(&v101 - 2) = v39;
      v55 = v114;
      OS_dispatch_queue.sync<A>(execute:)();
      (v43[1].isa)(v39, v51);
      (*(v122 + 8))(v50, v123);
      sub_100B39D8C(v55);
      v79 = *(v121 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v80 = v116;
      swift_beginAccess();
      v81 = *(v80 + 16);
      *(v80 + 16) = 0;

      dispatch_group_leave(v115);
      sub_100022C40(v55, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B092E0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000BC4D4(&unk_1016BBDF0, &qword_1013D6808);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    v7 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = *(v6 + 8 * v4);
      v12 = *(v3 + 40);
      result = static Hasher._hash(seed:_:)();
      v14 = result & v7;
      v15 = (result & v7) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v7);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v11)
        {
          v14 = (v14 + 1) & v7;
          v15 = v14 >> 6;
          v16 = *(v5 + 8 * (v14 >> 6));
          v17 = 1 << v14;
          if (((1 << v14) & v16) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v15) = v17 | v16;
        *(v18 + 8 * v14) = v11;
        v8 = *(v3 + 16);
        v9 = __OFADD__(v8, 1);
        v10 = v8 + 1;
        if (v9)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v10;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_100B093F8(uint64_t a1, NSObject *a2, uint64_t a3, uint64_t a4)
{
  v278 = a4;
  v277 = a3;
  v6 = type metadata accessor for OwnedBeaconRecord();
  v7 = v6 - 8;
  v256 = *(v6 - 8);
  v8 = *(v256 + 64);
  __chkstk_darwin(v6);
  v257 = v9;
  v258 = &v245 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for BeaconProductInfoRecord();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v267 = &v245 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&qword_101697268, &qword_101394FE0);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v265 = &v245 - v15;
  v264 = type metadata accessor for AccessoryProductInfo();
  v263 = *(v264 - 8);
  v16 = *(v263 + 64);
  v17 = __chkstk_darwin(v264);
  v259 = &v245 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v266 = &v245 - v19;
  v282 = type metadata accessor for DispatchWorkItemFlags();
  v281 = *(v282 - 8);
  v20 = *(v281 + 64);
  __chkstk_darwin(v282);
  v279 = &v245 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v284 = type metadata accessor for DispatchQoS();
  v283 = *(v284 - 8);
  v22 = *(v283 + 64);
  __chkstk_darwin(v284);
  v280 = &v245 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v285 = type metadata accessor for DispatchTime();
  v290 = *(v285 - 8);
  v24 = *(v290 + 64);
  v25 = __chkstk_darwin(v285);
  v287 = &v245 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v288 = &v245 - v27;
  v276 = type metadata accessor for KeySyncMetadata();
  v251 = *(v276 - 1);
  v28 = *(v251 + 64);
  v29 = __chkstk_darwin(v276);
  v253 = &v245 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v252 = v30;
  __chkstk_darwin(v29);
  v32 = &v245 - v31;
  v272 = type metadata accessor for KeyAlignmentRecord();
  v248 = *(v272 - 8);
  v33 = *(v248 + 64);
  v34 = __chkstk_darwin(v272);
  v250 = &v245 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v249 = v35;
  __chkstk_darwin(v34);
  v295 = (&v245 - v36);
  v37 = type metadata accessor for BeaconNamingRecord();
  v273 = *(v37 - 1);
  v38 = *(v273 + 64);
  v39 = __chkstk_darwin(v37);
  v275 = &v245 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  v274 = v40;
  __chkstk_darwin(v39);
  v299 = &v245 - v41;
  v293 = type metadata accessor for Date();
  v292 = *(v293 - 8);
  v42 = *(v292 + 64);
  __chkstk_darwin(v293);
  v44 = &v245 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for UUID();
  v46 = *(*(v45 - 8) + 64);
  v47 = __chkstk_darwin(v45);
  v246 = &v245 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = __chkstk_darwin(v47);
  v247 = &v245 - v50;
  v51 = __chkstk_darwin(v49);
  v268 = &v245 - v52;
  v53 = __chkstk_darwin(v51);
  v270 = &v245 - v54;
  v55 = __chkstk_darwin(v53);
  v57 = &v245 - v56;
  v58 = __chkstk_darwin(v55);
  v294 = &v245 - v59;
  v261 = v60;
  __chkstk_darwin(v58);
  v61 = *(v7 + 28);
  v262 = a1;
  v62 = a1 + v61;
  v296 = v63;
  v64 = *(v63 + 16);
  v301 = &v245 - v65;
  v254 = v62;
  v300 = v66;
  v297 = v64;
  v298 = (v63 + 16);
  v64();
  v291 = v44;
  sub_100A82D10(v44);
  if (a2[2].isa)
  {
    isa = a2[2].isa;
  }

  else
  {
    isa = SPBeaconRoleIdUndefined;
  }

  if (qword_101694940 != -1)
  {
LABEL_65:
    swift_once();
  }

  v68 = *(qword_10177B348 + 40);
  OS_dispatch_queue.sync<A>(execute:)();
  v255 = 0;
  *&v303 = sub_101073D24(aBlock);

  v69 = a2[4].isa;
  v289 = v32;
  v269 = a2;
  if (v69 && isa == SPBeaconRoleIdOther)
  {
    v271 = a2[3].isa;
    v302 = v69;

    goto LABEL_23;
  }

  v70 = *(v303 + 16);
  if (v70)
  {
    v260 = v57;
    v271 = v37;
    aBlock = _swiftEmptyArrayStorage;
    v302 = v70;
    sub_101124558(0, v70, 0);
    v72 = v302;
    v71 = v303;
    v73 = 0;
    v74 = aBlock;
    v75 = v303 + 32;
    do
    {
      if (v73 >= *(v71 + 16))
      {
        __break(1u);
        goto LABEL_65;
      }

      a2 = (v73 + 1);
      v76 = *(v75 + 32 * v73 + 24);
      v78 = *(v76 + 16);
      v77 = v76 + 16;
      v79 = v78 + 1;
      while (--v79)
      {
        v80 = (v77 + 40);
        v81 = *(v77 + 16);
        v77 += 40;
        if (v81 == isa)
        {
          v82 = *(v80 - 2);
          v37 = *(v80 - 1);
          v32 = *v80;
          v83 = v80[1];

          v72 = v302;
          v71 = v303;
          goto LABEL_16;
        }
      }

      v32 = 0;
      v83 = 0xE000000000000000;
      v82 = 0x4E206D6F74737543;
      v37 = 0xEB00000000656D61;
LABEL_16:
      aBlock = v74;
      v85 = v74[2];
      v84 = v74[3];
      v57 = (v85 + 1);
      if (v85 >= v84 >> 1)
      {
        sub_101124558((v84 > 1), v85 + 1, 1);
        v72 = v302;
        v71 = v303;
        v74 = aBlock;
      }

      v74[2] = v57;
      v86 = &v74[5 * v85];
      v86[4] = isa;
      v86[5] = v82;
      v86[6] = v37;
      v86[7] = v32;
      v86[8] = v83;
      v73 = a2;
    }

    while (a2 != v72);

    a2 = v269;
    v37 = v271;
    v57 = v260;
    if (!v74[2])
    {
      goto LABEL_22;
    }

    goto LABEL_20;
  }

  v74 = _swiftEmptyArrayStorage;
  if (_swiftEmptyArrayStorage[2])
  {
LABEL_20:
    v87 = v74[8];
    v271 = v74[7];
    v302 = v87;

    goto LABEL_23;
  }

LABEL_22:

  v271 = 0;
  v302 = 0xE000000000000000;
LABEL_23:
  UUID.init()();
  (v297)(v57, v301, v300);
  if (a2[1].isa)
  {
    v88 = a2->isa;
    v89 = a2[1].isa;
  }

  else
  {
    v88 = 0;
    v89 = 0xE000000000000000;
  }

  v303 = xmmword_10138C660;
  v91 = v299;
  v90 = v300;
  *v299 = xmmword_10138C660;
  v92 = (v296 + 32);
  v93 = *(v296 + 32);
  v93(&v91[v37[5]], v294, v90);
  v94 = &v91[v37[6]];
  v294 = v92;
  v260 = v93;
  v93(v94, v57, v90);
  *&v91[v37[7]] = isa;
  v95 = &v91[v37[8]];
  *v95 = v88;
  v95[1] = v89;
  v96 = &v91[v37[9]];
  v97 = v302;
  *v96 = v271;
  v96[1] = v97;
  v98 = v272;
  v99 = *(v272 + 20);

  v100 = v295;
  UUID.init()();
  v101 = v301;
  v102 = v297;
  (v297)(v100 + v98[6], v301, v90);
  v103 = *(v292 + 16);
  v104 = v291;
  v105 = v293;
  v103(v100 + v98[8], v291, v293);
  *v100 = v303;
  *(v100 + v98[7]) = 1;
  v106 = v289;
  (v102)(v289, v101, v90);
  v107 = v106;
  v108 = v276;
  v109 = (v106 + v276[6]);
  v109[3] = &type metadata for PrimaryIndex;
  v109[4] = sub_10002A2B8();
  *v109 = 1;
  v103((v106 + v108[7]), v104, v105);
  *(v106 + v108[5]) = 1;
  v110 = swift_allocObject();
  *(v110 + 16) = 0;
  v111 = (v110 + 16);
  v112 = dispatch_group_create();
  dispatch_group_enter(v112);
  v113 = v299;
  v114 = v275;
  sub_100022A54(v299, v275, type metadata accessor for BeaconNamingRecord);
  v115 = (*(v273 + 80) + 24) & ~*(v273 + 80);
  v116 = (v274 + v115 + 7) & 0xFFFFFFFFFFFFFFF8;
  v117 = swift_allocObject();
  *(v117 + 16) = v112;
  sub_10002911C(v114, v117 + v115, type metadata accessor for BeaconNamingRecord);
  *(v117 + v116) = v110;
  v118 = v112;
  *&v303 = v110;

  v119 = v286;
  sub_1006DD754(v113, 0, sub_100B242A4, v117);

  v120 = v287;
  static DispatchTime.now()();
  v121 = v288;
  + infix(_:_:)();
  v123 = v290 + 8;
  v122 = *(v290 + 8);
  v124 = v285;
  v122(v120, v285);
  OS_dispatch_group.wait(timeout:)();
  v122(v121, v124);
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v125 = type metadata accessor for Logger();
    sub_1000076D4(v125, qword_10177C418);
    v126 = v270;
    v127 = v300;
    (v297)(v270, v301, v300);
    v128 = Logger.logObject.getter();
    v129 = static os_log_type_t.error.getter();
    v130 = os_log_type_enabled(v128, v129);
    v302 = v118;
    if (v130)
    {
      v131 = v126;
      v132 = swift_slowAlloc();
      v133 = swift_slowAlloc();
      aBlock = v133;
      *v132 = 141558275;
      *(v132 + 4) = 1752392040;
      *(v132 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v134 = dispatch thunk of CustomStringConvertible.description.getter();
      v136 = v135;
      v298 = *(v296 + 8);
      v298(v131, v127);
      v137 = sub_1000136BC(v134, v136, &aBlock);

      *(v132 + 14) = v137;
      _os_log_impl(&_mh_execute_header, v128, v129, "Timed out saving beacon naming record for beacon %{private,mask.hash}s", v132, 0x16u);
      sub_100007BAC(v133);
    }

    else
    {

      v298 = *(v296 + 8);
      v298(v126, v127);
    }

    v146 = *(v119 + 136);
    v147 = swift_allocObject();
    v148 = v278;
    *(v147 + 16) = v277;
    *(v147 + 24) = v148;
    v309 = sub_100B24554;
    v310 = v147;
    aBlock = _NSConcreteStackBlock;
    v306 = 1107296256;
    v307 = sub_100006684;
    v308 = &unk_101646F60;
    v149 = _Block_copy(&aBlock);

    v150 = v280;
    static DispatchQoS.unspecified.getter();
    v311 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v151 = v279;
    v152 = v282;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v149);

    (*(v281 + 8))(v151, v152);
    (*(v283 + 8))(v150, v284);
    sub_100022C40(v295, type metadata accessor for KeyAlignmentRecord);
    sub_100022C40(v299, type metadata accessor for BeaconNamingRecord);
    (*(v292 + 8))(v291, v293);
    v298(v301, v127);
LABEL_37:
    v145 = v289;
    goto LABEL_38;
  }

  v290 = v123;
  swift_beginAccess();
  v138 = *v111;
  if (*v111)
  {
    v298 = *(v119 + 136);
    v139 = swift_allocObject();
    v140 = v278;
    v139[2] = v277;
    v139[3] = v140;
    v139[4] = v138;
    v309 = sub_100B24534;
    v310 = v139;
    aBlock = _NSConcreteStackBlock;
    v306 = 1107296256;
    v307 = sub_100006684;
    v308 = &unk_101646F10;
    v141 = _Block_copy(&aBlock);
    swift_errorRetain();

    swift_errorRetain();
    v142 = v280;
    static DispatchQoS.unspecified.getter();
    v304 = _swiftEmptyArrayStorage;
    sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
    sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
    sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
    v143 = v279;
    v144 = v282;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    OS_dispatch_queue.async(group:qos:flags:execute:)();
    _Block_release(v141);

    (*(v281 + 8))(v143, v144);
LABEL_33:
    (*(v283 + 8))(v142, v284);
    sub_100022C40(v295, type metadata accessor for KeyAlignmentRecord);
    sub_100022C40(v299, type metadata accessor for BeaconNamingRecord);
    (*(v292 + 8))(v291, v293);
    (*(v296 + 8))(v301, v300);
LABEL_34:
    v145 = v107;
LABEL_38:
    sub_100022C40(v145, type metadata accessor for KeySyncMetadata);
  }

  v154 = type metadata accessor for PairingConfig();
  v155 = v265;
  sub_1000D2A70(v269 + *(v154 + 28), v265, &qword_101697268, &qword_101394FE0);
  v156 = (*(v263 + 48))(v155, 1, v264);
  v157 = v300;
  if (v156 == 1)
  {
    sub_10000B3A8(v155, &qword_101697268, &qword_101394FE0);
    if (sub_100D60B1C())
    {
      static os_log_type_t.error.getter();
      if (qword_1016950C8 != -1)
      {
        swift_once();
      }

      os_log(_:dso:log:_:_:)();
      v158 = *(v119 + 136);
      v159 = swift_allocObject();
      v160 = v278;
      *(v159 + 16) = v277;
      *(v159 + 24) = v160;
      v309 = sub_100B2450C;
      v310 = v159;
      aBlock = _NSConcreteStackBlock;
      v306 = 1107296256;
      v307 = sub_100006684;
      v308 = &unk_101646DF8;
      v161 = _Block_copy(&aBlock);

      v142 = v280;
      static DispatchQoS.unspecified.getter();
      v304 = _swiftEmptyArrayStorage;
      sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v162 = v279;
      v163 = v282;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v161);

      (*(v281 + 8))(v162, v163);
      goto LABEL_33;
    }
  }

  else
  {
    v164 = v155;
    v165 = v266;
    sub_10002911C(v164, v266, type metadata accessor for AccessoryProductInfo);
    v166 = v259;
    sub_100022A54(v165, v259, type metadata accessor for AccessoryProductInfo);
    v167 = v268;
    (v297)(v268, v301, v157);
    v168 = v267;
    sub_10083B3C8(v166, v167, v267);
    dispatch_group_enter(v118);
    v169 = swift_allocObject();
    v170 = v303;
    *(v169 + 16) = v118;
    *(v169 + 24) = v170;
    v171 = v118;

    sub_100D76090(v168, sub_100B2452C, v169);

    v172 = v287;
    static DispatchTime.now()();
    v173 = v288;
    + infix(_:_:)();
    v122(v172, v124);
    v276 = v171;
    OS_dispatch_group.wait(timeout:)();
    v122(v173, v124);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      if (qword_1016950D0 != -1)
      {
        swift_once();
      }

      v174 = type metadata accessor for Logger();
      sub_1000076D4(v174, qword_10177C418);
      v175 = v247;
      v176 = v300;
      (v297)(v247, v301, v300);
      v177 = Logger.logObject.getter();
      v178 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v177, v178))
      {
        v179 = swift_slowAlloc();
        v180 = swift_slowAlloc();
        aBlock = v180;
        *v179 = 141558275;
        *(v179 + 4) = 1752392040;
        *(v179 + 12) = 2081;
        sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
        v181 = dispatch thunk of CustomStringConvertible.description.getter();
        v183 = v182;
        v302 = *(v296 + 8);
        (v302)(v175, v176);
        v184 = sub_1000136BC(v181, v183, &aBlock);

        *(v179 + 14) = v184;
        _os_log_impl(&_mh_execute_header, v177, v178, "Timed out saving productInfoRecord for beacon %{private,mask.hash}s", v179, 0x16u);
        sub_100007BAC(v180);

        v119 = v286;
      }

      else
      {

        v302 = *(v296 + 8);
        (v302)(v175, v176);
      }

      v193 = *(v119 + 136);
      v194 = swift_allocObject();
      v195 = v278;
      *(v194 + 16) = v277;
      *(v194 + 24) = v195;
      v309 = sub_100B27E3C;
      v310 = v194;
      aBlock = _NSConcreteStackBlock;
      v306 = 1107296256;
      v307 = sub_100006684;
      v308 = &unk_101646EC0;
      v196 = _Block_copy(&aBlock);

      v197 = v280;
      static DispatchQoS.unspecified.getter();
      v304 = _swiftEmptyArrayStorage;
      sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v198 = v279;
      v199 = v282;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v196);

      (*(v281 + 8))(v198, v199);
      (*(v283 + 8))(v197, v284);
      sub_100022C40(v267, type metadata accessor for BeaconProductInfoRecord);
      sub_100022C40(v266, type metadata accessor for AccessoryProductInfo);
      sub_100022C40(v295, type metadata accessor for KeyAlignmentRecord);
      sub_100022C40(v299, type metadata accessor for BeaconNamingRecord);
      (*(v292 + 8))(v291, v293);
      (v302)(v301, v176);
      goto LABEL_37;
    }

    v185 = *v111;
    if (v185)
    {
      v302 = *(v119 + 136);
      v186 = swift_allocObject();
      v187 = v278;
      v186[2] = v277;
      v186[3] = v187;
      v186[4] = v185;
      v309 = sub_100B28004;
      v310 = v186;
      aBlock = _NSConcreteStackBlock;
      v306 = 1107296256;
      v307 = sub_100006684;
      v308 = &unk_101646E70;
      v188 = _Block_copy(&aBlock);
      swift_errorRetain();

      swift_errorRetain();
      v189 = v280;
      static DispatchQoS.unspecified.getter();
      v304 = _swiftEmptyArrayStorage;
      sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
      sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
      v190 = v300;
      sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
      v191 = v279;
      v192 = v282;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v188);

      (*(v281 + 8))(v191, v192);
      (*(v283 + 8))(v189, v284);
      sub_100022C40(v267, type metadata accessor for BeaconProductInfoRecord);
      sub_100022C40(v266, type metadata accessor for AccessoryProductInfo);
      sub_100022C40(v295, type metadata accessor for KeyAlignmentRecord);
      sub_100022C40(v299, type metadata accessor for BeaconNamingRecord);
      (*(v292 + 8))(v291, v293);
      (*(v296 + 8))(v301, v190);
      goto LABEL_34;
    }

    sub_100022C40(v267, type metadata accessor for BeaconProductInfoRecord);
    sub_100022C40(v266, type metadata accessor for AccessoryProductInfo);
    v157 = v300;
  }

  dispatch_group_enter(v118);
  v200 = v250;
  sub_100022A54(v295, v250, type metadata accessor for KeyAlignmentRecord);
  v302 = v118;
  v201 = v253;
  sub_100022A54(v107, v253, type metadata accessor for KeySyncMetadata);
  (v297)(v268, v301, v157);
  v202 = (*(v248 + 80) + 32) & ~*(v248 + 80);
  v203 = (v249 + *(v251 + 80) + v202) & ~*(v251 + 80);
  v204 = (v252 + *(v296 + 80) + v203) & ~*(v296 + 80);
  v276 = *(v296 + 80);
  v205 = (v261 + v204 + 7) & 0xFFFFFFFFFFFFFFF8;
  v206 = swift_allocObject();
  v207 = v302;
  *(v206 + 16) = v302;
  *(v206 + 24) = v119;
  sub_10002911C(v200, v206 + v202, type metadata accessor for KeyAlignmentRecord);
  sub_10002911C(v201, v206 + v203, type metadata accessor for KeySyncMetadata);
  (v260)(v206 + v204, v268, v300);
  *(v206 + v205) = v303;
  v208 = v207;

  v209 = v262;
  sub_1006DDE30(v262, 0, sub_100B242D0, v206);

  v210 = v287;
  static DispatchTime.now()();
  v211 = v288;
  + infix(_:_:)();
  v212 = v285;
  v122(v210, v285);
  v302 = v208;
  OS_dispatch_group.wait(timeout:)();
  v122(v211, v212);
  v213 = v209;
  if (static DispatchTimeoutResult.== infix(_:_:)())
  {
    if (qword_1016950D0 != -1)
    {
      swift_once();
    }

    v214 = type metadata accessor for Logger();
    sub_1000076D4(v214, qword_10177C418);
    v215 = v246;
    v216 = v300;
    (v297)(v246, v301, v300);
    v217 = Logger.logObject.getter();
    v218 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v217, v218))
    {
      v219 = swift_slowAlloc();
      v220 = swift_slowAlloc();
      aBlock = v220;
      *v219 = 141558275;
      *(v219 + 4) = 1752392040;
      *(v219 + 12) = 2081;
      sub_10000768C(&qword_101696930, &type metadata accessor for UUID);
      v221 = dispatch thunk of CustomStringConvertible.description.getter();
      v222 = v215;
      v224 = v223;
      (*(v296 + 8))(v222, v216);
      v225 = sub_1000136BC(v221, v224, &aBlock);

      *(v219 + 14) = v225;
      _os_log_impl(&_mh_execute_header, v217, v218, "Timed out saving new beacon %{private,mask.hash}s", v219, 0x16u);
      sub_100007BAC(v220);
    }

    else
    {

      (*(v296 + 8))(v215, v216);
    }
  }

  v226 = v276;
  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v227 = swift_allocObject();
  *(v227 + 16) = xmmword_101385D80;
  v228 = UUID.uuidString.getter();
  v230 = v229;
  *(v227 + 56) = &type metadata for String;
  *(v227 + 64) = sub_100008C00();
  *(v227 + 32) = v228;
  *(v227 + 40) = v230;
  os_log(_:dso:log:_:_:)();

  v231 = v286;
  v290 = *(v286 + 136);
  v232 = v268;
  v233 = v300;
  (v297)(v268, v301, v300);
  v234 = v213;
  v235 = v258;
  sub_100022A54(v234, v258, type metadata accessor for OwnedBeaconRecord);
  v236 = (v226 + 40) & ~v226;
  v237 = (v236 + v261 + *(v256 + 80)) & ~*(v256 + 80);
  v238 = swift_allocObject();
  v239 = v277;
  v238[2] = v303;
  v238[3] = v239;
  v238[4] = v278;
  (v260)(v238 + v236, v232, v233);
  sub_10002911C(v235, v238 + v237, type metadata accessor for OwnedBeaconRecord);
  v309 = sub_100B24438;
  v310 = v238;
  aBlock = _NSConcreteStackBlock;
  v306 = 1107296256;
  v307 = sub_100006684;
  v308 = &unk_101646DA8;
  v240 = _Block_copy(&aBlock);

  v241 = v280;
  static DispatchQoS.unspecified.getter();
  v304 = _swiftEmptyArrayStorage;
  sub_10000768C(&qword_1016A30B0, &type metadata accessor for DispatchWorkItemFlags);
  sub_1000BC4D4(&qword_101696AE0, qword_10138B3E0);
  sub_1000041A4(&qword_1016A30C0, &qword_101696AE0, qword_10138B3E0);
  v242 = v279;
  v243 = v282;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v240);
  (*(v281 + 8))(v242, v243);
  (*(v283 + 8))(v241, v284);

  v244 = *(v231 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  QueueSynchronizer.conditionalSync<A>(_:)();
  sub_100A8306C(3);
  sub_100A907FC();
  sub_100A906A4(0, "Requesting BeaconsToMonitorForSeparationChangedNotification to be posted. Bypass rate limit? %{BOOL}d", &OBJC_IVAR____TtC12searchpartyd11BeaconStore_separationMonitoringBeaconsChangedPoster);
  type metadata accessor for Transaction();
  static Transaction.named<A>(_:with:)();

  sub_100022C40(v295, type metadata accessor for KeyAlignmentRecord);
  sub_100022C40(v299, type metadata accessor for BeaconNamingRecord);
  (*(v292 + 8))(v291, v293);
  (*(v296 + 8))(v301, v300);
  sub_100022C40(v289, type metadata accessor for KeySyncMetadata);
}

void sub_100B0BE30(uint64_t *a1, int a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, void (*a7)(char *, id, uint64_t), uint64_t a8, uint64_t a9)
{
  v49 = a7;
  v52 = a3;
  v46[1] = a8;
  v47 = a9;
  v48 = sub_1000BC4D4(&qword_101699398, &qword_101391900);
  v13 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48);
  v15 = v46 - v14;
  v16 = type metadata accessor for OwnedBeaconGroup(0);
  v17 = *(*(v16 - 8) + 64);
  __chkstk_darwin(v16 - 8);
  v53 = v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  *(v19 + 16) = a4;
  *(v19 + 24) = a5;
  v51 = v19;
  v20 = qword_101694BE8;
  v50 = a4;

  if (v20 != -1)
  {
    swift_once();
  }

  v21 = a1;
  v22 = type metadata accessor for Logger();
  sub_1000076D4(v22, qword_10177BA08);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 67109120;
    *(v25 + 4) = a2 & 1;
    _os_log_impl(&_mh_execute_header, v23, v24, "Saving record. Disk First? %{BOOL}d", v25, 8u);
  }

  v26 = v52;
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v27 = qword_10177C218;
  v28 = [objc_opt_self() sharedInstance];
  v29 = [v28 isInternalBuild];

  if (v29)
  {
    v30 = String._bridgeToObjectiveC()();
    v31 = [v27 BOOLForKey:v30];
  }

  else
  {
    v31 = 0;
  }

  v32 = [objc_opt_self() defaultStore];
  if (v32)
  {
    v33 = v32;
    v34 = [v32 aa_primaryAppleAccount];

    if (v34 && (v34, ((a2 | v31) & 1) == 0))
    {
      sub_1006E4FAC(v21, v47, v51);
    }

    else
    {
      v35 = v53;
      sub_100022A54(v21, v53, type metadata accessor for OwnedBeaconGroup);
      v36 = *(v26 + 168);
      sub_1009F10FC(v35);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&_mh_execute_header, v37, v38, "Saved LocalStorageBacked record. Calling completion.", v39, 2u);
      }

      sub_100022A54(v21, v15, type metadata accessor for OwnedBeaconGroup);
      swift_storeEnumTagMultiPayload();
      v49(v15, v50, a5);
      sub_10000B3A8(v15, &qword_101699398, &qword_101391900);
      if (((v34 != 0) & ~v31) != 0)
      {
        v44 = type metadata accessor for Transaction();
        __chkstk_darwin(v44);
        v45 = v53;
        v46[-4] = v52;
        v46[-3] = v21;
        v46[-2] = v45;
        static Transaction.named<A>(_:with:)();
        v43 = v45;
      }

      else
      {
        v40 = Logger.logObject.getter();
        v41 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          *v42 = 67109376;
          *(v42 + 4) = v31;
          *(v42 + 8) = 1024;
          *(v42 + 10) = v34 != 0;
          _os_log_impl(&_mh_execute_header, v40, v41, "Skipping save to cloud. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v42, 0xEu);
        }

        v43 = v53;
      }

      sub_100022C40(v43, type metadata accessor for OwnedBeaconGroup);
    }
  }

  else
  {

    __break(1u);
  }
}

uint64_t sub_100B0C534(uint64_t a1, uint64_t a2, void (*a3)(uint64_t), char *a4)
{
  v126 = a2;
  v7 = type metadata accessor for BeaconStoreFileRecord();
  v123 = *(v7 - 8);
  v8 = *(v123 + 8);
  __chkstk_darwin(v7);
  v119 = &v104 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v120 = *(v10 - 8);
  v121 = v10;
  v11 = *(v120 + 64);
  v12 = __chkstk_darwin(v10);
  v118 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v109 = &v104 - v14;
  v15 = type metadata accessor for UUID();
  v124 = *(v15 - 1);
  v16 = *(v124 + 8);
  v17 = __chkstk_darwin(v15);
  v105 = &v104 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v117 = &v104 - v20;
  __chkstk_darwin(v19);
  v108 = &v104 - v21;
  v106 = sub_1000BC4D4(&qword_1016B53E0, &unk_1013D65D0);
  v22 = *(*(v106 - 8) + 64);
  __chkstk_darwin(v106);
  v107 = &v104 - v23;
  v24 = type metadata accessor for OwnedDeviceKeyRecord();
  v113 = *(v24 - 1);
  v25 = *(v113 + 64);
  v26 = __chkstk_darwin(v24);
  v116 = &v104 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = v27;
  __chkstk_darwin(v26);
  v29 = &v104 - v28;
  v30 = swift_allocObject();
  *(v30 + 16) = a3;
  *(v30 + 24) = a4;
  v122 = v30;

  static os_log_type_t.default.getter();
  if (qword_101695038 != -1)
  {
    swift_once();
  }

  v31 = qword_10177C380;
  v111 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v32 = swift_allocObject();
  v110 = xmmword_101385D80;
  *(v32 + 16) = xmmword_101385D80;
  v127 = a1;
  sub_100022A54(a1, v29, type metadata accessor for OwnedDeviceKeyRecord);
  v115 = v29;
  v125 = v24;
  v33 = String.init<A>(describing:)();
  v35 = v34;
  *(v32 + 56) = &type metadata for String;
  v36 = sub_100008C00();
  *(v32 + 64) = v36;
  *(v32 + 32) = v33;
  *(v32 + 40) = v35;
  v112 = v31;
  os_log(_:dso:log:_:_:)();

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v37 = qword_10177C218;
  v38 = [objc_opt_self() sharedInstance];
  v39 = [v38 isInternalBuild];

  if (v39)
  {
    v40 = String._bridgeToObjectiveC()();
    v41 = [v37 BOOLForKey:v40];
  }

  else
  {
    v41 = 0;
  }

  v42 = v125;
  v43 = [objc_opt_self() defaultStore];
  if (v43)
  {
    v44 = v43;
    v45 = [v43 aa_primaryAppleAccount];

    if (v45 && (v45, (v41 & 1) == 0))
    {
      v119 = v36;
      sub_100008BB8(0, &qword_1016A9110, CKRecordID_ptr);
      v61 = v42[5];
      v62 = v127;
      v63 = UUID.uuidString.getter();
      v65 = v64;
      v66 = v15;
      v67 = v126;
      v68 = *(v126 + 160);
      v69._countAndFlagsBits = v63;
      v69._object = v65;
      isa = CKRecordID.init(recordName:zoneID:)(v69, v68).super.isa;
      v71 = *(v67 + 184);
      sub_1000BC4D4(&unk_1016B14B0, &qword_1013A08F0);
      type metadata accessor for CloudKitCoordinator();
      OSAllocatedUnfairLock.callAsFunction<A>(_:)();
      v116 = isa;
      v118 = sub_100FDB020(isa);

      v117 = swift_allocBox();
      v72 = *(v123 + 7);
      v106 = v73;
      v123 = (v123 + 56);
      v105 = v72;
      (v72)(v73, 1, 1, v7);
      v74 = *(v67 + 168);
      v75 = v66;
      v76 = v108;
      (*(v124 + 2))(v108, v62 + v61, v66);
      v77 = v125[6];
      v78 = v7;
      if (qword_101695268 != -1)
      {
        swift_once();
      }

      v79 = v121;
      sub_1000076D4(v121, qword_10177C680);
      UUID.uuidString.getter();
      v80 = v109;
      URL.appendingPathComponent(_:isDirectory:)();

      v82 = *(v74 + 16);
      __chkstk_darwin(v81);
      *(&v104 - 4) = v74;
      *(&v104 - 3) = v76;
      *(&v104 - 2) = v80;
      v83 = v107;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v120 + 8))(v80, v79);
      (*(v124 + 1))(v76, v75);
      (v105)(v83, 0, 1, v78);
      sub_10002311C(v83, v106, &qword_1016B53E0, &unk_1013D65D0);
      v85 = v115;
      v86 = v116;
      v87 = v119;
      static os_log_type_t.default.getter();
      v88 = swift_allocObject();
      *(v88 + 16) = v110;
      v89 = v86;
      v125 = v89;
      v90 = [v89 description];
      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;

      *(v88 + 56) = &type metadata for String;
      *(v88 + 64) = v87;
      *(v88 + 32) = v91;
      *(v88 + 40) = v93;
      os_log(_:dso:log:_:_:)();

      v124 = type metadata accessor for OwnedDeviceKeyRecord;
      sub_100022A54(v127, v85, type metadata accessor for OwnedDeviceKeyRecord);
      v94 = (*(v113 + 80) + 32) & ~*(v113 + 80);
      v95 = (v114 + v94 + 7) & 0xFFFFFFFFFFFFFFF8;
      v96 = swift_allocObject();
      v97 = v117;
      v98 = v126;
      *(v96 + 16) = v117;
      *(v96 + 24) = v98;
      v123 = type metadata accessor for OwnedDeviceKeyRecord;
      sub_10002911C(v85, v96 + v94, type metadata accessor for OwnedDeviceKeyRecord);
      v99 = (v96 + v95);
      v100 = v122;
      *v99 = sub_100B27FFC;
      v99[1] = v100;

      Future.addSuccess(block:)();

      sub_100022A54(v127, v85, v124);
      v101 = swift_allocObject();
      *(v101 + 16) = v97;
      *(v101 + 24) = v98;
      sub_10002911C(v85, v101 + v94, v123);
      v102 = (v101 + v95);
      *v102 = sub_100B27FFC;
      v102[1] = v100;

      Future.addFailure(block:)();
    }

    else
    {
      v114 = a3;
      v115 = a4;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v113 = v7;
      v123 = v15;
      v46 = type metadata accessor for Logger();
      v112 = sub_1000076D4(v46, qword_10177BA08);
      v47 = Logger.logObject.getter();
      v48 = static os_log_type_t.info.getter();
      v49 = os_log_type_enabled(v47, v48);
      v50 = v117;
      if (v49)
      {
        v51 = swift_slowAlloc();
        *v51 = 67109376;
        *(v51 + 4) = v41;
        *(v51 + 8) = 1024;
        *(v51 + 10) = v45 != 0;
        _os_log_impl(&_mh_execute_header, v47, v48, "Skipping cloud delete. skipCloudSave: %{BOOL}d, isiCloudSignedIn %{BOOL}d", v51, 0xEu);
      }

      v52 = *(v126 + 168);
      v53 = v124;
      v54 = v127 + v42[5];
      v111 = *(v124 + 2);
      v111(v50, v54, v123);
      v55 = v42[6];
      if (qword_101695268 != -1)
      {
        swift_once();
      }

      v56 = v121;
      sub_1000076D4(v121, qword_10177C680);
      UUID.uuidString.getter();
      v57 = v118;
      URL.appendingPathComponent(_:isDirectory:)();

      v59 = *(v52 + 16);
      __chkstk_darwin(v58);
      *(&v104 - 4) = v52;
      *(&v104 - 3) = v50;
      *(&v104 - 2) = v57;
      v60 = v119;
      OS_dispatch_queue.sync<A>(execute:)();
      (*(v120 + 8))(v57, v56);
      (*(v53 + 1))(v50, v123);
      sub_100B39D8C(v60);
      v84 = *(v126 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
      QueueSynchronizer.conditionalSync<A>(_:)();
      sub_100A8306C(9);
      sub_100A8375C();
      v114(1);
      sub_100022C40(v60, type metadata accessor for BeaconStoreFileRecord);
    }
  }

  else
  {

    __break(1u);
  }

  return result;
}

uint64_t sub_100B0D624(uint64_t a1, int a2, int a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v120 = a5;
  LODWORD(v112) = a4;
  LODWORD(v111) = a3;
  LODWORD(v110) = a2;
  v126 = a1;
  v124 = type metadata accessor for SystemInfo.DeviceLockState();
  v113 = *(v124 - 8);
  v9 = *(v113 + 64);
  v10 = __chkstk_darwin(v124);
  v123 = &v95 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v122 = &v95 - v12;
  v13 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v119 = (&v95 - v15);
  v117 = type metadata accessor for OwnedBeaconGroup(0);
  v116 = *(v117 - 8);
  v16 = *(v116 + 64);
  __chkstk_darwin(v117);
  v115 = &v95 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v21 = &v95 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v114 = &v95 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v25);
  v118 = &v95 - v27;
  v28 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v29 = *(*(v28 - 8) + 64);
  v30 = __chkstk_darwin(v28 - 8);
  v121 = &v95 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v30);
  v33 = &v95 - v32;
  v34 = type metadata accessor for OwnedBeaconRecord();
  v35 = *(v34 - 8);
  v36 = *(v35 + 64);
  v37 = __chkstk_darwin(v34);
  v125 = &v95 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = __chkstk_darwin(v37);
  v41 = &v95 - v40;
  v42 = __chkstk_darwin(v39);
  v109 = &v95 - v43;
  __chkstk_darwin(v42);
  v45 = &v95 - v44;
  v128[3] = a6;
  v128[4] = a7;
  v46 = sub_1000280DC(v128);
  (*(*(a6 - 8) + 16))(v46, v126, a6);
  sub_10001F280(v128, &v127);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v47 = swift_dynamicCast();
  v126 = v35;
  v50 = *(v35 + 56);
  v48 = v35 + 56;
  v49 = v50;
  if (!v47)
  {
    v49(v33, 1, 1, v34);
    sub_10000B3A8(v33, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_5;
  }

  v49(v33, 0, 1, v34);
  sub_10002911C(v33, v45, type metadata accessor for OwnedBeaconRecord);
  sub_1000D2A70(&v45[*(v34 + 28)], v21, &qword_1016980D0, &unk_10138F3B0);
  if ((*(v23 + 48))(v21, 1, v22) == 1)
  {
    sub_10000B3A8(v21, &qword_1016980D0, &unk_10138F3B0);
    sub_100022C40(v45, type metadata accessor for OwnedBeaconRecord);
LABEL_5:
    v51 = _swiftEmptyArrayStorage;
    goto LABEL_6;
  }

  v53 = v22;
  v54 = v23;
  v108 = v34;
  v98 = v45;
  v55 = *(v23 + 32);
  v56 = v118;
  v55(v118, v21, v22);
  v57 = v119;
  sub_100AC53EC(v56, v119);
  if ((*(v116 + 48))(v57, 1, v117) == 1)
  {
    sub_10000B3A8(v57, &unk_1016AF8B0, &unk_1013A0700);
    (*(v54 + 8))(v56, v22);
    sub_100022C40(v98, type metadata accessor for OwnedBeaconRecord);
    goto LABEL_5;
  }

  v96 = v49;
  v97 = v48;
  sub_10002911C(v57, v115, type metadata accessor for OwnedBeaconGroup);
  v58 = sub_100B05C44(v98, v110 & 1, v111 & 1, v112 & 1);
  v59 = sub_100519FB0();
  v60 = v58;
  v61 = v59 + 56;
  v62 = 1 << *(v59 + 32);
  v63 = -1;
  if (v62 < 64)
  {
    v63 = ~(-1 << v62);
  }

  v64 = v63 & *(v59 + 56);
  v65 = (v62 + 63) >> 6;
  v105 = v54 + 16;
  v104 = enum case for SystemInfo.DeviceLockState.beforeFirstUnlock(_:);
  v103 = (v113 + 104);
  v102 = (v113 + 8);
  v112 = (v54 + 8);
  v100 = (v126 + 48);
  v113 = v59;

  v66 = 0;
  v99 = xmmword_101385D80;
  v119 = _swiftEmptyArrayStorage;
  v67 = v114;
  v117 = v58;
  v110 = v61;
  v107 = v53;
  v106 = v54;
  v111 = v65;
  v101 = v41;
  while (v64)
  {
    v68 = v66;
LABEL_17:
    (*(v54 + 16))(v67, *(v113 + 48) + *(v54 + 72) * (__clz(__rbit64(v64)) | (v68 << 6)), v53);
    static os_log_type_t.info.getter();
    if (qword_101695038 != -1)
    {
      swift_once();
    }

    v69 = qword_10177C380;
    sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
    v70 = swift_allocObject();
    *(v70 + 16) = v99;
    v71 = UUID.uuidString.getter();
    v73 = v72;
    *(v70 + 56) = &type metadata for String;
    *(v70 + 64) = sub_100008C00();
    *(v70 + 32) = v71;
    *(v70 + 40) = v73;
    v116 = v69;
    os_log(_:dso:log:_:_:)();

    v74 = v122;
    static SystemInfo.lockState.getter();
    v76 = v123;
    v75 = v124;
    (*v103)(v123, v104, v124);
    sub_10000768C(&qword_10169F338, &type metadata accessor for SystemInfo.DeviceLockState);
    LOBYTE(v71) = dispatch thunk of static Equatable.== infix(_:_:)();
    v77 = v67;
    v78 = *v102;
    (*v102)(v76, v75);
    v78(v74, v75);
    if (v71)
    {
      static os_log_type_t.default.getter();
      os_log(_:dso:log:_:_:)();
      v79 = v121;
      v80 = v108;
      v96(v121, 1, 1, v108);
      v53 = v107;
      v67 = v77;
    }

    else
    {
      v81 = sub_100025044();
      __chkstk_darwin(v81);
      *(&v95 - 2) = v77;
      v79 = v121;
      sub_1012BBBD0(sub_100B223FC, v81, v121);

      v53 = v107;
      v67 = v77;
      v80 = v108;
    }

    v41 = v101;
    v64 &= v64 - 1;
    (*v112)(v67, v53);
    v82 = (*v100)(v79, 1, v80);
    v54 = v106;
    v65 = v111;
    if (v82 == 1)
    {
      sub_10000B3A8(v79, &unk_1016A9A20, &qword_10138B280);
      v66 = v68;
      v60 = v117;
      v61 = v110;
    }

    else
    {
      sub_10002911C(v79, v109, type metadata accessor for OwnedBeaconRecord);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v119 = sub_100A5C050(0, v119[2] + 1, 1, v119);
      }

      v61 = v110;
      v84 = v119[2];
      v83 = v119[3];
      if (v84 >= v83 >> 1)
      {
        v119 = sub_100A5C050(v83 > 1, v84 + 1, 1, v119);
      }

      v85 = v119;
      v119[2] = v84 + 1;
      sub_10002911C(v109, v85 + ((*(v126 + 80) + 32) & ~*(v126 + 80)) + *(v126 + 72) * v84, type metadata accessor for OwnedBeaconRecord);
      v66 = v68;
      v60 = v117;
      v65 = v111;
    }
  }

  while (1)
  {
    v68 = v66 + 1;
    if (__OFADD__(v66, 1))
    {
      __break(1u);
LABEL_43:
      __break(1u);

      sub_100022C40(v41, type metadata accessor for OwnedBeaconRecord);

      __break(1u);
      return result;
    }

    if (v68 >= v65)
    {
      break;
    }

    v64 = *(v61 + 8 * v68);
    ++v66;
    if (v64)
    {
      goto LABEL_17;
    }
  }

  v86 = v119;
  v87 = v119[2];
  if (v87)
  {
    v88 = 0;
    v89 = _swiftEmptyArrayStorage;
    while (v88 < v86[2])
    {
      v90 = (*(v126 + 80) + 32) & ~*(v126 + 80);
      v91 = *(v126 + 72);
      sub_100022A54(v86 + v90 + v91 * v88, v41, type metadata accessor for OwnedBeaconRecord);
      if (sub_100AD69D8(v41, v60))
      {
        sub_10002911C(v41, v125, type metadata accessor for OwnedBeaconRecord);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v127 = v89;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_10112434C(0, v89[2] + 1, 1);
          v60 = v117;
          v89 = v127;
        }

        v94 = v89[2];
        v93 = v89[3];
        if (v94 >= v93 >> 1)
        {
          sub_10112434C(v93 > 1, v94 + 1, 1);
          v60 = v117;
          v89 = v127;
        }

        v89[2] = v94 + 1;
        sub_10002911C(v125, v89 + v90 + v94 * v91, type metadata accessor for OwnedBeaconRecord);
        v86 = v119;
      }

      else
      {
        sub_100022C40(v41, type metadata accessor for OwnedBeaconRecord);
      }

      if (v87 == ++v88)
      {
        goto LABEL_41;
      }
    }

    goto LABEL_43;
  }

  v89 = _swiftEmptyArrayStorage;
LABEL_41:

  v51 = sub_1000257D0(v89);

  sub_100022C40(v115, type metadata accessor for OwnedBeaconGroup);
  (*v112)(v118, v107);
  sub_100022C40(v98, type metadata accessor for OwnedBeaconRecord);
LABEL_6:
  sub_100007BAC(v128);
  return v51;
}