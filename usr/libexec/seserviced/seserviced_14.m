char *sub_10012EA44(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&unk_100504720, &qword_100414C40);
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

char *sub_10012EB50(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005042C8, &qword_10040B5D8);
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

void *sub_10012EC5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100504320, &qword_10040B630);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[3 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 24 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504328, &qword_10040B638);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012EDF0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_1005043A0, &qword_10040B6A8);
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

void *sub_10012EF2C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_1005042D0, &qword_10040B5E0);
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
    sub_100068FC4(&qword_1005025F0, &qword_100409A18);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012F07C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&unk_100503EA0, &unk_1004101C0);
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
    sub_100068FC4(&qword_100507D30, &unk_100409C90);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012F1D8(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504398, &qword_10040B6A0);
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

char *sub_10012F2E4(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100503208, "|e\a");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012F428(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100068FC4(a5, a6);
    v16 = swift_allocObject();
    v17 = j__malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *sub_10012F55C(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504360, &qword_10040B668);
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

char *sub_10012F668(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504330, &qword_10040B640);
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

void *sub_10012F78C(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100504350, &qword_10040B658);
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
    sub_100068FC4(&qword_100504358, &qword_10040B660);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012F8FC(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100504338, &qword_10040B648);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 + 31;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 6);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[8 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, v8 << 6);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504340, &qword_10040C460);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_10012FB34(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
    sub_100068FC4(a5, a6);
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

char *sub_10012FCC0(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100504378, &qword_10040B680);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[40 * v8])
    {
      memmove(v12, v13, 40 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_10012FE04(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    sub_100068FC4(a5, a6);
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
    v16 = &_swiftEmptyArrayStorage;
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
    sub_100068FC4(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

size_t sub_10012FF88(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_100068FC4(a5, a6);
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

char *sub_100130164(char *result, int64_t a2, char a3, char *a4)
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
    sub_100068FC4(&qword_100502448, &qword_100409998);
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

void *sub_100130260(void *result, int64_t a2, char a3, void *a4)
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
    sub_100068FC4(&qword_100504310, &qword_10040B620);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_100068FC4(&qword_100504318, &qword_10040B628);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1001303A8(uint64_t result)
{
  if (result)
  {
    if (result < 15)
    {
      return 0;
    }

    else
    {
      v1 = result;
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(capacity:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = 0;
      }

      else
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t sub_10013044C(uint64_t a1, unint64_t a2)
{
  v2 = HIBYTE(a2) & 0xF;
  v22[0] = a1;
  v22[1] = a2;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v2 = a1 & 0xFFFFFFFFFFFFLL;
  }

  v22[2] = 0;
  v23 = v2;

  v3 = &_swiftEmptyArrayStorage;
  while (String.Iterator.next()().value._object)
  {
    v4 = Character.hexDigitValue.getter();
    v6 = v5;

    if ((v6 & 1) == 0)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v3 = sub_10012E940(0, *(v3 + 2) + 1, 1, v3);
      }

      v8 = *(v3 + 2);
      v7 = *(v3 + 3);
      if (v8 >= v7 >> 1)
      {
        v3 = sub_10012E940((v7 > 1), v8 + 1, 1, v3);
      }

      *(v3 + 2) = v8 + 1;
      *&v3[8 * v8 + 32] = v4;
    }
  }

  v9 = *(v3 + 2);
  if (v9)
  {

    goto LABEL_27;
  }

  v10 = String.count.getter();

  if (v9 != v10)
  {
LABEL_27:

    return 0;
  }

  v11 = sub_1001303A8(v9 >> 1);
  v25 = v11;
  v26 = v12;
  if (v9)
  {
    v13 = 0;
    do
    {
      if (__OFADD__(v13, 2))
      {
        v15 = 0x7FFFFFFFFFFFFFFFLL;
      }

      else
      {
        v15 = v13 + 2;
      }

      if ((v13 & 0x8000000000000000) != 0)
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
      }

      v16 = *(v3 + 2);
      if (v13 >= v16)
      {
        goto LABEL_31;
      }

      if (v13 + 1 >= v16)
      {
        goto LABEL_32;
      }

      v17 = *&v3[8 * v13 + 40] | (16 * *&v3[8 * v13 + 32]);
      if ((v17 & 0x8000000000000000) != 0)
      {
        goto LABEL_33;
      }

      if (v17 > 0xFF)
      {
        goto LABEL_34;
      }

      if (v26 >> 62 == 2)
      {
        v18 = *(v25 + 24);
      }

      v14 = sub_100068FC4(&qword_100502608, &qword_100409A28);
      v23 = v14;
      v24 = sub_10007FBA8();
      LOBYTE(v22[0]) = v17;
      v21 = *sub_1000752B0(v22, v14);
      Data._Representation.replaceSubrange(_:with:count:)();
      sub_1000752F4(v22);
      v13 = v15;
    }

    while (v15 < v9);

    return v25;
  }

  else
  {
    v20 = v11;

    return v20;
  }
}

void sub_10013070C(uint64_t a1@<X8>)
{
  v3 = objc_opt_self();
  v4 = [v1 discretionaryData];
  v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  isa = Data._bridgeToObjectiveC()().super.isa;
  sub_10006A178(v5, v7);
  v9 = [v3 TLVsWithData:isa];

  if (!v9)
  {
    goto LABEL_22;
  }

  sub_1000754A4();
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (!(v10 >> 62))
  {
    v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_4;
    }

    goto LABEL_21;
  }

LABEL_17:
  v16 = _CocoaArrayWrapper.endIndex.getter();
  if (v16 < 0)
  {
    __break(1u);
LABEL_19:
    __break(1u);
  }

  v11 = v16;
  if (!v16)
  {
LABEL_21:

LABEL_22:
    v21 = type metadata accessor for UUID();
    v22 = *(*(v21 - 8) + 56);

    v22(a1, 1, 1, v21);
    return;
  }

LABEL_4:
  v12 = 0;
  while (1)
  {
    if ((v10 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v12 >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
        goto LABEL_17;
      }

      v13 = *(v10 + 8 * v12 + 32);
    }

    v14 = v13;
    if ([v13 tag] == 254)
    {
      v15 = [v14 childWithTag:57154];
      if (v15)
      {
        break;
      }
    }

    ++v12;

    if (v11 == v12)
    {
      goto LABEL_21;
    }
  }

  v23 = v15;
  v16 = [v15 value];
  if (!v16)
  {
    goto LABEL_19;
  }

  v17 = v16;

  v18 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v20 = v19;

  sub_1001E0778(v18, v20, a1);
}

uint64_t sub_100130988()
{
  v0 = type metadata accessor for SECDataMigrationCompletionListener();
  v1 = *(v0 + 48);
  v2 = *(v0 + 52);
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = 0xD000000000000019;
  *(v3 + 32) = 0x8000000100463B90;
  result = Logger.init(subsystem:category:)();
  qword_10051B2B0 = v3;
  return result;
}

uint64_t sub_100130A24()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v44 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for DispatchQoS();
  v43 = *(v45 - 8);
  v6 = *(v43 + 64);
  __chkstk_darwin(v45);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS.QoSClass();
  v42 = *(v9 - 8);
  v10 = *(v42 + 64);
  __chkstk_darwin(v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchPredicate();
  v14 = *(v13 - 8);
  v15 = *(v14 + 64);
  __chkstk_darwin(v13);
  v17 = (&v40 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v18 = *(qword_10051B350 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue);
  *v17 = v18;
  (*(v14 + 104))(v17, enum case for DispatchPredicate.onQueue(_:), v13);
  v19 = v18;
  LOBYTE(v18) = _dispatchPreconditionTest(_:)();
  result = (*(v14 + 8))(v17, v13);
  if (v18)
  {
    v41 = v3;
    v21 = objc_opt_self();
    v22 = *(v1 + 24);
    v23 = *(v1 + 32);
    v24 = String._bridgeToObjectiveC()();
    v25 = [v21 isFirstLaunchAfterBootForKey:v24];

    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.info.getter();
    v28 = os_log_type_enabled(v26, v27);
    if (v25)
    {
      if (v28)
      {
        v40 = v2;
        v29 = swift_slowAlloc();
        v30 = swift_slowAlloc();
        aBlock[0] = v30;
        *v29 = 136315138;
        sub_100326DF8(&v48);
        v31 = v49;
        if (v49)
        {
          v32 = v48;
          v51 = v50;
          sub_1000B6B54(&v51);
        }

        else
        {
          v31 = 0xE400000000000000;
          v32 = 1701736270;
        }

        v35 = sub_1002FFA0C(v32, v31, aBlock);

        *(v29 + 4) = v35;
        _os_log_impl(&_mh_execute_header, v26, v27, "Migration -- current default app %s", v29, 0xCu);
        sub_1000752F4(v30);

        v2 = v40;
        v34 = *(v1 + 16);
        if (*(v1 + 16))
        {
          return v34 == 1;
        }
      }

      else
      {

        v34 = *(v1 + 16);
        if (*(v1 + 16))
        {
          return v34 == 1;
        }
      }

      *(v1 + 16) = 1;
      sub_10006928C();
      v36 = v42;
      (*(v42 + 104))(v12, enum case for DispatchQoS.QoSClass.userInitiated(_:), v9);
      v37 = static OS_dispatch_queue.global(qos:)();
      (*(v36 + 8))(v12, v9);
      aBlock[4] = sub_100131694;
      aBlock[5] = v1;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100080830;
      aBlock[3] = &unk_1004C7D70;
      v38 = _Block_copy(aBlock);

      static DispatchQoS.unspecified.getter();
      v46 = _swiftEmptyArrayStorage;
      sub_1000BA7E0();
      sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
      sub_1000BA838();
      v39 = v44;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      OS_dispatch_queue.async(group:qos:flags:execute:)();
      _Block_release(v38);

      (*(v41 + 8))(v39, v2);
      (*(v43 + 8))(v8, v45);

      v34 = *(v1 + 16);
      return v34 == 1;
    }

    if (v28)
    {
      v33 = swift_slowAlloc();
      *v33 = 0;
      _os_log_impl(&_mh_execute_header, v26, v27, "After first launch, migration completed", v33, 2u);
    }

    result = 0;
    *(v1 + 16) = 2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_100131050(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Perform Migration", v14, 2u);
  }

  DMPerformMigrationIfNeeded();
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  v15 = *(qword_10051B350 + OBJC_IVAR____TtC10seserviced23SECNotificationListener_queue);
  aBlock[4] = sub_1001316B4;
  aBlock[5] = a1;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C7D98;
  v16 = _Block_copy(aBlock);
  v17 = v15;

  static DispatchQoS.unspecified.getter();
  v19[1] = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v16);

  (*(v3 + 8))(v6, v2);
  (*(v8 + 8))(v11, v7);
}

uint64_t sub_100131374(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, v3, "Migration completed, Reconciling now", v4, 2u);
  }

  v5 = objc_opt_self();
  v6 = *(a1 + 24);
  v7 = *(a1 + 32);
  v8 = String._bridgeToObjectiveC()();
  [v5 setFirstLaunchAfterBootDoneForKey:v8];

  *(a1 + 16) = 2;
  if (qword_100501A20 != -1)
  {
    swift_once();
  }

  return sub_100192058();
}

uint64_t sub_100131490()
{
  v1 = *(v0 + 4);

  v2 = OBJC_IVAR____TtC10seserviced34SECDataMigrationCompletionListener_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SECDataMigrationCompletionListener()
{
  result = qword_100504428;
  if (!qword_100504428)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_100131588()
{
  result = type metadata accessor for Logger();
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

unint64_t sub_100131640()
{
  result = qword_1005044C0;
  if (!qword_1005044C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005044C0);
  }

  return result;
}

uint64_t sub_10013169C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001316C4(void *a1, const char *a2)
{
  v3 = sub_1003AF3C4(a1, a2);
  v4 = [v3 isSkyOrLater];

  if (!v4)
  {
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_30;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "SE is not Sky or later ...";
    goto LABEL_11;
  }

  if (qword_100501A38 != -1)
  {
    swift_once();
  }

  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = sub_1003AF34C(a1, isa);

  if (!v6)
  {
    v22 = sub_1003AAA98(a1, "SLAMInstallHenosis");
    if (v22)
    {
      v18 = v22;
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v23, v24))
      {

        return 7;
      }

      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v66 = v26;
      *v25 = 136315138;
      swift_getErrorValue();
      v27 = Error.localizedDescription.getter();
      v29 = sub_1002FFA0C(v27, v28, &v66);

      *(v25 + 4) = v29;
      _os_log_impl(&_mh_execute_header, v23, v24, "SLAM Error on install : %s", v25, 0xCu);
      sub_1000752F4(v26);

LABEL_30:
      return 7;
    }

    v41 = Data._bridgeToObjectiveC()().super.isa;
    v42 = sub_1003AF34C(a1, v41);

    if (v42)
    {
      v43 = sub_1001A2D48(a1);
      v45 = v44;
      v10 = Logger.logObject.getter();
      v46 = static os_log_type_t.info.getter();
      v47 = os_log_type_enabled(v10, v46);
      if (v45 >> 60 == 15)
      {
        if (!v47)
        {
          goto LABEL_27;
        }

        v48 = swift_slowAlloc();
        *v48 = 0;
        v49 = "Applied installation script but no configID?";
LABEL_26:
        _os_log_impl(&_mh_execute_header, v10, v46, v49, v48, 2u);

        goto LABEL_27;
      }

      if (v47)
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v66 = v56;
        *v55 = 136315138;
        sub_100288788(v43, v45);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_10007A2D0();
        v57 = BidirectionalCollection<>.joined(separator:)();
        v59 = v58;

        v60 = sub_1002FFA0C(v57, v59, &v66);

        *(v55 + 4) = v60;
        v61 = "Henosis installed with id %s";
LABEL_38:
        _os_log_impl(&_mh_execute_header, v10, v46, v61, v55, 0xCu);
        sub_1000752F4(v56);

        v39 = v43;
        v40 = v45;
        goto LABEL_39;
      }

      goto LABEL_40;
    }

    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v18, v19))
    {
      goto LABEL_30;
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = "After SLAM but AID still not present?!";
LABEL_11:
    _os_log_impl(&_mh_execute_header, v18, v19, v21, v20, 2u);

    goto LABEL_30;
  }

  v7 = sub_1001A2D48(a1);
  if (v8 >> 60 == 15)
  {
    v9 = sub_1003AAA98(a1, "SLAMPersonalizeHenosis");
    if (v9)
    {
      v10 = v9;
      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v11, v12))
      {

        return 8;
      }

      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v66 = v14;
      *v13 = 136315138;
      swift_getErrorValue();
      v15 = Error.localizedDescription.getter();
      v17 = sub_1002FFA0C(v15, v16, &v66);

      *(v13 + 4) = v17;
      _os_log_impl(&_mh_execute_header, v11, v12, "SLAM Error on personalize : %s", v13, 0xCu);
      sub_1000752F4(v14);

LABEL_27:
      return 8;
    }

    v43 = sub_1001A2D48(a1);
    v45 = v52;
    v10 = Logger.logObject.getter();
    v46 = static os_log_type_t.info.getter();
    v53 = os_log_type_enabled(v10, v46);
    if (v45 >> 60 == 15)
    {
      if (!v53)
      {
        goto LABEL_27;
      }

      v48 = swift_slowAlloc();
      *v48 = 0;
      v49 = "Applied personalization script but no configID?";
      goto LABEL_26;
    }

    if (v53)
    {
      v55 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      v66 = v56;
      *v55 = 136315138;
      sub_100288788(v43, v45);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_10007A2D0();
      v62 = BidirectionalCollection<>.joined(separator:)();
      v64 = v63;

      v65 = sub_1002FFA0C(v62, v64, &v66);

      *(v55 + 4) = v65;
      v61 = "Henosis configured with id %s";
      goto LABEL_38;
    }

LABEL_40:

    v50 = v43;
    v51 = v45;
    goto LABEL_41;
  }

  v30 = v7;
  v31 = v8;
  v10 = Logger.logObject.getter();
  v32 = static os_log_type_t.info.getter();
  if (!os_log_type_enabled(v10, v32))
  {

    v50 = v30;
    v51 = v31;
LABEL_41:
    sub_10006A2D0(v50, v51);
    return 35;
  }

  v33 = swift_slowAlloc();
  v34 = swift_slowAlloc();
  v66 = v34;
  *v33 = 136315138;
  sub_100288788(v30, v31);
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_10007A2D0();
  v35 = BidirectionalCollection<>.joined(separator:)();
  v37 = v36;

  v38 = sub_1002FFA0C(v35, v37, &v66);

  *(v33 + 4) = v38;
  _os_log_impl(&_mh_execute_header, v10, v32, "Henosis already configured with id %s", v33, 0xCu);
  sub_1000752F4(v34);

  v39 = v30;
  v40 = v31;
LABEL_39:
  sub_10006A2D0(v39, v40);

  return 35;
}

id sub_100131F30@<X0>(uint64_t a1@<X0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, _BYTE *a8@<X7>, uint64_t a9@<X8>, double a10@<D0>)
{
  v61 = a9;
  v14 = 0xD000000000000020;
  v15 = objc_opt_self();
  v72 = a5;

  v16 = [v15 sharedScheduler];
  v17 = String._bridgeToObjectiveC()();

  v18 = [v16 taskRequestForIdentifier:v17];

  if (v18)
  {
    v19 = a1;

    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000958E4(v20, qword_1005044D0);

    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v64 = a7;
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      aBlock[0] = v24;
      *v23 = 136315138;
      if (v19)
      {
        v25 = v19 == 1 ? 0xD00000000000002DLL : 0xD000000000000020;
        v26 = v19 == 1 ? "iced.viennaPresentmentReporting" : "iced.viennaHeartbeatReporting";
      }

      else
      {
        v25 = 0xD00000000000002FLL;
        v26 = "_MANAGED_BY_ALIRO_WALLET_";
      }

      v27 = sub_1002FFA0C(v25, v26 | 0x8000000000000000, aBlock);

      *(v23 + 4) = v27;
      _os_log_impl(&_mh_execute_header, v21, v22, "Will overwrite previously scheduled task with identifier %s", v23, 0xCu);
      sub_1000752F4(v24);

      a7 = v64;
    }

    else
    {
    }

    v28 = [v15 sharedScheduler];
    a1 = v19;
    v29 = String._bridgeToObjectiveC()();

    v30 = [v28 deregisterTaskWithIdentifier:v29];

    if ((v30 & 1) == 0)
    {
      v32 = Logger.logObject.getter();
      v33 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v32, v33))
      {
LABEL_40:

        LOBYTE(aBlock[0]) = 1;
        sub_100134EB4();
        swift_willThrowTypedImpl();
        goto LABEL_45;
      }

      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&_mh_execute_header, v32, v33, "Unable to deregister previously registered task", v34, 2u);
