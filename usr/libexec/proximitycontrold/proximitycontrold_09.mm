void *sub_1000CD6AC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v21 = a3;
  v5 = type metadata accessor for Mirror();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_10001766C(a1, v27);
  Mirror.init(reflecting:)();
  v10 = Mirror.children.getter();
  (*(v6 + 8))(v9, v5);
  v20 = v10;
  dispatch thunk of _AnySequenceBox._makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  if (*(&v28 + 1))
  {
    v11 = &_swiftEmptyArrayStorage;
    do
    {
      v26[0] = v27[0];
      v26[1] = v27[1];
      v26[2] = v28;
      sub_1000CD8FC(v26, a2, v21, &v22);
      sub_1000097E8(v26, &qword_10033BDB0, &unk_1002726E0);
      v13 = v23;
      if (v23)
      {
        v14 = v22;
        v15 = v24;
        v16 = v25;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v11 = sub_1000AF2E4(0, v11[2] + 1, 1, v11);
        }

        v18 = v11[2];
        v17 = v11[3];
        if (v18 >= v17 >> 1)
        {
          v11 = sub_1000AF2E4((v17 > 1), v18 + 1, 1, v11);
        }

        v11[2] = v18 + 1;
        v12 = &v11[4 * v18];
        v12[4] = v14;
        v12[5] = v13;
        v12[6] = v15;
        v12[7] = v16;
      }

      dispatch thunk of _AnyIteratorBoxBase.next()();
    }

    while (*(&v28 + 1));
  }

  else
  {
    v11 = &_swiftEmptyArrayStorage;
  }

  return v11;
}

double sub_1000CD8FC@<D0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  sub_100058CB4(a1, &v22);
  if (*(&v22 + 1))
  {
    v19[0] = v22;
    sub_100058C60();
    Collection<>.trimmingPrefix<A>(_:)();

    sub_10000903C(v23);
    v8 = static String._fromSubstring(_:)();
    v10 = v9;
  }

  else
  {
    sub_10000903C(v23);
    v10 = 0xE100000000000000;
    v8 = 63;
  }

  if ((*(a3 + 64))(v8, v10, a2, a3))
  {
    if (((*(a3 + 48))(a2, a3) & 1) == 0)
    {

      v10 = 0xE100000000000000;
      v8 = 45;
    }

    String.lowercased()();
    v11._countAndFlagsBits = 0x736B736174;
    v11._object = 0xE500000000000000;
    v12 = String.hasSuffix(_:)(v11);

    if (v12)
    {
      sub_100058CB4(a1, &v22);

      sub_100035D04(&qword_10033BDB8, &unk_100278370);
      if (swift_dynamicCast())
      {
        sub_10000E754(v19, v21);
        *&v22 = 40;
        *(&v22 + 1) = 0xE100000000000000;
        sub_10000EBC0(v21, v21[3]);
        *&v19[0] = dispatch thunk of Collection.count.getter();
        v13._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
        String.append(_:)(v13);

        v14._countAndFlagsBits = 41;
        v14._object = 0xE100000000000000;
        String.append(_:)(v14);
        v15 = v22;
        sub_10000903C(v21);
        v17 = *(&v15 + 1);
        v18 = v15;
LABEL_12:
        *a4 = v8;
        a4[1] = v10;
        a4[2] = v18;
        a4[3] = v17;
        return result;
      }

      v20 = 0;
      memset(v19, 0, sizeof(v19));
      sub_1000097E8(v19, &qword_10033BDC0, &unk_1002726F0);
    }

    v18 = sub_1000CDBE4(a1 + 16, a2, &type metadata for Any + 8, a3);
    if (v17)
    {
      goto LABEL_12;
    }
  }

  result = 0.0;
  *a4 = 0u;
  *(a4 + 1) = 0u;
  return result;
}

uint64_t sub_1000CDBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a3 - 8);
  v9 = *(v8 + 64);
  v10 = __chkstk_darwin(a1);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v14 = &v25 - v13;
  if ((*(v15 + 56))(v16, v15))
  {
    v17 = *(v8 + 16);
    v17(v14, a1, a3);
    sub_100035D04(&qword_100342578, &qword_100278398);
    if (swift_dynamicCast())
    {
      sub_10000E754(&v27, v30);
      v18 = v31;
      v19 = v32;
      sub_10000EBC0(v30, v31);
      v20 = sub_10013FD60(v18, v19);
LABEL_9:
      sub_10000903C(v30);
      return v20;
    }

    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_1000097E8(&v27, &qword_100342580, &unk_1002783A0);
    v17(v12, a1, a3);
  }

  else
  {
    (*(v8 + 16))(v12, a1, a3);
  }

  sub_100035D04(&qword_10033BDC8, &unk_100278380);
  if (!swift_dynamicCast())
  {
    v29 = 0;
    v27 = 0u;
    v28 = 0u;
    sub_1000097E8(&v27, &qword_10033BDD0, &unk_100272700);
    v30[0] = 0;
    v30[1] = 0xE000000000000000;
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    return v30[0];
  }

  sub_10000E754(&v27, v30);
  v21 = v31;
  v22 = v32;
  sub_10000EBC0(v30, v31);
  (*(v22 + 24))(&v25, v21, v22);
  if (v26)
  {
    sub_1000516B4(&v25, &v27);
    *&v25 = 0;
    *(&v25 + 1) = 0xE000000000000000;
    _print_unlocked<A, B>(_:_:)();
    v20 = v25;
    sub_10000903C(&v27);
    goto LABEL_9;
  }

  sub_1000097E8(&v25, &unk_100339680, &qword_100278390);
  v23 = (*(a4 + 40))(a2, a4);
  sub_10000903C(v30);
  if (v23)
  {
    return 7104878;
  }

  else
  {
    return 0;
  }
}

