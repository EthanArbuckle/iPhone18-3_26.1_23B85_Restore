char *sub_10006374C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
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

void *sub_100063858(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003CDC(&qword_100135148, &unk_1000F5030);
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
    sub_100003CDC(&qword_100135150, &qword_1000F7BA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10006398C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100135DB0, &qword_1000F7B78);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_100063AAC(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100134FF8, &unk_1000F7B80);
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

size_t sub_100063BB0(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100003CDC(a5, a6);
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

char *sub_100063D8C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100135DE0, &qword_1000F7BC0);
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

char *sub_100063E98(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100135E70, &qword_1000F7C38);
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

size_t sub_100063F8C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_100003CDC(&qword_1001351A0, &unk_1000F7C20);
  v10 = *(sub_100003CDC(&qword_100135198, &unk_1000F5080) - 8);
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
  v15 = *(sub_100003CDC(&qword_100135198, &unk_1000F5080) - 8);
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

char *sub_10006417C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100003CDC(&qword_100135E68, &qword_1000F7C30);
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

void *sub_100064270(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003CDC(&qword_100135100, &qword_1000F4FD0);
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
    sub_100003CDC(&qword_100135108, &unk_1000F4FD8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000643A4(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003CDC(&qword_100135DC8, &qword_1000F7BB0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 1;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 5);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[4 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 32 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100003CDC(&qword_100135DD0, &qword_1000F7BB8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000644D8(void *result, int64_t a2, char a3, void *a4)
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
    sub_100003CDC(&qword_100135008, &qword_1000F4EC0);
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
    sub_100003CDC(&qword_100135010, &qword_1000F4EC8);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_100064628(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
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

    v8 = sub_1000655DC(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t sub_1000646D0(unint64_t a1)
{
  if (a1 >> 62)
  {
    _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v1 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

uint64_t sub_10006475C(uint64_t result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          sub_1000146C4(a3, a4);
          return sub_10004617C(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

uint64_t sub_1000648C4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  v5 = (a2 + 64);
  v85 = a1 + 32;
  v86 = *(a1 + 16);
  v84 = (a2 + 64);
  while (2)
  {
    result = v3 == v2;
    if (v3 != v2)
    {
      v7 = (v4 + 40 * v3);
      v9 = *v7;
      v8 = v7[1];
      v10 = v7[2];
      v11 = v7[3];
      v87 = *(v7 + 32);
      v88 = v3 == v2;
      v89 = v3 + 1;

      sub_1000146B0(v10, v11);
      if (v10)
      {
        v12 = 0;
      }

      else
      {
        v12 = v11 == 0xC000000000000000;
      }

      v13 = !v12;
      v97 = v13;
      v99 = v10;
      v100 = v11 >> 62;
      v91 = HIDWORD(v10);
      v14 = __OFSUB__(HIDWORD(v10), v10);
      v95 = v14;
      __n = BYTE6(v11);
      v93 = v10;
      v94 = HIDWORD(v10) - v10;
      v92 = v10 >> 32;
      v90 = (v10 >> 32) - v10;
      v96 = v11;
      while (1)
      {
        if (!v2)
        {
          __break(1u);
LABEL_166:
          __break(1u);
LABEL_167:
          __break(1u);
LABEL_168:
          __break(1u);
LABEL_169:
          __break(1u);
LABEL_170:
          __break(1u);
LABEL_171:
          __break(1u);
LABEL_172:
          __break(1u);
LABEL_173:
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
LABEL_179:
          __break(1u);
LABEL_180:
          __break(1u);
LABEL_181:
          __break(1u);
LABEL_182:
          __break(1u);
LABEL_183:
          __break(1u);
LABEL_184:
          __break(1u);
LABEL_185:
          __break(1u);
LABEL_186:
          __break(1u);
LABEL_187:
          __break(1u);
LABEL_188:
          __break(1u);
        }

        v16 = *(v5 - 2);
        v15 = *(v5 - 1);
        v101 = *v5;
        v17 = *(v5 - 4) == v9 && *(v5 - 3) == v8;
        if (!v17 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_15;
        }

        if (v15 >> 60 == 15)
        {
          if (v11 >> 60 == 15)
          {
            goto LABEL_159;
          }

          goto LABEL_15;
        }

        if (v11 >> 60 != 15)
        {
          break;
        }

LABEL_15:
        v5 += 40;
        if (!--v2)
        {

          sub_100014528(v99, v11);
          return 0;
        }
      }

      v18 = v15 >> 62;
      if (v15 >> 62 == 3)
      {
        if (v16)
        {
          v19 = 0;
        }

        else
        {
          v19 = v15 == 0xC000000000000000;
        }

        v20 = v100;
        v22 = !v19 || v100 < 3;
        if (((v22 | v97) & 1) == 0)
        {

          v72 = 0;
          v73 = 0xC000000000000000;
          goto LABEL_160;
        }
      }

      else
      {
        v20 = v100;
        if (v18 <= 1)
        {
          if (v18)
          {
            LODWORD(v23) = HIDWORD(v16) - v16;
            if (__OFSUB__(HIDWORD(v16), v16))
            {
              goto LABEL_169;
            }

            v23 = v23;
            if (v100 > 1)
            {
              goto LABEL_47;
            }
          }

          else
          {
            v23 = BYTE6(v15);
            if (v100 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_43;
        }

        if (v18 == 2)
        {
          v25 = *(v16 + 16);
          v24 = *(v16 + 24);
          v26 = __OFSUB__(v24, v25);
          v23 = v24 - v25;
          if (v26)
          {
            goto LABEL_168;
          }

          if (v100 > 1)
          {
            goto LABEL_47;
          }

          goto LABEL_43;
        }
      }

      v23 = 0;
      if (v20 > 1)
      {
LABEL_47:
        if (v20 != 2)
        {
          if (!v23)
          {
            goto LABEL_159;
          }

          goto LABEL_15;
        }

        v29 = *(v99 + 16);
        v28 = *(v99 + 24);
        v26 = __OFSUB__(v28, v29);
        v27 = v28 - v29;
        if (v26)
        {
          goto LABEL_167;
        }

        goto LABEL_49;
      }

LABEL_43:
      v27 = __n;
      if (v20)
      {
        v27 = v94;
        if (v95)
        {
          goto LABEL_166;
        }
      }

LABEL_49:
      if (v23 == v27)
      {
        if (v23 < 1)
        {
          goto LABEL_159;
        }

        if (v18 > 1)
        {
          if (v18 == 2)
          {
            v34 = *(v16 + 16);

            sub_1000146B0(v16, v15);
            v35 = __DataStorage._bytes.getter();
            if (v35)
            {
              v36 = v35;
              v37 = __DataStorage._offset.getter();
              if (__OFSUB__(v34, v37))
              {
                goto LABEL_171;
              }

              v80 = (v34 - v37 + v36);
            }

            else
            {
              v80 = 0;
            }

            v11 = v96;
            __DataStorage._length.getter();
            if (v100 != 2)
            {
              if (v100 == 1)
              {
                if (v92 < v93)
                {
                  goto LABEL_176;
                }

                v44 = __DataStorage._bytes.getter();
                if (v44)
                {
                  v45 = __DataStorage._offset.getter();
                  if (__OFSUB__(v93, v45))
                  {
                    goto LABEL_187;
                  }

                  v44 += v93 - v45;
                }

                v46 = __DataStorage._length.getter();
                v47 = v90;
                if (v46 < v90)
                {
                  v47 = v46;
                }

                v48 = v80;
                if (!v80)
                {
                  goto LABEL_195;
                }

                if (!v44)
                {
                  goto LABEL_194;
                }

                goto LABEL_103;
              }

              v48 = v80;
              LODWORD(__s1[0]) = v99;
              BYTE4(__s1[0]) = v91;
              *(__s1 + 5) = *(&v99 + 5);
              HIBYTE(__s1[0]) = HIBYTE(v99);
              LODWORD(__s1[1]) = v96;
              WORD2(__s1[1]) = WORD2(v96);
              if (!v80)
              {
                goto LABEL_193;
              }

LABEL_126:
              v62 = __s1;
              v63 = __n;
LABEL_156:
              v71 = memcmp(v48, v62, v63);

              sub_100014528(v16, v15);
              if (!v71)
              {
                goto LABEL_159;
              }

              goto LABEL_15;
            }

            v74 = *(v99 + 24);
            v78 = *(v99 + 16);
            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v58 = __DataStorage._offset.getter();
              v59 = v78;
              if (__OFSUB__(v78, v58))
              {
                goto LABEL_185;
              }

              v44 += v78 - v58;
            }

            else
            {
              v59 = v78;
            }

            v67 = v74 - v59;
            if (__OFSUB__(v74, v59))
            {
              goto LABEL_180;
            }

            v68 = __DataStorage._length.getter();
            if (v68 >= v67)
            {
              v47 = v67;
            }

            else
            {
              v47 = v68;
            }

            v48 = v80;
            if (!v80)
            {
              goto LABEL_189;
            }

            if (!v44)
            {
              __break(1u);
LABEL_189:
              __break(1u);
LABEL_190:
              __break(1u);
LABEL_191:
              __break(1u);
LABEL_192:
              __break(1u);
LABEL_193:
              __break(1u);
LABEL_194:
              __break(1u);
LABEL_195:
              __break(1u);
LABEL_196:
              __break(1u);
LABEL_197:
              __break(1u);
LABEL_198:
              __break(1u);
LABEL_199:
              __break(1u);
LABEL_200:
              __DataStorage._length.getter();
              __break(1u);
LABEL_201:
              result = __DataStorage._length.getter();
LABEL_202:
              __break(1u);
LABEL_203:
              __break(1u);
              return result;
            }

LABEL_154:
            v11 = v96;
            if (v48 == v44)
            {
LABEL_158:

              sub_100014528(v16, v15);
LABEL_159:

              v72 = v99;
              v73 = v11;
LABEL_160:
              sub_100014528(v72, v73);
              result = v88;
              v4 = v85;
              v2 = v86;
              v3 = v89;
              v5 = v84;
              if (v101 == v87)
              {
                continue;
              }

              return result;
            }

            goto LABEL_155;
          }

          memset(__s1, 0, 14);
          if (v100)
          {
            if (v100 == 2)
            {
              v76 = *(v99 + 24);
              v82 = *(v99 + 16);

              sub_1000146B0(v16, v15);
              v41 = __DataStorage._bytes.getter();
              if (v41)
              {
                v42 = __DataStorage._offset.getter();
                v43 = v82;
                if (__OFSUB__(v82, v42))
                {
                  goto LABEL_183;
                }

                v41 = &v82[v41 - v42];
              }

              else
              {
                v43 = v82;
              }

              v64 = v76 - v43;
              if (__OFSUB__(v76, v43))
              {
                goto LABEL_175;
              }

              result = __DataStorage._length.getter();
              if (!v41)
              {
                goto LABEL_203;
              }

LABEL_134:
              if (result >= v64)
              {
                v65 = v64;
              }

              else
              {
                v65 = result;
              }

              v66 = memcmp(__s1, v41, v65);

              sub_100014528(v16, v15);
              v11 = v96;
              if (!v66)
              {
                goto LABEL_159;
              }

              goto LABEL_15;
            }

            if (v92 < v93)
            {
              goto LABEL_174;
            }

            sub_1000146B0(v16, v15);
            v53 = __DataStorage._bytes.getter();
            if (!v53)
            {
              goto LABEL_201;
            }

            v54 = v53;
            v55 = __DataStorage._offset.getter();
            if (__OFSUB__(v93, v55))
            {
              goto LABEL_179;
            }

            v33 = (v93 - v55 + v54);
            result = __DataStorage._length.getter();
            if (!v33)
            {
              goto LABEL_202;
            }

            goto LABEL_112;
          }
        }

        else
        {
          if (v18)
          {
            if (v16 > v16 >> 32)
            {
              goto LABEL_170;
            }

            sub_1000146B0(v16, v15);
            v38 = __DataStorage._bytes.getter();
            if (v38)
            {
              v39 = v38;
              v40 = __DataStorage._offset.getter();
              if (__OFSUB__(v16, v40))
              {
                goto LABEL_172;
              }

              v81 = (v16 - v40 + v39);
            }

            else
            {
              v81 = 0;
            }

            v11 = v96;
            __DataStorage._length.getter();
            if (v100 == 2)
            {
              v75 = *(v99 + 24);
              v79 = *(v99 + 16);
              v44 = __DataStorage._bytes.getter();
              if (v44)
              {
                v60 = __DataStorage._offset.getter();
                v61 = v79;
                if (__OFSUB__(v79, v60))
                {
                  goto LABEL_186;
                }

                v44 += v79 - v60;
              }

              else
              {
                v61 = v79;
              }

              v69 = v75 - v61;
              if (__OFSUB__(v75, v61))
              {
                goto LABEL_182;
              }

              v70 = __DataStorage._length.getter();
              if (v70 >= v69)
              {
                v47 = v69;
              }

              else
              {
                v47 = v70;
              }

              v48 = v81;
              if (!v81)
              {
                goto LABEL_197;
              }

              if (!v44)
              {
                goto LABEL_196;
              }

              goto LABEL_154;
            }

            if (v100 != 1)
            {
              v48 = v81;
              LODWORD(__s1[0]) = v99;
              BYTE4(__s1[0]) = v91;
              *(__s1 + 5) = *(&v99 + 5);
              HIBYTE(__s1[0]) = HIBYTE(v99);
              LODWORD(__s1[1]) = v96;
              WORD2(__s1[1]) = WORD2(v96);
              if (!v81)
              {
                goto LABEL_190;
              }

              goto LABEL_126;
            }

            if (v92 < v93)
            {
              goto LABEL_181;
            }

            v44 = __DataStorage._bytes.getter();
            if (v44)
            {
              v49 = __DataStorage._offset.getter();
              if (__OFSUB__(v93, v49))
              {
                goto LABEL_188;
              }

              v44 += v93 - v49;
            }

            v50 = __DataStorage._length.getter();
            v47 = v90;
            if (v50 < v90)
            {
              v47 = v50;
            }

            v48 = v81;
            if (!v81)
            {
              goto LABEL_192;
            }

            if (!v44)
            {
              goto LABEL_191;
            }

LABEL_103:
            if (v48 == v44)
            {
              goto LABEL_158;
            }

LABEL_155:
            v63 = v47;
            v62 = v44;
            goto LABEL_156;
          }

          __s1[0] = v16;
          LOWORD(__s1[1]) = v15;
          BYTE2(__s1[1]) = BYTE2(v15);
          BYTE3(__s1[1]) = BYTE3(v15);
          BYTE4(__s1[1]) = BYTE4(v15);
          BYTE5(__s1[1]) = BYTE5(v15);
          if (v100)
          {
            if (v100 != 1)
            {
              v77 = *(v99 + 24);
              v83 = *(v99 + 16);

              sub_1000146B0(v16, v15);
              v41 = __DataStorage._bytes.getter();
              if (v41)
              {
                v51 = __DataStorage._offset.getter();
                v52 = v83;
                if (__OFSUB__(v83, v51))
                {
                  goto LABEL_184;
                }

                v41 = &v83[v41 - v51];
              }

              else
              {
                v52 = v83;
              }

              v64 = v77 - v52;
              if (__OFSUB__(v77, v52))
              {
                goto LABEL_177;
              }

              result = __DataStorage._length.getter();
              if (!v41)
              {
                goto LABEL_198;
              }

              goto LABEL_134;
            }

            if (v92 < v93)
            {
              goto LABEL_173;
            }

            sub_1000146B0(v16, v15);
            v30 = __DataStorage._bytes.getter();
            if (!v30)
            {
              goto LABEL_200;
            }

            v31 = v30;
            v32 = __DataStorage._offset.getter();
            if (__OFSUB__(v93, v32))
            {
              goto LABEL_178;
            }

            v33 = (v93 - v32 + v31);
            result = __DataStorage._length.getter();
            if (!v33)
            {
              goto LABEL_199;
            }

LABEL_112:
            if (result >= v90)
            {
              v56 = v90;
            }

            else
            {
              v56 = result;
            }

            v57 = memcmp(__s1, v33, v56);

            sub_100014528(v16, v15);
            if (!v57)
            {
              goto LABEL_159;
            }

            goto LABEL_15;
          }
        }

        __s2 = v99;
        v103 = v91;
        v104 = *(&v99 + 5);
        v105 = HIBYTE(v99);
        v106 = v11;
        v107 = BYTE2(v11);
        v108 = BYTE3(v11);
        v109 = BYTE4(v11);
        v110 = BYTE5(v11);
        if (!memcmp(__s1, &__s2, __n))
        {
          goto LABEL_159;
        }
      }

      goto LABEL_15;
    }

    return result;
  }
}

BOOL _s10driverkitd15ApprovalDBEntryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a2 + 24);
  if (v5 >> 60 != 15)
  {
    if (v6 >> 60 == 15 || (sub_10006475C(*(a1 + 16), v5, *(a2 + 16), v6) & 1) == 0)
    {
      return 0;
    }

    return *(a1 + 32) == *(a2 + 32);
  }

  if (v6 >> 60 == 15)
  {
    return *(a1 + 32) == *(a2 + 32);
  }

  return 0;
}

BOOL _s10driverkitd26ApprovalSettingsStateEntryV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
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

  v8 = *(a1 + 40);
  v9 = *(a2 + 40);
  if (v8)
  {
    if (!v9 || (*(a1 + 32) != *(a2 + 32) || v8 != v9) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  v10 = *(a1 + 56);
  v11 = *(a2 + 56);
  if (v10 >> 60 == 15)
  {
    if (v11 >> 60 == 15)
    {
      return *(a1 + 64) == *(a2 + 64);
    }
  }

  else if (v11 >> 60 != 15 && (sub_10006475C(*(a1 + 48), v10, *(a2 + 48), v11) & 1) != 0)
  {
    return *(a1 + 64) == *(a2 + 64);
  }

  return 0;
}

uint64_t _s10driverkitd26ApprovalStateUpdateRequestC2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v7 = *(a2 + 48);
  v8 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v3 >> 60 != 15)
  {
    if (v5 >> 60 != 15 && (sub_10006475C(v2, v3, v6, v5) & 1) != 0 && v4 == v7)
    {
      goto LABEL_17;
    }

    return 0;
  }

  if (v5 >> 60 != 15 || v4 != v7)
  {
    return 0;
  }

LABEL_17:

  return static Date.== infix(_:_:)();
}

uint64_t sub_1000655DC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  v21 = result;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 64;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 64);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(a3 + 48) + 16 * v14);
    v16 = *v15;
    v17 = v15[1];
    v18 = *(*(a3 + 56) + v14);

    LOBYTE(v18) = a4(v16, v17, v18);

    if (v18)
    {
      *(v21 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
        return sub_1000583E8(v21, a2, v22, a3);
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      return sub_1000583E8(v21, a2, v22, a3);
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_10006573C(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, uint64_t))
{
  v4 = a1;
  v5 = *(a1 + 32);
  v6 = ((1 << v5) + 63) >> 6;
  if ((v5 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_2:
    __chkstk_darwin(a1);
    v8 = &v12 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v8, v7);
    result = sub_1000655DC(v8, v6, v4, a2);
    if (v2)
    {
      return swift_willThrow();
    }

    return result;
  }

  v10 = swift_slowAlloc();
  v11 = sub_100064628(v10, v6, v4, a2);

  if (!v2)
  {
    return v11;
  }

  return result;
}

unint64_t sub_1000658BC()
{
  result = qword_100135B58;
  if (!qword_100135B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B58);
  }

  return result;
}

unint64_t sub_100065910()
{
  result = qword_100135B60;
  if (!qword_100135B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B60);
  }

  return result;
}

unint64_t sub_100065964()
{
  result = qword_100135B68;
  if (!qword_100135B68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B68);
  }

  return result;
}

uint64_t sub_1000659B8(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    v4 = (*(a4 + 56) + 24 * result);
    v5 = v4[1];
    v6 = v4[2];
    return *v4;
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_100065A14(uint64_t *a1)
{
  v2 = sub_100003CDC(&qword_100135E38, &qword_1000F7BE8);
  v3 = *(v2 - 8);
  v32 = v2;
  v33 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v32 - v5;
  v7 = sub_100003CDC(&qword_100135E40, &qword_1000F7BF0);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin(v7);
  v10 = &v32 - v9;
  v11 = sub_100003CDC(&qword_100135E48, &qword_1000F7BF8);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = &v32 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v41 = a1;
  v18 = sub_100003C4C(a1, v16);
  sub_1000658BC();
  v19 = v35;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v20 = v34;
    v35 = v12;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v37 = v21;
    v38 = v21 + 32;
    v39 = 0;
    v40 = v22;
    v23 = sub_1000AC100();
    if (v23 == 2 || v39 != v40 >> 1)
    {
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v27 = v26;
      v28 = *(sub_100003CDC(&qword_100135E50, &qword_1000F7C00) + 48);
      *v27 = &type metadata for ApprovalDBEntrySource;
      v18 = v15;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
      swift_willThrow();
      (*(v35 + 8))(v15, v11);
      swift_unknownObjectRelease();
    }

    else if (v23)
    {
      LOBYTE(v36) = 1;
      sub_100065910();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v24 = v35;
      sub_10001D590();
      v31 = v32;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v33 + 8))(v6, v31);
      (*(v24 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = v36;
    }

    else
    {
      LOBYTE(v36) = 0;
      sub_100065964();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v30 = v35;
      (*(v20 + 8))(v10, v7);
      (*(v30 + 8))(v15, v11);
      swift_unknownObjectRelease();
      v18 = 0;
    }
  }

  sub_100003C90(v41);
  return v18;
}

unint64_t sub_100065F48()
{
  result = qword_100135B78;
  if (!qword_100135B78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B78);
  }

  return result;
}

unint64_t sub_100065FD4()
{
  result = qword_100135B80;
  if (!qword_100135B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B80);
  }

  return result;
}

unint64_t sub_100066028()
{
  result = qword_100135B88;
  if (!qword_100135B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B88);
  }

  return result;
}

uint64_t sub_10006607C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100105FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453)
  {

    return 2;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000661A4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003CDC(&qword_100135E30, &qword_1000F7BE0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18 - v8;
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100065F48();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(a1);
  }

  LOBYTE(v22) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v21 = v11;
  v24 = 1;
  sub_100068124();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v19 = v22;
  v20 = v23;
  v24 = 2;
  sub_100068178();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v14 = v22;

  v16 = v19;
  v15 = v20;
  sub_1000146B0(v19, v20);
  sub_100003C90(a1);

  result = sub_100014528(v16, v15);
  *a2 = v21;
  *(a2 + 8) = v13;
  *(a2 + 16) = v16;
  *(a2 + 24) = v15;
  *(a2 + 32) = v14;
  return result;
}

unint64_t sub_100066448()
{
  result = qword_100135B98;
  if (!qword_100135B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135B98);
  }

  return result;
}