LABEL_39:

      goto LABEL_40;
    }
  }

  v63 = a3 & 1;
  v65 = a2 & 1;
  v31 = [v15 sharedScheduler];
  v35 = String._bridgeToObjectiveC()();

  if (qword_100501980 != -1)
  {
    swift_once();
  }

  v36 = *(off_1005044C8 + 2);
  v37 = swift_allocObject();
  *(v37 + 16) = a1;
  *(v37 + 17) = v65;
  *(v37 + 18) = v63;
  *(v37 + 24) = a10;
  *(v37 + 32) = a4;
  *(v37 + 40) = v72;
  *(v37 + 48) = a6;
  *(v37 + 56) = a7;
  *(v37 + 64) = v66;
  aBlock[4] = sub_100135174;
  aBlock[5] = v37;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A409C;
  aBlock[3] = &unk_1004C7F68;
  v38 = _Block_copy(aBlock);
  v39 = a1;

  v40 = v36;

  v41 = [v31 registerForTaskWithIdentifier:v35 usingQueue:v40 launchHandler:v38];
  _Block_release(v38);

  if (!v41)
  {
    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000958E4(v46, qword_1005044D0);

    v32 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v32, v47))
    {
      goto LABEL_40;
    }

    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    aBlock[0] = v49;
    *v48 = 136315138;
    if (v39)
    {
      if (v39 == 1)
      {
        v50 = "iced.viennaPresentmentReporting";
        v14 = 0xD00000000000002DLL;
      }

      else
      {
        v50 = "iced.viennaHeartbeatReporting";
      }
    }

    else
    {
      v14 = 0xD00000000000002FLL;
      v50 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    v59 = sub_1002FFA0C(v14, v50 | 0x8000000000000000, aBlock);

    *(v48 + 4) = v59;
    _os_log_impl(&_mh_execute_header, v32, v47, "Failed to register task with identifier %s", v48, 0xCu);
    sub_1000752F4(v49);

    goto LABEL_39;
  }

  v42 = [v15 sharedScheduler];
  v43 = sub_100135180(a10, a1, a2 & 1, a3 & 1);
  aBlock[0] = 0;
  v44 = [v42 submitTaskRequest:v43 error:aBlock];

  if (v44)
  {
    result = aBlock[0];
    *v62 = a1;
    *(v62 + 1) = v65;
    *(v62 + 2) = v63;
    *(v62 + 3) = v73;
    *(v62 + 7) = v74;
    *(v62 + 8) = a10;
    *(v62 + 16) = a4;
    *(v62 + 24) = v72;
    *(v62 + 32) = a6;
    *(v62 + 40) = a7;
    return result;
  }

  v51 = aBlock[0];
  _convertNSErrorToError(_:)();

  swift_willThrow();
  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v52 = type metadata accessor for Logger();
  sub_1000958E4(v52, qword_1005044D0);

  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v53, v54))
  {
    v55 = a1;
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    aBlock[0] = v57;
    *v56 = 136315138;
    if (v55)
    {
      if (v55 == 1)
      {
        v58 = "iced.viennaPresentmentReporting";
        v14 = 0xD00000000000002DLL;
      }

      else
      {
        v58 = "iced.viennaHeartbeatReporting";
      }
    }

    else
    {
      v14 = 0xD00000000000002FLL;
      v58 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    v60 = sub_1002FFA0C(v14, v58 | 0x8000000000000000, aBlock);

    *(v56 + 4) = v60;
    _os_log_impl(&_mh_execute_header, v53, v54, "Failed to submit task request with identifier %s", v56, 0xCu);
    sub_1000752F4(v57);
  }

  LOBYTE(aBlock[0]) = 1;
  sub_100134EB4();
  swift_willThrowTypedImpl();

LABEL_45:

  *a8 = 1;
  return result;
}

uint64_t sub_1001328DC(void *a1, uint64_t a2, uint64_t a3)
{
  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_1005044D0);
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v9 = *(a2 + 40);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v24 = a3;
    v25 = v8;
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    aBlock[0] = v13;
    *v12 = 136315138;
    v14 = "iced.viennaPresentmentReporting";
    v15 = 0xD00000000000002DLL;
    if (*a2 != 1)
    {
      v15 = 0xD000000000000020;
      v14 = "iced.viennaHeartbeatReporting";
    }

    if (*a2)
    {
      v16 = v15;
    }

    else
    {
      v16 = 0xD00000000000002FLL;
    }

    if (*a2)
    {
      v17 = v14;
    }

    else
    {
      v17 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    v18 = sub_1002FFA0C(v16, v17 | 0x8000000000000000, aBlock);

    *(v12 + 4) = v18;
    _os_log_impl(&_mh_execute_header, v10, v11, "Scheduled task %s is being launched", v12, 0xCu);
    sub_1000752F4(v13);

    a3 = v24;
    v8 = v25;
  }

  else
  {
  }

  v19 = swift_allocObject();
  v20 = *(a2 + 16);
  *(v19 + 24) = *a2;
  *(v19 + 16) = a3;
  *(v19 + 40) = v20;
  *(v19 + 56) = *(a2 + 32);
  *(v19 + 72) = a1;
  aBlock[4] = sub_100135310;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C7FB8;
  v21 = _Block_copy(aBlock);

  v22 = a1;

  [v22 setExpirationHandler:v21];
  _Block_release(v21);
  return v8(v22);
}

uint64_t sub_100132B9C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v5 - 8);
  v6 = *(v24 + 64);
  __chkstk_darwin(v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v9 = *(v23 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v23);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501980 != -1)
  {
    swift_once();
  }

  v13 = *(off_1005044C8 + 2);
  v14 = *(a2 + 24);
  v15 = *(a2 + 40);
  v16 = swift_allocObject();
  v17 = *(a2 + 16);
  *(v16 + 16) = *a2;
  *(v16 + 32) = v17;
  *(v16 + 48) = *(a2 + 32);
  *(v16 + 64) = a3;
  aBlock[4] = sub_100135368;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8008;
  v18 = _Block_copy(aBlock);
  v19 = v13;

  v20 = a3;
  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v18);

  (*(v24 + 8))(v8, v5);
  (*(v9 + 8))(v12, v23);
}

uint64_t sub_100132EC4(uint64_t a1, uint64_t a2)
{
  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  sub_1000958E4(v4, qword_1005044D0);
  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315138;
    v12 = "iced.viennaPresentmentReporting";
    v13 = 0xD00000000000002DLL;
    if (*a1 != 1)
    {
      v13 = 0xD000000000000020;
      v12 = "iced.viennaHeartbeatReporting";
    }

    if (*a1)
    {
      v14 = v13;
    }

    else
    {
      v14 = 0xD00000000000002FLL;
    }

    if (*a1)
    {
      v15 = v12;
    }

    else
    {
      v15 = "_MANAGED_BY_ALIRO_WALLET_";
    }

    v16 = sub_1002FFA0C(v14, v15 | 0x8000000000000000, &v18);

    *(v10 + 4) = v16;
    _os_log_impl(&_mh_execute_header, v8, v9, "Scheduled task %s has expired", v10, 0xCu);
    sub_1000752F4(v11);
  }

  return v6(a2);
}

uint64_t sub_10013309C()
{
  type metadata accessor for SESScheduledActivityManager();
  v0 = swift_allocObject();
  result = sub_1001331EC();
  off_1005044C8 = v0;
  return result;
}

uint64_t sub_1001330D8()
{

  return swift_deallocClassInstance();
}

__n128 sub_100133134(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_100133148(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_100133190(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1001331EC()
{
  v12 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v12 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v12);
  v3 = &v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for OS_dispatch_queue.Attributes();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v11 = sub_10006928C();
  static DispatchQoS.unspecified.getter();
  v14 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_10006A224(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v3, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v12);
  v8 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v9 = v13;
  *(v13 + 16) = v8;
  return v9;
}

uint64_t sub_100133444(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000020;
  v3 = *a1;
  v4 = "iced.viennaPresentmentReporting";
  if (v3 == 1)
  {
    v5 = 0xD00000000000002DLL;
  }

  else
  {
    v5 = 0xD000000000000020;
  }

  if (v3 == 1)
  {
    v6 = "iced.viennaPresentmentReporting";
  }

  else
  {
    v6 = "iced.viennaHeartbeatReporting";
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0xD00000000000002FLL;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = "_MANAGED_BY_ALIRO_WALLET_";
  }

  if (*a2 == 1)
  {
    v2 = 0xD00000000000002DLL;
  }

  else
  {
    v4 = "iced.viennaHeartbeatReporting";
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0xD00000000000002FLL;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = "_MANAGED_BY_ALIRO_WALLET_";
  }

  if (v7 == v9 && (v8 | 0x8000000000000000) == (v10 | 0x8000000000000000))
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int sub_100133520()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t sub_1001335BC()
{
  *v0;
  *v0;
  String.hash(into:)();
}

Swift::Int sub_100133644()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t sub_1001336DC@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1001353EC(*a1);
  *a2 = result;
  return result;
}

void sub_10013370C(unint64_t *a1@<X8>)
{
  v2 = 0xD000000000000020;
  v3 = "iced.viennaPresentmentReporting";
  if (*v1 == 1)
  {
    v2 = 0xD00000000000002DLL;
  }

  else
  {
    v3 = "iced.viennaHeartbeatReporting";
  }

  if (*v1)
  {
    v4 = v3;
  }

  else
  {
    v2 = 0xD00000000000002FLL;
    v4 = "_MANAGED_BY_ALIRO_WALLET_";
  }

  *a1 = v2;
  a1[1] = v4 | 0x8000000000000000;
}

uint64_t sub_100133768(uint64_t a1, uint64_t a2)
{
  v3[4] = a2;
  v3[5] = v2;
  v3[3] = a1;
  return _swift_task_switch(sub_10013378C, 0, 0);
}

uint64_t sub_10013378C()
{
  v28 = v0;
  v1 = *(v0 + 40);
  v2 = [objc_opt_self() sharedScheduler];
  v3 = *v1;
  v4 = String._bridgeToObjectiveC()();

  v5 = [v2 taskRequestForIdentifier:v4];

  if (v5)
  {
    v7 = *(v0 + 32);
    v6 = *(v0 + 40);
    v8 = *(v0 + 24);

    v9 = swift_task_alloc();
    *(v0 + 48) = v9;
    v9[2] = v6;
    v9[3] = v8;
    v9[4] = v7;
    v10 = async function pointer to withCheckedThrowingContinuation<A>(isolation:function:_:)[1];
    v11 = swift_task_alloc();
    *(v0 + 56) = v11;
    *v11 = v0;
    v11[1] = sub_100133B14;

    return withCheckedThrowingContinuation<A>(isolation:function:_:)(v11, 0, 0, 0x5F286C65636E6163, 0xEA0000000000293ALL, sub_100134F08, v9, &type metadata for () + 8);
  }

  else
  {
    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v12 = *(v0 + 40);
    v13 = type metadata accessor for Logger();
    sub_1000958E4(v13, qword_1005044D0);
    v14 = *(v12 + 24);
    v15 = *(v12 + 40);

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v27 = v19;
      *v18 = 136315138;
      v20 = 0xD00000000000002DLL;
      if (v3 == 1)
      {
        v21 = "iced.viennaPresentmentReporting";
      }

      else
      {
        v20 = 0xD000000000000020;
        v21 = "iced.viennaHeartbeatReporting";
      }

      if (v3)
      {
        v22 = v20;
      }

      else
      {
        v22 = 0xD00000000000002FLL;
      }

      if (v3)
      {
        v23 = v21;
      }

      else
      {
        v23 = "_MANAGED_BY_ALIRO_WALLET_";
      }

      v24 = sub_1002FFA0C(v22, v23 | 0x8000000000000000, &v27);

      *(v18 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v16, v17, "Attempted to cancel task with identifier %s that does not exist", v18, 0xCu);
      sub_1000752F4(v19);
    }

    *(v0 + 72) = 0;
    sub_100134EB4();
    swift_willThrowTypedImpl();
    v25 = *(v0 + 8);

    return v25(0);
  }
}

uint64_t sub_100133B14()
{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v7 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {
    v4 = sub_100133C48;
  }

  else
  {
    v5 = *(v2 + 48);

    v4 = sub_100133C30;
  }

  return _swift_task_switch(v4, 0, 0);
}

uint64_t sub_100133C48()
{
  v1 = *(v0 + 64);
  v2 = *(v0 + 48);

  *(v0 + 16) = v1;
  swift_errorRetain();
  sub_100068FC4(&unk_100503F80, &qword_100409CF0);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 64);

    v4 = *(v0 + 73);
    *(v0 + 75) = v4;
    sub_100134EB4();
    swift_willThrowTypedImpl();
    v5 = *(v0 + 16);
  }

  else
  {
    v6 = *(v0 + 16);

    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v7 = *(v0 + 64);
    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_1005044D0);
    swift_errorRetain();
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 64);
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      *v12 = 138412290;
      swift_errorRetain();
      v14 = _swift_stdlib_bridgeErrorToNSError();
      *(v12 + 4) = v14;
      *v13 = v14;
      _os_log_impl(&_mh_execute_header, v9, v10, "Unknown error caught %@", v12, 0xCu);
      sub_1000C2998(v13);
    }

    v15 = *(v0 + 64);

    v4 = 1;
    *(v0 + 74) = 1;
    sub_100134EB4();
    swift_willThrowTypedImpl();
  }

  v16 = *(v0 + 8);

  return v16(v4);
}

uint64_t sub_100133E84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26 = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v29 = *(v9 - 8);
  v10 = *(v29 + 64);
  __chkstk_darwin(v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v27 = *(v13 - 8);
  v28 = v13;
  v14 = *(v27 + 64);
  __chkstk_darwin(v13);
  v16 = &v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501980 != -1)
  {
    swift_once();
  }

  v17 = *(off_1005044C8 + 2);
  v18 = *(a5 + 24);
  v19 = *(a5 + 40);
  v20 = swift_allocObject();
  *(v20 + 16) = a1;
  *(v20 + 24) = a2;
  v21 = *(a5 + 16);
  *(v20 + 32) = *a5;
  *(v20 + 48) = v21;
  *(v20 + 64) = *(a5 + 32);
  *(v20 + 80) = v26;
  *(v20 + 88) = a4;
  aBlock[4] = sub_10013507C;
  aBlock[5] = v20;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C7EA0;
  v22 = _Block_copy(aBlock);
  v23 = v17;
  sub_100113B54(a1);

  static DispatchQoS.unspecified.getter();
  v30 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_10006A224(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);

  (*(v29 + 8))(v12, v9);
  (*(v27 + 8))(v16, v28);
}

uint64_t sub_1001341CC(void (*a1)(uint64_t), uint64_t a2, unsigned __int8 *a3, void (*a4)(uint64_t))
{
  if (a1)
  {

    a1(v6);
    sub_1000B2A4C(a1);
  }

  v7 = 0xD000000000000020;
  v8 = objc_opt_self();
  v9 = [v8 sharedScheduler];
  v60 = a3;
  v10 = *a3;
  v11 = "_MANAGED_BY_ALIRO_WALLET_";
  v12 = String._bridgeToObjectiveC()();

  aBlock[4] = sub_10013498C;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1000A409C;
  aBlock[3] = &unk_1004C7EC8;
  v13 = _Block_copy(aBlock);
  [v9 registerForTaskWithIdentifier:v12 usingQueue:0 launchHandler:v13];
  _Block_release(v13);

  v58 = v8;
  v14 = [v8 sharedScheduler];
  v15 = String._bridgeToObjectiveC()();

  aBlock[0] = 0;
  LODWORD(v13) = [v14 cancelTaskRequestWithIdentifier:v15 error:aBlock];

  v16 = v60;
  if (v13)
  {
    v17 = aBlock[0];
  }

  else
  {
    v18 = aBlock[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_1005044D0);
    v20 = *(v60 + 3);
    v21 = *(v60 + 5);

    swift_errorRetain();
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v27 = "iced.viennaPresentmentReporting";
      v28 = v26;
      aBlock[0] = v26;
      *v24 = 136315394;
      v29 = 0xD00000000000002DLL;
      if (v10 != 1)
      {
        v29 = 0xD000000000000020;
        v27 = "iced.viennaHeartbeatReporting";
      }

      if (v10)
      {
        v30 = v29;
      }

      else
      {
        v30 = 0xD00000000000002FLL;
      }

      if (v10)
      {
        v31 = v27;
      }

      else
      {
        v31 = "_MANAGED_BY_ALIRO_WALLET_";
      }

      v32 = sub_1002FFA0C(v30, v31 | 0x8000000000000000, aBlock);

      *(v24 + 4) = v32;
      *(v24 + 12) = 2112;
      swift_errorRetain();
      v33 = _swift_stdlib_bridgeErrorToNSError();
      *(v24 + 14) = v33;
      *v25 = v33;
      _os_log_impl(&_mh_execute_header, v22, v23, "Unable to cancel task with %s due to error %@", v24, 0x16u);
      sub_1000C2998(v25);

      sub_1000752F4(v28);
    }

    else
    {
    }

    a4(1);

    v11 = "_MANAGED_BY_ALIRO_WALLET_";
    v16 = v60;
  }

  v34 = [v58 sharedScheduler];
  v35 = String._bridgeToObjectiveC()();

  v36 = [v34 deregisterTaskWithIdentifier:v35];

  if ((v36 & 1) == 0)
  {
    if (qword_100501988 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000958E4(v37, qword_1005044D0);
    v38 = *(v16 + 3);
    v39 = *(v16 + 5);

    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock[0] = v43;
      *v42 = 136315138;
      v44 = 0xD00000000000002DLL;
      if (v10 == 1)
      {
        v45 = "iced.viennaPresentmentReporting";
      }

      else
      {
        v44 = 0xD000000000000020;
        v45 = "iced.viennaHeartbeatReporting";
      }

      if (v10)
      {
        v46 = v44;
      }

      else
      {
        v46 = 0xD00000000000002FLL;
      }

      if (v10)
      {
        v47 = v45;
      }

      else
      {
        v47 = "_MANAGED_BY_ALIRO_WALLET_";
      }

      v48 = sub_1002FFA0C(v46, v47 | 0x8000000000000000, aBlock);

      *(v42 + 4) = v48;
      _os_log_impl(&_mh_execute_header, v40, v41, "Unable to deregister task with identifier %s", v42, 0xCu);
      sub_1000752F4(v43);

      v11 = "_MANAGED_BY_ALIRO_WALLET_";
      v16 = v60;
    }

    else
    {
    }
  }

  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v49 = type metadata accessor for Logger();
  sub_1000958E4(v49, qword_1005044D0);
  v50 = *(v16 + 3);
  v51 = *(v16 + 5);

  v52 = Logger.logObject.getter();
  v53 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v52, v53))
  {
    v54 = swift_slowAlloc();
    v55 = swift_slowAlloc();
    aBlock[0] = v55;
    *v54 = 136315138;
    if (v10)
    {
      if (v10 == 1)
      {
        v7 = 0xD00000000000002DLL;
        v11 = "iced.viennaPresentmentReporting";
      }

      else
      {
        v11 = "iced.viennaHeartbeatReporting";
      }
    }

    else
    {
      v7 = 0xD00000000000002FLL;
    }

    v57 = sub_1002FFA0C(v7, v11 | 0x8000000000000000, aBlock);

    *(v54 + 4) = v57;
    _os_log_impl(&_mh_execute_header, v52, v53, "Cancelled task with identifier %s", v54, 0xCu);
    sub_1000752F4(v55);

    return (a4)(2);
  }

  else
  {

    return (a4)(2);
  }
}

id sub_10013498C(void *a1)
{
  v2 = swift_allocObject();
  *(v2 + 16) = a1;
  v10[4] = sub_1001350DC;
  v10[5] = v2;
  v10[0] = _NSConcreteStackBlock;
  v10[1] = 1107296256;
  v10[2] = sub_100080830;
  v10[3] = &unk_1004C7F18;
  v3 = _Block_copy(v10);
  v4 = a1;

  [v4 setExpirationHandler:v3];
  _Block_release(v3);
  if (qword_100501988 != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  sub_1000958E4(v5, qword_1005044D0);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "This task should be immediately removed", v8, 2u);
  }

  return [v4 setTaskCompleted];
}

uint64_t sub_100134B2C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v16 - v11;
  (*(v9 + 16))(&v16 - v11, a1, v8);
  v13 = (*(v9 + 80) + 16) & ~*(v9 + 80);
  v14 = swift_allocObject();
  (*(v9 + 32))(v14 + v13, v12, v8);
  sub_100133E84(a3, a4, sub_100134FA8, v14, a2);
}

uint64_t sub_100134C90(char a1)
{
  if (a1 != 2)
  {
    sub_100134EB4();
    swift_allocError();
    *v2 = a1 & 1;
    sub_100068FC4(&qword_1005045B0, &qword_10040B978);
    CheckedContinuation.resume(throwing:)();
  }

  sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  return CheckedContinuation.resume(returning:)();
}

unint64_t sub_100134D30()
{
  result = qword_100504590;
  if (!qword_100504590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504590);
  }

  return result;
}

unint64_t sub_100134D88()
{
  result = qword_100504598;
  if (!qword_100504598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504598);
  }

  return result;
}