char *sub_1000CDF20(char *a1, int64_t a2, char a3)
{
  result = sub_1000CE1AC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CDF40(char *a1, int64_t a2, char a3)
{
  result = sub_1000CE2B8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CDF60(void *a1, int64_t a2, char a3)
{
  result = sub_1000CE3C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CDF80(char *a1, int64_t a2, char a3)
{
  result = sub_1000CE50C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CDFA0(char *a1, int64_t a2, char a3)
{
  result = sub_1000CE608(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000CDFC0(char *a1, int64_t a2, char a3)
{
  result = sub_1000CE704(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CDFE0(void *a1, int64_t a2, char a3)
{
  result = sub_1000CEA5C(a1, a2, a3, *v3, &qword_100342588, &unk_1002783B0, &qword_1003397D0, &qword_1002729A0);
  *v3 = result;
  return result;
}

char *sub_1000CE020(char *a1, int64_t a2, char a3)
{
  result = sub_1000CE808(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000CE040(void *a1, int64_t a2, char a3)
{
  result = sub_1000CE914(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000CE060(size_t a1, int64_t a2, char a3)
{
  result = sub_1000CEB90(a1, a2, a3, *v3, &qword_1003425A0, &qword_100278410, &type metadata accessor for Date);
  *v3 = result;
  return result;
}

size_t sub_1000CE0A4(size_t a1, int64_t a2, char a3)
{
  result = sub_100012DB8(a1, a2, a3, *v3, &qword_100342590, &qword_1002783C8, &qword_10033B530, &unk_1002783D0);
  *v3 = result;
  return result;
}

void *sub_1000CE0E4(void *a1, int64_t a2, char a3)
{
  result = sub_1000CEA5C(a1, a2, a3, *v3, &qword_1003425B0, &qword_100278420, &qword_1003425B8, &qword_100278428);
  *v3 = result;
  return result;
}

size_t sub_1000CE124(size_t a1, int64_t a2, char a3)
{
  result = sub_1000CEB90(a1, a2, a3, *v3, &qword_100342598, &qword_1002783F8, &type metadata accessor for URLQueryItem);
  *v3 = result;
  return result;
}

size_t sub_1000CE168(size_t a1, int64_t a2, char a3)
{
  result = sub_1000CEB90(a1, a2, a3, *v3, &qword_1003425A8, &qword_100278418, &type metadata accessor for DispatchTimeInterval);
  *v3 = result;
  return result;
}

char *sub_1000CE1AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033EFD0, &qword_1002783C0);
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
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CE2B8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&unk_10033D890, &qword_100275EB0);
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

void *sub_1000CE3C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_10033DE68, &qword_100274150);
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
    sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000CE50C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F000, &qword_1002783F0);
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

char *sub_1000CE608(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F008, &qword_100275748);
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

char *sub_1000CE704(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033F050, &qword_100275790);
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

char *sub_1000CE808(char *result, int64_t a2, char a3, char *a4)
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
    sub_100035D04(&qword_10033EFC8, &qword_100275738);
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

void *sub_1000CE914(void *result, int64_t a2, char a3, void *a4)
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
    sub_100035D04(&qword_1003425C0, &qword_100278430);
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
    sub_100035D04(&qword_1003425C8, &qword_100278438);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000CEA5C(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100035D04(a5, a6);
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
    sub_100035D04(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_1000CEB90(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100035D04(a5, a6);
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

Swift::UInt64 sub_1000CED6C()
{
  if (*(v0 + 32) & 1) != 0 || (*(v0 + 48))
  {
    if (*(v0 + 16))
    {
      return 0x646570706F7473;
    }

    else
    {
      return 0x676E696E6E7572;
    }
  }

  else
  {
    v2 = *(v0 + 24);
    v3 = *(v0 + 40);
    result = v3 - v2;
    if (v3 < v2)
    {
      __break(1u);
    }

    else
    {
      v4 = UpTicksToSecondsF(_:)(result);
      return sub_100110CA8(v4);
    }
  }

  return result;
}

uint64_t sub_1000CEE28()
{
  if (*v0)
  {
    return 0x646570706F7473;
  }

  else
  {
    return 0x676E696E6E7572;
  }
}

unint64_t sub_1000CEE60()
{
  result = qword_1003426E8;
  if (!qword_1003426E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1003426E8);
  }

  return result;
}

__n128 sub_1000CEED8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1000CEEFC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 112))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000CEF1C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 112) = v3;
  return result;
}

uint64_t sub_1000CEFC0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  sub_1000CF19C();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
}

const char *sub_1000CF028(char a1)
{
  result = "Start_ResolveDeviceProximity";
  switch(a1)
  {
    case 1:
      result = "ContentResolution_Media";
      break;
    case 2:
      result = "ContentResolution_ShareableContent";
      break;
    case 3:
      result = "ContentResolution_Remote";
      break;
    case 4:
      result = "Delay_HandoffAction";
      break;
    case 5:
      result = "Delay_HandoffAction_ContentResolution";
      break;
    case 6:
      result = "Delay_HandoffUI";
      break;
    case 7:
      result = "Present_DwellBanner";
      break;
    case 8:
      result = "Present_InCallUI";
      break;
    case 9:
      result = "Present_SystemCallControls";
      break;
    case 10:
      result = "Present_LagunaPullConversation";
      break;
    case 11:
      result = "Present_MediaCard";
      break;
    case 12:
      result = "Present_SharePreview";
      break;
    case 13:
      result = "Present_Shockwave";
      break;
    case 14:
      result = "LaunchApp_Remote_FaceTime";
      break;
    case 15:
      result = "LaunchApp_Remote_Safari";
      break;
    case 16:
      result = "Transfer_Media";
      break;
    case 17:
      result = "HandoffOccurred";
      break;
    case 18:
      result = "SetupCompleted";
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1000CF19C()
{
  result = qword_1003426F0;
  if (!qword_1003426F0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1003426F0);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for HandoffActionType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for HandoffActionType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1000CF3B0(uint64_t a1, uint64_t (*a2)(void), void (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  v8 = a2();
  v9 = *(v8 + 16);
  if (v9)
  {
    v25 = a4;
    sub_1000CDF40(0, v9, 0);
    v10 = (v8 + 56);
    do
    {
      v11 = *(v10 - 1);
      v12 = *v10;
      v26 = *(v10 - 3);
      v28 = *(v10 - 2);
      swift_bridgeObjectRetain_n();

      v13._countAndFlagsBits = 8250;
      v13._object = 0xE200000000000000;
      String.append(_:)(v13);
      v14._countAndFlagsBits = v11;
      v14._object = v12;
      String.append(_:)(v14);

      v16 = _swiftEmptyArrayStorage[2];
      v15 = _swiftEmptyArrayStorage[3];
      if (v16 >= v15 >> 1)
      {
        sub_1000CDF40((v15 > 1), v16 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v16 + 1;
      v17 = &_swiftEmptyArrayStorage[2 * v16];
      v17[4] = v26;
      v17[5] = v28;
      v10 += 4;
      --v9;
    }

    while (v9);

    a4 = v25;
  }

  else
  {
  }

  a3(0);
  sub_100035D04(a4, a5);
  v27 = String.init<A>(describing:)();
  v18._countAndFlagsBits = 40;
  v18._object = 0xE100000000000000;
  String.append(_:)(v18);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
  v19 = BidirectionalCollection<>.joined(separator:)();
  v21 = v20;

  v22._countAndFlagsBits = v19;
  v22._object = v21;
  String.append(_:)(v22);

  v23._countAndFlagsBits = 41;
  v23._object = 0xE100000000000000;
  String.append(_:)(v23);
  return v27;
}

uint64_t sub_1000CF64C(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v7 = a2();
  v8 = *(v7 + 16);
  if (v8)
  {
    v24 = a4;
    sub_1000CDF40(0, v8, 0);
    v9 = (v7 + 56);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v25 = *(v9 - 3);
      v27 = *(v9 - 2);
      swift_bridgeObjectRetain_n();

      v12._countAndFlagsBits = 8250;
      v12._object = 0xE200000000000000;
      String.append(_:)(v12);
      v13._countAndFlagsBits = v10;
      v13._object = v11;
      String.append(_:)(v13);

      v15 = _swiftEmptyArrayStorage[2];
      v14 = _swiftEmptyArrayStorage[3];
      if (v15 >= v14 >> 1)
      {
        sub_1000CDF40((v14 > 1), v15 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v15 + 1;
      v16 = &_swiftEmptyArrayStorage[2 * v15];
      v16[4] = v25;
      v16[5] = v27;
      v9 += 4;
      --v8;
    }

    while (v8);

    a4 = v24;
  }

  else
  {
  }

  sub_100035D04(a4, a5);
  v26 = String.init<A>(describing:)();
  v17._countAndFlagsBits = 40;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  sub_10000E244(&qword_10033D8A0, &qword_1003397D0, &qword_1002729A0);
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 41;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return v26;
}

Swift::Int sub_1000CF894()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002787A8[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000CF91C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(qword_1002787A8[v1]);
  return Hasher._finalize()();
}

uint64_t sub_1000CF968@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  result = sub_1000CFBA0();
  *a2 = result;
  return result;
}

unint64_t sub_1000CFA04()
{
  result = qword_100342708;
  if (!qword_100342708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342708);
  }

  return result;
}

uint64_t sub_1000CFA58(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = *(v1 + 1);
  v5 = *(v1 + 2);
  v6 = *(v1 + 3);
  v10[3] = a1;
  v7 = swift_allocObject();
  v10[0] = v7;
  *(v7 + 16) = v2;
  *(v7 + 18) = v3;
  *(v7 + 24) = v4;
  *(v7 + 32) = v5;
  *(v7 + 40) = v6;
  swift_errorRetain();

  v8 = sub_1000CF64C(v10, sub_100058D28, &type metadata for HandoffActionContext, &qword_10033BE18, qword_100272750);
  sub_10000903C(v10);
  return v8;
}

unint64_t sub_1000CFB24(uint64_t a1)
{
  result = sub_1000CFB4C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000CFB4C()
{
  result = qword_100342710;
  if (!qword_100342710)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342710);
  }

  return result;
}

uint64_t sub_1000CFC38(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1000CFC94(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

Swift::Int sub_1000CFCF8()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000CFE0C()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000CFF00()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int sub_1000D0010()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1000D0100()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100342730);
  sub_100003078(v0, qword_100342730);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000D0194()
{
  *v0;
  *v0;
  *v0;
  String.hash(into:)();
}

unint64_t sub_1000D0278@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D0B90(*a1);
  *a2 = result;
  return result;
}

unint64_t sub_1000D02A8@<X0>(unint64_t *a1@<X8>)
{
  v2 = 0xD00000000000001ALL;
  v3 = *v1;
  v4 = "soft";
  v5 = "ityControlUI.HandoffUI";
  v6 = 0xD00000000000002DLL;
  v7 = "itycontrol.lockscreenControls";
  v8 = 0xD000000000000030;
  result = 0xD000000000000029;
  if (v3 != 4)
  {
    v8 = 0xD000000000000029;
    v7 = "TransferObserver";
  }

  if (v3 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v10 = "itycontrol.cliClient";
  if (v3 != 1)
  {
    v2 = 0xD000000000000026;
    v10 = "com.apple.proximitycontrol";
  }

  if (*v1)
  {
    v4 = v10;
  }

  else
  {
    v2 = 0xD000000000000024;
  }

  if (*v1 <= 2u)
  {
    v11 = v4;
  }

  else
  {
    v2 = v6;
    v11 = v5;
  }

  *a1 = v2;
  a1[1] = v11 | 0x8000000000000000;
  return result;
}

unint64_t sub_1000D0358()
{
  v1 = 0xD00000000000001ALL;
  v2 = *v0;
  v3 = 0xD00000000000002DLL;
  v4 = 0xD000000000000030;
  if (v2 != 4)
  {
    v4 = 0xD000000000000029;
  }

  if (v2 != 3)
  {
    v3 = v4;
  }

  if (v2 != 1)
  {
    v1 = 0xD000000000000026;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000024;
  }

  if (*v0 <= 2u)
  {
    result = v1;
  }

  else
  {
    result = v3;
  }

  *v0;
  return result;
}

uint64_t sub_1000D0404(unsigned __int8 a1, void *a2)
{
  if (qword_100338F30 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342730);
  v5 = a2;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v72 = a1;
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v75[0] = v10;
    v11 = 0xD000000000000024;
    v12 = "soft";
    *v8 = 136315394;
    v13 = "ityControlUI.HandoffUI";
    v14 = 0xD00000000000002DLL;
    v15 = "itycontrol.lockscreenControls";
    v16 = 0xD000000000000030;
    if (a1 != 4)
    {
      v16 = 0xD000000000000029;
      v15 = "TransferObserver";
    }

    if (a1 != 3)
    {
      v14 = v16;
      v13 = v15;
    }

    v17 = "itycontrol.cliClient";
    v18 = 0xD000000000000026;
    if (a1 == 1)
    {
      v18 = 0xD00000000000001ALL;
    }

    else
    {
      v17 = "com.apple.proximitycontrol";
    }

    if (a1)
    {
      v11 = v18;
      v12 = v17;
    }

    if (a1 <= 2u)
    {
      v19 = v11;
    }

    else
    {
      v19 = v14;
    }

    if (a1 <= 2u)
    {
      v20 = v12;
    }

    else
    {
      v20 = v13;
    }

    v21 = sub_100017494(v19, v20 | 0x8000000000000000, v75);

    *(v8 + 4) = v21;
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = v5;
    v22 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "Checking for entitlement '%s' on %@", v8, 0x16u);
    sub_1000030B0(v9);

    sub_10000903C(v10);
  }

  else
  {
  }

  v23 = String._bridgeToObjectiveC()();

  v24 = [v5 cuValueForEntitlementNoCache:v23];

  if (!v24)
  {
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v75[0] = v43;
      *v42 = 136315138;
      v44 = 0xD000000000000024;
      v45 = 0xD00000000000002DLL;
      v46 = 0xD000000000000030;
      if (v72 == 4)
      {
        v47 = "itycontrol.lockscreenControls";
      }

      else
      {
        v46 = 0xD000000000000029;
        v47 = "TransferObserver";
      }

      if (v72 == 3)
      {
        v48 = "ityControlUI.HandoffUI";
      }

      else
      {
        v45 = v46;
        v48 = v47;
      }

      v49 = 0xD000000000000026;
      if (v72 == 1)
      {
        v49 = 0xD00000000000001ALL;
        v50 = "itycontrol.cliClient";
      }

      else
      {
        v50 = "com.apple.proximitycontrol";
      }

      if (v72)
      {
        v44 = v49;
      }

      v51 = "soft";
      if (v72)
      {
        v51 = v50;
      }

      if (v72 <= 2u)
      {
        v52 = v44;
      }

      else
      {
        v52 = v45;
      }

      if (v72 <= 2u)
      {
        v53 = v51;
      }

      else
      {
        v53 = v48;
      }

      v54 = sub_100017494(v52, v53 | 0x8000000000000000, v75);

      *(v42 + 4) = v54;
      _os_log_impl(&_mh_execute_header, v40, v41, "### Failed to determine value for '%s'", v42, 0xCu);
      sub_10000903C(v43);
    }

    return 0;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  sub_10001766C(v75, v74);
  if (!swift_dynamicCast())
  {
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v74[0] = v58;
      *v57 = 136315138;
      v59 = 0xD000000000000024;
      v60 = 0xD00000000000002DLL;
      v61 = 0xD000000000000030;
      if (v72 == 4)
      {
        v62 = "itycontrol.lockscreenControls";
      }

      else
      {
        v61 = 0xD000000000000029;
        v62 = "TransferObserver";
      }

      if (v72 == 3)
      {
        v63 = "ityControlUI.HandoffUI";
      }

      else
      {
        v60 = v61;
        v63 = v62;
      }

      v64 = 0xD000000000000026;
      if (v72 == 1)
      {
        v64 = 0xD00000000000001ALL;
        v65 = "itycontrol.cliClient";
      }

      else
      {
        v65 = "com.apple.proximitycontrol";
      }

      if (v72)
      {
        v59 = v64;
      }

      v66 = "soft";
      if (v72)
      {
        v66 = v65;
      }

      if (v72 <= 2u)
      {
        v67 = v59;
      }

      else
      {
        v67 = v60;
      }

      if (v72 <= 2u)
      {
        v68 = v66;
      }

      else
      {
        v68 = v63;
      }

      v69 = sub_100017494(v67, v68 | 0x8000000000000000, v74);

      *(v57 + 4) = v69;
      _os_log_impl(&_mh_execute_header, v55, v56, "### Failed to determine BOOLValue for '%s'", v57, 0xCu);
      sub_10000903C(v58);
    }

    sub_10000903C(v75);
    return 0;
  }

  v25 = v73;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v71 = swift_slowAlloc();
    v74[0] = v71;
    *v28 = 67109378;
    *(v28 + 4) = v73;
    *(v28 + 8) = 2080;
    v29 = 0xD000000000000024;
    v30 = 0xD00000000000002DLL;
    v31 = 0xD000000000000030;
    if (v72 == 4)
    {
      v32 = "itycontrol.lockscreenControls";
    }

    else
    {
      v31 = 0xD000000000000029;
      v32 = "TransferObserver";
    }

    if (v72 == 3)
    {
      v33 = "ityControlUI.HandoffUI";
    }

    else
    {
      v30 = v31;
      v33 = v32;
    }

    v34 = 0xD000000000000026;
    if (v72 == 1)
    {
      v34 = 0xD00000000000001ALL;
      v35 = "itycontrol.cliClient";
    }

    else
    {
      v35 = "com.apple.proximitycontrol";
    }

    if (v72)
    {
      v29 = v34;
    }

    v36 = "soft";
    if (v72)
    {
      v36 = v35;
    }

    if (v72 <= 2u)
    {
      v37 = v29;
    }

    else
    {
      v37 = v30;
    }

    if (v72 <= 2u)
    {
      v38 = v36;
    }

    else
    {
      v38 = v33;
    }

    v39 = sub_100017494(v37, v38 | 0x8000000000000000, v74);

    *(v28 + 10) = v39;
    _os_log_impl(&_mh_execute_header, v26, v27, "Found value '%{BOOL}d' for entitlement '%s'", v28, 0x12u);
    sub_10000903C(v71);
  }

  sub_10000903C(v75);
  return v25;
}

unint64_t sub_1000D0B3C()
{
  result = qword_100342748;
  if (!qword_100342748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342748);
  }

  return result;
}

unint64_t sub_1000D0B90(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_100300D30, v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1000D0BDC(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v6 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v17 - v8;
  v10 = type metadata accessor for ExperienceEvent(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100009848(a2, v9, &qword_100342A10, &qword_100278A10);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    sub_1000097E8(v9, &qword_100342A10, &qword_100278A10);
  }

  else
  {
    sub_1000D6574(v9, v14, type metadata accessor for ExperienceEvent);
    v15 = sub_1002454A4(a1, v14);
    sub_100097C8C(v14, type metadata accessor for ExperienceEvent);
    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  return a3;
}

BOOL sub_1000D0DB0(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v5 = *(a2 + 16);
  do
  {
    v6 = v4;
    if (v5 == v4)
    {
      break;
    }

    v7 = *(type metadata accessor for ExperienceEvent(0) - 8);
    ++v4;
  }

  while ((sub_1002454A4(a2 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v6, a1) & 1) == 0);
  return v5 != v6;
}

BOOL sub_1000D0E68(unsigned __int8 a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = (a2 + 32);
  do
  {
    v4 = v2;
    if (v2-- == 0)
    {
      break;
    }

    v6 = *v3++;
  }

  while (v6 != a1);
  return v4 != 0;
}

uint64_t sub_1000D0E98@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v5 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_10026F050;
  sub_100097CEC(a1, v8 + v7, type metadata accessor for ExperienceEffect);
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  v10 = *v2;
  v12 = *(v2 + 1);
  v11 = *(v2 + 2);
  v14 = *(v2 + 3);
  v13 = *(v2 + 4);
  v18 = *(v2 + 5);
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000D71A4;
  *(v16 + 24) = v9;
  *(inited + 32) = sub_1000D7188;
  *(inited + 40) = v16;

  sub_1000B32F4(inited);
  *a2 = v10;
  *(a2 + 8) = v12;
  *(a2 + 16) = v11;
  *(a2 + 24) = v14;
  *(a2 + 32) = v13;
  *(a2 + 40) = v18;
}

uint64_t sub_1000D1068@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v6 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v7 = *(v6 + 72);
  v8 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_10026F050;
  sub_100097CEC(a1, v9 + v8, type metadata accessor for ExperienceEffect);
  v10 = swift_allocObject();
  *(v10 + 16) = v9;
  v12 = *(v3 + 16);
  v11 = *(v3 + 24);
  v13 = *(v3 + 32);
  v17 = *(v3 + 40);
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v15 = swift_allocObject();
  *(v15 + 16) = sub_1000D71A4;
  *(v15 + 24) = v10;
  *(inited + 32) = sub_1000D7188;
  *(inited + 40) = v15;

  sub_1000B32F4(inited);
  *a2 = *v3;
  *(a2 + 16) = v12;
  *(a2 + 24) = v11;
  *(a2 + 32) = v13;
  *(a2 + 40) = v17;
}

uint64_t sub_1000D1234(__int16 a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v27[0] = *v4;
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v4 + *(v27[0] + 144)) = 0;
  v13 = *(*v4 + 152);
  v14 = sub_100035D04(&qword_10033E220, &qword_100274468);
  v15 = *(v14 + 48);
  v16 = *(v14 + 52);
  swift_allocObject();
  *(v4 + v13) = PassthroughSubject.init()();
  v17 = *(*v4 + 160);
  v18 = sub_100035D04(&qword_10033DE78, &qword_100274160);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  swift_allocObject();
  *(v4 + v17) = PassthroughSubject.init()();
  v21 = *(*v4 + 168);
  v22 = sub_100035D04(&qword_1003429F8, &qword_1002789F8);
  v23 = *(v22 + 48);
  v24 = *(v22 + 52);
  swift_allocObject();
  *(v4 + v21) = PassthroughSubject.init()();
  v25 = (v4 + *(*v4 + 176));
  *v25 = 0;
  v25[1] = 0;
  *(v4 + *(*v4 + 136)) = a1;
  *(v4 + direct field offset for StateMachine2.edges) = a2;
  if (!a4)
  {
    v27[1] = v27[0];
    swift_getMetatypeMetadata();
    String.init<A>(describing:)();
  }

  Logger.init(subsystem:category:)();
  (*(v9 + 32))(v4 + qword_10038AFC0, v12, v8);
  return v4;
}

void *sub_1000D14E8(uint64_t a1)
{
  v2 = v1;
  swift_weakInit();
  v50 = qword_10038B0F0;
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v4 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_100278900;
  v8 = v7 + v6;
  *v8 = xmmword_100278910;
  *(v8 + 56) = 0;
  swift_storeEnumTagMultiPayload();
  v9 = v8 + v5;
  sub_10001618C();
  v10 = swift_allocError();
  *v11 = 0;
  *(v11 + 8) = 0xE000000000000000;
  *(v11 + 16) = 11;
  sub_10014FEEC(v10, v59);
  v12 = v60;
  v13 = v59[1];
  *v9 = v59[0];
  *(v9 + 16) = v13;
  *(v9 + 32) = v12;
  *(v9 + 40) = v61;
  v14 = 32;
  *(v9 + 56) = 32;
  swift_storeEnumTagMultiPayload();
  v15 = v8 + 2 * v5;
  *v15 = xmmword_100278910;
  *(v15 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v16 = v8 + 3 * v5;
  *v16 = xmmword_100278910;
  *(v16 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v17 = v8 + 4 * v5;
  *v17 = xmmword_100278910;
  *(v17 + 16) = 3;
  swift_storeEnumTagMultiPayload();
  v18 = v8 + 5 * v5;
  v19 = swift_allocError();
  *v20 = 0;
  *(v20 + 8) = 0xE000000000000000;
  *(v20 + 16) = 11;
  *v18 = v19;
  *(v18 + 8) = 0;
  *(v18 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  *(v8 + 6 * v5) = 3;
  swift_storeEnumTagMultiPayload();
  *(v8 + 7 * v5) = 0;
  swift_storeEnumTagMultiPayload();
  *(v1 + v50) = v7;
  swift_weakAssign();
  v21 = UUID.uuidString.getter();
  v22 = (v1 + qword_10038B0E0);
  *v22 = v21;
  v22[1] = v23;
  v24 = *(a1 + 24);
  *(v2 + qword_10038B0E8) = sub_10006F838();
  _StringGuts.grow(_:)(29);

  v25 = *v22;
  v26 = v22[1];

  sub_10000B584(8);

  v27 = static String._fromSubstring(_:)();
  v29 = v28;

  v30._countAndFlagsBits = v27;
  v30._object = v29;
  String.append(_:)(v30);

  v31 = _swiftEmptyArrayStorage;
  v32 = sub_1000D1234(1, _swiftEmptyArrayStorage, 0xD00000000000001BLL, 0x800000010029EE10);
  swift_retain_n();
  v52 = sub_1000D1BF8();
  v53 = sub_1000D2E4C();
  v54 = sub_1000D3200();
  v55 = sub_1000D3708();
  v56 = sub_1000D44A4();
  v57 = sub_1000D3CF8();
  result = sub_1000D6304();
  v58 = result;
  while (1)
  {
    v34 = *&v51[v14];
    v35 = *(v34 + 16);
    v36 = v31[2];
    v37 = v36 + v35;
    if (__OFADD__(v36, v35))
    {
      break;
    }

    v38 = *&v51[v14];

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result && v37 <= v31[3] >> 1)
    {
      if (*(v34 + 16))
      {
        goto LABEL_13;
      }
    }

    else
    {
      if (v36 <= v37)
      {
        v39 = v36 + v35;
      }

      else
      {
        v39 = v36;
      }

      result = sub_1000AF418(result, v39, 1, v31);
      v31 = result;
      if (*(v34 + 16))
      {
LABEL_13:
        if ((v31[3] >> 1) - v31[2] < v35)
        {
          goto LABEL_20;
        }

        sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
        swift_arrayInitWithCopy();

        if (v35)
        {
          v40 = v31[2];
          v41 = __OFADD__(v40, v35);
          v42 = v40 + v35;
          if (v41)
          {
            goto LABEL_21;
          }

          v31[2] = v42;
        }

        goto LABEL_3;
      }
    }

    if (v35)
    {
      goto LABEL_19;
    }

LABEL_3:
    v14 += 8;
    if (v14 == 88)
    {
      sub_100035D04(&qword_1003429D8, &qword_1002789C0);
      swift_arrayDestroy();
      v43 = direct field offset for StateMachine2.edges;
      swift_beginAccess();
      v44 = *(v32 + v43);
      *(v32 + v43) = v31;

      v45 = *(v32 + v43);

      v47 = sub_10007F638(v46);

      v48 = *(*v32 + 144);
      v49 = *(v32 + v48);
      *(v32 + v48) = v47;

      return v32;
    }
  }

  __break(1u);
LABEL_19:
  __break(1u);
LABEL_20:
  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1000D1A78()
{
  v1 = v0;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v14 = v5;
    *v4 = 136315138;
    *(v4 + 4) = sub_100017494(0x6164696C61766E69, 0xEC00000029286574, &v14);
    _os_log_impl(&_mh_execute_header, v2, v3, "%s", v4, 0xCu);
    sub_10000903C(v5);
  }

  v6 = direct field offset for StateMachine2.edges;
  swift_beginAccess();
  v7 = *(v1 + v6);
  *(v1 + v6) = _swiftEmptyArrayStorage;

  v8 = *(v1 + v6);

  v10 = sub_10007F638(v9);

  v11 = *(*v1 + 144);
  v12 = *(v1 + v11);
  *(v1 + v11) = v10;
}

void *sub_1000D1BF8()
{
  v49 = type metadata accessor for ExperienceEffect(0);
  v0 = *(*(v49 - 8) + 64);
  __chkstk_darwin(v49);
  v2 = v44 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for ExperienceEvent(0);
  v3 = *(v48 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v48);
  v6 = v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v44 - v7;
  v46 = sub_100035D04(&qword_10033DE68, &qword_100274150);
  inited = swift_initStackObject();
  v51 = xmmword_10026F050;
  inited[1] = xmmword_10026F050;
  *v8 = 1;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v8, v6, type metadata accessor for ExperienceEvent);
  v10 = *(v3 + 80);
  v47 = (v10 + 16) & ~v10;
  v11 = (v4 + v47 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44[1] = v10;
  v12 = swift_allocObject();
  sub_1000D6574(v6, v12 + ((v10 + 16) & ~v10), type metadata accessor for ExperienceEvent);
  v13 = (v12 + v11);
  v14 = v50;
  *v13 = sub_1000D6CE8;
  v13[1] = v14;

  sub_100097C8C(v8, type metadata accessor for ExperienceEvent);
  v61 = 1;
  v62 = sub_1000D6CF0;
  v63 = v12;
  v64 = _swiftEmptyArrayStorage;
  v65 = _swiftEmptyArrayStorage;
  v66 = _swiftEmptyArrayStorage;
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1000D0E98(v2, v53);

  sub_100097C8C(v2, type metadata accessor for ExperienceEffect);
  v15 = v53[1];
  inited[2] = v53[0];
  inited[3] = v15;
  inited[4] = v53[2];
  v45 = sub_1000D244C(inited);
  swift_setDeallocating();
  sub_1000097E8((inited + 2), &qword_10033EFF8, &unk_1002783E0);
  v16 = swift_initStackObject();
  v16[1] = v51;
  *v8 = 2;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v8, v6, type metadata accessor for ExperienceEvent);
  v17 = swift_allocObject();
  sub_1000D6574(v6, v17 + v47, type metadata accessor for ExperienceEvent);
  v18 = (v17 + v11);
  v19 = v50;
  *v18 = sub_1000D6D08;
  v18[1] = v19;

  sub_100097C8C(v8, type metadata accessor for ExperienceEvent);
  v55 = 1;
  v56 = sub_1000D71A0;
  v57 = v17;
  v58 = _swiftEmptyArrayStorage;
  v59 = _swiftEmptyArrayStorage;
  v60 = _swiftEmptyArrayStorage;
  *v2 = 0;
  *(v2 + 1) = 0;
  v2[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1000D0E98(v2, v54);

  sub_100097C8C(v2, type metadata accessor for ExperienceEffect);
  v20 = v54[1];
  v16[2] = v54[0];
  v16[3] = v20;
  v16[4] = v54[2];
  v49 = sub_1000D244C(v16);
  swift_setDeallocating();
  sub_1000097E8((v16 + 2), &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  v21 = swift_initStackObject();
  *(v21 + 16) = v51;
  *v8 = 3;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v8, v6, type metadata accessor for ExperienceEvent);
  v22 = swift_allocObject();
  sub_1000D6574(v6, v22 + v47, type metadata accessor for ExperienceEvent);
  v23 = (v22 + v11);
  v24 = v50;
  *v23 = sub_1000D6D10;
  v23[1] = v24;

  sub_100097C8C(v8, type metadata accessor for ExperienceEvent);
  *(v21 + 32) = &off_1003001E0;
  *(v21 + 40) = sub_1000D719C;
  *(v21 + 48) = v22;
  *(v21 + 56) = _swiftEmptyArrayStorage;
  *(v21 + 64) = _swiftEmptyArrayStorage;
  *(v21 + 72) = _swiftEmptyArrayStorage;
  v48 = sub_1000D25D0(v21);
  swift_setDeallocating();
  sub_1000097E8(v21 + 32, &qword_1003429E8, &qword_1002789D8);
  v25 = swift_initStackObject();
  *(v25 + 16) = v51;
  v26 = swift_allocObject();
  *(v26 + 16) = sub_1000D711C;
  *(v26 + 24) = v24;
  v27 = sub_1000D2A20();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v52 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v29 = swift_initStackObject();
  *(v29 + 16) = v51;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1000D71A4;
  *(v30 + 24) = v28;
  *(v29 + 32) = sub_1000D7188;
  *(v29 + 40) = v30;

  sub_1000B32F4(v29);
  v31 = v52;
  *(v25 + 32) = 1;
  *(v25 + 40) = sub_1000D7124;
  *(v25 + 48) = v26;
  *(v25 + 56) = _swiftEmptyArrayStorage;
  *(v25 + 64) = _swiftEmptyArrayStorage;
  *(v25 + 72) = v31;
  v32 = sub_1000D244C(v25);
  swift_setDeallocating();
  sub_1000097E8(v25 + 32, &qword_10033EFF8, &unk_1002783E0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v51;
  v34 = sub_1000D2A20();
  v35 = swift_allocObject();
  *(v35 + 16) = v34;
  v52 = _swiftEmptyArrayStorage;
  v36 = swift_initStackObject();
  *(v36 + 16) = v51;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1000D71A4;
  *(v37 + 24) = v35;
  *(v36 + 32) = sub_1000D7188;
  *(v36 + 40) = v37;
  sub_1000B32F4(v36);
  v38 = v52;
  *(v33 + 32) = 0;
  *(v33 + 40) = sub_1000D5764;
  *(v33 + 48) = 0;
  *(v33 + 56) = _swiftEmptyArrayStorage;
  *(v33 + 64) = _swiftEmptyArrayStorage;
  *(v33 + 72) = v38;
  v39 = sub_1000D244C(v33);
  swift_setDeallocating();
  sub_1000097E8(v33 + 32, &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v40 = swift_initStackObject();
  *(v40 + 16) = xmmword_100274B30;
  *(v40 + 32) = v45;
  v41 = v48;
  *(v40 + 40) = v49;
  *(v40 + 48) = v41;
  *(v40 + 56) = v32;
  *(v40 + 64) = v39;
  v42 = sub_1000D2B88(v40);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v42;
}

uint64_t sub_1000D23E0@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + qword_10038B0E8);

  v4 = sub_1001DF2A4();

  v6 = _swiftEmptyArrayStorage;
  v7 = 8449;
  if (v4)
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  a2[2] = v6;
  a2[3] = v6;
  return result;
}

void *sub_1000D244C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = (a1 + 72);
    while (1)
    {
      v14 = v1;
      v5 = *(v3 - 1);
      v4 = *v3;
      v6 = *(v3 - 3);
      v7 = *(v3 - 2);
      v8 = *(v3 - 4);
      v9 = *(v3 - 20);
      sub_100035D04(&qword_10033DE68, &qword_100274150);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10026F050;
      *(inited + 32) = v9;
      *(inited + 40) = v8;
      *(inited + 48) = v6;
      *(inited + 56) = v7;
      *(inited + 64) = v5;
      *(inited + 72) = v4;
      v11 = v2[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v13 = v2[3] >> 1, v13 <= v11))
      {
        result = sub_1000AF418(result, v11 + 1, 1, v2);
        v2 = result;
        v13 = result[3] >> 1;
      }

      if (v13 <= v2[2])
      {
        break;
      }

      v3 += 6;
      sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
      swift_arrayInitWithCopy();

      ++v2[2];
      v1 = v14 - 1;
      if (v14 == 1)
      {
        return v2;
      }
    }

    __break(1u);
  }

  else
  {
    return _swiftEmptyArrayStorage;
  }

  return result;
}

uint64_t sub_1000D25D0(uint64_t result)
{
  v22 = *(result + 16);
  if (!v22)
  {
    return _swiftEmptyArrayStorage;
  }

  v1 = 0;
  v21 = result + 32;
  v2 = _swiftEmptyArrayStorage;
  while (1)
  {
    v3 = (v21 + 48 * v1);
    v4 = *v3;
    v5 = *(*v3 + 16);
    if (v5)
    {
      v23 = v2;
      v24 = v1;
      v6 = v3[2];
      v25 = v3[1];
      v7 = v3[3];
      v8 = v3[4];
      v9 = v3[5];

      sub_1000CDF60(0, v5, 0);
      v10 = 32;
      v26 = v4;
      do
      {
        v27 = *(v4 + v10);
        v11 = _swiftEmptyArrayStorage[2];
        v12 = _swiftEmptyArrayStorage[3];

        if (v11 >= v12 >> 1)
        {
          sub_1000CDF60((v12 > 1), v11 + 1, 1);
        }

        _swiftEmptyArrayStorage[2] = v11 + 1;
        v13 = &_swiftEmptyArrayStorage[6 * v11];
        *(v13 + 16) = v27;
        v4 = v26;
        v13[5] = v25;
        v13[6] = v6;
        v13[7] = v7;
        v13[8] = v8;
        v13[9] = v9;
        v10 += 2;
        --v5;
      }

      while (v5);

      v2 = v23;
      v1 = v24;
    }

    v14 = _swiftEmptyArrayStorage[2];
    v15 = v2[2];
    v16 = v15 + v14;
    if (__OFADD__(v15, v14))
    {
      break;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) != 0 && v16 <= v2[3] >> 1)
    {
      if (_swiftEmptyArrayStorage[2])
      {
        goto LABEL_20;
      }
    }

    else
    {
      if (v15 <= v16)
      {
        v17 = v15 + v14;
      }

      else
      {
        v17 = v15;
      }

      result = sub_1000AF418(result, v17, 1, v2);
      v2 = result;
      if (_swiftEmptyArrayStorage[2])
      {
LABEL_20:
        if ((v2[3] >> 1) - v2[2] < v14)
        {
          goto LABEL_28;
        }

        sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
        swift_arrayInitWithCopy();

        if (v14)
        {
          v18 = v2[2];
          v19 = __OFADD__(v18, v14);
          v20 = v18 + v14;
          if (v19)
          {
            goto LABEL_29;
          }

          v2[2] = v20;
        }

        goto LABEL_4;
      }
    }

    if (v14)
    {
      goto LABEL_27;
    }

LABEL_4:
    if (++v1 == v22)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
  return result;
}

uint64_t sub_1000D286C@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + qword_10038B0E8);

  v4 = sub_1001DF2A4();

  v6 = 8449;
  if (v4)
  {
    v6 = 8193;
  }

  *a2 = v6;
  a2[1] = _swiftEmptyArrayStorage;
  a2[2] = _swiftEmptyArrayStorage;
  a2[3] = _swiftEmptyArrayStorage;
  return result;
}

uint64_t sub_1000D28D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, __int16 *a3@<X8>)
{
  v6 = type metadata accessor for ExperienceEvent(0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100097CEC(a1, v9, type metadata accessor for ExperienceEvent);
  result = swift_getEnumCaseMultiPayload();
  if (result != 3)
  {
    result = sub_100097C8C(v9, type metadata accessor for ExperienceEvent);
    goto LABEL_7;
  }

  v11 = *v9;
  if (v11 - 5 < 5)
  {
LABEL_7:
    v14 = -258;
    goto LABEL_8;
  }

  v12 = *(a2 + qword_10038B0E8);

  v13 = sub_1001DF2A4();

  if (v13)
  {
    if (v11 <= 4)
    {
      v14 = word_100278A1A[v11];
      goto LABEL_8;
    }

    goto LABEL_7;
  }

  if ((v11 & 0xFB) != 0)
  {
    v14 = -258;
  }

  else
  {
    v14 = -32512;
  }

LABEL_8:
  *a3 = v14;
  return result;
}

uint64_t sub_1000D2A20()
{
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v0 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100274B30;
  v4 = (v3 + v2);
  *v4 = 5;
  swift_storeEnumTagMultiPayload();
  v5 = &v4[v1];
  *v5 = xmmword_100271890;
  v5[16] = 0;
  swift_storeEnumTagMultiPayload();
  v4[2 * v1] = 5;
  swift_storeEnumTagMultiPayload();
  v4[3 * v1] = 3;
  swift_storeEnumTagMultiPayload();
  v6 = &v4[4 * v1];
  *(v6 + 1) = 0;
  *(v6 + 2) = 0;
  *v6 = 2;
  v6[24] = 4;
  swift_storeEnumTagMultiPayload();
  return v3;
}

void *sub_1000D2B88(void *result)
{
  v1 = result[2];
  if (v1)
  {
    v2 = _swiftEmptyArrayStorage;
    v3 = result + 4;
    while (1)
    {
      v4 = *v3;
      v5 = *(*v3 + 16);
      v6 = v2[2];
      v7 = v6 + v5;
      if (__OFADD__(v6, v5))
      {
        __break(1u);
LABEL_31:
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
        return result;
      }

      v8 = *v3;

      result = swift_isUniquelyReferenced_nonNull_native();
      if (result && v7 <= v2[3] >> 1)
      {
        if (*(v4 + 16))
        {
          goto LABEL_14;
        }
      }

      else
      {
        if (v6 <= v7)
        {
          v9 = v6 + v5;
        }

        else
        {
          v9 = v6;
        }

        result = sub_1000AF418(result, v9, 1, v2);
        v2 = result;
        if (*(v4 + 16))
        {
LABEL_14:
          if ((v2[3] >> 1) - v2[2] < v5)
          {
            goto LABEL_34;
          }

          sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
          swift_arrayInitWithCopy();

          if (v5)
          {
            v10 = v2[2];
            v11 = __OFADD__(v10, v5);
            v12 = v10 + v5;
            if (v11)
            {
              goto LABEL_35;
            }

            v2[2] = v12;
          }

          goto LABEL_4;
        }
      }

      if (v5)
      {
        goto LABEL_31;
      }

LABEL_4:
      ++v3;
      if (!--v1)
      {
        goto LABEL_19;
      }
    }
  }

  v2 = _swiftEmptyArrayStorage;
LABEL_19:
  v26 = v2[2];
  if (v26)
  {
    v13 = 0;
    v14 = _swiftEmptyArrayStorage;
    v15 = v2 + 9;
    v25 = v2;
    while (v13 < v2[2])
    {
      v17 = *(v15 - 1);
      v16 = *v15;
      v19 = *(v15 - 3);
      v18 = *(v15 - 2);
      v20 = *(v15 - 4);
      v21 = *(v15 - 20);
      sub_100035D04(&qword_10033DE68, &qword_100274150);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_10026F050;
      *(inited + 32) = v21;
      *(inited + 40) = v20;
      *(inited + 48) = v19;
      *(inited + 56) = v18;
      *(inited + 64) = v17;
      *(inited + 72) = v16;
      v23 = v14[2];

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v24 = v14[3] >> 1, v24 <= v23))
      {
        result = sub_1000AF418(result, v23 + 1, 1, v14);
        v14 = result;
        v24 = result[3] >> 1;
      }

      v2 = v25;
      if (v24 <= v14[2])
      {
        goto LABEL_33;
      }

      ++v13;
      sub_100035D04(&qword_10033EFF8, &unk_1002783E0);
      swift_arrayInitWithCopy();

      ++v14[2];
      v15 += 6;
      if (v26 == v13)
      {
        goto LABEL_29;
      }
    }

    goto LABEL_32;
  }

  v14 = _swiftEmptyArrayStorage;
LABEL_29:

  return v14;
}

