unint64_t sub_100200B34(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Friend();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      sub_1001E6D00(&qword_1005AE9B0, &type metadata accessor for Friend);
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
          v29 = *(*(type metadata accessor for FriendshipAction() - 8) + 72);
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

unint64_t sub_100200E78(unint64_t result, uint64_t a2, uint64_t (*a3)(void))
{
  v4 = result;
  v5 = a2 + 64;
  v6 = -1 << *(a2 + 32);
  v7 = (result + 1) & ~v6;
  if ((*(a2 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v9 = ~v6;
    v10 = (_HashTable.previousHole(before:)() + 1) & ~v6;
    while (1)
    {
      v11 = *(a2 + 40);
      v12 = (*(a2 + 48) + 16 * v7);
      v13 = *v12;
      v14 = v12[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v15 = Hasher._finalize()();

      v16 = v15 & v9;
      if (v4 >= v10)
      {
        break;
      }

      if (v16 < v10)
      {
        goto LABEL_10;
      }

LABEL_11:
      v17 = *(a2 + 48);
      v18 = (v17 + 16 * v4);
      v19 = (v17 + 16 * v7);
      if (v4 != v7 || v18 >= v19 + 1)
      {
        *v18 = *v19;
      }

      v20 = *(a2 + 56);
      v21 = *(*(a3(0) - 8) + 72);
      v22 = v21 * v4;
      result = v20 + v21 * v4;
      v23 = v21 * v7;
      v24 = v20 + v21 * v7 + v21;
      if (v22 < v23 || result >= v24)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else
      {
        v4 = v7;
        if (v22 == v23)
        {
          goto LABEL_5;
        }

        result = swift_arrayInitWithTakeBackToFront();
      }

      v4 = v7;
LABEL_5:
      v7 = (v7 + 1) & v9;
      if (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_20;
      }
    }

    if (v16 < v10)
    {
      goto LABEL_5;
    }

LABEL_10:
    if (v4 < v16)
    {
      goto LABEL_5;
    }

    goto LABEL_11;
  }

LABEL_20:
  *(v5 + ((v4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v4) - 1;
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

unint64_t sub_10020106C(int64_t a1, uint64_t a2)
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
      sub_1001E6D00(&qword_1005AECC0, &type metadata accessor for UUID);
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

unint64_t sub_100201390(int64_t a1, uint64_t a2)
{
  Priority = type metadata accessor for LocatePriority();
  v4 = *(Priority - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(Priority);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = Priority;
    v7 = v45;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v41 = (v13 + 1) & v12;
    v42 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    v40 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v42(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1001E6D00(&qword_1005B0208, &type metadata accessor for LocatePriority);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 24 * a1;
          v33 = (v31 + 24 * v11);
          if (a1 != v11 || v32 >= v33 + 24)
          {
            v34 = *v33;
            *(v32 + 16) = *(v33 + 2);
            *v32 = v34;
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
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_1002016B4(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for Handle();
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
      sub_1001E6D00(&qword_1005A91B0, &type metadata accessor for Handle);
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
          v32 = (v31 + 8 * a1);
          v33 = (v31 + 8 * v11);
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

unint64_t sub_1002019D4(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClientID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  result = __chkstk_darwin(v4);
  v9 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
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
      sub_1001E6D00(&qword_1005AE9D0, &type metadata accessor for ClientID);
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
          v29 = *(*(type metadata accessor for Date() - 8) + 72);
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

unint64_t sub_100201D18(int64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for UUID();
  v4 = *(v44 - 8);
  v5 = *(v4 + 64);
  result = __chkstk_darwin(v44);
  v43 = &v38 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v45 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v44;
    v7 = v45;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v41 = (v13 + 1) & v12;
    v42 = v17;
    v18 = *(v16 + 56);
    v39 = (v16 - 8);
    v40 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v43;
      v22 = v15;
      v23 = v16;
      v24 = v7;
      v42(v43, *(v7 + 48) + v18 * v11, v14);
      v25 = *(v24 + 40);
      sub_1001E6D00(&qword_1005AECC0, &type metadata accessor for UUID);
      v26 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v21, v14);
      v15 = v22;
      v27 = v26 & v22;
      if (a1 >= v41)
      {
        if (v27 >= v41 && a1 >= v27)
        {
LABEL_15:
          v7 = v45;
          v30 = *(v45 + 48);
          result = v30 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v30 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v45;
            v18 = v19;
            v15 = v22;
            v9 = v40;
          }

          else
          {
            v9 = v40;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v45;
              v18 = v19;
              v15 = v22;
            }
          }

          v31 = *(v7 + 56);
          v32 = v31 + 24 * a1;
          v33 = (v31 + 24 * v11);
          if (a1 != v11 || v32 >= v33 + 24)
          {
            v34 = *v33;
            *(v32 + 16) = *(v33 + 2);
            *v32 = v34;
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
      v9 = v40;
      v18 = v19;
      v7 = v45;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(v7 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v37;
    ++*(v7 + 36);
  }

  return result;
}

unint64_t sub_10020203C(int64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
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
      sub_1001E6D00(&qword_1005AECC0, &type metadata accessor for UUID);
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
          v30 = *(*(sub_10004B564(v40, v41) - 8) + 72);
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

void *sub_100202380()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0068, &qword_1004D1600);
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
        v22 = 40 * v17;
        sub_100011004(*(v2 + 56) + 40 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        sub_100010BD4(v25, *(v4 + 56) + v22);
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

void *sub_100202528()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0120, &qword_1004D16B0);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 48 * v17;
        sub_1000534E8(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[9];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 25) = v25;
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

        v1 = v27;
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

void *sub_1002026D8()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0158, &qword_1004D16E8);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v27 = v1;
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
        v22 = 48 * v17;
        sub_10005345C(*(v2 + 56) + 48 * v17, &v28);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        v24 = (*(v4 + 56) + v22);
        v25 = *&v29[10];
        v26 = *v29;
        *v24 = v28;
        v24[1] = v26;
        *(v24 + 26) = v25;
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

        v1 = v27;
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

id sub_100202888()
{
  v1 = v0;
  sub_10004B564(&qword_1005A8A40, &qword_1004C18E0);
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

        result = v20;
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

void *sub_100202A1C()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0090, &qword_1004D1620);
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

void *sub_100202C20(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v44 = a1(0);
  v46 = *(v44 - 8);
  v7 = *(v46 + 64);
  __chkstk_darwin(v44);
  v43 = &v38 - v8;
  sub_10004B564(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    v39 = v6;
    result = (v10 + 64);
    v13 = v9 + 64;
    v14 = ((1 << *(v11 + 32)) + 63) >> 6;
    if (v11 != v9 || result >= v9 + 64 + 8 * v14)
    {
      result = memmove(result, (v9 + 64), 8 * v14);
    }

    v16 = 0;
    v17 = *(v9 + 16);
    v45 = v11;
    *(v11 + 16) = v17;
    v18 = 1 << *(v9 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v9 + 64);
    v21 = (v18 + 63) >> 6;
    v40 = v46 + 32;
    v41 = v46 + 16;
    v42 = v9;
    if (v20)
    {
      do
      {
        v22 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
LABEL_17:
        v25 = v22 | (v16 << 6);
        v26 = 16 * v25;
        v27 = *(v9 + 56);
        v28 = (*(v9 + 48) + 16 * v25);
        v29 = *v28;
        v30 = v28[1];
        v31 = v46;
        v32 = *(v46 + 72) * v25;
        v33 = v43;
        v34 = v44;
        (*(v46 + 16))(v43, v27 + v32, v44);
        v35 = v45;
        v36 = (*(v45 + 48) + v26);
        *v36 = v29;
        v36[1] = v30;
        v37 = *(v35 + 56) + v32;
        v9 = v42;
        (*(v31 + 32))(v37, v33, v34);

        v20 = v47;
      }

      while (v47);
    }

    v23 = v16;
    while (1)
    {
      v16 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v16 >= v21)
      {

        v6 = v39;
        v11 = v45;
        goto LABEL_21;
      }

      v24 = *(v13 + 8 * v16);
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v47 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

void *sub_100202EA8()
{
  v1 = v0;
  sub_10004B564(&qword_1005B00F8, &qword_1004D1688);
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
        v18 = *(*(v2 + 48) + v17);
        sub_10000709C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + v17) = v18;
        result = sub_10004B064(v19, (*(v4 + 56) + 32 * v17));
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

void *sub_100203074(uint64_t *a1, uint64_t *a2, void (*a3)(_BYTE *, uint64_t))
{
  v4 = v3;
  sub_10004B564(a1, a2);
  v5 = *v3;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v27 = v4;
    result = (v6 + 64);
    v9 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v5 + 64 + 8 * v9)
    {
      result = memmove(result, (v5 + 64), 8 * v9);
    }

    v11 = 0;
    *(v7 + 16) = *(v5 + 16);
    v12 = 1 << *(v5 + 32);
    v13 = *(v5 + 64);
    v14 = -1;
    if (v12 < 64)
    {
      v14 = ~(-1 << v12);
    }

    v15 = v14 & v13;
    v16 = (v12 + 63) >> 6;
    if ((v14 & v13) != 0)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v15 &= v15 - 1;
LABEL_17:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = 32 * v20;
        sub_10000709C(*(v5 + 56) + 32 * v20, v29);
        v26 = (*(v7 + 48) + v21);
        *v26 = v23;
        v26[1] = v24;
        a3(v29, *(v7 + 56) + v25);
      }

      while (v15);
    }

    v18 = v11;
    while (1)
    {
      v11 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v4 = v27;
        goto LABEL_21;
      }

      v19 = *(v5 + 64 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v4 = v7;
  }

  return result;
}

void *sub_100203214()
{
  v1 = v0;
  sub_10004B564(&qword_1005B01E8, &qword_1004D1770);
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

void *sub_10020337C()
{
  v1 = v0;
  sub_10004B564(&qword_1005B00C8, &qword_1004D1658);
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

void *sub_100203520()
{
  v1 = v0;
  sub_10004B564(&qword_1005B01D0, &qword_1004D1758);
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
        LOBYTE(v18) = *(*(v2 + 56) + v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + v17) = v18;
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

void *sub_100203688()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocation();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B01C0, &qword_1004D1748);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10020AABC(*(v5 + 56) + v27, v31, type metadata accessor for SecureLocation);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10020AE30(v26, *(v28 + 56) + v27, type metadata accessor for SecureLocation);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1002038E0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0118, &qword_1004D16A8);
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
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_100182FA8(&v33, v32))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v18 = (*(v2 + 48) + 16 * v16);
      v20 = *v18;
      v19 = v18[1];
      v16 *= 88;
      v21 = *(v2 + 56) + v16;
      v22 = *(v21 + 32);
      v23 = *(v21 + 48);
      v24 = *(v21 + 64);
      v38 = *(v21 + 80);
      v36 = v23;
      v37 = v24;
      v25 = *(v21 + 16);
      v33 = *v21;
      v34 = v25;
      v35 = v22;
      v26 = (*(v4 + 48) + v17);
      *v26 = v20;
      v26[1] = v19;
      v27 = *(v4 + 56) + v16;
      v28 = v34;
      *v27 = v33;
      *(v27 + 16) = v28;
      v29 = v35;
      v30 = v36;
      v31 = v37;
      *(v27 + 80) = v38;
      *(v27 + 48) = v30;
      *(v27 + 64) = v31;
      *(v27 + 32) = v29;
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

      v15 = *(v2 + 64 + 8 * v8);
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

void *sub_100203AB0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0288, &qword_1004D1830);
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
        LOWORD(v18) = *(*(v2 + 56) + 2 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 2 * v17) = v18;
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

void *sub_100203C18()
{
  v1 = v0;
  sub_10004B564(&qword_1005B01B8, &qword_1004D1740);
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
        v25 = v22[2];
        v26 = (*(v4 + 48) + v18);
        *v26 = v21;
        v26[1] = v20;
        v27 = (*(v4 + 56) + v17);
        *v27 = v23;
        v27[1] = v24;
        v27[2] = v25;
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

void *sub_100203DB0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0128, &qword_1004D16B8);
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
        v21 = *(v2 + 56) + v17;
        v22 = *v21;
        v23 = (*(v4 + 48) + v17);
        v24 = *(v21 + 8);
        *v23 = v20;
        v23[1] = v19;
        v25 = *(v4 + 56) + v17;
        *v25 = v22;
        *(v25 + 8) = v24;

        result = sub_100139350(v22, v24);
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

void *sub_100203F50()
{
  v1 = v0;
  v2 = sub_10004B564(&qword_1005AAC60, &qword_1004C46E8);
  v33 = *(v2 - 8);
  v3 = *(v33 + 64);
  __chkstk_darwin(v2 - 8);
  v32 = &v30 - v4;
  sub_10004B564(&qword_1005B0360, &qword_1004D1988);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v31 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v34 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    v15 = *(v5 + 64);
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
        v35 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v32;
        v27 = *(v33 + 72) * v21;
        sub_100005F04(*(v5 + 56) + v27, v32, &qword_1005AAC60, &qword_1004C46E8);
        v28 = v34;
        v29 = (*(v34 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_1000176A8(v26, *(v28 + 56) + v27, &qword_1005AAC60, &qword_1004C46E8);
        result = sub_100005F6C(v24, v25);
        v16 = v35;
      }

      while (v35);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v31;
        v7 = v34;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v35 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

void *sub_1002041B8()
{
  v1 = v0;
  v2 = type metadata accessor for SecureLocationsSubscription();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B01C8, &qword_1004D1750);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10020AABC(*(v5 + 56) + v27, v31, type metadata accessor for SecureLocationsSubscription);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10020AE30(v26, *(v28 + 56) + v27, type metadata accessor for SecureLocationsSubscription);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_100204438()
{
  v1 = v0;
  sub_10004B564(&qword_1005B03C0, &qword_1004D19F8);
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
        LODWORD(v18) = *(*(v2 + 56) + 4 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = v20;
        v21[1] = v19;
        *(*(v4 + 56) + 4 * v17) = v18;
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

void *sub_1002045A0()
{
  v1 = v0;
  sub_10004B564(&qword_1005B03B8, &qword_1004D19F0);
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

void *sub_100204774()
{
  v1 = v0;
  v2 = type metadata accessor for FenceRecord();
  v32 = *(v2 - 8);
  v3 = *(v32 + 64);
  __chkstk_darwin(v2 - 8);
  v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B00B8, &qword_1004D1648);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
    v15 = -1;
    if (v13 < 64)
    {
      v15 = ~(-1 << v13);
    }

    v16 = v15 & v14;
    v17 = (v13 + 63) >> 6;
    if ((v15 & v14) != 0)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        sub_10020AABC(*(v5 + 56) + v27, v31, type metadata accessor for FenceRecord);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        sub_10020AE30(v26, *(v28 + 56) + v27, type metadata accessor for FenceRecord);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
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
    *v1 = v7;
  }

  return result;
}

void *sub_1002049CC()
{
  v1 = v0;
  v28 = type metadata accessor for UUID();
  v31 = *(v28 - 8);
  v2 = *(v31 + 64);
  __chkstk_darwin(v28);
  v27 = v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B00B0, &qword_1004D1640);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26[0] = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v29 = v4;
    v30 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v26[1] = v31 + 32;
    v26[2] = v31 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v32 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v21 = v28;
        v20 = v29;
        v22 = v31;
        v23 = *(v31 + 72) * v19;
        v24 = v27;
        (*(v31 + 16))(v27, *(v29 + 48) + v23, v28);
        v19 *= 584;
        memcpy(v34, (*(v20 + 56) + v19), 0x241uLL);
        v25 = v30;
        (*(v22 + 32))(*(v30 + 48) + v23, v24, v21);
        memcpy((*(v25 + 56) + v19), v34, 0x241uLL);
        result = sub_10005D0C0(v34, &v33);
        v14 = v32;
      }

      while (v32);
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

        v1 = v26[0];
        v6 = v30;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v32 = (v18 - 1) & v18;
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

void *sub_100204C80(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_10004B564(a1, a2);
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

void *sub_100204E04()
{
  v1 = v0;
  v30 = type metadata accessor for UUID();
  v32 = *(v30 - 8);
  v2 = *(v32 + 64);
  __chkstk_darwin(v30);
  v29 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B02B0, &qword_1004D1858);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    v26 = v1;
    result = (v5 + 64);
    v8 = v4 + 64;
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    if (v6 != v4 || result >= v8 + 8 * v9)
    {
      result = memmove(result, (v4 + 64), 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v31 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v27 = v32 + 32;
    v28 = v32 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v33 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v32;
        v21 = *(v32 + 72) * v19;
        v22 = v29;
        v23 = v30;
        (*(v32 + 16))(v29, *(v4 + 48) + v21, v30);
        v19 *= 40;
        sub_100011004(*(v4 + 56) + v19, v34);
        v24 = v31;
        (*(v20 + 32))(*(v31 + 48) + v21, v22, v23);
        result = sub_100010BD4(v34, *(v24 + 56) + v19);
        v14 = v33;
      }

      while (v33);
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

        v1 = v26;
        v6 = v31;
        goto LABEL_18;
      }

      v18 = *(v8 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v33 = (v18 - 1) & v18;
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

char *sub_10020508C()
{
  v1 = v0;
  Priority = type metadata accessor for LocatePriority();
  v3 = *(Priority - 8);
  v40 = Priority;
  v41 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(Priority);
  v39 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0200, &qword_1004D1788);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v34 = v1;
    v35 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v42 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v36 = v41 + 32;
    v37 = v41 + 16;
    v38 = v6;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v44 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v23 = v40;
        v22 = v41;
        v24 = *(v41 + 72) * v21;
        v25 = v39;
        (*(v41 + 16))(v39, *(v6 + 48) + v24, v40);
        v26 = *(v6 + 56);
        v27 = 24 * v21;
        v28 = (v26 + 24 * v21);
        v29 = *v28;
        v30 = v28[1];
        v43 = v28[2];
        v31 = v42;
        (*(v22 + 32))(*(v42 + 48) + v24, v25, v23);
        v32 = (*(v31 + 56) + v27);
        v6 = v38;
        *v32 = v29;
        v32[1] = v30;
        v32[2] = v43;

        v16 = v44;
      }

      while (v44);
    }

    v19 = v12;
    v8 = v42;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v34;
        goto LABEL_18;
      }

      v20 = *(v35 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v44 = (v20 - 1) & v20;
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

void *sub_100205358(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v37);
  v36 = &v31 - v8;
  sub_10004B564(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_100205610(uint64_t (*a1)(void), uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v8 = v4;
  v50 = a1(0);
  v53 = *(v50 - 8);
  v9 = *(v53 + 64);
  __chkstk_darwin(v50);
  v49 = &v39 - v10;
  v48 = a2(0);
  v52 = *(v48 - 8);
  v11 = *(v52 + 64);
  __chkstk_darwin(v48);
  v47 = &v39 - v12;
  sub_10004B564(a3, a4);
  v13 = *v4;
  v14 = static _DictionaryStorage.copy(original:)();
  v15 = v14;
  if (*(v13 + 16))
  {
    result = (v14 + 64);
    v17 = (v13 + 64);
    v18 = ((1 << *(v15 + 32)) + 63) >> 6;
    v39 = v8;
    v40 = v13 + 64;
    if (v15 != v13 || result >= &v17[8 * v18])
    {
      result = memmove(result, v17, 8 * v18);
    }

    v19 = 0;
    v20 = *(v13 + 16);
    v51 = v15;
    *(v15 + 16) = v20;
    v21 = 1 << *(v13 + 32);
    v22 = -1;
    if (v21 < 64)
    {
      v22 = ~(-1 << v21);
    }

    v23 = v22 & *(v13 + 64);
    v24 = (v21 + 63) >> 6;
    v44 = v52 + 16;
    v45 = v24;
    v42 = v52 + 32;
    v43 = v53 + 16;
    v41 = v53 + 32;
    v46 = v13;
    v26 = v47;
    v25 = v48;
    if (v23)
    {
      do
      {
        v27 = __clz(__rbit64(v23));
        v54 = (v23 - 1) & v23;
LABEL_14:
        v30 = v27 | (v19 << 6);
        v31 = v52;
        v32 = *(v52 + 72) * v30;
        (*(v52 + 16))(v26, *(v13 + 48) + v32, v25);
        v33 = v53;
        v34 = *(v53 + 72) * v30;
        v35 = v49;
        v36 = v50;
        (*(v53 + 16))(v49, *(v13 + 56) + v34, v50);
        v37 = v51;
        (*(v31 + 32))(*(v51 + 48) + v32, v26, v25);
        v38 = *(v37 + 56);
        v13 = v46;
        result = (*(v33 + 32))(v38 + v34, v35, v36);
        v24 = v45;
        v23 = v54;
      }

      while (v54);
    }

    v28 = v19;
    while (1)
    {
      v19 = v28 + 1;
      if (__OFADD__(v28, 1))
      {
        break;
      }

      if (v19 >= v24)
      {

        v8 = v39;
        v15 = v51;
        goto LABEL_18;
      }

      v29 = *(v40 + 8 * v19);
      ++v28;
      if (v29)
      {
        v27 = __clz(__rbit64(v29));
        v54 = (v29 - 1) & v29;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v8 = v15;
  }

  return result;
}

char *sub_10020596C()
{
  v1 = v0;
  v40 = type metadata accessor for UUID();
  v42 = *(v40 - 8);
  v2 = *(v42 + 64);
  __chkstk_darwin(v40);
  v39 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0278, &qword_1004D1820);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v41 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v35 = v42 + 32;
    v36 = v42 + 16;
    v37 = v15;
    v38 = v4;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v43 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v42;
        v21 = *(v42 + 72) * v19;
        v23 = v39;
        v22 = v40;
        (*(v42 + 16))(v39, *(v4 + 48) + v21, v40);
        v24 = 24 * v19;
        v25 = (*(v4 + 56) + 24 * v19);
        v26 = *v25;
        v27 = v25[1];
        v28 = v25[2];
        v29 = v41;
        (*(v20 + 32))(*(v41 + 48) + v21, v23, v22);
        v30 = *(v29 + 56);
        v4 = v38;
        v31 = (v30 + v24);
        *v31 = v26;
        v31[1] = v27;
        v31[2] = v28;

        v15 = v37;
        v14 = v43;
      }

      while (v43);
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

        v1 = v33;
        v6 = v41;
        goto LABEL_18;
      }

      v18 = *(v34 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v43 = (v18 - 1) & v18;
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

char *sub_100205C18()
{
  v1 = v0;
  v32 = type metadata accessor for Destination();
  v34 = *(v32 - 8);
  v2 = *(v34 + 64);
  __chkstk_darwin(v32);
  v31 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0198, &qword_1004D1720);
  v4 = *v0;
  v5 = static _DictionaryStorage.copy(original:)();
  v6 = v5;
  if (*(v4 + 16))
  {
    result = (v5 + 64);
    v8 = (v4 + 64);
    v9 = ((1 << *(v6 + 32)) + 63) >> 6;
    v27 = v1;
    v28 = v4 + 64;
    if (v6 != v4 || result >= &v8[8 * v9])
    {
      result = memmove(result, v8, 8 * v9);
    }

    v10 = 0;
    v11 = *(v4 + 16);
    v33 = v6;
    *(v6 + 16) = v11;
    v12 = 1 << *(v4 + 32);
    v13 = -1;
    if (v12 < 64)
    {
      v13 = ~(-1 << v12);
    }

    v14 = v13 & *(v4 + 64);
    v15 = (v12 + 63) >> 6;
    v29 = v34 + 32;
    v30 = v34 + 16;
    if (v14)
    {
      do
      {
        v16 = __clz(__rbit64(v14));
        v35 = (v14 - 1) & v14;
LABEL_14:
        v19 = v16 | (v10 << 6);
        v20 = v34;
        v21 = *(v34 + 72) * v19;
        v23 = v31;
        v22 = v32;
        (*(v34 + 16))(v31, *(v4 + 48) + v21, v32);
        v24 = *(*(v4 + 56) + v19);
        v25 = v33;
        result = (*(v20 + 32))(*(v33 + 48) + v21, v23, v22);
        *(*(v25 + 56) + v19) = v24;
        v14 = v35;
      }

      while (v35);
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

        v1 = v27;
        v6 = v33;
        goto LABEL_18;
      }

      v18 = *(v28 + 8 * v10);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v35 = (v18 - 1) & v18;
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

char *sub_100205E88()
{
  v1 = v0;
  v2 = type metadata accessor for EncryptedLocation();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v37 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(&qword_1005B0268, &qword_1004D1810);
  v6 = *v0;
  v7 = static _DictionaryStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    result = (v7 + 64);
    v10 = (v6 + 64);
    v11 = ((1 << *(v8 + 32)) + 63) >> 6;
    v33 = v1;
    v34 = v6 + 64;
    if (v8 != v6 || result >= &v10[8 * v11])
    {
      result = memmove(result, v10, 8 * v11);
    }

    v12 = 0;
    v13 = *(v6 + 16);
    v40 = v8;
    *(v8 + 16) = v13;
    v14 = 1 << *(v6 + 32);
    v15 = -1;
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    v16 = v15 & *(v6 + 64);
    v17 = (v14 + 63) >> 6;
    v35 = v39 + 32;
    v36 = v39 + 16;
    if (v16)
    {
      do
      {
        v18 = __clz(__rbit64(v16));
        v41 = (v16 - 1) & v16;
LABEL_14:
        v21 = v18 | (v12 << 6);
        v22 = 16 * v21;
        v23 = (*(v6 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v38;
        v27 = v39;
        v28 = *(v39 + 72) * v21;
        v29 = v37;
        (*(v39 + 16))(v37, *(v6 + 56) + v28, v38);
        v30 = v40;
        v31 = (*(v40 + 48) + v22);
        *v31 = v24;
        v31[1] = v25;
        (*(v27 + 32))(*(v30 + 56) + v28, v29, v26);
        result = sub_100005F6C(v24, v25);
        v16 = v41;
      }

      while (v41);
    }

    v19 = v12;
    v8 = v40;
    while (1)
    {
      v12 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v12 >= v17)
      {

        v1 = v33;
        goto LABEL_18;
      }

      v20 = *(v34 + 8 * v12);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
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

void *sub_10020612C(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v37 = a1(0);
  v39 = *(v37 - 8);
  v7 = *(v39 + 64);
  __chkstk_darwin(v37);
  v36 = &v31 - v8;
  sub_10004B564(a2, a3);
  v9 = *v3;
  v10 = static _DictionaryStorage.copy(original:)();
  v11 = v10;
  if (*(v9 + 16))
  {
    result = (v10 + 64);
    v13 = ((1 << *(v11 + 32)) + 63) >> 6;
    v32 = v6;
    v33 = (v9 + 64);
    if (v11 != v9 || result >= v9 + 64 + 8 * v13)
    {
      result = memmove(result, v33, 8 * v13);
    }

    v15 = 0;
    v16 = *(v9 + 16);
    v38 = v11;
    *(v11 + 16) = v16;
    v17 = 1 << *(v9 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v9 + 64);
    v20 = (v17 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v19)
    {
      do
      {
        v21 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
LABEL_17:
        v24 = v21 | (v15 << 6);
        v25 = v39;
        v26 = *(v39 + 72) * v24;
        v28 = v36;
        v27 = v37;
        (*(v39 + 16))(v36, *(v9 + 48) + v26, v37);
        v29 = *(*(v9 + 56) + 8 * v24);
        v30 = v38;
        (*(v25 + 32))(*(v38 + 48) + v26, v28, v27);
        *(*(v30 + 56) + 8 * v24) = v29;

        v19 = v40;
      }

      while (v40);
    }

    v22 = v15;
    while (1)
    {
      v15 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v15 >= v20)
      {

        v6 = v32;
        v11 = v38;
        goto LABEL_21;
      }

      v23 = *(v33 + v15);
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v40 = (v23 - 1) & v23;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v6 = v11;
  }

  return result;
}

char *sub_100206414(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v7 = v4;
  v49 = sub_10004B564(a1, a2);
  v52 = *(v49 - 8);
  v8 = *(v52 + 64);
  __chkstk_darwin(v49);
  v48 = &v38 - v9;
  v47 = type metadata accessor for UUID();
  v51 = *(v47 - 8);
  v10 = *(v51 + 64);
  __chkstk_darwin(v47);
  v46 = &v38 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10004B564(a3, a4);
  v12 = *v4;
  v13 = static _DictionaryStorage.copy(original:)();
  v14 = v13;
  if (*(v12 + 16))
  {
    result = (v13 + 64);
    v16 = (v12 + 64);
    v17 = ((1 << *(v14 + 32)) + 63) >> 6;
    v38 = v7;
    v39 = v12 + 64;
    if (v14 != v12 || result >= &v16[8 * v17])
    {
      result = memmove(result, v16, 8 * v17);
    }

    v18 = 0;
    v19 = *(v12 + 16);
    v50 = v14;
    *(v14 + 16) = v19;
    v20 = 1 << *(v12 + 32);
    v21 = -1;
    if (v20 < 64)
    {
      v21 = ~(-1 << v20);
    }

    v22 = v21 & *(v12 + 64);
    v23 = (v20 + 63) >> 6;
    v43 = v51 + 16;
    v44 = v23;
    v41 = v51 + 32;
    v42 = v52 + 16;
    v40 = v52 + 32;
    v45 = v12;
    v25 = v46;
    v24 = v47;
    if (v22)
    {
      do
      {
        v26 = __clz(__rbit64(v22));
        v53 = (v22 - 1) & v22;
LABEL_14:
        v29 = v26 | (v18 << 6);
        v30 = v51;
        v31 = *(v51 + 72) * v29;
        (*(v51 + 16))(v25, *(v12 + 48) + v31, v24);
        v32 = v52;
        v33 = *(v52 + 72) * v29;
        v34 = v48;
        v35 = v49;
        (*(v52 + 16))(v48, *(v12 + 56) + v33, v49);
        v36 = v50;
        (*(v30 + 32))(*(v50 + 48) + v31, v25, v24);
        v37 = *(v36 + 56);
        v12 = v45;
        result = (*(v32 + 32))(v37 + v33, v34, v35);
        v23 = v44;
        v22 = v53;
      }

      while (v53);
    }

    v27 = v18;
    while (1)
    {
      v18 = v27 + 1;
      if (__OFADD__(v27, 1))
      {
        break;
      }

      if (v18 >= v23)
      {

        v7 = v38;
        v14 = v50;
        goto LABEL_18;
      }

      v28 = *(v39 + 8 * v18);
      ++v27;
      if (v28)
      {
        v26 = __clz(__rbit64(v28));
        v53 = (v28 - 1) & v28;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v7 = v14;
  }

  return result;
}

id sub_100206760()
{
  v1 = v0;
  sub_10004B564(&qword_1005B0358, &qword_1004D1980);
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
        sub_10000709C(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        sub_10004B064(v19, (*(v4 + 56) + 32 * v17));
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

uint64_t sub_1002068E0()
{
  v1 = *v0;
  v2 = *(*v0 + 32);
  v3 = *(*v0 + 24);
  v6 = *v0;

  *v3 = *(v1 + 16);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100206A10(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v6 = (a2 + *a2);
  v3 = a2[1];
  v4 = swift_task_alloc();
  *(v2 + 24) = v4;
  *v4 = v2;
  v4[1] = sub_100206B04;

  return v6(v2 + 32);
}

uint64_t sub_100206B04()
{
  v1 = *v0;
  v2 = *(*v0 + 24);
  v3 = *(*v0 + 16);
  v6 = *v0;

  *v3 = *(v1 + 32);
  v4 = *(v6 + 8);

  return v4();
}

uint64_t sub_100206C18()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 16) = v2;
  *v2 = v0;
  v2[1] = sub_100206CA8;

  return daemon.getter();
}

uint64_t sub_100206CA8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 16);
  v12 = *v1;
  *(v3 + 24) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 32) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1001E6D00(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_1001E6D00(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100206E84;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100206E84(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 32);
  v8 = *v2;
  v3[5] = a1;
  v3[6] = v1;

  if (v1)
  {
    v5 = sub_1002072C4;
  }

  else
  {
    v6 = v3[3];

    v5 = sub_100206FA0;
  }

  return _swift_task_switch(v5, 0, 0);
}

uint64_t sub_100206FA0()
{
  v10 = v0;
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  sub_10000A6F0(v1, qword_1005DFF18);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v9 = v5;
    *v4 = 136446210;
    *(v4 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E5540, &v9);
    _os_log_impl(&_mh_execute_header, v2, v3, "%{public}s reset all local DB", v4, 0xCu);
    sub_100004984(v5);
  }

  v6 = swift_task_alloc();
  *(v0 + 56) = v6;
  *v6 = v0;
  v6[1] = sub_10020714C;
  v7 = *(v0 + 40);

  return sub_100309068();
}

uint64_t sub_10020714C()
{
  v2 = *(*v1 + 56);
  v5 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v3 = sub_1002074D0;
  }

  else
  {
    v3 = sub_100207260;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_100207260()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_1002072C4()
{
  v13 = v0;
  v1 = v0[6];
  v2 = v0[3];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E5540, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with error %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

uint64_t sub_1002074D0()
{
  v13 = v0;
  v1 = v0[8];
  v2 = v0[5];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v12 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000013, 0x80000001004E5540, &v12);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed with error %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[1];

  return v10();
}

unint64_t sub_1002076DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0110, &qword_1004D16A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, v11, &qword_1005A92A0, &qword_1004C2818);
      v5 = v11[0];
      result = sub_1001FD7B4(v11[0]);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      result = sub_100010BD4(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
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

unint64_t sub_100207808(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0120, &qword_1004D16B0);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v16, &qword_1005B0130, &qword_1004D16C0);
      v5 = v16;
      v6 = v17;
      result = sub_100011104(v16, v17, &String.hash(into:), sub_10001145C);
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

unint64_t sub_100207968(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0180, &qword_1004D1710);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10004B564(&qword_1005B0178, &qword_1004D1708);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v10, v6, &qword_1005B0180, &qword_1004D1710);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100011104(*v6, v13, &String.hash(into:), sub_10001145C);
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
      v19 = type metadata accessor for Handle();
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

unint64_t sub_100207B7C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0080, &qword_1004D1618);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v13, &qword_1005B0088, &qword_1004D38F0);
      v5 = v13;
      v6 = v14;
      result = sub_100011104(v13, v14, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004B064(&v15, (v3[7] + 32 * result));
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

unint64_t sub_100207CD4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005A9E50, &qword_1004C33B8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v13, &qword_1005A9E58, &qword_1004C33C0);
      v5 = v13;
      v6 = v14;
      result = sub_100011104(v13, v14, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_10004B064(&v15, (v3[7] + 32 * result));
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

uint64_t sub_100207E2C(uint64_t a1, uint64_t a2)
{
  v82 = a2;
  v3 = type metadata accessor for Friend();
  v80 = *(v3 - 8);
  v81 = v3;
  v4 = *(v80 + 64);
  v5 = __chkstk_darwin(v3);
  v78 = &v69 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v79 = &v69 - v7;
  v75 = type metadata accessor for Device();
  v73 = *(v75 - 8);
  v8 = *(v73 + 64);
  __chkstk_darwin(v75);
  v70 = &v69 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = sub_10004B564(&qword_1005B0010, &qword_1004D1578);
  v10 = *(*(v72 - 8) + 64);
  __chkstk_darwin(v72);
  v74 = &v69 - v11;
  v12 = sub_10004B564(&qword_1005AA718, &qword_1004C4370);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v71 = &v69 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v76 = &v69 - v17;
  __chkstk_darwin(v16);
  v77 = &v69 - v18;
  v19 = type metadata accessor for DataManager.State(0);
  v20 = *(*(v19 - 8) + 64);
  v21 = __chkstk_darwin(v19);
  v23 = &v69 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __chkstk_darwin(v21);
  v26 = &v69 - v25;
  v27 = __chkstk_darwin(v24);
  v29 = &v69 - v28;
  v30 = __chkstk_darwin(v27);
  v32 = &v69 - v31;
  __chkstk_darwin(v30);
  v34 = &v69 - v33;
  v35 = sub_10004B564(&qword_1005B0018, &qword_1004D1580);
  v36 = *(*(v35 - 8) + 64);
  v37 = __chkstk_darwin(v35 - 8);
  v39 = &v69 - v38;
  v40 = *(v37 + 56);
  sub_10020AABC(a1, &v69 - v38, type metadata accessor for DataManager.State);
  sub_10020AABC(v82, &v39[v40], type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        if (swift_getEnumCaseMultiPayload() != 6)
        {
          goto LABEL_28;
        }
      }

      else if (swift_getEnumCaseMultiPayload() != 7)
      {
        goto LABEL_28;
      }
    }

    else
    {
      if (EnumCaseMultiPayload == 4)
      {
        sub_10020AABC(v39, v23, type metadata accessor for DataManager.State);
        if (swift_getEnumCaseMultiPayload() != 4)
        {
          goto LABEL_28;
        }

        v42 = *v23;
        goto LABEL_22;
      }

      if (swift_getEnumCaseMultiPayload() != 5)
      {
        goto LABEL_28;
      }
    }

    sub_10020A58C(v39, type metadata accessor for DataManager.State);
    v49 = 1;
    return v49 & 1;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      sub_10020AABC(v39, v32, type metadata accessor for DataManager.State);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v80 + 8))(v32, v81);
        goto LABEL_28;
      }

      v52 = v79;
      v51 = v80;
      v53 = *(v80 + 32);
      v54 = v81;
      v53(v79, v32, v81);
      v55 = v78;
      v53(v78, &v39[v40], v54);
      v49 = static Friend.== infix(_:_:)();
      v56 = *(v51 + 8);
      v56(v55, v54);
      v56(v52, v54);
      goto LABEL_23;
    }

    sub_10020AABC(v39, v34, type metadata accessor for DataManager.State);
    if (swift_getEnumCaseMultiPayload())
    {
      sub_100002CE0(v34, &qword_1005AA718, &qword_1004C4370);
LABEL_28:
      sub_100002CE0(v39, &qword_1005B0018, &qword_1004D1580);
      v49 = 0;
      return v49 & 1;
    }

    v58 = v77;
    sub_1000176A8(v34, v77, &qword_1005AA718, &qword_1004C4370);
    v59 = &v39[v40];
    v60 = v76;
    sub_1000176A8(v59, v76, &qword_1005AA718, &qword_1004C4370);
    v61 = *(v72 + 48);
    v62 = v74;
    sub_100005F04(v58, v74, &qword_1005AA718, &qword_1004C4370);
    sub_100005F04(v60, v62 + v61, &qword_1005AA718, &qword_1004C4370);
    v63 = v73;
    v64 = *(v73 + 48);
    v65 = v75;
    if (v64(v62, 1, v75) == 1)
    {
      sub_100002CE0(v60, &qword_1005AA718, &qword_1004C4370);
      sub_100002CE0(v58, &qword_1005AA718, &qword_1004C4370);
      if (v64(v62 + v61, 1, v65) == 1)
      {
        sub_100002CE0(v62, &qword_1005AA718, &qword_1004C4370);
        v49 = 1;
        goto LABEL_23;
      }
    }

    else
    {
      v66 = v71;
      sub_100005F04(v62, v71, &qword_1005AA718, &qword_1004C4370);
      if (v64(v62 + v61, 1, v65) != 1)
      {
        v67 = v70;
        (*(v63 + 32))(v70, v62 + v61, v65);
        sub_1001E6D00(&qword_1005AE9C8, &type metadata accessor for Device);
        v49 = dispatch thunk of static Equatable.== infix(_:_:)();
        v68 = *(v63 + 8);
        v68(v67, v65);
        sub_100002CE0(v76, &qword_1005AA718, &qword_1004C4370);
        sub_100002CE0(v77, &qword_1005AA718, &qword_1004C4370);
        v68(v66, v65);
        sub_100002CE0(v62, &qword_1005AA718, &qword_1004C4370);
        goto LABEL_23;
      }

      sub_100002CE0(v76, &qword_1005AA718, &qword_1004C4370);
      sub_100002CE0(v77, &qword_1005AA718, &qword_1004C4370);
      (*(v63 + 8))(v66, v65);
    }

    sub_100002CE0(v62, &qword_1005B0010, &qword_1004D1578);
    v49 = 0;
    goto LABEL_23;
  }

  if (EnumCaseMultiPayload == 2)
  {
    sub_10020AABC(v39, v29, type metadata accessor for DataManager.State);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      (*(v80 + 8))(v29, v81);
      goto LABEL_28;
    }

    v44 = v79;
    v43 = v80;
    v45 = *(v80 + 32);
    v46 = v29;
    v47 = v81;
    v45(v79, v46, v81);
    v48 = v78;
    v45(v78, &v39[v40], v47);
    v49 = static Friend.== infix(_:_:)();
    v50 = *(v43 + 8);
    v50(v48, v47);
    v50(v44, v47);
    goto LABEL_23;
  }

  sub_10020AABC(v39, v26, type metadata accessor for DataManager.State);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_28;
  }

  v42 = *v26;
LABEL_22:
  v49 = v42 ^ v39[v40] ^ 1;
LABEL_23:
  sub_10020A58C(v39, type metadata accessor for DataManager.State);
  return v49 & 1;
}

unint64_t sub_1002087C4(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B01E0, &qword_1004D1768);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10004B564(&qword_1005B0008, &qword_1004D1570);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v10, v6, &qword_1005B01E0, &qword_1004D1768);
      result = sub_1001FD93C(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Handle();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for Location();
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

unint64_t sub_1002089E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0340, &qword_1004D1968);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      *(v3[7] + 16 * result) = v13;
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

unint64_t sub_100208B28(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return &_swiftEmptyDictionarySingleton;
  }

  sub_10004B564(&qword_1005B0118, &qword_1004D16A8);
  v3 = static _DictionaryStorage.allocate(capacity:)();

  v4 = *(a1 + 112);
  v31 = *(a1 + 96);
  v32 = v4;
  v33 = *(a1 + 128);
  v5 = *(a1 + 48);
  v27 = *(a1 + 32);
  v28 = v5;
  v6 = *(a1 + 80);
  v29 = *(a1 + 64);
  v30 = v6;
  v8 = *(&v27 + 1);
  v7 = v27;
  sub_100005F04(&v27, v26, &qword_1005ADC98, &qword_1004CC1C8);
  result = sub_100011104(v7, v8, &String.hash(into:), sub_10001145C);
  if (v10)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v11 = (a1 + 136);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    v12 = (v3[6] + 16 * result);
    *v12 = v7;
    v12[1] = v8;
    v13 = v3[7] + 88 * result;
    v14 = v29;
    *v13 = v28;
    *(v13 + 16) = v14;
    v15 = v30;
    v16 = v31;
    v17 = v32;
    *(v13 + 80) = v33;
    *(v13 + 48) = v16;
    *(v13 + 64) = v17;
    *(v13 + 32) = v15;
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

    v21 = (v11 + 104);
    v22 = v11[5];
    v31 = v11[4];
    v32 = v22;
    v33 = *(v11 + 12);
    v23 = v11[1];
    v27 = *v11;
    v28 = v23;
    v24 = v11[3];
    v29 = v11[2];
    v30 = v24;
    v8 = *(&v27 + 1);
    v7 = v27;
    sub_100005F04(&v27, v26, &qword_1005ADC98, &qword_1004CC1C8);
    result = sub_100011104(v7, v8, &String.hash(into:), sub_10001145C);
    v11 = v21;
    if (v25)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_100208D38(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0090, &qword_1004D1620);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
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

unint64_t sub_100208E74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005A8A40, &qword_1004C18E0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      v8 = v7;
      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v11 = (v3[6] + 16 * result);
      *v11 = v5;
      v11[1] = v6;
      *(v3[7] + 8 * result) = v8;
      v12 = v3[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v3[2] = v14;
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

unint64_t sub_100208FA0(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0290, &qword_1004D1838);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10004B564(&qword_1005B0298, &qword_1004D1840);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v10, v6, &qword_1005B0290, &qword_1004D1838);
      result = sub_1001FDA80(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Destination();
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

unint64_t sub_100209188(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B00C8, &qword_1004D1658);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002092FC(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t *a5)
{
  v28 = a3;
  v9 = sub_10004B564(a2, a3);
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v27 - v12;
  v14 = *(a1 + 16);
  if (v14)
  {
    sub_10004B564(a4, a5);
    v15 = static _DictionaryStorage.allocate(capacity:)();
    v16 = *(v9 + 48);
    v17 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v18 = *(v10 + 72);

    while (1)
    {
      sub_100005F04(v17, v13, a2, v28);
      result = sub_1001FD868(v13);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_1002094DC(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0388, &qword_1004D19C0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10004B564(&qword_1005B0390, &qword_1004D19C8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v10, v6, &qword_1005B0388, &qword_1004D19C0);
      result = sub_1001FD868(v6);
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
      v18 = sub_10004B564(&qword_1005AFA18, &qword_1004D1148);
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

unint64_t sub_100209708(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0368, &qword_1004D19A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10004B564(&qword_1005B02A8, &qword_1004D1850);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v10, v6, &qword_1005B0368, &qword_1004D19A8);
      result = sub_1001FDB54(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for ClientID();
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

unint64_t sub_100209928(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0050, &qword_1004D15A8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10004B564(&qword_1005B0058, &qword_1004D15B0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v10, v6, &qword_1005B0050, &qword_1004D15A8);
      result = sub_1001FDC28(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Friend();
      (*(*(v16 - 8) + 32))(v15 + *(*(v16 - 8) + 72) * v14, v6, v16);
      v17 = v8[7];
      v18 = type metadata accessor for FriendshipAction();
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

unint64_t sub_100209B48(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B0040, &qword_1004D1598);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10004B564(&qword_1005B0028, &qword_1004D1590);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v10, v6, &qword_1005B0040, &qword_1004D1598);
      result = sub_1001FDCFC(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for AppNotificationEvent.EventType();
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

unint64_t sub_100209D30(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B02B8, &qword_1004D1860);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i = (i + 24))
    {
      v5 = *(i - 8);
      v11 = *i;

      result = sub_1001FDDD0(v5);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + result) = v5;
      *(v3[7] + 16 * result) = v11;
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209E2C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B0158, &qword_1004D16E8);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100005F04(v4, &v16, &qword_1005B0160, &qword_1004D16F0);
      v5 = v16;
      v6 = v17;
      result = sub_100011104(v16, v17, &String.hash(into:), sub_10001145C);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_100209F8C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005B01A0, &qword_1004D1728);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_10004B564(&qword_1005B0198, &qword_1004D1720);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100005F04(v10, v6, &qword_1005B01A0, &qword_1004D1728);
      result = sub_1001FDA80(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for Destination();
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

unint64_t sub_10020A174(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_10004B564(&qword_1005B01A8, &qword_1004D1730);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100011104(v5, v6, &String.hash(into:), sub_10001145C);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

BOOL sub_10020A2A0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DataManager.State(0);
  v5 = *(*(v4 - 8) + 64);
  v6 = __chkstk_darwin(v4);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  sub_10020AABC(a1, &v20 - v9, type metadata accessor for DataManager.State);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        v12 = 1;
      }

      else
      {
        v12 = 5;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      v12 = 7;
    }

    else
    {
      v12 = 0;
    }
  }

  else if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v13 = type metadata accessor for Friend();
      (*(*(v13 - 8) + 8))(v10, v13);
      v12 = 4;
    }

    else
    {
      v12 = 6;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v14 = type metadata accessor for Friend();
    (*(*(v14 - 8) + 8))(v10, v14);
    v12 = 3;
  }

  else
  {
    sub_100002CE0(v10, &qword_1005AA718, &qword_1004C4370);
    v12 = 2;
  }

  sub_10020AABC(a2, v8, type metadata accessor for DataManager.State);
  v15 = swift_getEnumCaseMultiPayload();
  if (v15 > 3)
  {
    if (v15 > 5)
    {
      if (v15 == 6)
      {
        v16 = 1;
      }

      else
      {
        v16 = 5;
      }
    }

    else if (v15 == 4)
    {
      v16 = 7;
    }

    else
    {
      v16 = 0;
    }
  }

  else if (v15 > 1)
  {
    if (v15 == 2)
    {
      v17 = type metadata accessor for Friend();
      (*(*(v17 - 8) + 8))(v8, v17);
      v16 = 4;
    }

    else
    {
      v16 = 6;
    }
  }

  else if (v15)
  {
    v18 = type metadata accessor for Friend();
    (*(*(v18 - 8) + 8))(v8, v18);
    v16 = 3;
  }

  else
  {
    sub_100002CE0(v8, &qword_1005AA718, &qword_1004C4370);
    v16 = 2;
  }

  return v12 < v16;
}

uint64_t sub_10020A58C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_10020A5EC(uint64_t a1)
{
  v3 = v2;
  v5 = *(type metadata accessor for Response() - 8);
  v6 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v7 = v6 + *(v5 + 64);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + v7);
  v11 = *(v1 + (v7 & 0xFFFFFFFFFFFFFFF8) + 8);
  v12 = *(v1 + (((v7 & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8));
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_100003690;

  return sub_1001F8930(a1, v8, v9, v1 + v6, v10, v11, v12);
}

uint64_t sub_10020A730(uint64_t a1)
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
  v10[1] = sub_100003690;

  return sub_1001FA6B8(a1, v4, v5, v6, v7, v9);
}

uint64_t sub_10020A804(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001FAD94(a1, v4, v5, v6);
}

uint64_t sub_10020A8B8(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001FAE40(a1, v5, v4);
}

uint64_t sub_10020A964(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001FAEDC(a1, v5, v4);
}

uint64_t sub_10020AA10(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001FC634(a1, v5, v4);
}

uint64_t sub_10020AABC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AB24(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001F4F34(a1, v5, v4);
}

uint64_t sub_10020ABD0(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001F6FB8(a1, v5, v4);
}

uint64_t sub_10020AC7C(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001F7054(a1, v4, v5, v6);
}

uint64_t sub_10020AD30(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001F7228(a1, v5, v4);
}

unint64_t sub_10020ADDC()
{
  result = qword_1005B00F0;
  if (!qword_1005B00F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B00F0);
  }

  return result;
}

uint64_t sub_10020AE30(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10020AE98()
{
  v2 = *(type metadata accessor for AckAlertEndpoint() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = (*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 31) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(sub_10004B564(&qword_1005B0138, &qword_1004D16C8) - 8);
  v7 = (v5 + *(v6 + 80) + 40) & ~*(v6 + 80);
  v8 = *(v0 + 16);
  v9 = v0 + v4;
  v10 = *(v0 + v4);
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);
  v13 = *(v0 + ((*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8));
  v14 = swift_task_alloc();
  *(v1 + 16) = v14;
  *v14 = v1;
  v14[1] = sub_10000368C;

  return sub_1001E73A8(v8, v0 + v3, v10, v11, v12, v0 + v5, v0 + v7, v13);
}

unint64_t sub_10020B050()
{
  result = qword_1005B0150;
  if (!qword_1005B0150)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0150);
  }

  return result;
}

uint64_t sub_10020B0A4(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100002EF4(a1, v5);
}

uint64_t sub_10020B15C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_100206A10(a1, v5);
}

uint64_t sub_10020B214(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_10001DCB4(a1, v5);
}

uint64_t sub_10020B2E4()
{
  v2 = *(type metadata accessor for Account() - 8);
  v3 = (*(v2 + 80) + 24) & ~*(v2 + 80);
  v4 = *(v0 + 16);
  v5 = *(v0 + ((*(v2 + 64) + v3 + 7) & 0xFFFFFFFFFFFFFFF8));
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = sub_10000368C;

  return sub_1001EDA70(v4, v0 + v3, v5);
}

uint64_t sub_10020B3EC(uint64_t a1)
{
  v4 = *(type metadata accessor for Account() - 8);
  v5 = (*(v4 + 80) + 24) & ~*(v4 + 80);
  v6 = *(v1 + 16);
  v7 = *(v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1001EDE94(a1, v6, v1 + v5, v7);
}

uint64_t sub_10020B508(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_1001EECA4(a1, v5);
}

uint64_t sub_10020B5B0(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_1001EFA10(a1, a2, v7);
}

uint64_t sub_10020B6A0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1001F02AC(a1, v4, v5, v7);
}

uint64_t sub_10020B760(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_10000368C;

  return sub_1001F0C4C(a1, v4, v5, v6);
}

uint64_t sub_10020B818(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1001F3424(a1, v4, v5, v7);
}

uint64_t sub_10020B8D8()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();
  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10020B918(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_10000368C;

  return sub_1001F31C4(a1, v4, v5, v7);
}

uint64_t sub_10020B9D8()
{
  v1 = type metadata accessor for Account();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

uint64_t sub_10020BAB0(uint64_t a1, uint64_t a2)
{
  v4 = sub_10004B564(&qword_1005B02F8, &qword_1004D1870);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_10020BB20()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_10000368C;

  return sub_1001DEB98();
}

uint64_t sub_10020BBBC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_10000368C;

  return sub_1001DCB08(a1, a2, v7);
}

uint64_t sub_10020BC6C(uint64_t a1)
{
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  v6 = swift_task_alloc();
  *(v2 + 16) = v6;
  *v6 = v2;
  v6[1] = sub_10000368C;

  return sub_10001DCB4(a1, v5);
}

uint64_t sub_10020BD4C()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DataManager.Error(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DataManager.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_10020BF1C()
{
  result = qword_1005B0458;
  if (!qword_1005B0458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0458);
  }

  return result;
}

unint64_t sub_10020BF74()
{
  result = qword_1005B0460;
  if (!qword_1005B0460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0460);
  }

  return result;
}

unint64_t sub_10020BFC8()
{
  result = qword_1005B0468;
  if (!qword_1005B0468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0468);
  }

  return result;
}

unint64_t sub_10020C01C()
{
  result = qword_1005B0478;
  if (!qword_1005B0478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0478);
  }

  return result;
}

uint64_t sub_10020C070(uint64_t a1)
{
  if ((a1 - 1) >= 0xC)
  {
    return 12;
  }

  else
  {
    return a1 - 1;
  }
}

unint64_t sub_10020C098()
{
  result = qword_1005B0488;
  if (!qword_1005B0488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0488);
  }

  return result;
}

unint64_t sub_10020C0F0()
{
  result = qword_1005B0490;
  if (!qword_1005B0490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0490);
  }

  return result;
}

unint64_t sub_10020C148()
{
  result = qword_1005B0498;
  if (!qword_1005B0498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005B0498);
  }

  return result;
}

uint64_t sub_10020C1B4(uint64_t a1, uint64_t a2)
{
  v3[12] = a2;
  v3[13] = v2;
  v3[11] = a1;
  v3[14] = *v2;
  v4 = type metadata accessor for Response();
  v3[15] = v4;
  v5 = *(v4 - 8);
  v3[16] = v5;
  v6 = *(v5 + 64) + 15;
  v3[17] = swift_task_alloc();
  v7 = *(*(type metadata accessor for AckAlertEndpoint() - 8) + 64) + 15;
  v3[18] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v3[19] = swift_task_alloc();
  v9 = type metadata accessor for Account();
  v3[20] = v9;
  v10 = *(v9 - 8);
  v3[21] = v10;
  v11 = *(v10 + 64) + 15;
  v3[22] = swift_task_alloc();
  v3[23] = swift_task_alloc();
  v3[24] = swift_task_alloc();
  v12 = async function pointer to daemon.getter[1];
  v13 = swift_task_alloc();
  v3[25] = v13;
  *v13 = v3;
  v13[1] = sub_10020C3A8;

  return daemon.getter();
}

uint64_t sub_10020C3A8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 200);
  v12 = *v1;
  *(v3 + 208) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 216) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_100009368(&unk_1005AFA50, &type metadata accessor for Daemon);
  v10 = sub_100009368(&qword_1005A9118, type metadata accessor for AccountService);
  *v6 = v12;
  v6[1] = sub_10020C584;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10020C584(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 216);
  v6 = *v2;
  v4[28] = a1;
  v4[29] = v1;

  if (v1)
  {
    v7 = v4[13];

    return _swift_task_switch(sub_10020D2AC, v7, 0);
  }

  else
  {
    v8 = v4[26];

    v9 = swift_task_alloc();
    v4[30] = v9;
    *v9 = v6;
    v9[1] = sub_10020C710;
    v10 = v4[19];

    return sub_10000EB24(v10);
  }
}