unint64_t sub_10006649C()
{
  result = qword_100135BA0;
  if (!qword_100135BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BA0);
  }

  return result;
}

void *sub_1000664F0(uint64_t *a1)
{
  v3 = sub_100003CDC(&qword_100135D98, &qword_1000F7B70);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100003C4C(a1, a1[3]);
  sub_100067DF4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C90(a1);
  }

  else
  {
    sub_100003CDC(&qword_100135D80, &qword_1000F7B68);
    sub_100067E48(&qword_100135DA0, sub_100067F14);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100003C90(a1);
  }

  return v9;
}

uint64_t sub_1000666A4(uint64_t *a1)
{
  v3 = sub_100003CDC(&qword_100135E20, &qword_1000F7BD8);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = &v10[-v6];
  v8 = a1[3];
  sub_100003C4C(a1, v8);
  sub_100066448();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v10[7] = 0;
    sub_100068300();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = v11;
    v10[6] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    (*(v4 + 8))(v7, v3);
  }

  sub_100003C90(a1);
  return v8;
}

unint64_t sub_100066868()
{
  result = qword_100135BB0;
  if (!qword_100135BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BB0);
  }

  return result;
}

unint64_t sub_1000668BC()
{
  result = qword_100135BC8;
  if (!qword_100135BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BC8);
  }

  return result;
}

void *sub_100066910(uint64_t *a1)
{
  v3 = sub_100003CDC(&qword_100135E08, &qword_1000F7BD0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100003C4C(a1, a1[3]);
  sub_100066868();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C90(a1);
  }

  else
  {
    sub_100003CDC(&qword_100135BB8, &qword_1000F6B18);
    sub_100068234(&qword_100135E10, sub_1000682AC);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100003C90(a1);
  }

  return v9;
}

unint64_t sub_100066AC4()
{
  result = qword_100135BE0;
  if (!qword_100135BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BE0);
  }

  return result;
}

uint64_t sub_100066B18(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x8000000100105FD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4E79616C70736964 && a2 == 0xEB00000000656D61 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7865546567617375 && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656372756F73 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C61766F72707061 && a2 == 0xED00006574617453)
  {

    return 4;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_100066CE4@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100003CDC(&qword_100135DF0, &qword_1000F7BC8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_100066AC4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(a1);
  }

  LOBYTE(v35) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = v12;
  LOBYTE(v35) = 1;
  v13 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v28 = v14;
  v26 = v13;
  LOBYTE(v35) = 2;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v27 = v15;
  LOBYTE(v30) = 3;
  sub_100068124();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v35;
  v43 = 4;
  sub_100068178();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v42 = v44;
  v17 = v28;
  v16 = v29;
  *&v30 = v11;
  *(&v30 + 1) = v29;
  v18 = v26;
  *&v31 = v26;
  *(&v31 + 1) = v28;
  v19 = v25;
  v20 = v27;
  *&v32 = v25;
  *(&v32 + 1) = v27;
  v33 = v24;
  v34 = v44;
  sub_1000681CC(&v30, &v35);
  sub_100003C90(a1);
  *&v35 = v11;
  *(&v35 + 1) = v16;
  v36 = v18;
  v37 = v17;
  v38 = v19;
  v39 = v20;
  v40 = v24;
  v41 = v42;
  result = sub_100068204(&v35);
  v22 = v33;
  *(a2 + 32) = v32;
  *(a2 + 48) = v22;
  *(a2 + 64) = v34;
  v23 = v31;
  *a2 = v30;
  *(a2 + 16) = v23;
  return result;
}

unint64_t sub_1000670E0()
{
  result = qword_100135BE8;
  if (!qword_100135BE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135BE8);
  }

  return result;
}

unint64_t sub_10006717C()
{
  result = qword_100135C00;
  if (!qword_100135C00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135C00);
  }

  return result;
}

unint64_t sub_1000671D4()
{
  result = qword_100135C08;
  if (!qword_100135C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135C08);
  }

  return result;
}

uint64_t sub_100067240(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

__n128 sub_100067268(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_100067274(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 16))
  {
    return (*a1 + 12);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000672C8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

void *sub_100067318(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

__n128 sub_100067358(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_10006736C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1000673B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100067408(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_100067450(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_1000674AC(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1000674D0(uint64_t a1, int a2)
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

uint64_t sub_100067518(uint64_t result, int a2, int a3)
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

uint64_t type metadata accessor for ApprovalStateUpdateRequest()
{
  result = qword_100135C38;
  if (!qword_100135C38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000675D0()
{
  result = type metadata accessor for Date();
  if (v1 <= 0x3F)
  {
    v2 = *(result - 8) + 64;
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

unint64_t sub_100067718()
{
  result = qword_100135CD0;
  if (!qword_100135CD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CD0);
  }

  return result;
}

unint64_t sub_100067770()
{
  result = qword_100135CD8;
  if (!qword_100135CD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CD8);
  }

  return result;
}

unint64_t sub_1000677C8()
{
  result = qword_100135CE0;
  if (!qword_100135CE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CE0);
  }

  return result;
}

unint64_t sub_100067820()
{
  result = qword_100135CE8;
  if (!qword_100135CE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CE8);
  }

  return result;
}

unint64_t sub_100067878()
{
  result = qword_100135CF0;
  if (!qword_100135CF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CF0);
  }

  return result;
}

unint64_t sub_1000678D0()
{
  result = qword_100135CF8;
  if (!qword_100135CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135CF8);
  }

  return result;
}

unint64_t sub_100067928()
{
  result = qword_100135D00;
  if (!qword_100135D00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D00);
  }

  return result;
}

unint64_t sub_100067980()
{
  result = qword_100135D08;
  if (!qword_100135D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D08);
  }

  return result;
}

unint64_t sub_1000679D8()
{
  result = qword_100135D10;
  if (!qword_100135D10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D10);
  }

  return result;
}

unint64_t sub_100067A30()
{
  result = qword_100135D18;
  if (!qword_100135D18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D18);
  }

  return result;
}

unint64_t sub_100067A88()
{
  result = qword_100135D20;
  if (!qword_100135D20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D20);
  }

  return result;
}

unint64_t sub_100067AE0()
{
  result = qword_100135D28;
  if (!qword_100135D28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D28);
  }

  return result;
}

unint64_t sub_100067B38()
{
  result = qword_100135D30;
  if (!qword_100135D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D30);
  }

  return result;
}

unint64_t sub_100067B90()
{
  result = qword_100135D38;
  if (!qword_100135D38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D38);
  }

  return result;
}

unint64_t sub_100067BE8()
{
  result = qword_100135D40;
  if (!qword_100135D40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D40);
  }

  return result;
}

unint64_t sub_100067C40()
{
  result = qword_100135D48;
  if (!qword_100135D48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D48);
  }

  return result;
}

unint64_t sub_100067C98()
{
  result = qword_100135D50;
  if (!qword_100135D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D50);
  }

  return result;
}

unint64_t sub_100067CF0()
{
  result = qword_100135D58;
  if (!qword_100135D58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D58);
  }

  return result;
}

unint64_t sub_100067D48()
{
  result = qword_100135D60;
  if (!qword_100135D60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D60);
  }

  return result;
}

unint64_t sub_100067DA0()
{
  result = qword_100135D68;
  if (!qword_100135D68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D68);
  }

  return result;
}

unint64_t sub_100067DF4()
{
  result = qword_100135D78;
  if (!qword_100135D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D78);
  }

  return result;
}

uint64_t sub_100067E48(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(&qword_100135D80, &qword_1000F7B68);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_100067EC0()
{
  result = qword_100135D90;
  if (!qword_100135D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135D90);
  }

  return result;
}

unint64_t sub_100067F14()
{
  result = qword_100135DA8;
  if (!qword_100135DA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135DA8);
  }

  return result;
}

unint64_t sub_100067F68()
{
  result = qword_100135DB8;
  if (!qword_100135DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135DB8);
  }

  return result;
}

uint64_t sub_100068024(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DriverBinEntry();
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_100068088(unint64_t *a1, void (*a2)(uint64_t))
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

unint64_t sub_1000680D0()
{
  result = qword_100135DE8;
  if (!qword_100135DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135DE8);
  }

  return result;
}

unint64_t sub_100068124()
{
  result = qword_100135DF8;
  if (!qword_100135DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135DF8);
  }

  return result;
}

unint64_t sub_100068178()
{
  result = qword_100135E00;
  if (!qword_100135E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E00);
  }

  return result;
}

uint64_t sub_100068234(unint64_t *a1, void (*a2)(void))
{
  result = *a1;
  if (!result)
  {
    sub_100009FA4(&qword_100135BB8, &qword_1000F6B18);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1000682AC()
{
  result = qword_100135E18;
  if (!qword_100135E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E18);
  }

  return result;
}

unint64_t sub_100068300()
{
  result = qword_100135E28;
  if (!qword_100135E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E28);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KernelManagementConfiguration.ExceptionsConfiguration.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for KernelManagementConfiguration.ExceptionsConfiguration.CodingKeys(_WORD *result, int a2, int a3)
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

__n128 sub_10006843C(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t sub_100068450(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 17))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100068498(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

unint64_t sub_1000684FC()
{
  result = qword_100135E78;
  if (!qword_100135E78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E78);
  }

  return result;
}

unint64_t sub_100068554()
{
  result = qword_100135E80;
  if (!qword_100135E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E80);
  }

  return result;
}

unint64_t sub_1000685AC()
{
  result = qword_100135E88;
  if (!qword_100135E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135E88);
  }

  return result;
}

uint64_t sub_100068664(uint64_t a1)
{
  v2 = type metadata accessor for POSIXError();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = a1;

  sub_1000366A0(0xD000000000000010, 0x8000000100106170, v22);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v8 = _CFXPCCreateXPCObjectFromCFObject();

  if (!v8)
  {

    sub_10001449C();
    swift_allocError();
    *v9 = 0xD000000000000026;
    *(v9 + 8) = 0x8000000100106190;
    v10 = v21;
    v12 = v19;
    v11 = v20;
    *(v9 + 16) = v18;
    *(v9 + 32) = v12;
    *(v9 + 48) = v11;
    *(v9 + 64) = v10;
    *(v9 + 72) = 4;
    swift_willThrow();
    return sub_10006894C(v22);
  }

  sub_1000689B4(v22, &v18);
  if (*(&v19 + 1))
  {
    if (swift_dynamicCast())
    {
      xpc_dictionary_set_mach_send();
    }
  }

  else
  {
    sub_10006894C(&v18);
  }

  LODWORD(v18) = 0;
  if (sub_10000168C(v8, &v18))
  {
    v13 = POSIXErrorCode.init(rawValue:)();

    if ((v13 & &_mh_execute_header) != 0)
    {
      v14 = 96;
    }

    else
    {
      v14 = v13;
    }

    v16[1] = v14;
    sub_1000B50B0(_swiftEmptyArrayStorage);
    sub_100068A24();
    _BridgedStoredNSError.init(_:userInfo:)();
    POSIXError._nsError.getter();
    (*(v3 + 8))(v6, v2);
    swift_willThrow();
    swift_unknownObjectRelease();
    return sub_10006894C(v22);
  }

  sub_10006894C(v22);

  swift_unknownObjectRelease();
  return v18;
}