void *sub_1000D2E4C()
{
  v22 = type metadata accessor for ExperienceEvent(0);
  v1 = *(v22 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v22);
  v4 = &v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v19 - v5;
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  inited = swift_initStackObject();
  v21 = xmmword_10026F050;
  *(inited + 16) = xmmword_10026F050;
  *v6 = 3;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v6, v4, type metadata accessor for ExperienceEvent);
  v8 = *(v1 + 80);
  v20 = (v8 + 16) & ~v8;
  v9 = (v2 + v20 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = swift_allocObject();
  sub_1000D6574(v4, v10 + ((v8 + 16) & ~v8), type metadata accessor for ExperienceEvent);
  v11 = (v10 + v9);
  *v11 = sub_1000D6CB8;
  v11[1] = v0;

  sub_100097C8C(v6, type metadata accessor for ExperienceEvent);
  *(inited + 32) = &off_100300208;
  *(inited + 40) = sub_1000D6CC4;
  *(inited + 48) = v10;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = _swiftEmptyArrayStorage;
  v23 = sub_1000D25D0(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_1003429E8, &qword_1002789D8);
  v12 = swift_initStackObject();
  *(v12 + 16) = v21;
  *v6 = xmmword_100278920;
  v6[16] = 4;
  swift_storeEnumTagMultiPayload();
  sub_100097CEC(v6, v4, type metadata accessor for ExperienceEvent);
  v13 = swift_allocObject();
  sub_1000D6574(v4, v13 + v20, type metadata accessor for ExperienceEvent);
  v14 = (v13 + v9);
  *v14 = sub_1000D6CDC;
  v14[1] = v0;

  sub_100097C8C(v6, type metadata accessor for ExperienceEvent);
  *(v12 + 32) = &off_100300230;
  *(v12 + 40) = sub_1000D719C;
  *(v12 + 48) = v13;
  *(v12 + 56) = _swiftEmptyArrayStorage;
  *(v12 + 64) = _swiftEmptyArrayStorage;
  *(v12 + 72) = _swiftEmptyArrayStorage;
  v15 = sub_1000D25D0(v12);
  swift_setDeallocating();
  sub_1000097E8(v12 + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v16 = swift_initStackObject();
  *(v16 + 16) = xmmword_1002725A0;
  *(v16 + 32) = v23;
  *(v16 + 40) = v15;
  v17 = sub_1000D2B88(v16);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v17;
}

void *sub_1000D3200()
{
  v1 = v0;
  v2 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2 - 8);
  v6 = v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v8 = v31 - v7;
  sub_100035D04(&qword_10033DE68, &qword_100274150);
  inited = swift_initStackObject();
  v31[0] = xmmword_10026F050;
  *(inited + 16) = xmmword_10026F050;
  *v8 = xmmword_100271890;
  v8[16] = 4;
  v10 = type metadata accessor for ExperienceEvent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v10 - 8) + 56))(v8, 0, 1, v10);
  sub_100009848(v8, v6, &qword_100342A10, &qword_100278A10);
  v11 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v12 = v11 + v4;
  v13 = swift_allocObject();
  sub_10003693C(v6, v13 + v11, &qword_100342A10, &qword_100278A10);
  *(v13 + v12) = 8449;
  sub_1000097E8(v8, &qword_100342A10, &qword_100278A10);
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v14 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_100278930;
  v18 = (v17 + v16);
  *v18 = 0;
  swift_storeEnumTagMultiPayload();
  v18[v15] = 0;
  swift_storeEnumTagMultiPayload();
  v18[2 * v15] = 4;
  swift_storeEnumTagMultiPayload();
  v18[3 * v15] = 0;
  swift_storeEnumTagMultiPayload();
  v19 = swift_allocObject();
  *(v19 + 16) = v17;
  v32 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v20 = swift_initStackObject();
  *(v20 + 16) = v31[0];
  v21 = swift_allocObject();
  *(v21 + 16) = sub_1000D71A4;
  *(v21 + 24) = v19;
  *(v20 + 32) = sub_1000D7188;
  *(v20 + 40) = v21;
  sub_1000B32F4(v20);
  v22 = v32;
  *(inited + 32) = 8449;
  *(inited + 40) = sub_1000D7194;
  *(inited + 48) = v13;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = v22;
  v23 = sub_1000D244C(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  v24 = swift_initStackObject();
  *(v24 + 16) = v31[0];
  v25 = *(v1 + qword_10038B0F0);
  v26 = swift_allocObject();
  v26[2] = v25;
  v26[3] = sub_1000D7198;
  v26[4] = v1;
  *(v24 + 32) = &off_100300258;
  *(v24 + 40) = sub_1000D718C;
  *(v24 + 48) = v26;
  *(v24 + 56) = _swiftEmptyArrayStorage;
  *(v24 + 64) = _swiftEmptyArrayStorage;
  *(v24 + 72) = _swiftEmptyArrayStorage;

  v27 = sub_1000D25D0(v24);
  swift_setDeallocating();
  sub_1000097E8(v24 + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v28 = swift_initStackObject();
  *(v28 + 16) = xmmword_1002725A0;
  *(v28 + 32) = v23;
  *(v28 + 40) = v27;
  v29 = sub_1000D2B88(v28);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v29;
}

void *sub_1000D3708()
{
  v0 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0 - 8);
  v4 = &v36 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v6 = &v36 - v5;
  v37 = sub_100035D04(&qword_10033DE68, &qword_100274150);
  inited = swift_initStackObject();
  v39 = xmmword_10026F050;
  *(inited + 16) = xmmword_10026F050;
  *v6 = xmmword_100271890;
  v6[16] = 4;
  v8 = type metadata accessor for ExperienceEvent(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v8 - 8) + 56))(v6, 0, 1, v8);
  sub_100009848(v6, v4, &qword_100342A10, &qword_100278A10);
  v9 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v10 = v9 + v2;
  v11 = swift_allocObject();
  sub_10003693C(v4, v11 + v9, &qword_100342A10, &qword_100278A10);
  *(v11 + v10) = 8193;
  sub_1000097E8(v6, &qword_100342A10, &qword_100278A10);
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v12 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v13 = *(v12 + 72);
  v14 = (*(v12 + 80) + 32) & ~*(v12 + 80);
  v15 = swift_allocObject();
  v36 = xmmword_1002727F0;
  *(v15 + 16) = xmmword_1002727F0;
  v16 = (v15 + v14);
  *v16 = 0;
  swift_storeEnumTagMultiPayload();
  v16[v13] = 4;
  swift_storeEnumTagMultiPayload();
  v16[2 * v13] = 1;
  swift_storeEnumTagMultiPayload();
  v17 = swift_allocObject();
  *(v17 + 16) = v15;
  v40 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v18 = swift_initStackObject();
  *(v18 + 16) = v39;
  v19 = swift_allocObject();
  *(v19 + 16) = sub_1000D71A4;
  *(v19 + 24) = v17;
  *(v18 + 32) = sub_1000D7188;
  *(v18 + 40) = v19;
  sub_1000B32F4(v18);
  v20 = v40;
  *(inited + 32) = 8193;
  *(inited + 40) = sub_1000D7194;
  *(inited + 48) = v11;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = v20;
  v21 = sub_1000D244C(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  v22 = swift_initStackObject();
  *(v22 + 16) = v39;
  v23 = sub_1000D5920();
  v24 = swift_allocObject();
  v24[2] = v23;
  v24[3] = sub_1000D7198;
  v24[4] = v38;
  *(v22 + 32) = &off_100300280;
  *(v22 + 40) = sub_1000D718C;
  *(v22 + 48) = v24;
  *(v22 + 56) = _swiftEmptyArrayStorage;
  *(v22 + 64) = _swiftEmptyArrayStorage;
  *(v22 + 72) = _swiftEmptyArrayStorage;

  v25 = sub_1000D25D0(v22);
  swift_setDeallocating();
  sub_1000097E8(v22 + 32, &qword_1003429E8, &qword_1002789D8);
  v26 = swift_initStackObject();
  *(v26 + 16) = v39;
  v27 = sub_1000D2A20();
  v28 = swift_allocObject();
  *(v28 + 16) = v27;
  v40 = _swiftEmptyArrayStorage;
  v29 = swift_initStackObject();
  *(v29 + 16) = v39;
  v30 = swift_allocObject();
  *(v30 + 16) = sub_1000D71A4;
  *(v30 + 24) = v28;
  *(v29 + 32) = sub_1000D7188;
  *(v29 + 40) = v30;
  sub_1000B32F4(v29);
  v31 = v40;
  *(v26 + 32) = 8193;
  *(v26 + 40) = sub_1000D5764;
  *(v26 + 48) = 0;
  *(v26 + 56) = _swiftEmptyArrayStorage;
  *(v26 + 64) = _swiftEmptyArrayStorage;
  *(v26 + 72) = v31;
  v32 = sub_1000D244C(v26);
  swift_setDeallocating();
  sub_1000097E8(v26 + 32, &qword_10033EFF8, &unk_1002783E0);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v33 = swift_initStackObject();
  *(v33 + 16) = v36;
  *(v33 + 32) = v21;
  *(v33 + 40) = v25;
  *(v33 + 48) = v32;
  v34 = sub_1000D2B88(v33);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v34;
}

void *sub_1000D3CF8()
{
  v52 = type metadata accessor for ExperienceEffect(0);
  v0 = *(*(v52 - 8) + 64);
  __chkstk_darwin(v52);
  v2 = &v39 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_100035D04(&qword_100342A10, &qword_100278A10);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  v6 = __chkstk_darwin(v3 - 8);
  v7 = &v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v6);
  v9 = &v39 - v8;
  v48 = sub_100035D04(&qword_10033DE68, &qword_100274150);
  inited = swift_initStackObject();
  v53 = xmmword_10026F050;
  inited[1] = xmmword_10026F050;
  *v9 = 5;
  *(v9 + 40) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 8) = 0u;
  v9[56] = 66;
  v11 = type metadata accessor for ExperienceEvent(0);
  swift_storeEnumTagMultiPayload();
  v40 = v11;
  v12 = *(v11 - 8);
  v47 = *(v12 + 56);
  v51 = v12 + 56;
  v47(v9, 0, 1, v11);
  v43 = v7;
  sub_100009848(v9, v7, &qword_100342A10, &qword_100278A10);
  v13 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v45 = *(v4 + 80);
  v46 = v13;
  v14 = v13 + v5;
  v44 = v14;
  v15 = swift_allocObject();
  sub_10003693C(v7, v15 + v13, &qword_100342A10, &qword_100278A10);
  *(v15 + v14) = 16385;
  sub_1000097E8(v9, &qword_100342A10, &qword_100278A10);
  v69 = 16385;
  v70 = sub_1000D6828;
  v71 = v15;
  v72 = _swiftEmptyArrayStorage;
  v73 = _swiftEmptyArrayStorage;
  v74 = _swiftEmptyArrayStorage;
  *(v2 + 1) = 0;
  *(v2 + 2) = 0;
  *v2 = 0;
  v2[24] = 4;
  swift_storeEnumTagMultiPayload();
  sub_1000D0E98(v2, v54);

  v39 = type metadata accessor for ExperienceEffect;
  sub_100097C8C(v2, type metadata accessor for ExperienceEffect);
  v16 = v54[1];
  inited[2] = v54[0];
  inited[3] = v16;
  inited[4] = v54[2];
  v49 = sub_1000D244C(inited);
  swift_setDeallocating();
  sub_1000097E8((inited + 2), &qword_10033EFF8, &unk_1002783E0);
  v42 = sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  v17 = swift_initStackObject();
  v17[1] = v53;
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v18 = *(v51 + 16);
  v19 = (*(v51 + 24) + 32) & ~*(v51 + 24);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1002725A0;
  v21 = v20 + v19;
  *v21 = 0u;
  *(v21 + 16) = 0u;
  *(v21 + 32) = 0u;
  *(v21 + 48) = 0;
  *(v21 + 56) = 0x80;
  v22 = v40;
  swift_storeEnumTagMultiPayload();
  v23 = v21 + v18;
  *v23 = 3;
  *(v23 + 8) = 0u;
  *(v23 + 24) = 0u;
  *(v23 + 40) = 0u;
  *(v23 + 56) = 66;
  swift_storeEnumTagMultiPayload();
  v24 = swift_allocObject();
  *(v24 + 16) = v20;
  *(v24 + 24) = 16385;
  v63 = &off_100300348;
  v64 = sub_1000D7190;
  v65 = v24;
  v66 = _swiftEmptyArrayStorage;
  v67 = _swiftEmptyArrayStorage;
  v68 = _swiftEmptyArrayStorage;
  *v2 = xmmword_100271890;
  v2[16] = 0;
  swift_storeEnumTagMultiPayload();
  sub_1000D1068(v2, v55);
  sub_100097C8C(v2, type metadata accessor for ExperienceEffect);

  v25 = v55[1];
  v17[2] = v55[0];
  v17[3] = v25;
  v17[4] = v55[2];
  v41 = sub_1000D25D0(v17);
  swift_setDeallocating();
  sub_1000097E8((v17 + 2), &qword_1003429E8, &qword_1002789D8);
  v26 = swift_initStackObject();
  v26[1] = v53;
  *v9 = 1;
  *(v9 + 8) = 0u;
  *(v9 + 24) = 0u;
  *(v9 + 40) = 0u;
  v9[56] = 66;
  swift_storeEnumTagMultiPayload();
  v47(v9, 0, 1, v22);
  v27 = v43;
  sub_100009848(v9, v43, &qword_100342A10, &qword_100278A10);
  v28 = v44;
  v29 = swift_allocObject();
  sub_10003693C(v27, v29 + v46, &qword_100342A10, &qword_100278A10);
  *(v29 + v28) = 16385;
  sub_1000097E8(v9, &qword_100342A10, &qword_100278A10);
  v57 = 16385;
  v58 = sub_1000D7194;
  v59 = v29;
  v60 = _swiftEmptyArrayStorage;
  v61 = _swiftEmptyArrayStorage;
  v62 = _swiftEmptyArrayStorage;
  swift_storeEnumTagMultiPayload();
  sub_1000D0E98(v2, v56);

  sub_100097C8C(v2, v39);
  v30 = v56[1];
  v26[2] = v56[0];
  v26[3] = v30;
  v26[4] = v56[2];
  v31 = sub_1000D244C(v26);
  swift_setDeallocating();
  sub_1000097E8((v26 + 2), &qword_10033EFF8, &unk_1002783E0);
  v32 = swift_initStackObject();
  *(v32 + 16) = v53;
  v33 = sub_1000D5F94();
  v34 = swift_allocObject();
  v34[2] = v33;
  v34[3] = sub_1000D6860;
  v34[4] = v50;
  *(v32 + 32) = &off_100300370;
  *(v32 + 40) = sub_1000D718C;
  *(v32 + 48) = v34;
  *(v32 + 56) = _swiftEmptyArrayStorage;
  *(v32 + 64) = _swiftEmptyArrayStorage;
  *(v32 + 72) = _swiftEmptyArrayStorage;

  v35 = sub_1000D25D0(v32);
  swift_setDeallocating();
  sub_1000097E8(v32 + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_100278930;
  *(v36 + 32) = v49;
  *(v36 + 40) = v41;
  *(v36 + 48) = v31;
  *(v36 + 56) = v35;
  v37 = sub_1000D2B88(v36);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v37;
}

void *sub_1000D44A4()
{
  v1 = v0;
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v3 = sub_1000D5CA8();
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = 16385;
  sub_100035D04(&qword_10033EFD8, &qword_1002789F0);
  v5 = *(type metadata accessor for ExperienceEffect(0) - 8);
  v6 = *(v5 + 72);
  v7 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1002725A0;
  v9 = (v8 + v7);
  *v9 = 3;
  swift_storeEnumTagMultiPayload();
  v10 = &v9[v6];
  *v10 = xmmword_100271890;
  v10[16] = 0;
  swift_storeEnumTagMultiPayload();
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v12 = swift_initStackObject();
  *(v12 + 16) = xmmword_10026F050;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000D71A4;
  *(v13 + 24) = v11;
  *(v12 + 32) = sub_1000D7188;
  *(v12 + 40) = v13;
  sub_1000B32F4(v12);
  *(inited + 32) = &off_1003002F8;
  *(inited + 40) = sub_1000D7190;
  *(inited + 48) = v4;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = _swiftEmptyArrayStorage;
  v14 = sub_1000D25D0(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_1003429E8, &qword_1002789D8);
  v15 = swift_initStackObject();
  *(v15 + 16) = xmmword_10026F050;
  v16 = sub_1000D5F94();
  v17 = swift_allocObject();
  v17[2] = v16;
  v17[3] = sub_1000D7198;
  v17[4] = v1;
  *(v15 + 32) = &off_100300320;
  *(v15 + 40) = sub_1000D6568;
  *(v15 + 48) = v17;
  *(v15 + 56) = _swiftEmptyArrayStorage;
  *(v15 + 64) = _swiftEmptyArrayStorage;
  *(v15 + 72) = _swiftEmptyArrayStorage;

  v18 = sub_1000D25D0(v15);
  swift_setDeallocating();
  sub_1000097E8(v15 + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v19 = swift_initStackObject();
  *(v19 + 16) = xmmword_1002725A0;
  *(v19 + 32) = v14;
  *(v19 + 40) = v18;
  v20 = sub_1000D2B88(v19);
  swift_setDeallocating();
  sub_100035D04(&qword_1003429D8, &qword_1002789C0);
  swift_arrayDestroy();
  return v20;
}

uint64_t sub_1000D482C(int a1, int a2)
{
  v3 = v2;
  v6 = type metadata accessor for ExperienceEffect(0);
  v64 = *(v6 - 8);
  v7 = *(v64 + 64);
  __chkstk_darwin(v6);
  v66 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v59 = sub_100035D04(&qword_100342A00, &qword_100278A00);
  v9 = *(v59 - 8);
  v10 = *(v9 + 64);
  v11 = __chkstk_darwin(v59);
  v13 = &v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v11);
  v65 = &v57 - v15;
  v16 = __chkstk_darwin(v14);
  v18 = &v57 - v17;
  __chkstk_darwin(v16);
  v20 = &v57 - v19;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v61 = v20;
  LODWORD(v62) = a1;
  if (v23)
  {
    v24 = a2;
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v63 = v18;
    v27 = v9;
    v28 = v26;
    v68[0] = v26;
    *v25 = 136315650;
    *(v25 + 4) = sub_100017494(0xD00000000000002CLL, 0x800000010029EE80, v68);
    *(v25 + 12) = 1024;
    *(v25 + 14) = a1 & 1;
    *(v25 + 18) = 1024;
    *(v25 + 20) = v24 & 1;
    _os_log_impl(&_mh_execute_header, v21, v22, "%s: isHinting=%{BOOL}d, transferIfAutomatic=%{BOOL}d", v25, 0x18u);
    sub_10000903C(v28);
    v9 = v27;
    v18 = v63;

    a2 = v24;
    v20 = v61;
  }

  else
  {
  }

  LODWORD(v63) = a2;
  v29 = *(*v3 + 136);
  swift_beginAccess();
  v30 = *(v3 + v29);
  if (v30 & 0xE000) == 0x2000 && (*(v3 + v29) & 0x100) != 0 && (v30)
  {
    v57 = 2;
    v31 = 16641;
  }

  else
  {
    v32 = *(v3 + qword_10038B0E8);

    v33 = sub_1001DF6B0();

    if (v33)
    {
      v31 = 16641;
    }

    else
    {
      v31 = 16385;
    }

    if (v33)
    {
      v34 = 2;
    }

    else
    {
      v34 = 3;
    }

    v57 = v34;
  }

  v35 = *(v64 + 56);
  v35(v20, 1, 1, v6);
  if ((v62 & 1) == 0)
  {
    v40 = 2;
    goto LABEL_29;
  }

  if (qword_100338E90 != -1)
  {
    swift_once();
  }

  if (byte_10038AFB0 == 1)
  {
    if (qword_100338F18 != -1)
    {
      swift_once();
    }

    v36 = *(qword_10038B0B8 + 888);
    v37 = sub_10005F4D0();

    if ((v37 & 1) == 0)
    {

      sub_1000097E8(v20, &qword_100342A00, &qword_100278A00);
LABEL_27:
      v39 = xmmword_100271890;
      goto LABEL_28;
    }
  }

  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

  sub_1000097E8(v20, &qword_100342A00, &qword_100278A00);
  if ((v38 & 1) != 0 || (v31 & 0x100) != 0)
  {
    goto LABEL_27;
  }

  v39 = xmmword_10026F060;
LABEL_28:
  *v18 = v39;
  v18[16] = 0;
  swift_storeEnumTagMultiPayload();
  v40 = 1;
  v35(v18, 0, 1, v6);
  sub_10003693C(v18, v20, &qword_100342A00, &qword_100278A00);
LABEL_29:
  v58 = v31;
  sub_100035D04(&qword_100342A08, &qword_100278A08);
  v41 = *(v9 + 72);
  v42 = (*(v9 + 80) + 32) & ~*(v9 + 80);
  v60 = swift_allocObject();
  v43 = v60 + v42;
  *(v60 + v42) = v40;
  swift_storeEnumTagMultiPayload();
  v44 = 1;
  v35(v43, 0, 1, v6);
  sub_100009848(v20, v43 + v41, &qword_100342A00, &qword_100278A00);
  v62 = v43;
  v45 = v43 + 2 * v41;
  if (v63)
  {
    *(v45 + 8) = 0;
    *(v45 + 16) = 0;
    *v45 = 1;
    *(v45 + 24) = 4;
    swift_storeEnumTagMultiPayload();
    v44 = 0;
  }

  v35((v43 + 2 * v41), v44, 1, v6);
  v46 = v62;
  *(v62 + 3 * v41) = v57;
  swift_storeEnumTagMultiPayload();
  v35((v46 + 3 * v41), 0, 1, v6);
  *(v46 + 4 * v41) = 2;
  v47 = 5;
  swift_storeEnumTagMultiPayload();
  v35((v46 + 4 * v41), 0, 1, v6);
  v48 = (v64 + 48);
  v49 = _swiftEmptyArrayStorage;
  v63 = v6;
  do
  {
    v50 = v65;
    sub_100009848(v46, v65, &qword_100342A00, &qword_100278A00);
    sub_10003693C(v50, v13, &qword_100342A00, &qword_100278A00);
    if ((*v48)(v13, 1, v6) == 1)
    {
      sub_1000097E8(v13, &qword_100342A00, &qword_100278A00);
    }

    else
    {
      sub_1000D6574(v13, v66, type metadata accessor for ExperienceEffect);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = sub_1000AFDE4(0, v49[2] + 1, 1, v49);
      }

      v52 = v49[2];
      v51 = v49[3];
      if (v52 >= v51 >> 1)
      {
        v49 = sub_1000AFDE4(v51 > 1, v52 + 1, 1, v49);
      }

      v49[2] = v52 + 1;
      sub_1000D6574(v66, v49 + ((*(v64 + 80) + 32) & ~*(v64 + 80)) + *(v64 + 72) * v52, type metadata accessor for ExperienceEffect);
      v6 = v63;
    }

    v46 += v41;
    --v47;
  }

  while (v47);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v53 = swift_allocObject();
  *(v53 + 16) = v49;
  v67 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v55 = swift_allocObject();
  *(v55 + 16) = sub_1000D71A4;
  *(v55 + 24) = v53;
  *(inited + 32) = sub_1000D7188;
  *(inited + 40) = v55;
  sub_1000B32F4(inited);
  sub_1000097E8(v61, &qword_100342A00, &qword_100278A00);
  return v58;
}

uint64_t sub_1000D50D8()
{
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v1 = *(Strong + 24);
    v2 = sub_100070EF4();

    if (v2 == 4)
    {
      v3 = 0;
    }

    else
    {
      v3 = v2;
    }
  }

  else
  {
    v3 = 0;
  }

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    *v6 = 136315394;
    *(v6 + 4) = sub_100017494(0x6944726F46646E65, 0xEF29287373696D73, &v18);
    v7 = 0xE400000000000000;
    *(v6 + 12) = 2080;
    v8 = 1701602409;
    v9 = 1953393000;
    if (v3 != 2)
    {
      v9 = 1819047270;
    }

    if (v3)
    {
      v8 = 0x6F69746163756465;
      v7 = 0xE90000000000006ELL;
    }

    if (v3 <= 1u)
    {
      v10 = v8;
    }

    else
    {
      v10 = v9;
    }

    if (v3 <= 1u)
    {
      v11 = v7;
    }

    else
    {
      v11 = 0xE400000000000000;
    }

    v12 = sub_100017494(v10, v11, &v18);

    *(v6 + 14) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "%s: self.uxRegion=%s", v6, 0x16u);
    swift_arrayDestroy();
  }

  v13 = sub_1000D2A20();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  v18 = _swiftEmptyArrayStorage;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  v16 = swift_allocObject();
  *(v16 + 16) = sub_1000D71A4;
  *(v16 + 24) = v14;
  *(inited + 32) = sub_1000D7188;
  *(inited + 40) = v16;
  sub_1000B32F4(inited);
  if ((v3 & 0xFE) != 0)
  {
    return 0;
  }

  else
  {
    return 4294934784;
  }
}

uint64_t sub_1000D5388()
{
  swift_weakDestroy();
  v1 = *(v0 + qword_10038B0E0 + 8);

  v2 = *(v0 + qword_10038B0E8);

  v3 = *(v0 + qword_10038B0F0);
}

uint64_t sub_1000D53EC()
{
  v1 = qword_10038AFC0;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + direct field offset for StateMachine2.edges);

  v4 = *(v0 + *(*v0 + 144));

  v5 = *(v0 + *(*v0 + 152));

  v6 = *(v0 + *(*v0 + 160));

  v7 = *(v0 + *(*v0 + 168));

  v8 = *(v0 + *(*v0 + 176) + 8);

  swift_weakDestroy();
  v9 = *(v0 + qword_10038B0E0 + 8);

  v10 = *(v0 + qword_10038B0E8);

  v11 = *(v0 + qword_10038B0F0);

  return v0;
}

uint64_t sub_1000D5538()
{
  sub_1000D53EC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for HandoffStateMachine_Legacy()
{
  result = qword_100342778;
  if (!qword_100342778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000D5674(uint64_t a1, uint64_t a2, unsigned __int16 a3)
{
  v4 = *(a2 + 16);
  if (v4)
  {
    v7 = 0;
    while (v4 != v7)
    {
      v8 = *(type metadata accessor for ExperienceEvent(0) - 8);
      v9 = sub_1002454A4(a2 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v7++, a1);
      if (v9)
      {
        return a3;
      }
    }

    return 0;
  }

  return a3;
}

void *sub_1000D577C@<X0>(void *(*a1)(uint64_t *__return_ptr)@<X1>, void *a2@<X8>)
{
  result = a1(&v7);
  v4 = v7 & 0xFEFE;
  if (v4 == 65278)
  {
    v5 = 0;
  }

  else
  {
    v5 = v7;
  }

  if (v4 == 65278)
  {
    v6 = 0;
  }

  else
  {
    v6 = &_swiftEmptyArrayStorage;
  }

  *a2 = v5;
  a2[1] = v6;
  a2[2] = v6;
  a2[3] = v6;
  return result;
}

uint64_t sub_1000D57D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(_OWORD *__return_ptr, uint64_t, __n128, __n128)@<X2>, _OWORD *a4@<X8>)
{
  result = sub_1002454A4(a2, a1);
  v8 = 0uLL;
  v9 = 0uLL;
  if (result)
  {
    result = a3(v10, a1, 0, 0);
    v8 = v10[0];
    v9 = v10[1];
  }

  *a4 = v8;
  a4[1] = v9;
  return result;
}

uint64_t sub_1000D5844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *(*a3)(_OWORD *__return_ptr, uint64_t, __n128, __n128)@<X2>, _OWORD *a4@<X8>)
{
  result = sub_1002454A4(a1, a2);
  v8 = 0uLL;
  v9 = 0uLL;
  if (result)
  {
    result = a3(v10, a1, 0, 0);
    v8 = v10[0];
    v9 = v10[1];
  }

  *a4 = v8;
  a4[1] = v9;
  return result;
}

double sub_1000D58A8@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(__int128 *__return_ptr, uint64_t)@<X2>, _OWORD *a4@<X8>)
{
  if (*(a2 + 16))
  {
    v6 = a1;
    if (!sub_1000D0DB0(a1, a2))
    {
      v9 = 0u;
      v10 = 0u;
      goto LABEL_6;
    }

    a1 = v6;
  }

  a3(&v9, a1);
LABEL_6:
  result = *&v9;
  v8 = v10;
  *a4 = v9;
  a4[1] = v8;
  return result;
}