uint64_t sub_10020C710()
{
  v1 = *(*v0 + 240);
  v2 = *(*v0 + 104);
  v4 = *v0;

  return _swift_task_switch(sub_10020C820, v2, 0);
}

uint64_t sub_10020C820()
{
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[19];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    sub_10020D35C(v3);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_10000A6F0(v4, qword_1005DFF18);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Missing primary account to ackAlert", v7, 2u);
    }

    v8 = v0[28];

    sub_10020ADDC();
    swift_allocError();
    *v9 = 7;
    swift_willThrow();

    v11 = v0[23];
    v10 = v0[24];
    v12 = v0[22];
    v14 = v0[18];
    v13 = v0[19];
    v15 = v0[17];

    v16 = v0[1];

    return v16();
  }

  else
  {
    v19 = v0[23];
    v18 = v0[24];
    v20 = v0[18];
    v29 = v0[22];
    v30 = v0[12];
    (*(v2 + 32))(v18, v3, v1);
    v21 = *(v2 + 16);
    v21(v19, v18, v1);
    sub_100143174();
    v22 = URLComponents.path.modify();
    v23._countAndFlagsBits = 0x72656C416B63612FLL;
    v23._object = 0xE900000000000074;
    String.append(_:)(v23);
    v22(v0 + 7, 0);
    v24 = *(v2 + 8);
    v0[31] = v24;
    v0[32] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    v24(v19, v1);
    v21(v29, v18, v1);

    v25 = swift_task_alloc();
    v0[33] = v25;
    *v25 = v0;
    v25[1] = sub_10020CB80;
    v26 = v0[22];
    v27 = v0[11];
    v28 = v0[12];

    return sub_100143D84(v26, v27, v28);
  }
}