uint64_t sub_10006894C(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000689B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_100068A24()
{
  result = qword_100135F28;
  if (!qword_100135F28)
  {
    type metadata accessor for POSIXError();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100135F28);
  }

  return result;
}

uint64_t sub_100068A7C(uint64_t a1)
{
  v2 = *(a1 + 32);
  v1 = *(a1 + 40);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

void sub_100068B00(NSObject *a1, uint64_t a2, uint64_t a3)
{
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1000F3160;
  *(v6 + 56) = &type metadata for String;
  v7 = sub_100003D24();
  *(v6 + 64) = v7;
  *(v6 + 32) = 0xD00000000000001CLL;
  *(v6 + 40) = 0x80000001001061E0;
  sub_10001491C();
  v8 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v9 = swift_allocObject();
  *(v9 + 16) = a2;
  *(v9 + 24) = a3;
  aBlock[4] = sub_100068D78;
  aBlock[5] = v9;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100068A7C;
  aBlock[3] = &unk_100128730;
  v10 = _Block_copy(aBlock);

  v11 = String.utf8CString.getter();
  xpc_set_event_stream_handler((v11 + 32), a1, v10);

  _Block_release(v10);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1000F3160;
  *(v12 + 56) = &type metadata for String;
  *(v12 + 64) = v7;
  *(v12 + 32) = 0xD00000000000001CLL;
  *(v12 + 40) = 0x80000001001061E0;
  v13 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_100068D40()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_100068D78()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  return v1();
}

uint64_t sub_100068DA0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100068DB8(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100003CDC(&qword_100134BF8, &qword_1000F4520);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v31 = sub_10006AAE0();
  v32 = v10;
  v35 = a1;
  v36 = a2;

  v11._countAndFlagsBits = 61;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_100012814();
  StringProtocol.range<A>(of:options:range:locale:)();
  v14 = v13;
  sub_10000A184(v9, &qword_100134BF8, &qword_1000F4520);

  if ((v14 & 1) == 0)
  {
    v15 = *(v2 + 56);
    v16 = *(v2 + 64);

    v17 = String.distance(from:to:)();

    v19 = *(v3 + 56);
    v18 = *(v3 + 64);

    v20 = sub_10006B728(v17, v19, v18);
    v22 = v21;
    v24 = v23;
    v26 = v25;

    v31 = v20;
    v32 = v22;
    v33 = v24;
    v34 = v26;
    v35 = 32;
    v36 = 0xE100000000000000;
    sub_10006B7D8();
    v27 = StringProtocol.components<A>(separatedBy:)();

    if (v27[2])
    {
      v28 = v27[4];
      v29 = v27[5];

      return sub_100069F58(v28, v29);
    }
  }

  return 0;
}

uint64_t sub_100069024()
{

  v0 = String.Iterator.next()();
  if (v0.value._object)
  {
    countAndFlagsBits = v0.value._countAndFlagsBits;
    object = v0.value._object;
    do
    {
      v5 = String.Iterator.next()();
      if (!v5.value._object)
      {

        return 1;
      }

      if (countAndFlagsBits == v5.value._countAndFlagsBits && object == v5.value._object)
      {
      }

      else
      {
        v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v3 & 1) == 0)
        {

          goto LABEL_14;
        }
      }

      v4 = String.Iterator.next()();
      countAndFlagsBits = v4.value._countAndFlagsBits;
      object = v4.value._object;
    }

    while (v4.value._object);
  }

  v6 = String.Iterator.next()().value._object;

  if (!v6)
  {
    return 1;
  }

LABEL_14:

  return 0;
}

double sub_100069180()
{
  sub_100003CDC(&qword_1001362F8, &qword_1000F8080);
  v0 = swift_allocObject();
  *&result = 17;
  *(v0 + 16) = xmmword_1000F7E80;
  *(v0 + 32) = &type metadata for KernelRequests.GetRequests;
  *(v0 + 40) = &off_100129410;
  *(v0 + 48) = &type metadata for KernelRequests.GetLoaded;
  *(v0 + 56) = &off_1001293F8;
  *(v0 + 64) = &type metadata for KernelRequests.LoadExtension;
  *(v0 + 72) = &off_1001293E0;
  *(v0 + 80) = &type metadata for KernelRequests.UnloadExtension;
  *(v0 + 88) = &off_1001293C8;
  *(v0 + 96) = &type metadata for KernelRequests.SendResource;
  *(v0 + 104) = &off_1001293B0;
  *(v0 + 112) = &type metadata for KernelRequests.LoadFileset;
  *(v0 + 120) = &off_100129398;
  *(v0 + 128) = &type metadata for KernelRequests.DextLaunch;
  *(v0 + 136) = &off_100129380;
  *(v0 + 144) = &type metadata for KernelRequests.RequestResource;
  *(v0 + 152) = &off_100129368;
  *(v0 + 160) = &type metadata for KernelRequests.LoadRequest;
  *(v0 + 168) = &off_100129350;
  *(v0 + 176) = &type metadata for KernelRequests.LoadNotification;
  *(v0 + 184) = &off_100129338;
  *(v0 + 192) = &type metadata for KernelRequests.UnloadNotification;
  *(v0 + 200) = &off_100129320;
  *(v0 + 208) = &type metadata for KernelRequests.RequestExit;
  *(v0 + 216) = &off_100129308;
  *(v0 + 224) = &type metadata for KernelRequests.MissingAuxKCBundles;
  *(v0 + 232) = &off_1001292F0;
  *(v0 + 240) = &type metadata for KernelRequests.AuxKCBundleAvailable;
  *(v0 + 248) = &off_1001292D8;
  *(v0 + 256) = &type metadata for KernelRequests.GetDaemonActive;
  *(v0 + 264) = &off_1001292C0;
  *(v0 + 272) = &type metadata for KernelRequests.GetDrivers;
  *(v0 + 280) = &off_1001292A8;
  *(v0 + 288) = &type metadata for KernelRequests.DextUpdateNotification;
  *(v0 + 296) = &off_100129290;
  qword_10014E890 = v0;
  return result;
}

uint64_t sub_1000696F4()
{
  sub_100003CDC(&qword_1001342F0, &qword_1000F3AB0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1000F7E90;
  if (qword_100133A60 != -1)
  {
    swift_once();
  }

  v1 = *algn_10014E8E8;
  *(v0 + 32) = qword_10014E8E0;
  *(v0 + 40) = v1;
  strcpy((v0 + 48), "OSBundleUUID");
  *(v0 + 61) = 0;
  *(v0 + 62) = -5120;
  v2 = qword_100133A50;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = *algn_10014E8C8;
  *(v0 + 64) = qword_10014E8C0;
  *(v0 + 72) = v3;
  strcpy((v0 + 80), "OSBundlePath");
  *(v0 + 93) = 0;
  *(v0 + 94) = -5120;
  v4 = qword_100133A70;

  if (v4 != -1)
  {
    swift_once();
  }

  v5 = *algn_10014E908;
  *(v0 + 96) = qword_10014E900;
  *(v0 + 104) = v5;
  *(v0 + 112) = 0xD000000000000015;
  *(v0 + 120) = 0x80000001001066B0;
  *(v0 + 128) = 0xD000000000000015;
  *(v0 + 136) = 0x8000000100105350;
  *(v0 + 144) = 0xD000000000000011;
  *(v0 + 152) = 0x80000001001066D0;
  *(v0 + 160) = 0xD000000000000019;
  *(v0 + 168) = 0x80000001001066F0;
  *(v0 + 176) = 0xD000000000000010;
  *(v0 + 184) = 0x8000000100105020;
  *(v0 + 192) = 0xD00000000000001BLL;
  *(v0 + 200) = 0x8000000100105080;
  *(v0 + 208) = 0xD000000000000010;
  *(v0 + 216) = 0x8000000100106710;
  qword_10014E898 = v0;
}

uint64_t sub_10006999C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_100061588(0xD00000000000001CLL, 0x8000000100106600), (v3 & 1) != 0))
    {
      sub_10000B430(*(v1 + 56) + 32 * v2, v5);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100069A4C(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_100061588(0xD00000000000001BLL, 0x80000001001065E0), (v3 & 1) != 0))
    {
      sub_10000B430(*(v1 + 56) + 32 * v2, v5);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100069B00(uint64_t a1)
{
  if (!a1)
  {
    return 2;
  }

  if (!*(a1 + 16))
  {
    return 2;
  }

  v2 = sub_100061588(0xD00000000000001ELL, 0x80000001001065C0);
  result = 2;
  if (v4)
  {
    sub_10000B430(*(a1 + 56) + 32 * v2, v6);
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  return result;
}

unint64_t sub_100069BB8(uint64_t a1)
{
  if (!a1)
  {
    goto LABEL_7;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
LABEL_8:
    v6 = 1;
    return v2 | (v6 << 32);
  }

  v3 = sub_100061588(0x6E49206B63656843, 0xEE006E656B6F5420);
  if ((v4 & 1) == 0)
  {
LABEL_7:
    v2 = 0;
    goto LABEL_8;
  }

  sub_10000B430(*(a1 + 56) + 32 * v3, v9);
  v5 = swift_dynamicCast();
  v2 = v8;
  v6 = v5 ^ 1;
  if (!v5)
  {
    v2 = 0;
  }

  return v2 | (v6 << 32);
}

uint64_t sub_100069D98(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16) && (v2 = sub_100061588(0xD000000000000012, 0x8000000100104E40), (v3 & 1) != 0))
    {
      sub_10000B430(*(v1 + 56) + 32 * v2, v5);
      if (swift_dynamicCast())
      {
        return v4;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100069E48(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (*(result + 16))
    {
      v2 = sub_100061588(0xD00000000000001DLL, 0x8000000100104B60);
      if (v3)
      {
        sub_10000B430(*(v1 + 56) + 32 * v2, v5);
        if (swift_dynamicCast())
        {
          return v4;
        }

        else
        {
          return 0;
        }
      }

      else
      {
        return 0;
      }
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_100069F28()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);

  return v1;
}

uint64_t sub_100069F58(uint64_t a1, unint64_t a2)
{
  if ((sub_100069024() & 1) != 0 && (sub_100069024() & 1) == 0)
  {
    v17 = sub_10006B728(2uLL, a1, a2);
    v19 = v18;
    v21 = v20;
    v23 = v22;

    if ((v17 ^ v19) >= 0x4000)
    {
      v24 = sub_10006AEC8(v17, v19, v21, v23, 16);
      if ((v25 & 0x100) != 0)
      {
        v24 = sub_1000777B4(v17, v19, v21, v23, 16);
      }

      v37 = v24;
      v38 = v25;
      goto LABEL_62;
    }

LABEL_79:

    return 0;
  }

  result = sub_100069024();
  if (result)
  {
    sub_10006B728(3uLL, a1, a2);
    v6 = v5;
    v8 = v7;

    v48 = 1;
    v49 = 0xE100000000000000;
    v46 = v6;
    v47 = v8;
    sub_10006B82C();
    String.append<A>(contentsOf:)();

    v44 = 45;
    v45 = 0;
    v37 = 0;
    v38 = 1;
LABEL_62:

    if (v38)
    {
      return 0;
    }

    else
    {
      return v37;
    }
  }

  v9 = HIBYTE(a2) & 0xF;
  v10 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v11 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v11)
  {
    goto LABEL_79;
  }

  if ((a2 & 0x1000000000000000) == 0)
  {
    if ((a2 & 0x2000000000000000) != 0)
    {
      v44 = a1;
      v45 = a2 & 0xFFFFFFFFFFFFFFLL;
      if (a1 == 43)
      {
        if (v9)
        {
          if (--v9)
          {
            v13 = 0;
            v32 = &v44 + 1;
            while (1)
            {
              v33 = *v32 - 48;
              if (v33 > 9)
              {
                break;
              }

              v34 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                break;
              }

              v13 = v34 + v33;
              if (__OFADD__(v34, v33))
              {
                break;
              }

              ++v32;
              if (!--v9)
              {
                goto LABEL_73;
              }
            }
          }

          goto LABEL_72;
        }

LABEL_84:
        __break(1u);
        return result;
      }

      if (a1 != 45)
      {
        if (v9)
        {
          v13 = 0;
          v39 = &v44;
          while (1)
          {
            v40 = *v39 - 48;
            if (v40 > 9)
            {
              break;
            }

            v41 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v41 + v40;
            if (__OFADD__(v41, v40))
            {
              break;
            }

            v39 = (v39 + 1);
            if (!--v9)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }

      if (v9)
      {
        if (--v9)
        {
          v13 = 0;
          v26 = &v44 + 1;
          while (1)
          {
            v27 = *v26 - 48;
            if (v27 > 9)
            {
              break;
            }

            v28 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v28 - v27;
            if (__OFSUB__(v28, v27))
            {
              break;
            }

            ++v26;
            if (!--v9)
            {
              goto LABEL_73;
            }
          }
        }

        goto LABEL_72;
      }
    }

    else
    {
      if ((a1 & 0x1000000000000000) != 0)
      {
        result = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
      }

      else
      {
        result = _StringObject.sharedUTF8.getter();
      }

      v12 = *result;
      if (v12 == 43)
      {
        if (v10 >= 1)
        {
          v9 = v10 - 1;
          if (v10 != 1)
          {
            v13 = 0;
            if (result)
            {
              v29 = (result + 1);
              while (1)
              {
                v30 = *v29 - 48;
                if (v30 > 9)
                {
                  goto LABEL_72;
                }

                v31 = 10 * v13;
                if ((v13 * 10) >> 64 != (10 * v13) >> 63)
                {
                  goto LABEL_72;
                }

                v13 = v31 + v30;
                if (__OFADD__(v31, v30))
                {
                  goto LABEL_72;
                }

                ++v29;
                if (!--v9)
                {
                  goto LABEL_73;
                }
              }
            }

            goto LABEL_61;
          }

LABEL_72:
          v13 = 0;
          LOBYTE(v9) = 1;
          goto LABEL_73;
        }

        goto LABEL_83;
      }

      if (v12 != 45)
      {
        if (v10)
        {
          v13 = 0;
          while (1)
          {
            v35 = *result - 48;
            if (v35 > 9)
            {
              break;
            }

            v36 = 10 * v13;
            if ((v13 * 10) >> 64 != (10 * v13) >> 63)
            {
              break;
            }

            v13 = v36 + v35;
            if (__OFADD__(v36, v35))
            {
              break;
            }

            ++result;
            if (!--v10)
            {
              goto LABEL_61;
            }
          }
        }

        goto LABEL_72;
      }

      if (v10 >= 1)
      {
        v9 = v10 - 1;
        if (v10 != 1)
        {
          v13 = 0;
          if (result)
          {
            v14 = (result + 1);
            while (1)
            {
              v15 = *v14 - 48;
              if (v15 > 9)
              {
                goto LABEL_72;
              }

              v16 = 10 * v13;
              if ((v13 * 10) >> 64 != (10 * v13) >> 63)
              {
                goto LABEL_72;
              }

              v13 = v16 - v15;
              if (__OFSUB__(v16, v15))
              {
                goto LABEL_72;
              }

              ++v14;
              if (!--v9)
              {
                goto LABEL_73;
              }
            }
          }

LABEL_61:
          LOBYTE(v9) = 0;
LABEL_73:
          LOBYTE(v48) = v9;
          v42 = v9;
          goto LABEL_74;
        }

        goto LABEL_72;
      }

      __break(1u);
      __break(1u);
    }

    __break(1u);
    __break(1u);
LABEL_83:
    __break(1u);
    __break(1u);
    goto LABEL_84;
  }

  v13 = sub_10006AF94(a1, a2, 10);
  v42 = v43;
LABEL_74:

  if (v42)
  {
    return 0;
  }

  else
  {
    return v13;
  }
}

uint64_t sub_10006A730(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100003CDC(&qword_100134BF8, &qword_1000F4520);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v31 - v8;
  v31 = sub_10006AAE0();
  v32 = v10;
  v35 = a1;
  v36 = a2;

  v11._countAndFlagsBits = 61;
  v11._object = 0xE100000000000000;
  String.append(_:)(v11);
  v12 = type metadata accessor for Locale();
  (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  sub_100012814();
  StringProtocol.range<A>(of:options:range:locale:)();
  v14 = v13;
  sub_10000A184(v9, &qword_100134BF8, &qword_1000F4520);

  result = 0;
  if ((v14 & 1) == 0)
  {
    v16 = *(v2 + 56);
    v17 = *(v2 + 64);

    v18 = String.distance(from:to:)();

    v20 = *(v3 + 56);
    v19 = *(v3 + 64);

    v21 = sub_10006B728(v18, v20, v19);
    v23 = v22;
    v25 = v24;
    v27 = v26;

    v31 = v21;
    v32 = v23;
    v33 = v25;
    v34 = v27;
    v35 = 32;
    v36 = 0xE100000000000000;
    sub_10006B7D8();
    v28 = StringProtocol.components<A>(separatedBy:)();

    if (v28[2])
    {
      v30 = v28[4];
      v29 = v28[5];

      return v30;
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t sub_10006A994()
{
  v1 = *(v0 + 16);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 16) = 0;
  }

  return v1 & 1;
}

uint64_t sub_10006A9B0()
{
  v1 = *(v0 + 18);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 18) = 0;
  }

  return v1 & 1;
}

uint64_t sub_10006A9CC()
{
  v1 = *(v0 + 19);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 19) = 0;
  }

  return v1 & 1;
}

uint64_t sub_10006A9E8()
{
  v1 = *(v0 + 20);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 20) = 0;
  }

  return v1 & 1;
}

