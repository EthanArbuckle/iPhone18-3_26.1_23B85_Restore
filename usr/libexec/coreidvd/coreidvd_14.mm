uint64_t sub_1001569EC(void *a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet();
  v65 = *(v7 - 8);
  v8 = *(v65 + 64);
  v9 = __chkstk_darwin(v7);
  v64 = &v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v9);
  v13 = &v49 - v12;
  v14 = *(*v3 + 16);
  v15 = *(*v3 + 24);
  v51 = a1;
  v50 = v3;
  if (v15 <= v14 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1001544FC(v14 + 1);
    }

    else
    {
      if (v15 > v14)
      {
        result = sub_10015814C();
        goto LABEL_31;
      }

      sub_10015952C(v14 + 1);
    }

    v16 = *v3;
    v17 = *(*v3 + 40);
    Hasher.init(_seed:)();
    sub_1003CF3B8(v69);
    result = Hasher._finalize()();
    v18 = v16 + 56;
    v19 = -1 << *(v16 + 32);
    a2 = result & ~v19;
    if ((*(v16 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
    {
      v20 = ~v19;
      v21 = *a1;
      v57 = a1[1];
      v56 = a1[2];
      v52 = a1[3];
      v49 = a1[4];
      v66 = v21;
      v67 = *(v21 + 16);
      v63 = v65 + 16;
      v22 = (v65 + 8);
      v55 = v16;
      v54 = v16 + 56;
      v53 = v20;
      do
      {
        v24 = (*(v16 + 48) + 40 * a2);
        v68 = *v24;
        if (*(v68 + 16) == v67)
        {
          v25 = v24[2];
          v58 = v24[1];
          v59 = v25;
          v26 = v24[3];
          v27 = v24[4];
          v60 = a2;
          v61 = v27;
          v62 = v26;
          if (v67)
          {
            v28 = *(v65 + 80);
            v29 = v68;

            if (v29 != v66)
            {
              v30 = 0;
              v31 = (v28 + 32) & ~v28;
              v32 = v68 + v31;
              v33 = v66 + v31;
              while (v30 < *(v68 + 16))
              {
                v34 = *(v65 + 72) * v30;
                v35 = *(v65 + 16);
                v35(v13, v32 + v34, v7);
                if (v30 >= *(v66 + 16))
                {
                  goto LABEL_34;
                }

                v36 = v13;
                v37 = v64;
                v35(v64, v33 + v34, v7);
                sub_10015D610(&qword_10083BCB0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet);
                v38 = dispatch thunk of static Equatable.== infix(_:_:)();
                v39 = *v22;
                v40 = v37;
                v13 = v36;
                (*v22)(v40, v7);
                v39(v36, v7);
                if ((v38 & 1) == 0)
                {

                  a2 = v60;
                  v16 = v55;
                  goto LABEL_30;
                }

                if (v67 == ++v30)
                {
                  goto LABEL_22;
                }
              }

              __break(1u);
LABEL_34:
              __break(1u);
              goto LABEL_35;
            }
          }

          else
          {
          }

LABEL_22:
          a2 = v60;
          v41 = v58 == v57 && v59 == v56;
          v16 = v55;
          if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)()) && (sub_10014EA44(v62, v52))
          {
            v23 = sub_10014DA5C(v61, v49);

            v18 = v54;
            v20 = v53;
            if (v23)
            {
              goto LABEL_36;
            }
          }

          else
          {

LABEL_30:
            v18 = v54;
            v20 = v53;
          }
        }

        a2 = (a2 + 1) & v20;
      }

      while (((*(v18 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
    }
  }

LABEL_31:
  v42 = *v50;
  *(v42 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v43 = *(v42 + 48) + 40 * a2;
  v44 = v51;
  v45 = v51[1];
  *v43 = *v51;
  *(v43 + 16) = v45;
  *(v43 + 32) = *(v44 + 4);
  v46 = *(v42 + 16);
  v47 = __OFADD__(v46, 1);
  v48 = v46 + 1;
  if (v47)
  {
LABEL_35:
    __break(1u);
LABEL_36:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v42 + 16) = v48;
  }

  return result;
}

uint64_t sub_100156F44(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for MobileDocumentElement();
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
    sub_1001548CC(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001585C0(&type metadata accessor for MobileDocumentElement, &qword_10083BCD8, &qword_1006DA1F8);
      goto LABEL_12;
    }

    sub_100159920(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10015D610(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement);
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
      sub_10015D610(&qword_10083BCD0, &type metadata accessor for MobileDocumentElement);
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

uint64_t sub_10015720C(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for MobileDocumentType();
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
    sub_100154C28(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001585C0(&type metadata accessor for MobileDocumentType, &qword_10083BCA0, &qword_1006DA1E0);
      goto LABEL_12;
    }

    sub_100159C3C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10015D610(&qword_100834750, &type metadata accessor for MobileDocumentType);
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
      sub_10015D610(&qword_100834758, &type metadata accessor for MobileDocumentType);
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

Swift::Int sub_1001574D4(Swift::Int result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  v45 = result;
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_40;
  }

  if (a3)
  {
    sub_100154F84(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_1001582DC();
      goto LABEL_40;
    }

    sub_100159F58(v6 + 1);
  }

  v61 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  v9 = *(v5 + 16);
  v10 = *(v5 + 24);
  v11 = *(v5 + 32);
  v12 = *(v5 + 40);
  v13 = *(v5 + 48);
  v14 = *(v5 + 56);
  v16 = *(v5 + 64);
  v15 = *(v5 + 72);
  v47 = *(v5 + 80);
  v46 = *(v5 + 88);
  v58 = *(v5 + 8);
  v59 = *v5;
  String.hash(into:)();
  v54 = v9;
  Hasher._combine(_:)(v9);
  v52 = v11;
  v53 = v10;
  String.hash(into:)();
  v50 = v13;
  v51 = v12;
  String.hash(into:)();
  v48 = v16;
  v49 = v14;
  String.hash(into:)();
  v43 = v15;
  String.hash(into:)();
  v17 = *(v5 + 96);
  Hasher._combine(_:)(v46 & 1);
  v42 = v17;
  Hasher._combine(_:)(v17);
  result = Hasher._finalize()();
  v18 = -1 << *(v61 + 32);
  a2 = result & ~v18;
  v57 = v61 + 56;
  if ((*(v61 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v56 = ~v18;
    v55 = *(v61 + 48);
    while (1)
    {
      v19 = v55 + 104 * a2;
      result = *v19;
      v21 = *(v19 + 16);
      v20 = *(v19 + 24);
      v22 = *(v19 + 32);
      v23 = *(v19 + 40);
      v24 = *(v19 + 48);
      v25 = *(v19 + 56);
      v27 = *(v19 + 64);
      v26 = *(v19 + 72);
      v28 = *(v19 + 80);
      v62 = *(v19 + 88);
      v60 = *(v19 + 96);
      v29 = *v19 == v59 && *(v19 + 8) == v58;
      if (v29 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
      {
        if (v21 == v54)
        {
          v30 = v20 == v53 && v22 == v52;
          if (v30 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
          {
            v31 = v23 == v51 && v24 == v50;
            if (v31 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
            {
              v32 = v25 == v49 && v27 == v48;
              if (v32 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
              {
                v33 = v26 == v43 && v28 == v47;
                if (v33 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
                {
                  if (((v62 ^ v46) & 1) == 0 && v60 == v42)
                  {
                    break;
                  }
                }
              }
            }
          }
        }
      }

      a2 = (a2 + 1) & v56;
      if (((*(v57 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_40;
      }
    }

    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

LABEL_40:
  v34 = *v44;
  *(*v44 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v35 = *(v34 + 48) + 104 * a2;
  v36 = *(v45 + 16);
  *v35 = *v45;
  *(v35 + 16) = v36;
  *(v35 + 96) = *(v45 + 96);
  v37 = *(v45 + 80);
  *(v35 + 64) = *(v45 + 64);
  *(v35 + 80) = v37;
  v38 = *(v45 + 48);
  *(v35 + 32) = *(v45 + 32);
  *(v35 + 48) = v38;
  v39 = *(v34 + 16);
  v40 = __OFADD__(v39, 1);
  v41 = v39 + 1;
  if (v40)
  {
    __break(1u);
  }

  else
  {
    *(v34 + 16) = v41;
  }

  return result;
}

uint64_t sub_100157828(uint64_t result, unint64_t a2, char a3)
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
    sub_100155314(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_100158480();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10015A29C(v5 + 1);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  result = static Hasher._hash(seed:_:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * a2) != v4)
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
  *(*(v12 + 48) + 8 * a2) = v4;
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

uint64_t sub_100157948(uint64_t a1, unint64_t a2, char a3)
{
  v33 = a1;
  v6 = type metadata accessor for CocoaError.Code();
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
    sub_100155538(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_1001585C0(&type metadata accessor for CocoaError.Code, &qword_10083BC98, &qword_1006DA1D8);
      goto LABEL_12;
    }

    sub_10015A48C(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  sub_10015D610(&qword_10083BC88, &type metadata accessor for CocoaError.Code);
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
      sub_10015D610(&qword_10083BC90, &type metadata accessor for CocoaError.Code);
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

void *sub_100157C10()
{
  v1 = v0;
  sub_100007224(&qword_10083BC70, &unk_1006E0140);
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

void *sub_100157D6C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007224(a1, a2);
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

void *sub_100157E9C()
{
  v1 = v0;
  sub_100007224(&qword_10083BCE0, &qword_1006DA200);
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
        v18 = (*(v2 + 48) + v17);
        v19 = *v18;
        v20 = v18[1];
        v21 = v18[2];
        v22 = (*(v4 + 48) + v17);
        *v22 = *v18;
        v22[1] = v20;
        v22[2] = v21;
        sub_10000B8B8(v19, v20);
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

id sub_10015800C(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  sub_100007224(a1, a2);
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

void *sub_10015814C()
{
  v1 = v0;
  sub_100007224(&qword_10083BCB8, &qword_1006DA1F0);
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
        v20 = v18[2];
        v21 = v18[3];
        v22 = v18[4];
        v23 = (*(v4 + 48) + v17);
        *v23 = *v18;
        v23[1] = v19;
        v23[2] = v20;
        v23[3] = v21;
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

void *sub_1001582DC()
{
  v1 = v0;
  sub_100007224(&qword_10083BD18, &qword_1006DA230);
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
    for (i = (v9 + 63) >> 6; v11; result = sub_10015D178(v24, v23))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = 104 * (v13 | (v8 << 6));
      v17 = (*(v2 + 48) + v16);
      v18 = v17[3];
      v19 = v17[4];
      v20 = v17[5];
      v25 = *(v17 + 12);
      v24[4] = v19;
      v24[5] = v20;
      v24[3] = v18;
      v22 = v17[1];
      v21 = v17[2];
      v24[0] = *v17;
      v24[1] = v22;
      v24[2] = v21;
      memmove((*(v4 + 48) + v16), v17, 0x68uLL);
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

void *sub_100158480()
{
  v1 = v0;
  sub_100007224(&qword_10083BD08, &qword_1006DA220);
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

void *sub_1001585C0(uint64_t (*a1)(void), uint64_t *a2, uint64_t *a3)
{
  v6 = v3;
  v7 = a1(0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v27 - v10;
  sub_100007224(a2, a3);
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

uint64_t sub_1001587F8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BC70, &unk_1006E0140);
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

uint64_t sub_100158A30(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BD30, &qword_1006DA248);
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

uint64_t sub_100158DEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BD20, &qword_1006DA238);
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

unint64_t sub_100159138(uint64_t a1)
{
  v2 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v3 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BCE0, &qword_1006DA200);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  v23 = v2;
  if (*(v2 + 16))
  {
    v6 = 0;
    v7 = v2 + 56;
    v8 = 1 << *(v2 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v2 + 56);
    for (i = (v8 + 63) >> 6; v10; ++*(v5 + 16))
    {
      v12 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_14:
      v15 = (*(v23 + 48) + 24 * (v12 | (v6 << 6)));
      v16 = *v15;
      v17 = v15[1];
      v18 = v15[2];
      v19 = *(v5 + 40);
      Hasher.init(_seed:)();
      sub_10000B8B8(v16, v17);

      Data.hash(into:)();
      sub_1003D4B28(v24, v18);
      Hasher._finalize()();
      v20 = -1 << *(v5 + 32);
      result = _HashTable.nextHole(atOrAfter:)();
      *(v5 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
      v21 = (*(v5 + 48) + 24 * result);
      *v21 = v16;
      v21[1] = v17;
      v21[2] = v18;
    }

    v13 = v6;
    while (1)
    {
      v6 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        break;
      }

      if (v6 >= i)
      {
        goto LABEL_16;
      }

      v14 = *(v7 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v10 = (v14 - 1) & v14;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_16:

    *v22 = v5;
  }

  return result;
}

uint64_t sub_100159320(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_100007224(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v28 = v4;
    v9 = 0;
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_17:
      v19 = *(v8 + 40);
      v20 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      result = NSObject._rawHashValue(seed:)(v19);
      v21 = -1 << *(v8 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v20;
      ++*(v8 + 16);
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v13)
      {

        v4 = v28;
        goto LABEL_28;
      }

      v18 = *(v5 + 56 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
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
    *v4 = v8;
  }

  return result;
}

uint64_t sub_10015952C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BCB8, &qword_1006DA1F0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
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
    v40 = v1;
    v41 = (v9 + 63) >> 6;
    v12 = result + 56;
    v42 = v3 + 56;
    v43 = v3;
    v44 = result;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v45 = (v11 - 1) & v11;
LABEL_17:
      v19 = (*(v3 + 48) + 40 * (v16 | (v7 << 6)));
      v20 = *v19;
      v46 = v19[1];
      v21 = v19[2];
      v22 = v19[3];
      v23 = v19[4];
      v24 = *(v6 + 40);
      Hasher.init(_seed:)();
      v25 = *(v20 + 16);
      Hasher._combine(_:)(v25);
      v47 = v20;
      v48 = v21;
      if (v25)
      {
        v26 = *(type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet() - 8);
        v27 = v20 + ((*(v26 + 80) + 32) & ~*(v26 + 80));
        v28 = *(v26 + 72);
        sub_10015D610(&qword_10083BCC0, &type metadata accessor for ISO18013ReaderRequest.AlternativeDataElementsSet);

        do
        {
          dispatch thunk of Hashable.hash(into:)();
          v27 += v28;
          --v25;
        }

        while (v25);
      }

      else
      {
      }

      String.hash(into:)();
      v29 = *(v22 + 16);
      Hasher._combine(_:)(v29);
      if (v29)
      {
        v30 = (v22 + 40);
        do
        {
          v31 = *(v30 - 1);
          v32 = *v30;
          sub_10000B8B8(v31, *v30);
          Data.hash(into:)();
          sub_10000B90C(v31, v32);
          v30 += 2;
          --v29;
        }

        while (v29);
      }

      sub_10015B46C(v49, v23);
      result = Hasher._finalize()();
      v6 = v44;
      v33 = -1 << *(v44 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v12 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        v14 = v47;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v12 + 8 * v35);
          if (v39 != -1)
          {
            v13 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_38;
      }

      v13 = __clz(__rbit64((-1 << v34) & ~*(v12 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
      v14 = v47;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v15 = (*(v44 + 48) + 40 * v13);
      *v15 = v14;
      v15[1] = v46;
      v15[2] = v48;
      v15[3] = v22;
      v15[4] = v23;
      ++*(v44 + 16);
      v8 = v42;
      v3 = v43;
      v11 = v45;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v41)
      {

        v2 = v40;
        goto LABEL_36;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v45 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  else
  {

LABEL_36:
    *v2 = v6;
  }

  return result;
}

uint64_t sub_100159920(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for MobileDocumentElement();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083BCD8, &qword_1006DA1F8);
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
      sub_10015D610(&qword_10083BCC8, &type metadata accessor for MobileDocumentElement);
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

uint64_t sub_100159C3C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for MobileDocumentType();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083BCA0, &qword_1006DA1E0);
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
      sub_10015D610(&qword_100834750, &type metadata accessor for MobileDocumentType);
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

uint64_t sub_100159F58(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BD18, &qword_1006DA230);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v7 = 0;
    v39 = v2;
    v40 = v3 + 56;
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
    v41 = v11;
    v42 = result;
    v43 = v3;
    while (v10)
    {
      v20 = __clz(__rbit64(v10));
      v44 = (v10 - 1) & v10;
LABEL_17:
      v23 = *(v3 + 48) + 104 * (v20 | (v7 << 6));
      v25 = *v23;
      v24 = *(v23 + 16);
      v49 = *(v23 + 32);
      v26 = *(v23 + 48);
      v27 = *(v23 + 64);
      v28 = *(v23 + 80);
      v53 = *(v23 + 96);
      v51 = v27;
      v52 = v28;
      v50 = v26;
      v47 = v25;
      v48 = v24;
      v29 = *(v6 + 40);
      Hasher.init(_seed:)();
      v30 = v48;
      v45 = BYTE8(v52);
      sub_10015D178(&v47, v46);
      String.hash(into:)();
      Hasher._combine(_:)(v30);
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      String.hash(into:)();
      v31 = v53;
      Hasher._combine(_:)(v45);
      Hasher._combine(_:)(v31);
      result = Hasher._finalize()();
      v6 = v42;
      v32 = -1 << *(v42 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v12 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v3 = v43;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v12 + 8 * v34);
          if (v38 != -1)
          {
            v13 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v33) & ~*(v12 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v3 = v43;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v42 + 48) + 104 * v13;
      v15 = v49;
      v16 = v47;
      *(v14 + 16) = v48;
      *(v14 + 32) = v15;
      v17 = v50;
      v18 = v51;
      v19 = v52;
      *(v14 + 96) = v53;
      *(v14 + 64) = v18;
      *(v14 + 80) = v19;
      *(v14 + 48) = v17;
      *v14 = v16;
      ++*(v42 + 16);
      v11 = v41;
      v10 = v44;
    }

    v21 = v7;
    while (1)
    {
      v7 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v7 >= v11)
      {

        v2 = v39;
        goto LABEL_28;
      }

      v22 = *(v40 + 8 * v7);
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v44 = (v22 - 1) & v22;
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

uint64_t sub_10015A29C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_100007224(&qword_10083BD08, &qword_1006DA220);
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
      v17 = *(*(v3 + 48) + 8 * (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      result = static Hasher._hash(seed:_:)();
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
      *(*(v6 + 48) + 8 * v13) = v17;
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

uint64_t sub_10015A48C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for CocoaError.Code();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083BC98, &qword_1006DA1D8);
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
      sub_10015D610(&qword_10083BC88, &type metadata accessor for CocoaError.Code);
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

void sub_10015A7A8(__int128 *a1, uint64_t a2)
{
  v62 = a1;
  v68 = type metadata accessor for IdentityIntentToStore();
  v3 = *(v68 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v68);
  v67 = &v49 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = type metadata accessor for IdentityElement();
  v6 = *(v66 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v66);
  v65 = &v49 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_100007224(&qword_10083AD08, &qword_1006D8FD0);
  v10 = *(*(v9 - 8) + 64);
  v11 = __chkstk_darwin(v9 - 8);
  v13 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  v16 = *(a2 + 64);
  v51 = a2 + 64;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & v16;
  v50 = (v17 + 63) >> 6;
  v54 = v6 + 16;
  v53 = v3 + 16;
  v64 = (v6 + 32);
  v20 = (v3 + 32);
  v57 = v6;
  v58 = v3;
  v60 = (v3 + 8);
  v61 = (v6 + 8);
  v59 = a2;

  v21 = 0;
  v22 = 0;
  v56 = v13;
  v55 = v15;
  v52 = (v3 + 32);
  if (v19)
  {
    while (1)
    {
      v63 = v21;
      v23 = v22;
LABEL_13:
      v26 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v27 = v26 | (v23 << 6);
      v28 = v59;
      v29 = v57;
      v30 = v65;
      v31 = v66;
      (*(v57 + 16))(v65, *(v59 + 48) + *(v57 + 72) * v27, v66);
      v32 = v58;
      v33 = v67;
      v34 = v68;
      (*(v58 + 16))(v67, *(v28 + 56) + *(v58 + 72) * v27, v68);
      v35 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      v36 = *(v35 + 48);
      v37 = *(v29 + 32);
      v13 = v56;
      v37(v56, v30, v31);
      v38 = *(v32 + 32);
      v20 = v52;
      v38(&v13[v36], v33, v34);
      (*(*(v35 - 8) + 56))(v13, 0, 1, v35);
      v25 = v23;
      v15 = v55;
      v21 = v63;
LABEL_14:
      sub_1000B1FC8(v13, v15, &qword_10083AD08, &qword_1006D8FD0);
      v39 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
      if ((*(*(v39 - 8) + 48))(v15, 1, v39) == 1)
      {
        break;
      }

      v40 = *(v39 + 48);
      v41 = v65;
      v42 = v66;
      (*v64)(v65, v15, v66);
      v43 = &v15[v40];
      v45 = v67;
      v44 = v68;
      (*v20)(v67, v43, v68);
      v46 = v62[3];
      v71 = v62[2];
      v72 = v46;
      v73 = *(v62 + 8);
      v47 = v62[1];
      v69 = *v62;
      v70 = v47;
      sub_10015D610(&qword_1008347A8, &type metadata accessor for IdentityElement);
      dispatch thunk of Hashable.hash(into:)();
      (*v61)(v41, v42);
      sub_10015D610(&qword_10083BCF8, &type metadata accessor for IdentityIntentToStore);
      dispatch thunk of Hashable.hash(into:)();
      (*v60)(v45, v44);
      v21 ^= Hasher._finalize()();
      v22 = v25;
      if (!v19)
      {
        goto LABEL_5;
      }
    }

    Hasher._combine(_:)(v21);
  }

  else
  {
LABEL_5:
    if (v50 <= v22 + 1)
    {
      v24 = v22 + 1;
    }

    else
    {
      v24 = v50;
    }

    v25 = v24 - 1;
    while (1)
    {
      v23 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v23 >= v50)
      {
        v48 = sub_100007224(&qword_10083A5E8, &qword_1006D8FF0);
        (*(*(v48 - 8) + 56))(v13, 1, 1, v48);
        v19 = 0;
        goto LABEL_14;
      }

      v19 = *(v51 + 8 * v23);
      ++v22;
      if (v19)
      {
        v63 = v21;
        goto LABEL_13;
      }
    }

    __break(1u);
  }
}

void sub_10015ADA8(uint64_t a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  while (v5)
  {
    v25 = v7;
LABEL_11:
    v10 = *(a2 + 48);
    v11 = (v8 << 10) | (16 * __clz(__rbit64(v5)));
    v12 = *(v10 + v11);
    v13 = *(v10 + v11 + 8);
    v14 = (*(a2 + 56) + v11);
    v15 = *v14;
    v16 = v14[1];
    v17 = *(a1 + 48);
    v26[2] = *(a1 + 32);
    v26[3] = v17;
    v27 = *(a1 + 64);
    v18 = *(a1 + 16);
    v26[0] = *a1;
    v26[1] = v18;

    String.hash(into:)();

    Hasher._combine(_:)(*(v15 + 16));
    v19 = *(v15 + 16);
    if (v19)
    {
      v20 = (v15 + 40);
      do
      {
        v21 = *(v20 - 1);
        v22 = *v20;

        String.hash(into:)();

        v20 += 2;
        --v19;
      }

      while (v19);
    }

    v5 &= v5 - 1;

    sub_10015AF7C(v26, v16);
    swift_bridgeObjectRelease_n();

    v7 = Hasher._finalize()() ^ v25;
  }

  while (1)
  {
    v9 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v9 >= v6)
    {

      Hasher._combine(_:)(v7);
      return;
    }

    v5 = *(v2 + 8 * v9);
    ++v8;
    if (v5)
    {
      v25 = v7;
      v8 = v9;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_10015AF7C(__int128 *a1, uint64_t a2)
{
  v52 = a1;
  v55 = type metadata accessor for Locale.Region();
  v3 = *(v55 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v55);
  v51 = v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v46 = v44 - v7;
  v8 = sub_100007224(&qword_10083BDF8, &qword_1006DA2C8);
  v9 = *(*(v8 - 8) + 64);
  v10 = __chkstk_darwin(v8 - 8);
  v12 = v44 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v53 = v44 - v13;
  v14 = a2 + 64;
  v15 = 1 << *(a2 + 32);
  v16 = -1;
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  v17 = v16 & *(a2 + 64);
  v18 = (v15 + 63) >> 6;
  v44[1] = v3 + 16;
  v54 = (v3 + 32);
  v47 = v3;
  v48 = a2;
  v50 = (v3 + 8);

  v19 = 0;
  v20 = 0;
  v45 = v12;
  for (i = a2 + 64; ; v14 = i)
  {
    v56 = v19;
    if (!v17)
    {
      break;
    }

    v21 = v20;
LABEL_15:
    v25 = __clz(__rbit64(v17));
    v17 &= v17 - 1;
    v26 = v25 | (v21 << 6);
    v28 = v47;
    v27 = v48;
    (*(v47 + 16))(v46, *(v48 + 48) + *(v47 + 72) * v26, v55);
    v29 = *(*(v27 + 56) + 8 * v26);
    v30 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
    v31 = *(v30 + 48);
    v12 = v45;
    (*(v28 + 32))();
    *&v12[v31] = v29;
    (*(*(v30 - 8) + 56))(v12, 0, 1, v30);

    v24 = v53;
LABEL_16:
    sub_1000B1FC8(v12, v24, &qword_10083BDF8, &qword_1006DA2C8);
    v32 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
    if ((*(*(v32 - 8) + 48))(v24, 1, v32) == 1)
    {

      Hasher._combine(_:)(v56);
      return;
    }

    v33 = *(v32 + 48);
    v34 = v55;
    v35 = v51;
    (*v54)(v51, v24, v55);
    v36 = *(v24 + v33);
    v37 = v52[3];
    v59 = v52[2];
    v60 = v37;
    v61 = *(v52 + 8);
    v38 = v52[1];
    v57 = *v52;
    v58 = v38;
    sub_10015D610(&qword_100834778, &type metadata accessor for Locale.Region);
    dispatch thunk of Hashable.hash(into:)();
    (*v50)(v35, v34);
    Hasher._combine(_:)(*(v36 + 16));
    v39 = *(v36 + 16);
    if (v39)
    {
      v40 = (v36 + 40);
      do
      {
        v41 = *(v40 - 1);
        v42 = *v40;

        String.hash(into:)();

        v40 += 2;
        --v39;
      }

      while (v39);
    }

    v19 = Hasher._finalize()() ^ v56;
  }

  if (v18 <= v20 + 1)
  {
    v22 = v20 + 1;
  }

  else
  {
    v22 = v18;
  }

  v23 = v22 - 1;
  v24 = v53;
  while (1)
  {
    v21 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v21 >= v18)
    {
      v43 = sub_100007224(&qword_10083BE00, &unk_1006DA2D0);
      (*(*(v43 - 8) + 56))(v12, 1, 1, v43);
      v17 = 0;
      v20 = v23;
      goto LABEL_16;
    }

    v17 = *(v14 + 8 * v21);
    ++v20;
    if (v17)
    {
      v20 = v21;
      goto LABEL_15;
    }
  }

  __break(1u);
}

void sub_10015B46C(__int128 *a1, uint64_t a2)
{
  v2 = a2 + 64;
  v3 = 1 << *(a2 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a2 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = 0;
  v29 = v6;
  v30 = v2;
LABEL_6:
  if (v5)
  {
    v33 = v7;
    v9 = v8;
LABEL_12:
    v10 = __clz(__rbit64(v5)) | (v9 << 6);
    v11 = (*(a2 + 48) + 16 * v10);
    v12 = *v11;
    v13 = v11[1];
    v14 = *(*(a2 + 56) + 8 * v10);
    v5 &= v5 - 1;
    v37 = a1[2];
    v38 = a1[3];
    v39 = *(a1 + 8);
    v35 = *a1;
    v36 = a1[1];

    String.hash(into:)();

    v15 = v14 + 64;
    v16 = 1 << *(v14 + 32);
    if (v16 < 64)
    {
      v17 = ~(-1 << v16);
    }

    else
    {
      v17 = -1;
    }

    v18 = v17 & *(v14 + 64);
    v19 = (v16 + 63) >> 6;
    v34 = v14;

    v20 = 0;
    for (i = 0; v18; v20 = Hasher._finalize()() ^ v22)
    {
      v22 = v20;
      v23 = i;
LABEL_21:
      v24 = __clz(__rbit64(v18)) | (v23 << 6);
      v25 = (*(v34 + 48) + 16 * v24);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(*(v34 + 56) + v24);
      v18 &= v18 - 1;

      String.hash(into:)();

      Hasher._combine(_:)(v28);
    }

    while (1)
    {
      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if (v23 >= v19)
      {

        Hasher._combine(_:)(v20);

        v7 = Hasher._finalize()() ^ v33;
        v8 = v9;
        v6 = v29;
        v2 = v30;
        goto LABEL_6;
      }

      v18 = *(v15 + 8 * v23);
      ++i;
      if (v18)
      {
        v22 = v20;
        i = v23;
        goto LABEL_21;
      }
    }

    __break(1u);
  }

  else
  {
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v6)
      {

        Hasher._combine(_:)(v7);
        return;
      }

      v5 = *(v2 + 8 * v9);
      ++v8;
      if (v5)
      {
        v33 = v7;
        goto LABEL_12;
      }
    }
  }

  __break(1u);
}

uint64_t sub_10015B6E4(uint64_t a1, uint64_t a2, char a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = type metadata accessor for DIPError.PropertyKey();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v38 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a5;
  v41 = a6;
  v38 = a6;
  v17 = sub_100032DBC(&v39);
  (*(*(a5 - 8) + 32))(v17, a1, a5);
  v18 = *a4;
  v20 = sub_10003AF10(a2);
  v21 = v18[2];
  v22 = (v19 & 1) == 0;
  v23 = v21 + v22;
  if (__OFADD__(v21, v22))
  {
    __break(1u);
    goto LABEL_14;
  }

  v24 = v19;
  v25 = v18[3];
  if (v25 >= v23 && (a3 & 1) != 0)
  {
LABEL_7:
    v26 = *a4;
    if (v24)
    {
LABEL_8:
      v27 = (v26[7] + 40 * v20);
      sub_10000BB78(v27);
      return sub_10001F358(&v39, v27);
    }

    goto LABEL_11;
  }

  if (v25 >= v23 && (a3 & 1) == 0)
  {
    sub_10016F358();
    goto LABEL_7;
  }

  sub_100165918(v23, a3 & 1);
  v29 = *a4;
  v30 = sub_10003AF10(a2);
  if ((v24 & 1) != (v31 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v20 = v30;
  v26 = *a4;
  if (v24)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v13 + 16))(v16, a2, v12);
  v32 = v40;
  v33 = sub_10001F370(&v39, v40);
  v34 = *(*(v32 - 8) + 64);
  __chkstk_darwin(v33);
  v36 = &v38 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v37 + 16))(v36);
  sub_10015B994(v20, v16, v36, v26, a5, v38);
  return sub_10000BB78(&v39);
}

uint64_t sub_10015B994(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v19 = a5;
  v20 = a6;
  v11 = sub_100032DBC(&v18);
  (*(*(a5 - 8) + 32))(v11, a3, a5);
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = type metadata accessor for DIPError.PropertyKey();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  result = sub_10001F358(&v18, a4[7] + 40 * a1);
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_10015BAA0(uint64_t a1)
{
  v2 = sub_100007224(&qword_10083BC78, &qword_1006DA1C0);
  v3 = *(*(v2 - 8) + 64);
  v4 = __chkstk_darwin(v2 - 8);
  v6 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __chkstk_darwin(v4);
  v9 = &v40 - v8;
  __chkstk_darwin(v7);
  v11 = &v40 - v10;
  v12 = sub_100007224(&qword_10083BC80, &qword_1006DA1C8);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v16 = &v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __chkstk_darwin(v14);
  v19 = &v40 - v18;
  __chkstk_darwin(v17);
  v21 = &v40 - v20;
  static ISO18013_5_1_ElementIdentifier.parseAgeOverElement(_:)();
  if ((v22 & 1) == 0)
  {
    type metadata accessor for IdentityElementRawValueKeys();
    return static IdentityElementRawValueKeys.ageIsOver(_:)();
  }

  ISO18013_5_1_ElementIdentifier.init(rawValue:)();
  sub_10000BBC4(v21, v19, &qword_10083BC80, &qword_1006DA1C8);
  v23 = type metadata accessor for ISO18013_5_1_ElementIdentifier();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) != 1)
  {
    sub_10000BBC4(v19, v16, &qword_10083BC80, &qword_1006DA1C8);
    v27 = (*(v24 + 88))(v16, v23);
    if (v27 != enum case for ISO18013_5_1_ElementIdentifier.givenName(_:) && v27 != enum case for ISO18013_5_1_ElementIdentifier.familyName(_:))
    {
      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.birthDate(_:))
      {
LABEL_16:
        sub_10000BE18(v19, &qword_10083BC80, &qword_1006DA1C8);
        type metadata accessor for IdentityElementRawValueKeys();
        v29 = static IdentityElementRawValueKeys.dateOfBirth.getter();
        goto LABEL_17;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.issueDate(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.documentIssueDate.getter();
LABEL_27:
        a1 = v35;
        sub_10000BE18(v21, &qword_10083BC80, &qword_1006DA1C8);
        v32 = v19;
        goto LABEL_28;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.expiryDate(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.documentExpirationDate.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.issuingCountry(_:) || v27 == enum case for ISO18013_5_1_ElementIdentifier.issuingAuthority(_:))
      {
        goto LABEL_67;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.documentNumber(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.documentNumber.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.portrait(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.portrait.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.drivingPrivileges(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.drivingPrivileges.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.unDistinguishingSign(_:))
      {
LABEL_67:
        sub_10000BE18(v19, &qword_10083BC80, &qword_1006DA1C8);
        type metadata accessor for IdentityElementRawValueKeys();
        v29 = static IdentityElementRawValueKeys.issuingAuthority.getter();
        goto LABEL_17;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.administrativeNumber(_:))
      {
        goto LABEL_3;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.sex(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.sex.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.height(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.height.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.weight(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.weight.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.eyeColor(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.eyeColor.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.hairColor(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.hairColor.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.birthPlace(_:))
      {
        goto LABEL_3;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.residentAddress(_:))
      {
        goto LABEL_81;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.portraitCaptureDate(_:))
      {
        goto LABEL_3;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.ageInYears(_:))
      {
        type metadata accessor for IdentityElementRawValueKeys();
        v35 = static IdentityElementRawValueKeys.age.getter();
        goto LABEL_27;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.ageBirthYear(_:))
      {
        goto LABEL_16;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.issuingJurisdiction(_:))
      {
        goto LABEL_67;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.nationality(_:))
      {
        goto LABEL_3;
      }

      if (v27 == enum case for ISO18013_5_1_ElementIdentifier.residentCity(_:) || v27 == enum case for ISO18013_5_1_ElementIdentifier.residentState(_:) || v27 == enum case for ISO18013_5_1_ElementIdentifier.residentPostalCode(_:) || v27 == enum case for ISO18013_5_1_ElementIdentifier.residentCountry(_:))
      {
LABEL_81:
        sub_10000BE18(v19, &qword_10083BC80, &qword_1006DA1C8);
        type metadata accessor for IdentityElementRawValueKeys();
        v29 = static IdentityElementRawValueKeys.address.getter();
        goto LABEL_17;
      }

      if (v27 != enum case for ISO18013_5_1_ElementIdentifier.familyNameNationalCharacter(_:) && v27 != enum case for ISO18013_5_1_ElementIdentifier.givenNameNationalCharacter(_:))
      {
        if (v27 != enum case for ISO18013_5_1_ElementIdentifier.signatureUsualMark(_:))
        {
          (*(v24 + 8))(v16, v23);
        }

        goto LABEL_3;
      }
    }

    sub_10000BE18(v19, &qword_10083BC80, &qword_1006DA1C8);
    type metadata accessor for IdentityElementRawValueKeys();
    v29 = static IdentityElementRawValueKeys.givenName.getter();
LABEL_17:
    a1 = v29;
    v32 = v21;
LABEL_28:
    v33 = &qword_10083BC80;
    v34 = &qword_1006DA1C8;
    goto LABEL_29;
  }

LABEL_3:
  sub_10000BE18(v19, &qword_10083BC80, &qword_1006DA1C8);

  ISO18013_AAMVA_ElementIdentifier.init(rawValue:)();
  sub_10000BBC4(v11, v9, &qword_10083BC78, &qword_1006DA1C0);
  v25 = type metadata accessor for ISO18013_AAMVA_ElementIdentifier();
  v26 = *(v25 - 8);
  if ((*(v26 + 48))(v9, 1, v25) == 1)
  {
    goto LABEL_4;
  }

  sub_10000BBC4(v9, v6, &qword_10083BC78, &qword_1006DA1C0);
  v30 = (*(v26 + 88))(v6, v25);
  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.domesticDrivingPrivileges(_:))
  {
    goto LABEL_14;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.nameSuffix(_:))
  {
LABEL_19:
    sub_10000BE18(v9, &qword_10083BC78, &qword_1006DA1C0);
    type metadata accessor for IdentityElementRawValueKeys();
    v31 = static IdentityElementRawValueKeys.givenName.getter();
    goto LABEL_20;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.organDonorStatus(_:))
  {
    type metadata accessor for IdentityElementRawValueKeys();
    v36 = static IdentityElementRawValueKeys.organDonorStatus.getter();
LABEL_33:
    a1 = v36;
    sub_10000BE18(v11, &qword_10083BC78, &qword_1006DA1C0);
    sub_10000BE18(v21, &qword_10083BC80, &qword_1006DA1C8);
    v32 = v9;
    v33 = &qword_10083BC78;
    v34 = &qword_1006DA1C0;
    goto LABEL_29;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.veteranStatus(_:))
  {
    type metadata accessor for IdentityElementRawValueKeys();
    v36 = static IdentityElementRawValueKeys.veteranStatus.getter();
    goto LABEL_33;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.familyNameTruncation(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.givenNameTruncation(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.akaFamilyName(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.akaFamilyNameV2(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.akaGivenName(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.akaGivenNameV2(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.akaSuffix(_:))
  {
    goto LABEL_19;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.weightRange(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.raceEthnicity(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.sex(_:))
  {
    goto LABEL_4;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.firstName(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.middleNames(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.firstNameTruncation(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.middleNamesTruncation(_:))
  {
    goto LABEL_19;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.edlCredential(_:))
  {
    goto LABEL_4;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.dhsCompliance(_:))
  {
    goto LABEL_4;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.residentCounty(_:))
  {
    goto LABEL_4;
  }

  v38 = v30;
  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.residentCountyV2(_:) || v30 == enum case for ISO18013_AAMVA_ElementIdentifier.hazmatEndorsementExpirationDate(_:))
  {
    goto LABEL_4;
  }

  if (v30 == enum case for ISO18013_AAMVA_ElementIdentifier.cdlIndicator(_:))
  {
LABEL_14:
    sub_10000BE18(v9, &qword_10083BC78, &qword_1006DA1C0);
    type metadata accessor for IdentityElementRawValueKeys();
    v31 = static IdentityElementRawValueKeys.drivingPrivileges.getter();
LABEL_20:
    a1 = v31;
    sub_10000BE18(v11, &qword_10083BC78, &qword_1006DA1C0);
    v33 = &qword_10083BC80;
    v34 = &qword_1006DA1C8;
    v32 = v21;
LABEL_29:
    sub_10000BE18(v32, v33, v34);
    return a1;
  }

  if (v30 != enum case for ISO18013_AAMVA_ElementIdentifier.cdlNonDomiciled(_:) && v30 != enum case for ISO18013_AAMVA_ElementIdentifier.dhsComplianceText(_:))
  {
    v39 = enum case for ISO18013_AAMVA_ElementIdentifier.dhsTemporaryLawfulStatus(_:);
    sub_10000BE18(v11, &qword_10083BC78, &qword_1006DA1C0);
    sub_10000BE18(v21, &qword_10083BC80, &qword_1006DA1C8);
    if (v38 != v39)
    {
      (*(v26 + 8))(v6, v25);
    }

    goto LABEL_5;
  }

LABEL_4:
  sub_10000BE18(v11, &qword_10083BC78, &qword_1006DA1C0);
  sub_10000BE18(v21, &qword_10083BC80, &qword_1006DA1C8);
LABEL_5:
  sub_10000BE18(v9, &qword_10083BC78, &qword_1006DA1C0);

  return a1;
}

uint64_t sub_10015C624(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  v12 = a6;
  v13 = type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
  v90 = *(v13 - 8);
  v91 = v13;
  v14 = *(v90 + 64);
  __chkstk_darwin(v13);
  v89 = &v87 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = type metadata accessor for IdentityDocumentElement.RetentionIntent();
  v92 = *(v98 - 8);
  v16 = *(v92 + 64);
  __chkstk_darwin(v98);
  v97 = &v87 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for IdentityDocumentElement();
  v100 = *(v96 - 8);
  v18 = *(v100 + 64);
  __chkstk_darwin(v96);
  v20 = &v87 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_10003D21C(_swiftEmptyArrayStorage);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v21;
  sub_10016CAB8(a2, a3, 0xD000000000000012, 0x80000001007020D0, isUniquelyReferenced_nonNull_native);
  v23 = v104[0];
  if (v12 == 2)
  {
    v24 = 6448503;
  }

  else
  {
    v24 = 0x7070416E69;
  }

  if (v12 == 2)
  {
    v25 = 0xE300000000000000;
  }

  else
  {
    v25 = 0xE500000000000000;
  }

  v26 = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v23;
  sub_10016CAB8(v24, v25, 0x5470704174736F68, 0xEB00000000657079, v26);
  v105 = v104[0];
  v27 = type metadata accessor for DigitalPresentmentRTCAnalyticsHelper.CredentialPresentmentInformation();
  v28 = *(*(a1 + *(v27 + 24)) + 16);
  if (v28 <= 1)
  {
    v29 = 0x65736C6166;
  }

  else
  {
    v29 = 1702195828;
  }

  if (v28 <= 1)
  {
    v30 = 0xE500000000000000;
  }

  else
  {
    v30 = 0xE400000000000000;
  }

  sub_10014BC18(v29, v30, 0x69746C754D736168, 0xEA00000000004449);
  v104[3] = type metadata accessor for DeviceInformationProvider();
  v104[4] = &protocol witness table for DeviceInformationProvider;
  sub_100032DBC(v104);
  DeviceInformationProvider.init()();
  type metadata accessor for UserDefaultsConfiguration();
  v104[5] = static UserDefaultsConfiguration.standard.getter();
  v31 = sub_100134AD0();
  sub_100108074(v104);
  v87 = v27;
  if (v31)
  {
    v32 = v105;
    v33 = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = v32;
    sub_10016CAB8(0x4C73726576697244, 0xEE0065736E656369, 0x53746375646F7270, 0xEE00657079546275, v33);
    v34 = v104[0];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = v34;
    sub_10016CAB8(19277, 0xE200000000000000, 0x726575737369, 0xE600000000000000, v35);
    v105 = v104[0];
    v36 = v96;
    goto LABEL_32;
  }

  v37 = *(a1 + *(v27 + 20));
  v36 = v96;
  if (v37)
  {
    v38 = *(v37 + 56);
    if (v38 <= 2)
    {
      if (*(v37 + 56))
      {
        if (v38 == 1)
        {
          v39 = 0x4C73726576697244;
          v40 = 0xEE0065736E656369;
        }

        else
        {
          v40 = 0xE700000000000000;
          v39 = 0x6E776F6E6B6E75;
        }

        goto LABEL_29;
      }

      v40 = 0xE700000000000000;
      v41 = 0x496574617453;
    }

    else
    {
      if (*(v37 + 56) > 4u)
      {
        if (v38 != 5)
        {
          goto LABEL_30;
        }

        v40 = 0x8000000100702170;
        v39 = 0xD000000000000017;
LABEL_29:
        v42 = v105;
        v43 = swift_isUniquelyReferenced_nonNull_native();
        v104[0] = v42;
        sub_10016CAB8(v39, v40, 0x53746375646F7270, 0xEE00657079546275, v43);
        v105 = v104[0];
LABEL_30:
        v44 = *(v37 + 72);
        if (v44)
        {
          v45 = *(v37 + 64);

          sub_10014BC18(v45, v44, 0x726575737369, 0xE600000000000000);
        }

        goto LABEL_32;
      }

      if (v38 == 3)
      {
        v39 = 0x6C616E6F6974614ELL;
        v40 = 0xEA00000000004449;
        goto LABEL_29;
      }

      v40 = 0xE700000000000000;
      v41 = 0x496F746F6850;
    }

    v39 = v41 & 0xFFFFFFFFFFFFLL | 0x44000000000000;
    goto LABEL_29;
  }

LABEL_32:

  sub_10014BC18(a4, a5, 0x746E61686372656DLL, 0xEC000000656D614ELL);
  if (a6 != 2)
  {
    if (a6)
    {
      v46 = 0x7261507473726966;
    }

    else
    {
      v46 = 0x7261506472696874;
    }

    v47 = v105;
    v48 = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = v47;
    sub_10016CAB8(v46, 0xEA00000000007974, 0x797469746E656469, 0xEF65736143657355, v48);
    v105 = v104[0];
  }

  v49 = &_swiftEmptySetSingleton;
  v102 = &_swiftEmptySetSingleton;
  v103 = &_swiftEmptySetSingleton;
  v101 = &_swiftEmptySetSingleton;
  v88 = a1;
  v50 = *(a1 + 80);
  v51 = *(v50 + 16);
  if (v51)
  {
    v52 = v100 + 16;
    v100 = *(v100 + 16);
    v53 = v50 + ((*(v52 + 64) + 32) & ~*(v52 + 64));
    v99 = *(v52 + 56);
    v54 = (v92 + 88);
    v95 = enum case for IdentityDocumentElement.RetentionIntent.retain(_:);
    v94 = enum case for IdentityDocumentElement.RetentionIntent.doNotRetain(_:);
    v93 = enum case for IdentityDocumentElement.RetentionIntent.displayOnly(_:);
    v55 = (v52 - 8);
    v92 += 8;
    (v100)(v20, v53, v36);
    while (1)
    {
      v56 = IdentityDocumentElement.identifier.getter();
      v57 = sub_10015BAA0(v56);
      v59 = v58;

      if (!v59)
      {
        goto LABEL_40;
      }

      sub_100151120(v104, v57, v59);

      v60 = v97;
      IdentityDocumentElement.retentionIntent.getter();
      v61 = (*v54)(v60, v98);
      if (v61 == v95)
      {
        sub_100151120(v104, v57, v59);

        v36 = v96;
        (*v55)(v20, v96);
      }

      else
      {
        v36 = v96;
        if (v61 == v94 || v61 == v93)
        {
          sub_100151120(v104, v57, v59);

LABEL_40:
          (*v55)(v20, v36);
          goto LABEL_41;
        }

        (*v55)(v20, v96);

        (*v92)(v97, v98);
      }

LABEL_41:
      v53 += v99;
      if (!--v51)
      {
        v49 = v101;
        break;
      }

      (v100)(v20, v53, v36);
    }
  }

  v104[0] = v49;
  sub_100007224(&qword_10083BC60, &unk_1006DA1B0);
  sub_10015D0C8();
  sub_10001F298();
  v62 = Sequence<>.joined(separator:)();
  v64 = v63;

  v65 = v105;
  v66 = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v65;
  sub_10016CAB8(v62, v64, 0xD000000000000015, 0x80000001007020F0, v66);
  v67 = v104[0];
  v105 = v104[0];
  v104[0] = v103;
  v68 = Sequence<>.joined(separator:)();
  v70 = v69;

  v71 = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v67;
  sub_10016CAB8(v68, v70, 0xD000000000000012, 0x8000000100702110, v71);
  v72 = v104[0];
  v105 = v104[0];
  v104[0] = v102;
  v73 = Sequence<>.joined(separator:)();
  v75 = v74;

  v76 = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v72;
  sub_10016CAB8(v73, v75, 0xD000000000000015, 0x8000000100702130, v76);
  v105 = v104[0];
  v78 = v89;
  v77 = v90;
  v79 = v91;
  (*(v90 + 16))(v89, v88 + *(v87 + 28), v91);
  if ((*(v77 + 88))(v78, v79) == enum case for IdentityDocumentElementCategoryGroups.RetentionIntent.finite(_:))
  {
    (*(v77 + 96))(v78, v79);
    v80 = *v78;
  }

  else
  {
    (*(v77 + 8))(v78, v79);
    v80 = 0;
  }

  v104[0] = v80;
  v81 = dispatch thunk of CustomStringConvertible.description.getter();
  v83 = v82;
  v84 = v105;
  v85 = swift_isUniquelyReferenced_nonNull_native();
  v104[0] = v84;
  sub_10016CAB8(v81, v83, 0xD000000000000018, 0x8000000100702150, v85);
  return v104[0];
}

uint64_t type metadata accessor for DigitalPresentmentRTCAnalyticsHelper.CredentialPresentmentInformation()
{
  result = qword_10083BDA0;
  if (!qword_10083BDA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_10015D0C8()
{
  result = qword_10083BC68;
  if (!qword_10083BC68)
  {
    sub_10000B870(&qword_10083BC60, &unk_1006DA1B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10083BC68);
  }

  return result;
}

unint64_t sub_10015D12C()
{
  result = qword_10083BCE8;
  if (!qword_10083BCE8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10083BCE8);
  }

  return result;
}

uint64_t sub_10015D23C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 28);

    return v12(v13, a2, v11);
  }
}

uint64_t sub_10015D374(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 28);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

void sub_10015D498()
{
  type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  if (v0 <= 0x3F)
  {
    sub_10015D5AC(319, &qword_10083B668, type metadata accessor for Pass, &type metadata accessor for Optional);
    if (v1 <= 0x3F)
    {
      sub_10015D5AC(319, &qword_10083BDB0, type metadata accessor for DigitalPresentmentEligibleProposalData, &type metadata accessor for Array);
      if (v2 <= 0x3F)
      {
        type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_10015D5AC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_10015D610(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_10015D65C(int a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v36 = a1;
  v9 = type metadata accessor for Logger();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [objc_allocWithZone(DCPresentmentSessionOptions) init];
  [v14 setSessionEncryptionMode:1];
  [v14 setElementFallbackModes:1];
  if (a4 == 2)
  {
    [v14 setReaderAuthenticationPolicy:1];
  }

  else if (a4 == 1)
  {
    [v14 setReaderAuthenticationPolicy:0];
  }

  else
  {
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v35))
    {
      v16 = swift_slowAlloc();
      v32 = v16;
      v34 = swift_slowAlloc();
      v37 = v34;
      *v16 = 136315138;
      v17 = DCPresentmentTypeToString();
      v31 = v15;
      v18 = v17;
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v33 = v10;
      v21 = v20;

      v22 = sub_100141FE4(v19, v21, &v37);

      v24 = v31;
      v23 = v32;
      *(v32 + 1) = v22;
      _os_log_impl(&_mh_execute_header, v24, v35, "Unexpected DCPresentmentType %s passed to DigitalPresentmentSessionManager", v23, 0xCu);
      sub_10000BB78(v34);

      (*(v33 + 8))(v13, v9);
    }

    else
    {

      (*(v10 + 8))(v13, v9);
    }
  }

  *(v5 + 16) = v36 & 1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  sub_100007224(&qword_100833B78, &unk_1006D9F00);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1006BF520;
  *(v25 + 32) = a2;
  *(v25 + 40) = a3;
  v26 = objc_allocWithZone(DCPresentmentSession);

  v27 = v14;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v29 = [v26 initWithPartitions:isa presentmentType:a4 options:v27];

  *(v5 + 40) = v29;
  return v5;
}

void sub_10015D9A0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = (&v83 - v6);
  v8 = [a1 credentialIdentifier];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  *a2 = v9;
  a2[1] = v11;
  v12 = [a1 presentmentKeyIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  a2[2] = v13;
  a2[3] = v15;
  v16 = [a1 presentmentPublicKey];
  if (v16)
  {
    v17 = v16;
    v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0xF000000000000000;
  }

  a2[4] = v18;
  a2[5] = v20;
  v21 = [a1 docType];
  v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  a2[8] = v22;
  a2[9] = v24;
  v25 = [a1 authACL];
  if (v25)
  {
    v26 = v25;
    v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;
  }

  else
  {
    v27 = 0;
    v29 = 0xF000000000000000;
  }

  a2[6] = v27;
  a2[7] = v29;
  v30 = [a1 region];
  if (v30)
  {
    v31 = v30;
    v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v33;
  }

  else
  {
    v32 = 0;
    v34 = 0;
  }

  a2[11] = v32;
  a2[12] = v34;
  v35 = [a1 issuingJurisdiction];
  if (v35)
  {
    v36 = v35;
    v37 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v39 = v38;
  }

  else
  {
    v37 = 0;
    v39 = 0;
  }

  a2[13] = v37;
  a2[14] = v39;
  v40 = [a1 credentialRevocationInfo];
  if (v40)
  {
    v41 = v40;
    v42 = [v41 identifier];
    v43 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v45 = v44;

    v46 = [v41 certificate];
    if (v46)
    {
      v47 = v46;
      v48 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0xF000000000000000;
    }

    v52 = [v41 URL];
    v53 = type metadata accessor for CredentialRevocationInfo();
    v54 = v7 + *(v53 + 24);
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    *v7 = v43;
    v7[1] = v45;
    v7[2] = v48;
    v7[3] = v50;
    (*(*(v53 - 8) + 56))(v7, 0, 1, v53);
  }

  else
  {
    v51 = type metadata accessor for CredentialRevocationInfo();
    (*(*(v51 - 8) + 56))(v7, 1, 1, v51);
  }

  v55 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  sub_10016184C(v7, a2 + v55[12]);
  v56 = [a1 readerAuthCertificateData];
  if (v56)
  {
    v57 = v56;
    v58 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v60 = v59;
  }

  else
  {
    v58 = 0;
    v60 = 0xF000000000000000;
  }

  v61 = (a2 + v55[13]);
  *v61 = v58;
  v61[1] = v60;
  v62 = [a1 issuerSignerCertificateData];
  if (v62)
  {
    v63 = v62;
    v64 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0xF000000000000000;
  }

  v67 = (a2 + v55[14]);
  *v67 = v64;
  v67[1] = v66;
  v68 = [a1 elements];
  sub_100007224(&qword_10083BF80, &qword_1006DA3C0);
  v69 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

  v84 = _swiftEmptyArrayStorage;
  v70 = 1 << *(v69 + 32);
  v71 = -1;
  if (v70 < 64)
  {
    v71 = ~(-1 << v70);
  }

  v72 = v71 & *(v69 + 64);
  v73 = (v70 + 63) >> 6;

  v74 = 0;
  while (v72)
  {
    v75 = v74;
LABEL_33:
    v76 = __clz(__rbit64(v72));
    v72 &= v72 - 1;
    v77 = v76 | (v75 << 6);
    v78 = (*(v69 + 48) + 16 * v77);
    v79 = *v78;
    v80 = v78[1];
    v81 = *(*(v69 + 56) + 8 * v77);

    v82 = sub_10015DF1C(v79, v80, v81);

    sub_10031C978(v82);
  }

  while (1)
  {
    v75 = v74 + 1;
    if (__OFADD__(v74, 1))
    {
      break;
    }

    if (v75 >= v73)
    {

      a2[10] = v84;
      return;
    }

    v72 = *(v69 + 64 + 8 * v75);
    ++v74;
    if (v72)
    {
      v74 = v75;
      goto LABEL_33;
    }
  }

  __break(1u);
}

char *sub_10015DF1C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v56 = a1;
  v57 = a2;
  v4 = type metadata accessor for DCPresentmentRequestedElement.RetentionIntent();
  v5 = *(v4 - 8);
  v6 = *(v5 + 8);
  __chkstk_darwin(v4);
  v8 = (&v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v55 = type metadata accessor for IdentityDocumentElement.RetentionIntent();
  v9 = *(v55 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v55);
  v54 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v66 = (&v39 - v13);
  v14 = sub_100007224(&qword_10083BF88, &qword_1006DA3C8);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = &v39 - v16;
  v18 = type metadata accessor for IdentityDocumentElement();
  v48 = *(v18 - 8);
  v19 = *(v48 + 64);
  __chkstk_darwin(v18);
  v65 = &v39 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a3 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v63 = a3 & 0xFFFFFFFFFFFFFF8;
    v64 = a3 & 0xC000000000000001;
    v62 = (v5 + 88);
    v61 = enum case for DCPresentmentRequestedElement.RetentionIntent.retain(_:);
    v47 = enum case for DCPresentmentRequestedElement.RetentionIntent.doNotRetain(_:);
    v43 = enum case for DCPresentmentRequestedElement.RetentionIntent.displayOnly(_:);
    v41 = enum case for DCPresentmentRequestedElement.RetentionIntent.unknown(_:);
    v40 = (v5 + 8);
    v60 = (v48 + 56);
    v42 = enum case for IdentityDocumentElement.RetentionIntent.displayOnly(_:);
    v51 = (v9 + 104);
    v46 = enum case for IdentityDocumentElement.RetentionIntent.doNotRetain(_:);
    v45 = (v5 + 96);
    v50 = (v9 + 16);
    v49 = (v9 + 8);
    v9 = 0;
    v58 = (v48 + 32);
    v59 = (v48 + 48);
    v44 = enum case for IdentityDocumentElement.RetentionIntent.retain(_:);
    v67 = _swiftEmptyArrayStorage;
    v52 = v18;
    v53 = v4;
    v69 = v17;
    while (1)
    {
      if (v64)
      {
        v22 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *(v63 + 16))
        {
          goto LABEL_26;
        }

        v22 = *(a3 + 8 * v9 + 32);
      }

      v23 = v22;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v70 = v9 + 1;
      v5 = v22;
      DCPresentmentRequestedElement.intentToRetain.getter();
      v24 = (*v62)(v8, v4);
      if (v24 == v61)
      {
        (*v45)(v8, v4);
        *v66 = *v8;
        v25 = v44;
      }

      else
      {
        v26 = v24;
        v25 = v46;
        if (v24 != v47)
        {
          v25 = v42;
          if (v24 != v43)
          {

            if (v26 != v41)
            {
              (*v40)(v8, v4);
            }

            v33 = 1;
            goto LABEL_15;
          }
        }
      }

      v27 = *v51;
      v68 = v9;
      v28 = v66;
      v29 = v55;
      v27(v66, v25, v55);

      v30 = [v23 elementIdentifier];
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      v5 = i;

      (*v50)(v54, v28, v29);
      v4 = v53;
      IdentityDocumentElement.init(namespace:identifier:retentionIntent:)();

      v31 = v28;
      v9 = v68;
      v17 = v69;
      v32 = v29;
      v18 = v52;
      (*v49)(v31, v32);
      v33 = 0;
LABEL_15:
      (*v60)(v17, v33, 1, v18);
      if ((*v59)(v17, 1, v18) == 1)
      {
        sub_10000BE18(v17, &qword_10083BF88, &qword_1006DA3C8);
      }

      else
      {
        v34 = *v58;
        (*v58)(v65, v17, v18);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v67 = sub_1003C573C(0, *(v67 + 2) + 1, 1, v67);
        }

        v36 = *(v67 + 2);
        v35 = *(v67 + 3);
        v5 = (v36 + 1);
        if (v36 >= v35 >> 1)
        {
          v67 = sub_1003C573C(v35 > 1, v36 + 1, 1, v67);
        }

        v37 = v67;
        *(v67 + 2) = v5;
        v34(&v37[((*(v48 + 80) + 32) & ~*(v48 + 80)) + *(v48 + 72) * v36], v65, v18);
      }

      ++v9;
      if (v70 == i)
      {
        return v67;
      }
    }

    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  return _swiftEmptyArrayStorage;
}

id sub_10015EA24()
{
  v1 = [objc_allocWithZone(DCPresentmentSelection) init];
  v2 = *v0;
  v3 = v0[1];
  v4 = String._bridgeToObjectiveC()();
  [v1 setCredentialIdentifier:v4];

  v5 = v0[2];
  v6 = v0[3];
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v1 setAuthData:isa];

  [v1 setResponseEncryptionParameters:v0[4]];
  v8 = v0[5];
  if (v8)
  {
    sub_100007224(&qword_100834EA0, &qword_1006C06B0);
    v8 = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  [v1 setElementsToPresent:v8];

  return v1;
}

uint64_t sub_10015EB18(uint64_t a1)
{
  v2[15] = a1;
  v2[16] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[17] = v3;
  v4 = *(v3 - 8);
  v2[18] = v4;
  v5 = *(v4 + 64) + 15;
  v2[19] = swift_task_alloc();
  v6 = *(type metadata accessor for DigitalPresentmentSessionManager.Proposal() - 8);
  v2[20] = v6;
  v7 = *(v6 + 64) + 15;
  v2[21] = swift_task_alloc();
  v8 = *(*(sub_100007224(&qword_10083AE00, &qword_1006D9ED0) - 8) + 64) + 15;
  v2[22] = swift_task_alloc();
  v9 = type metadata accessor for ISO18013KnownDocTypes();
  v2[23] = v9;
  v10 = *(v9 - 8);
  v2[24] = v10;
  v11 = *(v10 + 64) + 15;
  v2[25] = swift_task_alloc();

  return _swift_task_switch(sub_10015ECC4, 0, 0);
}

uint64_t sub_10015ECC4()
{
  v1 = v0[16];
  if (*(v1 + 16) == 1)
  {
    v2 = v0[24];
    v3 = v0[15];
    sub_100007224(&qword_100833B78, &unk_1006D9F00);
    v4 = swift_allocObject();
    *(v4 + 16) = xmmword_1006BF520;
    v5 = *(v1 + 32);
    *(v4 + 32) = *(v1 + 24);
    *(v4 + 40) = v5;
    v42 = v4;

    v6 = CredentialPresentmentRequest.allDocumentTypes.getter();
    v7 = v6 + 56;
    v8 = -1;
    v9 = -1 << *(v6 + 32);
    if (-v9 < 64)
    {
      v8 = ~(-1 << -v9);
    }

    v10 = v8 & *(v6 + 56);
    v11 = (63 - v9) >> 6;
    v12 = (v2 + 48);
    v40 = v2;
    v41 = (v2 + 32);
    v44 = v6;

    v14 = 0;
    v43 = _swiftEmptyArrayStorage;
    while (1)
    {
      v15 = v14;
      if (!v10)
      {
        break;
      }

LABEL_9:
      v17 = v0[22];
      v16 = v0[23];
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v19 = (*(v44 + 48) + ((v14 << 10) | (16 * v18)));
      v20 = *v19;
      v21 = v19[1];

      ISO18013KnownDocTypes.init(rawValue:)();
      if ((*v12)(v17, 1, v16) == 1)
      {
        v13 = sub_10000BE18(v0[22], &qword_10083AE00, &qword_1006D9ED0);
      }

      else
      {
        v22 = *v41;
        (*v41)(v0[25], v0[22], v0[23]);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v43 = sub_1003C58C8(0, v43[2] + 1, 1, v43);
        }

        v24 = v43[2];
        v23 = v43[3];
        v25 = v24 + 1;
        if (v24 >= v23 >> 1)
        {
          v28 = sub_1003C58C8(v23 > 1, v24 + 1, 1, v43);
          v25 = v24 + 1;
          v43 = v28;
        }

        v26 = v0[25];
        v27 = v0[23];
        v43[2] = v25;
        v13 = v22(v43 + ((*(v40 + 80) + 32) & ~*(v40 + 80)) + *(v40 + 72) * v24, v26, v27);
      }
    }

    while (1)
    {
      v14 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        return DCPresentmentSession.interpretCredentialRequest(_:)(v13);
      }

      if (v14 >= v11)
      {
        break;
      }

      v10 = *(v7 + 8 * v14);
      ++v15;
      if (v10)
      {
        goto LABEL_9;
      }
    }

    v0[13] = &type metadata for IDCredCredentialStore;
    v0[14] = &off_100815A88;
    v0[10] = v42;
    type metadata accessor for DeveloperTestMDLManager();
    inited = swift_initStackObject();
    v0[26] = inited;
    v33 = v0[13];
    v34 = sub_10001F370((v0 + 10), v33);
    v35 = *(v33 - 8);
    v36 = *(v35 + 64) + 15;
    v37 = swift_task_alloc();
    (*(v35 + 16))(v37, v34, v33);
    v0[27] = sub_1001602C4(*v37, v43, inited);
    sub_10000BB78(v0 + 10);

    v38 = swift_task_alloc();
    v0[28] = v38;
    *v38 = v0;
    v38[1] = sub_10015F114;

    return sub_100103DF4();
  }

  else
  {
    v29 = *(v1 + 40);
    v30 = async function pointer to DCPresentmentSession.interpretCredentialRequest(_:)[1];
    v31 = swift_task_alloc();
    v0[30] = v31;
    *v31 = v0;
    v31[1] = sub_10015F2D0;
    v13 = v0[15];

    return DCPresentmentSession.interpretCredentialRequest(_:)(v13);
  }
}

uint64_t sub_10015F114()
{
  v2 = *(*v1 + 224);
  v5 = *v1;
  *(*v1 + 232) = v0;

  if (v0)
  {
    v3 = sub_10015F5B8;
  }

  else
  {
    v3 = sub_10015F228;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015F228()
{
  v1 = v0[27];

  v2 = *(v0[16] + 40);
  v3 = async function pointer to DCPresentmentSession.interpretCredentialRequest(_:)[1];
  v4 = swift_task_alloc();
  v0[30] = v4;
  *v4 = v0;
  v4[1] = sub_10015F2D0;
  v5 = v0[15];

  return DCPresentmentSession.interpretCredentialRequest(_:)(v5);
}

uint64_t sub_10015F2D0(uint64_t a1)
{
  v3 = *v2;
  v4 = *(*v2 + 240);
  v7 = *v2;
  *(v3 + 248) = a1;
  *(v3 + 256) = v1;

  if (v1)
  {
    v5 = sub_10015F738;
  }

  else
  {
    v5 = sub_10015F3E4;
  }

  return _swift_task_switch(v5, 0, 0);
}

size_t sub_10015F3E4()
{
  v1 = *(v0 + 248);
  if (v1 >> 62)
  {
    if (v1 < 0)
    {
      v12 = *(v0 + 248);
    }

    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_15;
    }
  }

  result = sub_100172ED4(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = *(v0 + 160);
  v6 = *(v0 + 248) + 32;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v7 = *(v0 + 248);
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v8 = *(v6 + 8 * v4);
    }

    sub_10015D9A0(v8, *(v0 + 168));
    v10 = _swiftEmptyArrayStorage[2];
    v9 = _swiftEmptyArrayStorage[3];
    if (v10 >= v9 >> 1)
    {
      sub_100172ED4(v9 > 1, v10 + 1, 1);
    }

    v11 = *(v0 + 168);
    ++v4;
    _swiftEmptyArrayStorage[2] = v10 + 1;
    sub_1001617E4(v11, _swiftEmptyArrayStorage + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
  }

  while (v2 != v4);
LABEL_15:
  v13 = *(v0 + 248);

  v14 = *(v0 + 200);
  v16 = *(v0 + 168);
  v15 = *(v0 + 176);
  v17 = *(v0 + 152);

  v18 = *(v0 + 8);

  return v18(_swiftEmptyArrayStorage);
}

uint64_t sub_10015F5B8()
{
  v1 = v0[27];

  v2 = v0[29];
  v3 = v0[25];
  v4 = v0[21];
  v5 = v0[22];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v6 = v0[1];

  return v6();
}

uint64_t sub_10015F738()
{
  v1 = v0[32];
  v2 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  (*(v0[18] + 104))(v0[19], enum case for DIPError.Code.internalError(_:), v0[17]);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v5 = v0[1];

  return v5();
}

uint64_t sub_10015F8B0(uint64_t a1)
{
  v2[19] = a1;
  v2[20] = v1;
  v3 = type metadata accessor for DIPError.Code();
  v2[21] = v3;
  v4 = *(v3 - 8);
  v2[22] = v4;
  v5 = *(v4 + 64) + 15;
  v2[23] = swift_task_alloc();

  return _swift_task_switch(sub_10015F970, 0, 0);
}

uint64_t sub_10015F970()
{
  v1 = v0[19];
  v2 = *(v0[20] + 40);
  v3 = sub_10015EA24();
  v0[24] = v3;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_10015FAA8;
  v4 = swift_continuation_init();
  v0[17] = sub_100007224(&qword_10083BF78, &unk_1006DA3A0);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = sub_10015FDB8;
  v0[13] = &unk_100809E68;
  v0[14] = v4;
  [v2 buildCredentialResponseForSelection:v3 completion:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

uint64_t sub_10015FAA8()
{
  v1 = *v0;
  v2 = *(*v0 + 48);
  *(*v0 + 200) = v2;
  if (v2)
  {
    v3 = sub_10015FC2C;
  }

  else
  {
    v3 = sub_10015FBB8;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_10015FBB8()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 144);

  v3 = *(v0 + 8);

  return v3(v2);
}

uint64_t sub_10015FC2C()
{
  v2 = v0[24];
  v1 = v0[25];
  v4 = v0[22];
  v3 = v0[23];
  v5 = v0[21];
  swift_willThrow();

  v6._countAndFlagsBits = 0x3663616363376334;
  v7._countAndFlagsBits = 0xD000000000000057;
  v7._object = 0x8000000100702230;
  v6._object = 0xE800000000000000;
  logMilestone(tag:description:)(v6, v7);
  (*(v4 + 104))(v3, enum case for DIPError.Code.digitalPresentmentCannotBuildResponse(_:), v5);
  swift_errorRetain();
  sub_1000402AC(_swiftEmptyArrayStorage);
  type metadata accessor for DIPError();
  sub_100037214();
  swift_allocError();
  DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
  swift_willThrow();

  v8 = v0[1];

  return v8();
}

uint64_t sub_10015FDB8(uint64_t a1, void *a2, void *a3)
{
  v5 = sub_10000BA08((a1 + 32), *(a1 + 56));
  v6 = *v5;
  if (a3)
  {
    sub_100007224(&qword_100833B90, &qword_1006D95C0);
    v7 = swift_allocError();
    *v8 = a3;
    v9 = a3;

    return _swift_continuation_throwingResumeWithError(v6, v7);
  }

  else
  {
    if (a2)
    {
      **(v6[8] + 40) = a2;
      v10 = a2;
      v5 = v6;
    }

    else
    {
      __break(1u);
    }

    return _swift_continuation_throwingResume(v5);
  }
}

uint64_t sub_10015FE90()
{
  v1 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10015FF08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_100007224(&qword_10083B408, &qword_1006E2490);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 48);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_10015FFD8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_100007224(&qword_10083B408, &qword_1006E2490);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 48);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for DigitalPresentmentSessionManager.Proposal()
{
  result = qword_10083BF10;
  if (!qword_10083BF10)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1001600D4()
{
  sub_100133F18(319, &qword_10083AA40);
  if (v0 <= 0x3F)
  {
    sub_100160234(319, &unk_10083BF20, &type metadata accessor for IdentityDocumentElement, &type metadata accessor for Array);
    if (v1 <= 0x3F)
    {
      sub_100133F18(319, &qword_100835140);
      if (v2 <= 0x3F)
      {
        sub_100160234(319, &qword_10083B478, type metadata accessor for CredentialRevocationInfo, &type metadata accessor for Optional);
        if (v3 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_100160234(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t sub_1001602C4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v168 = type metadata accessor for Logger();
  v6 = *(v168 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v168);
  v170 = &v166 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ISO18013KnownDocTypes();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v171 = &v166 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v173 = &v166 - v15;
  v16 = __chkstk_darwin(v14);
  v185 = &v166 - v17;
  v18 = __chkstk_darwin(v16);
  v183 = &v166 - v19;
  __chkstk_darwin(v18);
  v21 = &v166 - v20;
  v201[3] = &type metadata for IDCredCredentialStore;
  v201[4] = &off_100815A88;
  v201[0] = a1;
  v166 = a3;
  sub_100020260(v201, a3 + 16);
  v181 = *(a2 + 16);
  if (!v181)
  {
    v23 = &_swiftEmptyDictionarySingleton;
LABEL_58:

    sub_10000BB78(v201);
    result = v166;
    *(v166 + 56) = v23;
    return result;
  }

  v22 = 0;
  v180 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
  v179 = v10 + 88;
  v182 = enum case for ISO18013KnownDocTypes.iso18013_5_1_mDL(_:);
  v172 = enum case for ISO18013KnownDocTypes.japanNationalIDCard(_:);
  v169 = enum case for ISO18013KnownDocTypes.photoID(_:);
  v167 = (v6 + 8);
  v178 = (v10 + 104);
  v177 = (v10 + 8);
  v23 = &_swiftEmptyDictionarySingleton;
  v174 = a2;
  v175 = v10;
  v184 = v21;
  v187 = v10 + 16;
  while (v22 < *(a2 + 16))
  {
    v26 = *(v10 + 72);
    v27 = *(v10 + 16);
    v27(v21, v180 + v26 * v22, v9);
    v28 = v183;
    v27(v183, v21, v9);
    v29 = (*(v10 + 88))(v28, v9);
    v30 = v182;
    v188 = v27;
    if (v29 != v182)
    {
      v50 = v172;
      if (v29 != v172)
      {
        v70 = v169;
        if (v29 != v169)
        {
          defaultLogger()();
          v102 = Logger.logObject.getter();
          v103 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v102, v103))
          {
            v104 = swift_slowAlloc();
            *v104 = 0;
            _os_log_impl(&_mh_execute_header, v102, v103, "DeveloperTestMDLManager: unknown document type", v104, 2u);
          }

          (*v167)(v170, v168);
          v105 = type metadata accessor for DeveloperTestMDLPayloadBuilder();
          v199 = v105;
          v200 = &off_100809300;
          v106 = sub_100032DBC(&v198);
          (*v178)(v106, v182, v9);
          sub_10001F358(&v198, &v196);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v195 = v23;
          v108 = v197;
          v109 = sub_10001F370(&v196, v197);
          v110 = *(*(v108 - 8) + 64);
          __chkstk_darwin(v109);
          v112 = &v166 - ((v111 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v113 + 16))(v112);
          v193 = v105;
          v194 = &off_100809300;
          v114 = sub_100032DBC(&v192);
          sub_1001617E4(v112, v114, type metadata accessor for DeveloperTestMDLPayloadBuilder);
          v115 = sub_10003B480(v184);
          v117 = v23[2];
          v118 = (v116 & 1) == 0;
          v46 = __OFADD__(v117, v118);
          v119 = v117 + v118;
          if (v46)
          {
            goto LABEL_63;
          }

          v120 = v116;
          a2 = v174;
          if (v23[3] >= v119)
          {
            if (isUniquelyReferenced_nonNull_native)
            {
              goto LABEL_41;
            }

            v152 = v115;
            sub_1001705E0();
            v115 = v152;
            v23 = v195;
            if ((v120 & 1) == 0)
            {
              goto LABEL_54;
            }

LABEL_42:
            v126 = (v23[7] + 40 * v115);
            sub_10000BB78(v126);
            sub_10001F358(&v192, v126);
            v21 = v184;
          }

          else
          {
            sub_100167D08(v119, isUniquelyReferenced_nonNull_native);
            v115 = sub_10003B480(v184);
            if ((v120 & 1) != (v121 & 1))
            {
              goto LABEL_68;
            }

LABEL_41:
            v23 = v195;
            if (v120)
            {
              goto LABEL_42;
            }

LABEL_54:
            v153 = v193;
            v154 = v26;
            v155 = v115;
            v156 = sub_10001F370(&v192, v193);
            v157 = *(*(v153 - 8) + 64);
            __chkstk_darwin(v156);
            v159 = &v166 - ((v158 + 15) & 0xFFFFFFFFFFFFFFF0);
            (*(v160 + 16))(v159);
            v190 = v105;
            v191 = &off_100809300;
            v161 = sub_100032DBC(&v189);
            sub_1001617E4(v159, v161, type metadata accessor for DeveloperTestMDLPayloadBuilder);
            v23[(v155 >> 6) + 8] |= 1 << v155;
            v21 = v184;
            v188(v23[6] + v155 * v154, v184, v9);
            sub_10001F358(&v189, v23[7] + 40 * v155);
            v162 = v23[2];
            v46 = __OFADD__(v162, 1);
            v163 = v162 + 1;
            if (v46)
            {
              goto LABEL_66;
            }

            v23[2] = v163;
            sub_10000BB78(&v192);
            a2 = v174;
          }

          v164 = *v177;
          (*v177)(v21, v9);
          sub_10000BB78(&v196);
          v164(v183, v9);
          v10 = v175;
          goto LABEL_5;
        }

        v186 = v26;
        v71 = v171;
        v27(v171, v21, v9);
        v72 = type metadata accessor for DeveloperTestPhotoIDPayloadBuilder();
        v199 = v72;
        v200 = &off_100809310;
        v73 = sub_100032DBC(&v198);
        (*v178)(v73, v70, v9);
        sub_10001F358(&v198, &v196);
        v74 = swift_isUniquelyReferenced_nonNull_native();
        v195 = v23;
        v75 = v197;
        v76 = sub_10001F370(&v196, v197);
        v176 = &v166;
        v77 = *(*(v75 - 8) + 64);
        __chkstk_darwin(v76);
        v79 = &v166 - ((v78 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v80 + 16))(v79);
        v193 = v72;
        v194 = &off_100809310;
        v81 = sub_100032DBC(&v192);
        sub_1001617E4(v79, v81, type metadata accessor for DeveloperTestPhotoIDPayloadBuilder);
        v82 = sub_10003B480(v71);
        v84 = v23[2];
        v85 = (v83 & 1) == 0;
        v46 = __OFADD__(v84, v85);
        v86 = v84 + v85;
        if (v46)
        {
          goto LABEL_64;
        }

        v87 = v83;
        if (v23[3] >= v86)
        {
          v89 = v186;
          if (v74)
          {
            goto LABEL_38;
          }

          v139 = v82;
          sub_1001705E0();
          v82 = v139;
          v23 = v195;
          if ((v87 & 1) == 0)
          {
            goto LABEL_50;
          }

LABEL_39:
          v124 = (v23[7] + 40 * v82);
          sub_10000BB78(v124);
          sub_10001F358(&v192, v124);
          v125 = *v177;
          (*v177)(v171, v9);
          v21 = v184;
          v125(v184, v9);
        }

        else
        {
          sub_100167D08(v86, v74);
          v82 = sub_10003B480(v171);
          v89 = v186;
          if ((v87 & 1) != (v88 & 1))
          {
            goto LABEL_68;
          }

LABEL_38:
          v23 = v195;
          if (v87)
          {
            goto LABEL_39;
          }

LABEL_50:
          v140 = v193;
          v141 = v82;
          v142 = sub_10001F370(&v192, v193);
          v143 = *(*(v140 - 8) + 64);
          __chkstk_darwin(v142);
          v145 = &v166 - ((v144 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v146 + 16))(v145);
          v190 = v72;
          v191 = &off_100809310;
          v147 = sub_100032DBC(&v189);
          sub_1001617E4(v145, v147, type metadata accessor for DeveloperTestPhotoIDPayloadBuilder);
          v23[(v141 >> 6) + 8] |= 1 << v141;
          v148 = v171;
          v188(v23[6] + v141 * v89, v171, v9);
          sub_10001F358(&v189, v23[7] + 40 * v141);
          v149 = *v177;
          (*v177)(v148, v9);
          v21 = v184;
          v149(v184, v9);
          v150 = v23[2];
          v46 = __OFADD__(v150, 1);
          v151 = v150 + 1;
          if (v46)
          {
            goto LABEL_67;
          }

          v23[2] = v151;
          sub_10000BB78(&v192);
          v10 = v175;
        }

        sub_10000BB78(&v196);
        a2 = v174;
        goto LABEL_5;
      }

      v186 = v26;
      v51 = v173;
      v27(v173, v21, v9);
      v52 = type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder();
      v199 = v52;
      v200 = &off_1008092C8;
      v53 = sub_100032DBC(&v198);
      (*v178)(v53, v50, v9);
      sub_10001F358(&v198, &v196);
      v54 = swift_isUniquelyReferenced_nonNull_native();
      v195 = v23;
      v55 = v197;
      v56 = sub_10001F370(&v196, v197);
      v57 = *(*(v55 - 8) + 64);
      __chkstk_darwin(v56);
      v59 = &v166 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v60 + 16))(v59);
      v193 = v52;
      v194 = &off_1008092C8;
      v61 = sub_100032DBC(&v192);
      sub_1001617E4(v59, v61, type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder);
      v63 = sub_10003B480(v51);
      v64 = v23[2];
      v65 = (v62 & 1) == 0;
      v66 = v64 + v65;
      if (__OFADD__(v64, v65))
      {
        goto LABEL_61;
      }

      v67 = v62;
      if (v23[3] >= v66)
      {
        if (v54)
        {
          v23 = v195;
          if ((v62 & 1) == 0)
          {
            goto LABEL_46;
          }
        }

        else
        {
          sub_1001705E0();
          v23 = v195;
          if ((v67 & 1) == 0)
          {
            goto LABEL_46;
          }
        }
      }

      else
      {
        sub_100167D08(v66, v54);
        v68 = sub_10003B480(v173);
        if ((v67 & 1) != (v69 & 1))
        {
          goto LABEL_68;
        }

        v63 = v68;
        v23 = v195;
        if ((v67 & 1) == 0)
        {
LABEL_46:
          v128 = v193;
          v129 = sub_10001F370(&v192, v193);
          v130 = *(*(v128 - 8) + 64);
          __chkstk_darwin(v129);
          v132 = &v166 - ((v131 + 15) & 0xFFFFFFFFFFFFFFF0);
          (*(v133 + 16))(v132);
          v190 = v52;
          v191 = &off_1008092C8;
          v134 = sub_100032DBC(&v189);
          sub_1001617E4(v132, v134, type metadata accessor for DeveloperTestJapanNationalIDCardPayloadBuilder);
          v23[(v63 >> 6) + 8] |= 1 << v63;
          v135 = v173;
          v188(v23[6] + v63 * v186, v173, v9);
          sub_10001F358(&v189, v23[7] + 40 * v63);
          v136 = *v177;
          (*v177)(v135, v9);
          v21 = v184;
          v136(v184, v9);
          v137 = v23[2];
          v46 = __OFADD__(v137, 1);
          v138 = v137 + 1;
          if (v46)
          {
            goto LABEL_65;
          }

          v23[2] = v138;
          sub_10000BB78(&v192);
          goto LABEL_48;
        }
      }

      v122 = (v23[7] + 40 * v63);
      sub_10000BB78(v122);
      sub_10001F358(&v192, v122);
      v123 = *v177;
      (*v177)(v173, v9);
      v21 = v184;
      v123(v184, v9);
LABEL_48:
      sub_10000BB78(&v196);
      a2 = v174;
      v10 = v175;
      goto LABEL_5;
    }

    v186 = v26;
    v176 = v22;
    v31 = v185;
    v27(v185, v21, v9);
    v32 = type metadata accessor for DeveloperTestMDLPayloadBuilder();
    v199 = v32;
    v200 = &off_100809300;
    v33 = sub_100032DBC(&v198);
    (*v178)(v33, v30, v9);
    sub_10001F358(&v198, &v196);
    v34 = swift_isUniquelyReferenced_nonNull_native();
    v195 = v23;
    v35 = v197;
    v36 = sub_10001F370(&v196, v197);
    v37 = *(*(v35 - 8) + 64);
    __chkstk_darwin(v36);
    v39 = &v166 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v40 + 16))(v39);
    v193 = v32;
    v194 = &off_100809300;
    v41 = sub_100032DBC(&v192);
    sub_1001617E4(v39, v41, type metadata accessor for DeveloperTestMDLPayloadBuilder);
    v42 = sub_10003B480(v31);
    v44 = v23[2];
    v45 = (v43 & 1) == 0;
    v46 = __OFADD__(v44, v45);
    v47 = v44 + v45;
    if (v46)
    {
      goto LABEL_60;
    }

    v48 = v43;
    if (v23[3] >= v47)
    {
      if (v34)
      {
        v23 = v195;
        if ((v43 & 1) == 0)
        {
          goto LABEL_26;
        }
      }

      else
      {
        v127 = v42;
        sub_1001705E0();
        v42 = v127;
        v23 = v195;
        if ((v48 & 1) == 0)
        {
          goto LABEL_26;
        }
      }
    }

    else
    {
      sub_100167D08(v47, v34);
      v42 = sub_10003B480(v185);
      if ((v48 & 1) != (v49 & 1))
      {
        goto LABEL_69;
      }

      v23 = v195;
      if ((v48 & 1) == 0)
      {
LABEL_26:
        v90 = v193;
        v91 = v42;
        v92 = sub_10001F370(&v192, v193);
        v93 = *(*(v90 - 8) + 64);
        __chkstk_darwin(v92);
        v95 = &v166 - ((v94 + 15) & 0xFFFFFFFFFFFFFFF0);
        (*(v96 + 16))(v95);
        v190 = v32;
        v191 = &off_100809300;
        v97 = sub_100032DBC(&v189);
        sub_1001617E4(v95, v97, type metadata accessor for DeveloperTestMDLPayloadBuilder);
        v23[(v91 >> 6) + 8] |= 1 << v91;
        v98 = v185;
        v188(v23[6] + v91 * v186, v185, v9);
        sub_10001F358(&v189, v23[7] + 40 * v91);
        v99 = *v177;
        (*v177)(v98, v9);
        v21 = v184;
        v99(v184, v9);
        v100 = v23[2];
        v46 = __OFADD__(v100, 1);
        v101 = v100 + 1;
        if (v46)
        {
          goto LABEL_62;
        }

        v23[2] = v101;
        sub_10000BB78(&v192);
        a2 = v174;
        goto LABEL_4;
      }
    }

    v24 = (v23[7] + 40 * v42);
    sub_10000BB78(v24);
    sub_10001F358(&v192, v24);
    v25 = *v177;
    (*v177)(v185, v9);
    v21 = v184;
    v25(v184, v9);
LABEL_4:
    sub_10000BB78(&v196);
    v10 = v175;
    v22 = v176;
LABEL_5:
    v22 = (v22 + 1);
    if (v181 == v22)
    {
      goto LABEL_58;
    }
  }

  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
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
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_69:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100161774(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001617E4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_10016184C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100007224(&qword_10083B408, &qword_1006E2490);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1001618CC@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, char *a3@<X8>)
{
  v4 = v3;
  v33 = a1;
  v29 = a3;
  v39 = type metadata accessor for RecipientEncryptionCertificate();
  v6 = *(*(v39 - 8) + 64);
  v7 = __chkstk_darwin(v39);
  v38 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v32 = &v29 - v10;
  v11 = a2 + 64;
  v12 = 1 << *(a2 + 32);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & *(a2 + 64);
  v15 = (v12 + 63) >> 6;
  v34 = v9 + 32;
  v35 = v9;
  v30 = (v9 + 8);
  v31 = v9 + 16;
  v36 = a2;

  v17 = 0;
  v18 = v32;
  if (v14)
  {
    while (1)
    {
      v37 = v4;
      v19 = v17;
LABEL_9:
      v20 = v35;
      v21 = v39;
      (*(v35 + 16))(v18, *(v36 + 56) + *(v35 + 72) * (__clz(__rbit64(v14)) | (v19 << 6)), v39);
      v22 = *(v20 + 32);
      v23 = v38;
      v22(v38, v18, v21);
      v24 = v37;
      v25 = v33(v23);
      v4 = v24;
      if (v24)
      {
        (*v30)(v38, v39);
      }

      if (v25)
      {
        break;
      }

      v14 &= v14 - 1;
      result = (*v30)(v38, v39);
      v17 = v19;
      if (!v14)
      {
        goto LABEL_5;
      }
    }

    v28 = v29;
    v22(v29, v38, v39);
    v27 = v28;
    v26 = 0;
    return (*(v35 + 56))(v27, v26, 1, v39);
  }

  else
  {
LABEL_5:
    while (1)
    {
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v19 >= v15)
      {

        v26 = 1;
        v27 = v29;
        return (*(v35 + 56))(v27, v26, 1, v39);
      }

      v14 = *(v11 + 8 * v19);
      ++v17;
      if (v14)
      {
        v37 = v4;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_100161B8C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(a2 + 16);
  if (v12)
  {
    v19 = a3;
    v13 = a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v14 = *(v8 + 72);
    while (1)
    {
      sub_1001750BC(v13, v11, type metadata accessor for DigitalPresentmentEligibleProposalData);
      v15 = a1(v11);
      if (v3)
      {
        return sub_100174F88(v11, type metadata accessor for DigitalPresentmentEligibleProposalData);
      }

      if (v15)
      {
        break;
      }

      sub_100174F88(v11, type metadata accessor for DigitalPresentmentEligibleProposalData);
      v13 += v14;
      if (!--v12)
      {
        v16 = 1;
        a3 = v19;
        return (*(v8 + 56))(a3, v16, 1, v7);
      }
    }

    a3 = v19;
    sub_100175124(v11, v19, type metadata accessor for DigitalPresentmentEligibleProposalData);
    v16 = 0;
  }

  else
  {
    v16 = 1;
  }

  return (*(v8 + 56))(a3, v16, 1, v7);
}

_OWORD *sub_100161D84@<X0>(uint64_t (*a1)(uint64_t *)@<X0>, _OWORD *a2@<X8>)
{
  v5 = type metadata accessor for NSFastEnumerationIterator();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  NSSet.makeIterator()();
  sub_10017518C(&qword_10083C148, &type metadata accessor for NSFastEnumerationIterator);
  while (1)
  {
    dispatch thunk of IteratorProtocol.next()();
    if (!v14)
    {
      result = (*(v6 + 8))(v9, v5);
      *a2 = 0u;
      a2[1] = 0u;
      return result;
    }

    sub_10001F348(&v13, v12);
    v10 = a1(v12);
    if (v2)
    {
      sub_10000BB78(v12);
      return (*(v6 + 8))(v9, v5);
    }

    if (v10)
    {
      break;
    }

    sub_10000BB78(v12);
  }

  (*(v6 + 8))(v9, v5);
  return sub_10001F348(v12, a2);
}

uint64_t sub_100161F54@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v24 = a1;
  v6 = sub_100007224(&qword_10083C040, &qword_1006DA538);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20 - v9;
  v11 = *(a2 + 16);
  if (v11)
  {
    v21 = v7;
    v22 = a3;
    v13 = *(v7 + 16);
    v12 = v7 + 16;
    v23 = v13;
    v14 = (v12 - 8);
    v15 = a2 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    while (1)
    {
      v23(v10, v15, v6);
      v17 = v24(v10);
      if (v3)
      {
        return (*v14)(v10, v6);
      }

      if (v17)
      {
        break;
      }

      (*v14)(v10, v6);
      v15 += v16;
      if (!--v11)
      {
        v18 = 1;
        v7 = v21;
        a3 = v22;
        return (*(v7 + 56))(a3, v18, 1, v6);
      }
    }

    v7 = v21;
    a3 = v22;
    (*(v21 + 32))(v22, v10, v6);
    v18 = 0;
  }

  else
  {
    v18 = 1;
  }

  return (*(v7 + 56))(a3, v18, 1, v6);
}

uint64_t sub_10016215C@<X0>(uint64_t (*a1)(char *)@<X0>, uint64_t a2@<X2>, uint64_t (*a3)(void)@<X3>, uint64_t a4@<X8>)
{
  v25 = a1;
  v7 = a3(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 64) + 15) & 0xFFFFFFFFFFFFFFF0;
  __chkstk_darwin();
  v11 = &v21 - v10;
  v12 = *(a2 + 16);
  if (v12)
  {
    v22 = v8;
    v23 = a4;
    v14 = *(v8 + 16);
    v13 = v8 + 16;
    v24 = v14;
    v15 = (v13 - 8);
    v16 = a2 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    while (1)
    {
      v24(v11, v16, v7);
      v18 = v25(v11);
      if (v4)
      {
        return (*v15)(v11, v7);
      }

      if (v18)
      {
        break;
      }

      (*v15)(v11, v7);
      v16 += v17;
      if (!--v12)
      {
        v19 = 1;
        v8 = v22;
        a4 = v23;
        return (*(v8 + 56))(a4, v19, 1, v7);
      }
    }

    v8 = v22;
    a4 = v23;
    (*(v22 + 32))(v23, v11, v7);
    v19 = 0;
  }

  else
  {
    v19 = 1;
  }

  return (*(v8 + 56))(a4, v19, 1, v7);
}

uint64_t sub_100162330(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 160) = a4;
  *(v5 + 168) = v4;
  *(v5 + 373) = a2;
  *(v5 + 144) = a1;
  *(v5 + 152) = a3;
  v6 = type metadata accessor for DIPError.Code();
  *(v5 + 176) = v6;
  v7 = *(v6 - 8);
  *(v5 + 184) = v7;
  v8 = *(v7 + 64) + 15;
  *(v5 + 192) = swift_task_alloc();
  v9 = type metadata accessor for Logger();
  *(v5 + 200) = v9;
  v10 = *(v9 - 8);
  *(v5 + 208) = v10;
  v11 = *(v10 + 64) + 15;
  *(v5 + 216) = swift_task_alloc();
  *(v5 + 224) = swift_task_alloc();
  *(v5 + 232) = swift_task_alloc();
  *(v5 + 240) = swift_task_alloc();
  v12 = *(*(sub_100007224(&qword_10083BFF8, &qword_1006DA4D0) - 8) + 64) + 15;
  *(v5 + 248) = swift_task_alloc();
  v13 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  *(v5 + 256) = v13;
  v14 = *(v13 - 8);
  *(v5 + 264) = v14;
  v15 = *(v14 + 64) + 15;
  *(v5 + 272) = swift_task_alloc();
  v16 = type metadata accessor for DIPSignpost.Config();
  *(v5 + 280) = v16;
  v17 = *(v16 - 8);
  *(v5 + 288) = v17;
  v18 = *(v17 + 64) + 15;
  *(v5 + 296) = swift_task_alloc();
  v19 = type metadata accessor for DIPSignpost();
  *(v5 + 304) = v19;
  v20 = *(v19 - 8);
  *(v5 + 312) = v20;
  v21 = *(v20 + 64) + 15;
  *(v5 + 320) = swift_task_alloc();

  return _swift_task_switch(sub_1001625C4, 0, 0);
}

uint64_t sub_1001625C4()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 296);
  v3 = *(v0 + 256);
  v4 = *(v0 + 264);
  v5 = *(v0 + 248);
  v6 = *(v0 + 168);
  v7 = *(v0 + 144);
  static DaemonSignposts.requestDocumentSheet.getter();
  DIPSignpost.init(_:)();
  v8 = *(v6 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_eligibleProposalData);
  *(swift_task_alloc() + 16) = v7;
  sub_100161B8C(sub_100164EC0, v8, v5);

  if ((*(v4 + 48))(v5, 1, v3) == 1)
  {
    v10 = *(v0 + 312);
    v9 = *(v0 + 320);
    v11 = *(v0 + 304);
    v13 = *(v0 + 184);
    v12 = *(v0 + 192);
    v14 = *(v0 + 176);
    sub_10000BE18(*(v0 + 248), &qword_10083BFF8, &qword_1006DA4D0);
    (*(v13 + 104))(v12, enum case for DIPError.Code.digitalPresentmentInvalidDocumentDescriptor(_:), v14);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017518C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();
    (*(v10 + 8))(v9, v11);
LABEL_4:
    v23 = *(v0 + 320);
    v24 = *(v0 + 296);
    v25 = *(v0 + 272);
    v27 = *(v0 + 240);
    v26 = *(v0 + 248);
    v29 = *(v0 + 224);
    v28 = *(v0 + 232);
    v30 = *(v0 + 216);
    v31 = *(v0 + 192);

    v32 = *(v0 + 8);

    return v32();
  }

  v15 = *(v0 + 272);
  v16 = *(v0 + 256);
  v18 = *(v0 + 160);
  v17 = *(v0 + 168);
  v20 = *(v0 + 144);
  v19 = *(v0 + 152);
  v21 = *(v0 + 373);
  sub_100175124(*(v0 + 248), v15, type metadata accessor for DigitalPresentmentEligibleProposalData);
  v22 = sub_1001633CC(v15, *(v15 + *(v16 + 20)), v20, v21, v19, v18, *v15, v15[1]);
  *(v0 + 328) = v22;
  v34 = v22;
  v35 = [objc_allocWithZone(PKPaymentAuthorizationCoordinator) initWithPaymentRequest:v22];
  *(v0 + 336) = v35;
  if (!v35)
  {
    v58 = *(v0 + 312);
    v59 = *(v0 + 304);
    v60 = *(v0 + 320);
    v61 = *(v0 + 272);
    (*(*(v0 + 184) + 104))(*(v0 + 192), enum case for DIPError.Code.dpAuthorizationCoordinatorCreateFailure(_:), *(v0 + 176));
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017518C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    swift_willThrow();

    (*(v58 + 8))(v60, v59);
    sub_100174F88(v61, type metadata accessor for DigitalPresentmentEligibleProposalData);
    goto LABEL_4;
  }

  v36 = v35;
  v37 = *(v0 + 240);
  defaultLogger()();
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v38, v39, "DigitalPresentmentUIPresenter.present: Created PKPaymentAuthorizedCoordinator.", v40, 2u);
  }

  v42 = *(v0 + 232);
  v41 = *(v0 + 240);
  v43 = *(v0 + 200);
  v44 = *(v0 + 208);
  v45 = *(v0 + 168);

  v46 = *(v44 + 8);
  v46(v41, v43);
  v47 = *(v45 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_privateDelegate);
  [v36 _setPrivateDelegate:v47];
  [v36 setDelegate:v47];
  v48 = OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_authCoordinator;
  *(v0 + 344) = OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_authCoordinator;
  v49 = *(v45 + v48);
  *(v45 + v48) = v36;
  v50 = v36;

  defaultLogger()();
  v51 = Logger.logObject.getter();
  v52 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v51, v52))
  {
    v53 = swift_slowAlloc();
    *v53 = 0;
    _os_log_impl(&_mh_execute_header, v51, v52, "DigitalPresentmentUIPresenter.present: Calling coordinator.present()", v53, 2u);
  }

  v54 = *(v0 + 232);
  v55 = *(v0 + 200);
  v56 = *(v0 + 208);

  v46(v54, v55);
  *(v0 + 16) = v0;
  *(v0 + 56) = v0 + 372;
  *(v0 + 24) = sub_100162D08;
  v57 = swift_continuation_init();
  *(v0 + 136) = sub_100007224(&qword_10083C000, &qword_1006DA4D8);
  *(v0 + 80) = _NSConcreteStackBlock;
  *(v0 + 88) = 1107296256;
  *(v0 + 96) = sub_100164264;
  *(v0 + 104) = &unk_100809F48;
  *(v0 + 112) = v57;
  [v50 presentWithCompletion:v0 + 80];

  return _swift_continuation_await(v0 + 16);
}

uint64_t sub_100162D08()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100162DE8, 0, 0);
}

uint64_t sub_100162DE8()
{
  v1 = *(v0 + 288);
  v2 = *(v0 + 168);
  *(v0 + 374) = *(v0 + 372);
  v3 = *(v2 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_signpostManager);
  *(v0 + 352) = v3;
  sub_100007224(&qword_10083C008, &qword_1006DA4E0);
  v4 = *(v1 + 72);
  *(v0 + 368) = *(v1 + 80);
  v5 = swift_allocObject();
  *(v0 + 360) = v5;
  *(v5 + 16) = xmmword_1006BF740;
  static DaemonSignposts.WebPresentment.firstPartySelection.getter();
  static DaemonSignposts.WebPresentment.firstPartyBypass.getter();

  return _swift_task_switch(sub_100162ECC, v3, 0);
}

uint64_t sub_100162ECC()
{
  v1 = *(v0 + 352);
  v2 = *(v0 + 280);
  v3 = (*(v0 + 368) + 32) & ~*(v0 + 368);
  sub_10051B0E0(*(v0 + 360));
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();

  return _swift_task_switch(sub_100162F78, 0, 0);
}

uint64_t sub_100162F78()
{
  v1 = *(v0 + 320);
  v2 = *(v0 + 224);
  DIPSignpost.end(workflowID:isBackground:)(0, 2);
  defaultLogger()();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 374);
    v6 = swift_slowAlloc();
    *v6 = 67109120;
    *(v6 + 4) = v5;
    _os_log_impl(&_mh_execute_header, v3, v4, "DigitalPresentmentUIPresenter.present: Callback invoked with result=%{BOOL}d", v6, 8u);
  }

  v7 = *(v0 + 374);
  v8 = *(v0 + 224);
  v9 = *(v0 + 200);
  v10 = *(v0 + 208);

  v11 = *(v10 + 8);
  v11(v8, v9);
  if (v7)
  {
    v12 = *(v0 + 328);
    v13 = *(v0 + 336);
    (*(*(v0 + 312) + 8))(*(v0 + 320), *(v0 + 304));
  }

  else
  {
    v14 = *(v0 + 216);
    defaultLogger()();
    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 67109120;
      _os_log_impl(&_mh_execute_header, v15, v16, "DigitalPresentmentUIPresenter.present: Invocation to display presentment sheet called completion with result=%{BOOL}d, canceling", v17, 8u);
    }

    v18 = *(v0 + 336);
    v19 = *(v0 + 344);
    v37 = *(v0 + 320);
    v20 = *(v0 + 312);
    v35 = *(v0 + 328);
    v36 = *(v0 + 304);
    v21 = *(v0 + 216);
    v22 = *(v0 + 200);
    v23 = *(v0 + 168);

    v11(v21, v22);
    v24 = *(v23 + v19);
    *(v23 + v19) = 0;

    sub_1001642C0();
    (*(v20 + 8))(v37, v36);
  }

  v25 = *(v0 + 320);
  v26 = *(v0 + 296);
  v28 = *(v0 + 240);
  v27 = *(v0 + 248);
  v30 = *(v0 + 224);
  v29 = *(v0 + 232);
  v31 = *(v0 + 216);
  v32 = *(v0 + 192);
  sub_100174F88(*(v0 + 272), type metadata accessor for DigitalPresentmentEligibleProposalData);

  v33 = *(v0 + 8);

  return v33();
}

uint64_t sub_10016324C(uint64_t *a1)
{
  v2 = type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *a1;
  v8 = a1[1];
  v9 = IdentityDocumentPresentmentConfiguration.eligibleCredentials.getter();
  if (*(v9 + 16))
  {
    (*(v3 + 16))(v6, v9 + ((*(v3 + 80) + 32) & ~*(v3 + 80)), v2);

    v10 = IdentityDocumentPresentmentConfiguration.Credential.credentialIdentifier.getter();
    v12 = v11;
    (*(v3 + 8))(v6, v2);
    if (v7 == v10 && v8 == v12)
    {

      v14 = 1;
    }

    else
    {
      v14 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {

    v14 = 0;
  }

  return v14 & 1;
}

id sub_1001633CC(uint64_t a1, uint64_t a2, uint64_t a3, int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v9;
  v131 = a7;
  v132 = a8;
  v120 = a5;
  v121 = a6;
  v125 = a4;
  v139 = a3;
  v119 = a2;
  v12 = type metadata accessor for DIPError.Code();
  v122 = *(v12 - 8);
  v123 = v12;
  v13 = *(v122 + 64);
  __chkstk_darwin(v12);
  v124 = &v109[-((v14 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = type metadata accessor for IdentityDocumentElementCategoryGroups.RetentionIntent();
  v117 = *(v15 - 8);
  v118 = v15;
  v16 = *(v117 + 64);
  __chkstk_darwin(v15);
  v130 = &v109[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v18 = type metadata accessor for DigitalPresentmentSessionManager.Proposal();
  v19 = *(*(v18 - 8) + 64);
  __chkstk_darwin(v18 - 8);
  v129 = &v109[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v116 = type metadata accessor for DigitalPresentmentRTCAnalyticsHelper.CredentialPresentmentInformation();
  v21 = *(*(v116 - 8) + 64);
  __chkstk_darwin(v116);
  v23 = &v109[-((v22 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v24 = type metadata accessor for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType();
  v127 = *(v24 - 8);
  v128 = v24;
  v25 = *(v127 + 64);
  __chkstk_darwin(v24);
  v137 = &v109[-((v26 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v136 = type metadata accessor for IdentityDocumentPresentmentConfiguration.RelyingParty();
  v138 = *(v136 - 8);
  v27 = *(v138 + 64);
  v28 = __chkstk_darwin(v136);
  v115 = &v109[-((v29 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v28);
  v126 = &v109[-v30];
  v31 = type metadata accessor for Logger();
  v134 = *(v31 - 8);
  v32 = v134[8];
  __chkstk_darwin(v31);
  v34 = &v109[-((v33 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v35 = [objc_allocWithZone(PKPaymentRequest) init];
  v133 = v8;
  v36 = *(v8 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_externalizedContext);
  v37 = *(v8 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_externalizedContext + 8);
  isa = Data._bridgeToObjectiveC()().super.isa;
  [v35 setExternalizedContext:isa];

  [v35 setRequestType:13];
  [v35 setConfirmationStyle:1];
  v39 = *(a1 + 56);
  if (v39 >> 60 == 15)
  {
    v113 = v23;
    v114 = a1;
  }

  else
  {
    v135 = v35;
    v40 = *(a1 + 48);
    type metadata accessor for SecAccessControl(0);
    sub_10000B8B8(v40, v39);
    v41 = static SecAccessControlRef.fromData(_:)();
    if (v9)
    {
      sub_10000BD94(v40, v39);
      v35 = v135;

      return v35;
    }

    v42 = v41;
    v113 = v23;
    v114 = a1;
    v140 = 0;
    v43 = v135;
    [v135 setAccesssControlRef:v41];

    defaultLogger()();
    v44 = v43;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v45, v46))
    {
      v47 = swift_slowAlloc();
      v111 = v47;
      v112 = swift_slowAlloc();
      *&v142 = v112;
      *v47 = 136315138;
      v48 = [v44 accesssControlRef];
      *&v141[0] = v48;
      sub_100007224(&qword_10083C028, &unk_1006DA500);
      v110 = v46;
      v49 = Optional.debugDescription.getter();
      v51 = v50;

      v52 = sub_100141FE4(v49, v51, &v142);

      v53 = v111;
      *(v111 + 1) = v52;
      _os_log_impl(&_mh_execute_header, v45, v110, "DigitalPresentmentUIPresenter SecAccessControl = %s", v53, 0xCu);
      sub_10000BB78(v112);
    }

    sub_10000BD94(v40, v39);

    (v134[1])(v34, v31);
    v10 = v140;
    v35 = v135;
  }

  sub_100007224(&qword_10083C010, &qword_1006DA4E8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1006BF520;
  *&v142 = static IdentityDocumentPresentmentConfiguration.paymentRequestUserInfoKey.getter();
  *(&v142 + 1) = v55;
  AnyHashable.init<A>(_:)();
  v56 = type metadata accessor for PropertyListEncoder();
  v57 = *(v56 + 48);
  v58 = *(v56 + 52);
  swift_allocObject();
  PropertyListEncoder.init()();
  type metadata accessor for IdentityDocumentPresentmentConfiguration();
  sub_10017518C(&qword_10083C018, &type metadata accessor for IdentityDocumentPresentmentConfiguration);
  v59 = v10;
  v60 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v62 = v61;

  v140 = v59;
  if (v59)
  {

    sub_1000279C8(inited + 32);
    swift_setDeallocating();
    sub_100007224(&qword_100834720, &qword_1006DA4F0);
    swift_arrayDestroy();
  }

  else
  {
    *(inited + 96) = &type metadata for Data;
    *(inited + 72) = v60;
    *(inited + 80) = v62;
    sub_10003DB20(inited);
    swift_setDeallocating();
    sub_10000BE18(inited + 32, &qword_100834720, &qword_1006DA4F0);
    v63 = Dictionary._bridgeToObjectiveC()().super.isa;

    [v35 setClientViewSourceParameter:v63];

    [v35 setPaymentContentItems:0];
    v64 = [v35 accesssControlRef];
    if (v64)
    {

      v65 = v125;
      v66 = v133;
      sub_100164438(v125);
      v67 = v65;
      v68 = String._bridgeToObjectiveC()();

      [v35 setLocalizedPhysicalButtonConfirmationTitle:v68];

      if (v67 == 1)
      {
        static DigitalPresentmentLocalizedString.touchIDRetry.getter();
        v69 = String._bridgeToObjectiveC()();

        [v35 setLocalizedBiometricRetryMessage:v69];

        static DigitalPresentmentLocalizedString.unboundFingerprint.getter();
        v70 = String._bridgeToObjectiveC()();
      }

      else
      {
        [v35 setLocalizedBiometricRetryMessage:0];
        v70 = 0;
      }

      v72 = v127;
      v71 = v128;
      [v35 setLocalizedUnboundBiometricMessage:v70];

      static DigitalPresentmentLocalizedString.authenticationFailedTitle.getter();
      v73 = String._bridgeToObjectiveC()();

      [v35 setLocalizedErrorMessage:v73];

      static DigitalPresentmentLocalizedString.presentingSecurely.getter();
      v74 = String._bridgeToObjectiveC()();

      [v35 setLocalizedAuthorizingTitle:v74];

      LODWORD(v135) = 1;
      [v35 setDisablePasscodeFallback:1];
      v75 = v126;
      IdentityDocumentPresentmentConfiguration.relyingParty.getter();
      v76 = v137;
      IdentityDocumentPresentmentConfiguration.RelyingParty.relyingPartyType.getter();
      v77 = *(v138 + 8);
      v138 += 8;
      v134 = v77;
      (v77)(v75, v136);
      v78 = (*(v72 + 88))(v76, v71);
      v79 = v129;
      v80 = v130;
      if (v78 != enum case for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.firstPartyService(_:))
      {
        if (v78 == enum case for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.application(_:))
        {
          LODWORD(v135) = 0;
        }

        else
        {
          LODWORD(v135) = 2 * (v78 == enum case for IdentityDocumentPresentmentConfiguration.RelyingParty.RelyingPartyType.web(_:));
        }
      }

      (*(v72 + 8))(v137, v71);
      sub_1001750BC(v114, v79, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      v81 = *(v66 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_eligibleProposalData);

      v82 = v140;
      sub_100164520(v131, v132, v80);
      v140 = v82;
      if (v82)
      {
        sub_100174F88(v79, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
      }

      else
      {
        v83 = v113;
        sub_100175124(v79, v113, type metadata accessor for DigitalPresentmentSessionManager.Proposal);
        v84 = v116;
        v85 = v117;
        v86 = v118;
        *(v83 + *(v116 + 20)) = v119;
        *(v83 + *(v84 + 24)) = v81;
        (*(v85 + 32))(v83 + *(v84 + 28), v80, v86);

        v87 = v115;
        IdentityDocumentPresentmentConfiguration.relyingParty.getter();
        v139 = IdentityDocumentPresentmentConfiguration.RelyingParty.name.getter();
        v89 = v88;
        (v134)(v87, v136);
        v90 = *(v66 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_archivedSessionToken + 8);
        v137 = *(v66 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_archivedSessionToken);
        v138 = v90;
        sub_100007224(&qword_10083C020, &qword_1006DA4F8);
        v91 = swift_initStackObject();
        v92 = PKPaymentRequestClientAnalyticsParametersProductTypeKey;
        *(v91 + 32) = PKPaymentRequestClientAnalyticsParametersProductTypeKey;
        *(v91 + 16) = xmmword_1006BFE10;
        *(v91 + 40) = 0x797469746E656469;
        *(v91 + 48) = 0xE800000000000000;
        v93 = PKPaymentRequestClientAnalyticsParametersPageTagKey;
        *(v91 + 64) = &type metadata for String;
        *(v91 + 72) = v93;
        *(v91 + 80) = 0xD000000000000015;
        *(v91 + 88) = 0x80000001007026C0;
        v94 = PKPaymentRequestClientAnalyticsParametersSubjectKey;
        *(v91 + 104) = &type metadata for String;
        *(v91 + 112) = v94;
        strcpy((v91 + 120), "identityInApp");
        *(v91 + 134) = -4864;
        v95 = PKPaymentRequestClientAnalyticsParametersRemoteAuthorizationStartPayloadKey;
        *(v91 + 144) = &type metadata for String;
        *(v91 + 152) = v95;
        v96 = v92;
        v97 = v93;
        v98 = v94;
        v99 = v95;
        v100 = v83;
        v101 = sub_10015C624(v83, v120, v121, v139, v89, v135);
        v102 = v138;

        *(v91 + 184) = sub_100007224(&unk_10084A230, &qword_1006C0F50);
        *(v91 + 160) = v101;
        v103 = sub_10003EDEC(v91);
        swift_setDeallocating();
        sub_100007224(&qword_100834710, &qword_1006C0010);
        swift_arrayDestroy();
        if (v102 >> 60 != 15)
        {
          v104 = PKPaymentRequestClientAnalyticsParametersArchivedParentTokenKey;
          v143 = &type metadata for Data;
          v105 = v137;
          *&v142 = v137;
          *(&v142 + 1) = v102;
          sub_10001F348(&v142, v141);
          sub_1000363B4(v105, v102);
          sub_10000B8B8(v105, v102);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v144 = v103;
          sub_10016D780(v141, v104, isUniquelyReferenced_nonNull_native);
          sub_10000BD94(v105, v102);
        }

        type metadata accessor for PKPaymentRequestClientAnalyticsParameters(0);
        sub_10017518C(&qword_100833218, type metadata accessor for PKPaymentRequestClientAnalyticsParameters);
        v107 = Dictionary._bridgeToObjectiveC()().super.isa;

        [v35 setClientAnalyticsParameters:v107];

        sub_100174F88(v100, type metadata accessor for DigitalPresentmentRTCAnalyticsHelper.CredentialPresentmentInformation);
      }
    }

    else
    {
      (*(v122 + 104))(v124, enum case for DIPError.Code.dpAccesssControlRefNil(_:), v123);
      sub_1000402AC(_swiftEmptyArrayStorage);
      type metadata accessor for DIPError();
      sub_10017518C(&qword_100834130, &type metadata accessor for DIPError);
      swift_allocError();
      DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
      swift_willThrow();
    }
  }

  return v35;
}

uint64_t sub_100164264(uint64_t a1, char a2)
{
  **(*(*sub_10000BA08((a1 + 32), *(a1 + 56)) + 64) + 40) = a2;

  return _swift_continuation_resume();
}

void sub_1001642C0()
{
  v0 = type metadata accessor for Logger();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "DigitalPresentmentUIPresenter cancel invoked.", v7, 2u);
  }

  (*(v1 + 8))(v4, v0);
  sub_100164AC4();
  v8._countAndFlagsBits = 0x3665663035323264;
  v9._object = 0x80000001007024B0;
  v8._object = 0xE800000000000000;
  v9._countAndFlagsBits = 0xD000000000000015;
  logMilestone(tag:description:)(v8, v9);
}

uint64_t sub_100164438(unsigned __int8 a1)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  if (a1 != 2)
  {
    v3 = *(v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider + 32);
    sub_10000BA08((v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider), *(v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider + 24));
    if ((dispatch thunk of DeviceInformationProviding.isFaceIDDevice.getter() & 1) == 0)
    {
LABEL_13:

      return static DigitalPresentmentLocalizedString.touchIDConfirmationTitle.getter();
    }

    goto LABEL_10;
  }

  v2 = *(v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider + 32);
  sub_10000BA08((v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider), *(v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_deviceInformationProvider + 24));
  if (dispatch thunk of DeviceInformationProviding.isFaceIDDevice.getter())
  {
LABEL_10:

    return static DigitalPresentmentLocalizedString.faceIDConfirmationTitle.getter();
  }

  return static DigitalPresentmentLocalizedString.passcodeConfirmationTitle.getter();
}

uint64_t sub_100164520@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  v48 = a3;
  v54 = a2;
  v4 = type metadata accessor for DIPError.Code();
  v40 = *(v4 - 8);
  v41 = v4;
  v5 = *(v40 + 64);
  __chkstk_darwin(v4);
  v42 = &v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for IdentityDocumentElementCategoryGroups();
  v46 = *(v7 - 8);
  v47 = v7;
  v8 = *(v46 + 64);
  v9 = __chkstk_darwin(v7);
  v44 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v45 = &v39 - v11;
  v58 = type metadata accessor for IdentityDocumentPresentmentConfiguration.Credential();
  v12 = *(v58 - 8);
  v13 = *(v12 + 64);
  v14 = __chkstk_darwin(v58);
  v56 = &v39 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v43 = &v39 - v17;
  __chkstk_darwin(v16);
  v57 = &v39 - v18;
  result = IdentityDocumentPresentmentConfiguration.eligibleCredentials.getter();
  v20 = result;
  v53 = *(result + 16);
  if (v53)
  {
    v21 = 0;
    v52 = v12 + 16;
    v49 = (v12 + 8);
    v55 = (v12 + 32);
    v22 = _swiftEmptyArrayStorage;
    v50 = result;
    v51 = a1;
    while (1)
    {
      if (v21 >= *(v20 + 16))
      {
        __break(1u);
        return result;
      }

      v23 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v24 = *(v12 + 72);
      (*(v12 + 16))(v57, v20 + v23 + v24 * v21, v58);
      if (IdentityDocumentPresentmentConfiguration.Credential.credentialIdentifier.getter() == a1 && v25 == v54)
      {
        break;
      }

      v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v26)
      {
        goto LABEL_10;
      }

      result = (*v49)(v57, v58);
LABEL_4:
      if (v53 == ++v21)
      {
        goto LABEL_16;
      }
    }

LABEL_10:
    v27 = v12;
    v28 = *v55;
    (*v55)(v56, v57, v58);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v59 = v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      sub_100172F5C(0, v22[2] + 1, 1);
      v22 = v59;
    }

    v31 = v22[2];
    v30 = v22[3];
    if (v31 >= v30 >> 1)
    {
      sub_100172F5C(v30 > 1, v31 + 1, 1);
      v22 = v59;
    }

    v22[2] = v31 + 1;
    result = (v28)(v22 + v23 + v31 * v24, v56, v58);
    v12 = v27;
    v20 = v50;
    a1 = v51;
    goto LABEL_4;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_16:

  if (v22[2])
  {
    v32 = v43;
    v33 = v58;
    (*(v12 + 16))(v43, v22 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v58);

    v34 = v44;
    IdentityDocumentPresentmentConfiguration.Credential.elementCategoryGroups.getter();
    (*(v12 + 8))(v32, v33);
    v35 = v45;
    v36 = v46;
    v37 = v34;
    v38 = v47;
    (*(v46 + 32))(v45, v37, v47);
    IdentityDocumentElementCategoryGroups.retainedElementRetentionIntent.getter();
    return (*(v36 + 8))(v35, v38);
  }

  else
  {

    (*(v40 + 104))(v42, enum case for DIPError.Code.digitalPresentmentInvalidCredential(_:), v41);
    sub_1000402AC(_swiftEmptyArrayStorage);
    type metadata accessor for DIPError();
    sub_10017518C(&qword_100834130, &type metadata accessor for DIPError);
    swift_allocError();
    DIPError.init(_:fromError:code:forceCode:properties:file:function:line:)();
    return swift_willThrow();
  }
}

id sub_100164AC4()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  defaultLogger()();
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&_mh_execute_header, v7, v8, "DigitalPresentmentUIPresenter dismiss invoked.", v9, 2u);
  }

  (*(v3 + 8))(v6, v2);
  result = *(v1 + OBJC_IVAR____TtC8coreidvd29DigitalPresentmentUIPresenter_authCoordinator);
  if (result)
  {
    return [result dismissWithCompletion:0];
  }

  return result;
}

id sub_100164C54()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_100164D78@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, unint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  v14 = sub_100174DAC(a1, a2, a3, a4, a5, a6, a7, a8);
  sub_10000BD94(a6, a7);
  result = sub_10000B90C(a2, a3);
  *a9 = v14;
  return result;
}

uint64_t sub_100164DDC(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v10 = *v4;
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = sub_100027B9C;

  return sub_100162330(a1, a2, a3, a4);
}

uint64_t sub_100164EE0(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100007224(&qword_100834990, &qword_1006DA820);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100175124(v31, v45, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      }

      else
      {
        sub_1001750BC(v31, v45, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_100175124(v45, *(v12 + 56) + v30 * v20, type metadata accessor for CloudKitUploadBuilder.UploadAssetEncryptionInfo);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_100165294(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_100833A48, &unk_1006BF8B0);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v33 = v3;
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
        v24 = v22;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
      v25 = -1 << *(v8 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v15 + 8 * (v26 >> 6))) == 0)
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
          v31 = *(v15 + 8 * v27);
          if (v31 != -1)
          {
            v16 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v26) & ~*(v15 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v21;
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

    if (a2)
    {
      v32 = 1 << *(v5 + 32);
      if (v32 >= 64)
      {
        bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
      }

      else
      {
        *v10 = -1 << v32;
      }

      *(v5 + 16) = 0;
    }

    v3 = v33;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_1001654FC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_100834898, &qword_1006C00D0);
  v33 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
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
    v32 = v3;
    v15 = result + 64;
    while (v13)
    {
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_18:
      v23 = v20 | (v9 << 6);
      v24 = *(*(v5 + 48) + v23);
      v25 = *(*(v5 + 56) + 8 * v23);
      if ((v33 & 1) == 0)
      {
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v16 = -1 << *(v8 + 32);
      v17 = result & ~v16;
      v18 = v17 >> 6;
      if (((-1 << v17) & ~*(v15 + 8 * (v17 >> 6))) == 0)
      {
        v27 = 0;
        v28 = (63 - v16) >> 6;
        while (++v18 != v28 || (v27 & 1) == 0)
        {
          v29 = v18 == v28;
          if (v18 == v28)
          {
            v18 = 0;
          }

          v27 |= v29;
          v30 = *(v15 + 8 * v18);
          if (v30 != -1)
          {
            v19 = __clz(__rbit64(~v30)) + (v18 << 6);
            goto LABEL_10;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v17) & ~*(v15 + 8 * (v17 >> 6)))) | v17 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v15 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      *(*(v8 + 48) + v19) = v24;
      *(*(v8 + 56) + 8 * v19) = v25;
      ++*(v8 + 16);
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
        goto LABEL_18;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v32;
      goto LABEL_36;
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

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100165918(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DIPError.PropertyKey();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100007224(&unk_10084A1F0, &unk_1006E9F80);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_10001F358((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_100020260(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_10017518C(&qword_1008346E8, &type metadata accessor for DIPError.PropertyKey);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_10001F358(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100165CFC(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_100834738, &unk_1006DA620);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 40 * v21);
      if (v36)
      {
        sub_10001F358(v25, v37);
      }

      else
      {
        sub_100020260(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10001F358(v37, *(v8 + 56) + 40 * v16);
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100165FC0(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_100849420, &qword_1006DA510);
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
      v20 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v23 = 16 * (v20 | (v9 << 6));
      v24 = (*(v5 + 48) + v23);
      v25 = *v24;
      v26 = v24[1];
      v27 = (*(v5 + 56) + v23);
      v28 = v27[1];
      v41 = *v27;
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
      v17 = 16 * v16;
      v18 = (*(v8 + 48) + v17);
      *v18 = v25;
      v18[1] = v26;
      v19 = (*(v8 + 56) + v17);
      *v19 = v41;
      v19[1] = v28;
      ++*(v8 + 16);
      v5 = v39;
    }

    v21 = v9;
    while (1)
    {
      v9 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_37;
      }

      if (v9 >= v14)
      {
        break;
      }

      v22 = v10[v9];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v13 = (v22 - 1) & v22;
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

uint64_t sub_100166280(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_1008346F8, &qword_1006DA530);
  v36 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
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
      v18 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_17:
      v21 = v18 | (v9 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      if (v36)
      {
        sub_10001F348(v25, v37);
      }

      else
      {
        sub_10001F2EC(v25, v37);
      }

      v26 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v8 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v23;
      v17[1] = v24;
      result = sub_10001F348(v37, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
    }

    v19 = v9;
    while (1)
    {
      v9 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v9 >= v14)
      {
        break;
      }

      v20 = v10[v9];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v13 = (v20 - 1) & v20;
        goto LABEL_17;
      }
    }

    if ((v36 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero((v5 + 64), ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100166538(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_1008348F8, &qword_1006C0110);
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
      v21 = *(*(v5 + 48) + 8 * v20);
      v22 = *(*(v5 + 56) + 8 * v20);
      if ((a2 & 1) == 0)
      {
        v23 = v21;
      }

      result = NSObject._rawHashValue(seed:)(*(v8 + 40));
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
      *(*(v8 + 48) + 8 * v16) = v21;
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

    if (a2)
    {
      v31 = 1 << *(v5 + 32);
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

    v3 = v32;
  }

  else
  {
  }

  *v3 = v8;
  return result;
}

uint64_t sub_10016679C(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for IQCType();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100007224(&qword_100834918, &qword_1006C0120);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v40 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v7;
    v45 = (v7 + 32);
    v21 = result + 64;
    v43 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v24 = (v19 - 1) & v19;
LABEL_17:
      v27 = v23 | (v15 << 6);
      v46 = v24;
      v28 = *(v7 + 72);
      v29 = *(v11 + 48) + v28 * v27;
      if (v44)
      {
        (*v45)(v47, v29, v6);
      }

      else
      {
        (*v41)(v47, v29, v6);
      }

      v30 = *(*(v11 + 56) + 8 * v27);
      v31 = *(v14 + 40);
      sub_10017518C(&qword_100834900, &type metadata accessor for IQCType);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v14 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v21 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v21 + 8 * v34);
          if (v38 != -1)
          {
            v22 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v33) & ~*(v21 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v45)(*(v14 + 48) + v28 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v30;
      ++*(v14 + 16);
      v7 = v42;
      v11 = v43;
      v19 = v46;
    }

    v25 = v15;
    while (1)
    {
      v15 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v26 = v16[v15];
      ++v25;
      if (v26)
      {
        v23 = __clz(__rbit64(v26));
        v24 = (v26 - 1) & v26;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v40;
      goto LABEL_36;
    }

    v39 = 1 << *(v11 + 32);
    v3 = v40;
    if (v39 >= 64)
    {
      bzero(v16, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v39;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100166B5C(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083C228, &unk_1006DA800);
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
      v21 = *(*(v5 + 48) + 8 * v20);
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
      *(*(v8 + 48) + 8 * v16) = v21;
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

uint64_t sub_100166DEC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for UploadsCloudContainer.AnalyticsMetadata(0);
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100007224(&qword_1008348D8, &unk_1006DA710);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100175124(v31, v45, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
      }

      else
      {
        sub_1001750BC(v31, v45, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_100175124(v45, *(v12 + 56) + v30 * v20, type metadata accessor for UploadsCloudContainer.AnalyticsMetadata);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_100167164(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083C238, &qword_1006DA830);
  v39 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v37 = v3;
    v38 = v5;
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
      v24 = v23[1];
      v25 = (*(v5 + 56) + 24 * v22);
      v26 = v25[1];
      v40 = *v25;
      v41 = *v23;
      v27 = v25[2];
      if ((v39 & 1) == 0)
      {

        sub_10000B8B8(v26, v27);
      }

      v28 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v29 = -1 << *(v8 + 32);
      v30 = result & ~v29;
      v31 = v30 >> 6;
      if (((-1 << v30) & ~*(v15 + 8 * (v30 >> 6))) == 0)
      {
        v32 = 0;
        v33 = (63 - v29) >> 6;
        while (++v31 != v33 || (v32 & 1) == 0)
        {
          v34 = v31 == v33;
          if (v31 == v33)
          {
            v31 = 0;
          }

          v32 |= v34;
          v35 = *(v15 + 8 * v31);
          if (v35 != -1)
          {
            v16 = __clz(__rbit64(~v35)) + (v31 << 6);
            goto LABEL_9;
          }
        }

LABEL_37:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v30) & ~*(v15 + 8 * (v30 >> 6)))) | v30 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v41;
      v17[1] = v24;
      v18 = (*(v8 + 56) + 24 * v16);
      *v18 = v40;
      v18[1] = v26;
      v18[2] = v27;
      ++*(v8 + 16);
      v5 = v38;
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

    if ((v39 & 1) == 0)
    {

      v3 = v37;
      goto LABEL_35;
    }

    v36 = 1 << *(v5 + 32);
    v3 = v37;
    if (v36 >= 64)
    {
      bzero(v10, ((v36 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v36;
    }

    *(v5 + 16) = 0;
  }

LABEL_35:
  *v3 = v8;
  return result;
}

uint64_t sub_100167438(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_10083C240, &qword_1006DA838);
  v45 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
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
      v26 = *(v5 + 56) + 152 * v22;
      if (v45)
      {
        v47 = *v26;
        v46 = *(v26 + 16);
        v52 = *(v26 + 24);
        v48 = *(v26 + 32);
        v49 = *(v26 + 8);
        v50 = *(v26 + 40);
        v51 = *(v26 + 56);
        v27 = *(v26 + 72);
        v53 = v27;
        v54 = *(v26 + 88);
        v55 = *(v26 + 104);
        v56 = *(v26 + 105);
        v57 = *(v26 + 106);
        v58 = *(v26 + 107);
        v59 = *(v26 + 108);
        v60 = *(v26 + 109);
        v61 = *(v26 + 112);
        v62 = *(v26 + 120);
        v63 = *(v26 + 121);
        v64 = *(v26 + 122);
        v67 = *(v26 + 136);
        v65 = *(v26 + 128);
        v66 = *(v26 + 144);
      }

      else
      {
        v28 = *(v26 + 16);
        v69 = *v26;
        v70 = v28;
        v29 = *(v26 + 80);
        v31 = *(v26 + 32);
        v30 = *(v26 + 48);
        *&v71[32] = *(v26 + 64);
        *&v71[48] = v29;
        *v71 = v31;
        *&v71[16] = v30;
        v33 = *(v26 + 112);
        v32 = *(v26 + 128);
        v34 = *(v26 + 96);
        v74 = *(v26 + 144);
        v72 = v33;
        v73 = v32;
        *&v71[64] = v34;
        v66 = v74;
        v67 = *(&v32 + 1);
        v65 = v32;
        v63 = BYTE9(v33);
        v64 = BYTE10(v33);
        v62 = BYTE8(v33);
        v61 = v33;
        v59 = BYTE12(v34);
        v60 = BYTE13(v34);
        v57 = BYTE10(v34);
        v58 = BYTE11(v34);
        v55 = BYTE8(v34);
        v56 = BYTE9(v34);
        v53 = *&v71[40];
        v54 = *&v71[56];
        v50 = *&v71[8];
        v51 = *&v71[24];
        v52 = *(&v70 + 1);
        v48 = v31;
        v49 = *(&v69 + 1);
        v46 = v70;
        v47 = v69;

        sub_1000B2D34(&v69, v68);
      }

      v35 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v24;
      v17[1] = v25;
      v18 = *(v8 + 56) + 152 * v16;
      *v18 = v47;
      *(v18 + 8) = v49;
      *(v18 + 16) = v46;
      *(v18 + 24) = v52;
      *(v18 + 32) = v48;
      *(v18 + 56) = v51;
      *(v18 + 40) = v50;
      *(v18 + 88) = v54;
      *(v18 + 72) = v53;
      *(v18 + 104) = v55;
      *(v18 + 105) = v56;
      *(v18 + 106) = v57;
      *(v18 + 107) = v58;
      *(v18 + 108) = v59;
      *(v18 + 109) = v60;
      *(v18 + 112) = v61;
      *(v18 + 120) = v62;
      *(v18 + 121) = v63;
      *(v18 + 122) = v64;
      *(v18 + 128) = v65;
      *(v18 + 136) = v67;
      *(v18 + 144) = v66;
      ++*(v8 + 16);
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v45 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero((v5 + 64), ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_1001678C8(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_100834978, &qword_1006C0160);
  v46 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v44 = v3;
    v45 = v5;
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
      v23 = *(v5 + 56);
      v24 = (*(v5 + 48) + 16 * v22);
      v25 = *v24;
      v26 = v24[1];
      v27 = (v23 + 152 * v22);
      if (v46)
      {
        v50 = *v27;
        v47 = v27[1];
        v49 = *(v27 + 16);
        v51 = *(v27 + 5);
        v48 = *(v27 + 3);
        v52 = *(v27 + 56);
        v54 = *(v27 + 57);
        v53 = *(v27 + 4);
        v57 = *(v27 + 7);
        v55 = *(v27 + 5);
        v56 = *(v27 + 6);
        v59 = v27[17];
        v60 = v27[16];
        v58 = v27[18];
      }

      else
      {
        v28 = *(v27 + 1);
        v62 = *v27;
        *v63 = v28;
        v29 = *(v27 + 5);
        v31 = *(v27 + 2);
        v30 = *(v27 + 3);
        v64 = *(v27 + 4);
        v65 = v29;
        *&v63[16] = v31;
        *&v63[32] = v30;
        v33 = *(v27 + 7);
        v32 = *(v27 + 8);
        v34 = *(v27 + 6);
        v69 = v27[18];
        v67 = v33;
        v68 = v32;
        v66 = v34;
        v59 = *(&v32 + 1);
        v60 = v32;
        v58 = v69;
        v56 = v34;
        v57 = v33;
        v55 = v65;
        v53 = v64;
        v54 = v63[41];
        v52 = v63[40];
        v51 = *&v63[24];
        v48 = *&v63[8];
        v49 = v63[0];
        v47 = *(&v62 + 1);
        v50 = v62;

        sub_1000F059C(&v62, v61);
      }

      v35 = *(v8 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v36 = -1 << *(v8 + 32);
      v37 = result & ~v36;
      v38 = v37 >> 6;
      if (((-1 << v37) & ~*(v15 + 8 * (v37 >> 6))) == 0)
      {
        v39 = 0;
        v40 = (63 - v36) >> 6;
        while (++v38 != v40 || (v39 & 1) == 0)
        {
          v41 = v38 == v40;
          if (v38 == v40)
          {
            v38 = 0;
          }

          v39 |= v41;
          v42 = *(v15 + 8 * v38);
          if (v42 != -1)
          {
            v16 = __clz(__rbit64(~v42)) + (v38 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v37) & ~*(v15 + 8 * (v37 >> 6)))) | v37 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = (*(v8 + 48) + 16 * v16);
      *v17 = v25;
      v17[1] = v26;
      v18 = *(v8 + 56) + 152 * v16;
      *v18 = v50;
      *(v18 + 8) = v47;
      *(v18 + 16) = v49;
      *(v18 + 40) = v51;
      *(v18 + 24) = v48;
      *(v18 + 56) = v52;
      *(v18 + 57) = v54;
      *(v18 + 64) = v53;
      *(v18 + 80) = v55;
      *(v18 + 96) = v56;
      *(v18 + 112) = v57;
      *(v18 + 128) = v60;
      *(v18 + 136) = v59;
      *(v18 + 144) = v58;
      ++*(v8 + 16);
      v5 = v45;
    }

    v20 = v9;
    while (1)
    {
      v9 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v46 & 1) == 0)
    {

      v3 = v44;
      goto LABEL_36;
    }

    v43 = 1 << *(v5 + 32);
    v3 = v44;
    if (v43 >= 64)
    {
      bzero(v10, ((v43 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v43;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}

uint64_t sub_100167D08(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ISO18013KnownDocTypes();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100007224(&qword_10083C130, &qword_1006DA6B8);
  v42 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v45 = v10;
    v46 = v6;
    v38 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v39 = (v7 + 16);
    v40 = v7;
    v43 = (v7 + 32);
    v21 = result + 64;
    v41 = v11;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v44 = *(v7 + 72);
      v28 = v27 + v44 * v26;
      if (v42)
      {
        (*v43)(v45, v28, v46);
        sub_10001F358((*(v11 + 56) + 40 * v26), v47);
      }

      else
      {
        (*v39)(v45, v28, v46);
        sub_100020260(*(v11 + 56) + 40 * v26, v47);
      }

      v29 = *(v14 + 40);
      sub_10017518C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        v7 = v40;
        v11 = v41;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
      v7 = v40;
      v11 = v41;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      (*v43)((*(v14 + 48) + v44 * v22), v45, v46);
      result = sub_10001F358(v47, *(v14 + 56) + 40 * v22);
      ++*(v14 + 16);
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v42 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_1001680EC(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for DigitalPresentmentEligibleProposalData();
  v43 = *(v6 - 8);
  v7 = *(v43 + 64);
  __chkstk_darwin(v6 - 8);
  v45 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v10 = *(*v3 + 24);
  }

  sub_100007224(&qword_100834730, &qword_1006C0028);
  v44 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v9 + 16))
  {
    v41 = v3;
    v42 = v9;
    v13 = 0;
    v14 = (v9 + 64);
    v15 = 1 << *(v9 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v9 + 64);
    v18 = (v15 + 63) >> 6;
    v19 = result + 64;
    while (v17)
    {
      v22 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_17:
      v25 = v22 | (v13 << 6);
      v26 = *(v9 + 56);
      v27 = (*(v9 + 48) + 16 * v25);
      v28 = *v27;
      v29 = v27[1];
      v30 = *(v43 + 72);
      v31 = v26 + v30 * v25;
      if (v44)
      {
        sub_100175124(v31, v45, type metadata accessor for DigitalPresentmentEligibleProposalData);
      }

      else
      {
        sub_1001750BC(v31, v45, type metadata accessor for DigitalPresentmentEligibleProposalData);
      }

      v32 = *(v12 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v33 = -1 << *(v12 + 32);
      v34 = result & ~v33;
      v35 = v34 >> 6;
      if (((-1 << v34) & ~*(v19 + 8 * (v34 >> 6))) == 0)
      {
        v36 = 0;
        v37 = (63 - v33) >> 6;
        while (++v35 != v37 || (v36 & 1) == 0)
        {
          v38 = v35 == v37;
          if (v35 == v37)
          {
            v35 = 0;
          }

          v36 |= v38;
          v39 = *(v19 + 8 * v35);
          if (v39 != -1)
          {
            v20 = __clz(__rbit64(~v39)) + (v35 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v34) & ~*(v19 + 8 * (v34 >> 6)))) | v34 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      v21 = (*(v12 + 48) + 16 * v20);
      *v21 = v28;
      v21[1] = v29;
      result = sub_100175124(v45, *(v12 + 56) + v30 * v20, type metadata accessor for DigitalPresentmentEligibleProposalData);
      ++*(v12 + 16);
      v9 = v42;
    }

    v23 = v13;
    while (1)
    {
      v13 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v18)
      {
        break;
      }

      v24 = v14[v13];
      ++v23;
      if (v24)
      {
        v22 = __clz(__rbit64(v24));
        v17 = (v24 - 1) & v24;
        goto LABEL_17;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v41;
      goto LABEL_36;
    }

    v40 = 1 << *(v9 + 32);
    v3 = v41;
    if (v40 >= 64)
    {
      bzero(v14, ((v40 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v40;
    }

    *(v9 + 16) = 0;
  }

LABEL_36:
  *v3 = v12;
  return result;
}

uint64_t sub_1001684B4(uint64_t a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ISO18013KnownDocTypes();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v12 = *(*v3 + 24);
  }

  sub_100007224(&qword_10083C218, &qword_1006DA7E8);
  v43 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v14 = result;
  if (*(v11 + 16))
  {
    v47 = v10;
    v39 = v3;
    v15 = 0;
    v16 = (v11 + 64);
    v17 = 1 << *(v11 + 32);
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    v19 = v18 & *(v11 + 64);
    v20 = (v17 + 63) >> 6;
    v40 = (v7 + 16);
    v41 = v11;
    v42 = v7;
    v44 = (v7 + 32);
    v21 = result + 64;
    while (v19)
    {
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
LABEL_17:
      v26 = v23 | (v15 << 6);
      v27 = *(v11 + 48);
      v46 = *(v42 + 72);
      v28 = v27 + v46 * v26;
      if (v43)
      {
        (*v44)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      else
      {
        (*v40)(v47, v28, v6);
        v45 = *(*(v11 + 56) + 8 * v26);
      }

      v29 = *(v14 + 40);
      sub_10017518C(&qword_1008348B0, &type metadata accessor for ISO18013KnownDocTypes);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v30 = -1 << *(v14 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v21 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v21 + 8 * v32);
          if (v36 != -1)
          {
            v22 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v22 = __clz(__rbit64((-1 << v31) & ~*(v21 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v21 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
      result = (*v44)(*(v14 + 48) + v46 * v22, v47, v6);
      *(*(v14 + 56) + 8 * v22) = v45;
      ++*(v14 + 16);
      v11 = v41;
    }

    v24 = v15;
    while (1)
    {
      v15 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v15 >= v20)
      {
        break;
      }

      v25 = v16[v15];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v19 = (v25 - 1) & v25;
        goto LABEL_17;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v39;
      goto LABEL_36;
    }

    v37 = 1 << *(v11 + 32);
    v3 = v39;
    if (v37 >= 64)
    {
      bzero(v16, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v16 = -1 << v37;
    }

    *(v11 + 16) = 0;
  }

LABEL_36:
  *v3 = v14;
  return result;
}

uint64_t sub_100168890(uint64_t a1, char a2)
{
  v3 = v2;
  v5 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v6 = *(*v2 + 24);
  }

  sub_100007224(&qword_100834708, &qword_1006C0008);
  v37 = a2;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v35 = v3;
    v36 = v5;
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
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = (v21 + 32 * v20);
      if (v37)
      {
        sub_10001F348(v23, v38);
      }

      else
      {
        sub_10001F2EC(v23, v38);
        v24 = v22;
      }

      v25 = *(v8 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      String.hash(into:)();
      v26 = Hasher._finalize()();

      v27 = -1 << *(v8 + 32);
      v28 = v26 & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v15 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v15 + 8 * v29);
          if (v33 != -1)
          {
            v16 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

LABEL_38:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v28) & ~*(v15 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v8 + 48) + 8 * v16) = v22;
      result = sub_10001F348(v38, (*(v8 + 56) + 32 * v16));
      ++*(v8 + 16);
      v5 = v36;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_38;
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

    if ((v37 & 1) == 0)
    {

      v3 = v35;
      goto LABEL_36;
    }

    v34 = 1 << *(v5 + 32);
    v3 = v35;
    if (v34 >= 64)
    {
      bzero(v10, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v10 = -1 << v34;
    }

    *(v5 + 16) = 0;
  }

LABEL_36:
  *v3 = v8;
  return result;
}