uint64_t sub_10020CB80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *v4;
  v6 = *v4;
  v7 = *(*v4 + 264);
  v8 = *v4;
  v6[34] = a1;
  v6[35] = a2;
  v6[36] = a3;
  v6[37] = v3;

  v9 = v5[13];
  if (v3)
  {
    v10 = sub_10020CFC4;
  }

  else
  {
    v10 = sub_10020CCB8;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_10020CCB8()
{
  v1 = *(v0 + 288);
  v13 = *(v0 + 272);
  v2 = *(v0 + 192);
  v3 = *(v0 + 144);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  Account.dsid.getter();
  Account.appToken.getter();
  *(v0 + 40) = type metadata accessor for BasicCredential();
  *(v0 + 48) = &protocol witness table for BasicCredential;
  sub_10000331C((v0 + 16));
  BasicCredential.init(username:password:)();
  v6 = sub_100009368(&qword_1005AFFB0, type metadata accessor for DataManager);
  v7 = swift_task_alloc();
  *(v0 + 304) = v7;
  *(v7 + 16) = v4;
  *(v7 + 24) = v3;
  *(v7 + 32) = v13;
  *(v7 + 48) = v1;
  *(v7 + 56) = v0 + 16;
  *(v7 + 64) = v5;
  v8 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v9 = swift_task_alloc();
  *(v0 + 312) = v9;
  *v9 = v0;
  v9[1] = sub_10020CE70;
  v10 = *(v0 + 136);
  v11 = *(v0 + 120);

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v10, v4, v6, 0xD00000000000002ALL, 0x80000001004E52E0, sub_10020D420, v7, v11);
}