uint64_t sub_10006AA04()
{
  v1 = *(v0 + 21);
  if (v1 == 2)
  {
    LOBYTE(v1) = 0;
    *(v0 + 21) = 0;
  }

  return v1 & 1;
}

char *sub_10006AA20()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_10006B514();
    v4 = *(v0 + 24);
    v5 = *(v0 + 32);
    *(v0 + 24) = v3;
    *(v0 + 32) = v6;

    sub_10006BCEC(v4, v5);
  }

  sub_10006BD00(v1, v2);
  return v3;
}

char *sub_10006AAE0()
{
  if (*(v0 + 64))
  {
    v1 = *(v0 + 56);
    v2 = *(v0 + 64);
  }

  else
  {
    v1 = sub_10006B514();
    v3 = *(v0 + 64);
    *(v0 + 56) = v1;
    *(v0 + 64) = v4;
  }

  return v1;
}

uint64_t sub_10006AB90()
{
  v1 = *(v0 + 72);
  v2 = *(v0 + 80);
  v3 = v1;
  if (v2 == 1)
  {
    v3 = sub_10006A730(0x786966667573636BLL, 0xE800000000000000);
    v4 = *(v0 + 72);
    v5 = *(v0 + 80);
    *(v0 + 72) = v3;
    *(v0 + 80) = v6;

    sub_10006BCEC(v4, v5);
  }

  sub_10006BD00(v1, v2);
  return v3;
}

uint64_t sub_10006AC28()
{
  if (*(v0 + 92))
  {
    v1 = sub_100068DB8(0x676F6C6D6BLL, 0xE500000000000000);
    if ((v2 & 1) != 0 || v1 != 1)
    {
      if (qword_100133B38 != -1)
      {
        swift_once();
      }

      if (byte_100138870 != 1)
      {
        LOBYTE(v3) = 0;
        v5 = 256;
        v4 = 1;
        goto LABEL_12;
      }

      LOBYTE(v3) = static os_log_type_t.error.getter();
    }

    else
    {
      LOBYTE(v3) = static os_log_type_t.default.getter();
    }

    v4 = 0;
    v5 = v3;
LABEL_12:
    *(v0 + 90) = v5;
    *(v0 + 92) = 0;
    return v3 | (v4 << 8);
  }

  v3 = *(v0 + 90);
  v4 = (v3 >> 8) & 1;
  return v3 | (v4 << 8);
}

uint64_t sub_10006ACEC()
{
  v1 = *(v0 + 93);
  if (v1 == 2)
  {
    v2 = v0;
    v3 = sub_100068DB8(0x6173615F74786564, 0xEC00000062735F6ELL);
    if (v4)
    {
      LOBYTE(v1) = 0;
    }

    else
    {
      v5 = v3;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v6 = swift_allocObject();
      *(v6 + 16) = xmmword_1000F3160;
      *(v6 + 56) = &type metadata for Int;
      *(v6 + 64) = &protocol witness table for Int;
      *(v6 + 32) = v5;
      sub_10001491C();
      v7 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      os_log(_:dso:log:type:_:)();

      LOBYTE(v1) = v5 == 1;
    }

    *(v2 + 93) = v1;
  }

  return v1 & 1;
}

uint64_t sub_10006ADF4()
{
  sub_10006BCEC(v0[3], v0[4]);
  sub_10006BCEC(v0[5], v0[6]);
  v1 = v0[8];

  sub_10006BCEC(v0[9], v0[10]);
  sub_10000A184((v0 + 12), &qword_1001362F0, &unk_1000F8070);

  return swift_deallocClassInstance();
}

double sub_10006AE80()
{
  *(v0 + 16) = xmmword_1000F7EA0;
  *(v0 + 32) = xmmword_1000F7EB0;
  *(v0 + 48) = 1;
  *(v0 + 56) = 0;
  *(v0 + 64) = 0;
  *(v0 + 72) = 0;
  *(v0 + 80) = 1;
  *(v0 + 88) = 514;
  *(v0 + 92) = 513;
  result = 0.0;
  *(v0 + 96) = 0u;
  *(v0 + 112) = 0u;
  *(v0 + 128) = 0;
  return result;
}

uint64_t sub_10006AEC8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = _StringObject.sharedUTF8.getter();
  }

  result = sub_10006B880(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

unsigned __int8 *sub_10006AF94(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v61 = a1;
  v62 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_100076E30();
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v60;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_124;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_124;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_125;
          }

          goto LABEL_64;
        }

LABEL_124:
        v17 = 0;
        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = 0;
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        while (1)
        {
          v31 = *result;
          if (v31 < 0x30 || v31 >= v28)
          {
            if (v31 < 0x41 || v31 >= v29)
            {
              v17 = 0;
              if (v31 < 0x61 || v31 >= v30)
              {
                goto LABEL_125;
              }

              v32 = -87;
            }

            else
            {
              v32 = -55;
            }
          }

          else
          {
            v32 = -48;
          }

          v33 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v33 + (v31 + v32);
          if (__OFADD__(v33, (v31 + v32)))
          {
            goto LABEL_124;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_125;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_124;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_124;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_64:
        v17 = 0;
LABEL_125:

        return v17;
      }

      goto LABEL_124;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v36 = HIBYTE(v5) & 0xF;
  v61 = v6;
  v62 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v27 = 0;
        v53 = a3 + 48;
        v54 = a3 + 55;
        v55 = a3 + 87;
        if (a3 > 10)
        {
          v53 = 58;
        }

        else
        {
          v55 = 97;
          v54 = 65;
        }

        v56 = &v61;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v53)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              v17 = 0;
              if (v57 < 0x61 || v57 >= v55)
              {
                goto LABEL_125;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v59 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v59 + (v57 + v58);
          if (__OFADD__(v59, (v57 + v58)))
          {
            goto LABEL_124;
          }

          v56 = (v56 + 1);
          if (!--v36)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v27 = 0;
        v38 = a3 + 48;
        v39 = a3 + 55;
        v40 = a3 + 87;
        if (a3 > 10)
        {
          v38 = 58;
        }

        else
        {
          v40 = 97;
          v39 = 65;
        }

        v41 = &v61 + 1;
        while (1)
        {
          v42 = *v41;
          if (v42 < 0x30 || v42 >= v38)
          {
            if (v42 < 0x41 || v42 >= v39)
            {
              v17 = 0;
              if (v42 < 0x61 || v42 >= v40)
              {
                goto LABEL_125;
              }

              v43 = -87;
            }

            else
            {
              v43 = -55;
            }
          }

          else
          {
            v43 = -48;
          }

          v44 = v27 * a3;
          if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
          {
            goto LABEL_124;
          }

          v27 = v44 - (v42 + v43);
          if (__OFSUB__(v44, (v42 + v43)))
          {
            goto LABEL_124;
          }

          ++v41;
          if (!--v37)
          {
            goto LABEL_123;
          }
        }
      }

      goto LABEL_124;
    }

    goto LABEL_128;
  }

  if (v36)
  {
    v45 = v36 - 1;
    if (v45)
    {
      v27 = 0;
      v46 = a3 + 48;
      v47 = a3 + 55;
      v48 = a3 + 87;
      if (a3 > 10)
      {
        v46 = 58;
      }

      else
      {
        v48 = 97;
        v47 = 65;
      }

      v49 = &v61 + 1;
      do
      {
        v50 = *v49;
        if (v50 < 0x30 || v50 >= v46)
        {
          if (v50 < 0x41 || v50 >= v47)
          {
            v17 = 0;
            if (v50 < 0x61 || v50 >= v48)
            {
              goto LABEL_125;
            }

            v51 = -87;
          }

          else
          {
            v51 = -55;
          }
        }

        else
        {
          v51 = -48;
        }

        v52 = v27 * a3;
        if ((v27 * a3) >> 64 != (v27 * a3) >> 63)
        {
          goto LABEL_124;
        }

        v27 = v52 + (v50 + v51);
        if (__OFADD__(v52, (v50 + v51)))
        {
          goto LABEL_124;
        }

        ++v49;
        --v45;
      }

      while (v45);
LABEL_123:
      v17 = v27;
      goto LABEL_125;
    }

    goto LABEL_124;
  }

LABEL_130:
  __break(1u);
  return result;
}

char *sub_10006B514()
{
  v0 = type metadata accessor for POSIXError();
  v1 = *(v0 - 8);
  v2 = *(v1 + 64);
  __chkstk_darwin(v0);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = 0;
  v5 = String.utf8CString.getter();
  v6 = sysctlbyname((v5 + 32), 0, &v11, 0, 0);

  if (v6)
  {
    sub_1000AC134(v4);
    POSIXError._nsError.getter();
    (*(v1 + 8))(v4, v0);
    swift_willThrow();
  }

  else
  {
    v7 = swift_slowAlloc();
    v8 = String.utf8CString.getter();
    v9 = sysctlbyname((v8 + 32), v7, &v11, 0, 0);

    if (v9)
    {
      sub_1000AC134(v4);
      POSIXError._nsError.getter();
      (*(v1 + 8))(v4, v0);
      swift_willThrow();
    }

    else
    {
      v4 = String.init(cString:)();
    }
  }

  return v4;
}

unint64_t sub_10006B728(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

unint64_t sub_10006B7D8()
{
  result = qword_1001362E0;
  if (!qword_1001362E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001362E0);
  }

  return result;
}

unint64_t sub_10006B82C()
{
  result = qword_1001362E8;
  if (!qword_1001362E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001362E8);
  }

  return result;
}