size_t sub_1000D5920()
{
  v0 = type metadata accessor for ExperienceEvent(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v29 - v6;
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v8 = *(v1 + 72);
  v9 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_100274B70;
  v11 = v10 + v9;
  v29 = xmmword_100278910;
  *v11 = xmmword_100278910;
  *(v11 + 16) = 1;
  swift_storeEnumTagMultiPayload();
  v12 = v10 + v9 + v8;
  *v12 = v29;
  *(v12 + 16) = 2;
  swift_storeEnumTagMultiPayload();
  v13 = v10 + v9 + 2 * v8;
  *v13 = v29;
  *(v13 + 16) = 3;
  swift_storeEnumTagMultiPayload();
  v14 = v10 + v9 + 3 * v8;
  sub_10001618C();
  v15 = swift_allocError();
  *v16 = 0;
  *(v16 + 8) = 0xE000000000000000;
  *(v16 + 16) = 11;
  *v14 = v15;
  *(v14 + 8) = 0;
  *(v14 + 16) = 0;
  swift_storeEnumTagMultiPayload();
  v17 = v10 + v9 + 4 * v8;
  *v17 = xmmword_100274290;
  *(v17 + 16) = 4;
  swift_storeEnumTagMultiPayload();
  v18 = v10 + v9 + 5 * v8;
  *v18 = 1;
  *(v18 + 8) = 1;
  swift_storeEnumTagMultiPayload();
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v19 = qword_10038B0B8;
  v20 = *(qword_10038B0B8 + 1016);
  v21 = sub_1000031CC();

  if (v21)
  {
    *v7 = 1;
    v7[8] = 0;
    swift_storeEnumTagMultiPayload();
    v23 = *(v10 + 16);
    v22 = *(v10 + 24);
    if (v23 >= v22 >> 1)
    {
      v10 = sub_1000AF574(v22 > 1, v23 + 1, 1, v10);
    }

    *(v10 + 16) = v23 + 1;
    sub_1000D6574(v7, v10 + v9 + v23 * v8, type metadata accessor for ExperienceEvent);
  }

  v24 = *(v19 + 1024);
  v25 = sub_1000031CC();

  if (v25)
  {
    *v5 = 0;
    v5[8] = 0;
    swift_storeEnumTagMultiPayload();
    v27 = *(v10 + 16);
    v26 = *(v10 + 24);
    if (v27 >= v26 >> 1)
    {
      v10 = sub_1000AF574(v26 > 1, v27 + 1, 1, v10);
    }

    *(v10 + 16) = v27 + 1;
    sub_1000D6574(v5, v10 + v9 + v27 * v8, type metadata accessor for ExperienceEvent);
  }

  return v10;
}

void *sub_1000D5CA8()
{
  v0 = type metadata accessor for ExperienceEvent(0);
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  v3 = __chkstk_darwin(v0);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v3);
  v7 = &v20 - v6;
  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v8 = qword_10038B0B8;
  v9 = *(qword_10038B0B8 + 392);
  v10 = sub_1000031CC();

  if (v10)
  {
    *v7 = 0;
    v7[56] = 96;
    swift_storeEnumTagMultiPayload();
    v11 = sub_1000AF574(0, 1, 1, _swiftEmptyArrayStorage);
    v13 = v11[2];
    v12 = v11[3];
    if (v13 >= v12 >> 1)
    {
      v11 = sub_1000AF574(v12 > 1, v13 + 1, 1, v11);
    }

    v11[2] = v13 + 1;
    sub_1000D6574(v7, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v13, type metadata accessor for ExperienceEvent);
  }

  else
  {
    v11 = _swiftEmptyArrayStorage;
  }

  v14 = *(v8 + 480);
  v15 = sub_10005F4F0();

  if (v15)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return v11;
    }
  }

  *v5 = 1;
  v5[56] = 96;
  swift_storeEnumTagMultiPayload();
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_1000AF574(0, v11[2] + 1, 1, v11);
  }

  v18 = v11[2];
  v17 = v11[3];
  if (v18 >= v17 >> 1)
  {
    v11 = sub_1000AF574(v17 > 1, v18 + 1, 1, v11);
  }

  v11[2] = v18 + 1;
  sub_1000D6574(v5, v11 + ((*(v1 + 80) + 32) & ~*(v1 + 80)) + *(v1 + 72) * v18, type metadata accessor for ExperienceEvent);
  return v11;
}

uint64_t sub_1000D5F94()
{
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v0 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100274B70;
  v4 = v3 + v2;
  *v4 = xmmword_100278910;
  *(v4 + 56) = 0;
  swift_storeEnumTagMultiPayload();
  v5 = v4 + v1;
  sub_10001618C();
  v6 = swift_allocError();
  *v7 = 0;
  *(v7 + 8) = 0xE000000000000000;
  *(v7 + 16) = 11;
  sub_10014FEEC(v6, v16);
  v8 = v17;
  v9 = v16[1];
  *v5 = v16[0];
  *(v5 + 16) = v9;
  *(v5 + 32) = v8;
  *(v5 + 40) = v18;
  *(v5 + 56) = 64;
  swift_storeEnumTagMultiPayload();
  v10 = v4 + 2 * v1;
  v11 = swift_allocError();
  *v12 = 0;
  *(v12 + 8) = 0xE000000000000000;
  *(v12 + 16) = 11;
  sub_10014FEEC(v11, v19);
  v13 = v20;
  v14 = v19[1];
  *v10 = v19[0];
  *(v10 + 16) = v14;
  *(v10 + 32) = v13;
  *(v10 + 40) = v21;
  *(v10 + 56) = 32;
  swift_storeEnumTagMultiPayload();
  *(v4 + 3 * v1) = 2;
  type metadata accessor for TransferEvent();
  swift_storeEnumTagMultiPayload();
  swift_storeEnumTagMultiPayload();
  *(v4 + 4 * v1) = 3;
  swift_storeEnumTagMultiPayload();
  *(v4 + 5 * v1) = 0;
  swift_storeEnumTagMultiPayload();
  return v3;
}

uint64_t sub_1000D61CC()
{
  sub_100035D04(&qword_10033F058, &unk_1002789B0);
  v0 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v1 = *(v0 + 72);
  v2 = (*(v0 + 80) + 32) & ~*(v0 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_100278930;
  v4 = (v3 + v2);
  *v4 = 6;
  swift_storeEnumTagMultiPayload();
  v5 = &v4[v1];
  *v5 = 0;
  v5[8] = 2;
  swift_storeEnumTagMultiPayload();
  v6 = &v4[2 * v1];
  *v6 = 0;
  v6[8] = 4;
  swift_storeEnumTagMultiPayload();
  v7 = &v4[3 * v1];
  *v7 = 0;
  v7[8] = 6;
  swift_storeEnumTagMultiPayload();
  return v3;
}

void *sub_1000D6304()
{
  sub_100035D04(&qword_1003429E0, &qword_1002789C8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10026F050;
  if (qword_1003392B8 != -1)
  {
    swift_once();
  }

  v1 = qword_10038B670;
  v2 = sub_1000D61CC();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = -32512;
  v4 = sub_1000D2A20();
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  sub_100035D04(&qword_10033EFE0, &qword_1002789D0);
  v6 = swift_initStackObject();
  *(v6 + 16) = xmmword_10026F050;
  v7 = swift_allocObject();
  *(v7 + 16) = sub_1000D6530;
  *(v7 + 24) = v5;
  *(v6 + 32) = sub_1000D6538;
  *(v6 + 40) = v7;

  sub_1000B32F4(v6);
  *(inited + 32) = v1;
  *(inited + 40) = sub_1000D652C;
  *(inited + 48) = v3;
  *(inited + 56) = _swiftEmptyArrayStorage;
  *(inited + 64) = _swiftEmptyArrayStorage;
  *(inited + 72) = _swiftEmptyArrayStorage;
  v8 = sub_1000D25D0(inited);
  swift_setDeallocating();
  sub_1000097E8(inited + 32, &qword_1003429E8, &qword_1002789D8);
  sub_100035D04(&qword_1003429F0, &unk_1002789E0);
  v9 = swift_initStackObject();
  *(v9 + 16) = xmmword_10026F050;
  *(v9 + 32) = v8;
  v10 = v9 + 32;
  v11 = sub_1000D2B88(v9);
  swift_setDeallocating();
  sub_1000097E8(v10, &qword_1003429D8, &qword_1002789C0);
  return v11;
}

uint64_t sub_1000D6538@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3();
  *a1 = result;
  return result;
}

uint64_t sub_1000D6574(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000D65E4(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 1u)
  {
    if (a3 == 2 || a3 == 3)
    {
    }
  }

  else if (a3)
  {
    if (a3 == 1)
    {
    }
  }

  else
  {
  }

  return result;
}

uint64_t sub_1000D6624(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned __int8 a8)
{
  v9 = a8 >> 5;
  if (v9 == 2)
  {
    v10 = a8 & 0x1F;

    return sub_1000D66B0(result, a2, a3, a4, a5, a6, a7, v10);
  }

  else
  {
    if (v9 == 1)
    {
    }

    else
    {
      if (a8 >> 5)
      {
        return result;
      }
    }
  }
}

uint64_t sub_1000D66B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8 != 1)
  {
    if (a8)
    {
      return result;
    }
  }
}

uint64_t sub_1000D6710(uint64_t result, unint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  switch(a8)
  {
    case 2:

    case 1:

      return sub_10006DB04(result, a2);
    case 0:

      return sub_1000D6794(result, a2, a3);
  }

  return result;
}

uint64_t sub_1000D6794(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 2u)
  {
  }

  return result;
}

uint64_t sub_1000D67AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a8)
  {
    if (a8 != 1)
    {
      return result;
    }
  }
}

unint64_t sub_1000D680C(unint64_t result)
{
  if ((result >> 62) <= 1)
  {
  }

  return result;
}

uint64_t sub_1000D682C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1000D5674(a1, *(v2 + 16), *(v2 + 24));
  *a2 = result;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  return result;
}

uint64_t sub_1000D6864()
{
  v1 = *(sub_100035D04(&qword_100342A10, &qword_100278A10) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for ExperienceEvent(0);
  if ((*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1000D6624(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_1000D6710(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
      }
    }

    else
    {
      sub_1000D65DC(*v5, *(v5 + 8), *(v5 + 16));
    }

    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1000D67AC(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9 || (*v5 - 1) < 3)
    {
      goto LABEL_2;
    }

LABEL_28:

    goto LABEL_2;
  }

  type metadata accessor for TransferEvent();
  v8 = swift_getEnumCaseMultiPayload();
  if (v8 <= 3)
  {
    if (v8 != 1)
    {
      if (v8 == 2 || v8 == 3)
      {
        v9 = *(v5 + 16);

        v10 = *(v5 + 32);

        v11 = *(v5 + 48);
      }

      goto LABEL_2;
    }

LABEL_27:
    v12 = *v5;
    goto LABEL_28;
  }

  switch(v8)
  {
    case 4:
      if (*(v5 + 8) != 1)
      {

        v13 = *(v5 + 24);
      }

      v14 = type metadata accessor for HandoffTargetStatus();
      v15 = v5 + *(v14 + 20);
      v16 = type metadata accessor for ShareableContent(0);
      if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
      {
        v17 = *(v15 + 8);

        v18 = *(v16 + 20);
        v19 = type metadata accessor for URL();
        v20 = *(v19 - 8);
        if (!(*(v20 + 48))(v15 + v18, 1, v19))
        {
          (*(v20 + 8))(v15 + v18, v19);
        }
      }

      v21 = *(v5 + *(v14 + 24));

      break;
    case 5:
      goto LABEL_27;
    case 6:
      sub_1000D680C(*v5);
      break;
  }

LABEL_2:

  return _swift_deallocObject(v0, v4 + v3 + 2, v2 | 7);
}

uint64_t sub_1000D6B9C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = *(sub_100035D04(&qword_100342A10, &qword_100278A10) - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  result = sub_1000D0BDC(a1, v2 + v6, *(v2 + v6 + *(v5 + 64)));
  *a2 = result;
  a2[1] = v8;
  a2[2] = v9;
  a2[3] = v10;
  return result;
}

uint64_t sub_1000D6C40@<X0>(void *a1@<X8>)
{
  result = sub_1000D50D8();
  *a1 = result;
  a1[1] = _swiftEmptyArrayStorage;
  a1[2] = _swiftEmptyArrayStorage;
  a1[3] = v3;
  return result;
}

uint64_t sub_1000D6C78()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000D6D1C@<X0>(int a1@<W1>, int a2@<W2>, void *a3@<X8>)
{
  result = sub_1000D482C(a1, a2);
  *a3 = result;
  a3[1] = _swiftEmptyArrayStorage;
  a3[2] = _swiftEmptyArrayStorage;
  a3[3] = v5;
  return result;
}

uint64_t sub_1000D6D5C()
{
  v1 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 4)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
        sub_1000D6624(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
      }

      else if (EnumCaseMultiPayload == 4)
      {
        sub_1000D6710(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
      }
    }

    else
    {
      sub_1000D65DC(*v5, *(v5 + 8), *(v5 + 16));
    }

    goto LABEL_25;
  }

  if (EnumCaseMultiPayload == 5)
  {
    sub_1000D67AC(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24), *(v5 + 32), *(v5 + 40), *(v5 + 48), *(v5 + 56));
    goto LABEL_25;
  }

  if (EnumCaseMultiPayload != 8)
  {
    if (EnumCaseMultiPayload != 9 || (*v5 - 1) < 3)
    {
      goto LABEL_25;
    }

LABEL_24:

    goto LABEL_25;
  }

  type metadata accessor for TransferEvent();
  v7 = swift_getEnumCaseMultiPayload();
  if (v7 <= 3)
  {
    if (v7 != 1)
    {
      if (v7 == 2 || v7 == 3)
      {
        v8 = *(v5 + 16);

        v9 = *(v5 + 32);

        v10 = *(v5 + 48);
      }

      goto LABEL_25;
    }

LABEL_23:
    v11 = *v5;
    goto LABEL_24;
  }

  switch(v7)
  {
    case 4:
      if (*(v5 + 8) != 1)
      {

        v14 = *(v5 + 24);
      }

      v15 = type metadata accessor for HandoffTargetStatus();
      v16 = v5 + *(v15 + 20);
      v17 = type metadata accessor for ShareableContent(0);
      if (!(*(*(v17 - 8) + 48))(v16, 1, v17))
      {
        v18 = *(v16 + 8);

        v19 = *(v17 + 20);
        v20 = type metadata accessor for URL();
        v21 = *(v20 - 8);
        if (!(*(v21 + 48))(v16 + v19, 1, v20))
        {
          (*(v21 + 8))(v16 + v19, v20);
        }
      }

      v22 = *(v5 + *(v15 + 24));

      break;
    case 5:
      goto LABEL_23;
    case 6:
      sub_1000D680C(*v5);
      break;
  }

LABEL_25:
  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = *(v0 + v12 + 8);

  return _swift_deallocObject(v0, v12 + 16, v2 | 7);
}

uint64_t sub_1000D7058(uint64_t a1, uint64_t (*a2)(uint64_t, unint64_t, uint64_t, uint64_t))
{
  v4 = *(type metadata accessor for ExperienceEvent(0) - 8);
  v5 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v6 = (v2 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v7 = *v6;
  v8 = v6[1];

  return a2(a1, v2 + v5, v7, v8);
}

void *sub_1000D7124@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);
  result = v3(&v9);
  v6 = v9 & 0xFEFE;
  if (v6 == 65278)
  {
    v7 = 0;
  }

  else
  {
    v7 = v9;
  }

  if (v6 == 65278)
  {
    v8 = 0;
  }

  else
  {
    v8 = &_swiftEmptyArrayStorage;
  }

  *a1 = v7;
  a1[1] = v8;
  a1[2] = v8;
  a1[3] = v8;
  return result;
}

uint64_t sub_1000D71A8()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100342A18);
  sub_100003078(v0, qword_100342A18);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000D7228()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 16);
    sub_100035D04(&qword_100342B18, &qword_100278A98);
    sub_10000E244(&qword_100342B38, &qword_100342B18, &qword_100278A98);
    v2 = v0;
    v1 = Publisher.eraseToAnyPublisher()();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1000D72EC(uint64_t result)
{
  v1 = *result;
  if (*(result + 8))
  {
    if (*(result + 8) == 1)
    {
      swift_beginAccess();
      result = swift_weakLoadStrong();
      if (result)
      {
LABEL_13:
        v7 = *(result + 16);

        PassthroughSubject.send(_:)();
      }
    }
  }

  else
  {
    if (v1 >= 3)
    {
      if (qword_100338F38 != -1)
      {
        swift_once();
      }

      v3 = type metadata accessor for Logger();
      sub_100003078(v3, qword_100342A18);
      v4 = Logger.logObject.getter();
      v5 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 134217984;
        *(v6 + 4) = v1;
        _os_log_impl(&_mh_execute_header, v4, v5, "### Unknown motionState: rawValue=%ld", v6, 0xCu);
      }
    }

    else
    {
      v2 = qword_100278AA8[v1];
    }

    swift_beginAccess();
    result = swift_weakLoadStrong();
    if (result)
    {
      goto LABEL_13;
    }
  }

  return result;
}

uint64_t sub_1000D74B8(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    PassthroughSubject.send(_:)();
  }

  return result;
}

uint64_t sub_1000D7540(unsigned __int8 *a1)
{
  v1 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v3 = *(result + 16);

    PassthroughSubject.send(_:)();
  }

  return result;
}

void *sub_1000D75C8()
{
  v1 = v0;
  if (qword_100338F38 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100342A18);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  return v1;
}

uint64_t sub_1000D76C0()
{
  sub_1000D75C8();

  return swift_deallocClassInstance();
}

uint64_t sub_1000D7718@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

void *sub_1000D7748(uint64_t a1)
{
  v3 = type metadata accessor for Logger();
  v42 = *(v3 - 8);
  v4 = *(v42 + 64);
  __chkstk_darwin(v3);
  v45 = v5;
  v46 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_100035D04(&qword_100342B10, &qword_100278A88);
  v49 = *(v6 - 8);
  v50 = v6;
  v7 = *(v49 + 64);
  __chkstk_darwin(v6);
  v48 = &v37 - v8;
  v39 = sub_100035D04(&qword_10034A450, &qword_100278A90);
  v41 = *(v39 - 8);
  v9 = *(v41 + 64);
  __chkstk_darwin(v39);
  v11 = &v37 - v10;
  v12 = sub_100035D04(&qword_100342B18, &qword_100278A98);
  v13 = *(v12 + 48);
  v14 = *(v12 + 52);
  swift_allocObject();
  v15 = PassthroughSubject.init()();
  v16 = v1;
  v1[4] = &_swiftEmptySetSingleton;
  v1[2] = v15;
  v1[3] = 0;
  if (qword_100338F38 != -1)
  {
    swift_once();
  }

  v47 = v3;
  v40 = sub_100003078(v3, qword_100342A18);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&_mh_execute_header, v17, v18, "Init", v19, 2u);
  }

  v20 = *(*(a1 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_batteryStateMonitor) + 16);

  v52 = sub_10005E50C();
  sub_100035D04(&unk_1003436D0, &qword_1002702F0);
  sub_10000E244(&unk_10034A4A0, &unk_1003436D0, &qword_1002702F0);
  v21 = Publisher.eraseToAnyPublisher()();

  v52 = v21;
  swift_allocObject();
  swift_weakInit();
  v38 = v16;

  v22 = sub_100035D04(&unk_1003436E0, &unk_100276210);
  v51 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v43 = sub_10000E244(&qword_10034A4B0, &unk_1003436E0, &unk_100276210);
  v44 = v22;
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v37 = a1;
  v52 = sub_1001413FC();
  Publisher<>.removeDuplicates()();

  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_10034A4C0, &qword_10034A450, &qword_100278A90);
  v23 = v39;
  Publisher<>.sink(receiveValue:)();

  (*(v41 + 8))(v11, v23);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v24 = sub_100141508();
  v25 = static os_log_type_t.info.getter();
  v52 = v24;
  v26 = v42;
  v27 = v46;
  v28 = v47;
  (*(v42 + 16))(v46, v40, v47);
  v29 = (*(v26 + 80) + 64) & ~*(v26 + 80);
  v30 = v29 + v45;
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  *(v31 + 4) = 0xD000000000000021;
  *(v31 + 5) = 0x800000010029EF30;
  *(v31 + 6) = 0;
  *(v31 + 7) = 0xE000000000000000;
  (*(v26 + 32))(&v31[v29], v27, v28);
  v31[v30] = v25;
  sub_100035D04(&qword_100342B20, &qword_100278AA0);
  sub_10000E244(&qword_100342B28, &qword_100342B20, &qword_100278AA0);
  v32 = v48;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100342B30, &qword_100342B10, &qword_100278A88);
  v33 = v50;
  v34 = Publisher.eraseToAnyPublisher()();

  (*(v49 + 8))(v32, v33);
  v52 = v34;
  swift_allocObject();
  v35 = v38;
  swift_weakInit();
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v52 = *(v37 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_orientationPublisher);
  swift_allocObject();
  swift_weakInit();

  sub_100035D04(&qword_10033F5A8, &qword_100276208);
  sub_10000E244(&qword_10033F5B0, &qword_10033F5A8, &qword_100276208);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v52 = sub_1001412EC();
  swift_allocObject();
  swift_weakInit();

  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v35;
}

uint64_t sub_1000D8090@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(type metadata accessor for Logger() - 8);
  result = sub_1001BE860(*a1, *(a1 + 8), *(v2 + 16), *(v2 + 24), *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)), *(v2 + ((*(v5 + 80) + 64) & ~*(v5 + 80)) + *(v5 + 64)));
  *a2 = result;
  *(a2 + 8) = v7;
  return result;
}

uint64_t sub_1000D8178()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100342B40);
  v1 = sub_100003078(v0, qword_100342B40);
  if (qword_100339110 != -1)
  {
    swift_once();
  }

  v2 = sub_100003078(v0, qword_10038B420);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

void sub_1000D8240(void *a1, unsigned __int8 a2)
{
  if (*a1)
  {
    if (qword_100338F40 != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    sub_100003078(v3, qword_100342B40);
    swift_errorRetain();
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v19 = v8;
      *v6 = 136315394;
      v9 = "ityControl.activity.annoucement";
      v10 = "ityControl.activity.call";
      v11 = "ityControl.activity.timer";
      v12 = 0xD000000000000028;
      if (a2 != 3)
      {
        v12 = 0xD000000000000029;
        v11 = "sendCurrentValue";
      }

      if (a2 == 2)
      {
        v13 = 0xD000000000000029;
      }

      else
      {
        v13 = v12;
      }

      if (a2 != 2)
      {
        v10 = v11;
      }

      v14 = 0xD00000000000002FLL;
      if (a2)
      {
        v9 = "ityControl.activity.media";
      }

      else
      {
        v14 = 0xD000000000000029;
      }

      if (a2 <= 1u)
      {
        v15 = v14;
      }

      else
      {
        v15 = v13;
      }

      if (a2 <= 1u)
      {
        v16 = v9;
      }

      else
      {
        v16 = v10;
      }

      v17 = sub_100017494(v15, v16 | 0x8000000000000000, &v19);

      *(v6 + 4) = v17;
      *(v6 + 12) = 2112;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v6 + 14) = v18;
      *v7 = v18;
      _os_log_impl(&_mh_execute_header, v4, v5, "### Failed to get %s: %@", v6, 0x16u);
      sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

      sub_10000903C(v8);
    }

    else
    {
    }
  }
}

void sub_1000D8498(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = *a1;
  if (*a1 && (v12 = *a1, swift_getObjectType(), (v13 = sub_1000D8784()) != 0))
  {
    v14 = v13;
  }

  else
  {
    sub_100035D04(&qword_100350E70, &qword_100278AE0);
    inited = swift_initStackObject();
    strcpy((inited + 32), "activityName");
    *(inited + 16) = xmmword_10026F050;
    *(inited + 72) = &type metadata for String;
    *(inited + 45) = 0;
    *(inited + 46) = -5120;
    *(inited + 48) = a2;
    *(inited + 56) = a3;

    v14 = sub_10024DA80(inited);
    swift_setDeallocating();
    sub_1000097E8(inited + 32, &unk_100350E80, &qword_100278AE8);
  }

  v27 = &type metadata for String;
  *&aBlock = a4;
  *(&aBlock + 1) = a5;
  sub_1000516B4(&aBlock, v31);

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = v14;
  sub_10004D4E0(v31, 0x4974736575716572, 0xE900000000000044, isUniquelyReferenced_nonNull_native);
  v17 = v30;
  v18 = *(a6 + OBJC_IVAR____TtC17proximitycontrold12RapportProxy_rpCLClient);
  if (v18)
  {
    v19 = v18;
    v20 = String._bridgeToObjectiveC()();
    sub_10011A14C(v17);

    isa = Dictionary._bridgeToObjectiveC()().super.isa;

    v22 = String._bridgeToObjectiveC()();
    v23 = swift_allocObject();
    v23[2] = v11;
    v23[3] = a2;
    v23[4] = a3;
    v28 = sub_1000DAD68;
    v29 = v23;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    v26 = sub_100124498;
    v27 = &unk_100306BA0;
    v24 = _Block_copy(&aBlock);
    swift_unknownObjectRetain();

    [v19 sendEventID:v20 event:isa destinationID:v22 options:0 completion:v24];
    _Block_release(v24);
  }

  else
  {
  }
}