uint64_t sub_10020CE70()
{
  v2 = *v1;
  v3 = (*v1)[39];
  v9 = *v1;
  (*v1)[40] = v0;

  if (v0)
  {
    v4 = v2[13];
    v5 = sub_10020D198;
  }

  else
  {
    v6 = v2[38];
    v7 = v2[13];
    (*(v2[16] + 8))(v2[17], v2[15]);

    sub_100004984(v2 + 2);
    v5 = sub_10020D098;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_10020CFC4()
{
  v2 = v0[31];
  v1 = v0[32];
  v3 = v0[28];
  v4 = v0[24];
  v5 = v0[20];
  v6 = v0[18];

  v2(v4, v5);
  sub_10020D3C4(v6);
  v7 = v0[37];
  v9 = v0[23];
  v8 = v0[24];
  v10 = v0[22];
  v12 = v0[18];
  v11 = v0[19];
  v13 = v0[17];

  v14 = v0[1];

  return v14();
}

uint64_t sub_10020D098()
{
  v1 = v0[35];
  v2 = v0[36];
  v3 = v0[34];
  v4 = v0[31];
  v5 = v0[32];
  v6 = v0[28];
  v8 = v0[23];
  v7 = v0[24];
  v9 = v0[20];
  v13 = v0[22];
  v14 = v0[19];
  v10 = v0[18];
  v15 = v0[17];

  sub_10001A794(v1, v2);

  v4(v7, v9);
  sub_10020D3C4(v10);

  v11 = v0[1];

  return v11();
}

uint64_t sub_10020D198()
{
  v1 = v0[38];
  v2 = v0[35];
  v3 = v0[36];
  v4 = v0[34];
  v6 = v0[31];
  v5 = v0[32];
  v7 = v0[28];
  v8 = v0[24];
  v9 = v0[20];
  v10 = v0[18];

  sub_100004984(v0 + 2);

  sub_10001A794(v2, v3);

  v6(v8, v9);
  sub_10020D3C4(v10);
  v11 = v0[40];
  v13 = v0[23];
  v12 = v0[24];
  v14 = v0[22];
  v16 = v0[18];
  v15 = v0[19];
  v17 = v0[17];

  v18 = v0[1];

  return v18();
}

uint64_t sub_10020D2AC()
{
  v1 = v0[26];

  v2 = v0[29];
  v4 = v0[23];
  v3 = v0[24];
  v5 = v0[22];
  v7 = v0[18];
  v6 = v0[19];
  v8 = v0[17];

  v9 = v0[1];

  return v9();
}

uint64_t sub_10020D35C(uint64_t a1)
{
  v2 = sub_10004B564(&qword_1005A9110, &qword_1004C25F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_10020D3C4(uint64_t a1)
{
  v2 = type metadata accessor for AckAlertEndpoint();
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void *sub_10020D474(uint64_t (*a1)(id *), void *a2, unint64_t a3)
{
  v4 = a3;
  v23 = _swiftEmptyArrayStorage;
  if (a3 >> 62)
  {
    goto LABEL_18;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    v20 = v4 & 0xFFFFFFFFFFFFFF8;
    v21 = v4 & 0xC000000000000001;
    v19 = v4;
    while (1)
    {
      if (v21)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *(v20 + 16))
        {
          goto LABEL_17;
        }

        v9 = *(v4 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v22 = v9;
      v12 = a2;
      v13 = a1(&v22);
      if (v3)
      {

        return v12;
      }

      if (v13)
      {
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v14 = i;
        v15 = a1;
        v16 = a2;
        v17 = v23[2];
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        a2 = v16;
        a1 = v15;
        i = v14;
        v4 = v19;
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
      }

      else
      {
      }

      ++v8;
      if (v11 == i)
      {
        v12 = v23;
        goto LABEL_20;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    ;
  }

  v12 = _swiftEmptyArrayStorage;
LABEL_20:

  return v12;
}

uint64_t sub_10020D620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100005F04(a3, v24 - v10, &qword_1005A9690, &qword_1004C2A00);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002CE0(v11, &qword_1005A9690, &qword_1004C2A00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      else
      {
        v21 = 0;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10020D8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_10004B564(&qword_1005A9690, &qword_1004C2A00);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_100005F04(a3, v24 - v10, &qword_1005A9690, &qword_1004C2A00);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_100002CE0(v11, &qword_1005A9690, &qword_1004C2A00);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v16 = *(a5 + 16);
  v15 = *(a5 + 24);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;

      sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
      v21 = (v19 | v17);
      if (v19 | v17)
      {
        v25[0] = 0;
        v25[1] = 0;
        v21 = v25;
        v25[2] = v17;
        v25[3] = v19;
      }

      v24[1] = 7;
      v24[2] = v21;
      v24[3] = v20;
      v22 = swift_task_create();

      sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);

      return v22;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_100002CE0(a3, &qword_1005A9690, &qword_1004C2A00);
  sub_10004B564(&qword_1005B04E8, &qword_1004D67E0);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_10020DB88()
{
  v1 = *(v0 + 3840);
  v2 = *(v0 + 3528);

  return _swift_task_switch(sub_10020DBF4, v2, 0);
}

uint64_t sub_10020DBF4()
{
  v37 = v0;
  v1 = v0[476];
  v2 = v0[471];
  v3 = v0[466];
  v4 = v0[460];
  v5 = v0[459];
  v6 = v0[458];

  (*(v5 + 8))(v4, v6);
  v7 = v0[483];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C1900;
  *(v8 + 32) = 33;
  v9 = sub_10004C9A8(v7);
  *(v8 + 64) = &type metadata for String;
  *(v8 + 72) = &off_10058C398;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  v11 = sub_1000105C0(v8);
  swift_setDeallocating();
  sub_100002CE0(v8 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v12 = sub_10004C68C(3u, v11);
  v14 = v13;
  v16 = v15;

  sub_10001157C(v12, v14, v16);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFF18);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v20 = 136446466;
    *(v20 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v36);
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v23;
    *v21 = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s failed: %{public}@", v20, 0x16u);
    sub_100002CE0(v21, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v22);
  }

  v24 = v0[460];
  v25 = v0[457];
  v26 = v0[456];
  v27 = v0[453];
  v28 = v0[450];
  v29 = v0[449];
  v30 = v0[448];
  v31 = v0[447];
  v32 = v0[445];
  v33 = v0[442];

  v34 = v0[1];

  return v34(&_swiftEmptyArrayStorage);
}

uint64_t sub_10020DFA0()
{
  v37 = v0;
  v1 = v0[476];
  v2 = v0[471];
  v3 = v0[466];
  v4 = v0[460];
  v5 = v0[459];
  v6 = v0[458];

  (*(v5 + 8))(v4, v6);
  v7 = v0[487];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1004C1900;
  *(v8 + 32) = 33;
  v9 = sub_10004C9A8(v7);
  *(v8 + 64) = &type metadata for String;
  *(v8 + 72) = &off_10058C398;
  *(v8 + 40) = v9;
  *(v8 + 48) = v10;
  v11 = sub_1000105C0(v8);
  swift_setDeallocating();
  sub_100002CE0(v8 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v12 = sub_10004C68C(3u, v11);
  v14 = v13;
  v16 = v15;

  sub_10001157C(v12, v14, v16);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  sub_10000A6F0(v17, qword_1005DFF18);
  swift_errorRetain();
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v36 = v22;
    *v20 = 136446466;
    *(v20 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v36);
    *(v20 + 12) = 2114;
    swift_errorRetain();
    v23 = _swift_stdlib_bridgeErrorToNSError();
    *(v20 + 14) = v23;
    *v21 = v23;
    _os_log_impl(&_mh_execute_header, v18, v19, "%{public}s failed: %{public}@", v20, 0x16u);
    sub_100002CE0(v21, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v22);
  }

  v24 = v0[460];
  v25 = v0[457];
  v26 = v0[456];
  v27 = v0[453];
  v28 = v0[450];
  v29 = v0[449];
  v30 = v0[448];
  v31 = v0[447];
  v32 = v0[445];
  v33 = v0[442];

  v34 = v0[1];

  return v34(&_swiftEmptyArrayStorage);
}

uint64_t sub_10020E330()
{
  v32 = v0;
  v1 = v0[462];

  v2 = v0[467];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1004C1900;
  *(v3 + 32) = 33;
  v4 = sub_10004C9A8(v2);
  *(v3 + 64) = &type metadata for String;
  *(v3 + 72) = &off_10058C398;
  *(v3 + 40) = v4;
  *(v3 + 48) = v5;
  v6 = sub_1000105C0(v3);
  swift_setDeallocating();
  sub_100002CE0(v3 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v7 = sub_10004C68C(3u, v6);
  v9 = v8;
  v11 = v10;

  sub_10001157C(v7, v9, v11);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF18);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v31 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v31);
    *(v15 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s failed: %{public}@", v15, 0x16u);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v17);
  }

  v19 = v0[460];
  v20 = v0[457];
  v21 = v0[456];
  v22 = v0[453];
  v23 = v0[450];
  v24 = v0[449];
  v25 = v0[448];
  v26 = v0[447];
  v27 = v0[445];
  v28 = v0[442];

  v29 = v0[1];

  return v29(&_swiftEmptyArrayStorage);
}

uint64_t sub_10020E684()
{
  v33 = v0;
  v1 = v0[469];
  v2 = v0[466];

  v3 = v0[472];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1004C1900;
  *(v4 + 32) = 33;
  v5 = sub_10004C9A8(v3);
  *(v4 + 64) = &type metadata for String;
  *(v4 + 72) = &off_10058C398;
  *(v4 + 40) = v5;
  *(v4 + 48) = v6;
  v7 = sub_1000105C0(v4);
  swift_setDeallocating();
  sub_100002CE0(v4 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v8 = sub_10004C68C(3u, v7);
  v10 = v9;
  v12 = v11;

  sub_10001157C(v8, v10, v12);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_10000A6F0(v13, qword_1005DFF18);
  swift_errorRetain();
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v32 = v18;
    *v16 = 136446466;
    *(v16 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v32);
    *(v16 + 12) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 14) = v19;
    *v17 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "%{public}s failed: %{public}@", v16, 0x16u);
    sub_100002CE0(v17, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v18);
  }

  v20 = v0[460];
  v21 = v0[457];
  v22 = v0[456];
  v23 = v0[453];
  v24 = v0[450];
  v25 = v0[449];
  v26 = v0[448];
  v27 = v0[447];
  v28 = v0[445];
  v29 = v0[442];

  v30 = v0[1];

  return v30(&_swiftEmptyArrayStorage);
}

uint64_t sub_10020E9E4()
{
  v34 = v0;
  v1 = v0[474];
  v2 = v0[471];
  v3 = v0[466];

  v4 = v0[477];
  sub_10004B564(&qword_1005A8788, &qword_1004C0EA8);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1004C1900;
  *(v5 + 32) = 33;
  v6 = sub_10004C9A8(v4);
  *(v5 + 64) = &type metadata for String;
  *(v5 + 72) = &off_10058C398;
  *(v5 + 40) = v6;
  *(v5 + 48) = v7;
  v8 = sub_1000105C0(v5);
  swift_setDeallocating();
  sub_100002CE0(v5 + 32, &qword_1005A8790, &qword_1004C0EB0);
  swift_deallocClassInstance();
  v9 = sub_10004C68C(3u, v8);
  v11 = v10;
  v13 = v12;

  sub_10001157C(v9, v11, v13);

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_10000A6F0(v14, qword_1005DFF18);
  swift_errorRetain();
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v33 = v19;
    *v17 = 136446466;
    *(v17 + 4) = sub_10000D01C(0xD00000000000001FLL, 0x80000001004E5790, &v33);
    *(v17 + 12) = 2114;
    swift_errorRetain();
    v20 = _swift_stdlib_bridgeErrorToNSError();
    *(v17 + 14) = v20;
    *v18 = v20;
    _os_log_impl(&_mh_execute_header, v15, v16, "%{public}s failed: %{public}@", v17, 0x16u);
    sub_100002CE0(v18, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v19);
  }

  v21 = v0[460];
  v22 = v0[457];
  v23 = v0[456];
  v24 = v0[453];
  v25 = v0[450];
  v26 = v0[449];
  v27 = v0[448];
  v28 = v0[447];
  v29 = v0[445];
  v30 = v0[442];

  v31 = v0[1];

  return v31(&_swiftEmptyArrayStorage);
}

uint64_t sub_10020ED50(uint64_t a1, uint64_t a2)
{
  v3[296] = v2;
  v3[295] = a2;
  v3[294] = a1;
  v4 = *(*(sub_10004B564(&qword_1005A96E0, &qword_1004C2A80) - 8) + 64) + 15;
  v3[297] = swift_task_alloc();
  v5 = type metadata accessor for UUID();
  v3[298] = v5;
  v6 = *(v5 - 8);
  v3[299] = v6;
  v7 = *(v6 + 64) + 15;
  v3[300] = swift_task_alloc();
  v8 = *(*(sub_10004B564(&qword_1005AE720, &qword_1004CA2F0) - 8) + 64) + 15;
  v3[301] = swift_task_alloc();
  v3[302] = swift_task_alloc();
  v3[303] = swift_task_alloc();
  v9 = type metadata accessor for Friend();
  v3[304] = v9;
  v10 = *(v9 - 8);
  v3[305] = v10;
  v11 = *(v10 + 64) + 15;
  v3[306] = swift_task_alloc();
  v12 = type metadata accessor for Handle();
  v3[307] = v12;
  v13 = *(v12 - 8);
  v3[308] = v13;
  v14 = *(v13 + 64) + 15;
  v3[309] = swift_task_alloc();
  v15 = *(*(sub_10004B564(&qword_1005A9110, &qword_1004C25F8) - 8) + 64) + 15;
  v3[310] = swift_task_alloc();
  v16 = type metadata accessor for Account();
  v3[311] = v16;
  v17 = *(v16 - 8);
  v3[312] = v17;
  v18 = *(v17 + 64) + 15;
  v3[313] = swift_task_alloc();
  v3[314] = swift_task_alloc();
  v19 = async function pointer to daemon.getter[1];
  v20 = swift_task_alloc();
  v3[315] = v20;
  *v20 = v3;
  v20[1] = sub_10020F028;

  return daemon.getter();
}

uint64_t sub_10020F028(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2520);
  v12 = *v1;
  v3[316] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[317] = v6;
  v7 = type metadata accessor for Daemon();
  v3[318] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000093B0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[319] = v9;
  v10 = sub_1000093B0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_10020F208;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_10020F208(uint64_t a1)
{
  v3 = *(*v2 + 2536);
  v4 = *v2;
  v4[320] = a1;
  v4[321] = v1;

  if (v1)
  {
    v5 = v4[296];

    return _swift_task_switch(sub_100211488, v5, 0);
  }

  else
  {
    v6 = v4[316];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[322] = v8;
    *v8 = v4;
    v8[1] = sub_10020F380;

    return daemon.getter();
  }
}

uint64_t sub_10020F380(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2576);
  v5 = *v1;
  v3[323] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[324] = v7;
  v8 = type metadata accessor for CloudStorageService();
  v9 = sub_1000093B0(&qword_1005AD568, type metadata accessor for CloudStorageService);
  *v7 = v5;
  v7[1] = sub_10020F534;
  v10 = v3[319];
  v11 = v3[318];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10020F534(uint64_t a1)
{
  v3 = *(*v2 + 2592);
  v4 = *v2;
  v4[325] = a1;
  v4[326] = v1;

  if (v1)
  {
    v5 = v4[296];

    return _swift_task_switch(sub_100211750, v5, 0);
  }

  else
  {
    v6 = v4[323];

    v7 = async function pointer to daemon.getter[1];
    v8 = swift_task_alloc();
    v4[327] = v8;
    *v8 = v4;
    v8[1] = sub_10020F6AC;

    return daemon.getter();
  }
}

uint64_t sub_10020F6AC(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 2616);
  v5 = *v1;
  v3[328] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[329] = v7;
  v8 = type metadata accessor for AccountService(0);
  v9 = sub_1000093B0(&qword_1005A9118, type metadata accessor for AccountService);
  *v7 = v5;
  v7[1] = sub_10020F860;
  v10 = v3[319];
  v11 = v3[318];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10020F860(uint64_t a1)
{
  v3 = *(*v2 + 2632);
  v4 = *v2;
  v4[330] = a1;
  v4[331] = v1;

  if (v1)
  {
    v5 = v4[296];

    return _swift_task_switch(sub_100211A24, v5, 0);
  }

  else
  {
    v6 = v4[328];

    v7 = swift_task_alloc();
    v4[332] = v7;
    *v7 = v4;
    v7[1] = sub_10020F9D8;
    v8 = v4[296];

    return sub_100008CC0();
  }
}

uint64_t sub_10020F9D8(uint64_t a1)
{
  v2 = *(*v1 + 2656);
  v3 = *(*v1 + 2368);
  v5 = *v1;
  *(*v1 + 2664) = a1;

  return _swift_task_switch(sub_10020FAF0, v3, 0);
}

uint64_t sub_10020FAF0()
{
  v1 = v0[333];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[308];
    v4 = v0[305];
    sub_10000E8E0(0, v2, 0);
    v5 = *(v4 + 16);
    v4 += 16;
    v6 = v1 + ((*(v4 + 64) + 32) & ~*(v4 + 64));
    v20 = *(v4 + 56);
    v21 = v5;
    v7 = (v4 - 8);
    do
    {
      v8 = v0[309];
      v9 = v0[306];
      v10 = v0[304];
      v21(v9, v6, v10);
      Friend.handle.getter();
      (*v7)(v9, v10);
      v12 = *(&_swiftEmptyArrayStorage + 2);
      v11 = *(&_swiftEmptyArrayStorage + 3);
      if (v12 >= v11 >> 1)
      {
        sub_10000E8E0(v11 > 1, v12 + 1, 1);
      }

      v13 = v0[309];
      v14 = v0[307];
      *(&_swiftEmptyArrayStorage + 2) = v12 + 1;
      (*(v3 + 32))(&_swiftEmptyArrayStorage + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v12, v13, v14);
      v6 += v20;
      --v2;
    }

    while (v2);
  }

  v15 = v0[333];

  v0[334] = &_swiftEmptyArrayStorage;
  v16 = swift_task_alloc();
  v0[335] = v16;
  *v16 = v0;
  v16[1] = sub_10020FCF0;
  v17 = v0[330];
  v18 = v0[310];

  return sub_10000EB24(v18);
}

uint64_t sub_10020FCF0()
{
  v1 = *(*v0 + 2680);
  v2 = *(*v0 + 2368);
  v4 = *v0;

  return _swift_task_switch(sub_10020FE00, v2, 0);
}

uint64_t sub_10020FE00()
{
  v32 = v0;
  v1 = v0[312];
  v2 = v0[311];
  v3 = v0[310];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    v4 = v0[334];
    v5 = v0[330];
    v6 = v0[325];
    v7 = v0[320];

    sub_100002CE0(v3, &qword_1005A9110, &qword_1004C25F8);
    sub_10005CF04();
    swift_allocError();
    *v8 = 3;
    swift_willThrow();

    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_10000A6F0(v9, qword_1005DFF18);
    swift_errorRetain();
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v31 = v14;
      *v12 = 136446466;
      *(v12 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v31);
      *(v12 + 12) = 2114;
      swift_errorRetain();
      v15 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 14) = v15;
      *v13 = v15;
      _os_log_impl(&_mh_execute_header, v10, v11, "%{public}s failed: %{public}@", v12, 0x16u);
      sub_100002CE0(v13, &qword_1005A9670, &unk_1004C2480);

      sub_100004984(v14);
    }

    else
    {
    }

    v17 = v0[294];
    v18 = type metadata accessor for Fence();
    (*(*(v18 - 8) + 56))(v17, 1, 1, v18);
    v19 = v0[314];
    v20 = v0[313];
    v21 = v0[310];
    v22 = v0[309];
    v23 = v0[306];
    v24 = v0[303];
    v25 = v0[302];
    v26 = v0[301];
    v27 = v0[300];
    v28 = v0[297];

    v29 = v0[1];

    return v29();
  }

  else
  {
    v16 = v0[320];
    (*(v1 + 32))(v0[314], v3, v2);

    return _swift_task_switch(sub_1002101CC, v16, 0);
  }
}