uint64_t sub_10006B880(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_10004630C(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = String.UTF8View._foreignDistance(from:to:)();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_10004630C(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_10004630C(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = String.UTF8View._foreignDistance(from:to:)();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
                }

                v45 = -87;
              }

              else
              {
                v45 = -55;
              }
            }

            else
            {
              v45 = -48;
            }

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

uint64_t sub_10006BCEC(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t sub_10006BD00(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

unint64_t sub_10006BD14(uint64_t a1, uint64_t a2)
{
  v4 = sub_10003E208(_swiftEmptyArrayStorage);
  v10 = &type metadata for String;
  *&v9 = a1;
  *(&v9 + 1) = a2;
  sub_10000B48C(&v9, v8);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  sub_100038954(v8, 0xD000000000000012, 0x8000000100104E40, isUniquelyReferenced_nonNull_native);
  v10 = &type metadata for Bool;
  LOBYTE(v9) = 1;
  sub_10000B48C(&v9, v8);
  v6 = swift_isUniquelyReferenced_nonNull_native();
  sub_100038954(v8, 0xD000000000000014, 0x8000000100106580, v6);
  return v4;
}

unint64_t sub_10006BE08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = sub_10003E208(_swiftEmptyArrayStorage);
  v20 = v10;
  if (a2)
  {
    v11 = v10;
    v19 = &type metadata for String;
    *&v18 = a1;
    *(&v18 + 1) = a2;
    sub_10000B48C(&v18, v17);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_100038954(v17, 0x656C626165676150, 0xEE00656D614E434BLL, isUniquelyReferenced_nonNull_native);
    v20 = v11;
  }

  else
  {
    sub_1000366A0(0x656C626165676150, 0xEE00656D614E434BLL, &v18);
    sub_10000A184(&v18, &qword_1001343C8, &unk_1000F3CA0);
  }

  if (a4)
  {
    v19 = &type metadata for String;
    *&v18 = a3;
    *(&v18 + 1) = a4;
    sub_10000B48C(&v18, v17);
    v13 = v20;
    v14 = swift_isUniquelyReferenced_nonNull_native();
    sub_100038954(v17, 0x6D614E434B787541, 0xE900000000000065, v14);
  }

  else
  {
    sub_1000366A0(0x6D614E434B787541, 0xE900000000000065, &v18);
    sub_10000A184(&v18, &qword_1001343C8, &unk_1000F3CA0);
    v13 = v20;
  }

  v19 = sub_100003CDC(&qword_100135158, &qword_1000F5040);
  *&v18 = a5;
  sub_10000B48C(&v18, v17);
  v15 = swift_isUniquelyReferenced_nonNull_native();
  sub_100038954(v17, 0xD000000000000016, 0x80000001001065A0, v15);
  return v13;
}

uint64_t sub_10006C000()
{
  RootEntry = IORegistryGetRootEntry(kIOMainPortDefault);
  if (RootEntry)
  {
    v1 = RootEntry;
    v2 = String._bridgeToObjectiveC()();
    CFProperty = IORegistryEntryCreateCFProperty(v1, v2, kCFAllocatorDefault, 0);

    if (CFProperty)
    {
      v4 = CFGetTypeID(CFProperty);
      if (v4 == CFNumberGetTypeID())
      {
        v5 = String._bridgeToObjectiveC()();
        v6 = IORegistryEntryCreateCFProperty(v1, v5, kCFAllocatorDefault, 0);

        if (v6)
        {
          v7 = CFGetTypeID(v6);
          if (v7 == CFNumberGetTypeID())
          {
            swift_unknownObjectRetain();
            objc_opt_self();
            if (swift_dynamicCastObjCClass())
            {
              static Int32._conditionallyBridgeFromObjectiveC(_:result:)();
            }

            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            goto LABEL_15;
          }

          swift_unknownObjectRelease();
        }

        static os_log_type_t.error.getter();
        sub_10001491C();
        v8 = static OS_os_log.default.getter();
        os_log(_:dso:log:_:_:)();
        swift_unknownObjectRelease();
LABEL_14:

LABEL_15:
        IOObjectRelease(v1);
        return 0;
      }

      swift_unknownObjectRelease();
    }

    static os_log_type_t.error.getter();
    sub_10001491C();
    v8 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
    goto LABEL_14;
  }

  return 0;
}

unint64_t sub_10006C3A0(unsigned __int8 a1, char a2, uint64_t a3)
{
  if (a1 <= 1u)
  {
    if (a1)
    {
      v5 = 0xE600000000000000;
      v6 = 0x6D6574737953;
    }

    else
    {
      v5 = 0xE700000000000000;
      v6 = 0x7972616D697250;
    }
  }

  else if (a1 == 2)
  {
    v5 = 0xE900000000000079;
    v6 = 0x7261696C69787541;
  }

  else if (a1 == 3)
  {
    v5 = 0xE800000000000000;
    v6 = 0x7373656C65646F43;
  }

  else
  {
    v5 = 0xE300000000000000;
    v6 = 7958081;
  }

  sub_100003CDC(&qword_1001345D8, &unk_1000F3E00);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F7EC0;
  *(inited + 32) = 0x697463656C6C6F43;
  *(inited + 40) = 0xEF65707954206E6FLL;
  *(inited + 48) = v6;
  *(inited + 56) = v5;
  *(inited + 72) = &type metadata for String;
  strcpy((inited + 80), "Loaded State");
  *(inited + 93) = 0;
  *(inited + 94) = -5120;
  if (a2)
  {
    if (a2 == 1)
    {
      v8 = 0xE800000000000000;
      v9 = 0x646564616F6C6E55;
    }

    else
    {
      v8 = 0xE300000000000000;
      v9 = 7958081;
    }
  }

  else
  {
    v8 = 0xE600000000000000;
    v9 = 0x646564616F4CLL;
  }

  *(inited + 96) = v9;
  *(inited + 104) = v8;
  *(inited + 120) = &type metadata for String;
  *(inited + 128) = 0xD000000000000016;
  *(inited + 136) = 0x8000000100104B00;
  v10 = inited;
  *(inited + 168) = sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  *(v10 + 144) = a3;
  v11 = sub_10003E208(v10);
  swift_setDeallocating();
  sub_100003CDC(&unk_1001372D0, &unk_1000F4500);
  swift_arrayDestroy();
  return v11;
}

uint64_t sub_10006C5B8()
{
  if (qword_100133A38 != -1)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v0 = qword_10014E890;
    v1 = sub_1000413F8(&_swiftEmptyArrayStorage);
    v2 = *(v0 + 16);
    if (!v2)
    {
      return v1;
    }

    v3 = 0;
    v4 = v0 + 32;
    while (v3 < *(v0 + 16))
    {
      v23 = *(v4 + 16 * v3);
      v6 = (*(*(v4 + 16 * v3 + 8) + 8))();
      v8 = v7;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v24 = v1;
      v10 = sub_100061588(v6, v8);
      v12 = *(v1 + 16);
      v13 = (v11 & 1) == 0;
      v14 = __OFADD__(v12, v13);
      v15 = v12 + v13;
      if (v14)
      {
        goto LABEL_19;
      }

      v16 = v11;
      if (*(v1 + 24) < v15)
      {
        sub_100035680(v15, isUniquelyReferenced_nonNull_native);
        v10 = sub_100061588(v6, v8);
        if ((v16 & 1) != (v17 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }

LABEL_12:
        if (v16)
        {
          goto LABEL_4;
        }

        goto LABEL_13;
      }

      if (isUniquelyReferenced_nonNull_native)
      {
        goto LABEL_12;
      }

      v21 = v10;
      sub_10003B428();
      v10 = v21;
      if (v16)
      {
LABEL_4:
        v5 = v10;

        v1 = v24;
        *(v24[7] + 16 * v5) = v23;
        goto LABEL_5;
      }

LABEL_13:
      v1 = v24;
      v24[(v10 >> 6) + 8] |= 1 << v10;
      v18 = (v24[6] + 16 * v10);
      *v18 = v6;
      v18[1] = v8;
      *(v24[7] + 16 * v10) = v23;
      v19 = v24[2];
      v14 = __OFADD__(v19, 1);
      v20 = v19 + 1;
      if (v14)
      {
        goto LABEL_20;
      }

      v24[2] = v20;
LABEL_5:
      if (v2 == ++v3)
      {
        return v1;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    swift_once();
  }
}

uint64_t *sub_10006C7C4(uint64_t *result)
{
  v1 = *(result[3] - 8);
  if ((*(v1 + 80) & 0x20000) != 0)
  {
    v2 = *result;
    v3 = *(v1 + 64);
  }

  return result;
}

uint64_t sub_10006C928(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_10006C984(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_10006C9E4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_10006CA2C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_10006CAA0(uint64_t a1)
{
  v1 = *(a1 + 80);
  result = type metadata accessor for Optional();
  if (v3 <= 0x3F)
  {
    v4 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006CB58(_DWORD *a1, uint64_t a2)
{
  static os_log_type_t.info.getter();
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v4 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v5 = sub_100001860(a1, a2);
  if (!v5)
  {
    v6 = a1[5] - 64;
    static os_log_type_t.error.getter();
    v7 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();
  }

  sub_100009FEC(0, &unk_1001365C0, NSNumber_ptr);
  isa = NSNumber.init(BOOLeanLiteral:)(v5 != 0).super.super.isa;
  v9 = Int32.init(truncating:)();

  return v9;
}

uint64_t sub_10006CCB0(uint64_t a1)
{
  v1 = *(a1 + 32);
  v2 = *(a1 + 40);

  v1(v3);
}

uint64_t sub_10006CCF4()
{
  if (*(v0 + *(*v0 + 104)))
  {
    swift_getObjectType();
    swift_unknownObjectRetain();
    OS_dispatch_source.activate()();

    return swift_unknownObjectRelease();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_10006CD60()
{
  v1 = *(*v0 + 96);
  v2 = *(*v0 + 80);
  v3 = type metadata accessor for Optional();
  (*(*(v3 - 8) + 8))(v0 + v1, v3);
  v4 = *(v0 + *(*v0 + 104));
  swift_unknownObjectRelease();

  return v0;
}

uint64_t sub_10006CE1C()
{
  sub_10006CD60();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_10006CE8C(uint64_t a1)
{
  v2 = *(a1 + 80);
  v1 = *(a1 + 88);
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  if (v4 <= 0x3F)
  {
    v5 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10006CF6C@<X0>(uint64_t a1@<X8>)
{
  v3 = *((swift_isaMask & *v1) + 0x60);
  v4 = *((swift_isaMask & *v1) + 0x58);
  v5 = *((swift_isaMask & *v1) + 0x50);
  swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Optional();
  v7 = *(*(v6 - 8) + 16);

  return v7(a1, &v1[v3], v6);
}

id sub_10006D044()
{
  v1 = type metadata accessor for OSSignpostID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v2 + 8))(v5, v1);
  return [*(v0 + *((swift_isaMask & *v0) + 0x68)) resume];
}

uint64_t sub_10006D1A8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000F3160;
  v8 = [a1 processIdentifier];
  *(v7 + 56) = &type metadata for Int32;
  *(v7 + 64) = &protocol witness table for Int32;
  *(v7 + 32) = v8;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return (*(a4 + 64))(a3, a4);
}

uint64_t sub_10006D2B8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1000F3160;
  v8 = [a1 processIdentifier];
  *(v7 + 56) = &type metadata for Int32;
  *(v7 + 64) = &protocol witness table for Int32;
  *(v7 + 32) = v8;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
  v9 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  return (*(a4 + 56))(a3, a4);
}

uint64_t sub_10006D3C8(void *a1, uint64_t a2, void *a3, void *a4)
{
  v6 = a3;
  v7 = a4;
  v8 = a1;
  v9 = sub_10006D654(v7);

  return v9 & 1;
}

void sub_10006D428(void *a1)
{
  v1 = *((swift_isaMask & *a1) + 0x50);
  v2 = *((swift_isaMask & *a1) + 0x58);
  sub_10006E118();
}

id sub_10006D468()
{
  v1 = *((swift_isaMask & *v0) + 0x50);
  v2 = *((swift_isaMask & *v0) + 0x58);
  v4.receiver = v0;
  v4.super_class = type metadata accessor for NSXPCRequestSource();
  return objc_msgSendSuper2(&v4, "dealloc");
}

void sub_10006D4D8(char *a1)
{
  v2 = *((swift_isaMask & *a1) + 0x60);
  v3 = *((swift_isaMask & *a1) + 0x58);
  v4 = *((swift_isaMask & *a1) + 0x50);
  swift_getAssociatedTypeWitness();
  v5 = type metadata accessor for Optional();
  (*(*(v5 - 8) + 8))(&a1[v2], v5);

  v6 = *&a1[*((swift_isaMask & *a1) + 0x78)];
}

uint64_t sub_10006D654(void *a1)
{
  v3 = *v1;
  v4 = swift_isaMask;
  v78 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v77 = *(v78 - 1);
  v5 = *(v77 + 64);
  __chkstk_darwin(v78);
  v76 = (&v68 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v74 = type metadata accessor for OS_dispatch_workloop.Attributes();
  v7 = *(*(v74 - 8) + 64);
  __chkstk_darwin(v74);
  v75 = &v68 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *((v4 & v3) + 0x58);
  v10 = *((v4 & v3) + 0x50);
  v84 = v9;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v70 = type metadata accessor for Optional();
  v69 = *(v70 - 8);
  v12 = *(v69 + 64);
  v13 = __chkstk_darwin(v70);
  v73 = &v68 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __chkstk_darwin(v13);
  v82 = &v68 - v16;
  v83 = v10;
  v81 = *(v10 - 8);
  v17 = *(v81 + 64);
  v18 = __chkstk_darwin(v15);
  v79 = &v68 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = v19;
  __chkstk_darwin(v18);
  v85 = &v68 - v20;
  v21 = type metadata accessor for OSSignpostID();
  v22 = *(v21 - 8);
  v23 = *(v22 + 64);
  __chkstk_darwin(v21);
  v25 = &v68 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  static os_signpost_type_t.event.getter();
  if (qword_100133AB8 != -1)
  {
    swift_once();
  }

  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v26 = swift_allocObject();
  *(v26 + 16) = xmmword_1000F3160;
  v27 = [a1 processIdentifier];
  *(v26 + 56) = &type metadata for Int32;
  *(v26 + 64) = &protocol witness table for Int32;
  *(v26 + 32) = v27;
  static OSSignpostID.exclusive.getter();
  os_signpost(_:dso:log:name:signpostID:_:_:)();

  (*(v22 + 8))(v25, v21);
  v28 = *(v1 + *((swift_isaMask & *v1) + 0x78));
  [a1 setExportedInterface:v28];
  v29 = v82;
  sub_10006CF6C(v82);
  v30 = *(*(AssociatedTypeWitness - 8) + 48);
  result = v30(v29, 1, AssociatedTypeWitness);
  v72 = v1;
  if (result == 1)
  {
    __break(1u);
    return result;
  }

  v32 = v84;
  v33 = *(v84 + 40);
  v34 = a1;
  v33(v82, v34, v83, v32);
  v35 = v34;
  [v34 setExportedObject:_bridgeAnythingToObjectiveC<A>(_:)()];
  swift_unknownObjectRelease();
  v36 = v73;
  sub_10006CF6C(v73);
  if (v30(v36, 1, AssociatedTypeWitness) == 1)
  {
    (*(v69 + 8))(v36, v70);
    v37 = v77;
    v38 = v76;
    p_ivars = &ApprovalSettingsStateManager.ivars;
LABEL_9:
    v94 = 0;
    v92 = 0u;
    v93 = 0u;
    goto LABEL_10;
  }

  sub_100003CDC(&unk_1001365B0, &qword_1000F8648);
  v40 = swift_dynamicCast();
  v37 = v77;
  v38 = v76;
  p_ivars = (&ApprovalSettingsStateManager + 48);
  if (!v40)
  {
    goto LABEL_9;
  }

  if (!*(&v93 + 1))
  {
LABEL_10:
    v43 = 0x8000000100106960;
    sub_10006E148(&v92);
    v41 = 0xD00000000000001ALL;
    goto LABEL_11;
  }

  sub_100009F34(&v92, &aBlock);
  sub_100003C4C(&aBlock, v89);
  swift_getDynamicType();
  v41 = (*(v90 + 4))();
  v43 = v42;
  sub_100003C90(&aBlock);
LABEL_11:
  sub_100009FEC(0, &qword_100136590, OS_dispatch_workloop_ptr);
  aBlock = 0;
  v87 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  aBlock = v41;
  v87 = v43;
  v44._object = 0x8000000100106980;
  v44._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v44);
  LODWORD(v92) = [v35 p_ivars[132]];
  v45._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v45);

  aBlock = _swiftEmptyArrayStorage;
  sub_10006E1B0();
  sub_100003CDC(&qword_1001365A0, &qword_1000F8640);
  sub_10006E208();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v37 + 104))(v38, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v78);
  v46 = OS_dispatch_workloop.init(label:attributes:autoreleaseFrequency:osWorkgroup:)();
  v71 = v35;
  v82 = v46;
  [v35 _setQueue:?];
  v47 = v81;
  v78 = *(v81 + 16);
  v48 = v79;
  v49 = v83;
  v78(v79, v85, v83);
  v50 = (*(v47 + 80) + 40) & ~*(v47 + 80);
  v51 = swift_allocObject();
  v52 = v84;
  v51[2] = v49;
  v51[3] = v52;
  v51[4] = v35;
  v77 = *(v47 + 32);
  (v77)(v51 + v50, v48, v49);
  v90 = sub_10006E270;
  v91 = v51;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v76 = &v88;
  v88 = sub_10006CCB0;
  v89 = &unk_100129640;
  v53 = _Block_copy(&aBlock);
  v54 = v71;

  [v54 setInterruptionHandler:v53];
  _Block_release(v53);
  v78(v48, v85, v49);
  v55 = swift_allocObject();
  v56 = v84;
  v55[2] = v49;
  v55[3] = v56;
  v55[4] = v54;
  (v77)(v55 + v50, v48, v49);
  v90 = sub_10006E35C;
  v91 = v55;
  aBlock = _NSConcreteStackBlock;
  v87 = 1107296256;
  v88 = sub_10006CCB0;
  v89 = &unk_100129690;
  v57 = _Block_copy(&aBlock);
  v58 = v54;

  [v58 setInvalidationHandler:v57];
  _Block_release(v57);
  v59 = (*(v56 + 48))(v49, v56);
  v60 = *(v59 + 16);
  if (v60)
  {
    v61 = (v59 + 56);
    do
    {
      v62 = *(v61 - 3);
      v63 = *(v61 - 2);
      v64 = *(v61 - 1);
      v65 = *v61;
      v61 += 32;
      [v28 setInterface:v62 forSelector:v63 argumentIndex:v64 ofReply:v65];
      --v60;
    }

    while (v60);
  }

  v66 = v85;
  v67 = v83;
  (*(v84 + 72))(v28, v83);
  [v58 resume];

  (*(v81 + 8))(v66, v67);
  return 1;
}

uint64_t sub_10006E148(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100133CC8, &qword_1000F32F8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006E1B0()
{
  result = qword_100136598;
  if (!qword_100136598)
  {
    type metadata accessor for OS_dispatch_workloop.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136598);
  }

  return result;
}

unint64_t sub_10006E208()
{
  result = qword_1001365A8;
  if (!qword_1001365A8)
  {
    sub_100009FA4(&qword_1001365A0, &qword_1000F8640);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001365A8);
  }

  return result;
}

uint64_t sub_10006E288(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006E2A0()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 40) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_10006E3C8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_10006FA38(a1);

  *a2 = v3;
  return result;
}

uint64_t sub_10006E408(char a1)
{
  if ((a1 & 2) != 0)
  {
    v1 = sub_100030EA0(0, 1, 1, _swiftEmptyArrayStorage);
    v3 = *(v1 + 2);
    v2 = *(v1 + 3);
    if (v3 >= v2 >> 1)
    {
      v1 = sub_100030EA0((v2 > 1), v3 + 1, 1, v1);
    }

    *(v1 + 2) = v3 + 1;
    v4 = &v1[16 * v3];
    *(v4 + 4) = 0x64656C7469746E65;
    *(v4 + 5) = 0xE800000000000000;
  }

  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_10001455C(&qword_100134288, &qword_100136C80, &qword_1000F39B0);
  v5 = BidirectionalCollection<>.joined(separator:)();

  return v5;
}

uint64_t sub_10006E534(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v31 = a3;
  v27 = a2;
  v29 = a1;
  v30 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v30 - 8);
  v5 = *(v28 + 64);
  __chkstk_darwin(v30);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8);
  v10 = type metadata accessor for DispatchQoS();
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v26 = sub_100009FEC(0, &qword_100133C58, OS_dispatch_queue_ptr);

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_10006FB10();
  sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
  v12 = v27;
  sub_10001455C(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
  v13 = v29;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v30);
  v14 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v4[3] = v14;
  String.utf8CString.getter();
  v15 = v14;
  v16 = xpc_event_publisher_create();

  if (v16)
  {

    v4[4] = v13;
    v4[5] = v12;
    v4[2] = v16;
    v4[6] = _swiftEmptyArrayStorage;
    v4[7] = sub_10003E12C(_swiftEmptyArrayStorage);
    v17 = v4[2];
    v36 = sub_10006FB68;
    v37 = v4;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10006F400;
    v35 = &unk_100129700;
    v18 = _Block_copy(&aBlock);
    v19 = v16;
    v20 = v17;

    xpc_event_publisher_set_handler();
    _Block_release(v18);

    v21 = v4[2];
    v36 = sub_10006FB88;
    v37 = v4;
    aBlock = _NSConcreteStackBlock;
    v33 = 1107296256;
    v34 = sub_10006F59C;
    v35 = &unk_100129728;
    v22 = _Block_copy(&aBlock);

    v23 = v21;

    xpc_event_publisher_set_error_handler();
    _Block_release(v22);

    return v4;
  }

  else
  {
    aBlock = 0;
    v33 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    aBlock = 0xD000000000000025;
    v33 = 0x8000000100106B20;
    v25._countAndFlagsBits = v13;
    v25._object = v12;
    String.append(_:)(v25);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t sub_10006E9BC(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (result != 1)
  {
    if (result)
    {
      return result;
    }

    v6 = a4[6];
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    a4[6] = v6;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_4;
    }

    goto LABEL_28;
  }

  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1000F3C80;
  v21 = a4[4];
  v20 = a4[5];
  *(v19 + 56) = &type metadata for String;
  v22 = sub_100003D24();
  *(v19 + 32) = v21;
  *(v19 + 40) = v20;
  *(v19 + 96) = &type metadata for UInt64;
  *(v19 + 104) = &protocol witness table for UInt64;
  *(v19 + 64) = v22;
  *(v19 + 72) = a2;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

  v23 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();

  v6 = (a4 + 6);
  v24 = a4[6];
  v25 = *(v24 + 2);
  if (v25)
  {
    v26 = 0;
    v27 = -40;
    while (*&v24[8 * v26 + 32] != a2)
    {
      ++v26;
      v27 -= 8;
      if (v25 == v26)
      {
        goto LABEL_11;
      }
    }

    v29 = v26 + 1;
    if (__OFADD__(v26, 1))
    {
      goto LABEL_30;
    }

    v30 = a4[6];
    v31 = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v24;
    if ((v31 & 1) == 0)
    {
      goto LABEL_31;
    }

    while (1)
    {
      v32 = *(v24 + 2);
      if (v29 != v32)
      {
        break;
      }

LABEL_15:
      *v6 = v24;
      v28 = *(v24 + 2);
      v25 = v26;
      if (v28 >= v26)
      {
        goto LABEL_16;
      }

      __break(1u);
LABEL_30:
      __break(1u);
LABEL_31:
      v24 = sub_100064748(v24);
    }

    v33 = v24 + 32;
    v34 = &v24[-v27];
    while (v29 < v32)
    {
      if (*v34 != a2)
      {
        if (v29 != v26)
        {
          if (v26 >= v32)
          {
            __break(1u);
            break;
          }

          v35 = *&v33[8 * v26];
          *&v33[8 * v26] = *v34;
          *v34 = v35;
          v32 = *(v24 + 2);
        }

        ++v26;
      }

      ++v29;
      v34 += 8;
      if (v29 == v32)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    v6 = sub_100031C40(0, *(v6 + 2) + 1, 1, v6);
    a4[6] = v6;
LABEL_4:
    v9 = *(v6 + 2);
    v8 = *(v6 + 3);
    if (v9 >= v8 >> 1)
    {
      v6 = sub_100031C40((v8 > 1), v9 + 1, 1, v6);
    }

    *(v6 + 2) = v9 + 1;
    *&v6[8 * v9 + 32] = a2;
    a4[6] = v6;
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_1000F3C80;
    v12 = a4[4];
    v11 = a4[5];
    *(v10 + 56) = &type metadata for String;
    v13 = sub_100003D24();
    *(v10 + 32) = v12;
    *(v10 + 40) = v11;
    *(v10 + 96) = &type metadata for UInt64;
    *(v10 + 104) = &protocol witness table for UInt64;
    *(v10 + 64) = v13;
    *(v10 + 72) = a2;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

    v14 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    xpc_dictionary_create(0, 0, 0);
    v15 = a4[2];
    v16 = a4[3];
    v17 = swift_allocObject();
    *(v17 + 16) = a4;
    *(v17 + 24) = a2;
    v36[4] = sub_10006FBC8;
    v36[5] = v17;
    v36[0] = _NSConcreteStackBlock;
    v36[1] = 1107296256;
    v36[2] = sub_100068A7C;
    v36[3] = &unk_100129778;
    v18 = _Block_copy(v36);
    swift_unknownObjectRetain();

    xpc_event_publisher_fire_with_reply();
    _Block_release(v18);
    return swift_unknownObjectRelease_n();
  }

LABEL_11:
  v28 = *(v24 + 2);
LABEL_16:
  sub_10005B470(v25, v28);
  swift_beginAccess();
  sub_100036BDC(a2);
  return swift_endAccess();
}

void sub_10006EE0C(void *a1, void *a2, uint64_t a3)
{
  v6 = 0;
  v7 = (a2 + 6);
  v8 = a2[6];
  v9 = *(v8 + 2);
  do
  {
    if (v9 == v6)
    {
      static os_log_type_t.error.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v14 = swift_allocObject();
      *(v14 + 16) = xmmword_1000F3C80;
      v16 = a2[4];
      v15 = a2[5];
      *(v14 + 56) = &type metadata for String;
      v17 = sub_100003D24();
      *(v14 + 32) = v16;
      *(v14 + 40) = v15;
      *(v14 + 96) = &type metadata for UInt64;
      *(v14 + 104) = &protocol witness table for UInt64;
      *(v14 + 64) = v17;
      *(v14 + 72) = a3;
      sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

      v47 = static OS_os_log.default.getter();
      goto LABEL_25;
    }

    v10 = &v8[8 * v6++];
  }

  while (*(v10 + 4) != a3);
  if (v9)
  {
    v11 = 0;
    v12 = -40;
    do
    {
      if (*&v8[8 * v11 + 32] == a3)
      {
        v18 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          goto LABEL_39;
        }

        v19 = a2[6];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v7 = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          goto LABEL_40;
        }

        while (1)
        {
          v21 = *(v8 + 2);
          if (v18 == v21)
          {
LABEL_13:
            *v7 = v8;
            v13 = *(v8 + 2);
            v9 = v11;
            if (v13 >= v11)
            {
              goto LABEL_14;
            }
          }

          else
          {
            v44 = v8 + 32;
            v45 = &v8[-v12];
            while (v18 < v21)
            {
              if (*v45 != a3)
              {
                if (v18 != v11)
                {
                  if (v11 >= v21)
                  {
                    __break(1u);
                    break;
                  }

                  v46 = *&v44[8 * v11];
                  *&v44[8 * v11] = *v45;
                  *v45 = v46;
                  v21 = *(v8 + 2);
                }

                ++v11;
              }

              ++v18;
              v45 += 8;
              if (v18 == v21)
              {
                goto LABEL_13;
              }
            }

            __break(1u);
          }

          __break(1u);
LABEL_39:
          __break(1u);
LABEL_40:
          v8 = sub_100064748(v8);
        }
      }

      ++v11;
      v12 -= 8;
    }

    while (v9 != v11);
  }

  v13 = *(v8 + 2);
LABEL_14:
  sub_10005B470(v9, v13);
  ObjectType = swift_getObjectType();
  if (sub_1000C7700(ObjectType))
  {
    xpc_dictionary_get_audit_token();
    String.utf8CString.getter();
    v23 = xpc_copy_entitlement_for_token();

    if (v23)
    {
      value = xpc_BOOL_get_value(v23);
      swift_unknownObjectRelease();
      if (value)
      {
        v25 = 2;
      }

      else
      {
        v25 = 0;
      }
    }

    else
    {
      v25 = 0;
    }

    swift_beginAccess();
    v34 = a2[7];
    v35 = swift_isUniquelyReferenced_nonNull_native();
    v48 = a2[7];
    a2[7] = 0x8000000000000000;
    sub_10003961C(v25, a3, v35);
    a2[7] = v48;
    swift_endAccess();
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1000F7EC0;
    v38 = a2[4];
    v37 = a2[5];
    *(v36 + 56) = &type metadata for String;
    v39 = sub_100003D24();
    *(v36 + 32) = v38;
    *(v36 + 40) = v37;
    *(v36 + 96) = &type metadata for UInt64;
    *(v36 + 104) = &protocol witness table for UInt64;
    *(v36 + 64) = v39;
    *(v36 + 72) = a3;

    v40 = sub_10006E408(v25);
    *(v36 + 136) = &type metadata for String;
    *(v36 + 144) = v39;
    *(v36 + 112) = v40;
    *(v36 + 120) = v41;
    sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);
    v42 = static OS_os_log.default.getter();
    static os_log_type_t.default.getter();
    os_log(_:dso:log:type:_:)();

    return;
  }

  v26 = sub_1000C76C4();
  if (v27)
  {
    v28 = v26;
  }

  else
  {
    type = xpc_get_type(a1);
    xpc_type_get_name(type);
    v28 = String.init(cString:)();
  }

  v29 = v27;
  static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1000F7EC0;
  v32 = a2[4];
  v31 = a2[5];
  *(v30 + 56) = &type metadata for String;
  v33 = sub_100003D24();
  *(v30 + 32) = v32;
  *(v30 + 40) = v31;
  *(v30 + 96) = &type metadata for UInt64;
  *(v30 + 104) = &protocol witness table for UInt64;
  *(v30 + 64) = v33;
  *(v30 + 72) = a3;
  *(v30 + 136) = &type metadata for String;
  *(v30 + 144) = v33;
  *(v30 + 112) = v28;
  *(v30 + 120) = v29;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

  v47 = static OS_os_log.default.getter();
LABEL_25:
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10006F400(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = *(a1 + 32);
  v7 = *(a1 + 40);

  swift_unknownObjectRetain();
  v8(a2, a3, a4);

  return swift_unknownObjectRelease();
}

void sub_10006F480(int a1, uint64_t a2)
{
  static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1000F3C80;
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  *(v4 + 56) = &type metadata for String;
  *(v4 + 64) = sub_100003D24();
  *(v4 + 32) = v6;
  *(v4 + 40) = v5;
  *(v4 + 96) = &type metadata for Int32;
  *(v4 + 104) = &protocol witness table for Int32;
  *(v4 + 72) = a1;
  sub_100009FEC(0, &qword_100133C50, OS_os_log_ptr);

  v7 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();
}

uint64_t sub_10006F59C(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v3 = *(a1 + 40);

  v4(a2);
}

uint64_t sub_10006F5F0()
{
  sub_100003CDC(&qword_100136700, &qword_1000F88B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1000F3160;
  v2 = v0[5];
  *(inited + 32) = v0[4];
  *(inited + 40) = v2;
  *(inited + 48) = 1;

  sub_100041714(inited);
  swift_setDeallocating();
  sub_10006FAA8(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v4 = _CFXPCCreateXPCObjectFromCFObject();

  if (v4)
  {
    v5 = v0[2];
    xpc_event_publisher_fire();
    return swift_unknownObjectRelease();
  }

  else
  {
    sub_10001449C();
    swift_allocError();
    *v7 = 0xD000000000000025;
    *(v7 + 8) = 0x8000000100106AC0;
    *(v7 + 16) = v8;
    *(v7 + 32) = v9;
    *(v7 + 48) = v10;
    *(v7 + 64) = v11;
    *(v7 + 72) = 50;
    return swift_willThrow();
  }
}

uint64_t sub_10006F754()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 48);

  v3 = *(v0 + 56);

  return swift_deallocClassInstance();
}

unint64_t sub_10006F7E4()
{
  result = qword_1001366D8;
  if (!qword_1001366D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001366D8);
  }

  return result;
}

unint64_t sub_10006F83C()
{
  result = qword_1001366E0;
  if (!qword_1001366E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001366E0);
  }

  return result;
}