unint64_t sub_100134DE0()
{
  result = qword_1005045A0;
  if (!qword_1005045A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005045A0);
  }

  return result;
}

uint64_t sub_100134E34()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_1005044D0);
  sub_1000958E4(v0, qword_1005044D0);
  return Logger.init(subsystem:category:)();
}

unint64_t sub_100134EB4()
{
  result = qword_1005045A8;
  if (!qword_1005045A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005045A8);
  }

  return result;
}

uint64_t sub_100134F14()
{
  v1 = sub_100068FC4(&qword_1005045B0, &qword_10040B978);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_100134FA8(char a1)
{
  v2 = *(*(sub_100068FC4(&qword_1005045B0, &qword_10040B978) - 8) + 80);

  return sub_100134C90(a1);
}

uint64_t sub_100135024()
{
  if (v0[2])
  {
    v1 = v0[3];
  }

  v2 = v0[7];

  v3 = v0[9];

  v4 = v0[11];

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_10013508C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1001350A4()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1001350EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_100135134()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

id sub_100135180(double a1, uint64_t a2, char a3, char a4)
{
  v7 = objc_allocWithZone(BGRepeatingSystemTaskRequest);
  v8 = String._bridgeToObjectiveC()();

  v9 = [v7 initWithIdentifier:v8];

  v10 = v9;
  [v10 setRequiresNetworkConnectivity:a3 & 1];
  [v10 setRequiresExternalPower:a4 & 1];
  [v10 setInterval:a1];
  [v10 setMinDurationBetweenInstances:a1 * 0.8];
  [v10 setPriority:1];

  return v10;
}

uint64_t sub_1001352C8()
{
  v1 = *(v0 + 48);

  v2 = *(v0 + 64);

  return _swift_deallocObject(v0, 80, 7);
}

uint64_t sub_100135320()
{
  v1 = *(v0 + 40);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 72, 7);
}

unint64_t sub_100135398()
{
  result = qword_1005045B8;
  if (!qword_1005045B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005045B8);
  }

  return result;
}

unint64_t sub_1001353EC(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&off_1004C3BA0, v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_100135460(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v23[0] = a3;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchQoS();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = v23 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a2;
  aBlock[4] = sub_10013582C;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8178;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  swift_errorRetain();
  static DispatchQoS.unspecified.getter();
  v23[1] = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v10 + 8))(v13, v9);
  (*(v15 + 8))(v18, v14);
}

void sub_1001356EC(void *a1, void (*a2)(id, uint64_t), uint64_t a3, void *a4)
{
  if (a1)
  {
    v9 = a1;
    v6 = a1;
    v7 = 0;
LABEL_3:
    a2(v6, v7);

    return;
  }

  if (!a4)
  {
    sub_1000B9C54();
    v6 = sub_10030990C(0, 1, 0x75736F6C63206F4ELL, 0xEA00000000006572, 0);
    v9 = v6;
    v7 = 1;
    goto LABEL_3;
  }

  swift_errorRetain();
  a2(a4, 1);
}

uint64_t sub_1001357E4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_100135838(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_100135850(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for NSManagedObjectContext.ScheduledTaskType();
  v5[7] = v6;
  v7 = *(v6 - 8);
  v5[8] = v7;
  v8 = *(v7 + 64) + 15;
  v5[9] = swift_task_alloc();

  return _swift_task_switch(sub_100135918, v4, 0);
}

uint64_t sub_100135918()
{
  v1 = v0[6];
  v2 = sub_10035E904();
  v0[10] = v2;
  v3 = v2;
  v4 = v0[8];
  v16 = v0[9];
  v6 = v0[6];
  v5 = v0[7];
  v8 = v0[4];
  v7 = v0[5];
  v9 = v0[2];
  v10 = v0[3];
  v11 = swift_allocObject();
  v0[11] = v11;
  v11[2] = v6;
  v11[3] = v9;
  v11[4] = v10;
  v11[5] = v3;
  v11[6] = v8;
  v11[7] = v7;
  (*(v4 + 104))(v16, enum case for NSManagedObjectContext.ScheduledTaskType.immediate(_:), v5);
  v12 = async function pointer to NSManagedObjectContext.perform<A>(schedule:_:)[1];

  v3;

  v13 = swift_task_alloc();
  v0[12] = v13;
  *v13 = v0;
  v13[1] = sub_100135ADC;
  v14 = v0[9];

  return NSManagedObjectContext.perform<A>(schedule:_:)();
}

uint64_t sub_100135ADC()
{
  v2 = *v1;
  v3 = *(*v1 + 96);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 72);
  v6 = *(*v1 + 64);
  v7 = *(*v1 + 56);
  v8 = *v1;
  *(*v1 + 104) = v0;

  (*(v6 + 8))(v5, v7);

  v9 = *(v2 + 48);
  if (v0)
  {
    v10 = sub_100135CF4;
  }

  else
  {
    v10 = sub_100135C88;
  }

  return _swift_task_switch(v10, v9, 0);
}

uint64_t sub_100135C88()
{
  v1 = *(v0 + 72);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_100135CF4()
{
  v1 = *(v0 + 104);
  v2 = *(v0 + 72);

  v3 = *(v0 + 8);

  return v3();
}

void sub_100135D60(uint64_t a1, uint64_t a2, unint64_t a3, void *a4)
{
  v8 = sub_1001362D4(a2, a3);
  if (!v4)
  {
    if (v8)
    {

      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v9 = type metadata accessor for Logger();
      sub_1000958E4(v9, qword_10051B2C8);

      v10 = Logger.logObject.getter();
      v11 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v10, v11))
      {
        v12 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v31 = v13;
        *v12 = 136315138;
        *(v12 + 4) = sub_1002FFA0C(a2, a3, &v31);
        _os_log_impl(&_mh_execute_header, v10, v11, "Attempted to add duplicate application %s", v12, 0xCu);
        sub_1000752F4(v13);

LABEL_13:

        return;
      }
    }

    else
    {
      type metadata accessor for SecureElementApplicationEntity();
      v10 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithContext:a4];
      v14 = String._bridgeToObjectiveC()();
      [v10 setIdentifier:v14];

      v15 = String._bridgeToObjectiveC()();
      [v10 setBundleIdentifier:v15];

      [v10 setGdprVersionShown:0];
      v31 = 0;
      if ([a4 save:&v31])
      {
        v16 = v31;
        [a4 refreshAllObjects];
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v17 = type metadata accessor for Logger();
        sub_1000958E4(v17, qword_10051B2C8);

        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          v31 = v21;
          *v20 = 136315138;
          *(v20 + 4) = sub_1002FFA0C(a2, a3, &v31);
          _os_log_impl(&_mh_execute_header, v18, v19, "Successfully added new allowed application %s", v20, 0xCu);
          sub_1000752F4(v21);
        }

        goto LABEL_13;
      }

      v22 = v31;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      [a4 reset];
      if (qword_1005019D8 != -1)
      {
        swift_once();
      }

      v23 = type metadata accessor for Logger();
      sub_1000958E4(v23, qword_10051B2C8);
      swift_errorRetain();
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        v31 = swift_slowAlloc();
        *v26 = 136315394;
        *(v26 + 4) = sub_1002FFA0C(0xD00000000000001ELL, 0x8000000100463D20, &v31);
        *(v26 + 12) = 2080;
        swift_getErrorValue();
        v27 = Error.localizedDescription.getter();
        v29 = sub_1002FFA0C(v27, v28, &v31);

        *(v26 + 14) = v29;
        _os_log_impl(&_mh_execute_header, v24, v25, "%s: CoreData error %s encountered while saving view context", v26, 0x16u);
        swift_arrayDestroy();
      }

      sub_10009591C();
      swift_allocError();
      *v30 = 0;
      swift_willThrow();
    }
  }
}

id sub_1001362D4(uint64_t a1, unint64_t a2)
{
  v6 = sub_100137BA4(0);
  if (v2)
  {
    return v3;
  }

  v7 = v6;
  v30 = a1;
  v31 = _swiftEmptyArrayStorage;
  if (v6 >> 62)
  {
    goto LABEL_24;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v9 = 0;
    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {
        v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_23;
        }

        v10 = *(v7 + 8 * v9 + 32);
      }

      v11 = v10;
      v12 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      v13 = [v10 identifier];
      if (v13)
      {
        v14 = a2;
        v15 = v13;
        v16 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v18 = v17;

        a2 = v14;
        if (v16 == v30 && v18 == v14)
        {

LABEL_19:
          specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
          v21 = v31[2];
          specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
          specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          specialized ContiguousArray._endMutation()();
          goto LABEL_6;
        }

        v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v20)
        {
          goto LABEL_19;
        }
      }

LABEL_6:
      ++v9;
      if (v12 == i)
      {
        v22 = v31;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    ;
  }

  v22 = _swiftEmptyArrayStorage;
LABEL_26:

  if ((v22 & 0x8000000000000000) != 0 || (v22 & 0x4000000000000000) != 0)
  {
    if (_CocoaArrayWrapper.endIndex.getter())
    {
      goto LABEL_29;
    }
  }

  else if (*(v22 + 16))
  {
LABEL_29:
    if ((v22 & 0xC000000000000001) != 0)
    {
      v23 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_32;
    }

    if (*(v22 + 16))
    {
      v23 = *(v22 + 32);
LABEL_32:
      v3 = v23;

      return v3;
    }

    __break(1u);
    goto LABEL_41;
  }

  if (qword_1005019D8 != -1)
  {
LABEL_41:
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  sub_1000958E4(v24, qword_10051B2C8);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1002FFA0C(v30, a2, &v31);
    _os_log_impl(&_mh_execute_header, v25, v26, "No matching application with identifier %s", v27, 0xCu);
    sub_1000752F4(v28);
  }

  return 0;
}

void sub_10013662C(void *a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *(a2 + 144);
  v9 = *(a2 + 152);
  v10 = objc_allocWithZone(NSFetchRequest);
  v11 = String._bridgeToObjectiveC()();
  v12 = [v10 initWithEntityName:v11];

  type metadata accessor for SecureElementApplicationEntity();
  v13 = NSManagedObjectContext.fetch<A>(_:)();

  if (v4)
  {
    return;
  }

  v48 = a1;
  v49 = a3;
  if (v13 >> 62)
  {
LABEL_32:
    v14 = _CocoaArrayWrapper.endIndex.getter();
    if (v14)
    {
      goto LABEL_4;
    }

LABEL_33:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v43 = type metadata accessor for Logger();
    sub_1000958E4(v43, qword_10051B2C8);

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v46 = 136315394;
      *(v46 + 4) = sub_1002FFA0C(0xD000000000000023, 0x8000000100463D40, &v50);
      *(v46 + 12) = 2080;
      *(v46 + 14) = sub_1002FFA0C(v49, a4, &v50);
      _os_log_impl(&_mh_execute_header, v44, v45, "%s: Application %s does not exist", v46, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v47 = 20;
    swift_willThrow();
    return;
  }

  v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v14)
  {
    goto LABEL_33;
  }

LABEL_4:
  v15 = 0;
  while (1)
  {
    if ((v13 & 0xC000000000000001) != 0)
    {
      v16 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v16 = *(v13 + 8 * v15 + 32);
    }

    v17 = v16;
    v18 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v19 = [v16 identifier];
    if (!v19)
    {
      goto LABEL_5;
    }

    v20 = v19;
    v21 = v17;
    v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v24 = v23;

    if (v22 == v49 && v24 == a4)
    {
      break;
    }

    v26 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v17 = v21;
    if (v26)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v15;
    if (v18 == v14)
    {
      goto LABEL_33;
    }
  }

LABEL_19:

  v27 = v21;
  [v48 deleteObject:v21];
  v50 = 0;
  if ([v48 save:&v50])
  {
    v28 = v50;
    [v48 refreshAllObjects];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v29 = type metadata accessor for Logger();
    sub_1000958E4(v29, qword_10051B2C8);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v50 = v33;
      *v32 = 136315138;
      *(v32 + 4) = sub_1002FFA0C(v49, a4, &v50);
      _os_log_impl(&_mh_execute_header, v30, v31, "Successfully deleted application %s from persistent container", v32, 0xCu);
      sub_1000752F4(v33);
    }
  }

  else
  {
    v34 = v50;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v48 reset];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    sub_1000958E4(v35, qword_10051B2C8);
    swift_errorRetain();
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      *v38 = 136315394;
      *(v38 + 4) = sub_1002FFA0C(0xD000000000000023, 0x8000000100463D40, &v50);
      *(v38 + 12) = 2080;
      swift_getErrorValue();
      v39 = Error.localizedDescription.getter();
      v41 = sub_1002FFA0C(v39, v40, &v50);

      *(v38 + 14) = v41;
      _os_log_impl(&_mh_execute_header, v36, v37, "%s: CoreData error %s encountered while saving view context", v38, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v42 = 0;
    swift_willThrow();
  }
}

void sub_100136D04(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6)
{
  v12 = *(a2 + 144);
  v13 = *(a2 + 152);
  v14 = objc_allocWithZone(NSFetchRequest);
  v15 = String._bridgeToObjectiveC()();
  v16 = [v14 initWithEntityName:v15];

  type metadata accessor for SecureElementApplicationEntity();
  v17 = NSManagedObjectContext.fetch<A>(_:)();

  if (v6)
  {
    return;
  }

  v52 = a1;
  v53 = a5;
  v54 = a6;
  v55 = a3;
  if (v17 >> 62)
  {
LABEL_32:
    v18 = _CocoaArrayWrapper.endIndex.getter();
    if (v18)
    {
      goto LABEL_4;
    }

LABEL_33:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v47 = type metadata accessor for Logger();
    sub_1000958E4(v47, qword_10051B2C8);

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v50 = 136315394;
      *(v50 + 4) = sub_1002FFA0C(0xD000000000000015, 0x8000000100463D00, &v56);
      *(v50 + 12) = 2080;
      *(v50 + 14) = sub_1002FFA0C(v55, a4, &v56);
      _os_log_impl(&_mh_execute_header, v48, v49, "%s: Application %s does not exist", v50, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v51 = 6;
    swift_willThrow();
    return;
  }

  v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v18)
  {
    goto LABEL_33;
  }

LABEL_4:
  v19 = 0;
  while (1)
  {
    if ((v17 & 0xC000000000000001) != 0)
    {
      v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v19 >= *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v20 = *(v17 + 8 * v19 + 32);
    }

    v21 = v20;
    v22 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v23 = [v20 identifier];
    if (!v23)
    {
      goto LABEL_5;
    }

    v24 = v23;
    v25 = v21;
    v26 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v28 = v27;

    if (v26 == v55 && v28 == a4)
    {
      break;
    }

    v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v21 = v25;
    if (v30)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v19;
    if (v22 == v18)
    {
      goto LABEL_33;
    }
  }

LABEL_19:

  v31 = String._bridgeToObjectiveC()();
  v32 = v25;
  [v25 setBundleIdentifier:v31];

  v56 = 0;
  if ([v52 save:&v56])
  {
    v33 = v56;
    [v52 refreshAllObjects];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v34 = type metadata accessor for Logger();
    sub_1000958E4(v34, qword_10051B2C8);

    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v37 = 136315394;
      *(v37 + 4) = sub_1002FFA0C(v53, v54, &v56);
      *(v37 + 12) = 2080;
      *(v37 + 14) = sub_1002FFA0C(v55, a4, &v56);
      _os_log_impl(&_mh_execute_header, v35, v36, "Successfully updated bundleId %s to appId %s", v37, 0x16u);
      swift_arrayDestroy();
    }
  }

  else
  {
    v38 = v56;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v52 reset];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    sub_1000958E4(v39, qword_10051B2C8);
    swift_errorRetain();
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v56 = swift_slowAlloc();
      *v42 = 136315394;
      *(v42 + 4) = sub_1002FFA0C(0xD000000000000015, 0x8000000100463D00, &v56);
      *(v42 + 12) = 2080;
      swift_getErrorValue();
      v43 = Error.localizedDescription.getter();
      v45 = sub_1002FFA0C(v43, v44, &v56);

      *(v42 + 14) = v45;
      v32 = v25;
      _os_log_impl(&_mh_execute_header, v40, v41, "%s: CoreData error %s encountered while saving view context", v42, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v46 = 0;
    swift_willThrow();
  }
}

void sub_100137444(void *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  v10 = *(a2 + 144);
  v11 = *(a2 + 152);
  v12 = objc_allocWithZone(NSFetchRequest);
  v13 = String._bridgeToObjectiveC()();
  v14 = [v12 initWithEntityName:v13];

  type metadata accessor for SecureElementApplicationEntity();
  v15 = NSManagedObjectContext.fetch<A>(_:)();

  if (v5)
  {
    return;
  }

  v46 = a1;
  v47 = a3;
  v45 = a5;
  if (v15 >> 62)
  {
LABEL_29:
    v16 = _CocoaArrayWrapper.endIndex.getter();
    if (v16)
    {
      goto LABEL_4;
    }

LABEL_30:

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v40 = type metadata accessor for Logger();
    sub_1000958E4(v40, qword_10051B2C8);

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v43 = 136315394;
      *(v43 + 4) = sub_1002FFA0C(0xD000000000000025, 0x8000000100463CA0, &v48);
      *(v43 + 12) = 2080;
      *(v43 + 14) = sub_1002FFA0C(v47, a4, &v48);
      _os_log_impl(&_mh_execute_header, v41, v42, "%s: Application %s does not exist", v43, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v44 = 6;
    swift_willThrow();
    return;
  }

  v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v16)
  {
    goto LABEL_30;
  }

LABEL_4:
  v17 = 0;
  while (1)
  {
    if ((v15 & 0xC000000000000001) != 0)
    {
      v18 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v17 >= *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_28;
      }

      v18 = *(v15 + 8 * v17 + 32);
    }

    v19 = v18;
    v20 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      __break(1u);
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    v21 = [v18 identifier];
    if (!v21)
    {
      goto LABEL_5;
    }

    v22 = v21;
    v23 = v19;
    v24 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v26 = v25;

    if (v24 == v47 && v26 == a4)
    {
      break;
    }

    v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v19 = v23;
    if (v28)
    {
      goto LABEL_19;
    }

LABEL_5:

    ++v17;
    if (v20 == v16)
    {
      goto LABEL_30;
    }
  }

LABEL_19:

  v29 = v23;
  [v23 setGdprVersionShown:v45];
  v48 = 0;
  if ([v46 save:&v48])
  {
    v30 = v48;
    [v46 refreshAllObjects];
  }

  else
  {
    v31 = v48;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    [v46 reset];
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    sub_1000958E4(v32, qword_10051B2C8);
    swift_errorRetain();
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      v48 = swift_slowAlloc();
      *v35 = 136315394;
      *(v35 + 4) = sub_1002FFA0C(0xD000000000000025, 0x8000000100463CA0, &v48);
      *(v35 + 12) = 2080;
      swift_getErrorValue();
      v36 = Error.localizedDescription.getter();
      v38 = sub_1002FFA0C(v36, v37, &v48);

      *(v35 + 14) = v38;
      _os_log_impl(&_mh_execute_header, v33, v34, "%s: CoreData error %s encountered while saving view context", v35, 0x16u);
      swift_arrayDestroy();
      v29 = v23;
    }

    sub_10009591C();
    swift_allocError();
    *v39 = 0;
    swift_willThrow();
  }
}

id sub_100137A14(uint64_t a1, unint64_t a2)
{
  v5 = sub_1001362D4(a1, a2);
  if (v2)
  {
    return 0;
  }

  if (!v5)
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_10051B2C8);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v14 = v13;
      *v12 = 136315138;
      *(v12 + 4) = sub_1002FFA0C(a1, a2, &v14);
      _os_log_impl(&_mh_execute_header, v10, v11, "No matching application with identifier %s", v12, 0xCu);
      sub_1000752F4(v13);
    }

    return 0;
  }

  v7 = v5;
  type metadata accessor for ApplicationInfoInternal();
  v8 = sub_100137F6C(v7);

  return v8;
}

