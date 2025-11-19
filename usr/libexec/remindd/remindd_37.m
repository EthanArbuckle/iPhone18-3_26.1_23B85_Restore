void sub_100387930(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A7B8, &qword_100797CD8);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019AB90();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A7B8, &qword_100797CD8);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_1009437E0, &unk_100797FB0);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100387AF4(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A7C0, &qword_100797CE0);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019ABA4();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A7C0, &qword_100797CE0);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_100943820, &unk_1007A4100);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100387CB8(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A7D0, &unk_100797CF0);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019ABB8();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A7D0, &unk_100797CF0);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_1009438A0, &unk_1007A4170);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100387E7C(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for Calendar.Component();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1003810F4(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_10019ABCC();
      goto LABEL_12;
    }

    sub_10038BBE4(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1003932B0(&qword_1009438D0, &type metadata accessor for Calendar.Component);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1003932B0(&qword_1009438D8, &type metadata accessor for Calendar.Component);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_100388120(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100010AAC(v6 + 1, &qword_10093A878, &unk_100797E10, &qword_1009431E0, &qword_1007A2410);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10019AD6C();
      goto LABEL_12;
    }

    sub_10001087C(v6 + 1, &qword_10093A878, &unk_100797E10, &qword_1009431E0, &qword_1007A2410);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000F5104(&qword_1009431E0, &qword_1007A2410);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

uint64_t sub_1003882F4(uint64_t result, unint64_t a2, char a3)
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
    sub_100381718(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = sub_10019AD80();
      a2 = v7;
      goto LABEL_12;
    }

    sub_10038C1B8(v5 + 1);
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

void sub_100388414(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001B868(v6 + 1, &qword_10093A868, &qword_100797DE8);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10019AEC0();
      goto LABEL_12;
    }

    sub_10001B37C(v6 + 1, &qword_10093A868, &qword_100797DE8);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100942E50, off_1008D41E0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_1003885A4(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10038193C(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_10019AED4();
      goto LABEL_12;
    }

    sub_10038C3A8(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1003932B0(&qword_10093E838, &type metadata accessor for URL);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1003932B0(&unk_100944080, &type metadata accessor for URL);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100388848(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A7D8, &qword_100797D08);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019AEFC();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A7D8, &qword_100797D08);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_100943950, &unk_1007A4200);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100388A0C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A760, &qword_100797C40);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019AF10();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A760, &qword_100797C40);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_100943260, &qword_100797F38);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100388BD0(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A768, &qword_100797C50);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019AF24();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A768, &qword_100797C50);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_1009432F0, &qword_1007B4D80);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_100388D94(uint64_t result, unint64_t a2, char a3)
{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100010AAC(v6 + 1, &unk_100943130, &unk_1007A3B50, &qword_100946510, &qword_1007A3B48);
  }

  else
  {
    if (v7 > v6)
    {
      result = sub_10019AF38();
      goto LABEL_12;
    }

    sub_10001087C(v6 + 1, &unk_100943130, &unk_1007A3B50, &qword_100946510, &qword_1007A3B48);
  }

  v8 = *v3;
  v9 = *(*v3 + 40);
  sub_1000F5104(&qword_100946510, &qword_1007A3B48);
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v10 = -1 << *(v8 + 32);
  a2 = result & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      v16 = *(*(v8 + 48) + 8 * a2);
      result = dispatch thunk of static Equatable.== infix(_:_:)();
      if (result)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v12 + 48) + 8 * a2) = v5;
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