unint64_t sub_10006F894()
{
  result = qword_1001366E8;
  if (!qword_1001366E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001366E8);
  }

  return result;
}

unint64_t sub_10006F8EC()
{
  result = qword_1001366F0;
  if (!qword_1001366F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001366F0);
  }

  return result;
}

uint64_t sub_10006F940()
{
  v1 = *(*v0 + 24);
  sub_100003CDC(&qword_1001366F8, &qword_1000F88A8);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

uint64_t sub_10006F9E4@<X0>(void *a1@<X8>)
{
  swift_beginAccess();
  *a1 = *(v1 + 56);
}

uint64_t sub_10006FA38(uint64_t a1)
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

uint64_t sub_10006FA70(uint64_t result)
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

uint64_t sub_10006FAA8(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100136708, &qword_1000F88B8);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_10006FB10()
{
  result = qword_100133C80;
  if (!qword_100133C80)
  {
    type metadata accessor for OS_dispatch_queue.Attributes();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100133C80);
  }

  return result;
}

uint64_t sub_10006FB70(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10006FB90()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_10006FC38()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  return swift_deallocClassInstance();
}

uint64_t sub_10006FCC0()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  sub_10007002C(v0 + 40);

  return swift_deallocClassInstance();
}

void sub_10006FD50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v34 = type metadata accessor for URL();
  v7 = *(v34 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v34);
  v33 = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v10 = swift_allocObject();
  v11 = v10;
  *(v10 + 16) = xmmword_1000F3160;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v28[0] = v10;
    v28[1] = a2;
    v28[2] = a3;
    v28[3] = v3;
    v37 = _swiftEmptyArrayStorage;
    sub_1000635A4(0, v12, 0);
    v13 = v37;
    v14 = *(v7 + 16);
    v15 = a1 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
    v30 = *(v7 + 72);
    v31 = v14;
    v29 = (v7 + 8);
    v32 = v7 + 16;
    do
    {
      v17 = v33;
      v16 = v34;
      v31(v33, v15, v34);
      v35 = 2314;
      v36 = 0xE200000000000000;
      v18._countAndFlagsBits = URL.path.getter();
      String.append(_:)(v18);

      v19 = v35;
      v20 = v36;
      (*v29)(v17, v16);
      v37 = v13;
      v22 = v13[2];
      v21 = v13[3];
      if (v22 >= v21 >> 1)
      {
        sub_1000635A4((v21 > 1), v22 + 1, 1);
        v13 = v37;
      }

      v13[2] = v22 + 1;
      v23 = &v13[2 * v22];
      v23[4] = v19;
      v23[5] = v20;
      v15 += v30;
      --v12;
    }

    while (v12);
    v11 = v28[0];
  }

  v35 = v13;
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  sub_100018594();
  v24 = BidirectionalCollection<>.joined(separator:)();
  v26 = v25;

  v11[7] = &type metadata for String;
  v11[8] = sub_100003D24();
  v11[4] = v24;
  v11[5] = v26;
  sub_10001491C();
  v27 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
  os_log(_:dso:log:type:_:)();
}

uint64_t sub_10007002C(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_100136910, &unk_1000F89D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000700B8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001001072C0 == a2)
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