uint64_t sub_1002101CC()
{
  v1 = v0[320];
  v2 = v0[295];
  v3 = sub_1000093B0(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v4 = swift_task_alloc();
  v0[336] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[337] = v6;
  v7 = sub_10004B564(&qword_1005B04B8, &qword_1004D1DC8);
  *v6 = v0;
  v6[1] = sub_100210310;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v0 + 75, v1, v3, 0x64692865636E6566, 0xEA0000000000293ALL, sub_100218F8C, v4, v7);
}

uint64_t sub_100210310()
{
  v2 = *v1;
  v3 = *(*v1 + 2696);
  v10 = *v1;
  *(*v1 + 2704) = v0;

  if (v0)
  {
    v4 = v2[336];
    v5 = v2[334];
    v6 = v2[320];

    v7 = sub_1002109F0;
    v8 = v6;
  }

  else
  {
    v8 = v2[320];
    v7 = sub_100210444;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100210444()
{
  v1 = v0[296];
  memcpy(v0 + 221, v0 + 75, 0x241uLL);

  return _swift_task_switch(sub_1002104B8, v1, 0);
}

uint64_t sub_1002104B8()
{
  v51 = v0;
  memcpy(v0 + 148, v0 + 221, 0x241uLL);
  if (sub_10004AFD4((v0 + 148)) == 1)
  {
    v1 = v0[336];
    v2 = v0[334];
    v3 = v0[330];
    v4 = v0[325];
    v5 = v0[320];
    v6 = v0[294];
    (*(v0[312] + 8))(v0[314], v0[311]);

    v7 = type metadata accessor for Fence();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
LABEL_17:

    v35 = v0[314];
    v36 = v0[313];
    v37 = v0[310];
    v38 = v0[309];
    v39 = v0[306];
    v40 = v0[303];
    v41 = v0[302];
    v42 = v0[301];
    v43 = v0[300];
    v44 = v0[297];

    v45 = v0[1];

    return v45();
  }

  memcpy(v0 + 2, v0 + 148, 0x241uLL);
  v8 = v0[153];
  if (!v8)
  {
    goto LABEL_16;
  }

  v9 = v0[152];
  v10 = HIBYTE(v8) & 0xF;
  if ((v8 & 0x2000000000000000) == 0)
  {
    v10 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
LABEL_16:
    v24 = v0[303];
    v25 = type metadata accessor for FenceRecord();
    (*(*(v25 - 8) + 56))(v24, 1, 1, v25);
    v26 = v0[334];
    v27 = v0[330];
    v47 = v0[325];
    v48 = v0[320];
    v49 = v0[336];
    v28 = v0[314];
    v29 = v0[313];
    v30 = v0[312];
    v31 = v0[311];
    v32 = v0[303];
    v33 = v0[301];
    v34 = v0[294];
    sub_100005F04(v32, v33, &qword_1005AE720, &qword_1004CA2F0);
    (*(v30 + 16))(v29, v28, v31);
    sub_100212F28(v0 + 2, v33, v29, v26, v34);

    sub_100002CE0(v32, &qword_1005AE720, &qword_1004CA2F0);
    (*(v30 + 8))(v28, v31);
    goto LABEL_17;
  }

  v11 = v0[299];
  v12 = v0[298];
  v13 = v0[297];
  v14 = v0[153];

  UUID.init(uuidString:)();
  if ((*(v11 + 48))(v13, 1, v12) == 1)
  {
    sub_100002CE0(v0[297], &qword_1005A96E0, &qword_1004C2A80);
    if (qword_1005A80B8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_10000A6F0(v15, qword_1005DFF18);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v18 = 136446466;
      *(v18 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v50);
      *(v18 + 12) = 2082;
      v19 = sub_10000D01C(v9, v8, &v50);

      *(v18 + 14) = v19;
      _os_log_impl(&_mh_execute_header, v16, v17, "%{public}s failed ckRecordName is invalid: %{public}s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_16;
  }

  v20 = v0[300];
  v21 = v0[299];
  v22 = v0[298];
  v23 = v0[297];

  (*(v21 + 32))(v20, v23, v22);

  return _swift_task_switch(sub_100210D10, 0, 0);
}

uint64_t sub_100210A0C()
{
  v30 = v0;
  v1 = v0[330];
  v2 = v0[325];
  v3 = v0[320];
  v4 = v0[314];
  v5 = v0[312];
  v6 = v0[311];

  (*(v5 + 8))(v4, v6);
  v7 = v0[338];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  sub_10000A6F0(v8, qword_1005DFF18);
  swift_errorRetain();
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v29 = v13;
    *v11 = 136446466;
    *(v11 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v29);
    *(v11 + 12) = 2114;
    swift_errorRetain();
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v11 + 14) = v14;
    *v12 = v14;
    _os_log_impl(&_mh_execute_header, v9, v10, "%{public}s failed: %{public}@", v11, 0x16u);
    sub_100002CE0(v12, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v13);
  }

  else
  {
  }

  v15 = v0[294];
  v16 = type metadata accessor for Fence();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  v17 = v0[314];
  v18 = v0[313];
  v19 = v0[310];
  v20 = v0[309];
  v21 = v0[306];
  v22 = v0[303];
  v23 = v0[302];
  v24 = v0[301];
  v25 = v0[300];
  v26 = v0[297];

  v27 = v0[1];

  return v27();
}

uint64_t sub_100210D10()
{
  v1 = *(v0[325] + 128);
  v2 = swift_task_alloc();
  v0[339] = v2;
  *v2 = v0;
  v2[1] = sub_100210DB0;
  v3 = v0[302];
  v4 = v0[300];

  return sub_1001C3C00(v3, v4);
}

uint64_t sub_100210DB0()
{
  v2 = *v1;
  v3 = *(*v1 + 2712);
  v7 = *v1;
  *(*v1 + 2720) = v0;

  if (v0)
  {
    v4 = sub_1002110D0;
    v5 = 0;
  }

  else
  {
    v5 = *(v2 + 2368);
    v4 = sub_100210ECC;
  }

  return _swift_task_switch(v4, v5, 0);
}

uint64_t sub_100210ECC()
{
  v1 = v0[303];
  v2 = v0[302];
  (*(v0[299] + 8))(v0[300], v0[298]);
  sub_1000176A8(v2, v1, &qword_1005AE720, &qword_1004CA2F0);
  v3 = v0[334];
  v23 = v0[330];
  v24 = v0[325];
  v25 = v0[320];
  v26 = v0[336];
  v4 = v0[314];
  v5 = v0[313];
  v6 = v0[312];
  v7 = v0[311];
  v8 = v0[303];
  v9 = v0[301];
  v10 = v0[294];
  sub_100005F04(v8, v9, &qword_1005AE720, &qword_1004CA2F0);
  (*(v6 + 16))(v5, v4, v7);
  sub_100212F28(v0 + 2, v9, v5, v3, v10);

  sub_100002CE0(v8, &qword_1005AE720, &qword_1004CA2F0);
  (*(v6 + 8))(v4, v7);

  v11 = v0[314];
  v12 = v0[313];
  v13 = v0[310];
  v14 = v0[309];
  v15 = v0[306];
  v16 = v0[303];
  v17 = v0[302];
  v18 = v0[301];
  v19 = v0[300];
  v20 = v0[297];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1002110D0()
{
  v1 = *(v0 + 2672);
  v2 = *(v0 + 2368);

  sub_100002CE0(v0 + 1768, &qword_1005B04B8, &qword_1004D1DC8);

  return _swift_task_switch(sub_100211154, v2, 0);
}

uint64_t sub_100211154()
{
  v34 = v0;
  v1 = v0[336];
  v2 = v0[330];
  v3 = v0[325];
  v4 = v0[320];
  v5 = v0[314];
  v6 = v0[312];
  v7 = v0[311];
  v8 = v0[300];
  v9 = v0[299];
  v10 = v0[298];

  (*(v9 + 8))(v8, v10);
  (*(v6 + 8))(v5, v7);

  v11 = v0[340];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  sub_10000A6F0(v12, qword_1005DFF18);
  swift_errorRetain();
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v33 = v17;
    *v15 = 136446466;
    *(v15 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v33);
    *(v15 + 12) = 2114;
    swift_errorRetain();
    v18 = _swift_stdlib_bridgeErrorToNSError();
    *(v15 + 14) = v18;
    *v16 = v18;
    _os_log_impl(&_mh_execute_header, v13, v14, "%{public}s failed: %{public}@", v15, 0x16u);
    sub_100002CE0(v16, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v17);
  }

  else
  {
  }

  v19 = v0[294];
  v20 = type metadata accessor for Fence();
  (*(*(v20 - 8) + 56))(v19, 1, 1, v20);
  v21 = v0[314];
  v22 = v0[313];
  v23 = v0[310];
  v24 = v0[309];
  v25 = v0[306];
  v26 = v0[303];
  v27 = v0[302];
  v28 = v0[301];
  v29 = v0[300];
  v30 = v0[297];

  v31 = v0[1];

  return v31();
}

uint64_t sub_100211488()
{
  v25 = v0;
  v1 = v0[316];

  v2 = v0[321];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v24 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v24);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[294];
  v11 = type metadata accessor for Fence();
  (*(*(v11 - 8) + 56))(v10, 1, 1, v11);
  v12 = v0[314];
  v13 = v0[313];
  v14 = v0[310];
  v15 = v0[309];
  v16 = v0[306];
  v17 = v0[303];
  v18 = v0[302];
  v19 = v0[301];
  v20 = v0[300];
  v21 = v0[297];

  v22 = v0[1];

  return v22();
}

uint64_t sub_100211750()
{
  v26 = v0;
  v1 = v0[323];
  v2 = v0[320];

  v3 = v0[326];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFF18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v25 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v25);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v11 = v0[294];
  v12 = type metadata accessor for Fence();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  v13 = v0[314];
  v14 = v0[313];
  v15 = v0[310];
  v16 = v0[309];
  v17 = v0[306];
  v18 = v0[303];
  v19 = v0[302];
  v20 = v0[301];
  v21 = v0[300];
  v22 = v0[297];

  v23 = v0[1];

  return v23();
}

uint64_t sub_100211A24()
{
  v27 = v0;
  v1 = v0[328];
  v2 = v0[325];
  v3 = v0[320];

  v4 = v0[331];
  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_10000A6F0(v5, qword_1005DFF18);
  swift_errorRetain();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v26 = v10;
    *v8 = 136446466;
    *(v8 + 4) = sub_10000D01C(0xD00000000000001ELL, 0x80000001004E5740, &v26);
    *(v8 + 12) = 2114;
    swift_errorRetain();
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v11;
    *v9 = v11;
    _os_log_impl(&_mh_execute_header, v6, v7, "%{public}s failed: %{public}@", v8, 0x16u);
    sub_100002CE0(v9, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v10);
  }

  else
  {
  }

  v12 = v0[294];
  v13 = type metadata accessor for Fence();
  (*(*(v13 - 8) + 56))(v12, 1, 1, v13);
  v14 = v0[314];
  v15 = v0[313];
  v16 = v0[310];
  v17 = v0[309];
  v18 = v0[306];
  v19 = v0[303];
  v20 = v0[302];
  v21 = v0[301];
  v22 = v0[300];
  v23 = v0[297];

  v24 = v0[1];

  return v24();
}

uint64_t sub_100211D04(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *(*(sub_10004B564(&qword_1005A9690, &qword_1004C2A00) - 8) + 64) + 15;
  v2[4] = swift_task_alloc();
  v4 = async function pointer to daemon.getter[1];
  v5 = swift_task_alloc();
  v2[5] = v5;
  *v5 = v2;
  v5[1] = sub_100211DD0;

  return daemon.getter();
}