uint64_t sub_100137BA4(void *a1)
{
  v3 = v2;
  v5 = *(v1 + 144);
  v6 = *(v1 + 152);
  v7 = objc_allocWithZone(NSFetchRequest);
  v8 = String._bridgeToObjectiveC()();
  v9 = [v7 initWithEntityName:v8];

  if (a1)
  {
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_100409E40;
    *(v10 + 32) = a1;
    sub_100137EAC();
    v11 = a1;
    isa = Array._bridgeToObjectiveC()().super.isa;

    [v9 setSortDescriptors:isa];
  }

  v13 = sub_10035E904();
  if (v2)
  {

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    sub_1000958E4(v15, qword_10051B2C8);
    swift_errorRetain();
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1002FFA0C(0xD000000000000021, 0x8000000100463CD0, &v24);
      *(v18 + 12) = 2080;
      swift_getErrorValue();
      v19 = Error.localizedDescription.getter();
      v21 = sub_1002FFA0C(v19, v20, &v24);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, v16, v17, "%s: CoreData error %s encountered while fetching entity", v18, 0x16u);
      swift_arrayDestroy();
    }

    sub_10009591C();
    swift_allocError();
    *v22 = 0;
    swift_willThrow();
  }

  else
  {
    v14 = v13;
    type metadata accessor for SecureElementApplicationEntity();
    v3 = NSManagedObjectContext.fetch<A>(_:)();
  }

  return v3;
}

unint64_t sub_100137EAC()
{
  result = qword_1005045C0;
  if (!qword_1005045C0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1005045C0);
  }

  return result;
}

uint64_t sub_100137EF8()
{
  v1 = *(v0 + 16);

  v2 = *(v0 + 32);

  v3 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

void sub_100137F48()
{
  v1 = *(v0 + 48);
  v2 = *(v0 + 56);
  sub_100135D60(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
}

id sub_100137F6C(void *a1)
{
  result = [a1 identifier];
  if (result)
  {
    v3 = result;
    static String._unconditionallyBridgeFromObjectiveC(_:)();

    v4 = [a1 bundleIdentifier];
    if (v4)
    {
      v5 = v4;
      static String._unconditionallyBridgeFromObjectiveC(_:)();
    }

    [a1 gdprVersionShown];
    return dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();
  }

  return result;
}

uint64_t sub_100138040(uint64_t *a1)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = v3 >> 62;
  if ((v3 >> 62) <= 1)
  {
    if (!v5)
    {
      sub_10006A178(v4, v3);
      *&bytes = v4;
      WORD4(bytes) = v3;
      BYTE10(bytes) = BYTE2(v3);
      BYTE11(bytes) = BYTE3(v3);
      BYTE12(bytes) = BYTE4(v3);
      BYTE13(bytes) = BYTE5(v3);
      BYTE14(bytes) = BYTE6(v3);
      result = SecRandomCopyBytes(kSecRandomDefault, BYTE6(v3), &bytes);
      v7 = DWORD2(bytes) | ((WORD6(bytes) | (BYTE14(bytes) << 16)) << 32);
      *a1 = bytes;
      a1[1] = v7;
      return result;
    }

    v10 = v3 & 0x3FFFFFFFFFFFFFFFLL;

    sub_10006A178(v4, v3);
    *a1 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    v11 = v4 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v11 < v4)
      {
LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v4, __DataStorage._offset.getter()))
      {
LABEL_19:
        __break(1u);
      }

      v12 = type metadata accessor for __DataStorage();
      v13 = *(v12 + 48);
      v14 = *(v12 + 52);
      swift_allocObject();
      v15 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v10 = v15;
    }

    if (v11 >= v4)
    {

      v16 = sub_100138360(v4, v4 >> 32);

      *a1 = v4;
      a1[1] = v10 | 0x4000000000000000;
      if (!v1)
      {
        return v16;
      }

      return result;
    }

    __break(1u);
    goto LABEL_18;
  }

  if (v5 == 2)
  {
    v8 = *a1;

    sub_10006A178(v4, v3);
    *&bytes = v4;
    *(&bytes + 1) = v3 & 0x3FFFFFFFFFFFFFFFLL;
    *a1 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v9 = *(&bytes + 1);
    result = sub_100138360(*(bytes + 16), *(bytes + 24));
    *a1 = bytes;
    a1[1] = v9 | 0x8000000000000000;
  }

  else
  {
    *(&bytes + 7) = 0;
    *&bytes = 0;
    return SecRandomCopyBytes(kSecRandomDefault, 0, &bytes);
  }

  return result;
}

uint64_t sub_100138360(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_10;
  }

  v5 = result;
  result = __DataStorage._offset.getter();
  v6 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_9;
  }

  v7 = __OFSUB__(a2, a1);
  v8 = a2 - a1;
  if (v7)
  {
LABEL_9:
    __break(1u);
LABEL_10:
    __break(1u);
    return result;
  }

  v9 = __DataStorage._length.getter();
  if (v9 >= v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = v9;
  }

  return SecRandomCopyBytes(kSecRandomDefault, v10, (v5 + v6));
}

uint64_t sub_1001383EC(uint64_t a1)
{
  v6 = sub_1000B07FC(a1);
  v7 = v1;
  v2 = sub_100138040(&v6);
  if (!v2)
  {
    return v6;
  }

  v3 = v2;
  sub_1000B9C54();
  _StringGuts.grow(_:)(37);

  v8 = v3;
  v4._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v4);

  sub_10030990C(0, 1, 0xD000000000000023, 0x8000000100463D70, 0);
  swift_willThrow();
  return sub_10006A178(v6, v7);
}

uint64_t sub_1001384E4(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 16);
  v4 = _swiftEmptyArrayStorage;
  if (!v3)
  {
    return v4;
  }

  v5 = a1;
  sub_10019F594(0, v3, 0);
  v4 = _swiftEmptyArrayStorage;
  v6 = v5 + 64;
  v7 = -1 << *(v5 + 32);
  result = _HashTable.startBucket.getter();
  v9 = result;
  v10 = 0;
  v38 = *(v5 + 36);
  v31 = v5 + 72;
  v32 = v3;
  v33 = v5 + 64;
  v34 = v5;
  while ((v9 & 0x8000000000000000) == 0 && v9 < 1 << *(v5 + 32))
  {
    v12 = v9 >> 6;
    if ((*(v6 + 8 * (v9 >> 6)) & (1 << v9)) == 0)
    {
      goto LABEL_22;
    }

    if (v38 != *(v5 + 36))
    {
      goto LABEL_23;
    }

    v37 = v4;
    v35 = v10;
    v13 = (*(v5 + 48) + 16 * v9);
    v15 = *v13;
    v14 = v13[1];
    v16 = *(*(v5 + 56) + 8 * v9);
    sub_100069E2C(*v13, v14);

    v36 = v2;
    sub_100288788(v15, v14);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v17 = BidirectionalCollection<>.joined(separator:)();
    v19 = v18;

    v20 = v15;
    v4 = v37;
    sub_10006A178(v20, v14);

    v22 = v37[2];
    v21 = v37[3];
    if (v22 >= v21 >> 1)
    {
      result = sub_10019F594((v21 > 1), v22 + 1, 1);
      v4 = v37;
    }

    v4[2] = v22 + 1;
    v23 = &v4[3 * v22];
    v23[4] = v17;
    v23[5] = v19;
    v23[6] = v16;
    v5 = v34;
    v11 = 1 << *(v34 + 32);
    if (v9 >= v11)
    {
      goto LABEL_24;
    }

    v6 = v33;
    v24 = *(v33 + 8 * v12);
    if ((v24 & (1 << v9)) == 0)
    {
      goto LABEL_25;
    }

    if (v38 != *(v34 + 36))
    {
      goto LABEL_26;
    }

    v25 = v24 & (-2 << (v9 & 0x3F));
    if (v25)
    {
      v11 = __clz(__rbit64(v25)) | v9 & 0x7FFFFFFFFFFFFFC0;
      v2 = v36;
    }

    else
    {
      v26 = v12 << 6;
      v27 = v12 + 1;
      v28 = (v31 + 8 * v12);
      v2 = v36;
      while (v27 < (v11 + 63) >> 6)
      {
        v30 = *v28++;
        v29 = v30;
        v26 += 64;
        ++v27;
        if (v30)
        {
          result = sub_1000937D4(v9, v38, 0);
          v11 = __clz(__rbit64(v29)) + v26;
          goto LABEL_4;
        }
      }

      result = sub_1000937D4(v9, v38, 0);
    }

LABEL_4:
    v10 = v35 + 1;
    v9 = v11;
    if (v35 + 1 == v32)
    {
      return v4;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

id sub_100138800()
{
  ObjectType = swift_getObjectType();
  v1 = type metadata accessor for OS_dispatch_queue.Attributes();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1);
  v3 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS.QoSClass();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for DispatchQoS();
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v19 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue;
  v15 = sub_10009393C(0, &qword_100501E50, OS_dispatch_queue_ptr);
  v18[1] = "_registeredAppIdentifiers";
  v18[2] = v15;
  (*(v9 + 104))(v12, enum case for DispatchQoS.QoSClass.default(_:), v8);
  DispatchQoS.init(qosClass:relativePriority:)();
  (*(v4 + 104))(v7, enum case for OS_dispatch_queue.AutoreleaseFrequency.workItem(_:), v3);
  v22 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005064A0, &type metadata accessor for OS_dispatch_queue.Attributes);
  sub_100068FC4(&unk_100501E60, &qword_100408C30);
  sub_100075C60(&qword_1005064B0, &unk_100501E60, &qword_100408C30);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  *&v0[v19] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appLaunchRuntimeSeconds] = 0x4000000000000000;
  *&v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor] = 0;
  *&v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_assertionTimers] = &_swiftEmptyDictionarySingleton;
  v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning] = 0;
  v16 = &v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_lastCheckBootUUIDKey];
  *v16 = 0xD00000000000001BLL;
  v16[1] = 0x8000000100463ED0;
  *&v0[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_registeredAppIdentifiersPerKey] = &_swiftEmptyDictionarySingleton;
  v22 = &_swiftEmptySetSingleton;
  sub_100068FC4(&qword_100504670, &unk_10040BAF0);
  sub_10013E018(&qword_100504678);
  sub_10013E018(&qword_100504680);
  UserDefaultBackedCodable.init(suiteName:key:initial:)();
  v22 = &_swiftEmptySetSingleton;
  UserDefaultBackedCodable.init(suiteName:key:initial:)();
  v21.receiver = v0;
  v21.super_class = ObjectType;
  return objc_msgSendSuper2(&v21, "init");
}

id sub_100138CEC()
{
  result = [objc_allocWithZone(type metadata accessor for CarKeyAppLauncher()) init];
  qword_10051B2B8 = result;
  return result;
}