uint64_t sub_10007014C(uint64_t a1)
{
  v2 = sub_100073098();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100070188(uint64_t a1)
{
  v2 = sub_100073098();

  return CodingKey.debugDescription.getter(a1, v2);
}

void *sub_1000701C4@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  result = sub_1000707E0(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

unint64_t sub_1000701F0()
{
  if (*v0)
  {
    result = 0xD00000000000001CLL;
  }

  else
  {
    result = 0xD000000000000013;
  }

  *v0;
  return result;
}

uint64_t sub_10007022C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x80000001001072E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD00000000000001CLL && 0x8000000100107300 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t sub_100070310(uint64_t a1)
{
  v2 = sub_1000734F8();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_10007034C(uint64_t a1)
{
  v2 = sub_1000734F8();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_100070388@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_100070964(a1);
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

double sub_1000703B4@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100070B64(a1, v13);
  if (!v2)
  {
    v5 = v25;
    a2[12] = v24;
    a2[13] = v5;
    v6 = v27;
    a2[14] = v26;
    a2[15] = v6;
    v7 = v21;
    a2[8] = v20;
    a2[9] = v7;
    v8 = v23;
    a2[10] = v22;
    a2[11] = v8;
    v9 = v17;
    a2[4] = v16;
    a2[5] = v9;
    v10 = v19;
    a2[6] = v18;
    a2[7] = v10;
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    result = *&v14;
    v12 = v15;
    a2[2] = v14;
    a2[3] = v12;
  }

  return result;
}

unint64_t sub_100070428(char a1)
{
  result = 0x56726567616E614DLL;
  switch(a1)
  {
    case 1:
      result = 0x61506C656E72654BLL;
      break;
    case 2:
      result = 0x6365746968637241;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
    case 9:
      result = 0xD000000000000016;
      break;
    case 5:
      result = 0xD000000000000019;
      break;
    case 6:
      result = 0xD00000000000001ALL;
      break;
    case 7:
      result = 0xD000000000000022;
      break;
    case 8:
      result = 0xD000000000000014;
      break;
    case 10:
    case 19:
      result = 0xD000000000000012;
      break;
    case 11:
      result = 0xD000000000000017;
      break;
    case 12:
    case 15:
      result = 0xD000000000000023;
      break;
    case 13:
    case 14:
      result = 0xD00000000000001DLL;
      break;
    case 16:
      result = 0xD000000000000015;
      break;
    case 17:
      result = 0xD000000000000014;
      break;
    case 18:
      result = 0x6F69747065637845;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000706C0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_100071938(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000706F4(uint64_t a1)
{
  v2 = sub_100072F20();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_100070730(uint64_t a1)
{
  v2 = sub_100072F20();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_10007076C@<D0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  sub_100071F7C(a1, v13);
  if (!v2)
  {
    v5 = v25;
    a2[12] = v24;
    a2[13] = v5;
    v6 = v27;
    a2[14] = v26;
    a2[15] = v6;
    v7 = v21;
    a2[8] = v20;
    a2[9] = v7;
    v8 = v23;
    a2[10] = v22;
    a2[11] = v8;
    v9 = v17;
    a2[4] = v16;
    a2[5] = v9;
    v10 = v19;
    a2[6] = v18;
    a2[7] = v10;
    v11 = v13[1];
    *a2 = v13[0];
    a2[1] = v11;
    result = *&v14;
    v12 = v15;
    a2[2] = v14;
    a2[3] = v12;
  }

  return result;
}

void *sub_1000707E0(uint64_t *a1)
{
  v3 = sub_100003CDC(&qword_100136950, &unk_1000F8B90);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v11 - v6;
  v8 = a1[4];
  v9 = sub_100003C4C(a1, a1[3]);
  sub_100073098();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    sub_100003C90(a1);
  }

  else
  {
    sub_100003CDC(&qword_100136960, &qword_1000FAC40);
    sub_1000730EC();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v4 + 8))(v7, v3);
    v9 = v11[1];
    sub_100003C90(a1);
  }

  return v9;
}

uint64_t sub_100070964(uint64_t *a1)
{
  v2 = sub_100003CDC(&qword_1001369A0, &qword_1000F8E30);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v10 - v5;
  v7 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_1000734F8();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  v11 = 0;
  sub_100072F74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v12;
  v11 = 1;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v6, v2);
  sub_100003C90(a1);
  return v9;
}

uint64_t sub_100070B64@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = [objc_opt_self() mainBundle];
  v6 = [v5 executablePath];

  if (!v6)
  {
    v75 = 0x8000000100106FA0;
    sub_10001449C();
    swift_allocError();
    v77 = 0xD000000000000026;
LABEL_47:
    *v76 = v77;
    *(v76 + 8) = v75;
    v78 = v138;
    v80 = v136;
    v79 = v137;
    *(v76 + 16) = v135;
    *(v76 + 32) = v80;
    *(v76 + 48) = v79;
    *(v76 + 64) = v78;
    *(v76 + 72) = 33;
    return swift_willThrow();
  }

  v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = *sub_100003C4C(a1, a1[3]);
  sub_1000DF9D4(&v119);
  v11 = *(&v120 + 1);
  v12 = v121;
  sub_100003C4C(&v119, *(&v120 + 1));
  (*(v12 + 112))(&v151, v7, v9, 1, v11, v12);

  if (!v152)
  {
    sub_100071738(&v151);
    sub_100003C90(&v119);
    v75 = 0x8000000100106FD0;
    sub_10001449C();
    swift_allocError();
    v77 = 0xD00000000000002ALL;
    goto LABEL_47;
  }

  v115 = a2;
  sub_100041D5C(&v151, v153);
  sub_100003C90(&v119);
  v13 = *sub_100003C4C(a1, a1[3]);
  sub_1000DF65C(&v135);
  v14 = sub_10006C000();
  v16 = v15;
  v18 = v17;
  sub_100003C90(&v135);
  v19 = *sub_100003C4C(a1, a1[3]);
  sub_1000DF65C(&v135);
  v20 = sub_10006C000();
  v22 = v21;
  v24 = v23;
  sub_100003C90(&v135);
  sub_100003CDC(&qword_100136918, &qword_1000F89E8);
  v25 = swift_allocObject();
  v26 = 0;
  v25[4] = v14;
  v27 = v25 + 4;
  v25[5] = v16;
  v28 = v25 + 5;
  v25[6] = v18;
  v25[7] = v20;
  v25[8] = v22;
  v25[9] = v24;
  v29 = _swiftEmptyArrayStorage;
LABEL_4:
  v30 = &v28[3 * v26];
  v116 = v29;
  v31 = v2;
  while (++v26 != 3)
  {
    v32 = v30 + 3;
    v33 = *v30;
    v30 += 3;
    if (v33 != 1)
    {
      v117 = v27;
      v34 = *(v32 - 4);
      v36 = *(v32 - 4);
      v35 = *(v32 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = sub_100031D50(0, *(v116 + 2) + 1, 1, v116);
      }

      v38 = *(v116 + 2);
      v37 = *(v116 + 3);
      if (v38 >= v37 >> 1)
      {
        v116 = sub_100031D50((v37 > 1), v38 + 1, 1, v116);
      }

      *(v116 + 2) = v38 + 1;
      v39 = &v116[24 * v38];
      *(v39 + 4) = v34;
      *(v39 + 5) = v33;
      v29 = v116;
      *(v39 + 12) = v36;
      *(v39 + 13) = v35;
      v27 = v117;
      goto LABEL_4;
    }
  }

  swift_setDeallocating();
  sub_100003CDC(&qword_100136920, &unk_1000F89F0);
  swift_arrayDestroy();
  swift_deallocClassInstance();
  v40 = *(v29 + 2);
  if (!v40)
  {

    sub_10001449C();
    swift_allocError();
    *v100 = 0xD000000000000029;
    *(v100 + 8) = 0x8000000100107080;
    goto LABEL_57;
  }

  v41 = 0;
  v42 = (v29 + 48);
  do
  {
    if (v41 >= *(v29 + 2))
    {
      __break(1u);
LABEL_60:
      __break(1u);
LABEL_61:
      __break(1u);
LABEL_62:
      __break(1u);
LABEL_63:
      __break(1u);
    }

    v44 = *(v42 - 1);
    v43 = *v42;
    v45 = *(v42 - 2);
    v46 = sub_100003C4C(v153, v153[3]);
    v47 = *v46;
    v48 = v46[1];

    v49 = sub_1000D39A0(v45, v44, v43, v47, v48);
    if (v31)
    {

      sub_100054994("__TEXT");
      v31 = 0;
      goto LABEL_15;
    }

    v52 = v49;
    v53 = v50;
    v118 = v51;

    *&v119 = &_swiftEmptyDictionarySingleton;
    v54 = v53 >> 62;
    if ((v53 >> 62) > 1)
    {
      if (v54 != 2)
      {
        *(&v135 + 6) = 0;
        *&v135 = 0;
        sub_1000D08A4(&v135, &v135, &off_1001269F8, &v119, 0, 1, v118);
        goto LABEL_41;
      }

      v56 = *(v52 + 16);
      v55 = *(v52 + 24);
      v57 = __DataStorage._bytes.getter();
      if (v57)
      {
        v58 = __DataStorage._offset.getter();
        if (__OFSUB__(v56, v58))
        {
          goto LABEL_62;
        }

        v57 = (v57 + v56 - v58);
      }

      v59 = __OFSUB__(v55, v56);
      v60 = v55 - v56;
      if (v59)
      {
        goto LABEL_61;
      }

      v61 = __DataStorage._length.getter();
      if (v61 >= v60)
      {
        v62 = v60;
      }

      else
      {
        v62 = v61;
      }
    }

    else
    {
      if (!v54)
      {
        *&v135 = v52;
        WORD4(v135) = v53;
        BYTE10(v135) = BYTE2(v53);
        BYTE11(v135) = BYTE3(v53);
        BYTE12(v135) = BYTE4(v53);
        BYTE13(v135) = BYTE5(v53);
        sub_1000D08A4(&v135, &v135 + BYTE6(v53), &off_1001269F8, &v119, 0, 1, v118);
        goto LABEL_41;
      }

      if (v52 >> 32 < v52)
      {
        goto LABEL_60;
      }

      v57 = __DataStorage._bytes.getter();
      if (v57)
      {
        v63 = __DataStorage._offset.getter();
        if (__OFSUB__(v52, v63))
        {
          goto LABEL_63;
        }

        v57 = (v57 + v52 - v63);
      }

      v64 = __DataStorage._length.getter();
      if (v64 >= (v52 >> 32) - v52)
      {
        v62 = (v52 >> 32) - v52;
      }

      else
      {
        v62 = v64;
      }
    }

    v65 = v57 + v62;
    if (v57)
    {
      v66 = v65;
    }

    else
    {
      v66 = 0;
    }

    sub_1000D08A4(v57, v66, &off_1001269F8, &v119, 0, 1, v118);
    v29 = v116;
LABEL_41:
    sub_100054994("__TEXT");
    v67 = v119;
    sub_1000146C4(v52, v53);
    v68 = sub_1000D6860(v67);
    sub_1000128D8(v52, v53);
    sub_1000128D8(v52, v53);

    v69 = -1 << *(v68 + 32);
    v70 = _HashTable.startBucket.getter();
    if (v70 == 1 << *(v68 + 32))
    {

      v31 = 0;
    }

    else
    {
      *&v135 = sub_10008E188(&v137, v70, *(v68 + 36), 0, v68);
      *(&v135 + 1) = v71;
      *&v136 = v72;
      *(&v136 + 1) = v73;
      v74 = *(&v137 + 1);

      sub_100041D48();

      sub_100041D48();

      sub_100014988();

      sub_100014988();

      if (v74 >> 60 != 15)
      {

        v104 = type metadata accessor for PropertyListDecoder();
        v105 = *(v104 + 48);
        v106 = *(v104 + 52);
        swift_allocObject();
        PropertyListDecoder.init()();
        sub_1000717A0();
        dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
        sub_100014988();

        v131 = v147;
        v132 = v148;
        v133 = v149;
        v134 = v150;
        v127 = v143;
        v128 = v144;
        v129 = v145;
        v130 = v146;
        v123 = v139;
        v124 = v140;
        v125 = v141;
        v126 = v142;
        v119 = v135;
        v120 = v136;
        v121 = v137;
        v122 = v138;
        result = sub_100003C90(v153);
        v107 = v132;
        v115[12] = v131;
        v115[13] = v107;
        v108 = v134;
        v115[14] = v133;
        v115[15] = v108;
        v109 = v128;
        v115[8] = v127;
        v115[9] = v109;
        v110 = v130;
        v115[10] = v129;
        v115[11] = v110;
        v111 = v124;
        v115[4] = v123;
        v115[5] = v111;
        v112 = v126;
        v115[6] = v125;
        v115[7] = v112;
        v113 = v120;
        *v115 = v119;
        v115[1] = v113;
        v114 = v122;
        v115[2] = v121;
        v115[3] = v114;
        return result;
      }

      v29 = v116;
      v31 = 0;
    }

LABEL_15:
    ++v41;
    v42 += 3;
  }

  while (v40 != v41);
  *&v135 = 0;
  *(&v135 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(77);
  v119 = v135;
  v82._countAndFlagsBits = 0xD00000000000004ALL;
  v82._object = 0x8000000100107000;
  String.append(_:)(v82);
  *&v151 = _swiftEmptyArrayStorage;
  sub_1000635A4(0, v40, 0);
  v83 = v151;
  v84 = (v29 + 52);
  do
  {
    if (*(v84 - 3))
    {
      v85 = *(v84 - 5);
      v86 = *(v84 - 3);
    }

    else
    {
      v88 = *(v84 - 1);
      v87 = *v84;
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v89 = swift_allocObject();
      *(v89 + 16) = xmmword_1000F3C80;
      *(v89 + 56) = &type metadata for Int32;
      *(v89 + 64) = &protocol witness table for Int32;
      *(v89 + 32) = v88;
      *(v89 + 96) = &type metadata for Int32;
      *(v89 + 104) = &protocol witness table for Int32;
      *(v89 + 72) = v87;
      v85 = String.init(format:_:)();
      v86 = v90;
    }

    *&v151 = v83;
    v92 = *(v83 + 16);
    v91 = *(v83 + 24);

    if (v92 >= v91 >> 1)
    {
      sub_1000635A4((v91 > 1), v92 + 1, 1);
      v83 = v151;
    }

    *(v83 + 16) = v92 + 1;
    v93 = v83 + 16 * v92;
    *(v93 + 32) = v85;
    *(v93 + 40) = v86;
    v84 += 6;
    --v40;
  }

  while (v40);

  v94 = Array.description.getter();
  v96 = v95;

  v97._countAndFlagsBits = v94;
  v97._object = v96;
  String.append(_:)(v97);

  v98._countAndFlagsBits = 46;
  v98._object = 0xE100000000000000;
  String.append(_:)(v98);
  v99 = v119;
  sub_10001449C();
  swift_allocError();
  *v100 = v99;
LABEL_57:
  v101 = v138;
  v103 = v136;
  v102 = v137;
  *(v100 + 16) = v135;
  *(v100 + 32) = v103;
  *(v100 + 48) = v102;
  *(v100 + 64) = v101;
  *(v100 + 72) = 33;
  swift_willThrow();
  return sub_100003C90(v153);
}

uint64_t sub_100071738(uint64_t a1)
{
  v2 = sub_100003CDC(&qword_1001350F0, &qword_1000F89E0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1000717A0()
{
  result = qword_100136928;
  if (!qword_100136928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136928);
  }

  return result;
}

uint64_t sub_100071804(uint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_10007181C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  v5 = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  v8 = a2[8];
  v9 = a2[9];
  v10 = a2[11];
  *(a1 + 160) = a2[10];
  *(a1 + 176) = v10;
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  result = a2[12];
  v12 = a2[13];
  v13 = a2[15];
  *(a1 + 224) = a2[14];
  *(a1 + 240) = v13;
  *(a1 + 192) = result;
  *(a1 + 208) = v12;
  return result;
}

uint64_t sub_100071860(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 256))
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

uint64_t sub_1000718A8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 256) = 1;
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

    *(result + 256) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_100071938(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x56726567616E614DLL && a2 == 0xEE006E6F69737265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x61506C656E72654BLL && a2 == 0xEA00000000006874 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6365746968637241 && a2 == 0xED00007365727574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001070B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001001070D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000019 && 0x80000001001070F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000100107110 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000022 && 0x8000000100107130 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100107160 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0xD000000000000016 && 0x8000000100107180 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001001071A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001001071C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000023 && 0x80000001001071E0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000100107210 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 13;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000100107230 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 14;
  }

  else if (a1 == 0xD000000000000023 && 0x8000000100107250 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 15;
  }

  else if (a1 == 0xD000000000000015 && 0x8000000100107280 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 16;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001001072A0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 17;
  }

  else if (a1 == 0x6F69747065637845 && a2 == 0xEA0000000000736ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 18;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001000F8BC0 == a2)
  {

    return 19;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 19;
    }

    else
    {
      return 20;
    }
  }
}