uint64_t sub_100211DD0(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 40);
  v12 = *v1;
  v3[6] = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  v3[7] = v6;
  v7 = type metadata accessor for Daemon();
  v3[8] = v7;
  v8 = type metadata accessor for LocalStorageService();
  v9 = sub_1000093B0(&unk_1005AFA50, &type metadata accessor for Daemon);
  v3[9] = v9;
  v10 = sub_1000093B0(&qword_1005AAB88, type metadata accessor for LocalStorageService);
  *v6 = v12;
  v6[1] = sub_100211FB0;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100211FB0(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 56);
  v6 = *v2;
  v4[10] = a1;
  v4[11] = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_100212B00;
  }

  else
  {
    v9 = v4[6];

    v8 = sub_1002120E8;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002120E8()
{
  v1 = v0[10];
  v2 = v0[2];
  v3 = sub_1000093B0(&qword_1005AAB90, type metadata accessor for LocalStorageService);
  v4 = swift_task_alloc();
  v0[12] = v4;
  *(v4 + 16) = v1;
  *(v4 + 24) = v2;
  v5 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
  v6 = swift_task_alloc();
  v0[13] = v6;
  *v6 = v0;
  v6[1] = sub_100212220;

  return withCheckedThrowingContinuation<A>(isolation:function:_:)(v6, v1, v3, 0x6566286574697277, 0xEE00293A7365636ELL, sub_100218F84, v4, &type metadata for () + 8);
}

uint64_t sub_100212220()
{
  v2 = *v1;
  v3 = *(*v1 + 104);
  v9 = *v1;
  *(*v1 + 112) = v0;

  if (v0)
  {
    v4 = *(v2 + 80);
    v5 = sub_1002126C8;
  }

  else
  {
    v6 = *(v2 + 96);
    v7 = *(v2 + 80);

    v5 = sub_100212348;
    v4 = v7;
  }

  return _swift_task_switch(v5, v4, 0);
}

uint64_t sub_100212348()
{
  v1 = async function pointer to daemon.getter[1];
  v2 = swift_task_alloc();
  *(v0 + 120) = v2;
  *v2 = v0;
  v2[1] = sub_1002123D8;

  return daemon.getter();
}

uint64_t sub_1002123D8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 120);
  v5 = *v1;
  v3[16] = a1;

  v6 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v7 = swift_task_alloc();
  v3[17] = v7;
  v8 = type metadata accessor for FenceService(0);
  v9 = sub_1000093B0(&qword_1005A9278, type metadata accessor for FenceService);
  *v7 = v5;
  v7[1] = sub_10021258C;
  v10 = v3[9];
  v11 = v3[8];

  return ActorServiceDaemon.getService<A>()(v11, v8, v10, v9);
}

uint64_t sub_10021258C(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 136);
  v6 = *v2;
  *(*v2 + 144) = v1;

  if (v1)
  {
    v7 = v4[3];
    v8 = sub_100212D10;
  }

  else
  {
    v9 = v4[16];

    v4[19] = a1;
    v8 = sub_100212944;
    v7 = a1;
  }

  return _swift_task_switch(v8, v7, 0);
}

uint64_t sub_1002126C8()
{
  v1 = *(v0 + 96);
  v2 = *(v0 + 24);

  return _swift_task_switch(sub_100212734, v2, 0);
}

uint64_t sub_100212734()
{
  v14 = v0;
  v1 = v0[14];
  v2 = v0[10];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E5720, &v13);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100212944()
{
  v1 = v0[19];
  v3 = v0[3];
  v2 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = sub_1000093B0(&qword_1005AF4A8, type metadata accessor for FenceService);
  v6 = swift_allocObject();
  v6[2] = v1;
  v6[3] = v5;
  v6[4] = v1;
  swift_retain_n();
  sub_10020D620(0, 0, v2, &unk_1004D0730, v6);

  return _swift_task_switch(sub_100212A8C, v3, 0);
}

uint64_t sub_100212A8C()
{
  v1 = v0[19];
  v2 = v0[10];

  v3 = v0[4];

  v4 = v0[1];

  return v4();
}

uint64_t sub_100212B00()
{
  v14 = v0;
  v1 = v0[11];
  v2 = v0[6];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_10000A6F0(v3, qword_1005DFF18);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v13 = v8;
    *v6 = 136446466;
    *(v6 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E5720, &v13);
    *(v6 + 12) = 2114;
    swift_errorRetain();
    v9 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v9;
    *v7 = v9;
    _os_log_impl(&_mh_execute_header, v4, v5, "%{public}s failed: %{public}@", v6, 0x16u);
    sub_100002CE0(v7, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v8);
  }

  else
  {
  }

  v10 = v0[4];

  v11 = v0[1];

  return v11();
}

uint64_t sub_100212D10()
{
  v15 = v0;
  v1 = v0[10];

  v2 = v0[18];
  v3 = v0[16];

  if (qword_1005A80B8 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_10000A6F0(v4, qword_1005DFF18);
  swift_errorRetain();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v14 = v9;
    *v7 = 136446466;
    *(v7 + 4) = sub_10000D01C(0xD000000000000019, 0x80000001004E5720, &v14);
    *(v7 + 12) = 2114;
    swift_errorRetain();
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v10;
    *v8 = v10;
    _os_log_impl(&_mh_execute_header, v5, v6, "%{public}s failed: %{public}@", v7, 0x16u);
    sub_100002CE0(v8, &qword_1005A9670, &unk_1004C2480);

    sub_100004984(v9);
  }

  else
  {
  }

  v11 = v0[4];

  v12 = v0[1];

  return v12();
}