void sub_100138D20()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v27 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v1[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if (v12)
  {
    v14 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning;
    if ((v1[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning] & 1) == 0)
    {
      v27[1] = v13;
      v15 = objc_opt_self();
      v16 = *&v1[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_lastCheckBootUUIDKey];
      v17 = *&v1[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_lastCheckBootUUIDKey + 8];
      v18 = String._bridgeToObjectiveC()();
      v19 = [v15 isFirstLaunchAfterBootForKey:v18];

      if (v19)
      {
        v20 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__registeredAppIdentifiers;
        swift_beginAccess();
        (*(v3 + 16))(v6, &v1[v20], v2);
        UserDefaultBackedCodable.wrappedValue.getter();
        (*(v3 + 8))(v6, v2);
        v28 = aBlock[0];
        swift_beginAccess();
        UserDefaultBackedCodable.wrappedValue.setter();
        swift_endAccess();
        v21 = String._bridgeToObjectiveC()();
        [v15 setFirstLaunchAfterBootDoneForKey:v21];
      }

      v1[v14] = 1;
      sub_10013912C();
      v22 = swift_allocObject();
      *(v22 + 16) = v1;
      aBlock[4] = sub_10013F1B4;
      aBlock[5] = v22;
      aBlock[0] = _NSConcreteStackBlock;
      aBlock[1] = 1107296256;
      aBlock[2] = sub_100193978;
      aBlock[3] = &unk_1004C84C0;
      v23 = _Block_copy(aBlock);
      v24 = v1;

      os_state_add_handler();
      _Block_release(v23);
      v25 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
      swift_beginAccess();
      (*(v3 + 16))(v6, &v24[v25], v2);
      UserDefaultBackedCodable.wrappedValue.getter();
      (*(v3 + 8))(v6, v2);
      v26 = *(v28 + 16);

      if (v26)
      {
        sub_10013A69C();
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_10013912C()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = v143 - v5;
  v7 = type metadata accessor for DispatchPredicate();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = (v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v1[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  *v11 = v12;
  (*(v8 + 104))(v11, enum case for DispatchPredicate.onQueue(_:), v7);
  v13 = v12;
  LOBYTE(v12) = _dispatchPreconditionTest(_:)();
  (*(v8 + 8))(v11, v7);
  if ((v12 & 1) == 0)
  {
    goto LABEL_116;
  }

  if (![objc_opt_self() isPassLibraryAvailable])
  {
    if (qword_100501998 != -1)
    {
      goto LABEL_117;
    }

    goto LABEL_10;
  }

  v14 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_registeredAppIdentifiersPerKey;
  swift_beginAccess();
  v15 = *&v1[v14];
  v171 = v14;
  *&v1[v14] = &_swiftEmptyDictionarySingleton;

  v146 = [objc_allocWithZone(PKPassLibrary) init];
  v16 = [v146 passes];
  sub_10009393C(0, &qword_100504708, PKPass_ptr);
  v17 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v18 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__registeredAppIdentifiers;
  swift_beginAccess();
  (*(v3 + 16))(v6, &v1[v18], v2);
  UserDefaultBackedCodable.wrappedValue.getter();
  (*(v3 + 8))(v6, v2);
  v19 = *(v174[0] + 56);
  v148 = v174[0] + 56;
  v20 = 1 << *(v174[0] + 32);
  if (v20 < 64)
  {
    v21 = ~(-1 << v20);
  }

  else
  {
    v21 = -1;
  }

  v22 = v21 & v19;
  v147 = (v20 + 63) >> 6;
  v23 = v17 & 0xFFFFFFFFFFFFFF8;
  v158 = v17 & 0xFFFFFFFFFFFFFF8;
  if (v17 < 0)
  {
    v23 = v17;
  }

  v143[1] = v23;
  v157 = v17 & 0xC000000000000001;
  v144 = v17;
  v156 = v17 + 32;
  v145 = v174[0];

  v24 = 0;
  v160 = xmmword_1004098F0;
  v161 = v1;
  while (1)
  {
    if (!v22)
    {
      do
      {
        v29 = v24 + 1;
        if (__OFADD__(v24, 1))
        {
          goto LABEL_115;
        }

        if (v29 >= v147)
        {

          if (qword_100501998 != -1)
          {
            swift_once();
          }

          v132 = type metadata accessor for Logger();
          sub_1000958E4(v132, qword_1005045D0);
          v133 = v1;
          v134 = Logger.logObject.getter();
          v135 = static os_log_type_t.info.getter();

          if (os_log_type_enabled(v134, v135))
          {
            v136 = swift_slowAlloc();
            v137 = swift_slowAlloc();
            v174[0] = v137;
            *v136 = 136315138;
            v138 = *&v1[v171];

            sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
            sub_1000E1E80();
            v139 = Dictionary.description.getter();
            v141 = v140;

            v142 = sub_1002FFA0C(v139, v141, v174);

            *(v136 + 4) = v142;
            _os_log_impl(&_mh_execute_header, v134, v135, "Updated apps per keys %s", v136, 0xCu);
            sub_1000752F4(v137);
          }

          return;
        }

        v22 = *(v148 + 8 * v29);
        ++v24;
      }

      while (!v22);
      v24 = v29;
    }

    v150 = v22;
    v30 = *(v145 + 48);
    v149 = v24;
    v31 = (v30 + ((v24 << 10) | (16 * __clz(__rbit64(v22)))));
    v33 = *v31;
    v32 = v31[1];

    v166 = v33;
    v167 = v32;
    v34 = String._bridgeToObjectiveC()();
    v35 = [v146 passUniqueIDsForAssociatedApplicationIdentifier:v34];

    if (v35)
    {
      break;
    }

LABEL_14:
    v22 = (v150 - 1) & v150;

    v24 = v149;
  }

  v36 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v175 = _swiftEmptyArrayStorage;
  if (!(v144 >> 62))
  {
    v37 = *(v158 + 16);
    if (v37)
    {
      goto LABEL_23;
    }

LABEL_50:
    v155 = _swiftEmptyArrayStorage;
LABEL_51:

    v1 = v161;
    if (!(v155 >> 62))
    {
      v59 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v59)
      {
        goto LABEL_53;
      }

      goto LABEL_13;
    }

    v59 = _CocoaArrayWrapper.endIndex.getter();
    if (!v59)
    {
LABEL_13:

      goto LABEL_14;
    }

LABEL_53:
    v60 = 0;
    v154 = v155 & 0xC000000000000001;
    v153 = v155 & 0xFFFFFFFFFFFFFF8;
    v152 = (v155 + 32);
    v151 = v59;
LABEL_55:
    if (v154)
    {
      v61 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v60 >= *(v153 + 16))
      {
        goto LABEL_114;
      }

      v61 = v152[v60];
    }

    v62 = v61;
    v42 = __OFADD__(v60, 1);
    v63 = v60 + 1;
    if (v42)
    {
      goto LABEL_113;
    }

    v64 = [v61 devicePrimaryPaymentApplication];
    if (!v64)
    {
      goto LABEL_121;
    }

    v65 = v64;
    v66 = [v64 subcredentials];

    if (!v66)
    {
      goto LABEL_120;
    }

    v164 = v62;
    v165 = v63;
    v67 = sub_10009393C(0, &qword_100504710, PKAppletSubcredential_ptr);
    sub_10013E864();
    v68 = static Set._unconditionallyBridgeFromObjectiveC(_:)();

    v163 = v68;
    if ((v68 & 0xC000000000000001) != 0)
    {
      swift_unknownObjectRetain();
      __CocoaSet.makeIterator()();
      Set.Iterator.init(_cocoa:)();
      v68 = v176;
      v69 = v177;
      v70 = v178;
      v71 = v179;
      v72 = v180;
    }

    else
    {
      v73 = -1 << *(v68 + 32);
      v69 = v68 + 56;
      v74 = ~v73;
      v75 = -v73;
      if (v75 < 64)
      {
        v76 = ~(-1 << v75);
      }

      else
      {
        v76 = -1;
      }

      v72 = v76 & *(v68 + 56);

      v70 = v74;
      v71 = 0;
    }

    v162 = v70;
    v77 = (v70 + 64) >> 6;
    v168 = v67;
    v170 = v77;
    v169 = v68;
    while (1)
    {
      if (v68 < 0)
      {
        v83 = __CocoaSet.Iterator.next()();
        if (!v83 || (v175 = v83, swift_dynamicCast(), v82 = v174[0], v80 = v71, v81 = v72, !v174[0]))
        {
LABEL_54:
          sub_100093854();

          v60 = v165;
          if (v165 == v151)
          {
            goto LABEL_13;
          }

          goto LABEL_55;
        }
      }

      else
      {
        v78 = v71;
        v79 = v72;
        v80 = v71;
        if (!v72)
        {
          while (1)
          {
            v80 = v78 + 1;
            if (__OFADD__(v78, 1))
            {
              break;
            }

            if (v80 >= v77)
            {
              goto LABEL_54;
            }

            v79 = *(v69 + 8 * v80);
            ++v78;
            if (v79)
            {
              goto LABEL_73;
            }
          }

          __break(1u);
LABEL_110:
          __break(1u);
          goto LABEL_111;
        }

LABEL_73:
        v81 = (v79 - 1) & v79;
        v82 = *(*(v68 + 48) + ((v80 << 9) | (8 * __clz(__rbit64(v79)))));
        if (!v82)
        {
          goto LABEL_54;
        }
      }

      v173 = v81;
      v84 = v69;
      v172 = v82;
      v85 = [v82 identifier];
      if (!v85)
      {
        __break(1u);
        goto LABEL_119;
      }

      v86 = v85;
      v87 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v89 = v88;

      v90 = sub_10013044C(v87, v89);
      if (v91 >> 60 == 15)
      {
        break;
      }

      v92 = v90;
      v93 = v91;
      v94 = v171;
      swift_beginAccess();
      v95 = *&v1[v94];
      if (*(v95 + 16) && (v96 = sub_10008C8DC(v92, v93), (v97 & 1) != 0))
      {
        v159 = v92;
        v98 = *(*(v95 + 56) + 8 * v96);
        v99 = swift_endAccess();
        v174[0] = v166;
        v174[1] = v167;
        __chkstk_darwin(v99);
        v143[-2] = v174;
        swift_bridgeObjectRetain_n();
        v100 = sub_1002F784C(sub_10013E8CC, &v143[-4], v98);

        if (v100)
        {
          sub_10006A2D0(v159, v93);

          v71 = v80;
          v72 = v173;
          goto LABEL_80;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v98 = sub_10012EA44(0, *(v98 + 2) + 1, 1, v98);
        }

        v125 = *(v98 + 2);
        v124 = *(v98 + 3);
        v126 = v167;
        v69 = v84;
        if (v125 >= v124 >> 1)
        {
          v98 = sub_10012EA44((v124 > 1), v125 + 1, 1, v98);
          v126 = v167;
        }

        v68 = v169;
        *(v98 + 2) = v125 + 1;
        v127 = &v98[16 * v125];
        *(v127 + 4) = v166;
        *(v127 + 5) = v126;
        v128 = v171;
        swift_beginAccess();
        v129 = v159;
        sub_100069E2C(v159, v93);
        v130 = *&v1[v128];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v175 = *&v1[v128];
        *&v1[v128] = 0x8000000000000000;
        sub_100315470(v98, v129, v93, isUniquelyReferenced_nonNull_native);
        sub_10006A2D0(v129, v93);
        *&v1[v128] = v175;
        swift_endAccess();

        sub_10006A2D0(v129, v93);
        v71 = v80;
        v72 = v173;
LABEL_81:
        v77 = v170;
      }

      else
      {
        swift_endAccess();
        sub_100068FC4(&unk_100504720, &qword_100414C40);
        v101 = swift_allocObject();
        *(v101 + 16) = v160;
        v102 = v167;
        *(v101 + 32) = v166;
        *(v101 + 40) = v102;
        v103 = v171;
        swift_beginAccess();

        sub_10006A2BC(v92, v93);
        v104 = *&v1[v103];
        v105 = swift_isUniquelyReferenced_nonNull_native();
        v106 = v92;
        v107 = v105;
        v175 = *&v1[v103];
        v108 = v175;
        *&v1[v103] = 0x8000000000000000;
        v109 = v93;
        v110 = v106;
        v111 = v109;
        v113 = sub_10008C8DC(v106, v109);
        v114 = *(v108 + 16);
        v115 = (v112 & 1) == 0;
        v116 = v114 + v115;
        if (__OFADD__(v114, v115))
        {
          goto LABEL_110;
        }

        v117 = v112;
        if (*(v108 + 24) >= v116)
        {
          if ((v107 & 1) == 0)
          {
            sub_100311664();
          }
        }

        else
        {
          sub_10030AE8C(v116, v107);
          v118 = sub_10008C8DC(v110, v111);
          if ((v117 & 1) != (v119 & 1))
          {
            goto LABEL_122;
          }

          v113 = v118;
        }

        v69 = v84;
        v120 = v175;
        v68 = v169;
        if (v117)
        {
          v121 = *(v175 + 56);
          v122 = *(v121 + 8 * v113);
          *(v121 + 8 * v113) = v101;

          v123 = v111;
          sub_10006A2D0(v110, v111);
        }

        else
        {
          v123 = v111;
          sub_100317CF8(v113, v110, v111, v101, v175);
        }

        v77 = v170;
        v1 = v161;
        *&v161[v171] = v120;
        swift_endAccess();

        sub_10006A2D0(v110, v123);
        v71 = v80;
        v72 = v173;
      }
    }

    v71 = v80;
    v72 = v173;
LABEL_80:
    v69 = v84;
    v68 = v169;
    goto LABEL_81;
  }

  v37 = _CocoaArrayWrapper.endIndex.getter();
  if (!v37)
  {
    goto LABEL_50;
  }

LABEL_23:
  v38 = 0;
  v39 = v36 + 56;
  v155 = _swiftEmptyArrayStorage;
  while (1)
  {
    if (v157)
    {
      v40 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v38 >= *(v158 + 16))
      {
        goto LABEL_112;
      }

      v40 = *(v156 + 8 * v38);
    }

    v41 = v40;
    v42 = __OFADD__(v38++, 1);
    if (v42)
    {
      break;
    }

    v43 = [v40 uniqueID];
    if (!v43)
    {
LABEL_119:
      __break(1u);
LABEL_120:
      __break(1u);
LABEL_121:
      __break(1u);
LABEL_122:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return;
    }

    v44 = v43;
    v45 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v47 = v46;

    if (*(v36 + 16) && (v48 = *(v36 + 40), Hasher.init(_seed:)(), String.hash(into:)(), v49 = Hasher._finalize()(), v50 = -1 << *(v36 + 32), v51 = v49 & ~v50, ((*(v39 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) != 0))
    {
      v52 = ~v50;
      while (1)
      {
        v53 = (*(v36 + 48) + 16 * v51);
        v54 = *v53 == v45 && v53[1] == v47;
        if (v54 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }

        v51 = (v51 + 1) & v52;
        if (((*(v39 + ((v51 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v51) & 1) == 0)
        {
          goto LABEL_38;
        }
      }

      v55 = [v41 secureElementPass];
      if (!v55)
      {
        goto LABEL_39;
      }

      v56 = v55;
      v57 = [v55 isCarKeyPass];

      if ((v57 & 1) == 0)
      {
        v41 = v56;
        goto LABEL_39;
      }

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v175 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v175 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v58 = *((v175 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v155 = v175;
      if (v38 == v37)
      {
        goto LABEL_51;
      }
    }

    else
    {
LABEL_38:

LABEL_39:

      if (v38 == v37)
      {
        goto LABEL_51;
      }
    }
  }

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
  swift_once();
LABEL_10:
  v25 = type metadata accessor for Logger();
  sub_1000958E4(v25, qword_1005045D0);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 0;
    _os_log_impl(&_mh_execute_header, v26, v27, "PKPassLibrary is not available", v28, 2u);
  }
}

_DWORD *sub_10013A210()
{
  v1 = v0;
  v2 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v3 = *(v2 - 8);
  v4 = v3[8];
  __chkstk_darwin(v2);
  v6 = &v32 - v5;
  v7 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
  swift_beginAccess();
  v33 = v3[2];
  v33(v6, v1 + v7, v2);
  UserDefaultBackedCodable.wrappedValue.getter();
  v32 = v3[1];
  v32(v6, v2);
  v8 = v38;
  v9 = sub_100068FC4(&qword_100504670, &unk_10040BAF0);
  v39 = v9;
  *&v38 = v8;
  sub_100075D50(&v38, v37);
  v10 = &_swiftEmptyDictionarySingleton;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = &_swiftEmptyDictionarySingleton;
  sub_100315178(v37, 0xD000000000000015, 0x8000000100463FD0, isUniquelyReferenced_nonNull_native);
  v12 = v36;
  v13 = *(v1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor) != 0;
  v39 = &type metadata for Bool;
  LOBYTE(v38) = v13;
  sub_100075D50(&v38, v37);
  v14 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v12;
  sub_100315178(v37, 0xD000000000000012, 0x8000000100463DF0, v14);
  v15 = v36;
  v16 = *(v1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning);
  v39 = &type metadata for Bool;
  LOBYTE(v38) = v16;
  sub_100075D50(&v38, v37);
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v36 = v15;
  sub_100315178(v37, 0x6E696E6E75527369, 0xE900000000000067, v17);
  v18 = v36;
  v19 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__registeredAppIdentifiers;
  swift_beginAccess();
  v33(v6, v1 + v19, v2);
  UserDefaultBackedCodable.wrappedValue.getter();
  v32(v6, v2);
  v39 = v9;
  sub_100075D50(&v38, v37);
  v20 = swift_isUniquelyReferenced_nonNull_native();
  v35 = v18;
  sub_100315178(v37, 0xD000000000000018, 0x8000000100463FF0, v20);
  v21 = v35;
  v22 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_registeredAppIdentifiersPerKey;
  swift_beginAccess();
  v23 = *(v1 + v22);

  v25 = sub_1001384E4(v24);

  if (*(v25 + 16))
  {
    sub_100068FC4(&qword_100504770, &unk_10040BB10);
    v10 = static _DictionaryStorage.allocate(capacity:)();
  }

  *&v38 = v10;

  sub_1001C40EC(v26, 1, &v38);

  v27 = v38;
  v39 = sub_100068FC4(&qword_100504778, &qword_10040DDD0);
  *&v38 = v27;
  sub_100075D50(&v38, v37);
  v28 = swift_isUniquelyReferenced_nonNull_native();
  v34 = v21;
  sub_100315178(v37, 0xD00000000000001ELL, 0x8000000100463E40, v28);
  sub_1001950D4(v34);

  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v30 = sub_100015DA0("carkeyapplauncher.state", isa);

  return v30;
}

void sub_10013A69C()
{
  v1 = type metadata accessor for DispatchPredicate();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = (&v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = *(v0 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v5 = v6;
  (*(v2 + 104))(v5, enum case for DispatchPredicate.onQueue(_:), v1);
  v7 = v6;
  v8 = _dispatchPreconditionTest(_:)();
  v10 = *(v2 + 8);
  v9 = v2 + 8;
  v10(v5, v1);
  if ((v8 & 1) == 0)
  {
    __break(1u);
LABEL_9:
    swift_once();
    goto LABEL_4;
  }

  v8 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor;
  if (*(v0 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor))
  {
    return;
  }

  v9 = v0;
  if (qword_100501998 != -1)
  {
    goto LABEL_9;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_1005045D0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Starting app user quit monitor", v14, 2u);
  }

  v15 = [objc_allocWithZone(SBSApplicationUserQuitMonitor) initWithDelegate:v9];
  v16 = *(v9 + v8);
  *(v9 + v8) = v15;
}

void sub_10013A89C(Swift::Int a1, unint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = *(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v10 = v11;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
LABEL_10:
    swift_once();
    goto LABEL_5;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning) != 1)
  {
    return;
  }

  swift_beginAccess();

  sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v13 = UserDefaultBackedCodable.wrappedValue.modify();
  v14 = sub_1000D78B8(&v23, a1, a2);
  v13(v22, 0);
  swift_endAccess();

  if ((v14 & 1) == 0)
  {
    return;
  }

  swift_beginAccess();

  v15 = UserDefaultBackedCodable.wrappedValue.modify();
  sub_1000D78B8(&v23, a1, a2);
  v15(v22, 0);
  swift_endAccess();

  if (qword_100501998 != -1)
  {
    goto LABEL_10;
  }

LABEL_5:
  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_1005045D0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1002FFA0C(a1, a2, v22);
    _os_log_impl(&_mh_execute_header, v17, v18, "Registered app %s", v19, 0xCu);
    sub_1000752F4(v20);
  }

  sub_10013912C();
  sub_10013A69C();
}

void sub_10013ABFC(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v32[-1] - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v32[-1] - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  v19 = *(v12 + 8);
  v18 = v12 + 8;
  v19(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_11:
    swift_once();
    goto LABEL_5;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning) != 1)
  {
    return;
  }

  swift_beginAccess();
  v20 = UserDefaultBackedCodable.wrappedValue.modify();
  sub_10010E7A0(a1, a2);
  v22 = v21;
  v20(v32, 0);
  swift_endAccess();
  if (!v22)
  {
    return;
  }

  v18 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
  swift_beginAccess();
  v23 = UserDefaultBackedCodable.wrappedValue.modify();
  sub_10010E7A0(a1, a2);
  v23(v32, 0);
  swift_endAccess();

  if (qword_100501998 != -1)
  {
    goto LABEL_11;
  }

LABEL_5:
  v24 = type metadata accessor for Logger();
  sub_1000958E4(v24, qword_1005045D0);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v31 = v18;
    v32[0] = v28;
    v29 = v28;
    *v27 = 136315138;
    *(v27 + 4) = sub_1002FFA0C(a1, a2, v32);
    _os_log_impl(&_mh_execute_header, v25, v26, "Unregistered app %s", v27, 0xCu);
    sub_1000752F4(v29);
    v18 = v31;
  }

  sub_10013912C();
  (*(v7 + 16))(v10, v3 + v18, v6);
  UserDefaultBackedCodable.wrappedValue.getter();
  (*(v7 + 8))(v10, v6);
  v30 = *(v32[0] + 16);

  if (!v30)
  {
    sub_10013B010();
  }
}

void sub_10013B010()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v6 = v7;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  v10 = *(v3 + 8);
  v9 = v3 + 8;
  v10(v6, v2);
  if ((v7 & 1) == 0)
  {
    __break(1u);
LABEL_12:
    swift_once();
    goto LABEL_4;
  }

  v9 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor;
  if (!*(v1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_appUserQuitMonitor))
  {
    return;
  }

  if (qword_100501998 != -1)
  {
    goto LABEL_12;
  }

LABEL_4:
  v11 = type metadata accessor for Logger();
  sub_1000958E4(v11, qword_1005045D0);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&_mh_execute_header, v12, v13, "Stopping app user quit monitor", v14, 2u);
  }

  v15 = *(v1 + v9);
  if (v15)
  {
    [v15 invalidate];
    v16 = *(v1 + v9);
  }

  else
  {
    v16 = 0;
  }

  *(v1 + v9) = 0;
}

void sub_10013B210(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v7 = *(v6 - 8);
  v8 = v7[8];
  __chkstk_darwin(v6);
  v10 = &v30 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
LABEL_13:
    swift_once();
    goto LABEL_6;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning) != 1)
  {
    return;
  }

  v18 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__registeredAppIdentifiers;
  swift_beginAccess();
  v33 = v7[2];
  v33(v10, v3 + v18, v6);
  UserDefaultBackedCodable.wrappedValue.getter();
  v32 = v7[1];
  v32(v10, v6);
  v19 = sub_1000C6B9C(a1, a2, v34[0]);

  if ((v19 & 1) == 0)
  {
    return;
  }

  v20 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
  swift_beginAccess();

  v31 = v20;
  v21 = UserDefaultBackedCodable.wrappedValue.modify();
  LOBYTE(v20) = sub_1000D78B8(&v35, a1, a2);
  v21(v34, 0);
  swift_endAccess();

  if ((v20 & 1) == 0)
  {
    return;
  }

  if (qword_100501998 != -1)
  {
    goto LABEL_13;
  }

LABEL_6:
  v22 = type metadata accessor for Logger();
  sub_1000958E4(v22, qword_1005045D0);

  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    v26 = swift_slowAlloc();
    v30 = v23;
    v27 = v26;
    v34[0] = v26;
    *v25 = 136315138;
    *(v25 + 4) = sub_1002FFA0C(a1, a2, v34);
    v28 = v30;
    _os_log_impl(&_mh_execute_header, v30, v24, "Allowed app %s", v25, 0xCu);
    sub_1000752F4(v27);
  }

  else
  {
  }

  v33(v10, v3 + v31, v6);
  UserDefaultBackedCodable.wrappedValue.getter();
  v32(v10, v6);
  v29 = *(v34[0] + 16);

  if (v29 == 1)
  {
    sub_10013A69C();
  }
}