uint64_t sub_100388F68(uint64_t a1, unint64_t a2, char a3)
{
  v34 = a1;
  v6 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*v3 + 16);
  v13 = *(*v3 + 24);
  v31 = v3;
  v32 = v7;
  if (v13 > v12 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100381C98(v12 + 1);
  }

  else
  {
    if (v13 > v12)
    {
      sub_10019B08C();
      goto LABEL_12;
    }

    sub_10038C6C4(v12 + 1);
  }

  v14 = *v3;
  v15 = *(*v3 + 40);
  sub_1003932B0(&qword_100943EE0, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline);
  v16 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v17 = v14 + 56;
  v33 = v14;
  v18 = -1 << *(v14 + 32);
  a2 = v16 & ~v18;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v19 = ~v18;
    v22 = *(v7 + 16);
    v21 = v7 + 16;
    v20 = v22;
    v23 = *(v21 + 56);
    do
    {
      v20(v11, *(v33 + 48) + v23 * a2, v6);
      sub_1003932B0(&qword_100943EE8, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline);
      v24 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v21 - 8))(v11, v6);
      if (v24)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v19;
    }

    while (((*(v17 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v25 = v32;
  v26 = *v31;
  *(v26 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v25 + 32))(*(v26 + 48) + *(v25 + 72) * a2, v34, v6, v9);
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (!v29)
  {
    *(v26 + 16) = v30;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_10038920C(Swift::UInt a1, Swift::UInt a2, Swift::UInt a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a5)
  {
    sub_100382270(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_10019B45C();
      goto LABEL_16;
    }

    sub_10038CC20(v9 + 1);
  }

  v11 = *v5;
  v12 = *(*v5 + 40);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  NSObject.hash(into:)();
  NSObject.hash(into:)();
  v13 = Hasher._finalize()();
  v14 = -1 << *(v11 + 32);
  a4 = v13 & ~v14;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v15 = ~v14;
    do
    {
      v16 = (*(v11 + 48) + 24 * a4);
      if (*v16 == a1)
      {
        v17 = v16[1];
        v18 = v16[2];
        sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
        v19 = v17;
        v20 = v18;
        if (static NSObject.== infix(_:_:)())
        {
          v21 = static NSObject.== infix(_:_:)();

          if (v21)
          {
            ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);
            break;
          }
        }

        else
        {
        }
      }

      a4 = (a4 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_16:
  v22 = *v27;
  *(*v27 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v23 = (*(v22 + 48) + 24 * a4);
  *v23 = a1;
  v23[1] = a2;
  v23[2] = a3;
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }
}

uint64_t sub_100389400(uint64_t a1, unint64_t a2, char a3)
{
  v7 = type metadata accessor for RDPermanentlyHiddenReminder();
  v29 = *(v7 - 8);
  v8 = *(v29 + 64);
  __chkstk_darwin(v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*v3 + 16);
  v12 = *(*v3 + 24);
  v28 = v3;
  if (v12 > v11 && (a3 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a3)
  {
    sub_1003824F8(v11 + 1);
  }

  else
  {
    if (v12 > v11)
    {
      sub_10019B5C8();
      goto LABEL_15;
    }

    sub_10038CE88(v11 + 1);
  }

  v13 = *v3;
  v14 = *(*v3 + 40);
  Hasher.init(_seed:)();
  type metadata accessor for UUID();
  sub_1003932B0(&qword_10093B410, &type metadata accessor for UUID);
  dispatch thunk of Hashable.hash(into:)();
  v15 = *(v7 + 20);
  type metadata accessor for Date();
  sub_1003932B0(&unk_1009431A0, &type metadata accessor for Date);
  dispatch thunk of Hashable.hash(into:)();
  v16 = Hasher._finalize()();
  v17 = -1 << *(v13 + 32);
  a2 = v16 & ~v17;
  if ((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v18 = ~v17;
    v19 = *(v29 + 72);
    do
    {
      sub_1003938B4(*(v13 + 48) + v19 * a2, v10, type metadata accessor for RDPermanentlyHiddenReminder);
      if (static UUID.== infix(_:_:)())
      {
        v20 = *(v7 + 20);
        v21 = static Date.== infix(_:_:)();
        sub_1001A3AF4(v10);
        if (v21)
        {
          ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          break;
        }
      }

      else
      {
        sub_1001A3AF4(v10);
      }

      a2 = (a2 + 1) & v18;
    }

    while (((*(v13 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_15:
  v22 = *v28;
  *(*v28 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = sub_10039391C(a1, *(v22 + 48) + *(v29 + 72) * a2, type metadata accessor for RDPermanentlyHiddenReminder);
  v24 = *(v22 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (v25)
  {
    __break(1u);
  }

  else
  {
    *(v22 + 16) = v26;
  }

  return result;
}

void sub_1003896EC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001B868(v6 + 1, &unk_100943F90, &qword_1007A46E0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10019B7AC();
      goto LABEL_12;
    }

    sub_10001B37C(v6 + 1, &unk_100943F90, &qword_1007A46E0);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1000F5104(&qword_10093AA30, &qword_1007AE460);
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

Swift::Int sub_100389880(Swift::Int result, unint64_t a2, char a3)
{
  v29 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_45;
  }

  if (a3)
  {
    sub_1003828C0(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = sub_10019B7C0();
      goto LABEL_45;
    }

    sub_10038D20C(v5 + 1);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();

  result = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  a2 = result & ~v9;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v28 = ~v9;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 <= 1)
      {
        if (*(*(v7 + 48) + a2))
        {
          v11 = 0xD00000000000002DLL;
        }

        else
        {
          v11 = 0xD000000000000030;
        }

        if (*(*(v7 + 48) + a2))
        {
          v12 = "butesAutoTrainer";
        }

        else
        {
          v12 = "REMCDTemplateOperationQueueItem";
        }
      }

      else if (v10 == 2)
      {
        v11 = 0xD000000000000034;
        v12 = "d.ICCloudConfigurationUpdater";
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0xD000000000000031;
        }

        else
        {
          v11 = 0xD00000000000001BLL;
        }

        if (v10 == 3)
        {
          v12 = "atchUpSyncController";
        }

        else
        {
          v12 = "ActivityScheduler";
        }
      }

      v13 = v12 | 0x8000000000000000;
      v14 = 0xD000000000000030;
      v15 = 0xD000000000000034;
      v16 = 0xD000000000000031;
      if (v29 == 3)
      {
        v17 = "atchUpSyncController";
      }

      else
      {
        v16 = 0xD00000000000001BLL;
        v17 = "ActivityScheduler";
      }

      if (v29 != 2)
      {
        v15 = v16;
      }

      v18 = "d.ICCloudConfigurationUpdater";
      if (v29 != 2)
      {
        v18 = v17;
      }

      if (v29)
      {
        v14 = 0xD00000000000002DLL;
        v19 = "butesAutoTrainer";
      }

      else
      {
        v19 = "REMCDTemplateOperationQueueItem";
      }

      v20 = v29 <= 1u ? v14 : v15;
      v21 = v29 <= 1u ? v19 : v18;
      if (v11 == v20 && v13 == (v21 | 0x8000000000000000))
      {
        goto LABEL_48;
      }

      v22 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v22)
      {
        goto LABEL_49;
      }

      a2 = (a2 + 1) & v28;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_45:
  v23 = *v27;
  *(*v27 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v23 + 48) + a2) = v29;
  v24 = *(v23 + 16);
  v25 = __OFADD__(v24, 1);
  v26 = v24 + 1;
  if (!v25)
  {
    *(v23 + 16) = v26;
    return result;
  }

  __break(1u);
LABEL_48:

LABEL_49:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void sub_100389B58(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001B868(v6 + 1, &qword_10093A850, &qword_100797DD0);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10019B900();
      goto LABEL_12;
    }

    sub_10001B37C(v6 + 1, &qword_10093A850, &qword_100797DD0);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &unk_10093F610, NSString_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100389CE8(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A848, &qword_1007A4740);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019B914();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A848, &qword_1007A4740);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_100944000, &unk_100798010);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_100389EAC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_10001B868(v6 + 1, &qword_10093A758, &qword_100797C38);
  }

  else
  {
    if (v7 > v6)
    {
      sub_10019B928();
      goto LABEL_12;
    }

    sub_10001B37C(v6 + 1, &qword_10093A758, &qword_100797C38);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &unk_10093F580, REMAccountStorage_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10038A03C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A770, &qword_100797C58);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019BA7C();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A770, &qword_100797C58);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_1009433D0, &unk_100797F50);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10038A200(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A778, &qword_100797C60);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019BA90();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A778, &qword_100797C60);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_100943420, &unk_1007A3DC0);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10038A3C4(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A780, &qword_100797C68);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019BAA4();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A780, &qword_100797C68);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_100943470, &unk_100797F60);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10038A588(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_10093A788, &unk_100797C70);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019BAB8();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_10093A788, &unk_100797C70);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_1009434C0, &unk_1007A3E50);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10038A74C(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_1009435C0, &unk_100797CA0);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019BACC();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_1009435C0, &unk_100797CA0);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&qword_10094F310, &qword_100797F78);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void sub_10038A910(uint64_t a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_100382BBC(v5 + 1, &qword_100943620, &qword_1007A3F40);
  }

  else
  {
    if (v6 > v5)
    {
      sub_10019BAE0();
      goto LABEL_12;
    }

    sub_10038D4D8(v5 + 1, &qword_100943620, &qword_1007A3F40);
  }

  v7 = *v3;
  v8 = *(*v3 + 40);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  v9 = Hasher._finalize()();
  v10 = -1 << *(v7 + 32);
  a2 = v9 & ~v10;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_1000060C8(0, &qword_100945FC0, NSObject_ptr);
    do
    {
      sub_1000F5104(&unk_10094F390, &unk_100797F80);
      v12 = *(*(v7 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v18;
  *(*v18 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t sub_10038AAD4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000F5104(&qword_100942EE0, &qword_1007A3970);
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

uint64_t sub_10038AD0C(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000F5104(&qword_10093A708, &unk_100797B68);
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
      sub_1003932B0(&qword_10093B410, &type metadata accessor for UUID);
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

uint64_t sub_10038B028(uint64_t a1)
{
  v2 = v1;
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v4 = *(PredicateType - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(PredicateType);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000F5104(&qword_10093A820, &qword_1007A4570);
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
      (*(v36 + 16))(v7, *(result + 48) + v23 * (v20 | (v12 << 6)), PredicateType);
      v24 = *(v10 + 40);
      sub_1003932B0(&qword_10093A818, &type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType);
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
      (*v33)(*(v10 + 48) + v19 * v23, v7, PredicateType);
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

uint64_t sub_10038B344(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for REMManualOrdering.PinnedList();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000F5104(&unk_100943590, &unk_100797C90);
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
      sub_1003932B0(&qword_100943580, &type metadata accessor for REMManualOrdering.PinnedList);
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

uint64_t sub_10038B660(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for REMAccountsListDataView.CachableProperty();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000F5104(&qword_100943DA0, &qword_100797DA0);
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
      sub_1003932B0(&qword_100943D90, &type metadata accessor for REMAccountsListDataView.CachableProperty);
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

uint64_t sub_10038B990(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000F5104(&qword_10093A870, &qword_100797DF0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v29 = v2;
    v30 = v3;
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
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v15 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v18 = *(*(v3 + 48) + 8 * (v15 | (v7 << 6)));
      v19 = *(v6 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v20 = v18;
      String.hash(into:)();
      v21 = Hasher._finalize()();

      v22 = -1 << *(v6 + 32);
      v23 = v21 & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v13 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v13 + 8 * v24);
          if (v28 != -1)
          {
            v14 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v23) & ~*(v13 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(*(v6 + 48) + 8 * v14) = v20;
      ++*(v6 + 16);
      v3 = v30;
    }

    v16 = v7;
    while (1)
    {
      v7 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v29;
        goto LABEL_28;
      }

      v17 = *(v8 + 8 * v7);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v11 = (v17 - 1) & v17;
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

uint64_t sub_10038BBE4(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for Calendar.Component();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000F5104(&qword_1009438E0, &unk_1007A41A0);
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
      sub_1003932B0(&qword_1009438D0, &type metadata accessor for Calendar.Component);
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

uint64_t sub_10038BF00(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000F5104(&qword_100943E70, &qword_100797DA8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (!*(v3 + 16))
  {

LABEL_33:
    *v2 = v6;
    return result;
  }

  v28 = v2;
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
    v16 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v19 = (*(v3 + 48) + 32 * (v16 | (v7 << 6)));
    v29 = v19[1];
    v30 = *v19;
    v20 = *(v6 + 40);
    Hasher.init(_seed:)();
    if (*(&v30 + 1))
    {
      Hasher._combine(_:)(1u);

      String.hash(into:)();
      if (*(&v29 + 1))
      {
        goto LABEL_19;
      }
    }

    else
    {
      Hasher._combine(_:)(0);

      if (*(&v29 + 1))
      {
LABEL_19:
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        goto LABEL_22;
      }
    }

    Hasher._combine(_:)(0);
LABEL_22:
    result = Hasher._finalize()();
    v21 = -1 << *(v6 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
    {
      v24 = 0;
      v25 = (63 - v21) >> 6;
      v14 = v30;
      while (++v23 != v25 || (v24 & 1) == 0)
      {
        v26 = v23 == v25;
        if (v23 == v25)
        {
          v23 = 0;
        }

        v24 |= v26;
        v27 = *(v12 + 8 * v23);
        if (v27 != -1)
        {
          v13 = __clz(__rbit64(~v27)) + (v23 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_35;
    }

    v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
    v14 = v30;
LABEL_9:
    *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
    v15 = (*(v6 + 48) + 32 * v13);
    *v15 = v14;
    v15[1] = v29;
    ++*(v6 + 16);
  }

  v17 = v7;
  while (1)
  {
    v7 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v7 >= v11)
    {

      v2 = v28;
      goto LABEL_33;
    }

    v18 = *(v3 + 56 + 8 * v7);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v10 = (v18 - 1) & v18;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_10038C1B8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000F5104(&qword_10093A858, &qword_100797DD8);
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

uint64_t sub_10038C3A8(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for URL();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000F5104(&qword_10093A860, &qword_100797DE0);
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
      sub_1003932B0(&qword_10093E838, &type metadata accessor for URL);
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

uint64_t sub_10038C6C4(uint64_t a1)
{
  v2 = v1;
  v37 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v4 = *(v37 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v37);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000F5104(&qword_100943EF0, &unk_100797DB0);
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
      sub_1003932B0(&qword_100943EE0, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline);
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

uint64_t sub_10038C9E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000F5104(&qword_100943A70, &qword_100797D20);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v30 = v2;
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
      v18 = *(v3 + 48) + 16 * (v15 | (v7 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v6 + 40);
      Hasher.init(_seed:)();
      v22 = v19;
      NSObject.hash(into:)();
      Hasher._combine(_:)(v20);
      result = Hasher._finalize()();
      v23 = -1 << *(v6 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v6 + 48) + 16 * v13);
      *v14 = v22;
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

        v2 = v30;
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

uint64_t sub_10038CC20(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000F5104(&qword_10093A748, &qword_100797BF8);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v33 = v2;
    v34 = v3;
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
    v12 = (v9 + 63) >> 6;
    v13 = result + 56;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v19 = (*(v3 + 48) + 24 * (v16 | (v7 << 6)));
      v20 = *v19;
      v21 = v19[1];
      v22 = v19[2];
      v23 = *(v6 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v20);
      v24 = v21;
      v25 = v22;
      NSObject.hash(into:)();
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v26 = -1 << *(v6 + 32);
      v27 = result & ~v26;
      v28 = v27 >> 6;
      if (((-1 << v27) & ~*(v13 + 8 * (v27 >> 6))) == 0)
      {
        v29 = 0;
        v30 = (63 - v26) >> 6;
        while (++v28 != v30 || (v29 & 1) == 0)
        {
          v31 = v28 == v30;
          if (v28 == v30)
          {
            v28 = 0;
          }

          v29 |= v31;
          v32 = *(v13 + 8 * v28);
          if (v32 != -1)
          {
            v14 = __clz(__rbit64(~v32)) + (v28 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v14 = __clz(__rbit64((-1 << v27) & ~*(v13 + 8 * (v27 >> 6)))) | v27 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = (*(v6 + 48) + 24 * v14);
      *v15 = v20;
      v15[1] = v24;
      v15[2] = v25;
      ++*(v6 + 16);
      v3 = v34;
    }

    v17 = v7;
    while (1)
    {
      v7 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v7 >= v12)
      {

        v2 = v33;
        goto LABEL_28;
      }

      v18 = *(v8 + 8 * v7);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v11 = (v18 - 1) & v18;
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

uint64_t sub_10038CE88(uint64_t a1)
{
  v2 = v1;
  v4 = type metadata accessor for RDPermanentlyHiddenReminder();
  v37 = *(v4 - 8);
  v38 = v4;
  v5 = *(v37 + 64);
  __chkstk_darwin(v4);
  v7 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v2;
  if (*(*v2 + 24) > a1)
  {
    v9 = *(*v2 + 24);
  }

  sub_1000F5104(&qword_10093A750, &qword_100797C30);
  result = static _SetStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v8 + 16))
  {
    v35 = v2;
    v36 = v8;
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
    v18 = result + 56;
    while (v16)
    {
      v20 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_17:
      v23 = *(v8 + 48);
      v24 = *(v37 + 72);
      sub_1003938B4(v23 + v24 * (v20 | (v12 << 6)), v7, type metadata accessor for RDPermanentlyHiddenReminder);
      v25 = *(v11 + 40);
      Hasher.init(_seed:)();
      type metadata accessor for UUID();
      sub_1003932B0(&qword_10093B410, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      v26 = *(v38 + 20);
      type metadata accessor for Date();
      sub_1003932B0(&unk_1009431A0, &type metadata accessor for Date);
      dispatch thunk of Hashable.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v11 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v18 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v18 + 8 * v29);
          if (v33 != -1)
          {
            v19 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v19 = __clz(__rbit64((-1 << v28) & ~*(v18 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      result = sub_10039391C(v7, *(v11 + 48) + v19 * v24, type metadata accessor for RDPermanentlyHiddenReminder);
      ++*(v11 + 16);
      v8 = v36;
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

        v2 = v35;
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
    *v2 = v11;
  }

  return result;
}

uint64_t sub_10038D20C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  if (*(*v1 + 24) > a1)
  {
    v4 = *(*v1 + 24);
  }

  sub_1000F5104(&qword_10093A740, &qword_100797BF0);
  result = static _SetStorage.resize(original:capacity:move:)();
  v6 = result;
  if (*(v3 + 16))
  {
    v26 = v2;
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
      v17 = *(*(v3 + 48) + (v14 | (v7 << 6)));
      v18 = *(v6 + 40);
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
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

        goto LABEL_30;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v6 + 48) + v13) = v17;
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

        v2 = v26;
        goto LABEL_28;
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

uint64_t sub_10038D4D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  if (*(*v3 + 24) > a1)
  {
    v6 = *(*v3 + 24);
  }

  sub_1000F5104(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v8 = result;
  if (*(v5 + 16))
  {
    v29 = v4;
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
      v19 = *(*(v5 + 48) + 8 * (v16 | (v9 << 6)));
      v20 = *(v8 + 40);
      Hasher.init(_seed:)();
      v21 = v19;
      NSObject.hash(into:)();
      result = Hasher._finalize()();
      v22 = -1 << *(v8 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_30;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v8 + 48) + 8 * v15) = v21;
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

        v4 = v29;
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

void (*sub_10038D6F8(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return destroy for RDSavedDueDateDeltaAlert;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10038D778(uint64_t (*result)(uint64_t *), unint64_t a2, uint64_t a3))(uint64_t *)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_100393C68;
  }

  __break(1u);
  return result;
}

uint64_t (*sub_10038D7F8(uint64_t (*result)(uint64_t *a1), unint64_t a2, uint64_t a3))(uint64_t *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);

LABEL_5:
    *v3 = v5;
    return sub_10038D878;
  }

  __break(1u);
  return result;
}

Swift::Int sub_10038D894(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100942EE0, &qword_1007A3970);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (2)
    {
      v7 = (v6 + 16 * v4);
      v9 = *v7;
      v8 = v7[1];
      v10 = *(v3 + 40);
      Hasher.init(_seed:)();

      String.hash(into:)();
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      for (i = result & v12; ; i = (i + 1) & v12)
      {
        v14 = *(v5 + 8 * (i >> 6));
        if (((1 << i) & v14) == 0)
        {
          break;
        }

        v15 = (*(v3 + 48) + 16 * i);
        if (*v15 != v9 || v15[1] != v8)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if ((result & 1) == 0)
          {
            continue;
          }
        }

        goto LABEL_4;
      }

      *(v5 + 8 * (i >> 6)) = (1 << i) | v14;
      v17 = (*(v3 + 48) + 16 * i);
      *v17 = v9;
      v17[1] = v8;
      v18 = *(v3 + 16);
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (!v19)
      {
        *(v3 + 16) = v20;
LABEL_4:
        if (++v4 == v1)
        {
          return v3;
        }

        continue;
      }

      break;
    }

    __break(1u);
  }

  else
  {
    return &_swiftEmptySetSingleton;
  }

  return result;
}

unint64_t sub_10038DA10(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943198, &unk_1007A3BB8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100005F4C(v5, v6);
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

unint64_t sub_10038DB3C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100943398, &qword_1007A3D50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_100943390, &qword_1007A3D48);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &qword_100943398, &qword_1007A3D50);
      result = sub_100363F20(v6);
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

unint64_t sub_10038DD24(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943C90, &qword_10079C118);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);

      result = sub_1003649A8(v6);
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

unint64_t sub_10038DE1C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100943DF0, &qword_1007A4588);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_100943DE0, &qword_1007A4578);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &qword_100943DF0, &qword_1007A4588);
      result = sub_100363F20(v6);
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

unint64_t sub_10038E004(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100942F08, &qword_1007A3998);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v8 = *(i - 1);
      v7 = *i;

      result = sub_100005F4C(v5, v6);
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

unint64_t sub_10038E118(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100943578, &qword_1007A3EE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v21 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_100943570, &qword_1007A3EE0);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &qword_100943578, &qword_1007A3EE8);
      v12 = *v6;
      result = sub_10002B924(*v6);
      if (v14)
      {
        break;
      }

      v15 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v8[6] + 8 * result) = v12;
      v16 = v8[7];
      v17 = type metadata accessor for REMManualOrdering.PinnedList();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v15, v6 + v9, v17);
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

unint64_t sub_10038E314(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000F5104(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_10002B924(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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

unint64_t sub_10038E404(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100943DB0, &qword_1007A4558);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_100943DA8, &qword_1007A4550);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &unk_100943DB0, &qword_1007A4558);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100005F4C(*v6, v13);
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
      v19 = type metadata accessor for REMAccountsListDataView.Model.PinnedList();
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

unint64_t sub_10038E654(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943AC8, &qword_1007A4338);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      result = sub_100363FF4(v6);
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

unint64_t sub_10038E768(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943ED0, &qword_1007A4660);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = v5;
      v8 = v6;
      result = sub_100364240(v5, &qword_1009391E0, REMObjectID_ptr);
      if (v10)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v8;
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

unint64_t sub_10038E87C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943DF8, &qword_1007A4590);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100364198(v5, v6);
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

unint64_t sub_10038E980(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943FD8, &qword_1007A4710);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 1);
      v6 = *i;
      v7 = *(i - 2);

      result = sub_100364448(v7);
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

unint64_t sub_10038EA80(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943FE0, &qword_1007A4718);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *i;
      v6 = *(i - 1);
      swift_unknownObjectRetain();
      result = sub_100364498(v6);
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

unint64_t sub_10038EB8C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_1009431E8, &qword_1007A3BE8);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_1009431D8, &unk_1007A3BD8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &qword_1009431E8, &qword_1007A3BE8);
      result = sub_100363F20(v6);
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

unint64_t sub_10038ED74(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&unk_100942EC0, &qword_1007AAB60);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010364(v4, v13, &unk_100946590, &qword_100796FF0);
      result = sub_10001B0D8(v13);
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
      result = sub_100005EE0(&v15, (v3[7] + 32 * result));
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

unint64_t sub_10038EEC4(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100942F90, &qword_1007A3A20);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_100942F88, &qword_1007A3A18);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v22 = *(v3 + 72);
    v23 = v9;

    while (1)
    {
      sub_100010364(v10, v6, &qword_100942F90, &qword_1007A3A20);
      result = sub_100363F20(v6);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v8[6];
      v15 = type metadata accessor for UUID();
      v16 = *(v15 - 8);
      v17 = *(v16 + 32);
      v18 = *(v16 + 72) * v13;
      v17(v14 + v18, v6, v15);
      result = (v17)(v8[7] + v18, &v6[v23], v15);
      v19 = v8[2];
      v20 = __OFADD__(v19, 1);
      v21 = v19 + 1;
      if (v20)
      {
        goto LABEL_10;
      }

      v8[2] = v21;
      v10 += v22;
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

unint64_t sub_10038F0F8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000F5104(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);
      v9 = v7;
      result = sub_1003649A8(v8);
      if (v11)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v9;
      v12 = v5[2];
      v13 = __OFADD__(v12, 1);
      v14 = v12 + 1;
      if (v13)
      {
        goto LABEL_10;
      }

      v5[2] = v14;
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

unint64_t sub_10038F1E8(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100944068, &qword_1007A4798);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 64); ; i += 40)
    {
      v5 = *(i - 4);
      v6 = *(i - 3);
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100005F4C(v5, v6);
      if (v11)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v12 = (v3[6] + 16 * result);
      *v12 = v5;
      v12[1] = v6;
      v13 = v3[7] + 24 * result;
      *v13 = v7;
      *(v13 + 8) = v8;
      *(v13 + 16) = v9;
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

unint64_t sub_10038F2FC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100942EF8, &unk_1007A3988);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010364(v4, &v13, &qword_100942F00, &unk_1007A1740);
      v5 = v13;
      v6 = v14;
      result = sub_100005F4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100054B6C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10038F430(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100942EE8, &unk_1007A3978);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010364(v4, &v13, &qword_100942EF0, &qword_10079B8D0);
      v5 = v13;
      v6 = v14;
      result = sub_100005F4C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_100054B6C(&v15, v3[7] + 40 * result);
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 56;
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

unint64_t sub_10038F578(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100944168, &qword_1007A48C8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      swift_unknownObjectRetain();
      result = sub_100005F4C(v5, v6);
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

unint64_t sub_10038F67C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_1009439B8, &qword_1007A4268);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100005F4C(v5, v6);
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

unint64_t sub_10038F794(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943C30, &qword_1007A4458);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 56); ; i += 4)
    {
      v5 = *(i - 3);
      v6 = *(i - 2);
      v7 = *(i - 1);
      v8 = *i;

      sub_100029344(v7, v8);
      result = sub_100005F4C(v5, v6);
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

unint64_t sub_10038F94C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_1009431C8, &qword_1007A3BC8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100005F4C(v5, v6);
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

unint64_t sub_10038FAC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&unk_100942F10, &unk_1007A39A0);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 8)
    {
      v20 = v1;
      v5 = *(i - 2);
      v6 = *(i - 1);
      v8 = *i;
      v7 = i[1];
      v10 = i[2];
      v9 = i[3];
      v11 = i[4];
      v12 = i[5];

      result = sub_100005F4C(v5, v6);
      if (v14)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = (v3[6] + 16 * result);
      *v15 = v5;
      v15[1] = v6;
      v16 = (v3[7] + 48 * result);
      *v16 = v8;
      v16[1] = v7;
      v16[2] = v10;
      v16[3] = v9;
      v16[4] = v11;
      v16[5] = v12;
      v17 = v3[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v3[2] = v19;
      v1 = v20 - 1;
      if (v20 == 1)
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

unint64_t sub_10038FC0C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943348, &unk_1007A3D00);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    v4 = a1 + 32;

    while (1)
    {
      sub_100010364(v4, &v11, &qword_100943350, &unk_1007A1560);
      v5 = v11;
      result = sub_100364088(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = sub_100005EE0(&v12, (v3[7] + 32 * result));
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

unint64_t sub_10038FD34(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100942F70, &unk_1007A3A00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v22 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_100942F68, &qword_1007A39F8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &unk_100942F70, &unk_1007A3A00);
      result = sub_100363F20(v6);
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
      v18 = _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa();
      result = sub_10039391C(&v6[v9], v17 + *(*(v18 - 8) + 72) * v14, _s9UtilitiesO47REMCDListSectionThreadSafePartialRepresentationVMa);
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

unint64_t sub_10038FF50(uint64_t a1)
{
  v2 = sub_1000F5104(&unk_100943550, &unk_1007A3ED0);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v23 - v5);
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_100943548, &qword_1007A3EC8);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &unk_100943550, &unk_1007A3ED0);
      v12 = *v6;
      v13 = v6[1];
      result = sub_100005F4C(*v6, v13);
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
      v19 = type metadata accessor for Date();
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

unint64_t sub_10039013C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943AE8, &qword_1007A4350);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 24)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_100005F4C(v5, v6);
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

unint64_t sub_100390238(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_1009433A0, &qword_1007A3D58);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&unk_100943380, &unk_1007A3D38);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &qword_1009433A0, &qword_1007A3D58);
      result = sub_100363F20(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for UUID();
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

unint64_t sub_10039045C(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000F5104(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v7 = *i;
      v8 = *(i - 1);

      result = sub_10002B924(v8);
      if (v10)
      {
        break;
      }

      *(v5 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v5[6] + 8 * result) = v8;
      *(v5[7] + 8 * result) = v7;
      v11 = v5[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v5[2] = v13;
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

unint64_t sub_10039059C(uint64_t a1)
{
  v2 = sub_1000F5104(&qword_100943F10, &qword_1007A4680);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v20 - v5;
  v7 = *(a1 + 16);
  if (v7)
  {
    sub_1000F5104(&qword_100943EF8, &qword_1007A4678);
    v8 = static _DictionaryStorage.allocate(capacity:)();
    v9 = *(v2 + 48);
    v10 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v11 = *(v3 + 72);

    while (1)
    {
      sub_100010364(v10, v6, &qword_100943F10, &qword_1007A4680);
      result = sub_1003647E8(v6);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v8 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v15 = v8[6];
      v16 = type metadata accessor for REMSuggestedAttributesHarvester.CachedSuggestionType();
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

unint64_t sub_100390784(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943F18, &qword_1007A4688);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = (a1 + 40); ; i += 2)
    {
      v5 = *(i - 1);
      v6 = *i;
      result = sub_1003648BC(v5);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      *(v3[7] + 8 * result) = v6;
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

unint64_t sub_100390874(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_10093D5A8, &unk_10079B230);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 40); ; i += 2)
    {
      v6 = *(i - 1);
      v5 = *i;

      result = sub_100364908(v6);
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

unint64_t sub_1003909A8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000F5104(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      v10 = v9;
      result = sub_100005F4C(v7, v8);
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

unint64_t sub_100390AB8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    sub_1000F5104(a2, a3);
    v5 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 3)
    {
      v7 = *(i - 2);
      v8 = *(i - 1);
      v9 = *i;

      result = sub_100005F4C(v7, v8);
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

unint64_t sub_100390BB4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_1009431F8, &qword_1007A3BF8);
    v3 = static _DictionaryStorage.allocate(capacity:)();

    for (i = (a1 + 48); ; i += 2)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v13 = *i;

      result = sub_100005F4C(v5, v6);
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
    return _swiftEmptyDictionarySingleton;
  }

  return result;
}

void sub_100390D84(unint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v8 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v8 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v9 = *(a1 + 8 * v8 + 32);
      }

      v10 = v9;
      v11 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      v14 = v9;
      sub_10036332C(&v14, a2, a3, a4);

      if (!v4)
      {
        ++v8;
        if (v11 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t sub_100390F14(uint64_t a1, uint64_t a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = &type metadata for Int64;
    *(v3 + 56) = &type metadata for String;
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_100391108(uint64_t a1, char a2)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100791340;

  v4 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v5)
  {
    v6 = v4;
    v7 = v5;

    *(v3 + 56) = &type metadata for String;
    *(v3 + 32) = v6;
    *(v3 + 40) = v7;
    *(v3 + 88) = sub_1000F5104(&qword_100939340, &qword_1007A3950);
    *(v3 + 64) = a2;
    v8 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v10 = [objc_opt_self() predicateWithFormat:v8 argumentArray:isa];

    return v10;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v12._object = 0x80000001007EC120;
    v12._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v12);
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

unint64_t sub_100391354(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000F5104(&unk_100942EB0, &qword_100797BA8);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v19 = v1;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v4 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v19 = v1;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    return v3;
  }

LABEL_9:
  v5 = 0;
  v6 = (v3 + 7);
  v18 = v4;
  while ((v19 & 0xC000000000000001) != 0)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v7 = result;
    v8 = __OFADD__(v5++, 1);
    if (v8)
    {
      goto LABEL_25;
    }

LABEL_17:
    v9 = v3[5];
    sub_1000F5104(&unk_100939F10, &qword_100797F30);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v10 = -1 << *(v3 + 32);
    v11 = result & ~v10;
    v12 = v11 >> 6;
    v13 = *&v6[8 * (v11 >> 6)];
    v14 = 1 << v11;
    if (((1 << v11) & v13) != 0)
    {
      v15 = ~v10;
      while (1)
      {
        v20 = *(v3[6] + 8 * v11);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v6[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v4 = v18;
          goto LABEL_22;
        }
      }

      v4 = v18;
      if (v5 == v18)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *&v6[8 * v12] = v14 | v13;
      *(v3[6] + 8 * v11) = v7;
      v16 = v3[2];
      v8 = __OFADD__(v16, 1);
      v17 = v16 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      v3[2] = v17;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v19 + 32 + 8 * v5);

  v8 = __OFADD__(v5++, 1);
  if (!v8)
  {
    goto LABEL_17;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

void sub_1003915C4(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_3:
      sub_1000F5104(&qword_10093A838, &unk_1007A4510);
      v3 = static _SetStorage.allocate(capacity:)();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = _CocoaArrayWrapper.endIndex.getter();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = NSObject._rawHashValue(seed:)(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = static NSObject.== infix(_:_:)();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = NSObject._rawHashValue(seed:)(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for REMObjectID_Codable();
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = static NSObject.== infix(_:_:)();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

void sub_1003919B4(unint64_t a1, uint64_t *a2, uint64_t *a3, unint64_t *a4, uint64_t *a5)
{
  v6 = a1 >> 62;
  if (a1 >> 62)
  {
    v10 = a3;
    v11 = a2;
    v12 = _CocoaArrayWrapper.endIndex.getter();
    a2 = v11;
    a3 = v10;
    if (v12)
    {
LABEL_3:
      sub_1000F5104(a2, a3);
      v7 = static _SetStorage.allocate(capacity:)();
      v8 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v6)
      {
        goto LABEL_4;
      }

LABEL_8:
      v9 = _CocoaArrayWrapper.endIndex.getter();
      if (!v9)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v7 = &_swiftEmptySetSingleton;
  v8 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v6)
  {
    goto LABEL_8;
  }

LABEL_4:
  v9 = *(v8 + 16);
  if (!v9)
  {
    return;
  }

LABEL_9:
  v13 = (v7 + 7);
  v46 = v9;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v14 = 0;
    while (1)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v16 = __OFADD__(v14++, 1);
      if (v16)
      {
        break;
      }

      v17 = v15;
      v18 = NSObject._rawHashValue(seed:)(v7[5]);
      v19 = -1 << *(v7 + 32);
      v20 = v18 & ~v19;
      v21 = v20 >> 6;
      v22 = *&v13[8 * (v20 >> 6)];
      v23 = 1 << v20;
      if (((1 << v20) & v22) != 0)
      {
        v24 = ~v19;
        sub_1000060C8(0, a4, a5);
        while (1)
        {
          v25 = *(v7[6] + 8 * v20);
          v26 = static NSObject.== infix(_:_:)();

          if (v26)
          {
            break;
          }

          v20 = (v20 + 1) & v24;
          v21 = v20 >> 6;
          v22 = *&v13[8 * (v20 >> 6)];
          v23 = 1 << v20;
          if (((1 << v20) & v22) == 0)
          {
            v9 = v46;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v9 = v46;
        if (v14 == v46)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v13[8 * v21] = v23 | v22;
        *(v7[6] + 8 * v20) = v17;
        v27 = v7[2];
        v16 = __OFADD__(v27, 1);
        v28 = v27 + 1;
        if (v16)
        {
          goto LABEL_32;
        }

        v7[2] = v28;
        if (v14 == v9)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v29 = 0;
    v43 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    while (v29 != v43)
    {
      v30 = v7[5];
      v31 = *(a1 + 32 + 8 * v29);
      v32 = NSObject._rawHashValue(seed:)(v30);
      v33 = -1 << *(v7 + 32);
      v34 = v32 & ~v33;
      v35 = v34 >> 6;
      v36 = *&v13[8 * (v34 >> 6)];
      v37 = 1 << v34;
      if (((1 << v34) & v36) != 0)
      {
        v38 = ~v33;
        sub_1000060C8(0, a4, a5);
        while (1)
        {
          v39 = *(v7[6] + 8 * v34);
          v40 = static NSObject.== infix(_:_:)();

          if (v40)
          {
            break;
          }

          v34 = (v34 + 1) & v38;
          v35 = v34 >> 6;
          v36 = *&v13[8 * (v34 >> 6)];
          v37 = 1 << v34;
          if (((1 << v34) & v36) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v13[8 * v35] = v37 | v36;
        *(v7[6] + 8 * v34) = v31;
        v41 = v7[2];
        v16 = __OFADD__(v41, 1);
        v42 = v41 + 1;
        if (v16)
        {
          goto LABEL_34;
        }

        v7[2] = v42;
      }

      if (++v29 == v46)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_100391CDC(uint64_t a1)
{
  PredicateType = type metadata accessor for REMCustomSmartListFilterDescriptor.PostFetchPredicateType();
  v3 = *(PredicateType - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(PredicateType);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = __chkstk_darwin(v5);
  v10 = &v17 - v9;
  v11 = *(a1 + 16);
  if (v11)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v7, v15, PredicateType);
      sub_100379BD8(v10, v7);
      result = (*(v12 - 8))(v10, PredicateType);
      v15 += v16;
      --v11;
    }

    while (v11);
  }

  return result;
}

void *sub_100391E24(uint64_t a1)
{
  v2 = type metadata accessor for Calendar.Component();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1000F5104(&qword_1009438E0, &unk_1007A41A0);
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
      sub_1003932B0(&qword_1009438D0, &type metadata accessor for Calendar.Component);
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
          sub_1003932B0(&qword_1009438D8, &type metadata accessor for Calendar.Component);
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

void sub_100392144(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v4 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v4 = *(a1 + 8 * j + 32);
      }

      v5 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      sub_100378D70(&v6, v4);

      if (v5 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t sub_100392408(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t *a5, uint64_t *a6)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_100791340;

  v12 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v13)
  {
    v14 = v12;
    v15 = v13;

    *(v11 + 56) = &type metadata for String;
    *(v11 + 32) = v14;
    *(v11 + 40) = v15;
    *(v11 + 88) = sub_1000F5104(a3, a4);
    *(v11 + 64) = a2;
    v16 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v18 = [objc_opt_self() predicateWithFormat:v16 argumentArray:isa];

    return v18;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v20._object = 0x80000001007EC120;
    v20._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v20);
    sub_1000F5104(a5, a6);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10039268C(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100791340;

  v8 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v9)
  {
    v10 = v8;
    v11 = v9;

    *(v7 + 56) = &type metadata for String;
    *(v7 + 32) = v10;
    *(v7 + 40) = v11;
    *(v7 + 88) = &type metadata for Bool;
    *(v7 + 64) = a2 & 1;
    v12 = String._bridgeToObjectiveC()();
    isa = Array._bridgeToObjectiveC()().super.isa;

    v14 = [objc_opt_self() predicateWithFormat:v12 argumentArray:isa];

    return v14;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v16._object = 0x80000001007EC120;
    v16._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v16);
    sub_1000F5104(a3, a4);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

id sub_1003928FC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for String.Encoding();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1004E4464(a1, a2, a3, a4, a5, 0);
  if (!v15)
  {
    return 0;
  }

  static String.Encoding.utf8.getter();
  v16 = String.data(using:allowLossyConversion:)();
  v18 = v17;

  (*(v11 + 8))(v14, v10);
  if (v18 >> 60 == 15)
  {
    return 0;
  }

  if (qword_100935F30 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100006654(v20, qword_100942E20);
  v21 = a1;
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    v45 = v25;
    *v24 = 136315138;
    v26 = [v21 recordID];
    v27 = [v26 ckShortDescription];

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;

    v31 = sub_10000668C(v28, v30, &v45);

    *(v24 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v22, v23, "Deserializing reminderIDsMergeableOrdering from readMaybeBigStringOrderedSet() {recordID: %s}", v24, 0xCu);
    sub_10000607C(v25);
  }

  v32 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v45 = 0;
  v34 = [v32 reminderIDsMergeableOrderingFromReminderIDUUIDStringsJSONData:isa error:&v45];

  v35 = v45;
  if (!v34)
  {
    v36 = v35;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    swift_errorRetain();
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v45 = v40;
      *v39 = 136315138;
      swift_getErrorValue();
      v41 = Error.localizedDescription.getter();
      v43 = sub_10000668C(v41, v42, &v45);

      *(v39 + 4) = v43;
      _os_log_impl(&_mh_execute_header, v37, v38, "Failed to parse UUID strings JSON data {error: %s}", v39, 0xCu);
      sub_10000607C(v40);

      sub_100031A14(v16, v18);
    }

    else
    {
      sub_100031A14(v16, v18);
    }

    return 0;
  }

  return v34;
}

uint64_t sub_100392D78()
{
  v0 = _findStringSwitchCaseWithCache(cases:string:cache:)();

  if (v0 >= 0x16)
  {
    return 22;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_100392DF0(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_1000F5104(&qword_100943328, &qword_1007A3CF0);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v4 = v1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      result = _CocoaArrayWrapper.endIndex.getter();
      v5 = result;
      if (!result)
      {
        return v3;
      }

      goto LABEL_9;
    }
  }

  else if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  v3 = _swiftEmptySetSingleton;
  v4 = v1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return v3;
  }

LABEL_9:
  v6 = 0;
  v7 = v3 + 7;
  v21 = v1 & 0xC000000000000001;
  v19 = v1 + 32;
  v20 = v1 & 0xFFFFFFFFFFFFFF8;
  while (v21)
  {
    result = specialized _ArrayBuffer._getElementSlowPath(_:)();
    v8 = result;
    v9 = __OFADD__(v6++, 1);
    if (v9)
    {
      goto LABEL_25;
    }

LABEL_18:
    v10 = v3[5];
    type metadata accessor for AnyCancellable();
    sub_1003932B0(&qword_100943330, &type metadata accessor for AnyCancellable);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v11 = -1 << *(v3 + 32);
    v12 = result & ~v11;
    v13 = v12 >> 6;
    v14 = v7[v12 >> 6];
    v15 = 1 << v12;
    if (((1 << v12) & v14) != 0)
    {
      v16 = ~v11;
      sub_1003932B0(&qword_100943338, &type metadata accessor for AnyCancellable);
      while (1)
      {
        v22 = *(v3[6] + 8 * v12);
        result = dispatch thunk of static Equatable.== infix(_:_:)();
        if (result)
        {
          break;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = v7[v12 >> 6];
        v15 = 1 << v12;
        if (((1 << v12) & v14) == 0)
        {
          goto LABEL_22;
        }
      }
    }

    else
    {
LABEL_22:
      v7[v13] = v15 | v14;
      *(v3[6] + 8 * v12) = v8;
      v17 = v3[2];
      v9 = __OFADD__(v17, 1);
      v18 = v17 + 1;
      if (v9)
      {
        goto LABEL_26;
      }

      v3[2] = v18;
    }

    if (v6 == v5)
    {
      return v3;
    }
  }

  if (v6 >= *(v20 + 16))
  {
    goto LABEL_27;
  }

  v8 = *(v19 + 8 * v6);

  v9 = __OFADD__(v6++, 1);
  if (!v9)
  {
    goto LABEL_18;
  }

LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

uint64_t sub_100393084(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v6._countAndFlagsBits = sub_1003AB9F4(a4);
  String.append(_:)(v6);

  v7._countAndFlagsBits = 4203808;
  v7._object = 0xE300000000000000;
  String.append(_:)(v7);
  sub_1000F5104(&unk_100938E80, &unk_1007959D0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_100791340;

  v9 = dispatch thunk of AnyKeyPath._kvcKeyPathString.getter();
  if (v10)
  {
    v11 = v9;
    v12 = v10;

    *(v8 + 56) = &type metadata for String;
    *(v8 + 32) = v11;
    *(v8 + 40) = v12;
    *(v8 + 88) = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
    *(v8 + 64) = a2;
    *(v8 + 72) = a3;
    v13 = String._bridgeToObjectiveC()();

    isa = Array._bridgeToObjectiveC()().super.isa;

    v15 = [objc_opt_self() predicateWithFormat:v13 argumentArray:isa];

    return v15;
  }

  else
  {
    _StringGuts.grow(_:)(46);
    v17._object = 0x80000001007EC120;
    v17._countAndFlagsBits = 0xD00000000000002CLL;
    String.append(_:)(v17);
    sub_1000F5104(&qword_10093F478, &unk_1007A76E0);
    _print_unlocked<A, B>(_:_:)();
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_1003932B0(unint64_t *a1, void (*a2)(uint64_t))
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

void *sub_1003932F8(uint64_t a1)
{
  v2 = type metadata accessor for REMSuggestedAttributeOutput.Pipeline();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v39 = &v32 - v8;
  v9 = *(a1 + 16);
  if (v9)
  {
    sub_1000F5104(&qword_100943EF0, &unk_100797DB0);
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
      sub_1003932B0(&qword_100943EE0, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline);
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
          v37(v6, *(v10 + 48) + v20 * v15, v2);
          sub_1003932B0(&qword_100943EE8, &type metadata accessor for REMSuggestedAttributeOutput.Pipeline);
          v25 = dispatch thunk of static Equatable.== infix(_:_:)();
          v26 = *v16;
          (*v16)(v6, v2);
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

  return _swiftEmptySetSingleton;
}

Swift::Int sub_10039363C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&unk_100943030, &unk_1007A3AB0);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + v14) != v10)
        {
          v14 = (v14 + 1) & v13;
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
        *(v18 + v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

Swift::Int sub_100393778(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1000F5104(&qword_100943340, &qword_1007A3CF8);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + 8 * v4);
      v11 = *(v3 + 40);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v13 = ~(-1 << *(v3 + 32));
      v14 = result & v13;
      v15 = (result & v13) >> 6;
      v16 = *(v5 + 8 * v15);
      v17 = 1 << (result & v13);
      v18 = *(v3 + 48);
      if ((v17 & v16) != 0)
      {
        while (*(v18 + 8 * v14) != v10)
        {
          v14 = (v14 + 1) & v13;
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
        *(v18 + 8 * v14) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return _swiftEmptySetSingleton;
}

uint64_t sub_1003938B4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_10039391C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t _s6FieldsOwet_1(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xEB)
  {
    goto LABEL_17;
  }

  if (a2 + 21 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 21) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 21;
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

      return (*a1 | (v4 << 8)) - 21;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 21;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x16;
  v8 = v6 - 22;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t _s6FieldsOwst_1(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 21 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 21) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xEB)
  {
    v4 = 0;
  }

  if (a2 > 0xEA)
  {
    v5 = ((a2 - 235) >> 8) + 1;
    *result = a2 + 21;
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
    *result = a2 + 21;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_100393AD4(uint64_t a1)
{
  result = sub_100393AFC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100393AFC()
{
  result = qword_1009441A0;
  if (!qword_1009441A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009441A0);
  }

  return result;
}

unint64_t sub_100393B50(uint64_t a1)
{
  result = sub_100393B78();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_100393B78()
{
  result = qword_1009441A8;
  if (!qword_1009441A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009441A8);
  }

  return result;
}

unint64_t sub_100393C14()
{
  result = qword_1009441C0;
  if (!qword_1009441C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1009441C0);
  }

  return result;
}

void *sub_100393C7C(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_16;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = _CocoaArrayWrapper.endIndex.getter())
  {
    result = _swiftEmptyArrayStorage;
    if (!i)
    {
      break;
    }

    result = specialized ContiguousArray.reserveCapacity(_:)();
    if (i < 0)
    {
      __break(1u);
      return result;
    }

    for (j = 0; ; ++j)
    {
      v9 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      if ((a1 & 0xC000000000000001) != 0)
      {
        v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (j >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v5 = *(a1 + 8 * j + 32);
      }

      v6 = v5;
      v7 = [v5 remObjectID];

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v8 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      if (v9 == i)
      {
        return _swiftEmptyArrayStorage;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    ;
  }

  return result;
}

void sub_100393DD8(uint64_t a1)
{
  v1 = a1;
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v3 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000F5104(&qword_10093A728, &unk_100797BC0);
  v3 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000060C8(0, &qword_1009391E0, REMObjectID_ptr) == &type metadata for String)
  {
    if (v2)
    {

      __CocoaSet.makeIterator()();
      type metadata accessor for REMObjectID_Codable();
      sub_1003A99EC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
      Set.Iterator.init(_cocoa:)();
      v1 = v38;
      v8 = v39;
      v9 = v40;
      v10 = v41;
      v11 = v42;
    }

    else
    {
      v30 = -1 << *(v1 + 32);
      v8 = v1 + 56;
      v9 = ~v30;
      v31 = -v30;
      if (v31 < 64)
      {
        v32 = ~(-1 << v31);
      }

      else
      {
        v32 = -1;
      }

      v11 = v32 & *(v1 + 56);

      v10 = 0;
    }

    while (1)
    {
      if (v1 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
LABEL_55:
          sub_10001B860();

          return;
        }

        type metadata accessor for REMObjectID_Codable();
        swift_dynamicCast();
        v35 = v37;
      }

      else
      {
        if (v11)
        {
          v33 = v10;
        }

        else
        {
          v36 = v10;
          do
          {
            v33 = v36 + 1;
            if (__OFADD__(v36, 1))
            {
              goto LABEL_58;
            }

            if (v33 >= ((v9 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v11 = *(v8 + 8 * v33);
            ++v36;
          }

          while (!v11);
          v10 = v33;
        }

        v34 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v35 = *(*(v1 + 48) + ((v33 << 9) | (8 * v34)));
      }

      sub_1003A932C(v35, &qword_1009391E0, REMObjectID_ptr);
    }
  }

  if (v2)
  {

    __CocoaSet.makeIterator()();
    type metadata accessor for REMObjectID_Codable();
    sub_1003A99EC(&qword_100943E80, &type metadata accessor for REMObjectID_Codable);
    Set.Iterator.init(_cocoa:)();
    v1 = v38;
    v4 = v39;
    v5 = v40;
    v6 = v41;
    v7 = v42;
  }

  else
  {
    v12 = -1 << *(v1 + 32);
    v4 = v1 + 56;
    v5 = ~v12;
    v13 = -v12;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v7 = v14 & *(v1 + 56);

    v6 = 0;
  }

  v15 = (v5 + 64) >> 6;
  v16 = (v3 + 7);
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_55;
    }

    type metadata accessor for REMObjectID_Codable();
    swift_dynamicCast();
    v19 = v37;
LABEL_29:
    v22 = NSObject._rawHashValue(seed:)(v3[5]);
    v23 = -1 << *(v3 + 32);
    v24 = v22 & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*&v16[8 * (v24 >> 6)]) != 0)
    {
      v17 = __clz(__rbit64((-1 << v24) & ~*&v16[8 * (v24 >> 6)])) | v24 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v26 = 0;
      v27 = (63 - v23) >> 6;
      do
      {
        if (++v25 == v27 && (v26 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v28 = v25 == v27;
        if (v25 == v27)
        {
          v25 = 0;
        }

        v26 |= v28;
        v29 = *&v16[8 * v25];
      }

      while (v29 == -1);
      v17 = __clz(__rbit64(~v29)) + (v25 << 6);
    }

    *&v16[(v17 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v17;
    *(v3[6] + 8 * v17) = v19;
    ++v3[2];
  }

  if (v7)
  {
    v18 = v6;
LABEL_28:
    v21 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v37 = *(*(v1 + 48) + ((v18 << 9) | (8 * v21)));
    v19 = v37;
    goto LABEL_29;
  }

  v20 = v6;
  while (1)
  {
    v18 = v20 + 1;
    if (__OFADD__(v20, 1))
    {
      break;
    }

    if (v18 >= v15)
    {
      goto LABEL_55;
    }

    v7 = *(v4 + 8 * v18);
    ++v20;
    if (v7)
    {
      v6 = v18;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_1003942EC(uint64_t a1)
{
  v50 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v40 = *(v50 - 8);
  v2 = *(v40 + 64);
  v3 = __chkstk_darwin(v50);
  v49 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v38 - v5;
  v7 = type metadata accessor for UUID();
  v51 = *(v7 - 8);
  v8 = *(v51 + 64);
  v9 = __chkstk_darwin(v7);
  v11 = &v38 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v46 = &v38 - v12;
  v52 = a1;
  if (*(a1 + 16))
  {
    sub_1000F5104(&qword_100944248, &qword_1007A4B48);
    v13 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v13 = &_swiftEmptySetSingleton;
  }

  v14 = v52 + 56;
  v15 = 1 << *(v52 + 32);
  if (v15 < 64)
  {
    v16 = ~(-1 << v15);
  }

  else
  {
    v16 = -1;
  }

  v17 = v16 & *(v52 + 56);
  v18 = (v15 + 63) >> 6;
  v44 = v51 + 32;
  v45 = v51 + 16;
  v42 = v51 + 48;
  v39 = (v51 + 8);
  v19 = v13 + 56;

  v21 = 0;
  v47 = v11;
  v48 = v6;
  v43 = v14;
  v53 = v13;
  v41 = v18;
  while (v17)
  {
    v23 = v11;
    v24 = v6;
LABEL_16:
    v26 = v51;
    v27 = v46;
    (*(v51 + 16))(v46, *(v52 + 48) + *(v51 + 72) * (__clz(__rbit64(v17)) | (v21 << 6)), v7);
    v28 = *(v26 + 32);
    v28(v23, v27, v7);
    swift_dynamicCast();
    v29 = *(v53 + 5);
    Hasher.init(_seed:)();
    v30 = v49;
    sub_100010364(v24, v49, &unk_100939D90, "8\n\r");
    if ((*(v26 + 48))(v30, 1, v7) == 1)
    {
      Hasher._combine(_:)(0);
    }

    else
    {
      v28(v23, v30, v7);
      Hasher._combine(_:)(1u);
      sub_1003A99EC(&qword_10093B410, &type metadata accessor for UUID);
      dispatch thunk of Hashable.hash(into:)();
      (*v39)(v23, v7);
    }

    v14 = v43;
    v18 = v41;
    result = Hasher._finalize()();
    v13 = v53;
    v31 = -1 << v53[32];
    v32 = result & ~v31;
    v33 = v32 >> 6;
    v6 = v48;
    if (((-1 << v32) & ~*&v19[8 * (v32 >> 6)]) == 0)
    {
      v34 = 0;
      v35 = (63 - v31) >> 6;
      v11 = v47;
      while (++v33 != v35 || (v34 & 1) == 0)
      {
        v36 = v33 == v35;
        if (v33 == v35)
        {
          v33 = 0;
        }

        v34 |= v36;
        v37 = *&v19[8 * v33];
        if (v37 != -1)
        {
          v22 = __clz(__rbit64(~v37)) + (v33 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v32) & ~*&v19[8 * (v32 >> 6)])) | v32 & 0x7FFFFFFFFFFFFFC0;
    v11 = v47;
LABEL_9:
    v17 &= v17 - 1;
    *&v19[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    result = sub_100031B58(v6, *(v13 + 6) + *(v40 + 72) * v22, &unk_100939D90, "8\n\r");
    ++*(v13 + 2);
  }

  while (1)
  {
    v25 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v25 >= v18)
    {

      return v13;
    }

    v17 = *(v14 + 8 * v25);
    ++v21;
    if (v17)
    {
      v23 = v11;
      v24 = v6;
      v21 = v25;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

uint64_t sub_100394808(uint64_t a1)
{
  if (*(a1 + 16))
  {
    sub_1000F5104(&qword_100944238, &qword_1007A4B40);
    v2 = static _SetStorage.allocate(capacity:)();
  }

  else
  {
    v2 = &_swiftEmptySetSingleton;
  }

  v3 = sub_1000F5104(&unk_100939E40, &qword_100791BD0);
  v4 = a1 + 56;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 56);
  v8 = (v5 + 63) >> 6;
  if (v3 == &type metadata for String)
  {

    v24 = 0;
    if (!v7)
    {
      goto LABEL_30;
    }

    do
    {
      v25 = v24;
LABEL_34:
      v26 = (*(a1 + 48) + ((v25 << 10) | (16 * __clz(__rbit64(v7)))));
      v7 &= v7 - 1;
      v32 = *v26;
      v34 = v26[1];

      swift_dynamicCast();
      result = sub_1003A9190(v27, v29);
    }

    while (v7);
LABEL_30:
    while (1)
    {
      v25 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v25 >= v8)
      {
LABEL_36:

        return v2;
      }

      v7 = *(v4 + 8 * v25);
      ++v24;
      if (v7)
      {
        v24 = v25;
        goto LABEL_34;
      }
    }
  }

  else
  {
    v9 = (v2 + 7);

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v15 = (*(a1 + 48) + ((v11 << 10) | (16 * __clz(__rbit64(v7)))));
      v28 = *v15;
      v30 = v15[1];

      swift_dynamicCast();
      v16 = v2[5];
      Hasher.init(_seed:)();
      if (v33)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      result = Hasher._finalize()();
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*&v9[8 * (v18 >> 6)]) == 0)
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
          v23 = *&v9[8 * v19];
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_38;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*&v9[8 * (v18 >> 6)])) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      v7 &= v7 - 1;
      *&v9[(v12 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v12;
      v13 = (v2[6] + 16 * v12);
      *v13 = v31;
      v13[1] = v33;
      ++v2[2];
    }

    while (1)
    {
      v14 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v14 >= v8)
      {
        goto LABEL_36;
      }

      v7 = *(v4 + 8 * v14);
      ++v11;
      if (v7)
      {
        v11 = v14;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_100394B68(uint64_t a1, void (*a2)(void), unint64_t *a3, void (*a4)(uint64_t))
{
  v6 = a1;
  v7 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (*(a1 + 16))
    {
      goto LABEL_3;
    }

LABEL_5:
    v8 = &_swiftEmptySetSingleton;
    goto LABEL_6;
  }

  if (!__CocoaSet.count.getter())
  {
    goto LABEL_5;
  }

LABEL_3:
  sub_1000F5104(&qword_1009430E0, &qword_1007A3B20);
  v8 = static _SetStorage.allocate(capacity:)();
LABEL_6:
  if (sub_1000060C8(0, &qword_100939D80, off_1008D41B8) == &type metadata for String)
  {
    if (v7)
    {

      __CocoaSet.makeIterator()();
      a2(0);
      sub_1003A99EC(a3, a4);
      Set.Iterator.init(_cocoa:)();
      v6 = v44;
      v13 = v45;
      v14 = v46;
      v15 = v47;
      v16 = v48;
    }

    else
    {
      v35 = -1 << *(v6 + 32);
      v13 = v6 + 56;
      v14 = ~v35;
      v36 = -v35;
      if (v36 < 64)
      {
        v37 = ~(-1 << v36);
      }

      else
      {
        v37 = -1;
      }

      v16 = v37 & *(v6 + 56);

      v15 = 0;
    }

    while (1)
    {
      if (v6 < 0)
      {
        if (!__CocoaSet.Iterator.next()())
        {
LABEL_55:
          sub_10001B860();

          return;
        }

        a2(0);
        swift_dynamicCast();
        v40 = v43;
      }

      else
      {
        if (v16)
        {
          v38 = v15;
        }

        else
        {
          v41 = v15;
          do
          {
            v38 = v41 + 1;
            if (__OFADD__(v41, 1))
            {
              goto LABEL_58;
            }

            if (v38 >= ((v14 + 64) >> 6))
            {
              goto LABEL_55;
            }

            v16 = *(v13 + 8 * v38);
            ++v41;
          }

          while (!v16);
          v15 = v38;
        }

        v39 = __clz(__rbit64(v16));
        v16 &= v16 - 1;
        v40 = *(*(v6 + 48) + ((v38 << 9) | (8 * v39)));
      }

      sub_1003A932C(v40, &qword_100939D80, off_1008D41B8);
    }
  }

  if (v7)
  {

    __CocoaSet.makeIterator()();
    a2(0);
    sub_1003A99EC(a3, a4);
    Set.Iterator.init(_cocoa:)();
    v6 = v44;
    v9 = v45;
    v10 = v46;
    v11 = v47;
    v12 = v48;
  }

  else
  {
    v17 = -1 << *(v6 + 32);
    v9 = v6 + 56;
    v10 = ~v17;
    v18 = -v17;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    else
    {
      v19 = -1;
    }

    v12 = v19 & *(v6 + 56);

    v11 = 0;
  }

  v20 = (v10 + 64) >> 6;
  v21 = (v8 + 7);
  while (v6 < 0)
  {
    if (!__CocoaSet.Iterator.next()())
    {
      goto LABEL_55;
    }

    a2(0);
    swift_dynamicCast();
    v24 = v43;
LABEL_29:
    v27 = NSObject._rawHashValue(seed:)(v8[5]);
    v28 = -1 << *(v8 + 32);
    v29 = v27 & ~v28;
    v30 = v29 >> 6;
    if (((-1 << v29) & ~*&v21[8 * (v29 >> 6)]) != 0)
    {
      v22 = __clz(__rbit64((-1 << v29) & ~*&v21[8 * (v29 >> 6)])) | v29 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = 0;
      v32 = (63 - v28) >> 6;
      do
      {
        if (++v30 == v32 && (v31 & 1) != 0)
        {
          __break(1u);
          goto LABEL_57;
        }

        v33 = v30 == v32;
        if (v30 == v32)
        {
          v30 = 0;
        }

        v31 |= v33;
        v34 = *&v21[8 * v30];
      }

      while (v34 == -1);
      v22 = __clz(__rbit64(~v34)) + (v30 << 6);
    }

    *&v21[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
    *(v8[6] + 8 * v22) = v24;
    ++v8[2];
  }

  if (v12)
  {
    v23 = v11;
LABEL_28:
    v26 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
    v43 = *(*(v6 + 48) + ((v23 << 9) | (8 * v26)));
    v24 = v43;
    goto LABEL_29;
  }

  v25 = v11;
  while (1)
  {
    v23 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      break;
    }

    if (v23 >= v20)
    {
      goto LABEL_55;
    }

    v12 = *(v9 + 8 * v23);
    ++v25;
    if (v12)
    {
      v11 = v23;
      goto LABEL_28;
    }
  }

LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
}

uint64_t sub_1003950EC(uint64_t a1, unint64_t *a2, uint64_t *a3, unint64_t *a4)
{
  v7 = a1;
  v8 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (__CocoaSet.count.getter())
    {
      goto LABEL_3;
    }

LABEL_6:
    v9 = _swiftEmptySetSingleton;
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_7:
    v14 = -1 << *(v7 + 32);
    v11 = v7 + 56;
    v12 = ~v14;
    v15 = -v14;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v13 = v16 & *(v7 + 56);

    v32 = 0;
    goto LABEL_11;
  }

  if (!*(a1 + 16))
  {
    goto LABEL_6;
  }

LABEL_3:
  sub_1000F5104(&unk_100944220, &qword_1007A4B38);
  v9 = static _SetStorage.allocate(capacity:)();
  if (!v8)
  {
    goto LABEL_7;
  }

LABEL_4:

  __CocoaSet.makeIterator()();
  sub_1000060C8(0, a2, a3);
  sub_10000CDE4(a4, a2, a3);
  result = Set.Iterator.init(_cocoa:)();
  v7 = v36;
  v11 = v37;
  v12 = v38;
  v32 = v39;
  v13 = v40;
LABEL_11:
  v17 = v9 + 7;
  while (v7 < 0)
  {
    v21 = __CocoaSet.Iterator.next()();
    if (!v21)
    {
LABEL_34:
      sub_10001B860();

      return v9;
    }

    *&v33 = v21;
    sub_1000060C8(0, a2, a3);
    swift_dynamicCast();
LABEL_25:
    sub_1000060C8(0, a2, a3);
    swift_dynamicCast();
    result = AnyHashable._rawHashValue(seed:)(v9[5]);
    v25 = -1 << *(v9 + 32);
    v26 = result & ~v25;
    v27 = v26 >> 6;
    if (((-1 << v26) & ~v17[v26 >> 6]) != 0)
    {
      v18 = __clz(__rbit64((-1 << v26) & ~v17[v26 >> 6])) | v26 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v28 = 0;
      v29 = (63 - v25) >> 6;
      do
      {
        if (++v27 == v29 && (v28 & 1) != 0)
        {
          __break(1u);
          goto LABEL_35;
        }

        v30 = v27 == v29;
        if (v27 == v29)
        {
          v27 = 0;
        }

        v28 |= v30;
        v31 = v17[v27];
      }

      while (v31 == -1);
      v18 = __clz(__rbit64(~v31)) + (v27 << 6);
    }

    *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
    v19 = v9[6] + 40 * v18;
    *(v19 + 32) = v35;
    *v19 = v33;
    *(v19 + 16) = v34;
    ++v9[2];
  }

  if (v13)
  {
    v20 = v32;
LABEL_24:
    v23 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v24 = *(*(v7 + 48) + ((v20 << 9) | (8 * v23)));
    goto LABEL_25;
  }

  v22 = v32;
  while (1)
  {
    v20 = v22 + 1;
    if (__OFADD__(v22, 1))
    {
      break;
    }

    if (v20 >= ((v12 + 64) >> 6))
    {
      goto LABEL_34;
    }

    v13 = *(v11 + 8 * v20);
    ++v22;
    if (v13)
    {
      v32 = v20;
      goto LABEL_24;
    }
  }

LABEL_35:
  __break(1u);
  return result;
}

uint64_t sub_100395478@<X0>(id *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = [*a1 dueDate];
  if (v3)
  {
    v4 = v3;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
}

void sub_10039551C(uint64_t a1, void **a2)
{
  v4 = sub_1000F5104(&unk_100938850, qword_100795AE0);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v12 - v6;
  sub_100010364(a1, &v12 - v6, &unk_100938850, qword_100795AE0);
  v8 = *a2;
  v9 = type metadata accessor for Date();
  v10 = *(v9 - 8);
  isa = 0;
  if ((*(v10 + 48))(v7, 1, v9) != 1)
  {
    isa = Date._bridgeToObjectiveC()().super.isa;
    (*(v10 + 8))(v7, v9);
  }

  [v8 setDueDate:isa];
}

uint64_t sub_100395658(uint64_t a1)
{
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  if (v5)
  {
    v6 = 0;
    v7 = __clz(__rbit64(v5));
    v8 = (v5 - 1) & v5;
    v9 = (v3 + 63) >> 6;
LABEL_9:
    v12 = (*(a1 + 48) + 16 * v7);
    v14 = *v12;
    v13 = v12[1];
    v15 = *(*(a1 + 56) + 8 * v7);

    v27 = v15;
    v28 = a1;

LABEL_10:
    v17 = v28;
    while (v8)
    {
LABEL_16:
      v19 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
      v20 = v19 | (v6 << 6);
      v21 = (*(v17 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      if (*v21 != v14 || v23 != v13)
      {
        v25 = *(*(v17 + 56) + 8 * v20);
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        v17 = v28;
        if (result)
        {

          v26 = v25;

          v27 = v26;
          v13 = v23;
          v14 = v22;
          goto LABEL_10;
        }
      }
    }

    while (1)
    {
      v18 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v18 >= v9)
      {

        return v14;
      }

      v8 = *(v2 + 8 * v18);
      ++v6;
      if (v8)
      {
        v6 = v18;
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v10 = 0;
    v9 = (v3 + 63) >> 6;
    while (v9 - 1 != v5)
    {
      v6 = v5 + 1;
      v11 = *(a1 + 72 + 8 * v5);
      v10 -= 64;
      ++v5;
      if (v11)
      {
        v8 = (v11 - 1) & v11;
        v7 = __clz(__rbit64(v11)) - v10;
        goto LABEL_9;
      }
    }

    return 0;
  }

  return result;
}

id sub_100395850@<X0>(id *a1@<X0>, _BYTE *a2@<X8>)
{
  result = [*a1 allDay];
  *a2 = result;
  return result;
}

uint64_t sub_100395898(char a1)
{
  result = 0x7344496D72616C61;
  switch(a1)
  {
    case 1:
      return 0x7961446C6C61;
    case 2:
      return 0xD000000000000026;
    case 3:
      v3 = 0x686361747461;
      return v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
    case 4:
      v3 = 0x6E6769737361;
      return v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
    case 5:
      return 0x6572436863746162;
    case 6:
      return 0x6574656C706D6F63;
    case 7:
      return 0x6974656C706D6F63;
    case 8:
      return 0x48746361746E6F63;
    case 9:
      return 0x6E6F697461657263;
    case 10:
      return 0x65746144657564;
    case 11:
      return 0xD000000000000016;
    case 12:
      return 0x64656767616C66;
    case 13:
      return 0x4967617468736168;
    case 14:
      return 0x6C7255736369;
    case 15:
      return 0x646574726F706D69;
    case 16:
      return 0xD000000000000010;
    case 17:
      return 1953720684;
    case 18:
      v4 = 0x447365746F6ELL;
      goto LABEL_32;
    case 19:
      return 0xD000000000000012;
    case 20:
      return 0x6552746E65726170;
    case 21:
      return 0xD00000000000002BLL;
    case 22:
      return 0x797469726F697270;
    case 23:
      return 0xD000000000000011;
    case 24:
      return 0x7461447472617473;
    case 25:
      return 0x656E6F5A656D6974;
    case 26:
      v4 = 0x44656C746974;
LABEL_32:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0x6974634172657375;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_100395BE8()
{
  v0 = type metadata accessor for Logger();
  sub_1000EECAC(v0, qword_1009441D0);
  v1 = sub_100006654(v0, qword_1009441D0);
  if (qword_100936430 != -1)
  {
    swift_once();
  }

  v2 = sub_100006654(v0, qword_100974FD8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_100395CB0(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = [a1 ckIdentifier];
  if (!v4)
  {
    if (qword_100935F38 == -1)
    {
      goto LABEL_9;
    }

    goto LABEL_36;
  }

  v5 = v4;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v8 = v7;

  if (!*(*v2 + 16) || (sub_100005F4C(v6, v8), (v9 & 1) == 0))
  {
    v11 = v3;
    v12 = *v2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39[0] = *v2;
    sub_1002C7024(v11, v6, v8, isUniquelyReferenced_nonNull_native);

    *v2 = v39[0];
    while (1)
    {
      result = [v3 children];
      if (!result)
      {
        return result;
      }

      v24 = result;
      sub_1000060C8(0, &qword_100939EE0, off_1008D41D0);
      sub_10000CDE4(&qword_100944210, &qword_100939EE0, off_1008D41D0);
      v25 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

      if ((v25 & 0xC000000000000001) != 0)
      {
        if (!__CocoaSet.count.getter())
        {
        }

        __CocoaSet.makeIterator()();
        Set.Iterator.init(_cocoa:)();
        v25 = v39[0];
        v26 = v39[1];
        v27 = v39[2];
        v28 = v39[3];
        v3 = v39[4];
      }

      else
      {
        if (!*(v25 + 16))
        {
        }

        v28 = 0;
        v29 = -1 << *(v25 + 32);
        v26 = v25 + 56;
        v27 = ~v29;
        v30 = -v29;
        if (v30 < 64)
        {
          v31 = ~(-1 << v30);
        }

        else
        {
          v31 = -1;
        }

        v3 = (v31 & *(v25 + 56));
      }

      v32 = (v27 + 64) >> 6;
      if (v25 < 0)
      {
        while (__CocoaSet.Iterator.next()())
        {
          swift_dynamicCast();
          v37 = v38;
          v35 = v28;
          v36 = v3;
          if (!v38)
          {
            break;
          }

LABEL_30:
          sub_100395CB0(v37);

          v28 = v35;
          v3 = v36;
          if ((v25 & 0x8000000000000000) == 0)
          {
            goto LABEL_22;
          }
        }

        return sub_10001B860();
      }

LABEL_22:
      v33 = v28;
      v34 = v3;
      v35 = v28;
      if (v3)
      {
LABEL_26:
        v36 = (v34 - 1) & v34;
        v37 = *(*(v25 + 48) + ((v35 << 9) | (8 * __clz(__rbit64(v34)))));
        if (v37)
        {
          goto LABEL_30;
        }

        return sub_10001B860();
      }

      while (1)
      {
        v35 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          break;
        }

        if (v35 >= v32)
        {
          return sub_10001B860();
        }

        v34 = *(v26 + 8 * v35);
        ++v33;
        if (v34)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_36:
      swift_once();
LABEL_9:
      v14 = type metadata accessor for Logger();
      sub_100006654(v14, qword_1009441D0);
      v15 = v3;
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v39[0] = v19;
        *v18 = 136315138;
        v38 = [v15 remObjectID];
        sub_1000F5104(&unk_10093AF40, &unk_100795790);
        v20 = Optional.descriptionOrNil.getter();
        v22 = v21;

        v23 = sub_10000668C(v20, v22, v39);

        *(v18 + 4) = v23;
        _os_log_impl(&_mh_execute_header, v16, v17, "addSubtree: ckIdentifier is nil {objectID: %s}", v18, 0xCu);
        sub_10000607C(v19);
      }
    }
  }
}

uint64_t sub_10039611C(char a1)
{
  result = 0x7344496D72616C41;
  switch(a1)
  {
    case 1:
      return 0x7961446C6C41;
    case 2:
      return 0xD000000000000025;
    case 3:
      v3 = 0x686361747441;
      return v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
    case 4:
      v3 = 0x6E6769737341;
      return v3 & 0xFFFFFFFFFFFFLL | 0x656D000000000000;
    case 5:
      return 0x6572436863746142;
    case 6:
      return 0x6574656C706D6F43;
    case 7:
      return 0x6974656C706D6F43;
    case 8:
      return 0x48746361746E6F43;
    case 9:
      return 0x6E6F697461657243;
    case 10:
      return 0x65746144657544;
    case 11:
      return 0xD000000000000016;
    case 12:
      return 0x64656767616C46;
    case 13:
      return 0x4967617468736148;
    case 14:
      return 0x6C7255736349;
    case 15:
      return 0x646574726F706D49;
    case 16:
      return 0xD000000000000010;
    case 17:
      return 1953720652;
    case 18:
      v4 = 0x447365746F4ELL;
      goto LABEL_32;
    case 19:
      return 0xD000000000000012;
    case 20:
      return 0x6552746E65726150;
    case 21:
      return 0xD00000000000002BLL;
    case 22:
      return 0x797469726F697250;
    case 23:
      return 0xD000000000000011;
    case 24:
      return 0x7461447472617453;
    case 25:
      return 0x656E6F5A656D6954;
    case 26:
      v4 = 0x44656C746954;
LABEL_32:
      result = v4 & 0xFFFFFFFFFFFFLL | 0x636F000000000000;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0x6974634172657355;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_10039646C()
{
  result = CKRecord.subscript.getter();
  if (result)
  {
    objc_opt_self();
    v1 = swift_dynamicCastObjCClass();
    if (v1)
    {
      v2 = [v1 recordID];
      v3 = [v2 recordName];

      if (!v3)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v3 = String._bridgeToObjectiveC()();
      }

      v4 = [objc_opt_self() ckIdentifierFromRecordName:v3];

      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      swift_unknownObjectRelease();

      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t sub_100396598(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_100395898(*a1);
  v5 = v4;
  if (v3 == sub_100395898(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int sub_100396620()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100395898(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100396684()
{
  sub_100395898(*v0);
  String.hash(into:)();
}

Swift::Int sub_1003966D8()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  sub_100395898(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_100396738@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  v3 = a1[1];
  result = sub_1003A991C();
  *a2 = result;
  return result;
}

uint64_t sub_100396768@<X0>(uint64_t *a1@<X8>)
{
  result = sub_100395898(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static REMCDReminder.existingCloudObject(for:accountID:managedObjectContext:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = String._bridgeToObjectiveC()();
  v7 = [objc_opt_self() objectWithRecordID:a1 accountID:v6 context:a4];

  if (v7)
  {
    result = swift_dynamicCastUnknownClass();
    if (result)
    {
      return result;
    }
  }

  return 0;
}

id static REMCDReminder.newCloudObject(for:account:managedObjectContext:)(void *a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v8 = [a1 recordID];
  v9 = [v8 recordName];

  if (!v9)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = String._bridgeToObjectiveC()();
  }

  v10 = [swift_getObjCClassFromMetadata() newObjectWithCKRecordName:v9 context:a3 account:a2];

  if (v10)
  {
    v11 = [a2 ckIdentifier];
    if (v11)
    {
      v12 = v11;
      [v10 mergeDataFromRecord:a1 accountID:v11];

      sub_100396C30();
      [v10 setCkServerRecord:a1];
      [v10 setInCloud:1];
      [v10 updateParentReferenceIfNecessary];
    }

    else
    {
      if (qword_100935F38 != -1)
      {
        swift_once();
      }

      v13 = type metadata accessor for Logger();
      sub_100006654(v13, qword_1009441D0);
      v14 = a2;
      v15 = Logger.logObject.getter();
      v16 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v29 = swift_slowAlloc();
        v30 = v4;
        *v17 = 136446466;
        swift_getMetatypeMetadata();
        v18 = String.init<A>(describing:)();
        v20 = sub_10000668C(v18, v19, &v29);

        *(v17 + 4) = v20;
        *(v17 + 12) = 2082;
        v21 = [v14 remObjectID];
        if (v21)
        {
          v22 = v21;
          v23 = [v21 description];

          v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v26 = v25;
        }

        else
        {
          v26 = 0xE300000000000000;
          v24 = 7104878;
        }

        v27 = sub_10000668C(v24, v26, &v29);

        *(v17 + 14) = v27;
        _os_log_impl(&_mh_execute_header, v15, v16, "newCloudObject: %{public}s with account: %{public}s having nil ckIdentifier", v17, 0x16u);
        swift_arrayDestroy();
      }

      return 0;
    }
  }

  return v10;
}

void sub_100396C30()
{
  v1 = v0;
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v134 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000F5104(&unk_100939D90, "8\n\r");
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v134 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v11);
  v13 = &v134 - v12;
  __chkstk_darwin(v14);
  v16 = &v134 - v15;
  __chkstk_darwin(v17);
  v19 = &v134 - v18;
  __chkstk_darwin(v20);
  v22 = &v134 - v21;
  *&v24 = __chkstk_darwin(v23).n128_u64[0];
  v26 = &v134 - v25;
  if ([v1 isOwnedByCurrentUser])
  {
    return;
  }

  v27 = [v1 managedObjectContext];
  if (!v27)
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    sub_100006654(v50, qword_1009441D0);
    v148 = Logger.logObject.getter();
    v51 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v148, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&_mh_execute_header, v148, v51, "Trying to create REMCDSharedToMeReminderPlaceholder to a reminder object without MOC", v52, 2u);
    }

LABEL_18:
    v53 = v148;

    return;
  }

  v146 = v2;
  v147 = v3;
  v148 = v27;
  v28 = [v1 storeControllerManagedObjectContext];
  if (!v28 || (v29 = v28, v30 = [v28 storeController], v29, !v30))
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v38 = type metadata accessor for Logger();
    sub_100006654(v38, qword_1009441D0);
    v39 = v1;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v149 = v43;
      *v42 = 136446210;
      v44 = [v39 remObjectID];
      if (v44)
      {
        v45 = v44;
        v46 = [v44 description];

        v47 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v49 = v48;
      }

      else
      {
        v47 = 7104878;
        v49 = 0xE300000000000000;
      }

      v54 = sub_10000668C(v47, v49, &v149);

      *(v42 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v40, v41, "REMCDReminder+CloudKit: Could not create REMCDSharedToMeReminderPlaceholder because storeController isn't available {reminder: %{public}s}", v42, 0xCu);
      sub_10000607C(v43);

      return;
    }

    goto LABEL_18;
  }

  v31 = [v1 account];
  v145 = v30;
  if (!v31)
  {
LABEL_26:
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v58 = type metadata accessor for Logger();
    sub_100006654(v58, qword_1009441D0);
    v59 = v1;
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v60, v61))
    {

      return;
    }

    v62 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *v62 = 136446722;
    v63 = [v59 account];
    if (v63)
    {

      v64 = 0xE200000000000000;
      v65 = 15649;
    }

    else
    {
      v64 = 0xE100000000000000;
      v65 = 61;
    }

    v97 = v147;
    v98 = sub_10000668C(v65, v64, &v149);

    *(v62 + 4) = v98;
    *(v62 + 12) = 2082;
    v99 = [v59 account];
    if (v99)
    {
      v100 = v99;
      v101 = [v99 identifier];

      if (v101)
      {
        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

        v102 = 0;
      }

      else
      {
        v102 = 1;
      }

      v105 = v146;
      v106 = v147;
      (*(v147 + 56))(v10, v102, 1, v146);
      sub_100031B58(v10, v13, &unk_100939D90, "8\n\r");
      v107 = (*(v106 + 48))(v13, 1, v105);
      if (v107 == 1)
      {
        v104 = 61;
      }

      else
      {
        v104 = 15649;
      }

      if (v107 == 1)
      {
        v103 = 0xE100000000000000;
      }

      else
      {
        v103 = 0xE200000000000000;
      }
    }

    else
    {
      (*(v97 + 56))(v13, 1, 1, v146);
      v103 = 0xE100000000000000;
      v104 = 61;
    }

    sub_1000050A4(v13, &unk_100939D90, "8\n\r");
    v108 = sub_10000668C(v104, v103, &v149);

    *(v62 + 14) = v108;
    *(v62 + 22) = 2082;
    v109 = [v59 remObjectID];
    if (v109)
    {
      v110 = v109;
      v111 = [v109 description];

      v112 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v114 = v113;
    }

    else
    {
      v112 = 7104878;
      v114 = 0xE300000000000000;
    }

    v115 = sub_10000668C(v112, v114, &v149);

    *(v62 + 24) = v115;
    _os_log_impl(&_mh_execute_header, v60, v61, "REMCDReminder+CloudKit: Could not create REMCDSharedToMeReminderPlaceholder because accountIdentifier is nil where account %{public}s nil and account.identifier %{public}s nil, {reminder: %{public}s}", v62, 0x20u);
    swift_arrayDestroy();
    goto LABEL_54;
  }

  v32 = v31;
  v33 = [v31 identifier];

  v144 = v6;
  if (v33)
  {
    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

    v34 = v147;
    v35 = *(v147 + 56);
    v36 = v22;
    v37 = 0;
  }

  else
  {
    v34 = v147;
    v35 = *(v147 + 56);
    v36 = v22;
    v37 = 1;
  }

  v55 = v146;
  v143 = v35;
  v35(v36, v37, 1, v146);
  v30 = v145;
  sub_100031B58(v22, v26, &unk_100939D90, "8\n\r");
  v57 = v34 + 48;
  v56 = *(v34 + 48);
  if (v56(v26, 1, v55))
  {
    sub_1000050A4(v26, &unk_100939D90, "8\n\r");
    goto LABEL_26;
  }

  v139 = v56;
  v140 = v57;
  v66 = v147;
  v67 = v144;
  v136 = *(v147 + 16);
  v137 = v147 + 16;
  v136(v144, v26, v55);
  sub_1000050A4(v26, &unk_100939D90, "8\n\r");
  v68 = UUID.uuidString.getter();
  v70 = v69;
  v71 = v66 + 8;
  v142 = *(v66 + 8);
  v142(v67, v55);
  v72 = String._bridgeToObjectiveC()();
  v73 = [v30 storeForAccountIdentifier:v72];

  if (!v73)
  {
    if (qword_100935F38 != -1)
    {
      swift_once();
    }

    v116 = type metadata accessor for Logger();
    sub_100006654(v116, qword_1009441D0);

    v117 = v1;
    v60 = Logger.logObject.getter();
    v118 = static os_log_type_t.fault.getter();

    if (!os_log_type_enabled(v60, v118))
    {

      goto LABEL_55;
    }

    v119 = swift_slowAlloc();
    v149 = swift_slowAlloc();
    *v119 = 136446466;
    v120 = sub_10000668C(v68, v70, &v149);

    *(v119 + 4) = v120;
    *(v119 + 12) = 2082;
    v121 = [v117 remObjectID];
    if (v121)
    {
      v122 = v121;
      v123 = [v121 description];

      v124 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v126 = v125;
    }

    else
    {
      v124 = 7104878;
      v126 = 0xE300000000000000;
    }

    v133 = sub_10000668C(v124, v126, &v149);

    *(v119 + 14) = v133;
    _os_log_impl(&_mh_execute_header, v60, v118, "REMCDReminder+CloudKit: Could not create REMCDSharedToMeReminderPlaceholder because there is problem finding the persistent store for the accountIdentifier %{public}s and the reminder {reminder: %{public}s}", v119, 0x16u);
    swift_arrayDestroy();
LABEL_54:

LABEL_55:

    return;
  }

  sub_1000060C8(0, &qword_100944260, off_1008D41D8);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v141 = v71;
  v75 = ObjCClassFromMetadata;
  v76 = v73;
  v77 = [v75 entity];
  v78 = objc_allocWithZone(v75);
  v79 = [v78 initWithEntity:v77 insertIntoManagedObjectContext:v148];
  v80 = v76;
  v81 = v79;
  [v148 assignObject:v81 toPersistentStore:v80];

  v138 = v80;
  v82 = v81;
  v83 = [v1 account];
  [v82 setAccount:v83];

  v84 = [v75 newObjectID];
  v85 = [v84 uuid];

  static UUID._unconditionallyBridgeFromObjectiveC(_:)();
  isa = UUID._bridgeToObjectiveC()().super.isa;
  v142(v67, v146);
  [v82 setIdentifier:isa];

  [v82 setReminder:v1];
  if (qword_100935F38 != -1)
  {
    swift_once();
  }

  v87 = type metadata accessor for Logger();
  sub_100006654(v87, qword_1009441D0);
  v88 = v82;
  v89 = Logger.logObject.getter();
  v90 = static os_log_type_t.default.getter();

  v91 = os_log_type_enabled(v89, v90);
  v92 = v145;
  if (v91)
  {
    v93 = swift_slowAlloc();
    v135 = swift_slowAlloc();
    v149 = v135;
    *v93 = 136446210;
    v94 = [v88 identifier];
    if (v94)
    {
      v95 = v94;
      static UUID._unconditionallyBridgeFromObjectiveC(_:)();

      v96 = 0;
    }

    else
    {
      v96 = 1;
    }

    v127 = v139;
    v128 = v146;
    v143(v16, v96, 1, v146);
    sub_100031B58(v16, v19, &unk_100939D90, "8\n\r");
    if (v127(v19, 1, v128))
    {
      v129 = 7104878;
      sub_1000050A4(v19, &unk_100939D90, "8\n\r");
      v130 = 0xE300000000000000;
    }

    else
    {
      v136(v67, v19, v128);
      sub_1000050A4(v19, &unk_100939D90, "8\n\r");
      v129 = UUID.uuidString.getter();
      v130 = v131;
      v142(v67, v128);
    }

    v132 = sub_10000668C(v129, v130, &v149);

    *(v93 + 4) = v132;
    _os_log_impl(&_mh_execute_header, v89, v90, "Creating REMCDSharedToMeReminderPlaceholder for CloudKit: %{public}s", v93, 0xCu);
    sub_10000607C(v135);
  }

  else
  {
  }
}