uint64_t sub_100212F28@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void *a4@<X3>, uint64_t a5@<X8>)
{
  v457 = a4;
  v458 = a3;
  v456 = a5;
  v7 = type metadata accessor for Date();
  v412 = *(v7 - 8);
  v413 = v7;
  v8 = *(v412 + 64);
  v9 = __chkstk_darwin(v7);
  v409 = &v393 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v410 = &v393 - v11;
  v12 = sub_10004B564(&qword_1005A96E0, &qword_1004C2A80);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v408 = &v393 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v425 = &v393 - v16;
  v17 = sub_10004B564(&unk_1005AE5B0, &qword_1004C32F0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v407 = &v393 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v424 = &v393 - v21;
  v447 = type metadata accessor for Handle();
  v432 = *(v447 - 8);
  v22 = *(v432 + 64);
  v23 = __chkstk_darwin(v447);
  *&v455 = &v393 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v23);
  v437 = &v393 - v25;
  v450 = type metadata accessor for PersonHandle();
  v448 = *(v450 - 8);
  v26 = *(v448 + 64);
  v27 = __chkstk_darwin(v450);
  v422 = &v393 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = __chkstk_darwin(v27);
  v444 = &v393 - v30;
  v31 = __chkstk_darwin(v29);
  *&v449 = &v393 - v32;
  v33 = __chkstk_darwin(v31);
  v431 = &v393 - v34;
  v35 = __chkstk_darwin(v33);
  v434 = (&v393 - v36);
  v37 = __chkstk_darwin(v35);
  v435 = &v393 - v38;
  __chkstk_darwin(v37);
  v436 = &v393 - v39;
  v421 = type metadata accessor for PlaceMark();
  v406 = *(v421 - 8);
  v40 = *(v406 + 64);
  v41 = __chkstk_darwin(v421);
  v404 = &v393 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v41);
  v427 = &v393 - v43;
  v420 = type metadata accessor for Fence.MonitorRegion();
  v405 = *(v420 - 8);
  v44 = *(v405 + 64);
  v45 = __chkstk_darwin(v420);
  v419 = &v393 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v45);
  v426 = &v393 - v47;
  v48 = sub_10004B564(&qword_1005B04C0, &qword_1004D1DD0);
  v49 = *(*(v48 - 8) + 64);
  __chkstk_darwin(v48 - 8);
  v430 = (&v393 - v50);
  v51 = type metadata accessor for Fence.MonitorRegion.Source();
  v428 = *(v51 - 8);
  v429 = v51;
  v52 = *(v428 + 64);
  v53 = __chkstk_darwin(v51);
  v411 = &v393 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v53);
  v423 = &v393 - v55;
  v56 = sub_10004B564(&qword_1005A9148, &qword_1004D2370);
  v57 = *(*(v56 - 8) + 64);
  __chkstk_darwin(v56 - 8);
  v438 = &v393 - v58;
  v59 = type metadata accessor for Fence.AcceptanceStatus();
  v440 = *(v59 - 8);
  v441 = v59;
  v60 = *(v440 + 64);
  v61 = __chkstk_darwin(v59);
  v418 = &v393 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v61);
  v439 = &v393 - v63;
  v64 = sub_10004B564(&qword_1005AE720, &qword_1004CA2F0);
  v65 = *(*(v64 - 8) + 64);
  v66 = __chkstk_darwin(v64 - 8);
  v403 = &v393 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v66);
  v69 = &v393 - v68;
  v70 = sub_10004B564(&qword_1005AE5C0, &unk_1004D06D0);
  v71 = *(*(v70 - 8) + 64);
  __chkstk_darwin(v70 - 8);
  v442 = &v393 - v72;
  v73 = sub_10004B564(&qword_1005B04C8, &qword_1004D1DD8);
  v74 = *(*(v73 - 8) + 64);
  __chkstk_darwin(v73 - 8);
  v76 = &v393 - v75;
  v77 = type metadata accessor for Fence.Variant();
  v445 = *(v77 - 8);
  v446 = v77;
  v78 = *(v445 + 64);
  v79 = __chkstk_darwin(v77);
  v417 = &v393 - ((v80 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v79);
  v443 = &v393 - v81;
  v82 = sub_10004B564(&qword_1005B04D0, &qword_1004D1DE0);
  v83 = *(*(v82 - 8) + 64);
  __chkstk_darwin(v82 - 8);
  v85 = &v393 - v84;
  v452 = type metadata accessor for Fence.Participant();
  v454 = *(v452 - 8);
  v86 = *(v454 + 64);
  v87 = __chkstk_darwin(v452);
  v416 = &v393 - ((v88 + 15) & 0xFFFFFFFFFFFFFFF0);
  v89 = __chkstk_darwin(v87);
  v415 = &v393 - v90;
  v91 = __chkstk_darwin(v89);
  v93 = &v393 - v92;
  __chkstk_darwin(v91);
  v451 = &v393 - v94;
  v95 = sub_10004B564(&qword_1005A9150, &qword_1004C2608);
  v96 = *(*(v95 - 8) + 64);
  __chkstk_darwin(v95 - 8);
  v98 = &v393 - v97;
  v460 = type metadata accessor for Fence.ID();
  v461 = *(v460 - 8);
  v99 = *(v461 + 64);
  v100 = __chkstk_darwin(v460);
  v414 = &v393 - ((v101 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v100);
  v453 = &v393 - v102;
  v103 = a1[4];
  v104 = a1[5];
  v459 = a1;
  memcpy(v483, a1, sizeof(v483));
  if (v104)
  {
    v105 = HIBYTE(v104) & 0xF;
    if ((v104 & 0x2000000000000000) == 0)
    {
      v105 = v103 & 0xFFFFFFFFFFFFLL;
    }

    if (v105)
    {
      v106 = type metadata accessor for FenceRecord();
      if ((*(*(v106 - 8) + 48))(a2, 1, v106) == 1)
      {

        if (qword_1005A80E0 != -1)
        {
          swift_once();
        }

        v107 = type metadata accessor for Logger();
        sub_10000A6F0(v107, qword_1005B04A0);
        memcpy(v484, v483, 0x241uLL);
        sub_10005D0C0(v484, v482);
        v108 = Logger.logObject.getter();
        v109 = static os_log_type_t.error.getter();
        sub_10005D11C(v484);
        v110 = os_log_type_enabled(v108, v109);
        v111 = v458;
        v112 = a2;
        if (v110)
        {
          v113 = a2;
          v114 = swift_slowAlloc();
          *v482 = swift_slowAlloc();
          *v114 = 136446466;
          *(v114 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v482);
          *(v114 + 12) = 2082;
          v115 = *&v484[23];
          if (*&v484[23])
          {
            v116 = *(&v484[22] + 1);
          }

          else
          {
            v116 = 0x3E6C696E3CLL;
            v115 = 0xE500000000000000;
          }

          sub_10005D11C(v484);
          v212 = sub_10000D01C(v116, v115, v482);

          *(v114 + 14) = v212;
          v188 = "%{public}s missing a fenceRecord for fence: %{public}s";
LABEL_91:
          _os_log_impl(&_mh_execute_header, v108, v109, v188, v114, 0x16u);
          swift_arrayDestroy();

          v213 = type metadata accessor for Account();
          (*(*(v213 - 8) + 8))(v111, v213);
          v112 = v113;
          goto LABEL_150;
        }

        goto LABEL_27;
      }
    }
  }

  v117 = v459;
  sub_10005D0C0(v459, v484);
  sub_1001739BC(a2);

  Fence.ID.init(string:)();
  v118 = v461;
  v119 = v460;
  if ((*(v461 + 48))(v98, 1, v460) == 1)
  {

    sub_10005D11C(v117);
    sub_100002CE0(v98, &qword_1005A9150, &qword_1004C2608);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v120 = type metadata accessor for Logger();
    sub_10000A6F0(v120, qword_1005B04A0);
    memcpy(v484, v483, 0x241uLL);
    sub_10005D0C0(v484, v482);
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.error.getter();
    sub_10005D11C(v484);
    v121 = os_log_type_enabled(v108, v109);
    v111 = v458;
    v112 = a2;
    if (v121)
    {
      v113 = a2;
      v114 = swift_slowAlloc();
      *v482 = swift_slowAlloc();
      *v114 = 136446466;
      *(v114 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v482);
      *(v114 + 12) = 2082;
      v122 = *&v484[23];
      if (*&v484[23])
      {
        v123 = *(&v484[22] + 1);
      }

      else
      {
        v123 = 0x3E6C696E3CLL;
        v122 = 0xE500000000000000;
      }

      sub_10005D11C(v484);
      v187 = sub_10000D01C(v123, v122, v482);

      *(v114 + 14) = v187;
      v188 = "%{public}s missing fence ID: %{public}s";
      goto LABEL_91;
    }

LABEL_27:
    sub_10005D11C(v484);

    v128 = type metadata accessor for Account();
    (*(*(v128 - 8) + 8))(v111, v128);
    goto LABEL_150;
  }

  (*(v118 + 32))(v453, v98, v119);
  if (*&v483[392])
  {
    v124 = *&v483[384];
  }

  else
  {
    v124 = 0;
  }

  if (*&v483[392])
  {
    v125 = *&v483[392];
  }

  else
  {
    v125 = 0xE000000000000000;
  }

  v126 = HIBYTE(v125) & 0xF;
  v400 = v124;
  v401 = v93;
  v127 = v124 & 0xFFFFFFFFFFFFLL;
  v402 = v125;
  if ((v125 & 0x2000000000000000) == 0)
  {
    v126 = v127;
  }

  v433 = a2;
  if (v126)
  {
  }

  else
  {
    v129 = qword_1005A80E0;

    if (v129 != -1)
    {
      swift_once();
    }

    v130 = type metadata accessor for Logger();
    sub_10000A6F0(v130, qword_1005B04A0);
    memcpy(v484, v483, 0x241uLL);
    sub_10005D0C0(v484, v482);
    v131 = Logger.logObject.getter();
    v132 = static os_log_type_t.default.getter();
    sub_10005D11C(v484);
    if (os_log_type_enabled(v131, v132))
    {
      v133 = swift_slowAlloc();
      *v482 = swift_slowAlloc();
      *v133 = 136446466;
      *(v133 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v482);
      *(v133 + 12) = 2082;
      if (*&v484[23])
      {
        v134 = *(&v484[22] + 1);
      }

      else
      {
        v134 = 0x3E6C696E3CLL;
      }

      if (*&v484[23])
      {
        v135 = *&v484[23];
      }

      else
      {
        v135 = 0xE500000000000000;
      }

      v136 = sub_10000D01C(v134, v135, v482);

      *(v133 + 14) = v136;
      _os_log_impl(&_mh_execute_header, v131, v132, "%{public}s fence with empty label: %{public}s", v133, 0x16u);
      swift_arrayDestroy();
    }
  }

  v137 = v458;
  swift_beginAccess();
  v138 = *&v483[64];
  v139 = *&v483[72];
  v140 = Account.dsid.getter();
  if (v139)
  {
    if (v138 == v140 && v139 == v141)
    {

      v142 = &enum case for Fence.Participant.me(_:);
      v112 = v433;
      goto LABEL_47;
    }

    v143 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v112 = v433;
    if (v143)
    {
      v142 = &enum case for Fence.Participant.me(_:);
      goto LABEL_47;
    }
  }

  else
  {

    v112 = v433;
  }

  v142 = &enum case for Fence.Participant.other(_:);
LABEL_47:
  v144 = v454;
  v146 = v451;
  v145 = v452;
  (*(v454 + 104))(v451, *v142, v452);
  sub_100218598(v146, *&v483[552], *&v483[560], v85);
  if ((*(v144 + 48))(v85, 1, v145) == 1)
  {

    sub_10005D11C(v459);
    sub_100002CE0(v85, &qword_1005B04D0, &qword_1004D1DE0);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v147 = type metadata accessor for Logger();
    sub_10000A6F0(v147, qword_1005B04A0);
    memcpy(v482, v483, sizeof(v482));
    memcpy(v484, v483, 0x241uLL);
    sub_10005D0C0(v482, v481);
    sub_10005D0C0(v484, v481);
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.error.getter();
    sub_10005D11C(v484);
    if (!os_log_type_enabled(v148, v149))
    {

      sub_10005D11C(v484);
      sub_10005D11C(v482);
      v162 = type metadata accessor for Account();
      (*(*(v162 - 8) + 8))(v137, v162);
      (*(v454 + 8))(v451, v452);
      goto LABEL_149;
    }

    v150 = v456;
    v151 = 0x3E6C696E3CLL;
    v152 = swift_slowAlloc();
    v481[0] = swift_slowAlloc();
    *v152 = 136446722;
    *(v152 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v481);
    *(v152 + 12) = 2082;
    v153 = *&v482[368];
    if (*&v482[368])
    {
      v154 = *&v482[360];
    }

    else
    {
      v153 = 0xE500000000000000;
      v154 = 0x3E6C696E3CLL;
    }

    sub_10005D11C(v482);
    v208 = sub_10000D01C(v154, v153, v481);

    *(v152 + 14) = v208;
    *(v152 + 22) = 2082;
    v209 = *&v484[35];
    if (*&v484[35])
    {
      v151 = *(&v484[34] + 1);
    }

    else
    {
      v209 = 0xE500000000000000;
    }

    sub_10005D11C(v484);
    v210 = sub_10000D01C(v151, v209, v481);

    *(v152 + 24) = v210;
    _os_log_impl(&_mh_execute_header, v148, v149, "%{public}s fence with invalid finder: %{public}s, type: %{public}s", v152, 0x20u);
    swift_arrayDestroy();

    v211 = type metadata accessor for Account();
    (*(*(v211 - 8) + 8))(v458, v211);
    (*(v454 + 8))(v451, v452);
    goto LABEL_116;
  }

  v155 = v401;
  (*(v144 + 32))(v401, v85, v145);
  memcpy(v484, v483, 0x241uLL);
  sub_100005F04(v112, v69, &qword_1005AE720, &qword_1004CA2F0);
  v156 = type metadata accessor for FenceRecord();
  v157 = *(v156 - 8);
  v158 = *(v157 + 48);
  v159 = v157 + 48;
  if (v158(v69, 1, v156) == 1)
  {
    sub_10005D0C0(v484, v482);
    sub_100002CE0(v69, &qword_1005AE720, &qword_1004CA2F0);
    v160 = type metadata accessor for Fence.Schedule();
    v161 = v442;
    (*(*(v160 - 8) + 56))(v442, 1, 1, v160);
  }

  else
  {
    v163 = v442;
    sub_100005F04(&v69[*(v156 + 32)], v442, &qword_1005AE5C0, &unk_1004D06D0);
    sub_10005D0C0(v484, v482);
    v164 = v69;
    v161 = v163;
    sub_1001769EC(v164);
  }

  v165 = v445;
  sub_100218854(v484, v161, v76);
  v166 = v446;
  if ((*(v165 + 48))(v76, 1, v446) == 1)
  {

    sub_10005D11C(v459);
    sub_100002CE0(v76, &qword_1005B04C8, &qword_1004D1DD8);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v167 = type metadata accessor for Logger();
    sub_10000A6F0(v167, qword_1005B04A0);
    memcpy(v481, v483, 0x241uLL);
    memcpy(v482, v483, sizeof(v482));
    sub_10005D0C0(v481, &v479);
    sub_10005D0C0(v482, &v479);
    v168 = Logger.logObject.getter();
    v169 = static os_log_type_t.error.getter();
    sub_10005D11C(v482);
    if (!os_log_type_enabled(v168, v169))
    {

      sub_10005D11C(v482);
      sub_10005D11C(v481);
      v189 = type metadata accessor for Account();
      (*(*(v189 - 8) + 8))(v137, v189);
      v190 = v155;
      v191 = *(v454 + 8);
      goto LABEL_148;
    }

    v150 = v456;
    v170 = 0x3E6C696E3CLL;
    v171 = swift_slowAlloc();
    v479 = swift_slowAlloc();
    *v171 = 136446722;
    *(v171 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, &v479);
    *(v171 + 12) = 2082;
    v172 = v481[46];
    if (v481[46])
    {
      v173 = v481[45];
    }

    else
    {
      v172 = 0xE500000000000000;
      v173 = 0x3E6C696E3CLL;
    }

    sub_10005D11C(v481);
    v225 = sub_10000D01C(v173, v172, &v479);

    *(v171 + 14) = v225;
    *(v171 + 22) = 2082;
    v226 = *&v482[544];
    if (*&v482[544])
    {
      v170 = *&v482[536];
    }

    else
    {
      v226 = 0xE500000000000000;
    }

    v227 = v401;
    sub_10005D11C(v482);
    v228 = sub_10000D01C(v170, v226, &v479);

    *(v171 + 24) = v228;
    _os_log_impl(&_mh_execute_header, v168, v169, "%{public}s fence with invalid trigger: %{public}s, trigger: %{public}s", v171, 0x20u);
    swift_arrayDestroy();

    v229 = type metadata accessor for Account();
    (*(*(v229 - 8) + 8))(v458, v229);
    goto LABEL_115;
  }

  v399 = v159;
  v175 = *(&v484[0] + 1);
  v174 = *&v484[0];
  (*(v165 + 32))(v443, v76, v166);

  v176 = v174;
  v177 = v438;
  sub_100249050(v176, v175, v438);
  v179 = v440;
  v178 = v441;
  if ((*(v440 + 48))(v177, 1, v441) == 1)
  {

    sub_10005D11C(v459);
    sub_100002CE0(v177, &qword_1005A9148, &qword_1004D2370);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v180 = type metadata accessor for Logger();
    sub_10000A6F0(v180, qword_1005B04A0);
    memcpy(v481, v483, 0x241uLL);
    memcpy(v482, v483, sizeof(v482));
    sub_10005D0C0(v481, &v479);
    sub_10005D0C0(v482, &v479);
    v181 = Logger.logObject.getter();
    v182 = static os_log_type_t.error.getter();
    sub_10005D11C(v482);
    if (os_log_type_enabled(v181, v182))
    {
      v150 = v456;
      v183 = 0x3E6C696E3CLL;
      v184 = swift_slowAlloc();
      v479 = swift_slowAlloc();
      *v184 = 136446722;
      *(v184 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, &v479);
      *(v184 + 12) = 2082;
      v185 = v481[46];
      if (v481[46])
      {
        v186 = v481[45];
      }

      else
      {
        v185 = 0xE500000000000000;
        v186 = 0x3E6C696E3CLL;
      }

      sub_10005D11C(v481);
      v231 = sub_10000D01C(v186, v185, &v479);

      *(v184 + 14) = v231;
      *(v184 + 22) = 2082;
      v232 = *&v482[8];
      if (*&v482[8])
      {
        v183 = *v482;
      }

      else
      {
        v232 = 0xE500000000000000;
      }

      v227 = v401;
      sub_10005D11C(v482);
      v233 = sub_10000D01C(v183, v232, &v479);

      *(v184 + 24) = v233;
      _os_log_impl(&_mh_execute_header, v181, v182, "%{public}s fence with invalid acceptanceStatus: %{public}s, acceptanceStatus: %{public}s", v184, 0x20u);
      swift_arrayDestroy();

      v234 = type metadata accessor for Account();
      (*(*(v234 - 8) + 8))(v458, v234);
      (*(v445 + 8))(v443, v446);
LABEL_115:
      v235 = *(v454 + 8);
      v236 = v452;
      v235(v227, v452);
      v235(v451, v236);
LABEL_116:
      (*(v461 + 8))(v453, v460);
      v112 = v433;
      goto LABEL_151;
    }

    sub_10005D11C(v482);
    sub_10005D11C(v481);
    v214 = type metadata accessor for Account();
    (*(*(v214 - 8) + 8))(v137, v214);
LABEL_146:
    (*(v165 + 8))(v443, v166);
    goto LABEL_147;
  }

  v192 = v177;
  v193 = v484[31];
  (v179[4])(v439, v192, v178);
  if (v193)
  {

    sub_10005D11C(v459);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v194 = type metadata accessor for Logger();
    sub_10000A6F0(v194, qword_1005B04A0);
    memcpy(v481, v483, 0x241uLL);
    memcpy(v482, v483, sizeof(v482));
    sub_10005D0C0(v481, &v479);
    sub_10005D0C0(v482, &v479);
    v195 = Logger.logObject.getter();
    v196 = static os_log_type_t.error.getter();
    sub_10005D11C(v482);
    if (os_log_type_enabled(v195, v196))
    {
      v197 = swift_slowAlloc();
      v198 = v165;
      v462[0] = swift_slowAlloc();
      *v197 = 136446722;
      *(v197 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v462);
      *(v197 + 12) = 2082;
      if (v481[46])
      {
        v199 = v481[45];
      }

      else
      {
        v199 = 0x3E6C696E3CLL;
      }

      v200 = v179;
      if (v481[46])
      {
        v201 = v481[46];
      }

      else
      {
        v201 = 0xE500000000000000;
      }

      sub_10005D11C(v481);
      v202 = sub_10000D01C(v199, v201, v462);

      *(v197 + 14) = v202;
      *(v197 + 22) = 2082;
      v479 = *&v482[488];
      v480 = v482[496];
      sub_10004B564(&qword_1005AD598, &unk_1004C9BF0);
      v203 = String.init<A>(describing:)();
      v205 = v204;
      sub_10005D11C(v482);
      v206 = sub_10000D01C(v203, v205, v462);

      *(v197 + 24) = v206;
      v112 = v433;
      _os_log_impl(&_mh_execute_header, v195, v196, "%{public}s fence with invalid radius: %{public}s, radius: %{public}s", v197, 0x20u);
      swift_arrayDestroy();

      v207 = type metadata accessor for Account();
      (*(*(v207 - 8) + 8))(v458, v207);
      (v200[1])(v439, v441);
      goto LABEL_83;
    }

    sub_10005D11C(v482);
    v230 = v481;
    goto LABEL_145;
  }

  if (BYTE8(v484[26]) & 1) != 0 || (BYTE8(v484[28]))
  {

    sub_10005D11C(v459);
    if (qword_1005A80E0 == -1)
    {
      goto LABEL_96;
    }

    goto LABEL_309;
  }

  v237 = *(&v484[27] + 1);
  if (!*(&v484[27] + 1))
  {

    sub_10005D11C(v459);
    if (qword_1005A80E0 != -1)
    {
      goto LABEL_312;
    }

    goto LABEL_136;
  }

  v238 = *&v484[26];
  v239 = *&v484[28];
  v442 = *&v484[27];

  v240 = v430;
  sub_1002499DC(v442, v237, v430);
  v241 = v428;
  v242 = v240;
  v243 = v429;
  if ((*(v428 + 48))(v242, 1, v429) == 1)
  {

    sub_10005D11C(v459);
    sub_100002CE0(v430, &qword_1005B04C0, &qword_1004D1DD0);
    if (qword_1005A80E0 != -1)
    {
      swift_once();
    }

    v244 = type metadata accessor for Logger();
    sub_10000A6F0(v244, qword_1005B04A0);
    memcpy(v481, v483, 0x241uLL);
    memcpy(v482, v483, sizeof(v482));
    sub_10005D0C0(v481, &v479);
    sub_10005D0C0(v482, &v479);
    v245 = Logger.logObject.getter();
    v246 = static os_log_type_t.error.getter();
    sub_10005D11C(v482);
    if (os_log_type_enabled(v245, v246))
    {
      v247 = swift_slowAlloc();
      v479 = swift_slowAlloc();
      *v247 = 136446722;
      *(v247 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, &v479);
      *(v247 + 12) = 2082;
      if (v481[46])
      {
        v248 = v481[45];
      }

      else
      {
        v248 = 0x3E6C696E3CLL;
      }

      v249 = v179;
      if (v481[46])
      {
        v250 = v481[46];
      }

      else
      {
        v250 = 0xE500000000000000;
      }

      sub_10005D11C(v481);
      v251 = sub_10000D01C(v248, v250, &v479);

      *(v247 + 14) = v251;
      *(v247 + 22) = 2082;
      if (*&v482[440])
      {
        v252 = *&v482[432];
      }

      else
      {
        v252 = 0x3E6C696E3CLL;
      }

      if (*&v482[440])
      {
        v253 = *&v482[440];
      }

      else
      {
        v253 = 0xE500000000000000;
      }

      v150 = v456;

      sub_10005D11C(v482);
      v254 = sub_10000D01C(v252, v253, &v479);

      *(v247 + 24) = v254;
      v112 = v433;
      _os_log_impl(&_mh_execute_header, v245, v246, "%{public}s fence with invalid source: %{public}s, locationType: %{public}s", v247, 0x20u);
      swift_arrayDestroy();

      v255 = type metadata accessor for Account();
      (*(*(v255 - 8) + 8))(v458, v255);
      (v249[1])(v439, v441);
      (*(v165 + 8))(v443, v446);
      v256 = *(v454 + 8);
      v257 = v452;
      v256(v401, v452);
      v256(v451, v257);
      (*(v461 + 8))(v453, v460);
      goto LABEL_151;
    }

    sub_10005D11C(v482);
    sub_10005D11C(v481);
    v272 = type metadata accessor for Account();
    (*(*(v272 - 8) + 8))(v137, v272);
    (v179[1])(v439, v441);
    goto LABEL_146;
  }

  v393 = v158;
  v394 = v156;
  v271 = v423;
  (*(v241 + 32))(v423, v430, v243);
  CLLocationCoordinate2DMake(v238, v239);
  (*(v241 + 16))(v411, v271, v243);
  Fence.MonitorRegion.init(center:radius:source:)();
  v463 = *&v483[160];
  v467 = *&v483[216];
  v468 = *&v483[232];
  v469 = *&v483[248];
  v470 = *&v483[264];
  v465 = *&v483[184];
  v466 = *&v483[200];
  v478 = *&v483[344];
  v179 = *&v483[136];
  v178 = *&v483[288];
  v477 = *&v483[328];
  v438 = *&v483[128];
  v462[0] = *&v483[128];
  v462[1] = *&v483[136];
  v442 = *&v483[144];
  v462[2] = *&v483[144];
  v462[3] = *&v483[152];
  v464 = *&v483[176];
  v430 = *&v483[280];
  v471 = *&v483[280];
  v472 = *&v483[288];
  v411 = *&v483[296];
  v473 = *&v483[296];
  v474 = *&v483[304];
  v475 = *&v483[312];
  v476 = *&v483[320];
  if (sub_10004AFD4(v462) == 1)
  {
    v178 = 0;
    v179 = 0;
  }

  else
  {
  }

  v137 = *&v484[5];
  v392 = 0;
  v391 = 0u;
  v390 = 0u;
  PlaceMark.init(locality:administrativeArea:country:stateCode:streetAddress:streetName:formattedAddressLines:formattedAddressLinesWithoutCountry:coarseAddress:poiAddress:smallAddress:mediumAddress:largeAddress:)();
  if (v137)
  {
    v273 = v137[2];
    if (v273)
    {
      v165 = 0;
      v112 = v448 + 32;
      v179 = v137 + 5;
      v166 = &_swiftEmptyArrayStorage;
      while (v165 < v137[2])
      {
        v275 = *(v179 - 1);
        v274 = *v179;

        PersonHandle.init(id:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v166 = sub_1001FCCF0(0, v166[2] + 1, 1, v166);
        }

        v178 = v166[2];
        v276 = v166[3];
        if (v178 >= v276 >> 1)
        {
          v166 = sub_1001FCCF0(v276 > 1, v178 + 1, 1, v166);
        }

        ++v165;
        v166[2] = v178 + 1;
        (*(v448 + 32))(v166 + ((*(v448 + 80) + 32) & ~*(v448 + 80)) + *(v448 + 72) * v178, v436, v450);
        v179 += 2;
        if (v273 == v165)
        {
          goto LABEL_167;
        }
      }

      __break(1u);
      goto LABEL_305;
    }
  }

  v166 = &_swiftEmptyArrayStorage;
LABEL_167:
  v396 = v166;
  v277 = *&v484[29];
  if (*&v484[29])
  {
    v165 = *(*&v484[29] + 16);
    if (v165)
    {
      v112 = 0;
      v179 = (v448 + 32);
      v166 = (*&v484[29] + 40);
      v137 = &_swiftEmptyArrayStorage;
      while (v112 < *(v277 + 16))
      {
        v279 = *(v166 - 1);
        v278 = *v166;

        PersonHandle.init(id:)();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v137 = sub_1001FCCF0(0, v137[2] + 1, 1, v137);
        }

        v178 = v137[2];
        v280 = v137[3];
        if (v178 >= v280 >> 1)
        {
          v137 = sub_1001FCCF0(v280 > 1, v178 + 1, 1, v137);
        }

        ++v112;
        v137[2] = v178 + 1;
        (*(v448 + 32))(v137 + ((*(v448 + 80) + 32) & ~*(v448 + 80)) + *(v448 + 72) * v178, v435, v450);
        v166 += 2;
        if (v165 == v112)
        {
          goto LABEL_178;
        }
      }

LABEL_305:
      __break(1u);
LABEL_306:
      __break(1u);
LABEL_307:
      __break(1u);
LABEL_308:
      __break(1u);
LABEL_309:
      swift_once();
LABEL_96:
      v215 = type metadata accessor for Logger();
      sub_10000A6F0(v215, qword_1005B04A0);
      memcpy(v482, v483, sizeof(v482));
      sub_10005D0C0(v482, v481);
      v216 = Logger.logObject.getter();
      v217 = static os_log_type_t.error.getter();
      sub_10005D11C(v482);
      if (os_log_type_enabled(v216, v217))
      {
        v218 = swift_slowAlloc();
        v481[0] = swift_slowAlloc();
        *v218 = 136446466;
        *(v218 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v481);
        *(v218 + 12) = 2082;
        v219 = v112;
        if (*&v482[368])
        {
          v220 = *&v482[360];
        }

        else
        {
          v220 = 0x3E6C696E3CLL;
        }

        v221 = v179;
        if (*&v482[368])
        {
          v222 = *&v482[368];
        }

        else
        {
          v222 = 0xE500000000000000;
        }

        sub_10005D11C(v482);
        v223 = sub_10000D01C(v220, v222, v481);

        *(v218 + 14) = v223;
        v112 = v219;
        _os_log_impl(&_mh_execute_header, v216, v217, "%{public}s fence with invalid coordinates: %{public}s", v218, 0x16u);
        swift_arrayDestroy();

        v224 = type metadata accessor for Account();
        (*(*(v224 - 8) + 8))(v137, v224);
        (v221[1])(v439, v441);
        (*(v445 + 8))(v443, v446);
        goto LABEL_147;
      }

      goto LABEL_144;
    }
  }

  v137 = &_swiftEmptyArrayStorage;
LABEL_178:
  v436 = *(&v484[7] + 1);
  v395 = v137;
  if (*(&v484[7] + 1))
  {
    v179 = v457[2];
    if (v179)
    {
      v438 = *&v484[7];
      v442 = *(v432 + 16);
      v281 = v457 + ((*(v432 + 80) + 32) & ~*(v432 + 80));
      v282 = *(v432 + 72);
      v178 = v432 + 8;
      v283 = (v448 + 32);
      v430 = &_swiftEmptyArrayStorage;
      (v442)(v437, v281, v447);
      while (1)
      {
        v284 = Handle.serverIdentifier.getter();
        if (!v285)
        {
          break;
        }

        if (v284 == v438 && v285 == v436)
        {
        }

        else
        {
          v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v286 & 1) == 0)
          {
            break;
          }
        }

        v287 = v437;
        Handle.identifier.getter();
        v288 = v431;
        PersonHandle.init(id:)();
        (*v178)(v287, v447);
        v289 = *v283;
        (*v283)(v434, v288, v450);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v430 = sub_1001FCCF0(0, v430[2] + 1, 1, v430);
        }

        v291 = v430[2];
        v290 = v430[3];
        if (v291 >= v290 >> 1)
        {
          v430 = sub_1001FCCF0(v290 > 1, v291 + 1, 1, v430);
        }

        v292 = v430;
        v430[2] = v291 + 1;
        v289(&v292[((*(v448 + 80) + 32) & ~*(v448 + 80)) + *(v448 + 72) * v291], v434, v450);
LABEL_182:
        v281 += v282;
        v179 = (v179 - 1);
        if (!v179)
        {
          goto LABEL_195;
        }

        (v442)(v437, v281, v447);
      }

      (*v178)(v437, v447);
      goto LABEL_182;
    }
  }

  v430 = &_swiftEmptyArrayStorage;