uint64_t sub_10013B668(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v47 - v9;
  v11 = type metadata accessor for DispatchPredicate();
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin(v11);
  v15 = (&v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *&v3[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  *v15 = v16;
  (*(v12 + 104))(v15, enum case for DispatchPredicate.onQueue(_:), v11);
  v17 = v16;
  LOBYTE(v16) = _dispatchPreconditionTest(_:)();
  result = (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    goto LABEL_35;
  }

  if (v3[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_isRunning] == 1)
  {
    v19 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_registeredAppIdentifiersPerKey;
    swift_beginAccess();
    v20 = *&v3[v19];
    if (!*(v20 + 16))
    {
      return swift_endAccess();
    }

    v21 = sub_10008C8DC(a1, a2);
    if ((v22 & 1) == 0)
    {
      return swift_endAccess();
    }

    v23 = *(*(v20 + 56) + 8 * v21);
    swift_endAccess();
    v24 = *(v23 + 16);
    v25 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;

    v53 = v3;
    v51 = v25;
    result = swift_beginAccess();
    v52 = v24;
    if (v24)
    {
      v26 = 0;
      v48 = (v7 + 16);
      v49 = v23 + 32;
      v47 = (v7 + 8);
      v27 = _swiftEmptyArrayStorage;
      v50 = v23;
      while (v26 < *(v23 + 16))
      {
        v28 = (v49 + 16 * v26);
        v30 = *v28;
        v29 = v28[1];
        ++v26;
        (*v48)(v10, &v53[v51], v6);

        UserDefaultBackedCodable.wrappedValue.getter();
        (*v47)(v10, v6);
        v31 = v54[0];
        if (*(v54[0] + 16) && (v32 = *(v54[0] + 40), Hasher.init(_seed:)(), String.hash(into:)(), v33 = Hasher._finalize()(), v34 = -1 << *(v31 + 32), v35 = v33 & ~v34, ((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) != 0))
        {
          v36 = ~v34;
          while (1)
          {
            v37 = (*(v31 + 48) + 16 * v35);
            v38 = *v37 == v30 && v37[1] == v29;
            if (v38 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v35 = (v35 + 1) & v36;
            if (((*(v31 + 56 + ((v35 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v35) & 1) == 0)
            {
              goto LABEL_7;
            }
          }

          result = swift_isUniquelyReferenced_nonNull_native();
          v55 = v27;
          if ((result & 1) == 0)
          {
            result = sub_10019F3C0(0, v27[2] + 1, 1);
            v27 = v55;
          }

          v40 = v27[2];
          v39 = v27[3];
          if (v40 >= v39 >> 1)
          {
            result = sub_10019F3C0((v39 > 1), v40 + 1, 1);
            v27 = v55;
          }

          v27[2] = v40 + 1;
          v41 = &v27[2 * v40];
          v41[4] = v30;
          v41[5] = v29;
        }

        else
        {
LABEL_7:
        }

        v23 = v50;
        if (v26 == v52)
        {
          goto LABEL_27;
        }
      }

      __break(1u);
      goto LABEL_34;
    }

    v27 = _swiftEmptyArrayStorage;
LABEL_27:

    v42 = v27[2];
    v43 = v53;
    if (v42)
    {
      v44 = 0;
      v45 = v27 + 5;
      while (v44 < v27[2])
      {
        ++v44;
        v46 = *v45;
        v54[0] = *(v45 - 1);
        v54[1] = v46;

        sub_10013BB08(v54, v43);

        v45 += 2;
        if (v42 == v44)
        {
        }
      }

LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return result;
    }
  }

  return result;
}

void sub_10013BB08(uint64_t *a1, void *a2)
{
  v5 = *a1;
  v4 = a1[1];
  sub_10009393C(0, &qword_100504738, LSBundleRecord_ptr);

  v6 = sub_10013C50C();
  if (!v2)
  {
    v15 = v6;
    v16 = [v6 bundleIdentifier];
    if (v16)
    {
      v17 = v16;

      sub_10009393C(0, &qword_100506F80, RBSProcessHandle_ptr);
      v18 = [objc_opt_self() predicateMatchingBundleIdentifier:v17];

      v50 = sub_1001F0324(v18);
      if (v50)
      {

        if (qword_100501998 != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        sub_1000958E4(v51, qword_1005045D0);

        v52 = v50;
        v53 = Logger.logObject.getter();
        v54 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v53, v54))
        {
          v55 = swift_slowAlloc();
          v56 = swift_slowAlloc();
          aBlock = v56;
          *v55 = 136315394;
          *(v55 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
          *(v55 + 12) = 1024;
          *(v55 + 14) = [v52 pid];

          _os_log_impl(&_mh_execute_header, v53, v54, "App is already running %s pid %d", v55, 0x12u);
          sub_1000752F4(v56);
        }

        else
        {
        }

        return;
      }

      if (qword_100501998 != -1)
      {
        swift_once();
      }

      v19 = type metadata accessor for Logger();
      sub_1000958E4(v19, qword_1005045D0);

      v20 = Logger.logObject.getter();
      v21 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v20, v21))
      {
        v22 = swift_slowAlloc();
        v23 = swift_slowAlloc();
        aBlock = v23;
        *v22 = 136315138;
        *(v22 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
        _os_log_impl(&_mh_execute_header, v20, v21, "Starting app %s", v22, 0xCu);
        sub_1000752F4(v23);
      }

      v24 = [objc_opt_self() serviceWithDefaultShellEndpoint];
      if (!v24)
      {

        return;
      }

      v25 = v24;
      sub_100068FC4(&unk_100503F50, &unk_10040D950);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1004098F0;
      aBlock = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v58 = v27;
      AnyHashable.init<A>(_:)();
      *(inited + 96) = &type metadata for Bool;
      *(inited + 72) = 1;
      sub_100090BC4(inited);
      swift_setDeallocating();
      sub_100075768(inited + 32, &qword_100502C48, &qword_10040B2D0);
      isa = Dictionary._bridgeToObjectiveC()().super.isa;

      v15 = [objc_opt_self() optionsWithDictionary:isa];

      v29 = swift_allocObject();
      v29[2] = a2;
      v29[3] = v5;
      v29[4] = v4;
      v61 = sub_10013EFE8;
      v62 = v29;
      aBlock = _NSConcreteStackBlock;
      v58 = 1107296256;
      v59 = sub_1000BBFA0;
      v60 = &unk_1004C82B8;
      v30 = _Block_copy(&aBlock);

      v31 = a2;

      [v25 openApplication:v17 withOptions:v15 completion:v30];
      _Block_release(v30);
    }

    else
    {
      if (qword_100501998 != -1)
      {
        swift_once();
      }

      v45 = type metadata accessor for Logger();
      sub_1000958E4(v45, qword_1005045D0);

      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        aBlock = v49;
        *v48 = 136315138;
        *(v48 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
        _os_log_impl(&_mh_execute_header, v46, v47, "Failed to retrieve bundle identifier for %s", v48, 0xCu);
        sub_1000752F4(v49);
      }
    }

    return;
  }

  v7 = _convertErrorToNSError(_:)();
  v8 = [v7 domain];
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {
  }

  else
  {
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_23;
    }
  }

  if ([v7 code] != -10814)
  {
LABEL_23:
    if (qword_100501998 != -1)
    {
      swift_once();
    }

    v37 = type metadata accessor for Logger();
    sub_1000958E4(v37, qword_1005045D0);

    v38 = v7;
    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      aBlock = v43;
      *v41 = 136315394;
      *(v41 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
      *(v41 + 12) = 2112;
      *(v41 + 14) = v38;
      *v42 = v38;
      v44 = v38;
      _os_log_impl(&_mh_execute_header, v39, v40, "Failed to retrieve bundle record for %s %@", v41, 0x16u);
      sub_100075768(v42, &unk_100503F70, &unk_10040B2E0);

      sub_1000752F4(v43);
    }

    else
    {
    }

    return;
  }

  if (qword_100501998 != -1)
  {
    swift_once();
  }

  v32 = type metadata accessor for Logger();
  sub_1000958E4(v32, qword_1005045D0);

  v33 = Logger.logObject.getter();
  v34 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    aBlock = v36;
    *v35 = 136315138;
    *(v35 + 4) = sub_1002FFA0C(v5, v4, &aBlock);
    _os_log_impl(&_mh_execute_header, v33, v34, "App not found %s", v35, 0xCu);
    sub_1000752F4(v36);
  }

  sub_10013ABFC(v5, v4);
}

id sub_10013C50C()
{
  v0 = String._bridgeToObjectiveC()();

  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() bundleRecordWithApplicationIdentifier:v0 error:&v5];

  if (v1)
  {
    v2 = v5;
  }

  else
  {
    v3 = v5;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t sub_10013C5E4(void *a1, uint64_t a2, char *a3, uint64_t a4, uint64_t a5)
{
  v10 = type metadata accessor for DispatchWorkItemFlags();
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  __chkstk_darwin(v10);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DispatchQoS();
  v15 = *(v25 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v25);
  v18 = v24 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24[1] = *&a3[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  v19 = swift_allocObject();
  v19[2] = a1;
  v19[3] = a4;
  v19[4] = a5;
  v19[5] = a2;
  v19[6] = a3;
  aBlock[4] = sub_10013F044;
  aBlock[5] = v19;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8308;
  v20 = _Block_copy(aBlock);
  v21 = a1;

  swift_errorRetain();
  v22 = a3;
  static DispatchQoS.unspecified.getter();
  v26 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v20);
  (*(v11 + 8))(v14, v10);
  (*(v15 + 8))(v18, v25);
}

void sub_10013C8E4(void *a1, uint64_t a2, void *a3, uint64_t a4, char *a5)
{
  if (a1)
  {
    v7 = qword_100501998;
    v8 = a1;
    if (v7 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    sub_1000958E4(v9, qword_1005045D0);
    v10 = v8;

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      aBlock = v14;
      *v13 = 136315394;
      *(v13 + 4) = sub_1002FFA0C(a2, a3, &aBlock);
      *(v13 + 12) = 1024;
      *(v13 + 14) = [v10 pid];

      _os_log_impl(&_mh_execute_header, v11, v12, "Started app %s pid %d", v13, 0x12u);
      sub_1000752F4(v14);
    }

    else
    {
    }

    aBlock = 0;
    v66 = 0xE000000000000000;
    _StringGuts.grow(_:)(20);

    aBlock = 0xD000000000000012;
    v66 = 0x8000000100463F90;
    v22._countAndFlagsBits = a2;
    v22._object = a3;
    String.append(_:)(v22);
    osloga = v10;
    v23 = [objc_opt_self() targetWithPid:{-[NSObject pid](v10, "pid")}];
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_100409E40;
    v25 = String._bridgeToObjectiveC()();
    v26 = String._bridgeToObjectiveC()();
    v27 = [objc_opt_self() attributeWithDomain:v25 name:v26];

    *(v24 + 32) = v27;
    v28 = objc_allocWithZone(RBSAssertion);
    v29 = String._bridgeToObjectiveC()();

    sub_10009393C(0, &qword_100504750, RBSAttribute_ptr);
    isa = Array._bridgeToObjectiveC()().super.isa;

    v31 = [v28 initWithExplanation:v29 target:v23 attributes:isa];

    aBlock = 0;
    v32 = [v31 acquireWithError:&aBlock];
    v33 = aBlock;
    if (v32)
    {

      v34 = v33;
      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v35, v36))
      {
        v37 = swift_slowAlloc();
        v38 = swift_slowAlloc();
        aBlock = v38;
        *v37 = 136315138;
        *(v37 + 4) = sub_1002FFA0C(a2, a3, &aBlock);
        _os_log_impl(&_mh_execute_header, v35, v36, "Acquired assertion for %s", v37, 0xCu);
        sub_1000752F4(v38);
      }

      v39 = *&a5[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
      v40 = swift_allocObject();
      v40[2] = a5;
      v40[3] = v31;
      v40[4] = a2;
      v40[5] = a3;
      v41 = objc_allocWithZone(SESTimer);
      v69 = sub_10013F09C;
      v70 = v40;
      aBlock = _NSConcreteStackBlock;
      v66 = 1107296256;
      v67 = sub_100080830;
      v68 = &unk_1004C8358;
      v42 = _Block_copy(&aBlock);

      v43 = a5;
      v44 = v31;
      v45 = sub_1003AE50C(v41, v39, v42);
      _Block_release(v42);

      v46 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_assertionTimers;
      swift_beginAccess();
      v47 = *&v43[v46];
      if ((v47 & 0xC000000000000001) != 0)
      {
        if (v47 < 0)
        {
          v48 = *&v43[v46];
        }

        else
        {
          v48 = v47 & 0xFFFFFFFFFFFFFF8;
        }

        v49 = v44;
        v50 = v45;
        v51 = __CocoaDictionary.count.getter();
        if (__OFADD__(v51, 1))
        {
          __break(1u);
        }

        *&v43[v46] = sub_10013E4F0(v48, v51 + 1);
      }

      else
      {
        v58 = *&v43[v46];
        v59 = v44;
        v60 = v45;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v71 = *&v43[v46];
      sub_1003160B8(v45, v44, isUniquelyReferenced_nonNull_native);
      *&v43[v46] = v71;

      swift_endAccess();
      sub_1003AE618(v45, 2.0);
    }

    else
    {
      v52 = aBlock;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      swift_errorRetain();
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        *v55 = 138412290;
        swift_errorRetain();
        v57 = _swift_stdlib_bridgeErrorToNSError();
        *(v55 + 4) = v57;
        *v56 = v57;
        _os_log_impl(&_mh_execute_header, v53, v54, "Failed to acquire RBSAssertion %@", v55, 0xCu);
        sub_100075768(v56, &unk_100503F70, &unk_10040B2E0);
      }

      else
      {
      }
    }
  }

  else
  {
    if (qword_100501998 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_1005045D0);

    swift_errorRetain();
    oslog = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(oslog, v17))
    {
      v18 = swift_slowAlloc();
      aBlock = swift_slowAlloc();
      *v18 = 136315394;
      *(v18 + 4) = sub_1002FFA0C(a2, a3, &aBlock);
      *(v18 + 12) = 2080;
      v71 = a4;
      swift_errorRetain();
      sub_100068FC4(&unk_100504740, &qword_100409110);
      v19 = String.init<A>(describing:)();
      v21 = sub_1002FFA0C(v19, v20, &aBlock);

      *(v18 + 14) = v21;
      _os_log_impl(&_mh_execute_header, oslog, v17, "Failed to get process for %s error %s", v18, 0x16u);
      swift_arrayDestroy();
    }

    else
    {
    }
  }
}

void sub_10013D1F4(uint64_t a1, void *a2, uint64_t a3, unint64_t a4)
{
  v8 = type metadata accessor for DispatchPredicate();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = *(a1 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  *v12 = v13;
  (*(v9 + 104))(v12, enum case for DispatchPredicate.onQueue(_:), v8);
  v14 = v13;
  LOBYTE(v13) = _dispatchPreconditionTest(_:)();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    [a2 invalidate];
    swift_beginAccess();
    v15 = sub_1001455E4(a2);
    swift_endAccess();

    if (qword_100501998 == -1)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  swift_once();
LABEL_3:
  v16 = type metadata accessor for Logger();
  sub_1000958E4(v16, qword_1005045D0);

  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1002FFA0C(a3, a4, &v22);
    _os_log_impl(&_mh_execute_header, v17, v18, "Invalidated assertion for %s", v19, 0xCu);
    sub_1000752F4(v20);
  }
}

uint64_t sub_10013D4F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  swift_getObjCClassMetadata();
  sub_10013D57C(v9, v11, a4, a5, a6);
}

uint64_t sub_10013D57C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v22 = a5;
  v9 = type metadata accessor for DispatchWorkItemFlags();
  v24 = *(v9 - 8);
  v10 = *(v24 + 64);
  __chkstk_darwin(v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for DispatchQoS();
  v13 = *(v23 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v23);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501990 != -1)
  {
    swift_once();
  }

  v17 = *(qword_10051B2B8 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  v18 = swift_allocObject();
  v18[2] = v5;
  v18[3] = a1;
  v18[4] = a2;
  aBlock[4] = a4;
  aBlock[5] = v18;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = v22;
  v19 = _Block_copy(aBlock);
  v20 = v17;

  static DispatchQoS.unspecified.getter();
  v25 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v19);

  (*(v24 + 8))(v12, v9);
  (*(v13 + 8))(v16, v23);
}

uint64_t sub_10013D8BC(uint64_t a1, unint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v20 = *(v5 - 8);
  v6 = *(v20 + 64);
  __chkstk_darwin(v5);
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v9 = *(v19 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v19);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501990 != -1)
  {
    swift_once();
  }

  v13 = *(qword_10051B2B8 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  v14 = swift_allocObject();
  v14[2] = v2;
  v14[3] = a1;
  v14[4] = a2;
  aBlock[4] = sub_10013EF74;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8268;
  v15 = _Block_copy(aBlock);
  v16 = v13;
  sub_100069E2C(a1, a2);
  static DispatchQoS.unspecified.getter();
  v21 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);

  (*(v20 + 8))(v8, v5);
  (*(v9 + 8))(v12, v19);
}

uint64_t sub_10013DBE4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (qword_100501990 != -1)
  {
    v5 = a4;
    swift_once();
    a4 = v5;
  }

  return a4();
}