void *sub_1000D8784()
{
  objc_opt_self();
  v0 = swift_dynamicCastObjCClass();
  if (v0)
  {
    swift_unknownObjectRetain();
    v1 = [v0 userInfo];
    if (v1)
    {
      v2 = v1;
      v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

      v11 = sub_100035D04(&qword_10033B7D0, &unk_100272100);
      if (v3)
      {
LABEL_7:
        v10[0] = v3;
        sub_100035D04(&qword_100350E70, &qword_100278AE0);
        inited = swift_initStackObject();
        *(inited + 16) = xmmword_1002725A0;
        strcpy((inited + 32), "activityName");
        *(inited + 45) = 0;
        *(inited + 46) = -5120;
        v5 = [v0 activityType];
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v8 = v7;

        *(inited + 48) = v6;
        *(inited + 56) = v8;
        *(inited + 72) = &type metadata for String;
        *(inited + 80) = 0xD000000000000010;
        *(inited + 88) = 0x800000010029F070;
        sub_10001766C(v10, inited + 96);
        v0 = sub_10024DA80(inited);
        swift_setDeallocating();
        sub_100035D04(&unk_100350E80, &qword_100278AE8);
        swift_arrayDestroy();
        swift_unknownObjectRelease();
        sub_10000903C(v10);
        return v0;
      }
    }

    else
    {
      v11 = sub_100035D04(&qword_10033B7D0, &unk_100272100);
    }

    v3 = sub_10024D824(_swiftEmptyArrayStorage);
    goto LABEL_7;
  }

  return v0;
}

void sub_1000D8978(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!a1)
  {
    if (a2)
    {
      v11 = 0x6C696E2D6E6F6ELL;
    }

    else
    {
      v11 = 7104878;
    }

    if (a2)
    {
      v12 = 0xE700000000000000;
    }

    else
    {
      v12 = 0xE300000000000000;
    }

    if (qword_100338F40 != -1)
    {
      swift_once();
    }

    v13 = type metadata accessor for Logger();
    sub_100003078(v13, qword_100342B40);

    oslog = Logger.logObject.getter();
    v14 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(oslog, v14))
    {
      v15 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      *v15 = 136315394;
      *(v15 + 4) = sub_100017494(a3, a4, &v18);
      *(v15 + 12) = 2080;
      v16 = sub_100017494(v11, v12, &v18);

      *(v15 + 14) = v16;
      _os_log_impl(&_mh_execute_header, oslog, v14, "Successfully sent %s activity to peer: %s", v15, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }

    goto LABEL_20;
  }

  swift_errorRetain();
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342B40);
  swift_errorRetain();
  oslog = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    *v6 = 138412290;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    _os_log_impl(&_mh_execute_header, oslog, v5, "### Failed to send activity update to peeer. %@", v6, 0xCu);
    sub_1000097E8(v7, &qword_100339940, &unk_100272C50);

LABEL_20:

    return;
  }
}

uint64_t sub_1000D8CC0(uint64_t a1, unint64_t a2, int a3)
{
  v4 = v3;
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v78 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = a2;
  v13 = sub_1000092A0();
  v90 = v14;
  UUID.init()();
  v15 = UUID.uuidString.getter();
  v17 = v16;
  (*(v9 + 8))(v12, v8);
  v18 = sub_100035D04(&qword_100342B80, &qword_100278AF0);
  v19 = *(v18 + 48);
  v20 = *(v18 + 52);
  v88 = v18;
  swift_allocObject();
  v21 = PassthroughSubject.init()();
  v22 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_remoteSubscriptions;
  swift_beginAccess();

  v23 = *(v4 + v22);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = *(v4 + v22);
  *(v4 + v22) = 0x8000000000000000;
  sub_10004D4B4(v21, v15, v17, isUniquelyReferenced_nonNull_native);
  v86 = v17;

  *(v4 + v22) = v91;
  swift_endAccess();
  sub_100035D04(&qword_100350E70, &qword_100278AE0);
  inited = swift_initStackObject();
  v26 = inited;
  strcpy((inited + 32), "activityName");
  *(inited + 16) = xmmword_1002727F0;
  *(inited + 45) = 0;
  *(inited + 46) = -5120;
  v27 = *(a1 + 16);
  v28 = _swiftEmptyArrayStorage;
  v89 = v21;
  if (v27)
  {
    v81 = inited;
    v82 = inited + 32;
    v83 = v15;
    v84 = a3;
    v85 = v13;
    v92 = _swiftEmptyArrayStorage;
    sub_1000CDF40(0, v27, 0);
    v29 = (a1 + 32);
    v28 = v92;
    v30 = "ityControl.activity.annoucement";
    v31 = "ityControl.activity.call";
    do
    {
      v33 = *v29++;
      v32 = v33;
      v34 = 0xD000000000000029;
      v35 = 0xD000000000000028;
      if (v33 == 3)
      {
        v36 = "ityControl.activity.timer";
      }

      else
      {
        v35 = 0xD000000000000029;
        v36 = "sendCurrentValue";
      }

      if (v32 == 2)
      {
        v35 = 0xD000000000000029;
        v36 = v31;
      }

      if (v32)
      {
        v34 = 0xD00000000000002FLL;
        v37 = "ityControl.activity.media";
      }

      else
      {
        v37 = v30;
      }

      if (v32 <= 1)
      {
        v38 = v34;
      }

      else
      {
        v38 = v35;
      }

      if (v32 <= 1)
      {
        v39 = v37;
      }

      else
      {
        v39 = v36;
      }

      v92 = v28;
      v41 = v28[2];
      v40 = v28[3];
      if (v41 >= v40 >> 1)
      {
        v80 = v30;
        v79 = v31;
        sub_1000CDF40((v40 > 1), v41 + 1, 1);
        v31 = v79;
        v30 = v80;
        v28 = v92;
      }

      v28[2] = v41 + 1;
      v42 = &v28[2 * v41];
      v42[4] = v38;
      v42[5] = v39 | 0x8000000000000000;
      --v27;
    }

    while (v27);
    v21 = v89;
    v13 = v85;
    LOBYTE(a3) = v84;
    v15 = v83;
    v26 = v81;
  }

  v43 = sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  *(v26 + 48) = v28;
  *(v26 + 72) = v43;
  *(v26 + 80) = 0x4974736575716572;
  *(v26 + 88) = 0xE900000000000044;
  *(v26 + 96) = v15;
  *(v26 + 104) = v86;
  *(v26 + 120) = &type metadata for String;
  *(v26 + 128) = 0xD000000000000010;
  *(v26 + 136) = 0x800000010029EF60;
  *(v26 + 168) = &type metadata for Bool;
  *(v26 + 144) = (a3 & 1) == 0;
  v44 = sub_10024DA80(v26);
  swift_setDeallocating();
  sub_100035D04(&unk_100350E80, &qword_100278AE8);
  swift_arrayDestroy();
  v45 = v90;
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v46 = type metadata accessor for Logger();
  sub_100003078(v46, qword_100342B40);

  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = v44;
    v51 = swift_slowAlloc();
    v92 = v51;
    *v49 = 136315138;
    *(v49 + 4) = sub_100017494(v13, v45, &v92);
    _os_log_impl(&_mh_execute_header, v47, v48, "Begin activity transport on %s ", v49, 0xCu);
    sub_10000903C(v51);
    v44 = v50;
  }

  v52 = v87;
  v53 = swift_allocObject();
  v54 = v13;
  v53[2] = v13;
  v53[3] = v45;
  v53[4] = v21;
  v55 = OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture;
  v56 = *(v52 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionFuture);
  swift_retain_n();
  swift_bridgeObjectRetain_n();
  if (v56)
  {
    goto LABEL_26;
  }

  v65 = sub_100191C14(v52);
  if (v65)
  {
LABEL_31:
    sub_1000DA9A4(v65, v54, v45);

    goto LABEL_33;
  }

  v56 = *(v52 + v55);
  if (!v56)
  {
    if (qword_100339118 != -1)
    {
      swift_once();
    }

    sub_100003078(v46, qword_100349658);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&_mh_execute_header, v74, v75, "Device has no paired connection?", v76, 2u);
    }

    sub_10001618C();
    v65 = swift_allocError();
    *v77 = 0xD000000000000014;
    *(v77 + 8) = 0x800000010029F0B0;
    *(v77 + 16) = 9;
    goto LABEL_31;
  }

LABEL_26:
  v87 = v44;
  v57 = qword_100339118;

  if (v57 != -1)
  {
    swift_once();
  }

  sub_100003078(v46, qword_100349658);

  v58 = v52;
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v59, v60))
  {
    v61 = swift_slowAlloc();
    v92 = swift_slowAlloc();
    *v61 = 136315394;
    *(v61 + 4) = sub_100017494(0xD000000000000012, 0x800000010029F090, &v92);
    *(v61 + 12) = 2080;
    v62 = sub_1000092A0();
    v64 = sub_100017494(v62, v63, &v92);

    *(v61 + 14) = v64;
    _os_log_impl(&_mh_execute_header, v59, v60, "Sending request %s to %s", v61, 0x16u);
    swift_arrayDestroy();
  }

  v92 = v56;
  v66 = swift_allocObject();
  v66[2] = 0xD000000000000012;
  v66[3] = 0x800000010029F090;
  v66[4] = v58;
  v66[5] = sub_1000DB5CC;
  v66[6] = v53;
  v67 = swift_allocObject();
  swift_weakInit();
  v68 = swift_allocObject();
  *(v68 + 16) = v67;
  *(v68 + 24) = 0xD000000000000012;
  v69 = v87;
  *(v68 + 32) = 0x800000010029F090;
  *(v68 + 40) = v69;
  *(v68 + 48) = 0;
  *(v68 + 56) = sub_1000DB5CC;
  *(v68 + 64) = v53;
  *(v68 + 72) = 1;
  swift_retain_n();

  sub_100035D04(&qword_100342B90, &qword_100278AF8);
  sub_10000E244(&qword_100342B98, &qword_100342B90, &qword_100278AF8);
  v70 = Publisher.sink(receiveCompletion:receiveValue:)();

  v71 = *(v58 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask);
  *(v58 + OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_pairedConnectionTask) = v70;

  v21 = v89;
LABEL_33:

  v92 = v21;
  sub_10000E244(&qword_100342B88, &qword_100342B80, &qword_100278AF0);
  v72 = Publisher.eraseToAnyPublisher()();

  return v72;
}

uint64_t sub_1000D9768(uint64_t a1, uint64_t a2, void (*a3)(void, void, uint64_t), uint64_t a4)
{
  v5 = v4;
  ObjectType = swift_getObjectType();
  v124 = sub_100035D04(&qword_100342B58, &qword_100278AD0);
  v122 = *(v124 - 8);
  v10 = *(v122 + 64);
  __chkstk_darwin(v124);
  v123 = v99 - v11;
  v12 = sub_100035D04(&qword_10034C680, &qword_100270390);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v129 = v99 - v14;
  v128 = type metadata accessor for DispatchQoS.QoSClass();
  v121 = *(v128 - 8);
  v15 = *(v121 + 8);
  __chkstk_darwin(v128);
  v127 = v99 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = sub_100035D04(&qword_100342B60, &qword_100278AD8);
  v120 = *(v126 - 8);
  v17 = *(v120 + 8);
  __chkstk_darwin(v126);
  v19 = v99 - v18;
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v20 = type metadata accessor for Logger();
  sub_100003078(v20, qword_100342B40);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&_mh_execute_header, v21, v22, "Handling incoming observation request", v23, 2u);
  }

  strcpy(v135, "activityName");
  BYTE5(v135[1]) = 0;
  HIWORD(v135[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v24 = sub_1000851E8(v136), (v25 & 1) == 0))
  {
    sub_1000516C4(v136);
    goto LABEL_28;
  }

  sub_10001766C(*(a1 + 56) + 32 * v24, &v132);
  sub_1000516C4(v136);
  sub_100035D04(&qword_1003397D0, &qword_1002729A0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_28:
    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v53, v54))
    {
LABEL_31:

LABEL_32:
      sub_10001618C();
      v57 = swift_allocError();
      *v58 = 0;
      *(v58 + 8) = 0xE000000000000000;
      *(v58 + 16) = 9;
      a3(0, 0, v57);
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "### Recieved observation request with no activivtes";
LABEL_30:
    _os_log_impl(&_mh_execute_header, v53, v54, v56, v55, 2u);

    goto LABEL_31;
  }

  v26 = v135[0];
  if (!a2)
  {

    v132 = 0u;
    v133 = 0u;
    goto LABEL_36;
  }

  v135[0] = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v135[1] = v27;
  AnyHashable.init<A>(_:)();
  if (!*(a2 + 16) || (v28 = sub_1000851E8(v136), (v29 & 1) == 0))
  {
    sub_1000516C4(v136);
    v132 = 0u;
    v133 = 0u;
    goto LABEL_34;
  }

  sub_10001766C(*(a2 + 56) + 32 * v28, &v132);
  sub_1000516C4(v136);
  if (!*(&v133 + 1))
  {
LABEL_34:

LABEL_36:
    sub_1000097E8(&v132, &unk_100339680, &qword_100278390);
    goto LABEL_32;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_32;
  }

  v30 = v136[1];
  v108 = v136[0];
  strcpy(v135, "requestID");
  WORD1(v135[1]) = 0;
  HIDWORD(v135[1]) = -385875968;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v31 = sub_1000851E8(v136), (v32 & 1) == 0))
  {
    sub_1000516C4(v136);
    goto LABEL_39;
  }

  sub_10001766C(*(a1 + 56) + 32 * v31, &v132);
  sub_1000516C4(v136);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_39:

    v53 = Logger.logObject.getter();
    v54 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v53, v54))
    {
      goto LABEL_31;
    }

    v55 = swift_slowAlloc();
    *v55 = 0;
    v56 = "### Recieved observation request without a request ID";
    goto LABEL_30;
  }

  v103 = v30;
  v100 = v135[0];
  v102 = v135[1];
  if (qword_1003391E8 != -1)
  {
LABEL_80:
    swift_once();
  }

  v33 = qword_10038B5B8;
  v34 = type metadata accessor for TimedTaskStorage();
  v35 = *(v34 + 48);
  v36 = *(v34 + 52);
  swift_allocObject();
  v37 = sub_10013E378(v33, 30.0);
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = swift_allocObject();
  v39[2] = a3;
  v39[3] = a4;
  v39[4] = v38;
  v39[5] = v5;
  v40 = *(v37 + 16);
  v41 = *(v37 + 24);
  *(v37 + 16) = sub_1000DA998;
  *(v37 + 24) = v39;

  v42 = v5;
  sub_10002689C(v40);

  swift_beginAccess();

  v109 = v42;
  v101 = v37;
  sub_1000644C4(&v132, v37);
  a3 = v132;
  swift_endAccess();

  v5 = 0;
  v43 = *(v26 + 16);
  v44 = v26 + 40;
  v113 = _swiftEmptyArrayStorage;
  v119 = v26 + 40;
LABEL_18:
  v45 = (v44 + 16 * v5);
  while (v43 != v5)
  {
    if (v5 >= *(v26 + 16))
    {
      __break(1u);
      goto LABEL_80;
    }

    v46 = v26;
    ++v5;
    v47 = v45 + 2;
    v48 = *(v45 - 1);
    v49 = *v45;

    a3 = sub_10018CFE4(v48, v49);
    a4 = a3;

    v45 = v47;
    v26 = v46;
    if (a3 != 5)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v113 = sub_1000B013C(0, *(v113 + 2) + 1, 1, v113);
      }

      v51 = *(v113 + 2);
      v50 = *(v113 + 3);
      if (v51 >= v50 >> 1)
      {
        v113 = sub_1000B013C((v50 > 1), v51 + 1, 1, v113);
      }

      v52 = v113;
      *(v113 + 2) = v51 + 1;
      v52[v51 + 32] = a3;
      v26 = v46;
      v44 = v119;
      goto LABEL_18;
    }
  }

  *&v132 = 0xD000000000000010;
  *(&v132 + 1) = 0x800000010029EF60;
  AnyHashable.init<A>(_:)();
  if (*(a1 + 16) && (v60 = sub_1000851E8(v136), (v61 & 1) != 0))
  {
    sub_10001766C(*(a1 + 56) + 32 * v60, &v132);
    sub_1000516C4(v136);
    v62 = swift_dynamicCast();
    v63 = v113;
    if (v62)
    {
      v64 = LOBYTE(v135[0]);
    }

    else
    {
      v64 = 1;
    }

    LODWORD(v119) = v64;
    v65 = v109;
  }

  else
  {
    sub_1000516C4(v136);
    LODWORD(v119) = 1;
    v65 = v109;
    v63 = v113;
  }

  v66 = *(v63 + 2);
  if (v66)
  {
    v99[1] = OBJC_IVAR____TtC17proximitycontrold16TimedTaskStorage_storage;
    v118 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_activitySource;
    swift_beginAccess();
    v107 = (v121 + 104);
    v106 = (v121 + 8);
    v105 = (v120 + 8);
    v104 = enum case for DispatchQoS.QoSClass.default(_:);
    v99[0] = v122 + 8;
    v67 = 32;
    v121 = "ityControl.activity.annoucement";
    v120 = "ityControl.activity.call";
    v117 = "ityControl.activity.timer";
    v116 = 0xD000000000000028;
    v115 = "sendCurrentValue";
    v114 = "ityControl.activity.media";
    do
    {
      v68 = v63[v67];
      v69 = v116;
      if (v68 != 3)
      {
        v69 = 0xD000000000000029;
      }

      v70 = v117;
      if (v68 != 3)
      {
        v70 = v115;
      }

      if (v68 == 2)
      {
        v69 = 0xD000000000000029;
        v70 = v120;
      }

      v71 = 0xD00000000000002FLL;
      if (!v63[v67])
      {
        v71 = 0xD000000000000029;
      }

      v72 = v121;
      if (v63[v67])
      {
        v72 = v114;
      }

      if (v63[v67] <= 1u)
      {
        v73 = v71;
      }

      else
      {
        v73 = v69;
      }

      if (v63[v67] <= 1u)
      {
        v74 = v72;
      }

      else
      {
        v74 = v70;
      }

      v75 = v74 | 0x8000000000000000;
      sub_1000DACBC(v65 + v118, v136);
      if (v136[3])
      {
        v112 = v73;
        v122 = v75;
        sub_10007E790(v136, &v132);
        sub_1000097E8(v136, &qword_100342B68, qword_10027E2A0);
        v76 = *(&v133 + 1);
        v77 = v134;
        sub_10000EBC0(&v132, *(&v133 + 1));
        v78 = (*(v77 + 8))(v68, 0, v76, v77);
        if (v78)
        {
          v131 = v78;
          v111 = v78;
          sub_100035CB8();
          v80 = v127;
          v79 = v128;
          (*v107)(v127, v104, v128);
          v81 = static OS_dispatch_queue.global(qos:)();
          (*v106)(v80, v79);
          v130 = v81;
          v82 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
          v83 = v129;
          (*(*(v82 - 8) + 56))(v129, 1, 1, v82);
          sub_100035D04(&qword_10033EF28, &qword_100275550);
          v84 = sub_10000E244(&qword_10033EF30, &qword_10033EF28, &qword_100275550);
          sub_1000513CC();
          v110 = v84;
          Publisher.receive<A>(on:options:)();
          sub_1000097E8(v83, &qword_10034C680, &qword_100270390);

          sub_10000903C(&v132);
          sub_10000E244(&qword_100342B78, &qword_100342B60, &qword_100278AD8);
          v85 = v126;
          v86 = Publisher.eraseToAnyPublisher()();
          (*v105)(v19, v85);
          if (v119)
          {
            v65 = v109;
            v63 = v113;
            v87 = v122;
            if (v86)
            {
              goto LABEL_77;
            }
          }

          else
          {
            v65 = v109;
            v63 = v113;
            if (v86)
            {
              v136[0] = v86;
              sub_100035D04(&qword_10033EF28, &qword_100275550);
              v88 = v123;
              Publisher.dropFirst(_:)();
              sub_10000E244(&qword_100342B70, &qword_100342B58, &qword_100278AD0);
              v89 = v124;
              v90 = Publisher.eraseToAnyPublisher()();
              v87 = v122;
              v91 = v90;

              v92 = v89;
              v65 = v109;
              (*v99[0])(v88, v92);
              v86 = v91;
LABEL_77:
              v136[0] = v86;
              *(swift_allocObject() + 16) = v68;
              v93 = swift_allocObject();
              v93[2] = v112;
              v93[3] = v87;
              v94 = v102;
              v93[4] = v100;
              v93[5] = v94;
              v95 = v108;
              v93[6] = v65;
              v93[7] = v95;
              v96 = ObjectType;
              v93[8] = v103;
              v93[9] = v96;
              v97 = v65;

              sub_100035D04(&qword_10033EF28, &qword_100275550);
              v98 = Publisher.sink(receiveCompletion:receiveValue:)();

              swift_beginAccess();

              sub_10006421C(&v132, v98);
              swift_endAccess();

              v63 = v113;

              goto LABEL_52;
            }
          }
        }

        else
        {
          sub_10000903C(&v132);
        }
      }

      else
      {
        sub_1000097E8(v136, &qword_100342B68, qword_10027E2A0);
      }

LABEL_52:
      ++v67;
      --v66;
    }

    while (v66);
  }
}

uint64_t sub_1000DA814(void (*a1)(void, void, void))
{
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100342B40);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Stream duration elapsed, responding and removing storage...", v5, 2u);
  }

  a1(0, 0, 0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = result;
    swift_beginAccess();
    sub_100067EA4(v7);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1000DA998()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  return sub_1000DA814(*(v0 + 16));
}

uint64_t sub_1000DA9A4(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a1)
  {
    swift_errorRetain();
    if (qword_100338F40 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_100003078(v6, qword_100342B40);
    swift_errorRetain();

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v19 = v11;
      *v9 = 136315394;
      *(v9 + 4) = sub_100017494(a2, a3, &v19);
      *(v9 + 12) = 2112;
      swift_errorRetain();
      v12 = _swift_stdlib_bridgeErrorToNSError();
      *(v9 + 14) = v12;
      *v10 = v12;
      _os_log_impl(&_mh_execute_header, v7, v8, "### Activity transport failed on %s %@", v9, 0x16u);
      sub_1000097E8(v10, &qword_100339940, &unk_100272C50);

      sub_10000903C(v11);
    }

    v19 = a1;
    swift_errorRetain();
    PassthroughSubject.send(completion:)();
  }

  else
  {
    if (qword_100338F40 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    sub_100003078(v14, qword_100342B40);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v19 = v18;
      *v17 = 136315138;
      *(v17 + 4) = sub_100017494(a2, a3, &v19);
      _os_log_impl(&_mh_execute_header, v15, v16, "Activity trasnport successful on %s", v17, 0xCu);
      sub_10000903C(v18);
    }

    v19 = 0;
    return PassthroughSubject.send(completion:)();
  }
}

uint64_t sub_1000DACBC(uint64_t a1, uint64_t a2)
{
  v4 = sub_100035D04(&qword_100342B68, qword_10027E2A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void sub_1000DAD34(uint64_t *a1)
{
  v2 = v1[7];
  v3 = v1[8];
  v4 = v1[9];
  sub_1000D8498(a1, v1[2], v1[3], v1[4], v1[5], v1[6]);
}

void sub_1000DAD74(uint64_t a1)
{
  v2 = v1;
  if (qword_100338F40 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342B40);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v54[0] = v8;
    *v7 = 136315138;
    v9 = Dictionary.description.getter();
    v11 = sub_100017494(v9, v10, v54);

    *(v7 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v5, v6, "Recieved activity update %s", v7, 0xCu);
    sub_10000903C(v8);
  }

  v52 = 0x4974736575716572;
  v53 = 0xE900000000000044;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v12 = sub_1000851E8(v54), (v13 & 1) == 0))
  {
    sub_1000516C4(v54);
    goto LABEL_17;
  }

  sub_10001766C(*(a1 + 56) + 32 * v12, v55);
  sub_1000516C4(v54);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_17:
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v32, v33))
    {
LABEL_20:

      return;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "Recieved event with no peer identifier specified", v34, 2u);
LABEL_19:

    goto LABEL_20;
  }

  v15 = v52;
  v14 = v53;
  v16 = OBJC_IVAR____TtC17proximitycontrold12RapportProxy_remoteSubscriptions;
  swift_beginAccess();
  v17 = *(v2 + v16);
  if (!*(v17 + 16))
  {
LABEL_22:

    v32 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v32, v35))
    {

      goto LABEL_20;
    }

    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v54[0] = v37;
    *v36 = 136315138;
    v38 = sub_100017494(v15, v14, v54);

    *(v36 + 4) = v38;
    _os_log_impl(&_mh_execute_header, v32, v35, "Recieved event without an active subscription. Request id: %s", v36, 0xCu);
    sub_10000903C(v37);

    goto LABEL_19;
  }

  v18 = sub_100004B58(v52, v53);
  if ((v19 & 1) == 0)
  {

    goto LABEL_22;
  }

  v20 = v18;

  v21 = *(*(v17 + 56) + 8 * v20);

  strcpy(v51, "activityName");
  BYTE5(v51[1]) = 0;
  HIWORD(v51[1]) = -5120;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v22 = sub_1000851E8(v54), (v23 & 1) == 0))
  {
    sub_1000516C4(v54);
    goto LABEL_26;
  }

  sub_10001766C(*(a1 + 56) + 32 * v22, v55);
  sub_1000516C4(v54);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_26:
    v27 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v27, v39))
    {
LABEL_29:

      return;
    }

    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&_mh_execute_header, v27, v39, "Recieved event without an activity identifier", v40, 2u);
LABEL_28:

    goto LABEL_29;
  }

  v25 = v51[0];
  v24 = v51[1];

  v26 = sub_10018CFE4(v51[0], v51[1]);

  if (v26 == 5)
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v27, v28))
    {

      goto LABEL_29;
    }

    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v54[0] = v30;
    *v29 = 136315138;
    v31 = sub_100017494(v25, v24, v54);

    *(v29 + 4) = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "Recieved an unidentifiable event %s", v29, 0xCu);
    sub_10000903C(v30);

    goto LABEL_28;
  }

  v41 = objc_allocWithZone(NSUserActivity);
  v42 = String._bridgeToObjectiveC()();

  v43 = [v41 initWithActivityType:v42];

  v51[0] = 0xD000000000000010;
  v51[1] = 0x800000010029F070;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v44 = sub_1000851E8(v54), (v45 & 1) == 0))
  {
    sub_1000516C4(v54);
    goto LABEL_35;
  }

  sub_10001766C(*(a1 + 56) + 32 * v44, v55);
  sub_1000516C4(v54);
  sub_100035D04(&qword_10033B7D0, &unk_100272100);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_35:
    v46.super.isa = 0;
    goto LABEL_36;
  }

  v46.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