LABEL_195:
  v293 = *(&v484[6] + 1);
  if (!*(&v484[6] + 1))
  {
    v434 = &_swiftEmptyArrayStorage;
    v112 = v433;
LABEL_231:
    *v482 = v396;

    sub_1002494C8(v319);

    sub_1002494C8(v320);

    sub_1002494C8(v321);
    sub_1000093B0(&qword_1005B04D8, &type metadata accessor for PersonHandle);
    v322 = Array<A>.uniqued()();

    if (*(v322 + 16))
    {
      v449 = v484[3];
      v455 = v484[2];
      v444 = *(&v484[35] + 1);
      v323 = LOBYTE(v484[36]);
    }

    else
    {
      v447 = v322;
      if (qword_1005A80E0 != -1)
      {
        swift_once();
      }

      v324 = type metadata accessor for Logger();
      sub_10000A6F0(v324, qword_1005B04A0);
      memcpy(v482, v483, sizeof(v482));
      v449 = *&v482[48];
      v455 = *&v482[32];
      v444 = *&v482[568];
      v323 = v482[576];
      sub_10005D0C0(v482, v481);
      v325 = Logger.logObject.getter();
      v326 = static os_log_type_t.error.getter();
      sub_10005D11C(v482);
      if (os_log_type_enabled(v325, v326))
      {
        v327 = swift_slowAlloc();
        v481[0] = swift_slowAlloc();
        *v327 = 136446466;
        *(v327 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v481);
        *(v327 + 12) = 2082;
        if (*&v482[368])
        {
          v328 = *&v482[360];
        }

        else
        {
          v328 = 0x3E6C696E3CLL;
        }

        if (*&v482[368])
        {
          v329 = *&v482[368];
        }

        else
        {
          v329 = 0xE500000000000000;
        }

        v330 = sub_10000D01C(v328, v329, v481);

        *(v327 + 14) = v330;
        _os_log_impl(&_mh_execute_header, v325, v326, "%{public}s fence with no 'others': %{public}s", v327, 0x16u);
        swift_arrayDestroy();
      }

      v322 = v447;
    }

    Account.icloudIdentifier.getter();
    v331 = v422;
    PersonHandle.init(id:)();
    v332 = 0;
    v333 = *(v322 + 16);
    v334 = v394;
    while (v333 != v332)
    {
      v335 = v332 + 1;
      v336 = v322 + ((*(v448 + 80) + 32) & ~*(v448 + 80)) + *(v448 + 72) * v332;
      v337 = static PersonHandle.== infix(_:_:)();
      v332 = v335;
      if (v337)
      {
        v338 = v322;
        if (qword_1005A80E0 != -1)
        {
          swift_once();
        }

        v339 = type metadata accessor for Logger();
        sub_10000A6F0(v339, qword_1005B04A0);
        memcpy(v482, v483, sizeof(v482));
        sub_10005D0C0(v482, v481);
        v340 = Logger.logObject.getter();
        v341 = static os_log_type_t.error.getter();
        sub_10005D11C(v482);
        if (os_log_type_enabled(v340, v341))
        {
          v342 = swift_slowAlloc();
          v481[0] = swift_slowAlloc();
          *v342 = 136446466;
          *(v342 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v481);
          *(v342 + 12) = 2082;
          if (*&v482[368])
          {
            v343 = *&v482[360];
          }

          else
          {
            v343 = 0x3E6C696E3CLL;
          }

          if (*&v482[368])
          {
            v344 = *&v482[368];
          }

          else
          {
            v344 = 0xE500000000000000;
          }

          v345 = sub_10000D01C(v343, v344, v481);

          *(v342 + 14) = v345;
          _os_log_impl(&_mh_execute_header, v340, v341, "%{public}s 'others' contain user's own handle: %{public}s", v342, 0x16u);
          swift_arrayDestroy();
        }

        v449 = *&v482[48];
        v455 = *&v482[32];
        v444 = *&v482[568];
        v323 = v482[576];
        __chkstk_darwin(v346);
        *(&v391 + 1) = v331;
        v322 = sub_1000267D4(sub_100218F94, &v390 + 8, v338, &type metadata accessor for PersonHandle, sub_100239398);
        v334 = v394;
        break;
      }
    }

    v347 = v403;
    sub_100005F04(v112, v403, &qword_1005AE720, &qword_1004CA2F0);
    if (v393(v347, 1, v334) == 1)
    {
      sub_100002CE0(v347, &qword_1005AE720, &qword_1004CA2F0);
      (*(v412 + 56))(v424, 1, 1, v413);
    }

    else
    {
      sub_100005F04(v347 + *(v334 + 36), v424, &unk_1005AE5B0, &qword_1004C32F0);
      sub_1001769EC(v347);
    }

    v348 = v459;
    v447 = v322;
    v349 = v455;
    if (v323)
    {
      if (qword_1005A80E0 != -1)
      {
        swift_once();
      }

      v350 = type metadata accessor for Logger();
      sub_10000A6F0(v350, qword_1005B04A0);
      memcpy(v482, v483, sizeof(v482));
      v449 = *&v482[48];
      v455 = *&v482[32];
      sub_10005D0C0(v482, v481);
      v351 = Logger.logObject.getter();
      v352 = static os_log_type_t.error.getter();
      sub_10005D11C(v482);
      if (os_log_type_enabled(v351, v352))
      {
        v353 = swift_slowAlloc();
        v481[0] = swift_slowAlloc();
        *v353 = 136446466;
        *(v353 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v481);
        *(v353 + 12) = 2082;
        if (*&v482[368])
        {
          v354 = *&v482[360];
        }

        else
        {
          v354 = 0x3E6C696E3CLL;
        }

        if (*&v482[368])
        {
          v355 = *&v482[368];
        }

        else
        {
          v355 = 0xE500000000000000;
        }

        v356 = sub_10000D01C(v354, v355, v481);

        *(v353 + 14) = v356;
        _os_log_impl(&_mh_execute_header, v351, v352, "%{public}s fence with missing updateTimestamp: %{public}s", v353, 0x16u);
        swift_arrayDestroy();
      }

      v349 = v455;
    }

    v357 = *(&v349 + 1);
    if (*(&v349 + 1))
    {
      v455 = v349;

      v358 = v455;
      v359 = v425;
      UUID.init(uuidString:)();

      sub_10005D11C(v348);

      v360 = type metadata accessor for UUID();
      v361 = (*(*(v360 - 8) + 48))(v359, 1, v360);
      v362 = *(&v449 + 1);
      v363 = v449;
      if (v361 == 1)
      {
        v364 = HIBYTE(v357) & 0xF;
        if ((v357 & 0x2000000000000000) == 0)
        {
          v364 = v358 & 0xFFFFFFFFFFFFLL;
        }

        if (v364)
        {
          if (qword_1005A80E0 != -1)
          {
            swift_once();
          }

          v365 = type metadata accessor for Logger();
          sub_10000A6F0(v365, qword_1005B04A0);
          memcpy(v481, v483, 0x241uLL);
          memcpy(v482, v483, sizeof(v482));
          v363 = *&v482[48];
          v362 = *&v482[56];
          sub_10005D0C0(v482, &v479);
          sub_10005D0C0(v481, &v479);
          v366 = Logger.logObject.getter();
          v367 = static os_log_type_t.error.getter();
          sub_10005D11C(v481);
          if (os_log_type_enabled(v366, v367))
          {
            v368 = swift_slowAlloc();
            v459 = swift_slowAlloc();
            v479 = v459;
            *v368 = 136446722;
            *(v368 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, &v479);
            *(v368 + 12) = 2082;
            if (v481[46])
            {
              v369 = v481[45];
            }

            else
            {
              v369 = 0x3E6C696E3CLL;
            }

            if (v481[46])
            {
              v370 = v481[46];
            }

            else
            {
              v370 = 0xE500000000000000;
            }

            v371 = sub_10000D01C(v369, v370, &v479);

            *(v368 + 14) = v371;
            *(v368 + 22) = 2082;
            if (*&v482[40])
            {
              v372 = *&v482[32];
            }

            else
            {
              v372 = 0x3E6C696E3CLL;
            }

            if (*&v482[40])
            {
              v373 = *&v482[40];
            }

            else
            {
              v373 = 0xE500000000000000;
            }

            sub_10005D11C(v482);
            v374 = sub_10000D01C(v372, v373, &v479);

            *(v368 + 24) = v374;
            _os_log_impl(&_mh_execute_header, v366, v367, "%{public}s fence with invalid ckRecordName: %{public}s, ckRecordName: %{public}s", v368, 0x20u);
            swift_arrayDestroy();
          }

          else
          {

            sub_10005D11C(v482);
          }
        }
      }
    }

    else
    {

      sub_10005D11C(v348);
      v375 = type metadata accessor for UUID();
      (*(*(v375 - 8) + 56))(v425, 1, 1, v375);
      v362 = *(&v449 + 1);
      v363 = v449;
    }

    memcpy(v482, v483, sizeof(v482));

    sub_10005D11C(v482);
    if (v362)
    {
      v376 = HIBYTE(v362) & 0xF;
      if ((v362 & 0x2000000000000000) == 0)
      {
        v376 = v363 & 0xFFFFFFFFFFFFLL;
      }

      if (v376)
      {
        v459 = v363;
        v457 = v362;
LABEL_303:
        v377 = v410;
        Date.init(timeIntervalSince1970:)();
        (*(v461 + 16))(v414, v453, v460);
        v378 = *(v454 + 16);
        v379 = v452;
        v378(v415, v451, v452);
        v378(v416, v401, v379);
        (*(v445 + 16))(v417, v443, v446);
        (*(v440 + 16))(v418, v439, v441);
        v380 = v405;
        (*(v405 + 16))(v419, v426, v420);
        v381 = v406;
        (*(v406 + 16))(v404, v427, v421);
        sub_100005F04(v424, v407, &unk_1005AE5B0, &qword_1004C32F0);
        sub_100005F04(v425, v408, &qword_1005A96E0, &qword_1004C2A80);
        v383 = v412;
        v382 = v413;
        v384 = v409;
        (*(v412 + 16))(v409, v377, v413);
        *(&v391 + 1) = v384;
        *&v391 = v457;
        *(&v390 + 1) = v459;
        v385 = v456;
        Fence.init(id:label:createdBy:finder:variant:acceptanceStatus:region:placemark:others:muteEndDate:ckRecordIdentifier:ckRecordZoneOwnerName:updatedAt:)();
        v386 = type metadata accessor for Account();
        (*(*(v386 - 8) + 8))(v458, v386);
        (*(v383 + 8))(v377, v382);
        sub_100002CE0(v424, &unk_1005AE5B0, &qword_1004C32F0);
        (*(v381 + 8))(v427, v421);
        (*(v380 + 8))(v426, v420);
        (*(v428 + 8))(v423, v429);
        (*(v440 + 8))(v439, v441);
        (*(v445 + 8))(v443, v446);
        v387 = *(v454 + 8);
        v388 = v452;
        v387(v401, v452);
        v387(v451, v388);
        (*(v461 + 8))(v453, v460);
        sub_100002CE0(v425, &qword_1005A96E0, &qword_1004C2A80);
        (*(v448 + 8))(v422, v450);
        v389 = type metadata accessor for Fence();
        (*(*(v389 - 8) + 56))(v385, 0, 1, v389);
        return sub_100002CE0(v433, &qword_1005AE720, &qword_1004CA2F0);
      }
    }

    v459 = 0;
    v457 = 0;
    goto LABEL_303;
  }

  v112 = v433;
  v166 = v457;
  v411 = *(*(&v484[6] + 1) + 16);
  if (!v411)
  {
    v434 = &_swiftEmptyArrayStorage;
    goto LABEL_231;
  }

  v294 = 0;
  v397 = *(&v484[6] + 1) + 32;
  v435 = (v432 + 16);
  v137 = (v432 + 8);
  v165 = v447;
  v437 = (v448 + 32);
  v434 = &_swiftEmptyArrayStorage;
  v398 = *(&v484[6] + 1);
  while (1)
  {
    if (v294 >= *(v293 + 16))
    {
      goto LABEL_306;
    }

    v295 = v166[2];
    v431 = v294;
    if (v295)
    {
      v296 = (v397 + 16 * v294);
      v297 = v296[1];
      v438 = *v296;
      v298 = v166 + ((*(v432 + 80) + 32) & ~*(v432 + 80));
      v442 = *(v432 + 72);
      v299 = *(v432 + 16);
      v436 = v297;

      v178 = &_swiftEmptyArrayStorage;
      v179 = v435;
      while (1)
      {
        v299(v455, v298, v165);
        v300 = Handle.serverIdentifier.getter();
        if (v301)
        {
          if (v300 == v438 && v301 == v436)
          {

LABEL_210:
            v303 = v455;
            Handle.identifier.getter();
            v304 = v444;
            PersonHandle.init(id:)();
            (*v137)(v303, v165);
            v305 = *v437;
            (*v437)(v449, v304, v450);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v178 = sub_1001FCCF0(0, *(v178 + 16) + 1, 1, v178);
            }

            v307 = *(v178 + 16);
            v306 = *(v178 + 24);
            v179 = v435;
            if (v307 >= v306 >> 1)
            {
              v178 = sub_1001FCCF0(v306 > 1, v307 + 1, 1, v178);
            }

            *(v178 + 16) = v307 + 1;
            v305(v178 + ((*(v448 + 80) + 32) & ~*(v448 + 80)) + *(v448 + 72) * v307, v449, v450);
            v165 = v447;
            goto LABEL_204;
          }

          v302 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v302)
          {
            goto LABEL_210;
          }
        }

        (*v137)(v455, v165);
LABEL_204:
        v298 += v442;
        if (!--v295)
        {

          v166 = v457;
          goto LABEL_217;
        }
      }
    }

    v178 = &_swiftEmptyArrayStorage;
LABEL_217:
    v308 = *(v178 + 16);
    v112 = v433;
    v309 = v434[2];
    v165 = v309 + v308;
    if (__OFADD__(v309, v308))
    {
      goto LABEL_307;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v311 = v434;
    if (!isUniquelyReferenced_nonNull_native || v165 > v434[3] >> 1)
    {
      if (v309 <= v165)
      {
        v312 = v309 + v308;
      }

      else
      {
        v312 = v309;
      }

      v311 = sub_1001FCCF0(isUniquelyReferenced_nonNull_native, v312, 1, v434);
    }

    v165 = v447;
    v313 = *(v178 + 16);
    v434 = v311;
    if (!v313)
    {

      if (v308)
      {
        goto LABEL_308;
      }

      goto LABEL_199;
    }

    v314 = v311[2];
    if ((v311[3] >> 1) - v314 < v308)
    {
      break;
    }

    v315 = v311 + ((*(v448 + 80) + 32) & ~*(v448 + 80)) + *(v448 + 72) * v314;
    swift_arrayInitWithCopy();

    if (v308)
    {
      v316 = v434[2];
      v317 = __OFADD__(v316, v308);
      v318 = v316 + v308;
      if (v317)
      {
        goto LABEL_311;
      }

      v434[2] = v318;
    }

LABEL_199:
    v294 = (v431 + 1);
    v293 = v398;
    if (v431 + 1 == v411)
    {
      goto LABEL_231;
    }
  }

  __break(1u);
LABEL_311:
  __break(1u);
LABEL_312:
  swift_once();
LABEL_136:
  v258 = type metadata accessor for Logger();
  sub_10000A6F0(v258, qword_1005B04A0);
  memcpy(v482, v483, sizeof(v482));
  sub_10005D0C0(v482, v481);
  v216 = Logger.logObject.getter();
  v259 = static os_log_type_t.error.getter();
  sub_10005D11C(v482);
  if (!os_log_type_enabled(v216, v259))
  {
LABEL_144:

    v230 = v482;
LABEL_145:
    sub_10005D11C(v230);
    v267 = type metadata accessor for Account();
    (*(*(v267 - 8) + 8))(v137, v267);
    (v179[1])(v439, v178);
    goto LABEL_146;
  }

  v260 = swift_slowAlloc();
  v481[0] = swift_slowAlloc();
  *v260 = 136446466;
  *(v260 + 4) = sub_10000D01C(0xD00000000000002ELL, 0x80000001004E5760, v481);
  *(v260 + 12) = 2082;
  v261 = v112;
  if (*&v482[368])
  {
    v262 = *&v482[360];
  }

  else
  {
    v262 = 0x3E6C696E3CLL;
  }

  v263 = v179;
  if (*&v482[368])
  {
    v264 = *&v482[368];
  }

  else
  {
    v264 = 0xE500000000000000;
  }

  sub_10005D11C(v482);
  v265 = sub_10000D01C(v262, v264, v481);

  *(v260 + 14) = v265;
  v112 = v261;
  _os_log_impl(&_mh_execute_header, v216, v259, "%{public}s fence with nil locationType: %{public}s", v260, 0x16u);
  swift_arrayDestroy();

  v266 = type metadata accessor for Account();
  (*(*(v266 - 8) + 8))(v137, v266);
  (v263[1])(v439, v441);
  v198 = v445;
LABEL_83:
  (*(v198 + 8))(v443, v446);
LABEL_147:
  v191 = *(v454 + 8);
  v190 = v401;
LABEL_148:
  v268 = v452;
  v191(v190, v452);
  v191(v451, v268);
LABEL_149:
  (*(v461 + 8))(v453, v460);
LABEL_150:
  v150 = v456;
LABEL_151:
  sub_100002CE0(v112, &qword_1005AE720, &qword_1004CA2F0);
  v269 = type metadata accessor for Fence();
  return (*(*(v269 - 8) + 56))(v150, 1, 1, v269);
}