uint64_t type metadata accessor for CarKeyAppLauncher()
{
  result = qword_100504658;
  if (!qword_100504658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_10013DE70()
{
  sub_10013DF4C();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

void sub_10013DF4C()
{
  if (!qword_100504668)
  {
    sub_1000692D8(&qword_100504670, &unk_10040BAF0);
    sub_10013E018(&qword_100504678);
    sub_10013E018(&qword_100504680);
    v0 = type metadata accessor for UserDefaultBackedCodable();
    if (!v1)
    {
      atomic_store(v0, &qword_100504668);
    }
  }
}

uint64_t sub_10013E018(unint64_t *a1)
{
  result = *a1;
  if (!result)
  {
    sub_1000692D8(&qword_100504670, &unk_10040BAF0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_10013E084(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_100068FC4(&qword_100504700, &qword_10040BB00);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v28 - v9;
  sub_10009393C(0, &qword_100504738, LSBundleRecord_ptr);

  v11 = sub_10032AC4C(a1, a2, 0);
  v12 = [v11 applicationIdentifier];

  if (v12)
  {
    v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;

    v16 = OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher__allowedAppIdentifiers;
    swift_beginAccess();
    v17 = UserDefaultBackedCodable.wrappedValue.modify();
    sub_10010E7A0(v13, v15);
    v19 = v18;
    v17(v30, 0);
    swift_endAccess();
    if (v19)
    {

      if (qword_100501998 != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      sub_1000958E4(v20, qword_1005045D0);

      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v29 = v16;
        v30[0] = v24;
        v25 = v24;
        *v23 = 136315138;
        v26 = sub_1002FFA0C(v13, v15, v30);

        *(v23 + 4) = v26;
        _os_log_impl(&_mh_execute_header, v21, v22, "App closed by the user %s", v23, 0xCu);
        sub_1000752F4(v25);
        v16 = v29;
      }

      else
      {
      }

      (*(v7 + 16))(v10, a3 + v16, v6);
      UserDefaultBackedCodable.wrappedValue.getter();
      (*(v7 + 8))(v10, v6);
      v27 = *(v30[0] + 16);

      if (!v27)
      {
        sub_10013B010();
      }
    }

    else
    {
    }
  }
}

uint64_t sub_10013E478()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_1005045D0);
  sub_1000958E4(v0, qword_1005045D0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

Swift::Int sub_10013E4F0(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    sub_100068FC4(&qword_100504758, &qword_10040BB08);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    v3 = __CocoaDictionary.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      sub_10009393C(0, &qword_100504760, RBSAssertion_ptr);
      v5 = v4;
      do
      {
        v17 = v5;
        swift_dynamicCast();
        sub_10009393C(0, &qword_100504768, off_1004BE530);
        swift_dynamicCast();
        v12 = *(v2 + 16);
        if (*(v2 + 24) <= v12)
        {
          sub_10030C7FC(v12 + 1, 1);
        }

        v2 = v19;
        result = NSObject._rawHashValue(seed:)(*(v19 + 40));
        v7 = v19 + 64;
        v8 = -1 << *(v19 + 32);
        v9 = result & ~v8;
        v10 = v9 >> 6;
        if (((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6))) != 0)
        {
          v11 = __clz(__rbit64((-1 << v9) & ~*(v19 + 64 + 8 * (v9 >> 6)))) | v9 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v13 = 0;
          v14 = (63 - v8) >> 6;
          do
          {
            if (++v10 == v14 && (v13 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v15 = v10 == v14;
            if (v10 == v14)
            {
              v10 = 0;
            }

            v13 |= v15;
            v16 = *(v7 + 8 * v10);
          }

          while (v16 == -1);
          v11 = __clz(__rbit64(~v16)) + (v10 << 6);
        }

        *(v7 + ((v11 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v11;
        *(*(v19 + 48) + 8 * v11) = v18;
        *(*(v19 + 56) + 8 * v11) = v17;
        ++*(v19 + 16);
        v5 = __CocoaDictionary.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptyDictionarySingleton;
  }

  return v2;
}

uint64_t sub_10013E73C(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10013E7C4(uint64_t (*a1)(void))
{
  if (qword_100501990 != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  return a1();
}

uint64_t sub_10013E84C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_10013E864()
{
  result = qword_100504718;
  if (!qword_100504718)
  {
    sub_10009393C(255, &qword_100504710, PKAppletSubcredential_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100504718);
  }

  return result;
}

uint64_t sub_10013E8CC(void *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t sub_10013E924(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v18 = *(v4 - 8);
  v5 = *(v18 + 64);
  __chkstk_darwin(v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for DispatchQoS();
  v8 = *(v17 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v17);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_100501990 != -1)
  {
    swift_once();
  }

  v12 = *(qword_10051B2B8 + OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue);
  aBlock[4] = a1;
  aBlock[5] = 0;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = a2;
  v13 = _Block_copy(aBlock);
  v14 = v12;
  static DispatchQoS.unspecified.getter();
  v19 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v13);

  (*(v18 + 8))(v7, v4);
  (*(v8 + 8))(v11, v17);
}

uint64_t sub_10013EC0C(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for DispatchWorkItemFlags();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for DispatchQoS();
  v10 = *(v19 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v19);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18[1] = *&v2[OBJC_IVAR____TtC10seserviced17CarKeyAppLauncher_queue];
  v14 = swift_allocObject();
  v14[2] = a1;
  v14[3] = a2;
  v14[4] = v2;
  aBlock[4] = sub_10013EF30;
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C8218;
  v15 = _Block_copy(aBlock);

  v16 = v2;
  static DispatchQoS.unspecified.getter();
  v20 = _swiftEmptyArrayStorage;
  sub_1001350EC(&qword_1005020E0, &type metadata accessor for DispatchWorkItemFlags);
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_100075C60(&qword_1005020F0, &unk_1005046F0, &unk_10040B2A0);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v6 + 8))(v9, v5);
  (*(v10 + 8))(v13, v19);
}

uint64_t sub_10013EEF0()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EF3C()
{
  sub_10006A178(*(v0 + 24), *(v0 + 32));

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EFA8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013EFF4()
{
  v1 = *(v0 + 32);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_10013F054()
{
  v1 = *(v0 + 40);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_10013F0A8()
{
  v1 = *(v0 + 32);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_10013F17C()
{

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_10013F230(uint64_t a1)
{
  if ((*(a1 + 112) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 112) & 3;
  }
}

__n128 sub_10013F24C(uint64_t a1, uint64_t a2)
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

uint64_t sub_10013F280(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 129))
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

uint64_t sub_10013F2C8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 128) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 129) = 1;
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

    *(result + 129) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *sub_10013F510()
{
  v1 = type metadata accessor for URL();
  v2 = *(*(v1 - 8) + 64);
  __chkstk_darwin(v1 - 8);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100140EBC();
  [v0 auditToken];
  v5 = sub_10013F928(v32[0], v32[1], v32[2], v32[3]);
  v6 = [v5 URL];
  static URL._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = objc_allocWithZone(LSApplicationExtensionRecord);
  v9 = sub_10013FD90(v4, 1);

  v10 = [v9 containingBundleRecord];
  if (!v10)
  {
    if (qword_1005019A0 != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    sub_1000958E4(v19, qword_100504790);
    v20 = v9;
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v32[0] = v24;
      *v23 = 136315138;
      v25 = [v20 extensionPointRecord];
      v26 = [v25 identifier];

      v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v30 = sub_1002FFA0C(v27, v29, v32);

      *(v23 + 4) = v30;
      _os_log_impl(&_mh_execute_header, v21, v22, "Extension %s does not contain a bundle", v23, 0xCu);
      sub_1000752F4(v24);
    }

    else
    {
    }

    return 0;
  }

  v11 = v10;
  v12 = [v9 extensionPointRecord];
  v13 = [v12 identifier];

  v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v16 = v15;

  if (v14 == 0xD00000000000002ALL && 0x8000000100464120 == v16)
  {

    return v11;
  }

  v18 = _stringCompareWithSmolCheck(_:_:expecting:)();

  result = v11;
  if ((v18 & 1) == 0)
  {

    return 0;
  }

  return result;
}

id sub_10013F928(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = 0;
  v8[0] = a1;
  v8[1] = a2;
  v8[2] = a3;
  v8[3] = a4;
  v4 = [swift_getObjCClassFromMetadata() bundleRecordForAuditToken:v8 error:&v9];
  if (v4)
  {
    v5 = v9;
  }

  else
  {
    v6 = v9;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v4;
}

uint64_t sub_10013FA30()
{
  _StringGuts.grow(_:)(106);
  v1._countAndFlagsBits = 0xD000000000000014;
  v1._object = 0x8000000100464090;
  String.append(_:)(v1);
  String.append(_:)(*v0);
  v2._object = 0x80000001004640B0;
  v2._countAndFlagsBits = 0xD000000000000010;
  String.append(_:)(v2);
  String.append(_:)(v0[1]);
  v3._countAndFlagsBits = 0x616554202020200ALL;
  v3._object = 0xEE00203A4449206DLL;
  String.append(_:)(v3);
  String.append(_:)(v0[2]);
  v4._countAndFlagsBits = 0x6D614E202020200ALL;
  v4._object = 0xEB00000000203A65;
  String.append(_:)(v4);
  String.append(_:)(v0[3]);
  v5._countAndFlagsBits = 0xD000000000000013;
  v5._object = 0x80000001004640D0;
  String.append(_:)(v5);
  countAndFlagsBits = v0[4]._countAndFlagsBits;
  v6._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0x616441202020200ALL;
  v7._object = 0xEE00203A4449206DLL;
  String.append(_:)(v7);
  object = v0[4]._object;
  v8._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v8);

  return 0;
}

uint64_t sub_10013FBEC()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100504790);
  v1 = sub_1000958E4(v0, qword_100504790);
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = sub_1000958E4(v0, qword_10051B2C8);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

id sub_10013FCB4(uint64_t a1, uint64_t a2, char a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

id sub_10013FD90(uint64_t a1, char a2)
{
  v3 = v2;
  URL._bridgeToObjectiveC()(__stack_chk_guard);
  v7 = v6;
  v16 = 0;
  v8 = [v3 initWithURL:v6 requireValid:a2 & 1 error:&v16];

  v9 = v16;
  if (v8)
  {
    v10 = type metadata accessor for URL();
    v11 = *(*(v10 - 8) + 8);
    v12 = v9;
    v11(a1, v10);
  }

  else
  {
    v13 = v16;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 8))(a1, v14);
  }

  return v8;
}

void sub_10013FEE4(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v118 = a4;
  v119 = a5;
  v116 = a6;
  v117 = a3;
  v115 = a2;
  v7 = sub_100068FC4(&unk_100504890, &qword_10040B568);
  v8 = *(v7 - 8);
  v121 = v7;
  v122 = v8;
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v120 = &v109 - v10;
  if (qword_1005019A0 != -1)
  {
    swift_once();
  }

  v11 = 7040629;
  v12 = type metadata accessor for Logger();
  v13 = sub_1000958E4(v12, qword_100504790);
  v14 = a1;
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();

  v17 = &selRef_retrievePeripheralsWithIdentifiers_;
  if (os_log_type_enabled(v15, v16))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v123 = v19;
    *v18 = 136315138;
    v20 = [v14 bundleIdentifier];
    if (v20)
    {
      v21 = v20;
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;
    }

    else
    {
      v24 = 0xE300000000000000;
      v22 = 7040629;
    }

    v25 = sub_1002FFA0C(v22, v24, &v123);

    *(v18 + 4) = v25;
    _os_log_impl(&_mh_execute_header, v15, v16, "bundleId %s", v18, 0xCu);
    sub_1000752F4(v19);

    v17 = &selRef_retrievePeripheralsWithIdentifiers_;
    v11 = 7040629;
  }

  else
  {
  }

  v26 = v14;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v114 = v13;
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    v123 = v30;
    *v29 = 136315138;
    v31 = [v26 applicationIdentifier];
    if (v31)
    {
      v32 = v31;
      v33 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v35 = v34;
    }

    else
    {
      v35 = 0xE300000000000000;
      v33 = 7040629;
    }

    v36 = sub_1002FFA0C(v33, v35, &v123);

    *(v29 + 4) = v36;
    _os_log_impl(&_mh_execute_header, v27, v28, "appId %s", v29, 0xCu);
    sub_1000752F4(v30);

    v17 = &selRef_retrievePeripheralsWithIdentifiers_;
    v11 = 7040629;
  }

  else
  {
  }

  v37 = v26;
  v38 = Logger.logObject.getter();
  v39 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v38, v39))
  {
    v40 = swift_slowAlloc();
    v114 = swift_slowAlloc();
    v123 = v114;
    *v40 = 136315138;
    v41 = [v37 teamIdentifier];
    if (v41)
    {
      v42 = v41;
      v43 = v37;
      v44 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v46 = v45;

      v11 = v44;
      v37 = v43;
      v17 = &selRef_retrievePeripheralsWithIdentifiers_;
    }

    else
    {
      v46 = 0xE300000000000000;
    }

    v47 = sub_1002FFA0C(v11, v46, &v123);

    *(v40 + 4) = v47;
    _os_log_impl(&_mh_execute_header, v38, v39, "teamId %s", v40, 0xCu);
    sub_1000752F4(v114);
  }

  v48 = [v37 v17[508]];
  if (v48)
  {
    v49 = v48;
    v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = [v37 applicationIdentifier];
    if (v53)
    {
      v54 = v53;
      v55 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v57 = v56;

      v58 = [v37 teamIdentifier];
      if (v58)
      {
        v114 = v57;
        v59 = v58;
        v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v62 = v61;

        v63 = objc_allocWithZone(LSApplicationRecord);

        v64 = v125;
        v65 = sub_10013FCB4(v50, v52, 0);
        if (v64)
        {

          swift_errorRetain();
          v66 = Logger.logObject.getter();
          v67 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v66, v67))
          {
            v68 = swift_slowAlloc();
            v69 = swift_slowAlloc();
            v70 = swift_slowAlloc();
            v123 = v70;
            *v68 = 138412546;
            swift_errorRetain();
            v71 = _swift_stdlib_bridgeErrorToNSError();
            *(v68 + 4) = v71;
            *v69 = v71;
            *(v68 + 12) = 2080;
            v72 = sub_1002FFA0C(v50, v52, &v123);

            *(v68 + 14) = v72;
            _os_log_impl(&_mh_execute_header, v66, v67, "LS Error %@ when getting application record for bundle %s", v68, 0x16u);
            sub_100075768(v69, &unk_100503F70, &unk_10040B2E0);

            sub_1000752F4(v70);
          }

          else
          {
          }

          sub_10009591C();
          swift_allocError();
          *v96 = 23;
          swift_willThrow();
        }

        else
        {
          v111 = v65;
          v112 = v52;
          v109 = v60;
          v110 = v62;
          v113 = v55;
          v125 = v50;
          if (qword_1005019B8 != -1)
          {
            swift_once();
          }

          v80 = v121;
          v81 = sub_1000958E4(v121, qword_1005047C8);
          v82 = v122;
          v83 = *(v122 + 16);
          v84 = v120;
          v83(v120, v81, v80);
          UserDefaultBacked.wrappedValue.getter();
          v85 = *(v82 + 8);
          v122 = v82 + 8;
          v85(v84, v80);
          if (v124)
          {
            goto LABEL_38;
          }

          v86 = v85;
          v87 = v123;
          if (qword_1005019C0 != -1)
          {
            swift_once();
          }

          v88 = v121;
          v89 = sub_1000958E4(v121, qword_1005047E0);
          v90 = v120;
          v83(v120, v89, v88);
          UserDefaultBacked.wrappedValue.getter();
          v86(v90, v88);
          if (v124)
          {
LABEL_38:
            v91 = v111;
            v92 = [v111 iTunesMetadata];
            v87 = [v92 storeItemIdentifier];

            v93 = [v91 iTunesMetadata];
            v94 = [v93 storeFront];
            v95 = v125;
          }

          else
          {
            v94 = v123;
            v93 = Logger.logObject.getter();
            v97 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v93, v97))
            {
              v98 = swift_slowAlloc();
              *v98 = 134218240;
              *(v98 + 4) = v87;
              *(v98 + 12) = 2048;
              *(v98 + 14) = v94;
              _os_log_impl(&_mh_execute_header, v93, v97, "Using debug values for adamId %llu and debug CC %llu", v98, 0x16u);
            }

            v95 = v125;
            v91 = v111;
          }

          v99 = [v37 localizedName];
          v100 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v102 = v101;

          v103 = v116;
          v104 = v114;
          *v116 = v113;
          v103[1] = v104;
          v105 = v112;
          v103[2] = v95;
          v103[3] = v105;
          v106 = v110;
          v103[4] = v109;
          v103[5] = v106;
          v103[6] = v100;
          v103[7] = v102;
          v103[8] = v94;
          v103[9] = v87;
          v108 = v117;
          v107 = v118;
          v103[10] = v115;
          v103[11] = v108;
          v103[12] = v107;
          v103[13] = v119;
        }

        return;
      }
    }
  }

  v73 = v37;
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    v77 = swift_slowAlloc();
    *v76 = 138412290;
    *(v76 + 4) = v73;
    *v77 = v73;
    v78 = v73;
    _os_log_impl(&_mh_execute_header, v74, v75, "Bundle record %@ is not a valid bundle", v76, 0xCu);
    sub_100075768(v77, &unk_100503F70, &unk_10040B2E0);
  }

  sub_10009591C();
  swift_allocError();
  *v79 = 23;
  swift_willThrow();
}

void sub_1001409BC(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v7 = 0uLL;
    v8 = 2;
    v9 = 0xEA00000000006465;
    v10 = 0x6369767265736573;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    v14 = 0uLL;
    v15 = 0uLL;
    v16 = 0uLL;
LABEL_5:
    *a2 = v10;
    *(a2 + 8) = v9;
    *(a2 + 16) = v7;
    *(a2 + 32) = v11;
    *(a2 + 48) = v12;
    *(a2 + 64) = v13;
    *(a2 + 80) = v14;
    *(a2 + 96) = v15;
    *(a2 + 112) = v16;
    *(a2 + 128) = v8;
    return;
  }

  v3 = a2;
  v4 = a1;
  v5 = String._bridgeToObjectiveC()();
  v6 = [v4 valueForEntitlement:v5];

  if (v6)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v41 = 0u;
    v42 = 0u;
  }

  v43 = v41;
  v44 = v42;
  if (!*(&v42 + 1))
  {
    sub_100075768(&v43, &qword_100502420, &qword_10040F310);
LABEL_15:
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    sub_1000958E4(v20, qword_10051B2C8);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&_mh_execute_header, v21, v22, "Client is not allowed to use SE Provisioning service: wrong entitlement format", v23, 2u);
    }

    sub_10009591C();
    swift_allocError();
    *v24 = 15;
    swift_willThrow();
LABEL_20:

    return;
  }

  if ((swift_dynamicCast() & 1) == 0 || v40 != 1)
  {
    goto LABEL_15;
  }

  v17 = sub_10013F510();
  if (v17)
  {
    v18 = v17;
    [v4 auditToken];
    sub_10013FEE4(v18, v43, *(&v43 + 1), v44, *(&v44 + 1), v45);
    if (!v2)
    {
      v38 = v45[1];
      v39 = v45[0];
      v36 = v45[3];
      v37 = v45[2];
      v34 = v45[5];
      v35 = v45[4];
      v8 = 1;
      v19 = v4;
      v33 = v45[6];
LABEL_13:

      v11 = v38;
      v7 = v39;
      v10 = v39;
      a2 = v3;
      v13 = v36;
      v12 = v37;
      v15 = v34;
      v14 = v35;
      v16 = v33;
      goto LABEL_5;
    }

    goto LABEL_20;
  }

  sub_100140EBC();
  [v4 auditToken];
  v25 = sub_10013F928(v43, *(&v43 + 1), v44, *(&v44 + 1));
  if (!v2)
  {
    v19 = v25;
    [v4 auditToken];
    sub_10013FEE4(v19, v43, *(&v43 + 1), v44, *(&v44 + 1), v46);
    v38 = v46[1];
    v39 = v46[0];
    v36 = v46[3];
    v37 = v46[2];
    v34 = v46[5];
    v35 = v46[4];
    v33 = v46[6];

    v8 = 0;
    goto LABEL_13;
  }

  if (qword_1005019A0 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_100504790);
  swift_errorRetain();
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    swift_errorRetain();
    v31 = _swift_stdlib_bridgeErrorToNSError();
    *(v29 + 4) = v31;
    *v30 = v31;
    _os_log_impl(&_mh_execute_header, v27, v28, "LS error %@ when getting bundle record", v29, 0xCu);
    sub_100075768(v30, &unk_100503F70, &unk_10040B2E0);
  }

  sub_10009591C();
  swift_allocError();
  *v32 = 23;
  swift_willThrow();
}

unint64_t sub_100140EBC()
{
  result = qword_100504738;
  if (!qword_100504738)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100504738);
  }

  return result;
}

__n128 sub_100140F08(uint64_t a1, __int128 *a2)
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

uint64_t sub_100140F2C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_100140F74(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 sub_100140FE0(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_10014100C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 113))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 112);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_100141054(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

uint64_t sub_1001410B8(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    LOBYTE(a2) = 2;
    *(result + 104) = 0;
  }

  *(result + 112) = a2;
  return result;
}

void sub_100141100(uint64_t a1, uint64_t a2, void (*a3)(void *, void))
{
  v4 = 0;
  v5 = *(a2 + 96);
  v20 = *(a2 + 80);
  v21 = v5;
  v22 = *(a2 + 112);
  v23 = *(a2 + 128);
  v6 = v23;
  v7 = *(a2 + 32);
  v16 = *(a2 + 16);
  v17 = v7;
  v8 = *(a2 + 64);
  v18 = *(a2 + 48);
  v19 = v8;
  if (v23 <= 1u)
  {
    v9 = *(a2 + 112);
    *v24.val = *(a2 + 96);
    *&v24.val[4] = v9;
    v15[0] = v16;
    v15[1] = v17;
    v15[2] = v18;
    v15[3] = v19;
    v15[4] = v20;
    v15[5] = *v24.val;
    v15[6] = v9;
    sub_10012E3F4(&v16, v14);
    v14[0] = v24;
    v10 = audit_token_to_pid(v14);
    sub_10012E450(v15);
    v4 = v10;
  }

  LOBYTE(v14[0].val[0]) = v6 > 1;
  sub_100306B98(v4 | ((v6 > 1) << 32));
  v12 = v11;
  v13 = v11;
  a3(v12, 0);
}

void sub_100141278(void *a1, int a2, void *aBlock, void (*a4)(void *))
{
  v6 = _Block_copy(aBlock);
  _Block_copy(v6);
  v7 = a1;
  a4(v6);
  _Block_release(v6);
  _Block_release(v6);
}

void sub_1001412FC(uint64_t a1, void *a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    *v6 = 0;
    _os_log_impl(&_mh_execute_header, v4, v5, "XPC Invalidated", v6, 2u);
  }

  sub_1001413F4(a2, 1);
}

void sub_1001413F4(void *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return;
  }

  v4 = *(v2 + OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor);
  if (v4)
  {
    v5 = v4;
    sub_1001C9628(a1);
  }

  v6 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
  v7 = swift_beginAccess();
  v8 = *(v2 + v6);
  v9 = __chkstk_darwin(v7);
  __chkstk_darwin(v9);

  os_unfair_lock_lock(v8 + 6);
  sub_100148130(&v49);
  os_unfair_lock_unlock(v8 + 6);
  swift_unknownObjectRelease();

  if (qword_100501A48 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B398;
  os_unfair_lock_lock((qword_10051B398 + 16));
  v11 = *(v10 + 24);
  v12 = *(v10 + 32);
  swift_unknownObjectRetain();
  os_unfair_lock_unlock((v10 + 16));
  if (v11)
  {
    ObjectType = swift_getObjectType();
    v14 = *(v12 + 8);
    v14(v41, ObjectType, v12);
    v69 = v48;
    v67 = v46;
    v68 = v47;
    v63 = v42;
    v64 = v43;
    v65 = v44;
    v66 = v45;
    if (v48 > 1u)
    {
      sub_10012E3A0(v41);
      sub_100126A58(a1);
    }

    else
    {
      v40 = v47;
      v56 = v63;
      v57 = v64;
      v58 = v65;
      v59 = v66;
      v60 = v67;
      v61 = v47;
      sub_10012E3F4(&v63, &v49);
      v49 = v40;
      v15 = audit_token_to_pid(&v49);
      sub_10012E3A0(v41);
      sub_10012E450(&v56);
      if (v15 == sub_100126A58(a1))
      {
        if (qword_1005019D8 != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        sub_1000958E4(v16, qword_10051B2C8);
        v17 = a1;
        v18 = Logger.logObject.getter();
        v19 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v18, v19))
        {
          v35 = ObjectType;
          v20 = swift_slowAlloc();
          v21 = swift_slowAlloc();
          *v20 = 138412290;
          *(v20 + 4) = v17;
          *v21 = v17;
          v22 = v17;
          _os_log_impl(&_mh_execute_header, v18, v19, "XPC closed %@", v20, 0xCu);
          sub_1000C2998(v21);

          ObjectType = v35;
        }

        v14(&v49, ObjectType, v12);
        v62 = v55;
        v60 = v53;
        v61 = v54;
        v56 = *&v49.val[4];
        v57 = v50;
        v58 = v51;
        v59 = v52;
        if (v55 >= 2u)
        {
          sub_10012E3A0(&v49);
        }

        else
        {
          v39 = v54;
          v37[0] = v56;
          v37[1] = v57;
          v37[2] = v58;
          v37[3] = v59;
          v37[4] = v60;
          v38 = v54;
          sub_10012E3F4(&v56, v36);
          v36[0] = v39;
          v23 = audit_token_to_pid(v36);
          sub_10012E450(v37);
          sub_10012E3A0(&v49);
          if (qword_100501D50 != -1)
          {
            swift_once();
          }

          swift_beginAccess();
          v24 = off_10050A868;

          os_unfair_lock_lock(v24 + 6);
          v25 = *&v24[4]._os_unfair_lock_opaque;

          os_unfair_lock_unlock(v24 + 6);

          if (v25)
          {
            sub_1003080E8(v23, 0, 0);
          }
        }

        v33 = swift_allocObject();
        *(v33 + 16) = v11;
        *(v33 + 24) = v12;
        v34 = *(v12 + 32);
        swift_unknownObjectRetain();
        v34(sub_100148118, v33, ObjectType, v12);
        swift_unknownObjectRelease();

        return;
      }
    }

    swift_unknownObjectRelease();
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  sub_1000958E4(v26, qword_10051B2C8);
  v27 = a1;
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    *v30 = 138412290;
    *(v30 + 4) = v27;
    *v31 = v27;
    v32 = v27;
    _os_log_impl(&_mh_execute_header, v28, v29, "XPC closed, no active session associated with %@", v30, 0xCu);
    sub_1000C2998(v31);
  }
}