LABEL_36:
  [v43 setUserInfo:{v46.super.isa, v51[0], v51[1]}];

  v47 = [objc_opt_self() activityFrom:v43];
  if (v47)
  {
    v54[0] = v47;
    PassthroughSubject.send(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      *v50 = 0;
      _os_log_impl(&_mh_execute_header, v48, v49, "Recieved device activity that was not a valid PCActivity", v50, 2u);
    }
  }
}

unint64_t UIBlurEffectStyle.description.getter(uint64_t a1)
{
  result = 0x67694C6172747865;
  switch(a1)
  {
    case 0:
      return result;
    case 1:
      result = 0x746867696CLL;
      break;
    case 2:
      result = 1802658148;
      break;
    case 3:
      result = 0x7261446172747865;
      break;
    case 4:
      result = 0x72616C75676572;
      break;
    case 5:
      result = 0x6E656E696D6F7270;
      break;
    case 6:
      result = 0xD000000000000017;
      break;
    case 7:
    case 18:
      result = 0xD000000000000012;
      break;
    case 8:
      result = 0x614D6D6574737973;
      break;
    case 9:
    case 13:
      result = 0xD000000000000013;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
      result = 0xD00000000000001CLL;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 14:
    case 20:
      result = 0xD000000000000018;
      break;
    case 15:
      result = 0xD000000000000019;
      break;
    case 16:
      result = 0xD00000000000001BLL;
      break;
    case 17:
      result = 0xD000000000000016;
      break;
    case 19:
      result = 0xD000000000000017;
      break;
    default:
      _StringGuts.grow(_:)(19);

      v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
      String.append(_:)(v3);

      result = 0xD000000000000011;
      break;
  }

  return result;
}

unint64_t sub_1000DB914()
{
  result = qword_100342BA0;
  if (!qword_100342BA0)
  {
    sub_100035D4C(&qword_100342BA8, qword_100278B00);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342BA0);
  }

  return result;
}

unint64_t sub_1000DBA40()
{
  result = qword_100342BB0;
  if (!qword_100342BB0)
  {
    type metadata accessor for Style(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342BB0);
  }

  return result;
}

uint64_t sub_1000DBA98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = v24 - v10;
  sub_1000E5EE8(a3, v24 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1000097E8(v11, &qword_10033E800, &qword_100278E80);
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

      sub_1000097E8(a3, &qword_10033E800, &qword_100278E80);

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

  sub_1000097E8(a3, &qword_10033E800, &qword_100278E80);
  if (v19 | v17)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v17;
    v25[7] = v19;
  }

  return swift_task_create();
}

uint64_t sub_1000DBD34(_OWORD *a1)
{
  v2 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v19 - v4;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_100003078(v6, qword_10033E988);
  sub_1000E61F0(a1, v21);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    *v9 = 136315394;
    *(v9 + 4) = sub_100017494(0x293A5F28646E6573, 0xE800000000000000, &v20);
    *(v9 + 12) = 2080;
    v10 = a1[1];
    v21[0] = *a1;
    v21[1] = v10;
    v22[0] = a1[2];
    *(v22 + 10) = *(a1 + 42);
    v11 = String.init<A>(describing:)();
    v13 = sub_100017494(v11, v12, &v20);

    *(v9 + 14) = v13;
    _os_log_impl(&_mh_execute_header, v7, v8, "%s: input=%s", v9, 0x16u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000E624C(a1);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v5, 1, 1, v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = 0;
  *(v16 + 32) = v15;
  v17 = a1[1];
  *(v16 + 40) = *a1;
  *(v16 + 56) = v17;
  *(v16 + 72) = a1[2];
  *(v16 + 82) = *(a1 + 42);
  sub_1000E61F0(a1, v21);
  sub_1000DBA98(0, 0, v5, &unk_100279000, v16);
}

uint64_t sub_1000DC024(uint64_t a1)
{
  v2 = sub_100035D04(&qword_10033E800, &qword_100278E80);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin(v2 - 8);
  v5 = &v29 - v4;
  v6 = type metadata accessor for ViewServiceInput(0);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v10 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v12 = &v29 - v11;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_100003078(v13, qword_10033E988);
  sub_1000E6078(a1, v12, type metadata accessor for ViewServiceInput);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v30 = v7;
    v17 = v16;
    v29 = swift_slowAlloc();
    v32 = v29;
    *v17 = 136315394;
    *(v17 + 4) = sub_100017494(0x293A5F28646E6573, 0xE800000000000000, &v32);
    *(v17 + 12) = 2080;
    sub_1000E6078(v12, v10, type metadata accessor for ViewServiceInput);
    v18 = String.init<A>(describing:)();
    v31 = v8;
    v19 = v5;
    v20 = a1;
    v22 = v21;
    sub_1000E6190(v12, type metadata accessor for ViewServiceInput);
    v23 = sub_100017494(v18, v22, &v32);
    a1 = v20;
    v5 = v19;

    *(v17 + 14) = v23;
    _os_log_impl(&_mh_execute_header, v14, v15, "%s: input=%s", v17, 0x16u);
    swift_arrayDestroy();

    v7 = v30;
  }

  else
  {

    sub_1000E6190(v12, type metadata accessor for ViewServiceInput);
  }

  v24 = type metadata accessor for TaskPriority();
  (*(*(v24 - 8) + 56))(v5, 1, 1, v24);
  v25 = swift_allocObject();
  swift_weakInit();
  sub_1000E6078(a1, v10, type metadata accessor for ViewServiceInput);
  v26 = (*(v7 + 80) + 40) & ~*(v7 + 80);
  v27 = swift_allocObject();
  v27[2] = 0;
  v27[3] = 0;
  v27[4] = v25;
  sub_1000E6128(v10, v27 + v26, type metadata accessor for ViewServiceInput);
  sub_1000DBA98(0, 0, v5, &unk_100278E90, v27);
}

void sub_1000DC45C()
{
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_100003078(v0, qword_10033E988);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v5 = v4;
    *v3 = 136315138;
    *(v3 + 4) = sub_100017494(0x2928656D75736572, 0xE800000000000000, &v5);
    _os_log_impl(&_mh_execute_header, v1, v2, "%s", v3, 0xCu);
    sub_10000903C(v4);
  }

  sub_1000DC704();
}

uint64_t sub_1000DC5A4()
{
  v1 = type metadata accessor for UUID();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = qword_10033E9B0;
  if (*(v0 + qword_10033E9B0))
  {
    v7 = *(v0 + qword_10033E9B0);
  }

  else
  {
    v8 = *(v0 + qword_10033E9A8);
    (*(v3 + 16))(v5, v0 + qword_10038B038);
    v9 = type metadata accessor for XPCConnectionManager();
    v10 = *(v9 + 48);
    v11 = *(v9 + 52);
    v12 = swift_allocObject();

    if (v8)
    {
      v13 = 1;
    }

    else
    {
      v13 = 0x4008000000000000;
    }

    if (v8)
    {
      v14 = 0;
    }

    else
    {
      v14 = 10;
    }

    if (v8)
    {
      v15 = 3;
    }

    else
    {
      v15 = 2;
    }

    v7 = sub_1000E2540(v5, v13, v14, v15, v0, v12);
    v16 = *(v0 + v6);
    *(v0 + v6) = v7;
  }

  return v7;
}

void sub_1000DC704()
{
  v1 = v0;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E988);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = v6;
    *v5 = 136315138;
    *(v5 + 4) = sub_100017494(0x5374736575716572, 0xEE00292874726174, &v7);
    _os_log_impl(&_mh_execute_header, v3, v4, "%s", v5, 0xCu);
    sub_10000903C(v6);
  }

  sub_1000DC870();
  if (!*(v1 + qword_10033E9A8))
  {
    sub_1000DC9B8();
  }
}

uint64_t sub_1000DC870()
{
  v1 = v0;
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_10033E988);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "start()", v5, 2u);
  }

  sub_1000DC5A4();
  v6 = sub_100241254();

  if (v6 == 1 && !*(v1 + qword_10033E9A8))
  {
    sub_1000DC9B8();
    v8 = *(v1 + qword_10033E9B8);

    PassthroughSubject.send(_:)();
  }

  return result;
}

void sub_1000DC9B8()
{
  v0 = type metadata accessor for String.Encoding();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100338EC8 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_100003078(v5, qword_10033E988);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v19 = v9;
    *v8 = 136315138;
    *(v8 + 4) = sub_100017494(0x2928676E6970, 0xE600000000000000, &v19);
    _os_log_impl(&_mh_execute_header, v6, v7, "%s", v8, 0xCu);
    sub_10000903C(v9);
  }

  static String.Encoding.ascii.getter();
  v10 = String.data(using:allowLossyConversion:)();
  v12 = v11;
  (*(v1 + 8))(v4, v0);
  if (v12 >> 60 == 15)
  {
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v13, v14, "### Failed to ping", v15, 2u);
    }
  }

  else
  {
    v16 = sub_1000DC5A4();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v16 handleWithSerializedObject:isa];

    sub_10006DB04(v10, v12);
  }
}

uint64_t sub_1000DCC80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = a5;
  return (_swift_task_switch)(sub_1000DCCA0, 0, 0);
}

uint64_t sub_1000DCCA0()
{
  v1 = *(v0 + 104);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = *(v0 + 112);
    v4 = v2[1];
    v3 = v2[2];
    v5 = *v2;
    *(v0 + 58) = *(v2 + 42);
    *(v0 + 32) = v4;
    *(v0 + 48) = v3;
    *(v0 + 16) = v5;
    v6 = type metadata accessor for JSONEncoder();
    v7 = *(v6 + 48);
    v8 = *(v6 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    sub_1000E6530();
    v9 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v11 = v10;

    sub_1000DC870();
    v12 = sub_1000DC5A4();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v12 handleWithSerializedObject:isa];

    sub_100010708(v9, v11);
  }

  v14 = *(v0 + 8);

  return v14();
}

uint64_t sub_1000DCE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 40) = a4;
  *(v5 + 48) = a5;
  return (_swift_task_switch)(sub_1000DCE34, 0, 0);
}

uint64_t sub_1000DCE34()
{
  v1 = v0[5];
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    v2 = v0[6];
    v3 = type metadata accessor for JSONEncoder();
    v4 = *(v3 + 48);
    v5 = *(v3 + 52);
    swift_allocObject();
    JSONEncoder.init()();
    type metadata accessor for ViewServiceInput(0);
    sub_1000E60E0(&qword_100343040, type metadata accessor for ViewServiceInput);
    v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v8 = v7;

    sub_1000DC870();
    v9 = sub_1000DC5A4();
    isa = Data._bridgeToObjectiveC()().super.isa;
    [v9 handleWithSerializedObject:isa];

    sub_100010708(v6, v8);
  }

  v11 = v0[1];

  return v11();
}

uint64_t sub_1000DCFC0()
{
  v0 = type metadata accessor for Logger();
  sub_100036838(v0, qword_100342BB8);
  sub_100003078(v0, qword_100342BB8);
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000DD040()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    v5 = *(v0 + 16);
    sub_100035D04(&qword_100342E60, &unk_100278DF0);
    sub_10000E244(&qword_100343158, &qword_100342E60, &unk_100278DF0);
    v2 = v0;
    v1 = Publisher.eraseToAnyPublisher()();
    v3 = *(v0 + 24);
    *(v2 + 24) = v1;
  }

  return v1;
}

uint64_t sub_1000DD138(uint64_t *a1)
{
  v1 = *a1;
  sub_10008FE10();

  sub_100035D04(&qword_10033E538, &qword_100274710);
  sub_100035D04(&qword_100343110, &qword_100278F78);
  sub_10000E244(&qword_10033E540, &qword_10033E538, &qword_100274710);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DD234(uint64_t *a1)
{
  v1 = *a1;
  sub_100093B90();

  sub_100035D04(&qword_1003430F8, &qword_100278F60);
  sub_100035D04(&qword_100343100, &unk_100278F68);
  sub_10000E244(&qword_100343108, &qword_1003430F8, &qword_100278F60);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DD330(char a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000DF298(a1 & 1, a2);
  }

  return result;
}

uint64_t sub_1000DD3A4(uint64_t *a1)
{
  v1 = *a1;
  sub_100090608();

  sub_100035D04(&qword_1003430E0, &qword_100278F50);
  sub_100035D04(&qword_1003430E8, &qword_100278F58);
  sub_10000E244(&qword_1003430F0, &qword_1003430E0, &qword_100278F50);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DD4A0(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a1, a2);
  }

  return result;
}

uint64_t sub_1000DD51C(uint64_t *a1)
{
  v2 = sub_100035D04(&qword_10033B540, &qword_100272018);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v10 - v5;
  v7 = *a1;
  swift_beginAccess();
  sub_100035D04(&qword_10033B550, &qword_1002746C0);
  Published.projectedValue.getter();
  swift_endAccess();
  sub_10000E244(&qword_10033B558, &qword_10033B540, &qword_100272018);
  v8 = Publisher.eraseToAnyPublisher()();
  (*(v3 + 8))(v6, v2);
  v10[1] = v8;

  sub_100035D04(&qword_10033B560, &qword_100272030);
  sub_100035D04(&qword_100342EE0, &qword_100278E20);
  sub_10000E244(&qword_10033B568, &qword_10033B560, &qword_100272030);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DD730(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t))
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    a4(a1, a2);
  }

  return result;
}

uint64_t sub_1000DD7AC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1)
  {
    v7 = *(a1 + qword_10033E9A0);
    sub_100035D04(&qword_1003430C0, &qword_100278F38);
    sub_10000E244(&qword_1003430C8, &qword_1003430C0, &qword_100278F38);
    Publisher.eraseToAnyPublisher()();

    sub_100035D04(&qword_1003430D0, &unk_100278F40);
    sub_100035D04(&qword_1003430B8, &qword_100278F30);
    sub_10000E244(&qword_1003430D8, &qword_1003430D0, &unk_100278F40);
    Publisher.map<A>(_:)();

    v3 = sub_100035D04(&qword_100342F00, &qword_100278E30);
    return (*(*(v3 - 8) + 56))(a2, 0, 1, v3);
  }

  else
  {
    v5 = sub_100035D04(&qword_100342F00, &qword_100278E30);
    v6 = *(*(v5 - 8) + 56);

    return v6(a2, 1, 1, v5);
  }
}

uint64_t sub_1000DD9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(sub_100035D04(&qword_1003430B8, &qword_100278F30) + 48);
  sub_1000E6078(a1, a3, type metadata accessor for ViewServiceOutput);
  *(a3 + v6) = a2;
}

uint64_t sub_1000DDA58(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000E0098(a1, a2);
  }

  return result;
}

uint64_t sub_1000DDACC(uint64_t *a1)
{
  v1 = *a1;
  sub_10008CECC();

  sub_100035D04(&qword_10033B5C0, &qword_100272060);
  sub_100035D04(&qword_1003430B0, &unk_100278F20);
  sub_10000E244(&qword_10034C770, &qword_10033B5C0, &qword_100272060);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DDBC8()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v1 = *(Strong + 48), v2 = *(Strong + 56), , , v1))
  {

    v3 = v2 ^ 1;
  }

  else
  {
    v3 = 0;
  }

  return v3 & 1;
}

uint64_t sub_1000DDC7C(uint64_t *a1)
{
  v1 = *a1;
  sub_10009120C();

  sub_100035D04(&qword_100343098, &qword_100278F10);
  sub_100035D04(&qword_1003430A0, &qword_100278F18);
  sub_10000E244(&qword_1003430A8, &qword_100343098, &qword_100278F10);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DDD78@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1000DDE00(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceInput(0);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 8))
  {
    *v6 = *a1;
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v6);
    return sub_1000E6190(v6, type metadata accessor for ViewServiceInput);
  }

  return result;
}

uint64_t sub_1000DDEB8(uint64_t *a1)
{
  v1 = *a1;
  sub_100091490();

  sub_100035D04(&qword_100343080, &qword_100278F00);
  sub_100035D04(&qword_100343088, &qword_100278F08);
  sub_10000E244(&qword_100343090, &qword_100343080, &qword_100278F00);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DDFB4@<X0>(void **a1@<X0>, void **a2@<X8>)
{
  v3 = *a1;
  *a2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  v4 = v3;
  static Published.subscript.getter();

  a2[1] = v6;
  return result;
}

uint64_t sub_1000DE048(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceInput(0);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2);
  v6 = (&v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8))
  {
    v7 = *a1;
    *v6 = v7;
    swift_storeEnumTagMultiPayload();
    v8 = v7;
    sub_1000DC024(v6);
    return sub_1000E6190(v6, type metadata accessor for ViewServiceInput);
  }

  return result;
}

uint64_t sub_1000DE104(uint64_t *a1)
{
  v1 = *a1;
  sub_10009219C();

  sub_100035D04(&qword_100343068, &qword_100278EF0);
  sub_100035D04(&qword_100343070, &qword_100278EF8);
  sub_10000E244(&qword_100343078, &qword_100343068, &qword_100278EF0);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DE200@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X8>)
{
  *a2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a2 + 8) = v4;
  return result;
}

uint64_t sub_1000DE288(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceInput(0);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2);
  v6 = (&v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 8))
  {
    *v6 = *a1;
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v6);
    return sub_1000E6190(v6, type metadata accessor for ViewServiceInput);
  }

  return result;
}

uint64_t sub_1000DE340(uint64_t *a1)
{
  v1 = *a1;
  sub_1000918D0();

  sub_100035D04(&qword_100343058, &qword_100278EE8);
  sub_100035D04(&qword_100342FE8, &qword_100278E60);
  sub_10000E244(&qword_100343060, &qword_100343058, &qword_100278EE8);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DE43C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = *(a1 + 8);
  *a2 = *a1;
  a2[1] = v4;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_100056F7C(v3);
  static Published.subscript.getter();

  a2[2] = v6;
  return result;
}

uint64_t sub_1000DE4D8(uint64_t a1)
{
  v2 = type metadata accessor for ViewServiceInput(0);
  v3 = *(*(v2 - 8) + 64);
  result = __chkstk_darwin(v2);
  v6 = (&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (*(a1 + 16))
  {
    v9 = a1;
    v7 = *a1;
    v8 = *(v9 + 8);
    *v6 = v7;
    v6[1] = v8;
    swift_storeEnumTagMultiPayload();
    sub_100056F7C(v7);
    sub_1000DC024(v6);
    return sub_1000E6190(v6, type metadata accessor for ViewServiceInput);
  }

  return result;
}

uint64_t sub_1000DE59C(uint64_t *a1)
{
  v1 = *a1;
  sub_100092814();

  sub_100035D04(&qword_100343048, &qword_100278E98);
  sub_100035D04(&qword_100343038, &qword_100278E78);
  sub_10000E244(&qword_100343050, &qword_100343048, &qword_100278E98);
  Publisher.map<A>(_:)();
}

uint64_t sub_1000DE698@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X2>, uint64_t *a3@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  v8 = *(sub_100035D04(a2, a3) + 48);
  sub_1000E6078(a1, a5, a4);
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *(a5 + v8) = v10;
  return result;
}

uint64_t sub_1000DE748()
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong && (v1 = *(Strong + 48), v2 = *(Strong + 56), , , v1))
  {
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t sub_1000DE7F8(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v8 = type metadata accessor for ViewServiceInput(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v11 = &v13 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_100035D04(a2, a3);
  if (*(a1 + *(result + 48)))
  {
    sub_1000E6078(a1, v11, a4);
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v11);
    return sub_1000E6190(v11, type metadata accessor for ViewServiceInput);
  }

  return result;
}

void *sub_1000DE8EC()
{
  v1 = v0;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_100003078(v2, qword_100342BB8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "Deinit", v5, 2u);
  }

  v6 = v1[2];

  v7 = v1[3];

  v8 = v1[4];

  v9 = v1[5];

  v10 = v1[6];

  v11 = v1[8];

  return v1;
}

uint64_t sub_1000DE9FC()
{
  sub_1000DE8EC();

  return swift_deallocClassInstance();
}

void sub_1000DEA54(uint64_t a1, uint64_t a2)
{
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342BB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0xD000000000000016, 0x800000010029F5B0, &v30);
    *(v7 + 12) = 2080;
    if (a1)
    {
      UUID.uuidString.getter();
      sub_10000B584(8);

      v8 = static String._fromSubstring(_:)();
      v10 = v9;

      v11._countAndFlagsBits = v8;
      v11._object = v10;
      String.append(_:)(v11);

      v12._countAndFlagsBits = 32;
      v12._object = 0xE100000000000000;
      String.append(_:)(v12);
      v13 = *(a1 + 24);
      v14._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v14);

      v15._countAndFlagsBits = 62;
      v15._object = 0xE100000000000000;
      String.append(_:)(v15);
      v16 = 60;
      v17 = 0xE100000000000000;
    }

    else
    {
      v17 = 0xE300000000000000;
      v16 = 7104878;
    }

    v18 = sub_100017494(v16, v17, &v30);

    *(v7 + 14) = v18;
    *(v7 + 22) = 2080;
    if (a2)
    {
      UUID.uuidString.getter();
      sub_10000B584(8);

      v19 = static String._fromSubstring(_:)();
      v21 = v20;

      v22._countAndFlagsBits = v19;
      v22._object = v21;
      String.append(_:)(v22);

      v23._countAndFlagsBits = 32;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = *(a2 + 24);
      v25._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v25);

      v26._countAndFlagsBits = 62;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      v27 = 60;
      v28 = 0xE100000000000000;
    }

    else
    {
      v28 = 0xE300000000000000;
      v27 = 7104878;
    }

    v29 = sub_100017494(v27, v28, &v30);

    *(v7 + 24) = v29;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: session=%s, oldSession=%s", v7, 0x20u);
    swift_arrayDestroy();
  }

  sub_1000E17B8(a2, 0x206E6F6973736553, 0xEF6465676E616863);
}

uint64_t sub_1000DEE48(uint64_t a1, uint64_t a2)
{
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342BB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v26);
    *(v7 + 12) = 2080;
    if (a1 == 5)
    {
      v8 = 0xE700000000000000;
      v9 = 0x7373696D736964;
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(22);

      v27 = 0xD000000000000012;
      v28 = 0x800000010029F590;
      v10._countAndFlagsBits = sub_10022C5BC(a1);
      String.append(_:)(v10);

      v11._countAndFlagsBits = 10528;
      v11._object = 0xE200000000000000;
      String.append(_:)(v11);
      v9 = v27;
      v8 = v28;
    }

    v12 = sub_100017494(v9, v8, &v26);

    *(v7 + 14) = v12;
    *(v7 + 22) = 2080;
    v27 = 60;
    v28 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v13 = static String._fromSubstring(_:)();
    v15 = v14;

    v16._countAndFlagsBits = v13;
    v16._object = v15;
    String.append(_:)(v16);

    v17._countAndFlagsBits = 32;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18 = *(a2 + 24);
    v19._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v19);

    v20._countAndFlagsBits = 62;
    v20._object = 0xE100000000000000;
    String.append(_:)(v20);
    v21 = sub_100017494(v27, v28, &v26);

    *(v7 + 24) = v21;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: effect=%s, session=%s", v7, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if (a1 == 5)
  {
    v27 = 0;
    v28 = 0xE000000000000000;
    v22._countAndFlagsBits = 0x6566664564726143;
    v22._object = 0xEB000000002E7463;
    String.append(_:)(v22);
    sub_1002432C0(5);
    sub_1000E17B8(a2, v27, v28);
  }

  else
  {
    v24 = *(a2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode);
    *(v24 + 24) = a1;

    sub_10005E99C();
    LOBYTE(v27) = *(v24 + 24);
    CurrentValueSubject.send(_:)();

    v27 = 0;
    v28 = 0xE000000000000000;
    v25._countAndFlagsBits = 0x6566664564726143;
    v25._object = 0xEB000000002E7463;
    String.append(_:)(v25);
    sub_1002432C0(a1);
    sub_1000E0A40(0, a2, v27, v28);
  }
}

void sub_1000DF298(char a1, uint64_t a2)
{
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342BB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v19);
    *(v7 + 12) = 2080;
    if (a1)
    {
      v8 = 0x7373696D736964;
    }

    else
    {
      v8 = 0x746E6573657270;
    }

    v9 = sub_100017494(v8, 0xE700000000000000, &v19);

    *(v7 + 14) = v9;
    *(v7 + 22) = 2080;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v10 = static String._fromSubstring(_:)();
    v12 = v11;

    v13._countAndFlagsBits = v10;
    v13._object = v12;
    String.append(_:)(v13);

    v14._countAndFlagsBits = 32;
    v14._object = 0xE100000000000000;
    String.append(_:)(v14);
    v15 = *(a2 + 24);
    v16._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v16);

    v17._countAndFlagsBits = 62;
    v17._object = 0xE100000000000000;
    String.append(_:)(v17);
    v18 = sub_100017494(60, 0xE100000000000000, &v19);

    *(v7 + 24) = v18;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: effect=%s, session=%s", v7, 0x20u);
    swift_arrayDestroy();
  }

  if (a1)
  {

    sub_1000E17B8(a2, 0xD00000000000002ALL, 0x800000010029F4F0);
  }

  else
  {

    sub_1000E0A40(1, a2, 0xD00000000000002ALL, 0x800000010029F560);
  }
}