uint64_t sub_100071F7C@<X0>(uint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = sub_100003CDC(&qword_100136930, &unk_1000F8B80);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v49 - v8;
  v10 = a1[3];
  v11 = a1[4];
  v79 = a1;
  sub_100003C4C(a1, v10);
  sub_100072F20();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(v79);
  }

  v12 = v6;
  v78 = a2;
  LOBYTE(v96[0]) = 0;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v96[0]) = 1;
  v75 = KeyedDecodingContainer.decode(_:forKey:)();
  v76 = v15;
  sub_100003CDC(&qword_100136C80, &qword_1000F39B0);
  LOBYTE(v80) = 2;
  v16 = sub_100072F74();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v74 = v16;
  v67 = 0;
  v68 = v96[0];
  LOBYTE(v96[0]) = 3;
  v73 = KeyedDecodingContainer.decode(_:forKey:)();
  v66 = v17;
  LOBYTE(v96[0]) = 4;
  v72 = KeyedDecodingContainer.decode(_:forKey:)();
  v65 = v18;
  LOBYTE(v96[0]) = 5;
  v71 = KeyedDecodingContainer.decode(_:forKey:)();
  v64 = v19;
  LOBYTE(v96[0]) = 6;
  v70 = KeyedDecodingContainer.decode(_:forKey:)();
  v63 = v20;
  LOBYTE(v96[0]) = 7;
  v69 = KeyedDecodingContainer.decode(_:forKey:)();
  v62 = v21;
  LOBYTE(v80) = 8;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v77 = 0;
  v61 = v96[0];
  LOBYTE(v80) = 9;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v77 = 0;
  v60 = v96[0];
  LOBYTE(v80) = 10;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v77 = 0;
  v59 = v96[0];
  LOBYTE(v80) = 11;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v77 = 0;
  v58 = v96[0];
  LOBYTE(v80) = 12;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v77 = 0;
  v57 = v96[0];
  LOBYTE(v96[0]) = 13;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v56 = v23;
  v77 = 0;
  v24 = v22;
  LOBYTE(v96[0]) = 14;
  v25 = KeyedDecodingContainer.decode(_:forKey:)();
  v55 = v26;
  v77 = 0;
  v27 = v25;
  LOBYTE(v96[0]) = 15;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v54 = v29;
  v77 = 0;
  v30 = v28;
  LOBYTE(v96[0]) = 16;
  v74 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v53 = v31;
  v77 = 0;
  LOBYTE(v96[0]) = 17;
  v51 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v52 = v32;
  v77 = 0;
  LOBYTE(v80) = 18;
  sub_100072FF0();
  v33 = v77;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v77 = v33;
  if (v33)
  {
    (*(v12 + 8))(v9, v5);
    LODWORD(v69) = 1;
    LODWORD(v70) = 1;
    LODWORD(v71) = 1;
    LODWORD(v72) = 1;
    LODWORD(v73) = 1;
    LODWORD(v74) = 1;
    LODWORD(v75) = 1;
    LODWORD(v78) = 1;
    v34 = v67;
    sub_100003C90(v79);

    if (v34)
    {
      if (!v69)
      {
LABEL_18:

        if (v70)
        {
        }

        if (v71)
        {

          if (v72)
          {
LABEL_12:

            if ((v73 & 1) == 0)
            {
              goto LABEL_13;
            }

            goto LABEL_21;
          }
        }

        else if (v72)
        {
          goto LABEL_12;
        }

        if (!v73)
        {
LABEL_13:
          if (v74)
          {
            goto LABEL_14;
          }

          goto LABEL_22;
        }

LABEL_21:

        if (v74)
        {
LABEL_14:

          if ((v75 & 1) == 0)
          {
            goto LABEL_15;
          }

          goto LABEL_23;
        }

LABEL_22:
        if (!v75)
        {
LABEL_15:
          if (!v78)
          {
            return result;
          }
        }

LABEL_23:

        if ((v78 & 1) == 0)
        {
          return result;
        }
      }
    }

    else
    {

      if ((v69 & 1) == 0)
      {
        goto LABEL_18;
      }
    }

    goto LABEL_18;
  }

  v67 = v96[0];
  v98 = 19;
  sub_100073044();
  v35 = v77;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v77 = v35;
  if (!v35)
  {
    (*(v12 + 8))(v9, v5);
    v49 = *(&v97 + 1);
    v50 = v97;
    *&v80 = v13;
    *(&v80 + 1) = v75;
    v36 = v68;
    *&v81 = v76;
    *(&v81 + 1) = v68;
    v37 = v73;
    v39 = v65;
    v38 = v66;
    *&v82 = v73;
    *(&v82 + 1) = v66;
    *&v83 = v72;
    *(&v83 + 1) = v65;
    *&v84 = v71;
    *(&v84 + 1) = v64;
    *&v85 = v70;
    *(&v85 + 1) = v63;
    *&v86 = v69;
    *(&v86 + 1) = v62;
    *&v87 = v61;
    *(&v87 + 1) = v60;
    *&v88 = v59;
    *(&v88 + 1) = v58;
    *&v89 = v57;
    *(&v89 + 1) = v24;
    *&v90 = v56;
    *(&v90 + 1) = v27;
    *&v91 = v55;
    *(&v91 + 1) = v30;
    *&v92 = v54;
    *(&v92 + 1) = v74;
    *&v93 = v53;
    *(&v93 + 1) = v51;
    *&v94 = v52;
    *(&v94 + 1) = v67;
    v95 = v97;
    sub_100014838(&v80, v96);
    sub_100003C90(v79);
    v96[0] = v13;
    v96[1] = v75;
    v96[2] = v76;
    v96[3] = v36;
    v96[4] = v37;
    v96[5] = v38;
    v96[6] = v72;
    v96[7] = v39;
    v96[8] = v71;
    v96[9] = v64;
    v96[10] = v70;
    v96[11] = v63;
    v96[12] = v69;
    v96[13] = v62;
    v96[14] = v61;
    v96[15] = v60;
    v96[16] = v59;
    v96[17] = v58;
    v96[18] = v57;
    v96[19] = v24;
    v96[20] = v56;
    v96[21] = v27;
    v96[22] = v55;
    v96[23] = v30;
    v96[24] = v54;
    v96[25] = v74;
    v96[26] = v53;
    v96[27] = v51;
    v96[28] = v52;
    v96[29] = v67;
    v96[30] = v50;
    v96[31] = v49;
    result = sub_10000A680(v96);
    v40 = v93;
    v41 = v78;
    v78[12] = v92;
    v41[13] = v40;
    v42 = v95;
    v41[14] = v94;
    v41[15] = v42;
    v43 = v89;
    v41[8] = v88;
    v41[9] = v43;
    v44 = v91;
    v41[10] = v90;
    v41[11] = v44;
    v45 = v85;
    v41[4] = v84;
    v41[5] = v45;
    v46 = v87;
    v41[6] = v86;
    v41[7] = v46;
    v47 = v81;
    *v41 = v80;
    v41[1] = v47;
    v48 = v83;
    v41[2] = v82;
    v41[3] = v48;
    return result;
  }

  (*(v12 + 8))(v9, v5);
  sub_100003C90(v79);
}

unint64_t sub_100072F20()
{
  result = qword_100136938;
  if (!qword_100136938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136938);
  }

  return result;
}

unint64_t sub_100072F74()
{
  result = qword_1001345F8;
  if (!qword_1001345F8)
  {
    sub_100009FA4(&qword_100136C80, &qword_1000F39B0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001345F8);
  }

  return result;
}

unint64_t sub_100072FF0()
{
  result = qword_100136940;
  if (!qword_100136940)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136940);
  }

  return result;
}

unint64_t sub_100073044()
{
  result = qword_100136948;
  if (!qword_100136948)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136948);
  }

  return result;
}

unint64_t sub_100073098()
{
  result = qword_100136958;
  if (!qword_100136958)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136958);
  }

  return result;
}

unint64_t sub_1000730EC()
{
  result = qword_100136968;
  if (!qword_100136968)
  {
    sub_100009FA4(&qword_100136960, &qword_1000FAC40);
    sub_100072F74();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136968);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for KernelManagementConfiguration.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for KernelManagementConfiguration.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000732EC()
{
  result = qword_100136970;
  if (!qword_100136970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136970);
  }

  return result;
}

unint64_t sub_100073344()
{
  result = qword_100136978;
  if (!qword_100136978)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136978);
  }

  return result;
}

unint64_t sub_10007339C()
{
  result = qword_100136980;
  if (!qword_100136980)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136980);
  }

  return result;
}

unint64_t sub_1000733F4()
{
  result = qword_100136988;
  if (!qword_100136988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136988);
  }

  return result;
}

unint64_t sub_10007344C()
{
  result = qword_100136990;
  if (!qword_100136990)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136990);
  }

  return result;
}

unint64_t sub_1000734A4()
{
  result = qword_100136998;
  if (!qword_100136998)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100136998);
  }

  return result;
}

unint64_t sub_1000734F8()
{
  result = qword_1001369A8;
  if (!qword_1001369A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001369A8);
  }

  return result;
}

unint64_t sub_100073560()
{
  result = qword_1001369B0;
  if (!qword_1001369B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001369B0);
  }

  return result;
}

unint64_t sub_1000735B8()
{
  result = qword_1001369B8;
  if (!qword_1001369B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001369B8);
  }

  return result;
}

unint64_t sub_100073610()
{
  result = qword_1001369C0;
  if (!qword_1001369C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001369C0);
  }

  return result;
}

void sub_100073664(uint64_t a1)
{
  v3 = sub_100003CDC(&qword_100136B58, &qword_1000F90B0);
  v4 = objc_allocWithZone(v3);
  *&v4[*((swift_isaMask & *v4) + 0x60)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0x68)] = 0;
  *&v4[*((swift_isaMask & *v4) + 0x70)] = a1;
  v21.receiver = v4;
  v21.super_class = v3;

  v5 = objc_msgSendSuper2(&v21, "init");
  v6 = v5;
  v7 = *(v1 + 24);
  if (v7)
  {
    v8 = *((swift_isaMask & *v7) + 0x60);
    v9 = *(v7 + v8);
    *(v7 + v8) = v5;
    v10 = v7;
    v11 = v6;

    v12 = *((swift_isaMask & *v11) + 0x68);
    v13 = *(v11 + v12);
    *(v11 + v12) = v7;
  }

  else
  {
    v14 = *(v1 + 16);
    *(v1 + 16) = v5;
    v15 = v5;

    v13 = *(v1 + 24);
    *(v1 + 24) = v6;
    v16 = v15;
  }

  v17 = *(v1 + 24);
  *(v1 + 24) = v6;
  v6;

  v18 = *(v1 + 32);
  v19 = __CFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v1 + 32) = v20;
  }
}

void sub_1000737F8()
{
  v1 = *(v0 + 16);
  if (v1)
  {
    v2 = v0;
    v3 = *((swift_isaMask & *v1) + 0x60);
    v4 = *(v1 + v3);
    *(v0 + 16) = v4;
    v5 = *(v0 + 24);
    if (v5)
    {
      sub_100003CDC(&qword_100136B58, &qword_1000F90B0);
      v6 = v4;
      v7 = v1;
      v8 = v5;
      v9 = static NSObject.== infix(_:_:)();

      v4 = *(v1 + v3);
      if (v9)
      {
        v10 = *(v2 + 24);
        *(v2 + 24) = v4;
        v11 = v4;

        v4 = *(v1 + v3);
      }

      if (v4)
      {
        goto LABEL_6;
      }
    }

    else
    {
      v15 = v4;
      v16 = v1;
      if (v4)
      {
LABEL_6:
        v12 = v4;

        v13 = *((swift_isaMask & *v12) + 0x68);
        v14 = *(v12 + v13);
        *(v12 + v13) = 0;

        goto LABEL_9;
      }
    }

    v14 = v1;
LABEL_9:

    v17 = *(v2 + 32);
    v18 = v17 != 0;
    v19 = v17 - 1;
    if (v18)
    {
      *(v2 + 32) = v19;
    }

    else
    {
      __break(1u);
    }
  }
}

void sub_100073930(void *a1)
{
  v2 = v1;
  v4 = *(a1 + *((swift_isaMask & *a1) + 0x68));
  v5 = *(a1 + *((swift_isaMask & *a1) + 0x60));
  if (!v5)
  {
    v24 = v4;
    if (!v4)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = *((*v5 & swift_isaMask) + 0x68);
  v7 = *(v5 + v6);
  *(v5 + v6) = v4;
  v8 = v4;
  v9 = v5;
  v10 = v8;

  if (v4)
  {
LABEL_3:
    v11 = *((swift_isaMask & *v4) + 0x60);
    v12 = *(v4 + v11);
    *(v4 + v11) = v5;
    v13 = v5;
  }

LABEL_4:
  v14 = *(v2 + 16);
  if (v14)
  {
    sub_100003CDC(&qword_100136B58, &qword_1000F90B0);
    v15 = a1;
    v16 = v14;
    v17 = static NSObject.== infix(_:_:)();

    if (v17)
    {
      v18 = *(v2 + 16);
      *(v2 + 16) = v4;
      v19 = v4;
    }
  }

  v20 = *(v2 + 24);
  if (v20)
  {
    sub_100003CDC(&qword_100136B58, &qword_1000F90B0);
    v21 = a1;
    v22 = v20;
    v23 = static NSObject.== infix(_:_:)();

    if (v23)
    {
      v4 = *(v2 + 24);
      *(v2 + 24) = v5;
    }

    else
    {
      v4 = v5;
    }
  }

  else
  {
  }

  v25 = *(v2 + 32);
  v26 = v25 != 0;
  v27 = v25 - 1;
  if (v26)
  {
    *(v2 + 32) = v27;
  }

  else
  {
    __break(1u);
  }
}

void sub_100073B08(uint64_t a1)
{
  v2 = v1;
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_beginAccess();
  v6 = *(v1 + 24);
  v7 = *(v6 + 16);

  if (v7 && (v8 = sub_100061588(v5, v4), (v9 & 1) != 0))
  {
    v10 = *(*(v6 + 56) + 8 * v8);
    swift_endAccess();
    v11 = *(v2 + 32);
    v12 = v10;

    sub_100073930(v12);

    swift_beginAccess();
    v13 = sub_100036C70(v5, v4);
    swift_endAccess();

    v14 = *(*(v12 + *((swift_isaMask & *v12) + 0x70)) + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_semaphore);

    OS_dispatch_semaphore.signal()();
  }

  else
  {
    swift_endAccess();
  }

  if (*(*(v2 + 24) + 16) == 8)
  {
    v15 = *(v2 + 32);

    sub_1000737F8();
    v17 = v16;

    if (v17)
    {
      v18 = *((swift_isaMask & *v17) + 0x70);
      v19 = *(v17 + v18);
      v20 = *(v19 + 16);
      v21 = *(v19 + 24);
      swift_beginAccess();

      v22 = sub_100036C70(v20, v21);
      swift_endAccess();

      v23 = *(*(v17 + v18) + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_semaphore);

      OS_dispatch_semaphore.signal()();
    }
  }

  v24 = *(v2 + 32);

  sub_100073664(a1);
  v26 = v25;

  swift_beginAccess();
  v27 = v26;
  v28 = *(v2 + 24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v2 + 24);
  *(v2 + 24) = 0x8000000000000000;
  sub_100039740(v27, v5, v4, isUniquelyReferenced_nonNull_native);

  *(v2 + 24) = v31;
  swift_endAccess();
  v30 = *(v27 + *((swift_isaMask & *v27) + 0x70));

  sub_100073F00();
}

void sub_100073DCC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  swift_beginAccess();
  v6 = *(v2 + 24);
  v7 = sub_100061588(a1, a2);
  if (v8)
  {
    v9 = v7;
    v10 = *(v3 + 24);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v3 + 24);
    *(v3 + 24) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_10003B6DC();
    }

    v13 = *(*(v12 + 48) + 16 * v9 + 8);

    v14 = *(*(v12 + 56) + 8 * v9);
    sub_1000382C4(v9, v12);
    *(v3 + 24) = v12;
    swift_endAccess();
    v15 = *(v3 + 32);

    sub_100073930(v14);

    v16 = *(*(v14 + *((swift_isaMask & *v14) + 0x70)) + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_semaphore);

    OS_dispatch_semaphore.signal()();
  }

  else
  {
    swift_endAccess();
  }
}

uint64_t sub_100073F00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v38 = v2;
  v39 = v3;
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v37 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v33 = *(v6 - 8);
  v34 = v6;
  v7 = *(v33 + 64);
  __chkstk_darwin(v6);
  v32 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OS_dispatch_queue.Attributes();
  v10 = *(*(v9 - 8) + 64);
  __chkstk_darwin(v9);
  v31[2] = v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for DispatchQoS();
  v35 = *(v12 - 8);
  v36 = v12;
  v13 = *(v35 + 64);
  __chkstk_darwin(v12);
  v15 = v31 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v0 + 24);
  aBlock = *(v0 + 16);
  v42 = v16;

  v17._countAndFlagsBits = 47;
  v17._object = 0xE100000000000000;
  String.append(_:)(v17);
  v19 = aBlock;
  v18 = v42;
  aBlock = *(v0 + OBJC_IVAR____TtCC10driverkitd23DextLaunchThreadManager27DextLaunchDebuggingMetadata_context);
  v20 = dispatch thunk of CustomStringConvertible.description.getter();
  v22 = v21;
  aBlock = v19;
  v42 = v18;

  v23._countAndFlagsBits = v20;
  v23._object = v22;
  String.append(_:)(v23);

  v24 = aBlock;
  v25 = v42;
  v31[1] = sub_100074B10();
  sub_100074B5C(0x3CuLL, v24, v25);

  static String._fromSubstring(_:)();

  static DispatchQoS.unspecified.getter();
  aBlock = _swiftEmptyArrayStorage;
  sub_100074C5C(&qword_100133C80, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100003CDC(&qword_100133C88, &qword_1000F88C0);
  sub_10000A0A8(&qword_100133C90, &qword_100133C88, &qword_1000F88C0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v33 + 104))(v32, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v34);
  v26 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v45 = sub_100074C18;
  v46 = v1;
  aBlock = _NSConcreteStackBlock;
  v42 = 1107296256;
  v43 = sub_10006CCB0;
  v44 = &unk_100129C98;
  v27 = _Block_copy(&aBlock);

  static DispatchQoS.unspecified.getter();
  v40 = _swiftEmptyArrayStorage;
  sub_100074C5C(&unk_100133CA0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100003CDC(&unk_100137370, &unk_1000F32E0);
  sub_10000A0A8(&qword_100133CB0, &unk_100137370, &unk_1000F32E0);
  v29 = v37;
  v28 = v38;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v27);

  (*(v39 + 8))(v29, v28);
  (*(v35 + 8))(v15, v36);
}