void sub_100141A30()
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000958E4(v0, qword_10051B2C8);
  oslog = Logger.logObject.getter();
  v1 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    *v2 = 0;
    _os_log_impl(&_mh_execute_header, oslog, v1, "XPC Interrupted", v2, 2u);
  }
}

void sub_100141B78(uint64_t a1, uint64_t a2)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000958E4(v3, qword_10051B2C8);
  swift_unknownObjectRetain();
  oslog = Logger.logObject.getter();
  v4 = static os_log_type_t.info.getter();
  swift_unknownObjectRelease();
  if (os_log_type_enabled(oslog, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315138;
    ObjectType = swift_getObjectType();
    v8 = (*(a2 + 8))(v15, ObjectType, a2);
    v9 = sub_10013F33C(v8);
    v11 = v10;
    sub_10012E3A0(v15);
    v12 = sub_1002FFA0C(v9, v11, &v14);

    *(v5 + 4) = v12;
    _os_log_impl(&_mh_execute_header, oslog, v4, "Ended active session with client info %s due to XPC connection closed", v5, 0xCu);
    sub_1000752F4(v6);
  }

  else
  {
  }
}

uint64_t sub_100141D3C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor;
  if (!*&v0[OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor])
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    sub_1000958E4(v4, qword_10051B2C8);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&_mh_execute_header, v5, v6, "Starting background assertion monitor", v7, 2u);
    }

    v8 = [objc_allocWithZone(type metadata accessor for SECBackgroundAssertion()) init];
    v9 = *&v1[v3];
    *&v1[v3] = v8;
  }

  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v10 = off_10050A868;

  os_unfair_lock_lock(v10 + 6);
  v11 = *&v10[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v10 + 6);

  if (v11)
  {
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  sub_1000958E4(v13, qword_10051B2C8);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Starting presentment intent manager", v16, 2u);
  }

  type metadata accessor for SECPresentmentIntentManager();
  swift_allocObject();
  v17 = sub_1003089F4();
  v18 = swift_beginAccess();
  v23[0] = v17;
  v19 = off_10050A868;
  __chkstk_darwin(v18);

  os_unfair_lock_lock(v19 + 6);
  sub_100147E88(v19 + 2);
  os_unfair_lock_unlock(v19 + 6);

  swift_endAccess();

  v20 = off_10050A868;

  os_unfair_lock_lock(v20 + 6);
  v21 = *&v20[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v20 + 6);

  if (v21)
  {
    v24[3] = ObjectType;
    v24[4] = &off_1004C86B0;
    v24[0] = v1;
    sub_1000BC094(v24, v23);
    swift_beginAccess();
    v22 = v1;
    sub_100147EA4(v23, v21 + 24, &qword_1005048A8, &qword_1004151C0);
    swift_endAccess();

    return sub_1000752F4(v24);
  }

  return result;
}

unint64_t sub_1001420F4(uint64_t *a1, int a2, uint64_t a3)
{
  swift_unknownObjectRetain();
  v6 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9 = *a1;
  result = sub_100316230(a3, a2, isUniquelyReferenced_nonNull_native);
  *a1 = v9;
  return result;
}

uint64_t sub_1001421F8(int a1)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  sub_1000958E4(v2, qword_10051B2C8);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "didDequeueActiveSession: Current assertion (if any) invalidated", v5, 2u);
  }

  return sub_1001422F4(a1);
}

uint64_t sub_1001422F4(int a1)
{
  v3 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v26 - v5;
  if (qword_100501D50 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v7 = off_10050A868;

  os_unfair_lock_lock(v7 + 6);
  v8 = *&v7[4]._os_unfair_lock_opaque;

  os_unfair_lock_unlock(v7 + 6);

  if (v8 && (v9 = *(v8 + 16), , v9))
  {
    v10 = off_10050A868;

    os_unfair_lock_lock(v10 + 6);
    v11 = *&v10[4]._os_unfair_lock_opaque;

    os_unfair_lock_unlock(v10 + 6);

    if (v11)
    {
      sub_1003080E8(a1, 0, 0);
    }

    v12 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
    v13 = swift_beginAccess();
    v14 = *(v1 + v12);
    v15 = __chkstk_darwin(v13);
    *(&v26 - 4) = a1;
    __chkstk_darwin(v15);
    *(&v26 - 2) = sub_100146C4C;
    *(&v26 - 1) = v16;

    os_unfair_lock_lock(v14 + 6);
    sub_100148130(&v27);
    v17 = swift_allocObject();
    os_unfair_lock_unlock(v14 + 6);

    swift_unknownObjectWeakInit();
    swift_unknownObjectRelease();
    v18 = type metadata accessor for TaskPriority();
    (*(*(v18 - 8) + 56))(v6, 1, 1, v18);
    v19 = swift_allocObject();
    v19[2] = 0;
    v19[3] = 0;
    v19[4] = v17;

    sub_1001F9EA8(0, 0, v6, &unk_10040BD68, v19);
  }

  else
  {
    v21 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
    v22 = swift_beginAccess();
    v23 = *(v1 + v21);
    v24 = __chkstk_darwin(v22);
    *(&v26 - 4) = a1;
    __chkstk_darwin(v24);
    *(&v26 - 2) = sub_10014814C;
    *(&v26 - 1) = v25;

    os_unfair_lock_lock(v23 + 6);
    sub_100146C34(&v27);
    os_unfair_lock_unlock(v23 + 6);

    return swift_unknownObjectRelease();
  }
}

unint64_t sub_1001426C0@<X0>(uint64_t *a1@<X0>, int a2@<W1>, void *a3@<X8>)
{
  v5 = *a1;
  result = sub_10008CBA8(a2);
  if (v7)
  {
    v8 = result;
    v9 = *a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v11 = *a1;
    v14 = *a1;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1003127B4();
      v11 = v14;
    }

    v12 = v8;
    v13 = *(*(v11 + 56) + 8 * v8);
    result = sub_1000DE770(v12, v11);
    *a1 = v11;
  }

  else
  {
    v13 = 0;
  }

  *a3 = v13;
  return result;
}

uint64_t sub_100142758(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 168) = a1;
  *(v4 + 176) = a4;
  return _swift_task_switch(sub_100142778, 0, 0);
}

uint64_t sub_100142778()
{
  v1 = *(v0 + 176);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  *(v0 + 184) = Strong;
  if (Strong)
  {
    v3 = Strong;
    sub_10009591C();
    swift_allocError();
    *v4 = 26;
    v5 = _convertErrorToNSError(_:)();
    *(v0 + 192) = v5;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_10014293C;
    v6 = swift_continuation_init();
    *(v0 + 136) = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100142A94;
    *(v0 + 104) = &unk_1004C8710;
    *(v0 + 112) = v6;
    [v3 presentmentAssertionTimeoutWithError:v5 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {
    **(v0 + 168) = 1;
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_10014293C()
{
  v1 = *v0;
  v3 = *v0;

  return _swift_task_switch(sub_100142A1C, 0, 0);
}

uint64_t sub_100142A1C()
{
  v1 = *(v0 + 184);
  v2 = *(v0 + 192);
  swift_unknownObjectRelease();

  **(v0 + 168) = *(v0 + 184) == 0;
  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_100142A94(uint64_t a1)
{
  v1 = *sub_1000752B0((a1 + 32), *(a1 + 56));

  return swift_continuation_resume();
}

id SECServer.init(machServiceName:)()
{
  ObjectType = swift_getObjectType();
  v2 = &v0[OBJC_IVAR____TtC10seserviced9SECServer_machName];
  *v2 = 0xD000000000000027;
  *(v2 + 1) = 0x80000001004611B0;
  *&v0[OBJC_IVAR____TtC10seserviced9SECServer_backgroundAssertionMonitor] = 0;
  v3 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
  sub_100068FC4(&qword_100504840, &qword_100408C28);
  v4 = swift_allocObject();
  *(v4 + 24) = 0;
  *(v4 + 16) = &_swiftEmptyDictionarySingleton;
  *&v0[v3] = v4;
  v5 = String._bridgeToObjectiveC()();

  v12.receiver = v0;
  v12.super_class = ObjectType;
  v6 = objc_msgSendSuper2(&v12, "initWithMachServiceName:", v5);

  v7 = v6;
  [v7 setDelegate:v7];
  if (qword_100501A48 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B398;
  v11[3] = ObjectType;
  v11[4] = &off_1004C8690;

  v11[0] = v7;
  sub_1000BC094(v11, v10);
  swift_beginAccess();
  sub_100147EA4(v10, v8 + 56, &qword_100504848, &qword_10040BD10);
  swift_endAccess();
  sub_1000752F4(v11);
  return v7;
}

id SECServer.init()()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = [v0 initWithMachServiceName:v1];

  return v2;
}

id static SECServer.kickOff()()
{
  if (qword_1005019A8 != -1)
  {
    swift_once();
  }

  v1 = qword_10051B2C0;

  return [v1 resume];
}

id sub_100142DBC()
{
  result = [objc_allocWithZone(type metadata accessor for SECServer()) init];
  qword_10051B2C0 = result;
  return result;
}

uint64_t SECServer.machName.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC10seserviced9SECServer_machName);
  swift_beginAccess();
  v3 = *v1;
  v2 = v1[1];

  return v3;
}

uint64_t sub_100142EA4(int a1, char a2)
{
  v3 = v2;
  v6 = sub_100068FC4(&qword_100504250, &qword_10040D610);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v18 - v8;
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  sub_1000958E4(v10, qword_10051B2C8);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 67109120;
    *(v13 + 4) = a1;
    _os_log_impl(&_mh_execute_header, v11, v12, "Ending session(s) for %d due to client app background outside of WM transceive / suspension", v13, 8u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  *(v15 + 16) = 0;
  *(v15 + 24) = 0;
  *(v15 + 32) = a1;
  *(v15 + 36) = a2;
  *(v15 + 40) = v3;
  v16 = v3;
  sub_1001F9BE8(0, 0, v9, &unk_10040BD80, v15);
}

uint64_t sub_10014308C(uint64_t a1, uint64_t a2, uint64_t a3, int a4, char a5, uint64_t a6)
{
  *(v6 + 1056) = a6;
  *(v6 + 145) = a5;
  *(v6 + 212) = a4;
  return _swift_task_switch(sub_1001430B4, 0, 0);
}

uint64_t sub_1001430B4()
{
  if (qword_100501A48 != -1)
  {
LABEL_32:
    swift_once();
  }

  v1 = qword_10051B398;
  os_unfair_lock_lock((qword_10051B398 + 16));
  v2 = *(v1 + 24);
  if (v2)
  {
    v3 = *(v1 + 32);
    v4 = *(v1 + 24);
    ObjectType = swift_getObjectType();
    v6 = *(v3 + 8);
    swift_unknownObjectRetain();
    v6(ObjectType, v3);
    v7 = *(v0 + 344);
    *(v0 + 464) = v7;
    v8 = *(v0 + 312);
    *(v0 + 416) = *(v0 + 296);
    *(v0 + 432) = v8;
    *(v0 + 448) = *(v0 + 328);
    v9 = *(v0 + 248);
    *(v0 + 352) = *(v0 + 232);
    *(v0 + 368) = v9;
    v10 = *(v0 + 280);
    *(v0 + 384) = *(v0 + 264);
    *(v0 + 400) = v10;
    if (v7 >= 2u)
    {
      sub_10012E3A0(v0 + 216);
    }

    else
    {
      v12 = *(v0 + 400);
      v11 = *(v0 + 408);
      v14 = *(v0 + 368);
      v13 = *(v0 + 384);
      v57 = *(v0 + 312);
      v59 = *(v0 + 328);
      v15 = *(v0 + 212);
      *(v0 + 944) = *(v0 + 352);
      *(v0 + 960) = v14;
      *(v0 + 976) = v13;
      *(v0 + 992) = v12;
      *(v0 + 1000) = v11;
      v16 = *(v0 + 416);
      *(v0 + 1040) = v59;
      *(v0 + 1008) = v16;
      *(v0 + 1024) = v57;
      sub_10012E3F4(v0 + 352, v0 + 712);
      *(v0 + 180) = v57;
      *(v0 + 196) = v59;
      v17 = audit_token_to_pid((v0 + 180));
      sub_10012E450(v0 + 944);
      sub_10012E3A0(v0 + 216);
      if (v17 == v15)
      {
        swift_unknownObjectRetain();
        v18 = sub_10012F404(0, 1, 1, _swiftEmptyArrayStorage);
        v20 = v18[2];
        v19 = v18[3];
        v54 = v18;
        if (v20 >= v19 >> 1)
        {
          v54 = sub_10012F404((v19 > 1), v20 + 1, 1, v18);
        }

        swift_unknownObjectRelease();
        v54[2] = v20 + 1;
        v21 = &v54[2 * v20];
        v21[4] = v2;
        v21[5] = v3;
        goto LABEL_11;
      }
    }

    swift_unknownObjectRelease();
  }

  v54 = _swiftEmptyArrayStorage;
LABEL_11:
  v22 = *(v1 + 40);
  v23 = *(v22 + 16);
  if (!v23)
  {
    goto LABEL_24;
  }

  v24 = 0;
  do
  {
    v25 = v24;
    while (1)
    {
      if (v25 >= *(v22 + 16))
      {
        __break(1u);
        goto LABEL_32;
      }

      v56 = *(v22 + 32 + 16 * v25);
      v26 = swift_getObjectType();
      v27 = *(*(&v56 + 1) + 8);
      swift_unknownObjectRetain();
      v27(v26, *(&v56 + 1));
      *(v0 + 584) = *(v0 + 144);
      v28 = *(v0 + 112);
      *(v0 + 536) = *(v0 + 96);
      *(v0 + 552) = v28;
      *(v0 + 568) = *(v0 + 128);
      v29 = *(v0 + 48);
      *(v0 + 472) = *(v0 + 32);
      *(v0 + 488) = v29;
      v30 = *(v0 + 80);
      *(v0 + 504) = *(v0 + 64);
      *(v0 + 520) = v30;
      if (*(v0 + 584) < 2u)
      {
        break;
      }

      sub_10012E3A0(v0 + 16);
LABEL_15:
      swift_unknownObjectRelease();
      if (v23 == ++v25)
      {
        goto LABEL_24;
      }
    }

    v31 = *(v0 + 212);
    v32 = *(v0 + 528);
    v33 = *(v0 + 520);
    v34 = *(v0 + 504);
    v35 = *(v0 + 488);
    v58 = *(v0 + 112);
    v60 = *(v0 + 128);
    *(v0 + 832) = *(v0 + 472);
    *(v0 + 848) = v35;
    *(v0 + 864) = v34;
    *(v0 + 880) = v33;
    *(v0 + 888) = v32;
    v36 = *(v0 + 536);
    v37 = *(v0 + 128);
    *(v0 + 912) = *(v0 + 112);
    *(v0 + 928) = v37;
    *(v0 + 896) = v36;
    sub_10012E3F4(v0 + 472, v0 + 592);
    *(v0 + 148) = v58;
    *(v0 + 164) = v60;
    v38 = audit_token_to_pid((v0 + 148));
    sub_10012E450(v0 + 832);
    sub_10012E3A0(v0 + 16);
    if (v38 != v31)
    {
      goto LABEL_15;
    }

    swift_unknownObjectRetain();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v54 = sub_10012F404(0, v54[2] + 1, 1, v54);
    }

    v40 = v54[2];
    v39 = v54[3];
    if (v40 >= v39 >> 1)
    {
      v54 = sub_10012F404((v39 > 1), v40 + 1, 1, v54);
    }

    v24 = v25 + 1;
    swift_unknownObjectRelease();
    v54[2] = v40 + 1;
    *&v54[2 * v40 + 4] = v56;
  }

  while (v23 - 1 != v25);
LABEL_24:
  *(v0 + 1064) = v54;
  os_unfair_lock_unlock((v1 + 16));
  v41 = v54[2];
  *(v0 + 1072) = v41;
  if (v41)
  {
    *(v0 + 1080) = 0;
    v42 = *(v0 + 1064);
    *(v0 + 1088) = *(v42 + 32);
    v43 = *(v42 + 40);
    v44 = swift_getObjectType();
    v45 = *(v43 + 40);
    swift_unknownObjectRetain();
    v55 = (v45 + *v45);
    v46 = v45[1];
    v47 = swift_task_alloc();
    *(v0 + 1096) = v47;
    *v47 = v0;
    v47[1] = sub_100143644;
    v48 = *(v0 + 145);

    return (v55)(0, v48, v44, v43);
  }

  else
  {
    v50 = *(v0 + 1064);
    v51 = *(v0 + 1056);
    v52 = *(v0 + 212);

    sub_1001422F4(v52);
    v53 = *(v0 + 8);

    return v53();
  }
}

uint64_t sub_100143644()
{
  v1 = *(*v0 + 1096);
  v3 = *v0;

  return _swift_task_switch(sub_100143740, 0, 0);
}

uint64_t sub_100143740()
{
  v1 = *(v0 + 1088);
  v2 = *(v0 + 1080);
  v3 = *(v0 + 1072);
  swift_unknownObjectRelease();
  if (v2 + 1 == v3)
  {
    v4 = *(v0 + 1064);
    v5 = *(v0 + 1056);
    v6 = *(v0 + 212);

    sub_1001422F4(v6);
    v7 = *(v0 + 8);

    return v7();
  }

  else
  {
    v9 = *(v0 + 1080) + 1;
    *(v0 + 1080) = v9;
    v10 = *(v0 + 1064) + 16 * v9;
    *(v0 + 1088) = *(v10 + 32);
    v11 = *(v10 + 40);
    ObjectType = swift_getObjectType();
    v13 = *(v11 + 40);
    swift_unknownObjectRetain();
    v17 = (v13 + *v13);
    v14 = v13[1];
    v15 = swift_task_alloc();
    *(v0 + 1096) = v15;
    *v15 = v0;
    v15[1] = sub_100143644;
    v16 = *(v0 + 145);

    return (v17)(0, v16, ObjectType, v11);
  }
}

uint64_t sub_100143904(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  *(v5 + 168) = a5;
  *(v5 + 144) = a4;
  return _swift_task_switch(sub_100143928, 0, 0);
}

uint64_t sub_100143928()
{
  v1 = *(v0 + 144);
  v2 = OBJC_IVAR____TtC10seserviced9SECServer_presentmentIntentAssertionCallbacks;
  swift_beginAccess();
  v3 = *(v1 + v2);
  os_unfair_lock_lock((v3 + 24));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 24));
  if (*(v4 + 16) && (v5 = sub_10008CBA8(*(v0 + 168)), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 8 * v5);
    *(v0 + 152) = v7;
    swift_endAccess();
    swift_unknownObjectRetain();

    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = *(v0 + 168);
      v12 = swift_slowAlloc();
      *v12 = 67109120;
      *(v12 + 4) = v11;
      _os_log_impl(&_mh_execute_header, v9, v10, "Notifying presentment assertion timeout to %d", v12, 8u);
    }

    sub_10009591C();
    swift_allocError();
    *v13 = 26;
    v14 = _convertErrorToNSError(_:)();
    *(v0 + 160) = v14;

    *(v0 + 16) = v0;
    *(v0 + 24) = sub_100143CC4;
    v15 = swift_continuation_init();
    *(v0 + 136) = sub_100068FC4(&qword_1005073C0, &qword_10040F870);
    *(v0 + 80) = _NSConcreteStackBlock;
    *(v0 + 88) = 1107296256;
    *(v0 + 96) = sub_100142A94;
    *(v0 + 104) = &unk_1004C8738;
    *(v0 + 112) = v15;
    [v7 presentmentAssertionTimeoutWithError:v14 completionHandler:v0 + 80];

    return _swift_continuation_await(v0 + 16);
  }

  else
  {

    swift_endAccess();
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    sub_1000958E4(v16, qword_10051B2C8);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = *(v0 + 168);
      v20 = swift_slowAlloc();
      *v20 = 67109120;
      *(v20 + 4) = v19;
      _os_log_impl(&_mh_execute_header, v17, v18, "No callback for pid %d", v20, 8u);
    }

    v21 = *(v0 + 8);

    return v21();
  }
}