void sub_1000DF5E0(char a1, uint64_t a2)
{
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_100003078(v4, qword_100342BB8);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    *v7 = 136315650;
    *(v7 + 4) = sub_100017494(0x5F28656C646E6168, 0xEE00293A726F663ALL, &v26);
    *(v7 + 12) = 2080;
    v25 = a1;
    if (a1)
    {
      if (a1 == 1)
      {
        v8 = 0x7661776B636F6873;
      }

      else
      {
        v8 = 0x7373696D736964;
      }

      if (a1 == 1)
      {
        v9 = 0xE900000000000065;
      }

      else
      {
        v9 = 0xE700000000000000;
      }
    }

    else
    {
      v9 = 0xE400000000000000;
      v8 = 1953393000;
    }

    v10 = sub_100017494(v8, v9, &v26);

    *(v7 + 14) = v10;
    *(v7 + 22) = 2080;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v11 = static String._fromSubstring(_:)();
    v13 = v12;

    v14._countAndFlagsBits = v11;
    v14._object = v13;
    String.append(_:)(v14);

    v15._countAndFlagsBits = 32;
    v15._object = 0xE100000000000000;
    String.append(_:)(v15);
    v16 = *(a2 + 24);
    v17._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v17);

    v18._countAndFlagsBits = 62;
    v18._object = 0xE100000000000000;
    String.append(_:)(v18);
    v19 = sub_100017494(60, 0xE100000000000000, &v26);

    *(v7 + 24) = v19;
    _os_log_impl(&_mh_execute_header, v5, v6, "%s: effect=%s, session=%s", v7, 0x20u);
    swift_arrayDestroy();

    a1 = v25;
  }

  else
  {
  }

  if (qword_100338F18 != -1)
  {
    swift_once();
  }

  v20 = *(qword_10038B0B8 + 64);
  v21 = sub_1000031CC();

  if (v21)
  {
    if (!a1)
    {
      v23 = 0x800000010029F540;
      v24 = a2;
      v22 = 0xD000000000000014;
      goto LABEL_22;
    }

    if (a1 == 1)
    {
      v22 = 0xD000000000000019;
      v23 = 0x800000010029F520;
      v24 = a2;
LABEL_22:

      sub_1000E0A40(1, v24, v22, v23);
      return;
    }

    sub_1000E17B8(a2, 0xD00000000000002ALL, 0x800000010029F4F0);
  }
}

void sub_1000DFA08(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for ViewServiceInput(0);
  v7 = *(*(v6 - 8) + 64);
  v8 = __chkstk_darwin(v6);
  v10 = (&v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = __chkstk_darwin(v8);
  v13 = (&v49 - v12);
  __chkstk_darwin(v11);
  v15 = &v49 - v14;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v16 = type metadata accessor for Logger();
  v17 = sub_100003078(v16, qword_100342BB8);

  v55 = v17;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v50 = v3;
    v52 = v15;
    v20 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v58 = v49;
    *v20 = 136315650;
    *(v20 + 4) = sub_100017494(0xD000000000000014, 0x800000010029F4D0, &v58);
    *(v20 + 12) = 2080;
    v53 = v10;
    v54 = v6;
    v51 = v13;
    if (a1)
    {
      v56 = a1;

      sub_100035D04(&qword_100343150, &qword_100278FF0);
      v21 = String.init<A>(describing:)();
      v23 = v22;
    }

    else
    {
      v23 = 0xE300000000000000;
      v21 = 7104878;
    }

    v24 = sub_100017494(v21, v23, &v58);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    v56 = 60;
    v57 = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);

    v25 = static String._fromSubstring(_:)();
    v27 = v26;

    v28._countAndFlagsBits = v25;
    v28._object = v27;
    String.append(_:)(v28);

    v29._countAndFlagsBits = 32;
    v29._object = 0xE100000000000000;
    String.append(_:)(v29);
    v30 = *(a2 + 24);
    v31._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v31);

    v32._countAndFlagsBits = 62;
    v32._object = 0xE100000000000000;
    String.append(_:)(v32);
    v33 = sub_100017494(v56, v57, &v58);

    *(v20 + 24) = v33;
    _os_log_impl(&_mh_execute_header, v18, v19, "%s: link=%s, session=%s", v20, 0x20u);
    swift_arrayDestroy();

    v10 = v53;
    v13 = v51;
    v15 = v52;
    v3 = v50;
    if (!a1)
    {
      return;
    }
  }

  else
  {

    if (!a1)
    {
      return;
    }
  }

  sub_1000DC45C();
  if (*(v3 + 48))
  {
    if (*(v3 + 56))
    {
      v34 = *(v3 + 48);

      sub_10009249C(v15);
      swift_storeEnumTagMultiPayload();
      sub_1000DC024(v15);

      v35 = v15;
LABEL_25:
      sub_1000E6190(v35, type metadata accessor for ViewServiceInput);
      return;
    }

    *v15 = *(*(a2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode) + 24);
    swift_storeEnumTagMultiPayload();

    sub_1000DC024(v15);
    sub_1000E6190(v15, type metadata accessor for ViewServiceInput);
    v39 = *(a2 + 24);
    v40 = *(*&v39[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext] + 24);
    if (v40)
    {
      v40 = [v40 proxDeviceState];
    }

    *v13 = v40;
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v13);
    sub_1000E6190(v13, type metadata accessor for ViewServiceInput);
    v41 = *&v39[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity];
    v42 = sub_1001F00B0();
    sub_100249BE4(v39, v42, v15);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    sub_1000DC024(v15);
    sub_1000E6190(v15, type metadata accessor for ViewServiceInput);
    v43 = *(*&v39[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer] + 24);
    if (v43)
    {
      v44 = v43 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type;
      if (*(v43 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32) == 1)
      {
        v45 = *(v44 + 8);
        v46 = *(v44 + 16);

        v47 = v46;

        if (*(*(v43 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state) + 40) < 2uLL)
        {
          v48 = *(v43 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);

LABEL_24:
          *v10 = v46;
          v10[1] = v48;
          swift_storeEnumTagMultiPayload();
          sub_1000DC024(v10);

          v35 = v10;
          goto LABEL_25;
        }
      }
    }

    v48 = 0;
    v46 = 1;
    goto LABEL_24;
  }

  v36 = Logger.logObject.getter();
  v37 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    *v38 = 0;
    _os_log_impl(&_mh_execute_header, v36, v37, "### No activeConfig?", v38, 2u);
  }
}

uint64_t sub_1000E0098(uint64_t a1, uint64_t a2)
{
  v90 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v4 = *(*(v90 - 8) + 64);
  __chkstk_darwin(v90);
  v6 = &v80 - v5;
  v89 = type metadata accessor for ExperienceEvent(0);
  v7 = *(*(v89 - 8) + 64);
  __chkstk_darwin(v89);
  v9 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v85 = sub_100035D04(&qword_10033B4E0, &unk_100278FD0);
  v10 = *(*(v85 - 8) + 64);
  __chkstk_darwin(v85);
  v86 = (&v80 - v11);
  v12 = type metadata accessor for Date();
  v91 = *(v12 - 8);
  v13 = *(v91 + 64);
  __chkstk_darwin(v12);
  v87 = &v80 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for ViewServiceOutput(0);
  v16 = *(*(v15 - 8) + 64);
  v17 = __chkstk_darwin(v15);
  v93 = &v80 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin(v17);
  v21 = &v80 - v20;
  __chkstk_darwin(v19);
  v23 = &v80 - v22;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_100003078(v24, qword_100342BB8);
  sub_1000E6078(a1, v23, type metadata accessor for ViewServiceOutput);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v82 = v26;
    v28 = v27;
    v83 = swift_slowAlloc();
    v94[0] = v83;
    *v28 = 136315650;
    *(v28 + 4) = sub_100017494(0xD00000000000001FLL, 0x800000010029F4B0, v94);
    v88 = v12;
    *(v28 + 12) = 2080;
    sub_1000E6078(v23, v21, type metadata accessor for ViewServiceOutput);
    v29 = String.init<A>(describing:)();
    v81 = v25;
    v30 = v29;
    v32 = v31;
    sub_1000E6190(v23, type metadata accessor for ViewServiceOutput);
    v33 = sub_100017494(v30, v32, v94);

    *(v28 + 14) = v33;
    *(v28 + 22) = 2080;
    *&v95 = 60;
    *(&v95 + 1) = 0xE100000000000000;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v84 = a1;

    a1 = v84;
    v34 = static String._fromSubstring(_:)();
    v36 = v35;
    v12 = v88;

    v37._countAndFlagsBits = v34;
    v37._object = v36;
    String.append(_:)(v37);

    v38._countAndFlagsBits = 32;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = *(a2 + 24);
    v40._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v40);

    v41._countAndFlagsBits = 62;
    v41._object = 0xE100000000000000;
    String.append(_:)(v41);
    v42 = sub_100017494(v95, *(&v95 + 1), v94);

    *(v28 + 24) = v42;
    v43 = v81;
    _os_log_impl(&_mh_execute_header, v81, v82, "%s: output=%s, session=%s", v28, 0x20u);
    swift_arrayDestroy();
  }

  else
  {

    sub_1000E6190(v23, type metadata accessor for ViewServiceOutput);
  }

  v44 = v93;
  sub_1000E6078(a1, v93, type metadata accessor for ViewServiceOutput);
  result = swift_getEnumCaseMultiPayload();
  if (result <= 2)
  {
    if (result)
    {
      if (result == 1)
      {
        v46 = sub_100035D04(&qword_100343140, &unk_100278FE0);
        return (*(v91 + 8))(v44 + *(v46 + 48), v12);
      }

      v70 = *(v44 + 16);
      v95 = *v44;
      v96 = v70;
      v97[0] = *(v44 + 32);
      *(v97 + 9) = *(v44 + 41);
      v71 = sub_100035D04(&qword_100343138, &unk_1002924F0);
      (*(v91 + 8))(v44 + *(v71 + 48), v12);
      v72 = *(v92 + 40);

      v73 = UUID.uuidString.getter();
      v75 = v74;
      v76 = v96;
      *v9 = v95;
      v9[1] = v76;
      v9[2] = v97[0];
      *(v9 + 41) = *(v97 + 9);
      swift_storeEnumTagMultiPayload();
      v77 = *(v72 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
      v78 = &v6[*(v90 + 48)];
      v79 = &v6[*(v90 + 64)];
      sub_1000E6078(v9, v6, type metadata accessor for ExperienceEvent);
      *v78 = v73;
      v78[1] = v75;
      *v79 = 0xD000000000000011;
      *(v79 + 1) = 0x800000010029F490;
      PassthroughSubject.send(_:)();
      sub_1000097E8(v6, &unk_10034C700, &qword_100273D30);
      sub_1000E6190(v9, type metadata accessor for ExperienceEvent);
    }

    else
    {
      v47 = *(v44 + 16);
      v95 = *v44;
      v96 = v47;
      v97[0] = *(v44 + 32);
      *(v97 + 9) = *(v44 + 41);
      v84 = *(v44 + 64);
      v48 = v84;
      v80 = a2;
      v83 = *(v44 + 72);
      v49 = sub_100035D04(&qword_100343148, &qword_100292500);
      v50 = v91;
      v51 = v87;
      (*(v91 + 32))(v87, v44 + *(v49 + 64), v12);
      v52 = *(v92 + 16);
      sub_100051520(&v95, v94);
      v53 = UUID.uuidString.getter();
      v54 = *(v85 + 80);
      v55 = v96;
      v56 = v86;
      *v86 = v95;
      *(v56 + 16) = v55;
      *(v56 + 32) = v97[0];
      *(v56 + 41) = *(v97 + 9);
      *(v56 + 64) = v53;
      *(v56 + 72) = v57;
      v58 = v83;
      *(v56 + 80) = v48;
      *(v56 + 88) = v58;
      (*(v50 + 16))(v56 + v54, v51, v12);
      v59 = v58;

      PassthroughSubject.send(_:)();
      sub_1000097E8(v56, &qword_10033B4E0, &unk_100278FD0);
      v60 = *(v92 + 40);

      v61 = UUID.uuidString.getter();
      v88 = v12;
      v62 = v61;
      v64 = v63;
      v65 = v96;
      *v9 = v95;
      v9[1] = v65;
      v9[2] = v97[0];
      *(v9 + 41) = *(v97 + 9);
      swift_storeEnumTagMultiPayload();
      v66 = *(v60 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
      v67 = &v6[*(v90 + 48)];
      v68 = v9;
      v69 = &v6[*(v90 + 64)];
      sub_1000E6078(v68, v6, type metadata accessor for ExperienceEvent);
      *v67 = v62;
      *(v67 + 1) = v64;
      *v69 = v84;
      *(v69 + 1) = v59;
      PassthroughSubject.send(_:)();
      sub_1000097E8(v6, &unk_10034C700, &qword_100273D30);
      sub_1000E6190(v68, type metadata accessor for ExperienceEvent);
      (*(v50 + 8))(v87, v88);
    }
  }

  return result;
}

uint64_t sub_1000E0A40(int a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v110 = a1;
  v103 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7 = *(*(v103 - 8) + 64);
  __chkstk_darwin(v103);
  v105 = &v97 - v8;
  v102 = type metadata accessor for ExperienceEvent(0);
  v9 = *(*(v102 - 8) + 64);
  __chkstk_darwin(v102);
  v104 = (&v97 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = type metadata accessor for ActivityDisplayContext(0);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v108 = (&v97 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = sub_100035D04(&qword_10033F5F0, &qword_1002762C0);
  v15 = *(*(v14 - 8) + 64);
  __chkstk_darwin(v14 - 8);
  v17 = (&v97 - v16);
  v18 = _s8CardInfoOMa();
  v19 = *(v18 - 8);
  v20 = v19[8];
  v21 = __chkstk_darwin(v18);
  v106 = &v97 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v21);
  v107 = &v97 - v23;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  v25 = sub_100003078(v24, qword_100342BB8);

  v109 = v25;
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v101 = v17;
    v29 = v28;
    v100 = swift_slowAlloc();
    v112[0] = v100;
    *v29 = 136315650;
    *(v29 + 4) = sub_100017494(0xD000000000000025, 0x800000010029F460, v112);
    *(v29 + 12) = 2080;
    v113 = 60;
    v114 = 0xE100000000000000;
    v99 = v27;
    UUID.uuidString.getter();
    sub_10000B584(8);
    v30 = a2;
    v98 = a4;
    v97 = a3;

    v31 = static String._fromSubstring(_:)();
    v33 = v32;

    v34._countAndFlagsBits = v31;
    v34._object = v33;
    String.append(_:)(v34);
    a2 = v30;

    v35._countAndFlagsBits = 32;
    v35._object = 0xE100000000000000;
    String.append(_:)(v35);
    v36 = *(v30 + 24);
    v37._countAndFlagsBits = sub_1000092A0();
    String.append(_:)(v37);

    v38._countAndFlagsBits = 62;
    v38._object = 0xE100000000000000;
    String.append(_:)(v38);
    v39 = sub_100017494(v113, v114, v112);

    *(v29 + 14) = v39;
    *(v29 + 22) = 2080;
    *(v29 + 24) = sub_100017494(v97, v98, v112);
    _os_log_impl(&_mh_execute_header, v26, v99, "%s: session=%s, reason=%s", v29, 0x20u);
    swift_arrayDestroy();

    v17 = v101;
  }

  v40 = *(v111 + 48);
  if (!v40)
  {
LABEL_20:
    if (v110)
    {
      v115 = type metadata accessor for NearbySharingInteractionViewServiceContext();
      v116 = sub_1000E60E0(&qword_100343118, type metadata accessor for NearbySharingInteractionViewServiceContext);
      v55 = sub_10000F798(&v113);
      sub_10009249C(v55);
LABEL_36:
      v88 = UUID.uuidString.getter();
      v90 = v89;
      type metadata accessor for HandoffViewServiceHandle();
      swift_allocObject();
      v91 = sub_100227194(v88, v90);
      v112[0] = sub_1002270FC();
      v92 = swift_allocObject();
      v93 = v111;
      swift_weakInit();
      v94 = swift_allocObject();
      *(v94 + 16) = v92;
      *(v94 + 24) = v91;

      sub_100035D04(&qword_100343120, &qword_100278F80);
      sub_10000E244(&qword_100343128, &qword_100343120, &qword_100278F80);
      Publisher<>.sink(receiveValue:)();

      swift_beginAccess();
      AnyCancellable.store(in:)();
      swift_endAccess();

      sub_100227424(&v113);
      sub_10000903C(&v113);
      v95 = v110 & 1;
      v96 = *(v93 + 48);
      *(v93 + 48) = v91;
      *(v93 + 56) = v95;
    }

    v56 = *(a2 + 24);
    sub_10006F430(v17);
    if ((v19[6])(v17, 1, v18) == 1)
    {
      sub_1000097E8(v17, &qword_10033F5F0, &qword_1002762C0);
      v57 = Logger.logObject.getter();
      v58 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v57, v58))
      {
        v59 = swift_slowAlloc();
        *v59 = 0;
        _os_log_impl(&_mh_execute_header, v57, v58, "### No cardInfo?", v59, 2u);
      }

      v60 = *(v111 + 40);

      v61 = UUID.uuidString.getter();
      v63 = v62;
      v64 = v104;
      *v104 = xmmword_100278BF0;
      *(v64 + 16) = 0x800000010029F440;
      *(v64 + 24) = xmmword_100278C00;
      *(v64 + 40) = xmmword_100278C00;
      *(v64 + 56) = 64;
      swift_storeEnumTagMultiPayload();
      v65 = *(v60 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
      v66 = v105;
      v67 = (v105 + *(v103 + 48));
      v68 = (v105 + *(v103 + 64));
      sub_1000E6078(v64, v105, type metadata accessor for ExperienceEvent);
      *v67 = v61;
      v67[1] = v63;
      *v68 = 0x4964726163206F4ELL;
      v68[1] = 0xEB000000006F666ELL;
      PassthroughSubject.send(_:)();
      sub_1000097E8(v66, &unk_10034C700, &qword_100273D30);
      sub_1000E6190(v64, type metadata accessor for ExperienceEvent);
    }

    sub_1000E6128(v17, v107, _s8CardInfoOMa);
    v69 = *&v56[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice_deviceActivity];
    v70 = sub_1001F00B0();
    sub_100249BE4(v56, v70, v108);
    swift_unknownObjectRelease();
    v109 = a2;
    v71 = *(*(a2 + OBJC_IVAR____TtC17proximitycontrold14HandoffSession__cardMode) + 24);
    v72 = [*(*&v56[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__mediaRemoteDisplayContext] + 24) proxDeviceState];
    v73 = *(*&v56[OBJC_IVAR____TtC17proximitycontrold13HandoffDevice__transfer] + 24);
    if (v73)
    {
      v74 = v73 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type;
      if (*(v73 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_type + 32) == 1)
      {
        v75 = *(v74 + 8);
        v76 = *(v74 + 16);

        v77 = v76;

        if (*(*(v73 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer__state) + 40) < 2uLL)
        {
          v78 = *(v73 + OBJC_IVAR____TtC17proximitycontrold15HandoffTransfer_direction);

LABEL_32:
          v80 = v106;
          v79 = v107;
          sub_1000E6078(v107, v106, _s8CardInfoOMa);
          swift_getKeyPath();
          swift_getKeyPath();
          static Published.subscript.getter();

          v81 = sub_1000BDC5C();
          v83 = v82;

          sub_1000E6190(v79, _s8CardInfoOMa);
          if (v83)
          {
            v84 = 0;
          }

          else
          {
            v84 = v81;
          }

          v85 = type metadata accessor for ClassicCardViewServiceContext();
          v115 = v85;
          v116 = sub_1000E60E0(&qword_100343130, type metadata accessor for ClassicCardViewServiceContext);
          v86 = sub_10000F798(&v113);
          sub_1000E6128(v108, v86, type metadata accessor for ActivityDisplayContext);
          *(v86 + v85[5]) = v71;
          *(v86 + v85[6]) = v72;
          v87 = (v86 + v85[7]);
          *v87 = v76;
          v87[1] = v78;
          sub_1000E6128(v80, v86 + v85[8], _s8CardInfoOMa);
          *(v86 + v85[9]) = v84;
          goto LABEL_36;
        }
      }
    }

    v78 = 0;
    v76 = 1;
    goto LABEL_32;
  }

  v101 = v19;
  v41 = v18;
  v42 = v17;
  v43 = *(v111 + 56);
  v45 = *(v40 + 24);
  v44 = *(v40 + 32);

  if (v45 == UUID.uuidString.getter() && v44 == v46)
  {

    if ((v43 ^ v110))
    {
LABEL_17:
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&_mh_execute_header, v52, v53, "Found stale handle - forcibly dismissing it now", v54, 2u);
      }

      sub_1000E17B8(0, 0x737365732077654ELL, 0xEB000000006E6F69);

      v17 = v42;
      v18 = v41;
      v19 = v101;
      goto LABEL_20;
    }
  }

  else
  {
    v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v47 & 1) == 0 || ((v43 ^ v110))
    {
      goto LABEL_17;
    }
  }

  v48 = Logger.logObject.getter();
  v49 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v48, v49))
  {
    v50 = swift_slowAlloc();
    *v50 = 0;
    _os_log_impl(&_mh_execute_header, v48, v49, "Handle already presenting - no presentation needed", v50, 2u);
  }
}

uint64_t sub_1000E1744(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1000E1D7C(a3, v4);
  }

  return result;
}

void sub_1000E17B8(uint64_t a1, NSObject *a2, unint64_t a3)
{
  v4 = v3;
  v8 = type metadata accessor for ViewServiceInput(0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v43 = (v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  v12 = sub_100003078(v11, qword_100342BB8);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v42 = v8;
    v15 = swift_slowAlloc();
    v41 = swift_slowAlloc();
    v47 = v41;
    *v15 = 136315650;
    *(v15 + 4) = sub_100017494(0xD000000000000018, 0x800000010029F420, &v47);
    *(v15 + 12) = 2080;
    if (a1)
    {
      v45 = 60;
      v46 = 0xE100000000000000;
      UUID.uuidString.getter();
      sub_10000B584(8);
      v44 = a2;
      v39[1] = v12;
      v40 = a3;

      v16 = static String._fromSubstring(_:)();
      v18 = v17;

      v19._countAndFlagsBits = v16;
      v19._object = v18;
      String.append(_:)(v19);
      a3 = v40;
      a2 = v44;

      v20._countAndFlagsBits = 32;
      v20._object = 0xE100000000000000;
      String.append(_:)(v20);
      v21 = *(a1 + 24);
      v22._countAndFlagsBits = sub_1000092A0();
      String.append(_:)(v22);

      v23._countAndFlagsBits = 62;
      v23._object = 0xE100000000000000;
      String.append(_:)(v23);
      v24 = v45;
      v25 = v46;
    }

    else
    {
      v25 = 0xE300000000000000;
      v24 = 7104878;
    }

    v35 = sub_100017494(v24, v25, &v47);

    *(v15 + 14) = v35;
    *(v15 + 22) = 2080;
    *(v15 + 24) = sub_100017494(a2, a3, &v47);
    _os_log_impl(&_mh_execute_header, v13, v14, "%s: session=%s, reason=%s", v15, 0x20u);
    swift_arrayDestroy();

    v26 = *(v4 + 48);
    if (!v26)
    {
      goto LABEL_21;
    }
  }

  else
  {

    v26 = *(v3 + 48);
    if (!v26)
    {
LABEL_21:
      v44 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v44, v36))
      {
        v37 = swift_slowAlloc();
        *v37 = 0;
        _os_log_impl(&_mh_execute_header, v44, v36, "### Nothing to dismiss - no viewServiceHandle", v37, 2u);
      }

      v38 = v44;

      return;
    }
  }

  if (a1)
  {
    v44 = a2;
    v28 = *(v26 + 24);
    v27 = *(v26 + 32);

    if (v28 == UUID.uuidString.getter() && v27 == v29)
    {
    }

    else
    {
      v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v30 & 1) == 0)
      {
LABEL_15:

        goto LABEL_16;
      }
    }

    swift_getKeyPath();
    swift_getKeyPath();
    static Published.subscript.getter();

    if (v45)
    {
      v31 = v43;
      *v43 = v44;
      *(v31 + 8) = a3;
      swift_storeEnumTagMultiPayload();

      sub_1000DC024(v31);

      sub_1000E6190(v31, type metadata accessor for ViewServiceInput);
      return;
    }

    goto LABEL_15;
  }

LABEL_16:
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    *v34 = 0;
    _os_log_impl(&_mh_execute_header, v32, v33, "### Could not dismiss gracefully: no viewServiceLink - Invalidating handle", v34, 2u);
  }

  sub_100227814();
}

uint64_t sub_1000E1D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100035D04(&unk_10034C700, &qword_100273D30);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6);
  v9 = &v41[-v8];
  v10 = type metadata accessor for ExperienceEvent(0);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10);
  v13 = &v41[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  sub_100003078(v14, qword_100342BB8);

  sub_1000E6048(a2);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();

  sub_1000E605C(a2);
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v50 = v45;
    *v17 = 136315650;
    v18 = sub_100017494(0xD000000000000024, 0x800000010029F3D0, &v50);
    v43 = v17;
    v44 = v15;
    *(v17 + 4) = v18;
    *(v17 + 12) = 2080;
    v48 = 0;
    v49 = 0xE000000000000000;
    _StringGuts.grow(_:)(29);

    v48 = 0xD00000000000001ALL;
    v49 = 0x800000010029F400;
    v19 = *(a1 + 24);
    v20 = *(a1 + 32);

    sub_10000B584(8);
    v46 = v10;
    v47 = a1;
    v42 = v16;

    v21 = static String._fromSubstring(_:)();
    v23 = v22;

    v24._countAndFlagsBits = v21;
    v24._object = v23;
    String.append(_:)(v24);

    v25._countAndFlagsBits = 62;
    v25._object = 0xE100000000000000;
    String.append(_:)(v25);
    v26 = sub_100017494(v48, v49, &v50);

    v27 = v43;
    *(v43 + 14) = v26;
    *(v27 + 22) = 2080;
    v28 = sub_1000376F8(a2);
    v30 = sub_100017494(v28, v29, &v50);

    *(v27 + 24) = v30;
    a1 = v47;
    v31 = v44;
    _os_log_impl(&_mh_execute_header, v44, v42, "%s: handle=%s, event=%s", v27, 0x20u);
    swift_arrayDestroy();
  }

  else
  {
  }

  if ((a2 - 1) >= 3)
  {
    v32 = *(v3 + 48);
    if (v32)
    {
      if (v32 == a1)
      {
        sub_100227814();
        v33 = *(v3 + 48);
        *(v3 + 48) = 0;
        *(v3 + 56) = 0;
      }
    }
  }

  v34 = *(v3 + 40);
  v36 = *(a1 + 24);
  v35 = *(a1 + 32);
  *v13 = a2;
  swift_storeEnumTagMultiPayload();
  v37 = *(v34 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment_experienceEventSessionIDReasonSubject);
  v38 = &v9[*(v6 + 48)];
  v39 = &v9[*(v6 + 64)];
  sub_1000E6078(v13, v9, type metadata accessor for ExperienceEvent);
  *v38 = v36;
  v38[1] = v35;
  *v39 = 0xD000000000000011;
  v39[1] = 0x800000010029F3B0;
  sub_1000E6048(a2);

  PassthroughSubject.send(_:)();
  sub_1000097E8(v9, &unk_10034C700, &qword_100273D30);
  sub_1000E6190(v13, type metadata accessor for ExperienceEvent);
}

unint64_t sub_1000E2228()
{
  result = qword_100342D68;
  if (!qword_100342D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100342D68);
  }

  return result;
}

uint64_t sub_1000E227C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();
  static Published.subscript.getter();

  *a2 = v5;
  return result;
}

uint64_t sub_1000E22FC(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_getKeyPath();
  swift_getKeyPath();

  return static Published.subscript.setter();
}

uint64_t sub_1000E2378(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v10 = a5[1];
  *(v5 + 16) = *a5;
  *(v5 + 32) = v10;
  *(v5 + 48) = a5[2];
  *(v5 + 58) = *(a5 + 42);
  v11 = swift_task_alloc();
  *(v5 + 80) = v11;
  *v11 = v5;
  v11[1] = sub_1000E244C;

  return sub_1000DCC80(a1, a2, a3, a4, v5 + 16);
}

uint64_t sub_1000E244C()
{
  v1 = *(*v0 + 80);
  v4 = *v0;

  v2 = *(v4 + 8);

  return v2();
}

uint64_t sub_1000E2540(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delegate + 8) = 0;
  swift_unknownObjectWeakInit();
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_internalCnx) = 0;
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delayedRetryTask) = 0;
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retries) = 0;
  v11 = OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_id;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  (*(v13 + 16))(a6 + v11, a1, v12);
  v14 = a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_retryPolicy;
  *v14 = a2;
  *(v14 + 8) = a3;
  *(v14 + 16) = a4;
  *(a6 + OBJC_IVAR____TtC17proximitycontrold20XPCConnectionManager_delegate + 8) = &off_1003049A8;
  swift_unknownObjectWeakAssign();
  if (qword_1003392A8 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_100003078(v15, qword_100350360);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Init", v18, 2u);
  }

  else
  {
  }

  (*(v13 + 8))(a1, v12);
  return a6;
}

uint64_t sub_1000E274C(uint64_t a1)
{
  v2 = v1;
  v299 = a1;
  v279 = sub_100035D04(&qword_100342D70, &qword_100278CF0);
  v278 = *(v279 - 8);
  v3 = *(v278 + 64);
  __chkstk_darwin(v279);
  v277 = &v193 - v4;
  v284 = sub_100035D04(&qword_100342D78, &qword_100278CF8);
  v282 = *(v284 - 8);
  v5 = *(v282 + 64);
  __chkstk_darwin(v284);
  v280 = &v193 - v6;
  v285 = sub_100035D04(&qword_100342D80, &qword_100278D00);
  v283 = *(v285 - 8);
  v7 = *(v283 + 64);
  __chkstk_darwin(v285);
  v281 = &v193 - v8;
  v9 = type metadata accessor for Logger();
  v272 = *(v9 - 8);
  v10 = *(v272 + 64);
  __chkstk_darwin(v9);
  v271 = v11;
  v268 = &v193 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v276 = sub_100035D04(&qword_100342D88, &qword_100278D08);
  v275 = *(v276 - 8);
  v12 = *(v275 + 64);
  __chkstk_darwin(v276);
  v274 = &v193 - v13;
  v265 = sub_100035D04(&qword_100342D90, &qword_100278D10);
  v264 = *(v265 - 8);
  v14 = *(v264 + 64);
  __chkstk_darwin(v265);
  v261 = &v193 - v15;
  v266 = sub_100035D04(&qword_100342D98, &qword_100278D18);
  v267 = *(v266 - 8);
  v16 = *(v267 + 64);
  __chkstk_darwin(v266);
  v262 = &v193 - v17;
  v270 = sub_100035D04(&qword_100342DA0, &qword_100278D20);
  v269 = *(v270 - 8);
  v18 = *(v269 + 64);
  __chkstk_darwin(v270);
  v263 = &v193 - v19;
  v256 = sub_100035D04(&qword_100342DA8, &qword_100278D28);
  v255 = *(v256 - 8);
  v20 = *(v255 + 64);
  __chkstk_darwin(v256);
  v252 = &v193 - v21;
  v257 = sub_100035D04(&qword_100342DB0, &qword_100278D30);
  v258 = *(v257 - 8);
  v22 = *(v258 + 64);
  __chkstk_darwin(v257);
  v253 = &v193 - v23;
  v259 = sub_100035D04(&qword_100342DB8, &qword_100278D38);
  v260 = *(v259 - 8);
  v24 = *(v260 + 64);
  __chkstk_darwin(v259);
  v254 = &v193 - v25;
  v245 = sub_100035D04(&qword_100342DC0, &qword_100278D40);
  v244 = *(v245 - 8);
  v26 = *(v244 + 64);
  __chkstk_darwin(v245);
  v243 = &v193 - v27;
  v250 = sub_100035D04(&qword_100342DC8, &qword_100278D48);
  v248 = *(v250 - 8);
  v28 = *(v248 + 64);
  __chkstk_darwin(v250);
  v246 = &v193 - v29;
  v251 = sub_100035D04(&qword_100342DD0, &qword_100278D50);
  v249 = *(v251 - 8);
  v30 = *(v249 + 64);
  __chkstk_darwin(v251);
  v247 = &v193 - v31;
  v236 = sub_100035D04(&qword_100342DD8, &qword_100278D58);
  v235 = *(v236 - 8);
  v32 = *(v235 + 64);
  __chkstk_darwin(v236);
  v233 = &v193 - v33;
  v241 = sub_100035D04(&qword_100342DE0, &qword_100278D60);
  v239 = *(v241 - 8);
  v34 = *(v239 + 64);
  __chkstk_darwin(v241);
  v237 = &v193 - v35;
  v242 = sub_100035D04(&qword_100342DE8, &qword_100278D68);
  v240 = *(v242 - 8);
  v36 = *(v240 + 64);
  __chkstk_darwin(v242);
  v238 = &v193 - v37;
  v227 = sub_100035D04(&qword_100342DF0, &qword_100278D70);
  v226 = *(v227 - 8);
  v38 = *(v226 + 64);
  __chkstk_darwin(v227);
  v225 = &v193 - v39;
  v287 = sub_100035D04(&qword_100342DF8, &qword_100278D78);
  v230 = *(v287 - 1);
  v40 = *(v230 + 64);
  __chkstk_darwin(v287);
  v228 = &v193 - v41;
  v232 = sub_100035D04(&qword_100342E00, &qword_100278D80);
  v231 = *(v232 - 8);
  v42 = *(v231 + 64);
  __chkstk_darwin(v232);
  v229 = &v193 - v43;
  v219 = sub_100035D04(&qword_100342E08, &qword_100278D88);
  v217 = *(v219 - 8);
  v44 = *(v217 + 64);
  __chkstk_darwin(v219);
  v216 = &v193 - v45;
  v212 = sub_100035D04(&qword_100342E10, &qword_100278D90);
  v211 = *(v212 - 8);
  v46 = *(v211 + 64);
  __chkstk_darwin(v212);
  v210 = &v193 - v47;
  v215 = sub_100035D04(&qword_100342E18, &qword_100278D98);
  v214 = *(v215 - 8);
  v48 = *(v214 + 64);
  __chkstk_darwin(v215);
  v213 = &v193 - v49;
  v221 = sub_100035D04(&qword_100342E20, &qword_100278DA0);
  v220 = *(v221 - 8);
  v50 = *(v220 + 64);
  __chkstk_darwin(v221);
  v218 = &v193 - v51;
  v224 = sub_100035D04(&qword_100342E28, &qword_100278DA8);
  v223 = *(v224 - 8);
  v52 = *(v223 + 64);
  __chkstk_darwin(v224);
  v222 = &v193 - v53;
  v206 = sub_100035D04(&qword_100342E30, &qword_100278DB0);
  v205 = *(v206 - 8);
  v54 = *(v205 + 64);
  __chkstk_darwin(v206);
  v204 = &v193 - v55;
  v209 = sub_100035D04(&qword_100342E38, &qword_100278DB8);
  v208 = *(v209 - 8);
  v56 = *(v208 + 64);
  __chkstk_darwin(v209);
  v207 = &v193 - v57;
  v200 = sub_100035D04(&qword_100342E40, &qword_100278DC0);
  v199 = *(v200 - 8);
  v58 = *(v199 + 64);
  __chkstk_darwin(v200);
  v198 = &v193 - v59;
  v203 = sub_100035D04(&qword_100342E48, &qword_100278DC8);
  v202 = *(v203 - 8);
  v60 = *(v202 + 64);
  __chkstk_darwin(v203);
  v201 = &v193 - v61;
  v295 = sub_100035D04(&qword_10034C660, &qword_100278DD0);
  v301 = *(v295 - 8);
  v62 = *(v301 + 64);
  __chkstk_darwin(v295);
  v298 = &v193 - v63;
  v297 = sub_100035D04(&qword_100342E50, &qword_100278DD8);
  v194 = *(v297 - 1);
  v64 = *(v194 + 64);
  __chkstk_darwin(v297);
  v193 = &v193 - v65;
  v197 = sub_100035D04(&qword_100342E58, &unk_100278DE0);
  v196 = *(v197 - 8);
  v66 = *(v196 + 64);
  __chkstk_darwin(v197);
  v195 = &v193 - v67;
  v296 = sub_100035D04(&qword_10033B298, &qword_100271E18);
  v68 = *(v296 - 1);
  v69 = *(v68 + 64);
  __chkstk_darwin(v296);
  v71 = &v193 - v70;
  v72 = sub_100035D04(&qword_100342E60, &unk_100278DF0);
  v73 = *(v72 + 48);
  v74 = *(v72 + 52);
  swift_allocObject();
  v75 = PassthroughSubject.init()();
  *(v1 + 64) = &_swiftEmptySetSingleton;
  *(v1 + 48) = 0;
  *(v1 + 56) = 0;
  *(v1 + 24) = 0;
  *(v1 + 32) = 0;
  *(v1 + 16) = v75;
  v300 = v1 + 64;
  if (qword_100338F48 != -1)
  {
    swift_once();
  }

  v273 = v9;
  v234 = sub_100003078(v9, qword_100342BB8);
  v76 = Logger.logObject.getter();
  v77 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v76, v77))
  {
    v78 = swift_slowAlloc();
    *v78 = 0;
    _os_log_impl(&_mh_execute_header, v76, v77, "Init", v78, 2u);
  }

  *(v2 + 40) = v299;

  v304 = sub_100140E18();
  v302 = 0;
  v303 = 0;
  v79 = sub_100035D04(&qword_10034C6B0, &qword_1002703C0);
  sub_100035D04(&qword_10033B3D0, &qword_100271F60);
  v286 = &protocol conformance descriptor for AnyPublisher<A, B>;
  v80 = sub_10000E244(&qword_1003398E0, &qword_10034C6B0, &qword_1002703C0);
  v291 = v79;
  v294 = v80;
  Publisher.scan<A>(_:_:)();
  sub_10000E244(&qword_10033B3D8, &qword_10033B298, &qword_100271E18);
  v81 = v296;
  v82 = Publisher.eraseToAnyPublisher()();

  (*(v68 + 8))(v71, v81);
  v302 = v82;
  v83 = swift_allocObject();
  v292 = v2;
  swift_weakInit();
  v84 = swift_allocObject();
  *(v84 + 16) = sub_1000E5AB4;
  *(v84 + 24) = v83;

  sub_100035D04(&qword_10033B3E0, &qword_100271F68);
  sub_10000E244(&qword_10033B3E8, &qword_10033B3E0, &qword_100271F68);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v293 = OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher;
  v85 = v299;
  v302 = *(v299 + OBJC_IVAR____TtC17proximitycontrold18HandoffEnvironment____lazy_storage___sessionPublisher);
  v289 = type metadata accessor for HandoffSession();

  v86 = v298;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342E68, &qword_100278E00);
  v87 = v193;
  v88 = v295;
  Publishers.CompactMap.map<A>(_:)();
  v89 = *(v301 + 8);
  v301 += 8;
  v288 = v89;
  v89(v86, v88);
  v296 = &protocol conformance descriptor for Publishers.CompactMap<A, B>;
  sub_10000E244(&qword_100342E70, &qword_100342E50, &qword_100278DD8);
  v290 = &protocol conformance descriptor for Publishers.Map<A, B>;
  sub_10000E244(&qword_100342E78, &qword_100342E68, &qword_100278E00);
  v90 = v195;
  v91 = v297;
  Publisher<>.switchToLatest()();
  (*(v194 + 8))(v87, v91);
  v92 = swift_allocObject();
  swift_weakInit();
  v93 = swift_allocObject();
  *(v93 + 16) = sub_1000E5B14;
  *(v93 + 24) = v92;
  v297 = &protocol conformance descriptor for Publishers.SwitchToLatest<A, B>;
  sub_10000E244(&qword_100342E80, &qword_100342E58, &unk_100278DE0);
  v94 = v197;
  Publisher<>.sink(receiveValue:)();

  (*(v196 + 8))(v90, v94);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v95 = v85;
  v96 = v293;
  v302 = *(v95 + v293);

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342E88, &qword_100278E08);
  v97 = v198;
  Publishers.CompactMap.map<A>(_:)();
  v288(v86, v88);
  sub_10000E244(&qword_100342E90, &qword_100342E40, &qword_100278DC0);
  sub_10000E244(&qword_100342E98, &qword_100342E88, &qword_100278E08);
  v98 = v201;
  v99 = v200;
  Publisher<>.switchToLatest()();
  (*(v199 + 8))(v97, v99);
  v100 = swift_allocObject();
  swift_weakInit();
  v101 = swift_allocObject();
  *(v101 + 16) = sub_1000E5B74;
  *(v101 + 24) = v100;
  sub_10000E244(&qword_100342EA0, &qword_100342E48, &qword_100278DC8);
  v102 = v203;
  Publisher<>.sink(receiveValue:)();

  (*(v202 + 8))(v98, v102);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v302 = *(v95 + v96);

  v103 = v298;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342EA8, &qword_100278E10);
  v104 = v204;
  Publishers.CompactMap.map<A>(_:)();
  v105 = v288;
  v288(v103, v88);
  sub_10000E244(&qword_100342EB0, &qword_100342E30, &qword_100278DB0);
  sub_10000E244(&qword_100342EB8, &qword_100342EA8, &qword_100278E10);
  v106 = v207;
  v107 = v206;
  Publisher<>.switchToLatest()();
  (*(v205 + 8))(v104, v107);
  v108 = swift_allocObject();
  swift_weakInit();
  v109 = swift_allocObject();
  *(v109 + 16) = sub_1000E5BB4;
  *(v109 + 24) = v108;
  sub_10000E244(&qword_100342EC0, &qword_100342E38, &qword_100278DB8);
  v110 = v209;
  Publisher<>.sink(receiveValue:)();

  (*(v208 + 8))(v106, v110);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v302 = *(v299 + v293);

  v111 = v298;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342EC8, &qword_100278E18);
  v112 = v210;
  v113 = v295;
  Publishers.CompactMap.map<A>(_:)();
  v105(v111, v113);
  sub_10000E244(&qword_100342ED0, &qword_100342E10, &qword_100278D90);
  sub_10000E244(&qword_100342ED8, &qword_100342EC8, &qword_100278E18);
  v114 = v213;
  v115 = v212;
  Publisher<>.switchToLatest()();
  (*(v211 + 8))(v112, v115);
  v116 = swift_allocObject();
  swift_weakInit();
  v117 = swift_allocObject();
  *(v117 + 16) = sub_1000E5C14;
  *(v117 + 24) = v116;
  v118 = swift_allocObject();
  *(v118 + 16) = sub_1000E6588;
  *(v118 + 24) = v117;

  sub_100035D04(&qword_100342EE0, &qword_100278E20);
  sub_10000E244(&qword_100342EE8, &qword_100342E18, &qword_100278D98);
  v119 = v216;
  v120 = v215;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100342EF0, &qword_100342E08, &qword_100278D88);
  v121 = v219;
  v122 = Publisher.eraseToAnyPublisher()();

  (*(v217 + 8))(v119, v121);
  (*(v214 + 8))(v114, v120);
  v302 = v122;
  sub_100035D04(&qword_100342EF8, &qword_100278E28);
  sub_100035D04(&qword_100342F00, &qword_100278E30);
  sub_10000E244(&qword_100342F08, &qword_100342EF8, &qword_100278E28);
  v123 = v218;
  Publisher.compactMap<A>(_:)();

  sub_10000E244(&qword_100342F10, &qword_100342E20, &qword_100278DA0);
  sub_10000E244(&qword_100342F18, &qword_100342F00, &qword_100278E30);
  v124 = v222;
  v125 = v221;
  Publisher<>.switchToLatest()();
  (*(v220 + 8))(v123, v125);
  v126 = swift_allocObject();
  swift_weakInit();
  v127 = swift_allocObject();
  *(v127 + 16) = sub_1000E5CAC;
  *(v127 + 24) = v126;
  sub_10000E244(&qword_100342F20, &qword_100342E28, &qword_100278DA8);
  v128 = v224;
  Publisher<>.sink(receiveValue:)();

  (*(v223 + 8))(v124, v128);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v302 = *(v299 + v293);

  v129 = v298;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342F28, &qword_100278E38);
  v130 = v225;
  v131 = v295;
  Publishers.CompactMap.map<A>(_:)();
  v132 = v129;
  v133 = v288;
  v288(v132, v131);
  sub_10000E244(&qword_100342F30, &qword_100342DF0, &qword_100278D70);
  sub_10000E244(&qword_100342F38, &qword_100342F28, &qword_100278E38);
  v134 = v228;
  v135 = v227;
  Publisher<>.switchToLatest()();
  (*(v226 + 8))(v130, v135);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342F40, &qword_100342DF8, &qword_100278D78);
  v136 = v229;
  v137 = v287;
  Publisher.filter(_:)();

  (*(v230 + 8))(v134, v137);
  v287 = &protocol conformance descriptor for Publishers.Filter<A>;
  sub_10000E244(&qword_100342F48, &qword_100342E00, &qword_100278D80);
  v138 = v232;
  Publisher<>.sink(receiveValue:)();
  (*(v231 + 8))(v136, v138);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v139 = v293;
  v140 = v299;
  v302 = *(v299 + v293);

  v141 = v298;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342F50, &qword_100278E40);
  v142 = v233;
  v143 = v295;
  Publishers.CompactMap.map<A>(_:)();
  v133(v141, v143);
  sub_10000E244(&qword_100342F58, &qword_100342DD8, &qword_100278D58);
  sub_10000E244(&qword_100342F60, &qword_100342F50, &qword_100278E40);
  v144 = v237;
  v145 = v236;
  Publisher<>.switchToLatest()();
  (*(v235 + 8))(v142, v145);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342F68, &qword_100342DE0, &qword_100278D60);
  v146 = v238;
  v147 = v241;
  Publisher.filter(_:)();

  (*(v239 + 8))(v144, v147);
  sub_10000E244(&qword_100342F70, &qword_100342DE8, &qword_100278D68);
  v148 = v242;
  Publisher<>.sink(receiveValue:)();
  (*(v240 + 8))(v146, v148);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v302 = *(v140 + v139);

  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342F78, &qword_100278E48);
  v149 = v243;
  v150 = v295;
  Publishers.CompactMap.map<A>(_:)();
  v151 = v150;
  v288(v141, v150);
  sub_10000E244(&qword_100342F80, &qword_100342DC0, &qword_100278D40);
  sub_10000E244(&qword_100342F88, &qword_100342F78, &qword_100278E48);
  v152 = v246;
  v153 = v245;
  Publisher<>.switchToLatest()();
  (*(v244 + 8))(v149, v153);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342F90, &qword_100342DC8, &qword_100278D48);
  v154 = v247;
  v155 = v250;
  Publisher.filter(_:)();

  (*(v248 + 8))(v152, v155);
  sub_10000E244(&qword_100342F98, &qword_100342DD0, &qword_100278D50);
  v156 = v251;
  Publisher<>.sink(receiveValue:)();
  (*(v249 + 8))(v154, v156);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v302 = *(v299 + v293);

  v157 = v298;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342FA0, &qword_100278E50);
  v158 = v252;
  Publishers.CompactMap.map<A>(_:)();
  v159 = v157;
  v160 = v288;
  v288(v159, v151);
  sub_10000E244(&qword_100342FA8, &qword_100342DA8, &qword_100278D28);
  sub_10000E244(&qword_100342FB0, &qword_100342FA0, &qword_100278E50);
  v161 = v253;
  v162 = v256;
  Publisher<>.switchToLatest()();
  (*(v255 + 8))(v158, v162);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342FB8, &qword_100342DB0, &qword_100278D30);
  v163 = v254;
  v164 = v257;
  Publisher.filter(_:)();

  (*(v258 + 8))(v161, v164);
  sub_10000E244(&qword_100342FC0, &qword_100342DB8, &qword_100278D38);
  v165 = v259;
  Publisher<>.sink(receiveValue:)();
  (*(v260 + 8))(v163, v165);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v302 = *(v299 + v293);

  v166 = v298;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100342FC8, &qword_100278E58);
  v167 = v261;
  v168 = v295;
  Publishers.CompactMap.map<A>(_:)();
  v160(v166, v168);
  sub_10000E244(&qword_100342FD0, &qword_100342D90, &qword_100278D10);
  sub_10000E244(&qword_100342FD8, &qword_100342FC8, &qword_100278E58);
  v169 = v262;
  v170 = v265;
  Publisher<>.switchToLatest()();
  (*(v264 + 8))(v167, v170);
  swift_allocObject();
  swift_weakInit();
  sub_10000E244(&qword_100342FE0, &qword_100342D98, &qword_100278D18);
  v171 = v263;
  v172 = v266;
  Publisher.filter(_:)();

  (*(v267 + 8))(v169, v172);
  LOBYTE(v126) = static os_log_type_t.info.getter();
  v173 = v272;
  v174 = v268;
  v175 = v273;
  (*(v272 + 16))(v268, v234, v273);
  v176 = (*(v173 + 80) + 64) & ~*(v173 + 80);
  v177 = v176 + v271;
  v178 = swift_allocObject();
  *(v178 + 2) = 0;
  *(v178 + 3) = 0;
  *(v178 + 4) = 0xD000000000000014;
  *(v178 + 5) = 0x800000010029F390;
  *(v178 + 6) = 0;
  *(v178 + 7) = 0xE000000000000000;
  (*(v173 + 32))(&v178[v176], v174, v175);
  v178[v177] = v126;
  sub_100035D04(&qword_100342FE8, &qword_100278E60);
  sub_10000E244(&qword_100342FF0, &qword_100342DA0, &qword_100278D20);
  v179 = v274;
  v180 = v270;
  Publisher.map<A>(_:)();

  sub_10000E244(&qword_100342FF8, &qword_100342D88, &qword_100278D08);
  v181 = v276;
  v182 = Publisher.eraseToAnyPublisher()();
  (*(v275 + 8))(v179, v181);
  (*(v269 + 8))(v171, v180);
  v302 = v182;
  sub_100035D04(&qword_100343000, &qword_100278E68);
  sub_10000E244(&qword_100343008, &qword_100343000, &qword_100278E68);
  Publisher<>.sink(receiveValue:)();

  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  v302 = *(v299 + v293);

  v183 = v298;
  Publisher.compactMap<A>(_:)();

  sub_100035D04(&qword_100343010, &qword_100278E70);
  v184 = v277;
  v185 = v295;
  Publishers.CompactMap.map<A>(_:)();
  v288(v183, v185);
  sub_10000E244(&qword_100343018, &qword_100342D70, &qword_100278CF0);
  sub_10000E244(&qword_100343020, &qword_100343010, &qword_100278E70);
  v186 = v280;
  v187 = v279;
  Publisher<>.switchToLatest()();
  (*(v278 + 8))(v184, v187);
  swift_allocObject();
  v188 = v292;
  swift_weakInit();

  sub_10000E244(&qword_100343028, &qword_100342D78, &qword_100278CF8);
  v189 = v281;
  v190 = v284;
  Publisher.filter(_:)();

  (*(v282 + 8))(v186, v190);
  sub_10000E244(&qword_100343030, &qword_100342D80, &qword_100278D00);
  v191 = v285;
  Publisher<>.sink(receiveValue:)();
  (*(v283 + 8))(v189, v191);
  swift_beginAccess();
  AnyCancellable.store(in:)();
  swift_endAccess();

  return v188;
}