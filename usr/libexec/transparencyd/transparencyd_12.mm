uint64_t sub_10019E33C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 64);
  if (v2)
  {
    return *(v2 + *(*(a2 + 8) + 24));
  }

  else
  {
    return 0;
  }
}

id sub_10019E3A4(id result)
{
  if (result >= 30008)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Linked to ProtocolBuffer runtime version %d, but code compiled needing at least %d!", 30007, result];
  }

  if (result <= 30000)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Proto generation source compiled against runtime version %d, but this version of the runtime only supports back to %d!", result, 30001];
  }

  return result;
}

id sub_10019E470(id result)
{
  if (result != 30001)
  {
    return [NSException raise:NSInternalInconsistencyException format:@"Linked to ProtocolBuffer runtime version %d, but code compiled with version %d!", 30001, result, v1, v2];
  }

  return result;
}

BOOL sub_10019E4C8(void *a1, uint64_t a2)
{
  v3 = [objc_msgSend(a1 "descriptor")];

  return sub_10019E510(a1, v3);
}

BOOL sub_10019E510(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  if (a1 && a2)
  {
    v5 = *(a2 + 8);
    if ((*(v5 + 28) & 0xF02) != 0)
    {
      v6 = *(a1 + 64);
      if (v6)
      {
        v7 = *(v6 + *(v5 + 24));
      }

      else
      {
        v7 = 0;
      }

      return [v7 count] != 0;
    }

    else
    {
      v8 = *(v5 + 20);
      if ((v8 & 0x80000000) != 0)
      {
        return *(*(a1 + 64) + 4 * -v8) == *(v5 + 16);
      }

      else
      {
        return (*(*(a1 + 64) + ((v8 >> 3) & 0x1FFFFFFC)) >> v8) & 1;
      }
    }
  }

  return v4;
}

void sub_10019E5E0(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = *(v3 + 20);
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *(a1 + 64);
    if (*(v5 + 4 * -v4) != *(v3 + 16))
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 64);
    if (((*(v5 + ((v4 >> 3) & 0x1FFFFFFC)) >> v4) & 1) == 0)
    {
      return;
    }
  }

  if ((*(v3 + 28) & 0xF02) != 0 || *(v3 + 30) - 13 <= 3)
  {
    v6 = *(v3 + 24);

    *(v5 + v6) = 0;
    LODWORD(v4) = *(v3 + 20);
  }

  v7 = *(a1 + 64);
  if ((v4 & 0x80000000) != 0)
  {
    *(v7 + 4 * -v4) = 0;
  }

  else
  {
    *(v7 + 4 * (v4 >> 5)) &= ~(1 << v4);
  }
}

uint64_t sub_10019E6D0(uint64_t result, unsigned int a2, int a3, int a4)
{
  v4 = *(result + 64);
  if ((a2 & 0x80000000) != 0)
  {
    if (!a4)
    {
      a3 = 0;
    }

    *(v4 + 4 * -a2) = a3;
  }

  else
  {
    v5 = a2 >> 5;
    v6 = 1 << a2;
    if (a4)
    {
      v7 = *(v4 + 4 * v5) | v6;
    }

    else
    {
      v7 = *(v4 + 4 * v5) & ~v6;
    }

    *(v4 + 4 * v5) = v7;
  }

  return result;
}

void sub_10019E724(uint64_t a1, id *a2)
{
  v4 = *(*([a2[2] objectAtIndexedSubscript:0] + 1) + 20);

  sub_10019E790(a1, a2, v4, 0);
}

void sub_10019E790(uint64_t a1, void *a2, unsigned int a3, int a4)
{
  v5 = *(*(a1 + 64) - 4 * a3);
  if (v5 != a4 && v5 != 0)
  {
    v8 = [a2 fieldWithNumber:?];
    if (v8)
    {
      v9 = v8[1];
      if ((*(v9 + 28) & 0xF02) != 0 || *(v9 + 30) - 13 <= 3)
      {
        v10 = *(a1 + 64);
        v11 = *(v9 + 24);

        *(v10 + v11) = 0;
      }
    }

    v12 = *(a1 + 64);
    if ((a3 & 0x80000000) != 0)
    {
      *(v12 + 4 * -a3) = 0;
    }

    else
    {
      *(v12 + 4 * (a3 >> 5)) &= ~(1 << a3);
    }
  }
}

BOOL sub_10019E86C(uint64_t a1, unsigned int a2, int a3)
{
  if ((a2 & 0x80000000) != 0)
  {
    return *(*(a1 + 64) + 4 * -a2) == a3;
  }

  else
  {
    return (*(*(a1 + 64) + 4 * (a2 >> 5)) >> a2) & 1;
  }
}

void sub_10019E8D4(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 8);
  v4 = v3[5];
  if ((v4 & 0x80000000) != 0)
  {
    v5 = *(a1 + 64);
    if (*(v5 + 4 * -v4) == v3[4])
    {
      return;
    }
  }

  else
  {
    v5 = *(a1 + 64);
    if ((*(v5 + ((v4 >> 3) & 0x1FFFFFFC)) >> v4))
    {
      return;
    }
  }

  v6 = v3[6];
  v7 = *(v5 + v6);
  v8 = v7;
  *(v5 + v6) = 0;
  sub_100192F68(v7);
}

uint64_t sub_10019E97C(uint64_t a1, void *a2, void *a3)
{
  v5 = a3;

  return sub_10019E9C0(a1, a2, v5);
}

uint64_t sub_10019E9C0(uint64_t a1, void *a2, void *a3)
{
  v3 = a3;
  v6 = a2[1];
  v7 = *(v6 + 30);
  v8 = *(v6 + 28);
  if ((v8 & 0xF02) != 0)
  {
    v9 = *(a1 + 64);
    v10 = *(v6 + 24);
    v11 = *(v9 + v10);
    *(v9 + v10) = a3;
    if (!v11)
    {
      goto LABEL_32;
    }

    if ([a2 fieldType] == 1)
    {
      if ((v7 - 13) <= 3)
      {
        objc_opt_class();
        if (objc_opt_isKindOfClass())
        {
          v12 = &OBJC_IVAR___TransparencyGPBAutocreatedArray__autocreator;
          goto LABEL_29;
        }

LABEL_31:

        goto LABEL_32;
      }

      v12 = &OBJC_IVAR___TransparencyGPBInt32Array__autocreator;
    }

    else if ([a2 mapKeyDataType] == 14 && (v7 - 13) <= 3)
    {
      objc_opt_class();
      if ((objc_opt_isKindOfClass() & 1) == 0)
      {
        goto LABEL_31;
      }

      v12 = &OBJC_IVAR___TransparencyGPBAutocreatedDictionary__autocreator;
    }

    else
    {
      v12 = &OBJC_IVAR___TransparencyGPBInt32Int32Dictionary__autocreator;
    }

LABEL_29:
    v22 = *v12;
    if (*&v11[v22] == a1)
    {
      *&v11[v22] = 0;
    }

    goto LABEL_31;
  }

  v13 = a2[2];
  if (v13)
  {
    sub_10019E790(a1, v13, *(v6 + 20), *(v6 + 16));
    v8 = *(v6 + 28);
  }

  v14 = v3 != 0;
  if ((v8 & 0x20) != 0 && ![v3 length])
  {

    v14 = 0;
    v3 = 0;
  }

  v15 = *(v6 + 20);
  v16 = *(a1 + 64);
  if ((v15 & 0x80000000) != 0)
  {
    v19 = *(v6 + 16);
    if (!v14)
    {
      v19 = 0;
    }

    *(v16 + 4 * -v15) = v19;
  }

  else
  {
    v17 = v15 >> 5;
    v18 = 1 << v15;
    if (v14)
    {
      *(v16 + 4 * v17) |= v18;
    }

    else
    {
      *(v16 + 4 * v17) &= ~v18;
    }
  }

  v20 = *(a1 + 64);
  v21 = *(v6 + 24);
  v11 = *(v20 + v21);
  *(v20 + v21) = v3;
  if (v11)
  {
    if ((v7 - 15) <= 1 && sub_100192C44(v11, a1))
    {
      sub_100192F68(v11);
    }

    goto LABEL_31;
  }

LABEL_32:

  return sub_100192C54(a1);
}

uint64_t sub_10019EBE8(uint64_t a1, void *a2)
{
  v3 = sub_10019EC48(a1, a2);
  if ((*(a2[1] + 28) & 0x1000) == 0)
  {
    if ([a2 isValidEnumValue:v3])
    {
      return v3;
    }

    else
    {
      return 4222467823;
    }
  }

  return v3;
}

id sub_10019EC48(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  return [a2 defaultValue];
}

id sub_10019ECD8(void *a1, void *a2, uint64_t a3)
{
  if (([a2 isValidEnumValue:?] & 1) == 0)
  {
    +[NSException raise:format:](NSException, "raise:format:", NSInvalidArgumentException, @"%@.%@: Attempt to set an unknown enum value (%d)", objc_opt_class(), [a2 name], a3);
  }

  return sub_10019ED84(a1, a2, a3);
}

id sub_10019ED84(void *a1, uint64_t a2, int a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_10019E790(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_100192C54(a1);
}

uint64_t sub_10019EE84(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[4];
  v6 = v4[5];
  if ((v6 & 0x80000000) == 0)
  {
    v7 = *(a1 + 64);
    if ((*(v7 + ((v6 >> 3) & 0x1FFFFFFC)) >> v6))
    {
      goto LABEL_3;
    }

LABEL_6:
    LOBYTE(v9) = [a2 defaultValue];
    return v9 & 1;
  }

  v7 = *(a1 + 64);
  if (*(v7 + 4 * -v6) != v5)
  {
    goto LABEL_6;
  }

LABEL_3:
  v8 = v4[6];
  if ((v8 & 0x80000000) != 0)
  {
    LOBYTE(v9) = *(v7 + 4 * -v8) == v5;
  }

  else
  {
    v9 = (*(v7 + ((v8 >> 3) & 0x1FFFFFFC)) >> v8) & 1;
  }

  return v9 & 1;
}

void *sub_10019EF30(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_10019EF40(a1, a2, a3);
    }
  }

  return a1;
}

id sub_10019EF40(void *a1, uint64_t a2, int a3)
{
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  if (v6)
  {
    sub_10019E790(a1, v6, *(v5 + 20), *(v5 + 16));
  }

  v7 = *(v5 + 24);
  v8 = a1[8];
  if ((v7 & 0x80000000) != 0)
  {
    v11 = *(v5 + 16);
    if (!a3)
    {
      v11 = 0;
    }

    *(v8 + 4 * -v7) = v11;
    if (a3)
    {
      goto LABEL_9;
    }
  }

  else
  {
    v9 = v7 >> 5;
    v10 = 1 << v7;
    if (a3)
    {
      *(v8 + 4 * v9) |= v10;
LABEL_9:
      v12 = 1;
      goto LABEL_12;
    }

    *(v8 + 4 * v9) &= ~v10;
  }

  v12 = (*(v5 + 28) & 0x20) == 0;
LABEL_12:
  v13 = *(v5 + 20);
  v14 = a1[8];
  if ((v13 & 0x80000000) != 0)
  {
    if (v12)
    {
      v17 = *(v5 + 16);
    }

    else
    {
      v17 = 0;
    }

    *(v14 + 4 * -v13) = v17;
  }

  else
  {
    v15 = v13 >> 5;
    v16 = 1 << v13;
    if (v12)
    {
      *(v14 + 4 * v15) |= v16;
    }

    else
    {
      *(v14 + 4 * v15) &= ~v16;
    }
  }

  return sub_100192C54(a1);
}

void *sub_10019F074(void *a1, uint64_t a2, int a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_10019ED84(a1, a2, a3);
    }
  }

  return a1;
}

id sub_10019F084(uint64_t a1, void *a2)
{
  v2 = a2[1];
  v3 = v2[5];
  if ((v3 & 0x80000000) != 0)
  {
    v4 = *(a1 + 64);
    if (*(v4 + 4 * -v3) == v2[4])
    {
      return *(v4 + v2[6]);
    }
  }

  else
  {
    v4 = *(a1 + 64);
    if ((*(v4 + ((v3 >> 3) & 0x1FFFFFFC)) >> v3))
    {
      return *(v4 + v2[6]);
    }
  }

  return [a2 defaultValue];
}

void *sub_10019F0F8(void *a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_10019F108(a1, a2, a3);
    }
  }

  return a1;
}

id sub_10019F108(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_10019E790(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  if (a3)
  {
    v8 = 1;
  }

  else
  {
    v8 = (*(v7 + 28) & 0x20) == 0;
  }

  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_100192C54(a1);
}

float sub_10019F200(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  LODWORD(result) = [a2 defaultValue];
  return result;
}

void *sub_10019F290(void *a1, uint64_t a2, float a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_10019F2A0(a1, a2, a3);
    }
  }

  return a1;
}

id sub_10019F2A0(void *a1, uint64_t a2, float a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_10019E790(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  v8 = a3 != 0.0 || (*(v7 + 28) & 0x20) == 0;
  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_100192C54(a1);
}

double sub_10019F39C(uint64_t a1, void *a2)
{
  v4 = a2[1];
  v5 = v4[5];
  if ((v5 & 0x80000000) != 0)
  {
    v6 = *(a1 + 64);
    if (*(v6 + 4 * -v5) == v4[4])
    {
      return *(v6 + v4[6]);
    }
  }

  else
  {
    v6 = *(a1 + 64);
    if ((*(v6 + ((v5 >> 3) & 0x1FFFFFFC)) >> v5))
    {
      return *(v6 + v4[6]);
    }
  }

  return COERCE_DOUBLE([a2 defaultValue]);
}

void *sub_10019F42C(void *a1, uint64_t a2, double a3)
{
  if (a1)
  {
    if (a2)
    {
      return sub_10019F43C(a1, a2, a3);
    }
  }

  return a1;
}

id sub_10019F43C(void *a1, uint64_t a2, double a3)
{
  v6 = *(a2 + 16);
  v7 = *(a2 + 8);
  if (v6)
  {
    sub_10019E790(a1, v6, *(v7 + 20), *(v7 + 16));
  }

  *(a1[8] + *(v7 + 24)) = a3;
  v8 = a3 != 0.0 || (*(v7 + 28) & 0x20) == 0;
  v9 = *(v7 + 20);
  v10 = a1[8];
  if ((v9 & 0x80000000) != 0)
  {
    if (v8)
    {
      v13 = *(v7 + 16);
    }

    else
    {
      v13 = 0;
    }

    *(v10 + 4 * -v9) = v13;
  }

  else
  {
    v11 = v9 >> 5;
    v12 = 1 << v9;
    if (v8)
    {
      *(v10 + 4 * v11) |= v12;
    }

    else
    {
      *(v10 + 4 * v11) &= ~v12;
    }
  }

  return sub_100192C54(a1);
}

uint64_t sub_10019F53C(uint64_t result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = [a3 copy];

    return sub_10019E9C0(v4, a2, v5);
  }

  return result;
}

uint64_t sub_10019F59C(uint64_t result, void *a2, void *a3)
{
  if (result && a2)
  {
    v4 = result;
    v5 = a3;

    return sub_10019E9C0(v4, a2, v5);
  }

  return result;
}

__CFString *sub_10019F638(void *a1, __CFString *a2)
{
  v2 = &stru_10032E8E8;
  if (a1)
  {
    if (a2)
    {
      v4 = a2;
    }

    else
    {
      v4 = &stru_10032E8E8;
    }

    v2 = +[NSMutableString string];
    sub_10019F698(a1, v2, v4);
  }

  return v2;
}

id sub_10019F698(void *a1, void *a2, __CFString *a3)
{
  v5 = a1;
  v6 = [a1 descriptor];
  v7 = v6[1];
  v8 = [v7 count];
  v9 = [v6 extensionRanges];
  LODWORD(v10) = [v6 extensionRangesCount];
  v11 = [objc_msgSend(v5 "extensionsCurrentlySet")];
  if (v8)
  {
    v12 = 0;
  }

  else
  {
    v12 = v10 == 0;
  }

  if (!v12)
  {
    v13 = v11;
    v14 = 0;
    v15 = 0;
    v10 = v10;
    v57 = v75;
    v58 = v71;
    v67 = v5;
    v60 = v11;
    v61 = v9;
    v64 = a3;
    v65 = v10;
    v62 = v8;
    v63 = v7;
    do
    {
      if (v14 == v8)
      {
        sub_1001A0950(v5, v13, v9[v15++], a2, a3);
        v14 = v8;
        continue;
      }

      if (v15 != v10)
      {
        v16 = [v7 objectAtIndexedSubscript:v14];
        v17 = &v9[v15];
        if (*(v16[1] + 16) >= *v17)
        {
          ++v15;
          sub_1001A0950(v5, v13, *v17, a2, a3);
          continue;
        }
      }

      v68 = v14 + 1;
      v69 = [v7 objectAtIndexedSubscript:v14];
      v18 = [v69 fieldType];
      v19 = v18;
      if (v18 == 2 || v18 == 1)
      {
        v66 = v15;
        v23 = v5[8];
        if (v23)
        {
          v24 = *(v23 + *(v69[1] + 24));
        }

        else
        {
          v24 = 0;
        }

        v25 = [v24 count];
        if (v25)
        {
          goto LABEL_21;
        }
      }

      else
      {
        if (v18)
        {
          v14 = v68;
          continue;
        }

        v20 = v69[1];
        v21 = *(v20 + 20);
        v66 = v15;
        if ((v21 & 0x80000000) != 0)
        {
          v22 = *(v5[8] + 4 * -v21) == *(v20 + 16);
        }

        else
        {
          v22 = (*(v5[8] + ((v21 >> 3) & 0x1FFFFFFC)) >> v21) & 1;
        }

        v24 = 0;
        v25 = v22;
        if (v22)
        {
LABEL_21:
          v26 = [v69 textFormatName];
          if (![(NSString *)v26 length])
          {
            v26 = [NSString stringWithFormat:@"%u", *(v69[1] + 16)];
            if (v25 == 1)
            {
              a3 = v64;
              v5 = v67;
              v27 = +[NSString stringWithFormat:](NSString, "stringWithFormat:", @"  # %@", [v69 name]);
LABEL_29:
              if (v19 == 2)
              {
                v28 = [v69 mapKeyDataType];
                a3 = v64;
                v29 = *(v69[1] + 30);
                v59 = [NSString stringWithFormat:@"%@%@ {%@\n", v64, v26, v27, v57, v58];
                v30 = [NSString stringWithFormat:@"%@%@ {\n", v64, v26];
                v31 = [NSString stringWithFormat:@"%@}\n", v64];
                v32 = [NSString stringWithFormat:@"%@  key: ", v64];
                v33 = ":";
                if ((v29 - 15) < 2)
                {
                  v33 = "";
                }

                v34 = [NSString stringWithFormat:@"%@  value%s ", v64, v33];
                v77[0] = 0;
                v77[1] = v77;
                v77[2] = 0x2020000000;
                v78 = 1;
                if (v28 == 14 && (v29 - 13) <= 3)
                {
                  v74[0] = _NSConcreteStackBlock;
                  v74[1] = 3221225472;
                  v75[0] = sub_1001A0EE0;
                  v75[1] = &unk_100325B88;
                  v75[2] = a2;
                  v75[3] = v59;
                  v75[4] = v30;
                  v75[5] = v32;
                  v76 = v29;
                  v75[6] = v34;
                  v75[7] = v64;
                  v75[8] = v31;
                  v75[9] = v77;
                  [v24 enumerateKeysAndObjectsUsingBlock:v74];
                }

                else
                {
                  v70[0] = _NSConcreteStackBlock;
                  v70[1] = 3221225472;
                  v71[0] = sub_1001A102C;
                  v71[1] = &unk_100325BB0;
                  v71[9] = v31;
                  v71[10] = v77;
                  v71[2] = a2;
                  v71[3] = v59;
                  v72 = v28;
                  v71[4] = v30;
                  v71[5] = v32;
                  v73 = v29;
                  v71[6] = v34;
                  v71[7] = v64;
                  v71[8] = v69;
                  [v24 enumerateForTextFormat:v70];
                }

                _Block_object_dispose(v77, 8);
                v5 = v67;
                v14 = v68;
              }

              else
              {
                v35 = 0;
                v36 = *(v69[1] + 30);
                if ((v36 - 15) >= 2)
                {
                  v37 = ":";
                }

                else
                {
                  v37 = "";
                }

                do
                {
                  [a2 appendFormat:@"%@%@%s ", a3, v26, v37];
                  switch(v36)
                  {
                    case 0:
                      if (v24)
                      {
                        v45 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v45 = sub_10019EE84(v5, v69);
                      }

                      if (v45)
                      {
                        v51 = @"true";
                      }

                      else
                      {
                        v51 = @"false";
                      }

                      [a2 appendString:v51];
                      break;
                    case 1:
                    case 11:
                      if (v24)
                      {
                        v42 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v42 = sub_10019EC48(v5, v69);
                      }

                      [a2 appendFormat:@"%u", v42, v56];
                      break;
                    case 2:
                    case 7:
                    case 9:
                      if (v24)
                      {
                        v38 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v38 = sub_10019EC48(v5, v69);
                      }

                      [a2 appendFormat:@"%d", v38, v56];
                      break;
                    case 3:
                      if (v24)
                      {
                        [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v46 = sub_10019F200(v5, v69);
                      }

                      [a2 appendFormat:@"%.*g", 6, v46];
                      break;
                    case 4:
                    case 12:
                      if (v24)
                      {
                        v40 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v40 = sub_10019F084(v5, v69);
                      }

                      [a2 appendFormat:@"%llu", v40, v56];
                      break;
                    case 5:
                    case 8:
                    case 10:
                      if (v24)
                      {
                        v39 = [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v39 = sub_10019F084(v5, v69);
                      }

                      [a2 appendFormat:@"%lld", v39, v56];
                      break;
                    case 6:
                      if (v24)
                      {
                        [v24 valueAtIndex:v35];
                      }

                      else
                      {
                        v44 = sub_10019F39C(v5, v69);
                      }

                      [a2 appendFormat:@"%.*lg", 15, *&v44];
                      break;
                    case 13:
                      if (v24)
                      {
                        v49 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v49 = sub_100193F68(v5, v69);
                      }

                      sub_1001A0444(v49, a2);
                      break;
                    case 14:
                      if (v24)
                      {
                        v43 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v43 = sub_100193F68(v5, v69);
                      }

                      sub_1001A0D48(v43, a2);
                      break;
                    case 15:
                    case 16:
                      if (v24)
                      {
                        v41 = [v24 objectAtIndex:v35];
                      }

                      else
                      {
                        v41 = sub_100193F68(v5, v69);
                      }

                      v50 = v41;
                      [a2 appendFormat:@"{%@\n", v27];
                      sub_10019F698(v50, a2, [(__CFString *)a3 stringByAppendingString:@"  "]);
                      [a2 appendFormat:@"%@}", a3];
                      v27 = &stru_10032E8E8;
                      v5 = v67;
                      break;
                    case 17:
                      if (v24)
                      {
                        v47 = [v24 rawValueAtIndex:v35];
                        v48 = v69;
                      }

                      else
                      {
                        v48 = v69;
                        v47 = sub_10019EC48(v5, v69);
                      }

                      v52 = [v48 enumDescriptor];
                      if (v52 && (v53 = [v52 textFormatNameForValue:v47]) != 0)
                      {
                        [a2 appendString:v53];
                      }

                      else
                      {
                        [a2 appendFormat:@"%d", v47];
                      }

                      v5 = v67;
                      a3 = v64;
                      break;
                    default:
                      break;
                  }

                  [a2 appendFormat:@"%@\n", v27];
                  ++v35;
                }

                while (v25 != v35);
                v14 = v68;
              }

              v8 = v62;
              v7 = v63;
              v13 = v60;
              v9 = v61;
              goto LABEL_95;
            }

            [a2 appendFormat:@"%@# %@\n", a3, objc_msgSend(v69, "name")];
          }

          v27 = &stru_10032E8E8;
          goto LABEL_29;
        }
      }

      v14 = v68;
LABEL_95:
      v10 = v65;
      v15 = v66;
    }

    while (v14 < v8 || v15 < v10);
  }

  v54 = sub_10019FF9C([v5 unknownFields], a3);
  result = [(__CFString *)v54 length];
  if (result)
  {
    [a2 appendFormat:@"%@# --- Unknown fields ---\n", a3];
    return [a2 appendString:v54];
  }

  return result;
}

__CFString *sub_10019FF9C(void *a1, const __CFString *a2)
{
  v2 = &stru_10032E8E8;
  if (a1)
  {
    v4 = a2 ? a2 : &stru_10032E8E8;
    v2 = +[NSMutableString string];
    v43 = 0u;
    v44 = 0u;
    v45 = 0u;
    v46 = 0u;
    obj = [a1 sortedFields];
    v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
    if (v26)
    {
      v25 = *v44;
      do
      {
        v5 = 0;
        do
        {
          if (*v44 != v25)
          {
            objc_enumerationMutation(obj);
          }

          v28 = v5;
          v6 = *(*(&v43 + 1) + 8 * v5);
          v7 = [v6 number];
          v8 = [v6 varintList];
          v41[0] = _NSConcreteStackBlock;
          v41[1] = 3221225472;
          v41[2] = sub_1001A0390;
          v41[3] = &unk_100325B38;
          v41[4] = v2;
          v41[5] = v4;
          v42 = v7;
          [v8 enumerateValuesWithBlock:v41];
          v9 = [v6 fixed32List];
          v39[0] = _NSConcreteStackBlock;
          v39[1] = 3221225472;
          v39[2] = sub_1001A03CC;
          v39[3] = &unk_100325B60;
          v39[4] = v2;
          v39[5] = v4;
          v40 = v7;
          [v9 enumerateValuesWithBlock:v39];
          v10 = [v6 fixed64List];
          v37[0] = _NSConcreteStackBlock;
          v37[1] = 3221225472;
          v37[2] = sub_1001A0408;
          v37[3] = &unk_100325B38;
          v37[4] = v2;
          v37[5] = v4;
          v38 = v7;
          [v10 enumerateValuesWithBlock:v37];
          v35 = 0u;
          v36 = 0u;
          v33 = 0u;
          v34 = 0u;
          v27 = v6;
          v11 = [v6 lengthDelimitedList];
          v12 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
          if (v12)
          {
            v13 = v12;
            v14 = *v34;
            do
            {
              for (i = 0; i != v13; i = i + 1)
              {
                if (*v34 != v14)
                {
                  objc_enumerationMutation(v11);
                }

                v16 = *(*(&v33 + 1) + 8 * i);
                [(__CFString *)v2 appendFormat:@"%@%d: ", v4, v7];
                sub_1001A0444(v16, v2);
                [(__CFString *)v2 appendString:@"\n"];
              }

              v13 = [v11 countByEnumeratingWithState:&v33 objects:v48 count:16];
            }

            while (v13);
          }

          v31 = 0u;
          v32 = 0u;
          v29 = 0u;
          v30 = 0u;
          v17 = [v27 groupList];
          v18 = [v17 countByEnumeratingWithState:&v29 objects:v47 count:16];
          if (v18)
          {
            v19 = v18;
            v20 = *v30;
            do
            {
              for (j = 0; j != v19; j = j + 1)
              {
                if (*v30 != v20)
                {
                  objc_enumerationMutation(v17);
                }

                v22 = *(*(&v29 + 1) + 8 * j);
                [(__CFString *)v2 appendFormat:@"%@%d: {\n", v4, v7];
                [(__CFString *)v2 appendString:sub_10019FF9C(v22, [(__CFString *)v4 stringByAppendingString:@"  "])];
                [(__CFString *)v2 appendFormat:@"%@}\n", v4];
              }

              v19 = [v17 countByEnumeratingWithState:&v29 objects:v47 count:16];
            }

            while (v19);
          }

          v5 = v28 + 1;
        }

        while ((v28 + 1) != v26);
        v26 = [obj countByEnumeratingWithState:&v43 objects:v49 count:16];
      }

      while (v26);
    }
  }

  return v2;
}

id sub_1001A0444(void *a1, void *a2)
{
  v4 = [a1 bytes];
  v5 = [a1 length];
  [a2 appendString:@""];
  if (v5 >= 1)
  {
    v6 = &v4[v5];
    do
    {
      v7 = *v4;
      v8 = *v4;
      if (*v4 > 0x21u)
      {
        switch(v8)
        {
          case '""':
            v9 = a2;
            v10 = @"\\"";
            goto LABEL_19;
          case '\'':
            v9 = a2;
            v10 = @"\\'";
            goto LABEL_19;
          case '\\':
            v9 = a2;
            v10 = @"\\\";
            goto LABEL_19;
        }
      }

      else
      {
        switch(v8)
        {
          case 9:
            v9 = a2;
            v10 = @"\\t";
            goto LABEL_19;
          case 0xA:
            v9 = a2;
            v10 = @"\\n";
            goto LABEL_19;
          case 0xD:
            v9 = a2;
            v10 = @"\\r";
LABEL_19:
            [v9 appendString:v10];
            goto LABEL_20;
        }
      }

      if ((v7 & 0x80000000) != 0)
      {
        if (!__maskrune(*v4, 0x40000uLL))
        {
LABEL_23:
          [a2 appendFormat:@"\\%03o", v8];
          goto LABEL_20;
        }
      }

      else if ((_DefaultRuneLocale.__runetype[v7] & 0x40000) == 0)
      {
        goto LABEL_23;
      }

      [a2 appendFormat:@"%c", v7];
LABEL_20:
      ++v4;
    }

    while (v4 < v6);
  }

  return [a2 appendString:@""];
}

NSString *sub_1001A05F8(char *a1, int a2, void *a3)
{
  v3 = 0;
  if (a1 && a3)
  {
    v23 = a1;
    v6 = sub_1001A07DC(&v23);
    if (v6 < 1)
    {
      return 0;
    }

    else
    {
      v7 = v6;
      while (1)
      {
        v8 = sub_1001A07DC(&v23);
        v9 = v23;
        if (v8 == a2)
        {
          break;
        }

        v10 = v23 + 1;
          ;
        }

        v23 = v10;
        if (v7-- < 2)
        {
          return 0;
        }
      }

      if (*v23)
      {
        v3 = +[NSMutableString stringWithCapacity:](NSMutableString, "stringWithCapacity:", [a3 length]);
        v14 = *v9;
        if (*v9)
        {
          v15 = 0;
          while (1)
          {
            if (v14 < 0)
            {
              [(NSMutableString *)v3 appendString:@"_"];
              v14 = *v9;
            }

            v16 = v14 & 0x1F;
            v17 = v14 & 0x60;
            if (v17 == 32)
            {
              break;
            }

            if (v17 == 64)
            {
              v18 = __toupper([a3 characterAtIndex:v15]);
LABEL_21:
              [(NSMutableString *)v3 appendFormat:@"%c", v18];
              ++v15;
              --v16;
            }

            if (v16 >= 1)
            {
              v19 = v16;
              v20 = v15;
              do
              {
                v21 = [a3 characterAtIndex:v20];
                if (v17 == 96)
                {
                  [(NSMutableString *)v3 appendFormat:@"%c", __toupper(v21)];
                }

                else
                {
                  [(NSMutableString *)v3 appendFormat:@"%C", v21];
                }

                ++v20;
                --v19;
              }

              while (v19);
            }

            v15 += v16;
            v22 = *++v9;
            v14 = v22;
            if (!v22)
            {
              return v3;
            }
          }

          v18 = __tolower([a3 characterAtIndex:v15]);
          goto LABEL_21;
        }
      }

      else
      {
        return [NSString stringWithUTF8String:v23 + 1];
      }
    }
  }

  return v3;
}

uint64_t sub_1001A07DC(char **a1)
{
  v1 = *a1;
  v2 = *(*a1)++;
  if ((v2 & 0x80000000) != 0)
  {
    v3 = v2 & 0x7F;
    v4 = v1[1];
    *a1 = v1 + 2;
    v5 = v4 << 7;
    if ((v4 & 0x80000000) == 0)
    {
      return v5 | v3;
    }

    v3 |= v5 & 0x3F80;
    v6 = v1[2];
    *a1 = v1 + 3;
    v5 = v6 << 14;
    if ((v6 & 0x80000000) == 0)
    {
      return v5 | v3;
    }

    v3 |= v5 & 0x1FC000;
    v7 = v1[3];
    *a1 = v1 + 4;
    v5 = v7 << 21;
    if (v7 < 0)
    {
      v9 = v1[4];
      *a1 = v1 + 5;
      v2 = v5 & 0xFE00000 | (v9 << 28) | v3;
      if (v9 < 0)
      {
        v10 = v1 + 6;
        v11 = 5;
        while (1)
        {
          v12 = *(v10 - 1);
          *a1 = v10;
          if ((v12 & 0x80000000) == 0)
          {
            break;
          }

          ++v10;
          if (!--v11)
          {
            [NSException raise:NSParseErrorException format:@"Unable to read varint32"];
            return v2;
          }
        }
      }
    }

    else
    {
      return v5 | v3;
    }
  }

  return v2;
}

BOOL sub_1001A08CC(objc_class *a1, const char *a2)
{
  outCount = 0;
  v3 = class_copyMethodList(a1, &outCount);
  if (outCount)
  {
    for (i = 0; i < outCount; ++i)
    {
      Name = method_getName(v3[i]);
      v6 = Name == a2;
      if (Name == a2)
      {
        break;
      }
    }
  }

  else
  {
    v6 = 0;
  }

  free(v3);
  return v6;
}

id sub_1001A0950(void *a1, void *a2, uint64_t a3, void *a4, void *a5)
{
  v32 = 0u;
  v33 = 0u;
  v34 = 0u;
  v35 = 0u;
  result = [a2 countByEnumeratingWithState:&v32 objects:v36 count:16];
  v28 = result;
  if (result)
  {
    v27 = *v33;
    do
    {
      v7 = 0;
      do
      {
        if (*v33 != v27)
        {
          objc_enumerationMutation(a2);
        }

        v30 = v7;
        v8 = *(*(&v32 + 1) + 8 * v7);
        result = [v8 fieldNumber];
        if (result >= a3)
        {
          v9 = result;
          if (result >= HIDWORD(a3))
          {
            return result;
          }

          v10 = [a1 getExtension:v8];
          v11 = [v8 isRepeated];
          if (v11)
          {
            v12 = [v10 count];
            v13 = [v8 singletonName];
            if (v12 != 1)
            {
              [a4 appendFormat:@"%@# [%@]\n", a5, v13];
              v14 = [v8 dataType];
              if (!v12)
              {
                goto LABEL_36;
              }

              v15 = v14;
              v16 = &stru_10032E8E8;
              goto LABEL_14;
            }
          }

          else
          {
            v13 = [v8 singletonName];
          }

          v16 = [NSString stringWithFormat:@"  # [%@]", v13];
          v15 = [v8 dataType];
          v12 = 1;
LABEL_14:
          v17 = 0;
          if (v15 - 15 >= 2)
          {
            v18 = ":";
          }

          else
          {
            v18 = "";
          }

          do
          {
            v19 = v10;
            if (v11)
            {
              v19 = [v10 objectAtIndex:v17];
            }

            [a4 appendFormat:@"%@%u%s ", a5, v9, v18];
            switch(v15)
            {
              case 0u:
                if ([v19 BOOLValue])
                {
                  v23 = @"true";
                }

                else
                {
                  v23 = @"false";
                }

                [a4 appendString:v23];
                break;
              case 1u:
              case 0xBu:
                [a4 appendFormat:@"%u", objc_msgSend(v19, "unsignedIntValue"), v24];
                break;
              case 2u:
                v20 = [v19 unsignedIntValue];
                goto LABEL_34;
              case 3u:
                [v19 floatValue];
                [a4 appendFormat:@"%.*g", 6, v21];
                break;
              case 4u:
              case 0xCu:
                [a4 appendFormat:@"%llu", objc_msgSend(v19, "unsignedLongLongValue"), v24];
                break;
              case 5u:
              case 8u:
              case 0xAu:
                [a4 appendFormat:@"%lld", objc_msgSend(v19, "longLongValue"), v24];
                break;
              case 6u:
                [v19 doubleValue];
                [a4 appendFormat:@"%.*lg", 15, v22];
                break;
              case 7u:
              case 9u:
              case 0x11u:
                v20 = [v19 intValue];
LABEL_34:
                [a4 appendFormat:@"%d", v20, v24];
                break;
              case 0xDu:
                sub_1001A0444(v19, a4);
                break;
              case 0xEu:
                sub_1001A0D48(v19, a4);
                break;
              case 0xFu:
              case 0x10u:
                [a4 appendFormat:@"{%@\n", v16];
                sub_10019F698(v19, a4, [a5 stringByAppendingString:@"  "]);
                [a4 appendFormat:@"%@}", a5];
                v16 = &stru_10032E8E8;
                break;
              default:
                break;
            }

            [a4 appendFormat:@"%@\n", v16];
            ++v17;
          }

          while (v12 != v17);
        }

LABEL_36:
        v7 = v30 + 1;
      }

      while ((v30 + 1) != v28);
      result = [a2 countByEnumeratingWithState:&v32 objects:v36 count:16];
      v28 = result;
    }

    while (result);
  }

  return result;
}

id sub_1001A0D48(void *a1, void *a2)
{
  [a2 appendString:@""];
  v4 = [a1 length];
  if (v4)
  {
    v5 = v4;
    for (i = 0; v5 != i; ++i)
    {
      v7 = [a1 characterAtIndex:i];
      if (v7 > 33)
      {
        switch(v7)
        {
          case '""':
            v8 = a2;
            v9 = @"\\"";
            break;
          case '\'':
            v8 = a2;
            v9 = @"\\'";
            break;
          case '\\':
            v8 = a2;
            v9 = @"\\\";
            break;
          default:
LABEL_14:
            if (v7 > 0x1F)
            {
              [a2 appendFormat:@"%C", v7, v11, v12];
            }

            else
            {
              [a2 appendFormat:@"\\%d%d%d", 0, v7 >> 3, v7 & 7];
            }

            continue;
        }
      }

      else
      {
        switch(v7)
        {
          case 9:
            v8 = a2;
            v9 = @"\\t";
            break;
          case 0xA:
            v8 = a2;
            v9 = @"\\n";
            break;
          case 0xD:
            v8 = a2;
            v9 = @"\\r";
            break;
          default:
            goto LABEL_14;
        }
      }

      [v8 appendString:v9];
    }
  }

  return [a2 appendString:@""];
}

id sub_1001A0EE0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = 48;
  if (*(*(*(a1 + 88) + 8) + 24))
  {
    v7 = 40;
  }

  [v6 appendString:*(a1 + v7)];
  *(*(*(a1 + 88) + 8) + 24) = 0;
  [*(a1 + 32) appendString:*(a1 + 56)];
  sub_1001A0D48(a2, *(a1 + 32));
  [*(a1 + 32) appendString:@"\n"];
  [*(a1 + 32) appendString:*(a1 + 64)];
  v8 = *(a1 + 96);
  switch(v8)
  {
    case 13:
      sub_1001A0444(a3, *(a1 + 32));
      break;
    case 15:
      [*(a1 + 32) appendString:@"{\n"];
      sub_10019F698(a3, *(a1 + 32), [*(a1 + 72) stringByAppendingString:@"    "]);
      [*(a1 + 32) appendFormat:@"%@  }", *(a1 + 72)];
      break;
    case 14:
      sub_1001A0D48(a3, *(a1 + 32));
      break;
  }

  [*(a1 + 32) appendString:@"\n"];
  v9 = *(a1 + 32);
  v10 = *(a1 + 80);

  return [v9 appendString:v10];
}

id sub_1001A102C(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v7 = 48;
  if (*(*(*(a1 + 96) + 8) + 24))
  {
    v7 = 40;
  }

  [v6 appendString:*(a1 + v7)];
  *(*(*(a1 + 96) + 8) + 24) = 0;
  v8 = *(a1 + 32);
  if (*(a1 + 104) == 14)
  {
    [v8 appendString:*(a1 + 56)];
    sub_1001A0D48(a2, *(a1 + 32));
    [*(a1 + 32) appendString:@"\n"];
  }

  else
  {
    [v8 appendFormat:@"%@%@\n", *(a1 + 56), a2];
  }

  [*(a1 + 32) appendString:*(a1 + 64)];
  v9 = *(a1 + 105);
  if (v9 > 0xE)
  {
    if (v9 == 15)
    {
      [*(a1 + 32) appendString:@"{\n"];
      sub_10019F698(a3, *(a1 + 32), [*(a1 + 72) stringByAppendingString:@"    "]);
      [*(a1 + 32) appendFormat:@"%@  }", *(a1 + 72)];
    }

    else
    {
      if (v9 != 17)
      {
LABEL_15:
        v14 = *(a1 + 32);
        v13 = a3;
        goto LABEL_16;
      }

      v10 = [a3 intValue];
      v11 = [*(a1 + 80) enumDescriptor];
      if (v11)
      {
        v12 = [v11 textFormatNameForValue:v10];
        if (v12)
        {
          v13 = v12;
          v14 = *(a1 + 32);
LABEL_16:
          [v14 appendString:v13];
          goto LABEL_20;
        }
      }

      [*(a1 + 32) appendFormat:@"%d", v10];
    }
  }

  else
  {
    if (v9 != 13)
    {
      if (v9 == 14)
      {
        sub_1001A0D48(a3, *(a1 + 32));
        goto LABEL_20;
      }

      goto LABEL_15;
    }

    sub_1001A0444(a3, *(a1 + 32));
  }

LABEL_20:
  [*(a1 + 32) appendString:@"\n"];
  v15 = *(a1 + 32);
  v16 = *(a1 + 88);

  return [v15 appendString:v16];
}

uint64_t sub_1001A18DC(int a1, char a2)
{
  if (a2)
  {
    return 2;
  }

  else
  {
    return dword_1002DF110[a1];
  }
}

id sub_1001A1DDC(uint64_t a1)
{
  v2 = [+[TransparencyGPBApi descriptor](TransparencyGPBApi "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id sub_1001A1E28(void *a1, int a2)
{
  v4 = [+[TransparencyGPBApi descriptor](TransparencyGPBApi "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id sub_1001A1F00(uint64_t a1)
{
  v2 = [+[TransparencyGPBMethod descriptor](TransparencyGPBMethod "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id sub_1001A1F4C(void *a1, int a2)
{
  v4 = [+[TransparencyGPBMethod descriptor](TransparencyGPBMethod "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

void sub_1001A22B0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A22D4(id a1)
{
  qword_10039C718 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A2318(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = [WeakRetained deps];
  v6 = [v5 logger];
  [v6 logResultForEvent:@"ForceSyncKVS" hardFailure:1 result:v3];

  if (v3)
  {
    if (qword_10039C710 != -1)
    {
      sub_10025AD1C();
    }

    v7 = qword_10039C718;
    if (os_log_type_enabled(qword_10039C718, OS_LOG_TYPE_ERROR))
    {
      *v16 = 138412290;
      *&v16[4] = v3;
      v8 = "ForceSyncKVS failed with error: %@";
      v9 = v7;
      v10 = OS_LOG_TYPE_ERROR;
      v11 = 12;
LABEL_10:
      _os_log_impl(&_mh_execute_header, v9, v10, v8, v16, v11);
    }
  }

  else
  {
    if (qword_10039C710 != -1)
    {
      sub_10025AD30();
    }

    v12 = qword_10039C718;
    if (os_log_type_enabled(qword_10039C718, OS_LOG_TYPE_DEBUG))
    {
      *v16 = 0;
      v8 = "ForceSyncKVS success";
      v9 = v12;
      v10 = OS_LOG_TYPE_DEBUG;
      v11 = 2;
      goto LABEL_10;
    }
  }

  v13 = [WeakRetained intendedState];
  [WeakRetained setNextState:v13];

  v14 = [WeakRetained operationQueue];
  v15 = [WeakRetained finishedOp];
  [v14 addOperation:v15];
}

void sub_1001A24CC(id a1)
{
  qword_10039C718 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A2510(id a1)
{
  qword_10039C718 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

__CFString *sub_1001A2654(uint64_t a1)
{
  if (a1)
  {
    v1 = a1;
    v2 = +[NSMutableSet set];
    v3 = v2;
    if (v1)
    {
      [v2 addObject:@"unlock"];
      v1 &= ~1uLL;
      if ((v1 & 2) == 0)
      {
LABEL_4:
        if (!v1)
        {
LABEL_6:
          v5 = [v3 allObjects];
          v6 = [v5 componentsJoinedByString:{@", "}];

          goto LABEL_8;
        }

LABEL_5:
        v4 = [NSString stringWithFormat:@"Unknown conditions: 0x%x", v1];
        [v3 addObject:v4];

        goto LABEL_6;
      }
    }

    else if ((v1 & 2) == 0)
    {
      goto LABEL_4;
    }

    [v3 addObject:@"network"];
    v1 &= ~2uLL;
    if (!v1)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v6 = @"none";
LABEL_8:

  return v6;
}

void sub_1001A39E8(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3A2C(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3A70(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3AB4(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3AF8(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3B3C(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3B80(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3BC4(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3C08(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A3F08(void *a1, void *a2, void *a3, void *a4)
{
  v7 = a2;
  v8 = a3;
  v9 = a4;
  if (!v8)
  {
    (*(a1[7] + 16))();
    goto LABEL_16;
  }

  v10 = a1[4];
  v22 = 0;
  v11 = [v10 createTransparentDataFromQueryInfo:v8 error:&v22];
  v12 = v22;
  v13 = v12;
  if (!v11)
  {
    if (qword_10039C720 != -1)
    {
      sub_10025AE84();
    }

    v17 = qword_10039C728;
    if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
    {
      v18 = a1[5];
      *buf = 141558786;
      v24 = 1752392040;
      v25 = 2112;
      v26 = v7;
      v27 = 2114;
      v28 = v18;
      v29 = 2112;
      v30 = v13;
      _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Failed to build transparentData for %{mask.hash}@ fetchId %{public}@: %@", buf, 0x2Au);
    }

    goto LABEL_15;
  }

  v14 = a1[6];
  v21 = v12;
  v15 = [v11 verifyServerInvariantsAt:v14 error:&v21];
  v16 = v21;

  if ((v15 & 1) == 0)
  {
    if (qword_10039C720 != -1)
    {
      sub_10025AE5C();
    }

    v19 = qword_10039C728;
    if (os_log_type_enabled(qword_10039C728, OS_LOG_TYPE_ERROR))
    {
      v20 = a1[5];
      *buf = 141558786;
      v24 = 1752392040;
      v25 = 2112;
      v26 = v7;
      v27 = 2114;
      v28 = v20;
      v29 = 2112;
      v30 = v16;
      _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_ERROR, "Failed server invariant verification for %{mask.hash}@ fetchId %{public}@: %@", buf, 0x2Au);
    }

    v13 = v16;
LABEL_15:
    (*(a1[7] + 16))();

    goto LABEL_16;
  }

  (*(a1[7] + 16))();

LABEL_16:
}

void sub_1001A419C(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A41E0(id a1)
{
  qword_10039C728 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A45FC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001A4620(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001A4638(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
    v6 = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && logBeginTime == %llu && signatureVerified == %d && inclusionVerified == %d && mmdVerified = %d", *(a1 + 40), *(a1 + 72), 1, 1, 1];
    [v5 setPredicate:v6];

    v46 = *(a1 + 48);
    v7 = [NSArray arrayWithObjects:&v46 count:1];
    [v5 setPropertiesToFetch:v7];

    [v5 setReturnsDistinctResults:1];
    [v5 setResultType:2];
    [v5 setFetchLimit:1];
    v8 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:0];
    v45 = v8;
    v9 = [NSArray arrayWithObjects:&v45 count:1];
    [v5 setSortDescriptors:v9];

    v10 = [*(a1 + 32) context];
    v11 = *(*(a1 + 56) + 8);
    v38 = *(v11 + 40);
    v12 = [v10 executeFetchRequest:v5 error:&v38];
    objc_storeStrong((v11 + 40), v38);

    v13 = *(*(a1 + 56) + 8);
    v37 = *(v13 + 40);
    [TransparencyManagedDataStore cleanseError:&v37];
    objc_storeStrong((v13 + 40), v37);
    if (v12 && [v12 count])
    {
      v14 = [v12 objectAtIndexedSubscript:0];
      v15 = [v14 objectForKeyedSubscript:*(a1 + 48)];
      *(*(*(a1 + 64) + 8) + 24) = [v15 BOOLValue];

      if (qword_10039C730 != -1)
      {
        sub_10025AED4();
      }

      v16 = qword_10039C738;
      if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_INFO))
      {
        v17 = *(a1 + 48);
        v18 = *(*(*(a1 + 64) + 8) + 24);
        *buf = 138412546;
        v42 = v17;
        v43 = 1024;
        v44 = v18;
        _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "latest verified map has property %@ = %d", buf, 0x12u);
      }

      v19 = v12;
    }

    else
    {
      v21 = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && logBeginTime == %llu && signatureVerified == %d && inclusionVerified == %d && mmdVerified = %d", *(a1 + 40), *(a1 + 72), 1, 2, 1];
      [v5 setPredicate:v21];

      v22 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:0];
      v40 = v22;
      v23 = [NSArray arrayWithObjects:&v40 count:1];
      [v5 setSortDescriptors:v23];

      v24 = [*(a1 + 32) context];
      v25 = *(*(a1 + 56) + 8);
      v36 = *(v25 + 40);
      v19 = [v24 executeFetchRequest:v5 error:&v36];
      objc_storeStrong((v25 + 40), v36);

      v26 = *(*(a1 + 56) + 8);
      v35 = *(v26 + 40);
      [TransparencyManagedDataStore cleanseError:&v35];
      objc_storeStrong((v26 + 40), v35);
      if (v19 && [v19 count])
      {
        v27 = [v19 objectAtIndexedSubscript:0];
        v28 = [v27 objectForKeyedSubscript:*(a1 + 48)];
        *(*(*(a1 + 64) + 8) + 24) = [v28 BOOLValue];

        if (qword_10039C730 != -1)
        {
          sub_10025AEFC();
        }

        v29 = qword_10039C738;
        if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_INFO))
        {
          v30 = *(a1 + 48);
          v31 = *(*(*(a1 + 64) + 8) + 24);
          *buf = 138412546;
          v42 = v30;
          v43 = 1024;
          v44 = v31;
          _os_log_impl(&_mh_execute_header, v29, OS_LOG_TYPE_INFO, "no fully verified map; latest pending map had property %@ = %d", buf, 0x12u);
        }
      }

      else
      {
        v32 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-128 errorLevel:2 underlyingError:*(*(*(a1 + 56) + 8) + 40) description:@"no previous map heads stored"];
        v33 = *(*(a1 + 56) + 8);
        v34 = *(v33 + 40);
        *(v33 + 40) = v32;
      }
    }
  }

  else
  {
    if (qword_10039C730 != -1)
    {
      sub_10025AEAC();
    }

    v20 = qword_10039C738;
    if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_ERROR, "failed to get latest map head", buf, 2u);
    }
  }
}

void sub_1001A4BA8(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A4BEC(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A4C30(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A4E2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1001A4E50(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
    v6 = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && logBeginTime == %llu && signatureVerified == %d && inclusionVerified == %d && mmdVerified = %d", *(a1 + 40), *(a1 + 72), 1, 1, 1];
    [v5 setPredicate:v6];

    v47 = *(a1 + 48);
    v7 = [NSArray arrayWithObjects:&v47 count:1];
    [v5 setPropertiesToFetch:v7];

    [v5 setReturnsDistinctResults:1];
    [v5 setResultType:2];
    [v5 setFetchLimit:1];
    v8 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:0];
    v46 = v8;
    v9 = [NSArray arrayWithObjects:&v46 count:1];
    [v5 setSortDescriptors:v9];

    v10 = [*(a1 + 32) context];
    v11 = *(*(a1 + 56) + 8);
    v39 = *(v11 + 40);
    v12 = [v10 executeFetchRequest:v5 error:&v39];
    objc_storeStrong((v11 + 40), v39);

    v13 = *(*(a1 + 56) + 8);
    v38 = *(v13 + 40);
    [TransparencyManagedDataStore cleanseError:&v38];
    objc_storeStrong((v13 + 40), v38);
    if (v12 && [v12 count])
    {
      v14 = [v12 objectAtIndexedSubscript:0];
      v15 = [v14 objectForKeyedSubscript:*(a1 + 48)];
      v16 = *(*(a1 + 64) + 8);
      v17 = *(v16 + 40);
      *(v16 + 40) = v15;

      if (qword_10039C730 != -1)
      {
        sub_10025AF4C();
      }

      v18 = qword_10039C738;
      if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_INFO))
      {
        v19 = *(a1 + 48);
        v20 = *(*(*(a1 + 64) + 8) + 40);
        *buf = 138412546;
        v43 = v19;
        v44 = 2112;
        v45 = v20;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "latest verified map has property %@ = %@", buf, 0x16u);
      }
    }

    else
    {
      v22 = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && logBeginTime == %llu && signatureVerified == %d && inclusionVerified == %d && mmdVerified = %d", *(a1 + 40), *(a1 + 72), 1, 2, 1];
      [v5 setPredicate:v22];

      v23 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:0];
      v41 = v23;
      v24 = [NSArray arrayWithObjects:&v41 count:1];
      [v5 setSortDescriptors:v24];

      v25 = [*(a1 + 32) context];
      v26 = *(*(a1 + 56) + 8);
      v37 = *(v26 + 40);
      v27 = [v25 executeFetchRequest:v5 error:&v37];
      objc_storeStrong((v26 + 40), v37);

      v28 = *(*(a1 + 56) + 8);
      v36 = *(v28 + 40);
      [TransparencyManagedDataStore cleanseError:&v36];
      objc_storeStrong((v28 + 40), v36);
      if (v27)
      {
        if ([v27 count])
        {
          v29 = [v27 objectAtIndexedSubscript:0];
          v30 = [v29 objectForKeyedSubscript:*(a1 + 48)];
          v31 = *(*(a1 + 64) + 8);
          v32 = *(v31 + 40);
          *(v31 + 40) = v30;

          if (qword_10039C730 != -1)
          {
            sub_10025AF74();
          }

          v33 = qword_10039C738;
          if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_INFO))
          {
            v34 = *(a1 + 48);
            v35 = *(*(*(a1 + 64) + 8) + 40);
            *buf = 138412546;
            v43 = v34;
            v44 = 2112;
            v45 = v35;
            _os_log_impl(&_mh_execute_header, v33, OS_LOG_TYPE_INFO, "no fully verified map; latest pending map had property %@ = %@", buf, 0x16u);
          }
        }

        v12 = v27;
      }

      else
      {
        v12 = 0;
      }
    }
  }

  else
  {
    if (qword_10039C730 != -1)
    {
      sub_10025AF24();
    }

    v21 = qword_10039C738;
    if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_ERROR, "failed to get latest map head", buf, 2u);
    }
  }
}

void sub_1001A5370(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A53B4(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A53F8(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A5660(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1001A5684(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 56) + 8);
  v36 = *(v3 + 40);
  v4 = [v2 persistWithError:&v36];
  objc_storeStrong((v3 + 40), v36);
  if (v4)
  {
    v5 = [NSFetchRequest fetchRequestWithEntityName:@"KTTreeHead"];
    v6 = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && logBeginTime == %llu && signatureVerified == %d && inclusionVerified == %d && mmdVerified = %d", *(a1 + 40), *(a1 + 72), 1, 1, 1];
    [v5 setPredicate:v6];

    [v5 setReturnsDistinctResults:1];
    [v5 setFetchLimit:1];
    v7 = [NSSortDescriptor sortDescriptorWithKey:@"revision" ascending:0];
    v37 = v7;
    v8 = [NSArray arrayWithObjects:&v37 count:1];
    [v5 setSortDescriptors:v8];

    v9 = [*(a1 + 32) context];
    v10 = *(*(a1 + 56) + 8);
    obj = *(v10 + 40);
    v11 = [v9 executeFetchRequest:v5 error:&obj];
    objc_storeStrong((v10 + 40), obj);

    v12 = *(*(a1 + 56) + 8);
    v33 = *(v12 + 40);
    [TransparencyManagedDataStore cleanseError:&v33];
    objc_storeStrong((v12 + 40), v33);
    if (v11 && [v11 count])
    {
      v13 = v11;
    }

    else
    {
      v15 = [NSPredicate predicateWithFormat:@"isMapHead == YES && application == %@ && logBeginTime == %llu && signatureVerified == %d && inclusionVerified == %d && mmdVerified = %d", *(a1 + 40), *(a1 + 72), 1, 2, 1];
      [v5 setPredicate:v15];

      v16 = [*(a1 + 32) context];
      v17 = *(*(a1 + 56) + 8);
      v32 = *(v17 + 40);
      v13 = [v16 executeFetchRequest:v5 error:&v32];
      objc_storeStrong((v17 + 40), v32);

      v18 = *(*(a1 + 56) + 8);
      v31 = *(v18 + 40);
      [TransparencyManagedDataStore cleanseError:&v31];
      objc_storeStrong((v18 + 40), v31);
      if (!v13 || ![v13 count])
      {
        v25 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-128 errorLevel:2 underlyingError:*(*(*(a1 + 56) + 8) + 40) description:@"no previous map heads stored"];
        v26 = *(*(a1 + 56) + 8);
        v27 = *(v26 + 40);
        *(v26 + 40) = v25;

        goto LABEL_14;
      }
    }

    v19 = [v13 objectAtIndexedSubscript:0];
    if (v19)
    {
      v20 = v19;
      v21 = *(a1 + 48);
      v22 = *(*(a1 + 56) + 8);
      v30 = *(v22 + 40);
      v23 = (*(v21 + 16))();
      objc_storeStrong((v22 + 40), v30);
      *(*(*(a1 + 64) + 8) + 24) = v23;
      v24 = *(*(a1 + 56) + 8);
      v29 = *(v24 + 40);
      [TransparencyManagedDataStore cleanseError:&v29];
      objc_storeStrong((v24 + 40), v29);

LABEL_18:
      return;
    }

LABEL_14:
    if (qword_10039C730 != -1)
    {
      sub_10025AFC4();
    }

    v28 = qword_10039C738;
    if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "failed to get latest map head", buf, 2u);
    }

    goto LABEL_18;
  }

  if (qword_10039C730 != -1)
  {
    sub_10025AF9C();
  }

  v14 = qword_10039C738;
  if (os_log_type_enabled(qword_10039C738, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "failed to get latest map head", buf, 2u);
  }
}

void sub_1001A5AC8(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A5B0C(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001A5CC0(id a1)
{
  qword_10039C738 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id *sub_1001A6358(id *result, uint64_t a2, uint64_t a3)
{
  if (!a3)
  {
    return [result[4] setPendingFlag:@"FetchIDMS" stateMachine:result[5]];
  }

  return result;
}

unint64_t BatchUpdateRequest_UpdateData_UpdateType_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C740))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"BatchUpdateRequest_UpdateData_UpdateType" valueNames:"Insert" values:&unk_1002DF190 count:3 enumVerifier:BatchUpdateRequest_UpdateData_UpdateType_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C740, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C740);
}

id BatchUpdateRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[BatchUpdateRequest descriptor](BatchUpdateRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetBatchUpdateRequest_Version_RawValue(void *a1, int a2)
{
  v4 = [+[BatchUpdateRequest descriptor](BatchUpdateRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id BatchUpdateRequest_UpdateData_Type_RawValue(uint64_t a1)
{
  v2 = [+[BatchUpdateRequest_UpdateData descriptor](BatchUpdateRequest_UpdateData "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetBatchUpdateRequest_UpdateData_Type_RawValue(void *a1, int a2)
{
  v4 = [+[BatchUpdateRequest_UpdateData descriptor](BatchUpdateRequest_UpdateData "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id BatchUpdateRequest_UpdateData_Application_RawValue(uint64_t a1)
{
  v2 = [+[BatchUpdateRequest_UpdateData descriptor](BatchUpdateRequest_UpdateData "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetBatchUpdateRequest_UpdateData_Application_RawValue(void *a1, int a2)
{
  v4 = [+[BatchUpdateRequest_UpdateData descriptor](BatchUpdateRequest_UpdateData "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id BatchUpdateResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[BatchUpdateResponse descriptor](BatchUpdateResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetBatchUpdateResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[BatchUpdateResponse descriptor](BatchUpdateResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

void BatchUpdateResponse_UpdateResponseData_ClearResponseDataOneOfCase(uint64_t a1)
{
  v2 = [objc_msgSend(+[BatchUpdateResponse_UpdateResponseData descriptor](BatchUpdateResponse_UpdateResponseData "descriptor")];

  sub_10019E724(a1, v2);
}

id InsertResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[InsertResponse descriptor](InsertResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetInsertResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[InsertResponse descriptor](InsertResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id MarkForDeletionResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[MarkForDeletionResponse descriptor](MarkForDeletionResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetMarkForDeletionResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[MarkForDeletionResponse descriptor](MarkForDeletionResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id OptInOutResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[OptInOutResponse descriptor](OptInOutResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetOptInOutResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[OptInOutResponse descriptor](OptInOutResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id VerifySyncRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[VerifySyncRequest descriptor](VerifySyncRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetVerifySyncRequest_Version_RawValue(void *a1, int a2)
{
  v4 = [+[VerifySyncRequest descriptor](VerifySyncRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id VerifySyncRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[VerifySyncRequest descriptor](VerifySyncRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetVerifySyncRequest_Application_RawValue(void *a1, int a2)
{
  v4 = [+[VerifySyncRequest descriptor](VerifySyncRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id VerifySyncResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[VerifySyncResponse descriptor](VerifySyncResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetVerifySyncResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[VerifySyncResponse descriptor](VerifySyncResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id ConsistencyProofRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetConsistencyProofRequest_Version_RawValue(void *a1, int a2)
{
  v4 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id ConsistencyProofRequest_LogType_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetConsistencyProofRequest_LogType_RawValue(void *a1, int a2)
{
  v4 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id ConsistencyProofRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetConsistencyProofRequest_Application_RawValue(void *a1, int a2)
{
  v4 = [+[ConsistencyProofRequest descriptor](ConsistencyProofRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id ConsistencyProofResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetConsistencyProofResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id ConsistencyProofResponse_LogType_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetConsistencyProofResponse_LogType_RawValue(void *a1, int a2)
{
  v4 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id ConsistencyProofResponse_Application_RawValue(uint64_t a1)
{
  v2 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetConsistencyProofResponse_Application_RawValue(void *a1, int a2)
{
  v4 = [+[ConsistencyProofResponse descriptor](ConsistencyProofResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id RevisionLogInclusionProofRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetRevisionLogInclusionProofRequest_Version_RawValue(void *a1, int a2)
{
  v4 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id RevisionLogInclusionProofRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetRevisionLogInclusionProofRequest_Application_RawValue(void *a1, int a2)
{
  v4 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id RevisionLogInclusionProofRequest_LogType_RawValue(uint64_t a1)
{
  v2 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetRevisionLogInclusionProofRequest_LogType_RawValue(void *a1, int a2)
{
  v4 = [+[RevisionLogInclusionProofRequest descriptor](RevisionLogInclusionProofRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id RevisionLogInclusionProofResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[RevisionLogInclusionProofResponse descriptor](RevisionLogInclusionProofResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetRevisionLogInclusionProofResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[RevisionLogInclusionProofResponse descriptor](RevisionLogInclusionProofResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id PublicKeysRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[PublicKeysRequest descriptor](PublicKeysRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetPublicKeysRequest_Version_RawValue(void *a1, int a2)
{
  v4 = [+[PublicKeysRequest descriptor](PublicKeysRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id PublicKeysRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[PublicKeysRequest descriptor](PublicKeysRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetPublicKeysRequest_Application_RawValue(void *a1, int a2)
{
  v4 = [+[PublicKeysRequest descriptor](PublicKeysRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id PublicKeysResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[PublicKeysResponse descriptor](PublicKeysResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetPublicKeysResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[PublicKeysResponse descriptor](PublicKeysResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id Gossip_Version_RawValue(uint64_t a1)
{
  v2 = [+[Gossip descriptor](Gossip "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetGossip_Version_RawValue(void *a1, int a2)
{
  v4 = [+[Gossip descriptor](Gossip "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

void sub_1001A83D8(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A83F8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_1001A87FC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 40));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001A881C(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  (*(*(a1 + 32) + 16))();
}

void sub_1001A8BFC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if ([WeakRetained timeoutCanOccur])
  {
    [WeakRetained setTimeoutCanOccur:0];
    v1 = [WeakRetained transitionOperation];
    v2 = [v1 timeout:0];

    v3 = objc_alloc_init(NSOperationQueue);
    v4 = [WeakRetained transitionOperation];
    [v3 addOperation:v4];
  }
}

void sub_1001A93BC(id a1)
{
  qword_10039C7E8 = objc_alloc_init(KTDefaultTransparentDataDeps);

  _objc_release_x1();
}

void sub_1001AA81C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001AA838(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  v7 = [v5 mutationMs];
  if (v7 > [v6 mutationMs])
  {
    v8 = 1;
    goto LABEL_40;
  }

  v9 = [v5 mutationMs];
  if (v9 != [v6 mutationMs])
  {
    v8 = -1;
    goto LABEL_40;
  }

  if ([v5 isEqual:v6])
  {
LABEL_39:
    v8 = 0;
    goto LABEL_40;
  }

  v10 = [v5 getSimpleMutationType];
  v11 = [v6 getSimpleMutationType];
  if ((v10 == 3 || [v5 hasOptInExtension]) && (v11 == 3 || objc_msgSend(v6, "hasOptInExtension")))
  {
    v12 = [v5 accountKeyHash];
    v13 = [v6 accountKeyHash];
    v14 = v13;
    if (!v12 || !v13 || [v12 isEqualToData:v13])
    {
      v15 = [v5 getOptIn];
      if (v15 != [v6 getOptIn])
      {
        *(*(*(a1 + 32) + 8) + 24) = 1;
        if (qword_10039C7F8 != -1)
        {
          sub_10025B014();
        }

        v16 = qword_10039C800;
        if (os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
        {
          v17 = v16;
          *buf = 134217984;
          v48 = [v5 mutationMs];
          _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "Error sorting SMTS: different OptInOut states for %llu ms", buf, 0xCu);
        }
      }
    }
  }

  v18 = v10 - 1;
  if (v10 == 1 && v11 == 1)
  {
    v19 = [v5 idsDeviceMutation];
    v20 = [v19 accountKeyHash];
    v21 = [v6 idsDeviceMutation];
    v22 = [v21 accountKeyHash];
    v23 = [v20 isEqual:v22];

    if ((v23 & 1) == 0)
    {
      *(*(*(a1 + 32) + 8) + 24) = 1;
      if (qword_10039C7F8 != -1)
      {
        sub_10025B028();
      }

      v39 = qword_10039C800;
      if (!os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
      {
        goto LABEL_39;
      }

      v36 = v39;
      v40 = [v5 mutationMs];
      *buf = 134217984;
      v48 = v40;
      v38 = "Error sorting SMTS: two Add mutations with different account key for %llu ms";
LABEL_35:
      _os_log_impl(&_mh_execute_header, v36, OS_LOG_TYPE_ERROR, v38, buf, 0xCu);

      goto LABEL_39;
    }
  }

  v8 = 0;
  if (v18 <= 1 && v11 - 1 <= 1)
  {
    v24 = [v5 idsDeviceMutation];
    v25 = [v24 accountKeyHash];
    v26 = [v6 idsDeviceMutation];
    v27 = [v26 accountKeyHash];
    if ([v25 isEqual:v27])
    {
      v45 = v25;
      v28 = [v5 idsDeviceMutation];
      v29 = [v28 deviceIdHash];
      v30 = [v6 idsDeviceMutation];
      v31 = [v30 deviceIdHash];
      v46 = v29;
      if ([v29 isEqual:v31])
      {
        [v5 idsDeviceMutation];
        v32 = v42 = v28;
        v33 = [v32 appVersion];
        [v6 idsDeviceMutation];
        v34 = v44 = v24;
        v43 = [v34 appVersion];

        if (v33 != v43)
        {
          goto LABEL_39;
        }

        *(*(*(a1 + 32) + 8) + 24) = 1;
        if (qword_10039C7F8 != -1)
        {
          sub_10025B050();
        }

        v35 = qword_10039C800;
        if (!os_log_type_enabled(qword_10039C800, OS_LOG_TYPE_ERROR))
        {
          goto LABEL_39;
        }

        v36 = v35;
        v37 = [v5 mutationMs];
        *buf = 134217984;
        v48 = v37;
        v38 = "Error sorting SMTS: different Add/Mark mutations for %llu ms for entry";
        goto LABEL_35;
      }
    }

    else
    {
    }

    goto LABEL_39;
  }

LABEL_40:

  return v8;
}

void sub_1001AAD1C(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AAD60(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AADA4(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ABB90(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ABBD4(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ABC18(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ABC5C(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ABCA0(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ABCE4(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ACEAC(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ACEF0(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ACF34(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ACF78(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001ACFBC(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AD000(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AD044(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AD35C(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AD710(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AE934(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AE978(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AE9BC(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AEA00(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AEA44(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AF380(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001AF6B0(id a1)
{
  qword_10039C800 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

unint64_t ProtocolVersion_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C808))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"ProtocolVersion" valueNames:"UnknownVersion" values:&unk_1002DF2EC count:5 enumVerifier:ProtocolVersion_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C808, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C808);
}

unint64_t Application_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C810))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"Application" valueNames:"UnknownApplication" values:&unk_1002DF37C count:7 enumVerifier:Application_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C810, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C810);
}

unint64_t Status_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C818))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"Status" valueNames:"UnknownStatus" values:&unk_1002DF3E0 count:6 enumVerifier:Status_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C818, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C818);
}

unint64_t VRFType_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C820))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"VRFType" valueNames:"UnknownVrf" values:&unk_1002DF424 count:2 enumVerifier:VRFType_IsValidValue flags:0 extraTextFormatInfo:&unk_1002DF42C];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C820, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C820);
}

unint64_t LogType_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C828))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"LogType" valueNames:"UnknownLog" values:&unk_1002DF490 count:7 enumVerifier:LogType_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C828, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C828);
}

unint64_t MapType_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C830))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"MapType" valueNames:"UnknownMap" values:&unk_1002DF4DC count:3 enumVerifier:MapType_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C830, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C830);
}

unint64_t NodeType_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C838))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"NodeType" valueNames:"PaclNode" values:&unk_1002DF544 count:9 enumVerifier:NodeType_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C838, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C838);
}

unint64_t Signature_SignatureAlgorithm_EnumDescriptor()
{
  if (!atomic_load(&qword_10039C840))
  {
    v1 = [TransparencyGPBEnumDescriptor allocDescriptorForName:@"Signature_SignatureAlgorithm" valueNames:"Unknown" values:&unk_1002DF580 count:2 enumVerifier:Signature_SignatureAlgorithm_IsValidValue flags:0];
    v2 = 0;
    atomic_compare_exchange_strong(&qword_10039C840, &v2, v1);
    if (v2)
    {
    }
  }

  return atomic_load(&qword_10039C840);
}

id VRFWitness_Type_RawValue(uint64_t a1)
{
  v2 = [+[VRFWitness descriptor](VRFWitness "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetVRFWitness_Type_RawValue(void *a1, int a2)
{
  v4 = [+[VRFWitness descriptor](VRFWitness "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id VRFPublicKey_Type_RawValue(uint64_t a1)
{
  v2 = [+[VRFPublicKey descriptor](VRFPublicKey "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetVRFPublicKey_Type_RawValue(void *a1, int a2)
{
  v4 = [+[VRFPublicKey descriptor](VRFPublicKey "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id Signature_Algorithm_RawValue(uint64_t a1)
{
  v2 = [+[Signature descriptor](Signature "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetSignature_Algorithm_RawValue(void *a1, int a2)
{
  v4 = [+[Signature descriptor](Signature "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id LogHead_LogType_RawValue(uint64_t a1)
{
  v2 = [+[LogHead descriptor](LogHead "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetLogHead_LogType_RawValue(void *a1, int a2)
{
  v4 = [+[LogHead descriptor](LogHead "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id LogHead_Application_RawValue(uint64_t a1)
{
  v2 = [+[LogHead descriptor](LogHead "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetLogHead_Application_RawValue(void *a1, int a2)
{
  v4 = [+[LogHead descriptor](LogHead "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id LogEntry_LogType_RawValue(uint64_t a1)
{
  v2 = [+[LogEntry descriptor](LogEntry "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetLogEntry_LogType_RawValue(void *a1, int a2)
{
  v4 = [+[LogEntry descriptor](LogEntry "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id LogEntry_NodeType_RawValue(uint64_t a1)
{
  v2 = [+[LogEntry descriptor](LogEntry "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetLogEntry_NodeType_RawValue(void *a1, int a2)
{
  v4 = [+[LogEntry descriptor](LogEntry "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id MapHead_Application_RawValue(uint64_t a1)
{
  v2 = [+[MapHead descriptor](MapHead "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetMapHead_Application_RawValue(void *a1, int a2)
{
  v4 = [+[MapHead descriptor](MapHead "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id MapHead_MapType_RawValue(uint64_t a1)
{
  v2 = [+[MapHead descriptor](MapHead "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetMapHead_MapType_RawValue(void *a1, int a2)
{
  v4 = [+[MapHead descriptor](MapHead "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id PerApplicationTreeConfigNode_EarliestVersion_RawValue(uint64_t a1)
{
  v2 = [+[PerApplicationTreeConfigNode descriptor](PerApplicationTreeConfigNode "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetPerApplicationTreeConfigNode_EarliestVersion_RawValue(void *a1, int a2)
{
  v4 = [+[PerApplicationTreeConfigNode descriptor](PerApplicationTreeConfigNode "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id TopLevelTreeConfigNode_EarliestVersion_RawValue(uint64_t a1)
{
  v2 = [+[TopLevelTreeConfigNode descriptor](TopLevelTreeConfigNode "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetTopLevelTreeConfigNode_EarliestVersion_RawValue(void *a1, int a2)
{
  v4 = [+[TopLevelTreeConfigNode descriptor](TopLevelTreeConfigNode "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id LogClosedNode_EarliestVersionForNextTree_RawValue(uint64_t a1)
{
  v2 = [+[LogClosedNode descriptor](LogClosedNode "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetLogClosedNode_EarliestVersionForNextTree_RawValue(void *a1, int a2)
{
  v4 = [+[LogClosedNode descriptor](LogClosedNode "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

void sub_1001B0F00(id a1)
{
  qword_10039C8D0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B1510(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  v13 = v12;
  if (v9 && v10 && v11 && !v12)
  {
    [TransparencyNetworkRequest addDeviceAuthentication:*(a1 + 32) signature:v9 timestamp:v10 certs:v11];
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 40) + 16);
  }

  else
  {
    if (qword_10039C8C8 != -1)
    {
      sub_10025B334();
    }

    v16 = qword_10039C8D0;
    if (os_log_type_enabled(qword_10039C8D0, OS_LOG_TYPE_DEBUG))
    {
      v17 = 138412290;
      v18 = v13;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_DEBUG, "device identity authentication failed: %@", &v17, 0xCu);
    }

    v15 = *(*(a1 + 40) + 16);
  }

  v15();
}

void sub_1001B166C(id a1)
{
  qword_10039C8D0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B2550(id a1)
{
  qword_10039C8E0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B29B4(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B29E0(id a1)
{
  qword_10039C8F0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B2A24(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v5 = WeakRetained;
  if (v3)
  {
    if (qword_10039C8E8 != -1)
    {
      sub_10025B370();
    }

    v6 = qword_10039C8F0;
    if (os_log_type_enabled(qword_10039C8F0, OS_LOG_TYPE_ERROR))
    {
      v13 = 138412290;
      v14 = v3;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "updatePublicKeyStores: failed with: %@", &v13, 0xCu);
    }

    [v5 setError:v3];
  }

  else
  {
    v7 = [WeakRetained intendedState];
    [v5 setNextState:v7];
  }

  v8 = [[KTPendingFlag alloc] initWithFlag:@"StatusUpdate" delayInSeconds:0.0];
  v9 = [v5 deps];
  v10 = [v9 flagHandler];
  [v10 handlePendingFlag:v8];

  v11 = [v5 operationQueue];
  v12 = [v5 finishedOp];
  [v11 addOperation:v12];
}

void sub_1001B2BC4(id a1)
{
  qword_10039C8F0 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B2ED0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B2EF4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B2F0C(uint64_t a1)
{
  v2 = [*(a1 + 32) context];
  v3 = [NSEntityDescription insertNewObjectForEntityForName:@"KTSelfState" inManagedObjectContext:v2];
  v4 = *(*(a1 + 56) + 8);
  v5 = *(v4 + 40);
  *(v4 + 40) = v3;

  v6 = *(*(*(a1 + 56) + 8) + 40);
  if (v6)
  {
    [v6 setApplication:*(a1 + 40)];
    [*(*(*(a1 + 56) + 8) + 40) setUri:*(a1 + 48)];
    v7 = *(a1 + 32);
    v8 = *(*(a1 + 64) + 8);
    obj = *(v8 + 40);
    [v7 persistWithError:&obj];
    objc_storeStrong((v8 + 40), obj);
    v9 = *(*(a1 + 64) + 8);
    v10 = *(v9 + 40);
    [TransparencyManagedDataStore cleanseError:&v10];
    objc_storeStrong((v9 + 40), v10);
  }
}

void sub_1001B31C4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1001B31E8(uint64_t a1)
{
  v3 = a1 + 56;
  v2 = *(a1 + 56);
  v4 = *(a1 + 32);
  v5 = *(v2 + 8);
  obj = *(v5 + 40);
  v6 = [v4 persistWithError:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = +[KTSelfState fetchRequest];
    v8 = [NSPredicate predicateWithFormat:@"application == %@ && uri == %@", *(a1 + 40), *(a1 + 48)];
    [v7 setPredicate:v8];

    v9 = [*(a1 + 32) context];
    v10 = *(*(a1 + 56) + 8);
    v19 = *(v10 + 40);
    v11 = [v9 executeFetchRequest:v7 error:&v19];
    objc_storeStrong((v10 + 40), v19);

    v12 = *(*(a1 + 56) + 8);
    v18 = *(v12 + 40);
    [TransparencyManagedDataStore cleanseError:&v18];
    objc_storeStrong((v12 + 40), v18);
    if (v11 && [v11 count] == 1)
    {
      v13 = [v11 objectAtIndexedSubscript:0];
      v3 = a1 + 64;
    }

    else
    {
      if (*(*(*v3 + 8) + 40))
      {
LABEL_9:

        goto LABEL_10;
      }

      v13 = [NSError errorWithDomain:kTransparencyErrorDatabase code:-128 userInfo:0];
    }

    v16 = *(*v3 + 8);
    v17 = *(v16 + 40);
    *(v16 + 40) = v13;

    goto LABEL_9;
  }

  v14 = *(*v3 + 8);
  v20 = *(v14 + 40);
  [TransparencyManagedDataStore cleanseError:&v20];
  v15 = v20;
  v7 = *(v14 + 40);
  *(v14 + 40) = v15;
LABEL_10:
}

void sub_1001B363C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001B3660(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v2 initSelfState:v3 uri:v4 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (v6)
  {
    v7 = a1[4];
    v8 = a1[5];
    v9 = a1[6];
    v10 = *(a1[8] + 8);
    v24 = *(v10 + 40);
    v11 = [v7 fetchSelfValidationState:v8 uri:v9 error:&v24];
    objc_storeStrong((v10 + 40), v24);
    if (v11)
    {
      v12 = a1[7];
      v13 = *(a1[8] + 8);
      v23 = *(v13 + 40);
      v14 = (*(v12 + 16))();
      objc_storeStrong((v13 + 40), v23);
      *(*(a1[9] + 8) + 24) = v14;
      if (*(*(a1[9] + 8) + 24) == 1)
      {
        v15 = *(a1[8] + 8);
        v17 = *(v15 + 40);
        v16 = (v15 + 40);
        if (!v17)
        {
          v18 = a1[4];
          v22 = 0;
          v19 = [v18 persistWithError:&v22];
          objc_storeStrong(v16, v22);
          *(*(a1[9] + 8) + 24) = v19;
          v20 = *(a1[8] + 8);
          v21 = *(v20 + 40);
          [TransparencyManagedDataStore cleanseError:&v21];
          objc_storeStrong((v20 + 40), v21);
        }
      }
    }
  }
}

BOOL sub_1001B38A8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [v3 followupTicket];

  if (!v4)
  {
    +[TransparencySettings defaultSelfFollowupTicketLifetime];
    v5 = [NSDate dateWithTimeInterval:*(a1 + 32) sinceDate:?];
    [v3 setFollowupTicket:v5];
  }

  return v4 == 0;
}

BOOL sub_1001B3A88(void *a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = [v5 followupTicket];

  if (v6)
  {
    v7 = a1[6];
    v8 = [v5 followupTicket];
    v9 = v8;
    if (v7)
    {
      v10 = [v8 compare:a1[6]];
    }

    else
    {
      v15 = +[NSDate now];
      v10 = [v9 compare:v15];
    }

    v14 = v10 + 1 < 2;
  }

  else if (a3)
  {
    v11 = kTransparencyErrorDatabase;
    v17[0] = @"application";
    v17[1] = @"uri";
    v12 = a1[5];
    v18[0] = a1[4];
    v18[1] = v12;
    v13 = [NSDictionary dictionaryWithObjects:v18 forKeys:v17 count:2];
    v14 = 1;
    *a3 = [TransparencyError errorWithDomain:v11 code:-338 errorLevel:1 underlyingError:0 userinfo:v13 description:@"checked followup ticket when none exists"];
  }

  else
  {
    v14 = 1;
  }

  return v14;
}

BOOL sub_1001B3C1C(id a1, KTSelfState *a2, id *a3)
{
  v4 = a2;
  v5 = [(KTSelfState *)v4 followupTicket];

  if (v5)
  {
    [(KTSelfState *)v4 setFollowupTicket:0];
  }

  else if (a3)
  {
    *a3 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-128 errorLevel:2 underlyingError:0 description:@"tried to clear followup ticket when none exists"];
  }

  return v5 != 0;
}

void sub_1001B3F88(_Unwind_Exception *a1)
{
  objc_destroyWeak((v2 + 32));
  objc_destroyWeak((v1 + 32));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1001B3FB8(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained error];

  if (!v2)
  {
    v4 = [WeakRetained intendedState];
    [WeakRetained setNextState:v4];
    goto LABEL_7;
  }

  if (qword_10039C8F8 != -1)
  {
    sub_10025B384();
  }

  v3 = qword_10039C900;
  if (os_log_type_enabled(qword_10039C900, OS_LOG_TYPE_ERROR))
  {
    v4 = v3;
    v5 = [WeakRetained error];
    v6 = 138412290;
    v7 = v5;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_ERROR, "FetchKTSelf: error: %@", &v6, 0xCu);

LABEL_7:
  }
}

void sub_1001B40D8(id a1)
{
  qword_10039C900 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B411C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v6 = a2;
  v7 = a4;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (!v6)
  {
    if (qword_10039C8F8 != -1)
    {
      sub_10025B3D4();
    }

    v24 = qword_10039C900;
    if (os_log_type_enabled(qword_10039C900, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v36 = v7;
      _os_log_impl(&_mh_execute_header, v24, OS_LOG_TYPE_ERROR, "FetchKTSelf: failed to fetch self verification info: %@", buf, 0xCu);
    }

    v25 = [TransparencyError errorWithDomain:kTransparencyErrorInterface code:-337 underlyingError:v7 description:@"fetchSelfVerificationInfoForApplication failed"];
    goto LABEL_25;
  }

  v9 = [v6 uriToServerLoggableDatas];
  v10 = [v9 count];

  if (!v10)
  {
    if (qword_10039C8F8 != -1)
    {
      sub_10025B3C0();
    }

    v26 = qword_10039C900;
    if (os_log_type_enabled(qword_10039C900, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v26, OS_LOG_TYPE_ERROR, "FetchKTSelf: no uriToServerLoggableDatas", buf, 2u);
    }

    v25 = [NSError errorWithDomain:kTransparencyErrorServer code:-336 userInfo:0];
LABEL_25:
    v11 = v25;
    [WeakRetained setError:v25];
    goto LABEL_26;
  }

  v33 = 0u;
  v34 = 0u;
  v31 = 0u;
  v32 = 0u;
  v11 = [v6 uriToServerLoggableDatas];
  v12 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
  if (v12)
  {
    v13 = v12;
    v29 = v7;
    v30 = v6;
    v14 = *v32;
    do
    {
      v15 = 0;
      do
      {
        if (*v32 != v14)
        {
          objc_enumerationMutation(v11);
        }

        v16 = *(*(&v31 + 1) + 8 * v15);
        v17 = [WeakRetained application];
        v18 = [TransparencyApplication addApplicationPrefixForIdentifier:v17 uri:v16];

        if (qword_10039C8F8 != -1)
        {
          sub_10025B398();
        }

        v19 = qword_10039C900;
        if (os_log_type_enabled(qword_10039C900, OS_LOG_TYPE_DEFAULT))
        {
          *buf = 141558274;
          v36 = 1752392040;
          v37 = 2112;
          v38 = v18;
          _os_log_impl(&_mh_execute_header, v19, OS_LOG_TYPE_DEFAULT, "FetchKTSelf: looking up %{mask.hash}@", buf, 0x16u);
        }

        v20 = [KTFetchURIOperation alloc];
        v21 = [WeakRetained application];
        v22 = [WeakRetained deps];
        v23 = [(KTFetchURIOperation *)v20 initWithURI:v18 application:v21 dependencies:v22];

        [WeakRetained runBeforeGroupFinished:v23];
        v15 = v15 + 1;
      }

      while (v13 != v15);
      v13 = [v11 countByEnumeratingWithState:&v31 objects:v39 count:16];
    }

    while (v13);
    v7 = v29;
    v6 = v30;
  }

LABEL_26:

  v27 = [WeakRetained operationQueue];
  v28 = [WeakRetained finishedOp];
  [v27 addOperation:v28];
}

void sub_1001B44E8(id a1)
{
  qword_10039C900 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B452C(id a1)
{
  qword_10039C900 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B4570(id a1)
{
  qword_10039C900 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B5624(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B5668(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B56AC(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B56F0(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B5734(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B5778(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B5E4C(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B5E90(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B5ED4(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B5F18(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B6674(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B66B8(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B66FC(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B6740(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B6908(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B6F70(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B6FB4(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B6FF8(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B75E8(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B762C(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B7670(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B76B4(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B76F8(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B7C04(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B7C48(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B7C8C(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B7CD0(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B8138(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B817C(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B8648(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B868C(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B86D0(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B8714(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B8958(id a1)
{
  qword_10039C910 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B912C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, id location)
{
  objc_destroyWeak((v21 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001B916C(uint64_t a1, void *a2)
{
  v3 = a2;
  v5 = objc_alloc_init(KTCondition);
  v4 = [*(a1 + 32) mutableStateConditions];
  [v4 setObject:v5 forKeyedSubscript:v3];
}

void sub_1001B91F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001B9298;
  block[3] = &unk_100316FE0;
  v5 = WeakRetained;
  v3 = WeakRetained;
  dispatch_sync(v2, block);
}

void sub_1001B93A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001B93BC(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001B93D4(uint64_t a1)
{
  v5 = [*(a1 + 32) mutableStateConditions];
  v2 = [v5 copy];
  v3 = *(*(a1 + 40) + 8);
  v4 = *(v3 + 40);
  *(v3 + 40) = v2;
}

void sub_1001B9A2C(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B9E00(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B9E44(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B9E88(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001B9FF8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1001BA018(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v3 = [WeakRetained queue];
  v4[0] = _NSConcreteStackBlock;
  v4[1] = 3221225472;
  v4[2] = sub_1001BA0CC;
  v4[3] = &unk_1003180E0;
  v5 = *(a1 + 32);
  v6 = WeakRetained;
  dispatch_sync(v3, v4);
}

id sub_1001BA0CC(uint64_t a1)
{
  if (qword_10039C918 != -1)
  {
    sub_10025B934();
  }

  v2 = qword_10039C920;
  if (os_log_type_enabled(qword_10039C920, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 nextState];
    v6 = [*(a1 + 32) intendedState];
    v7 = [*(a1 + 40) currentFlags];
    v8 = [v7 contentsAsString];
    v9 = [*(a1 + 40) pendingFlagsString];
    v10 = *(a1 + 32);
    v11 = [v10 error];
    v12 = v11;
    *buf = 138544642;
    v13 = @"(no error)";
    v41 = v5;
    if (v11)
    {
      v13 = v11;
    }

    v42 = 2114;
    v43 = v6;
    v44 = 2114;
    v45 = v8;
    v46 = 2114;
    v47 = v9;
    v48 = 2114;
    v49 = v10;
    v50 = 2114;
    v51 = v13;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_DEFAULT, "Finishing state transition attempt (ending in %{public}@, intended: %{public}@, f:[%{public}@], p:[%{public}@]): %{public}@ %{public}@", buf, 0x3Eu);
  }

  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v14 = [*(a1 + 40) stateMachineWatchers];
  v15 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
  if (v15)
  {
    v17 = v15;
    v18 = *v36;
    *&v16 = 138543362;
    v34 = v16;
    do
    {
      v19 = 0;
      do
      {
        if (*v36 != v18)
        {
          objc_enumerationMutation(v14);
        }

        v20 = *(*(&v35 + 1) + 8 * v19);
        if (qword_10039C918 != -1)
        {
          sub_10025B948();
        }

        v21 = qword_10039C920;
        if (os_log_type_enabled(qword_10039C920, OS_LOG_TYPE_DEFAULT))
        {
          *buf = v34;
          v41 = v20;
          _os_log_impl(&_mh_execute_header, v21, OS_LOG_TYPE_DEFAULT, "notifying watcher: %{public}@", buf, 0xCu);
        }

        [v20 onqueueHandleTransition:{*(a1 + 32), v34}];
        v19 = v19 + 1;
      }

      while (v17 != v19);
      v17 = [v14 countByEnumeratingWithState:&v35 objects:v39 count:16];
    }

    while (v17);
  }

  v22 = [*(a1 + 40) stateMachineWatchers];
  v23 = [v22 count];

  if (v23)
  {
    v24 = [*(a1 + 40) stateMachineWatchers];
    v25 = [v24 count];

    if (v25 >= 1)
    {
      v26 = v25 + 1;
      do
      {
        v27 = [*(a1 + 40) stateMachineWatchers];
        v28 = [v27 objectAtIndexedSubscript:v26 - 2];
        v29 = [v28 result];
        v30 = [v29 isFinished];

        if (v30)
        {
          v31 = [*(a1 + 40) stateMachineWatchers];
          [v31 removeObjectAtIndex:v26 - 2];
        }

        --v26;
      }

      while (v26 > 1);
    }
  }

  v32 = [*(a1 + 32) nextState];
  [*(a1 + 40) setCurrentState:v32];

  [*(a1 + 40) setNextStateMachineCycleOperation:0];
  return [*(a1 + 40) _onqueueStartNextStateMachineOperation:1];
}

void sub_1001BA470(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BA4B4(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BAB8C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BABAC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = [WeakRetained queue];
  block[0] = _NSConcreteStackBlock;
  block[1] = 3221225472;
  block[2] = sub_1001BAC40;
  block[3] = &unk_100316FE0;
  block[4] = WeakRetained;
  dispatch_sync(v2, block);
}

id sub_1001BAC40(uint64_t a1)
{
  if (qword_10039C918 != -1)
  {
    sub_10025B970();
  }

  v2 = qword_10039C920;
  if (os_log_type_enabled(qword_10039C920, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Finished waiting for operation", v4, 2u);
  }

  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

void sub_1001BACC8(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BAEBC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BAED4(uint64_t a1)
{
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v2 = [*(a1 + 32) pendingFlags];
  v3 = [v2 allKeys];

  v4 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v13;
    do
    {
      v7 = 0;
      do
      {
        if (*v13 != v6)
        {
          objc_enumerationMutation(v3);
        }

        v8 = *(*(&v12 + 1) + 8 * v7);
        v9 = [*(a1 + 32) pendingFlags];
        v10 = [v9 objectForKeyedSubscript:v8];
        v11 = [v10 description];
        [*(*(*(a1 + 40) + 8) + 40) setObject:v11 forKeyedSubscript:v8];

        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v5);
  }
}

void sub_1001BB154(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BB16C(uint64_t a1)
{
  v8 = 0u;
  v9 = 0u;
  v10 = 0u;
  v11 = 0u;
  v2 = [*(a1 + 32) currentFlags];
  v3 = [v2 dumpFlags];

  v4 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
  if (v4)
  {
    v5 = v4;
    v6 = *v9;
    do
    {
      v7 = 0;
      do
      {
        if (*v9 != v6)
        {
          objc_enumerationMutation(v3);
        }

        [*(*(*(a1 + 40) + 8) + 40) setObject:*(*(&v8 + 1) + 8 * v7) forKeyedSubscript:*(*(&v8 + 1) + 8 * v7)];
        v7 = v7 + 1;
      }

      while (v5 != v7);
      v5 = [v3 countByEnumeratingWithState:&v8 objects:v12 count:16];
    }

    while (v5);
  }
}

void sub_1001BB878(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, id location)
{
  objc_destroyWeak((v20 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001BB8D4(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BB918(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BB9B4;
    block[3] = &unk_100316FE0;
    block[4] = v2;
    dispatch_sync(v3, block);
  }
}

id sub_1001BB9B4(uint64_t a1)
{
  if (qword_10039C918 != -1)
  {
    sub_10025B9D4();
  }

  v2 = qword_10039C920;
  if (os_log_type_enabled(qword_10039C920, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Unlock occurred", v4, 2u);
  }

  [*(a1 + 32) setConditionChecksInFlight:{objc_msgSend(*(a1 + 32), "conditionChecksInFlight") & 0xFFFFFFFFFFFFFFFELL}];
  [*(a1 + 32) _onqueueRecheckConditions];
  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

void sub_1001BBA5C(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BBAA0(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BBAE4(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v2 = WeakRetained;
  if (WeakRetained)
  {
    v3 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001BBB80;
    block[3] = &unk_100316FE0;
    block[4] = v2;
    dispatch_sync(v3, block);
  }
}

id sub_1001BBB80(uint64_t a1)
{
  if (qword_10039C918 != -1)
  {
    sub_10025B9E8();
  }

  v2 = qword_10039C920;
  if (os_log_type_enabled(qword_10039C920, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Network is reachable", v4, 2u);
  }

  [*(a1 + 32) setConditionChecksInFlight:{objc_msgSend(*(a1 + 32), "conditionChecksInFlight") & 0xFFFFFFFFFFFFFFFDLL}];
  [*(a1 + 32) _onqueueRecheckConditions];
  return [*(a1 + 32) _onqueueSendAnyPendingFlags];
}

void sub_1001BBC28(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BC1A0(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BC1E4(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BC228(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BC320(uint64_t a1)
{
  v2 = [*(a1 + 32) testHoldStates];
  [v2 addObject:*(a1 + 40)];
}

id sub_1001BC428(uint64_t a1)
{
  if (qword_10039C918 != -1)
  {
    sub_10025BA74();
  }

  v2 = qword_10039C920;
  if (os_log_type_enabled(qword_10039C920, OS_LOG_TYPE_DEFAULT))
  {
    v3 = *(a1 + 32);
    v6 = 138412290;
    v7 = v3;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_DEFAULT, "Releasing state machine test pause from %@", &v6, 0xCu);
  }

  v4 = [*(a1 + 40) testHoldStates];
  [v4 removeObject:*(a1 + 32)];

  return [*(a1 + 40) _onqueuePokeStateMachine];
}

void sub_1001BC508(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BC60C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BC624(uint64_t a1)
{
  v2 = [*(a1 + 32) nextStateMachineCycleOperation];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

void sub_1001BC760(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BC778(uint64_t a1)
{
  v2 = [*(a1 + 32) nextStateMachineCycleOperation];
  *(*(*(a1 + 40) + 8) + 24) = v2 == 0;
}

void sub_1001BC850(uint64_t a1)
{
  v2 = [*(a1 + 32) holdStateMachineOperation];

  if (v2)
  {
    v3 = [*(a1 + 32) operationQueue];
    v4 = [*(a1 + 32) holdStateMachineOperation];
    [v3 addOperation:v4];

    v5 = *(a1 + 32);

    [v5 setHoldStateMachineOperation:0];
  }
}

id sub_1001BC98C(uint64_t a1)
{
  v2 = [*(a1 + 32) holdStateMachineOperation];

  if (v2)
  {
    v3 = [*(a1 + 32) operationQueue];
    v4 = [*(a1 + 32) holdStateMachineOperation];
    [v3 addOperation:v4];

    [*(a1 + 32) setHoldStateMachineOperation:0];
  }

  [*(a1 + 32) setHalted:1];
  [*(a1 + 32) setAllowPendingFlags:0];
  v5 = *(a1 + 32);

  return [v5 _onqueuePokeStateMachine];
}

id sub_1001BCAEC(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachineRequests];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onqueuePokeStateMachine];
}

id sub_1001BCBF0(uint64_t a1)
{
  v2 = [*(a1 + 32) stateMachineWatchers];
  [v2 addObject:*(a1 + 40)];

  v3 = *(a1 + 32);

  return [v3 _onqueuePokeStateMachine];
}

void sub_1001BD07C(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BD0C0(uint64_t a1)
{
  if (qword_10039C918 != -1)
  {
    sub_10025BA9C();
  }

  v2 = qword_10039C920;
  if (os_log_type_enabled(qword_10039C920, OS_LOG_TYPE_DEFAULT))
  {
    v4 = *(a1 + 32);
    v3 = *(a1 + 40);
    v5 = v2;
    v6 = [v3 error];
    v7 = v6;
    v8 = @"no error";
    if (v6)
    {
      v8 = v6;
    }

    v11 = 138543618;
    v12 = v4;
    v13 = 2114;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_DEFAULT, "Returning '%{public}@' result: %{public}@", &v11, 0x16u);
  }

  v9 = *(a1 + 48);
  v10 = [*(a1 + 40) error];
  (*(v9 + 16))(v9, v10);
}

void sub_1001BD1E8(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BD6B0(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BD6F4(uint64_t a1, void *a2)
{
  v3 = a2;
  if (qword_10039C918 != -1)
  {
    sub_10025BAC4();
  }

  v4 = qword_10039C920;
  if (os_log_type_enabled(qword_10039C920, OS_LOG_TYPE_DEFAULT))
  {
    v6 = *(a1 + 32);
    v5 = *(a1 + 40);
    v7 = v4;
    v8 = [v5 result];
    v9 = [v8 error];
    v10 = v9;
    v11 = @"no error";
    if (v9)
    {
      v11 = v9;
    }

    v17 = 138543618;
    v18 = v6;
    v19 = 2114;
    v20 = v11;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_DEFAULT, "Returning '%{public}@' result: %{public}@", &v17, 0x16u);
  }

  v12 = *(a1 + 48);
  if (v12)
  {
    v13 = [*(a1 + 40) result];
    v14 = [v13 error];
    (*(v12 + 16))(v12, v14);
  }

  v15 = [*(a1 + 40) result];
  v16 = [v15 error];
  [v3 setError:v16];
}

void sub_1001BD888(id a1)
{
  qword_10039C920 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BE538(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 144), 8);
  _Unwind_Resume(a1);
}

void sub_1001BE56C(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

uint64_t sub_1001BE5B0(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001BE5C8(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];
  v7 = v6;
  if (v6)
  {
    v8 = [v6 data];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v11 = [v7 updated];
    v12 = *(a1[8] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    v14 = [v7 error];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v16 = objc_opt_class();
      v17 = [v7 error];
      v18 = [NSKeyedUnarchiver unarchivedObjectOfClass:v16 fromData:v17 error:0];
      v19 = *(a1[6] + 8);
      v20 = *(v19 + 40);
      *(v19 + 40) = v18;
    }
  }
}

void sub_1001BE718(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BEBA4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BEBD0(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BEC14(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BEC58(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BEC9C(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BECE0(void *a1)
{
  v2 = +[CachedData fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@ AND unique = %@", @"SelfVerificationInfo", a1[4], &stru_10032E8E8];
  [v2 setPredicate:v3];

  v4 = a1[5];
  v5 = *(a1[7] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (![v6 count])
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BBF0();
    }

    v9 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "storeSelfVerificationInfo: new", buf, 2u);
    }

    v8 = [NSEntityDescription insertNewObjectForEntityForName:@"CachedData" inManagedObjectContext:a1[5]];
    [v8 setKey:@"SelfVerificationInfo"];
    [v8 setApplication:a1[4]];
    [v8 setUnique:&stru_10032E8E8];
    goto LABEL_13;
  }

  if (qword_10039C928 != -1)
  {
    sub_10025BBC8();
  }

  v7 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "storeSelfVerificationInfo: update", buf, 2u);
  }

  v8 = [v6 firstObject];
  if (v8)
  {
LABEL_13:
    [v8 setError:0];
    v10 = +[NSDate date];
    [v8 setUpdated:v10];

    [v8 setData:a1[6]];
    v11 = a1[5];
    v12 = *(a1[7] + 8);
    v16 = *(v12 + 40);
    v13 = [v11 save:&v16];
    objc_storeStrong((v12 + 40), v16);
    if (v13)
    {
      *(*(a1[8] + 8) + 24) = 1;
    }

    else
    {
      if (qword_10039C928 != -1)
      {
        sub_10025BC18();
      }

      v14 = qword_10039C930;
      if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1[7] + 8) + 40);
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "storeSelfVerificationInfo: save %@", buf, 0xCu);
      }
    }
  }
}

void sub_1001BEFDC(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BF020(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BF064(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BF0A8(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BF228(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BF240(uint64_t a1)
{
  v2 = +[CachedData fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@ AND unique = %@", @"SelfVerificationInfo", *(a1 + 32), &stru_10032E8E8];
  [v2 setPredicate:v3];

  v4 = [*(a1 + 40) executeFetchRequest:v2 error:*(a1 + 56)];
  v12 = 0u;
  v13 = 0u;
  v14 = 0u;
  v15 = 0u;
  v5 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
  if (v5)
  {
    v6 = v5;
    v7 = *v13;
    do
    {
      v8 = 0;
      do
      {
        if (*v13 != v7)
        {
          objc_enumerationMutation(v4);
        }

        [*(a1 + 40) deleteObject:*(*(&v12 + 1) + 8 * v8)];
        v8 = v8 + 1;
      }

      while (v6 != v8);
      v6 = [v4 countByEnumeratingWithState:&v12 objects:v16 count:16];
    }

    while (v6);
  }

  if ([*(a1 + 40) hasChanges])
  {
    v9 = *(a1 + 40);
    v10 = *(*(a1 + 48) + 8);
    obj = *(v10 + 40);
    [v9 save:&obj];
    objc_storeStrong((v10 + 40), obj);
  }
}

void sub_1001BF7EC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, char a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, char a29)
{
  _Block_object_dispose(&a23, 8);
  _Block_object_dispose(&a29, 8);
  _Block_object_dispose((v29 - 176), 8);
  _Unwind_Resume(a1);
}

void sub_1001BF828(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BF86C(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[6] + 8);
  obj = *(v4 + 40);
  v5 = [v2 executeFetchRequest:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [v5 firstObject];
  if (qword_10039C928 != -1)
  {
    sub_10025BC7C();
  }

  v7 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    v8 = *(*(a1[6] + 8) + 40);
    *buf = 138412546;
    v24 = v6;
    v25 = 2112;
    v26 = v8;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "fetchIDMSDeviceList: %@ %@", buf, 0x16u);
  }

  if (v6)
  {
    v9 = [v6 data];
    v10 = *(a1[7] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;

    v12 = [v6 updated];
    v13 = *(a1[8] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;

    v15 = [v6 error];
    objc_opt_class();
    isKindOfClass = objc_opt_isKindOfClass();

    if (isKindOfClass)
    {
      v17 = objc_opt_class();
      v18 = [v6 error];
      v19 = [NSKeyedUnarchiver unarchivedObjectOfClass:v17 fromData:v18 error:0];
      v20 = *(a1[6] + 8);
      v21 = *(v20 + 40);
      *(v20 + 40) = v19;
    }
  }
}

void sub_1001BFA64(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BFAA8(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BFDE4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va1, 8);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001BFE10(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BFE54(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001BFE98(void *a1)
{
  v2 = +[CachedData fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@ AND unique = %@", @"IDMSDeviceList", @"global", &stru_10032E8E8];
  [v2 setPredicate:v3];

  v4 = a1[4];
  v5 = *(a1[6] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (![v6 count])
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BD30();
    }

    v9 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_ERROR, "storeIDMSDeviceList: new", buf, 2u);
    }

    v8 = [NSEntityDescription insertNewObjectForEntityForName:@"CachedData" inManagedObjectContext:a1[4]];
    [v8 setKey:@"IDMSDeviceList"];
    [v8 setApplication:@"global"];
    goto LABEL_13;
  }

  if (qword_10039C928 != -1)
  {
    sub_10025BD08();
  }

  v7 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "storeIDMSDeviceList: update", buf, 2u);
  }

  v8 = [v6 firstObject];
  if (v8)
  {
LABEL_13:
    [v8 setUnique:&stru_10032E8E8];
    [v8 setError:0];
    v10 = +[NSDate date];
    [v8 setUpdated:v10];

    [v8 setData:a1[5]];
    v11 = a1[4];
    v12 = *(a1[6] + 8);
    v16 = *(v12 + 40);
    v13 = [v11 save:&v16];
    objc_storeStrong((v12 + 40), v16);
    if (v13)
    {
      *(*(a1[7] + 8) + 24) = 1;
    }

    else
    {
      if (qword_10039C928 != -1)
      {
        sub_10025BD58();
      }

      v14 = qword_10039C930;
      if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1[6] + 8) + 40);
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "storeIDMSDeviceList: save %@", buf, 0xCu);
      }
    }
  }
}

void sub_1001C019C(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C01E0(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0224(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0268(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0454(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0498(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v26 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v26];
  v5 = v26;
  v6 = [v4 firstObject];
  v7 = v6;
  if (!v6)
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BDBC();
    }

    v22 = qword_10039C930;
    if (!os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v23 = "fetchKTInfoForApplication: no cached data";
    goto LABEL_14;
  }

  v8 = [v6 error];
  objc_opt_class();
  isKindOfClass = objc_opt_isKindOfClass();

  if (isKindOfClass)
  {
    v10 = objc_opt_class();
    v11 = [v7 error];
    v12 = [NSKeyedUnarchiver unarchivedObjectOfClass:v10 fromData:v11 error:0];

    v5 = v12;
  }

  v13 = [v7 data];

  if (!v13)
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BD94();
    }

    v22 = qword_10039C930;
    if (!os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
    {
      goto LABEL_15;
    }

    *buf = 0;
    v23 = "fetchKTInfoForApplication: no data";
LABEL_14:
    _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_INFO, v23, buf, 2u);
LABEL_15:
    (*(a1[6] + 16))();
    goto LABEL_16;
  }

  v14 = [v7 data];
  v24 = v5;
  v15 = [(TransparencyGPBMessage *)KTQueryInfo parseFromData:v14 error:&v24];
  v16 = v24;

  v17 = a1[6];
  v18 = [v15 queryRequest];
  v19 = [v15 queryResponse];
  v20 = [v7 updated];
  v21 = [v15 serverHint];
  (*(v17 + 16))(v17, v18, v19, v20, v21, v16);

  v5 = v16;
LABEL_16:
}

void sub_1001C0754(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0798(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0B24(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a27, 8);
  _Block_object_dispose(&a21, 8);
  _Unwind_Resume(a1);
}

void sub_1001C0B50(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0B94(void *a1)
{
  v2 = +[CachedData fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@ AND unique = %@", @"QueryResponse", a1[4], a1[5]];
  [v2 setPredicate:v3];

  v4 = a1[6];
  v5 = *(a1[8] + 8);
  obj = *(v5 + 40);
  v6 = [v4 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v5 + 40), obj);
  if (![v6 count])
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BE48();
    }

    v9 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
    {
      *buf = 0;
      _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "storeQueryResponse: new", buf, 2u);
    }

    v8 = [NSEntityDescription insertNewObjectForEntityForName:@"CachedData" inManagedObjectContext:a1[6]];
    [v8 setKey:@"QueryResponse"];
    [v8 setApplication:a1[4]];
    [v8 setUnique:a1[5]];
    goto LABEL_13;
  }

  if (qword_10039C928 != -1)
  {
    sub_10025BE20();
  }

  v7 = qword_10039C930;
  if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
  {
    *buf = 0;
    _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "storeQueryResponse: update", buf, 2u);
  }

  v8 = [v6 firstObject];
  if (v8)
  {
LABEL_13:
    [v8 setError:0];
    v10 = +[NSDate date];
    [v8 setUpdated:v10];

    [v8 setData:a1[7]];
    v11 = a1[6];
    v12 = *(a1[8] + 8);
    v16 = *(v12 + 40);
    v13 = [v11 save:&v16];
    objc_storeStrong((v12 + 40), v16);
    if (v13)
    {
      *(*(a1[9] + 8) + 24) = 1;
    }

    else
    {
      if (qword_10039C928 != -1)
      {
        sub_10025BE70();
      }

      v14 = qword_10039C930;
      if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
      {
        v15 = *(*(a1[8] + 8) + 40);
        *buf = 138412290;
        v19 = v15;
        _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_ERROR, "storeQueryResponse: save %@", buf, 0xCu);
      }
    }
  }
}

void sub_1001C0E84(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0EC8(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0F0C(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C0F50(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C116C(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    [*(a1 + 32) setObject:v5 forKeyedSubscript:v7];
  }

  else
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) jsonifyError:v5];
    }

    else
    {
      [v5 description];
    }
    v6 = ;
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_1001C14A4(uint64_t a1, void *a2, void *a3)
{
  v7 = a2;
  v5 = a3;
  objc_opt_class();
  if (objc_opt_isKindOfClass())
  {
    objc_opt_class();
    if (objc_opt_isKindOfClass())
    {
      [*(a1 + 40) errorFromJson:v5];
    }

    else
    {
      [v5 description];
    }
    v6 = ;
    [*(a1 + 32) setObject:v6 forKeyedSubscript:v7];
  }
}

void sub_1001C16F4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, ...)
{
  va_start(va, a7);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C1714(uint64_t a1, void *a2)
{
  if (a2)
  {
    v3 = [a2 mutableCopy];
    [*(*(*(a1 + 40) + 8) + 40) setObject:v3 forKeyedSubscript:*(a1 + 32)];
  }
}

void sub_1001C1900(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1001C1924(void *a1)
{
  v2 = +[DeviceSignature fetchRequest];
  if (a1[4])
  {
    v3 = [NSPredicate predicateWithFormat:@"application IN %@", a1[4]];
    [v2 setPredicate:v3];
  }

  v41 = 0;
  v4 = [v2 execute:&v41];
  v5 = v41;
  v6 = v41;
  v7 = v6;
  if (v4)
  {
    v35 = v6;
    v8 = +[NSMutableDictionary dictionary];
    v9 = *(a1[7] + 8);
    v10 = *(v9 + 40);
    *(v9 + 40) = v8;

    v39 = 0u;
    v40 = 0u;
    v37 = 0u;
    v38 = 0u;
    v36 = v4;
    v11 = v4;
    v12 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
    if (v12)
    {
      v13 = v12;
      v14 = *v38;
      do
      {
        for (i = 0; i != v13; i = i + 1)
        {
          if (*v38 != v14)
          {
            objc_enumerationMutation(v11);
          }

          v16 = *(*(&v37 + 1) + 8 * i);
          v17 = [TransparencyIDSRegistrationData alloc];
          v18 = [v16 application];
          v19 = [v16 registrationData];
          v20 = [v17 initWithApplication:v18 registrationData:v19];

          v21 = [v16 signature];
          [v20 setSignature:v21];

          v22 = [v16 publicKey];
          [v20 setPublicKey:v22];

          v23 = [v16 pushToken];
          [v20 setPushToken:v23];

          v24 = [v16 createdAt];
          [v20 setCreatedAt:v24];

          v25 = [v16 signedAt];
          [v20 setSignedAt:v25];

          v26 = [v16 state];
          [v20 setState:v26];

          v27 = [v16 currentItemPointerModificationTime];
          [v20 setOrderedTimestamp:v27];

          v28 = a1[5];
          v29 = [v16 error];
          v30 = [v28 errorFromData:v29];
          [v20 setError:v30];

          v31 = [v16 altDSID];
          [v20 setAltDSID:v31];

          v32 = [v16 dsid];
          [v20 setDsid:v32];

          v33 = *(*(a1[7] + 8) + 40);
          v34 = [v16 application];
          [v33 setObject:v20 forKeyedSubscript:v34];
        }

        v13 = [v11 countByEnumeratingWithState:&v37 objects:v42 count:16];
      }

      while (v13);
    }

    v4 = v36;
    v7 = v35;
  }

  else
  {
    objc_storeStrong((*(a1[6] + 8) + 40), v5);
  }
}

void sub_1001C1F2C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C1F4C(uint64_t a1)
{
  v1 = a1;
  v34 = 0u;
  v35 = 0u;
  v36 = 0u;
  v37 = 0u;
  obj = *(a1 + 32);
  v30 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
  if (v30)
  {
    v29 = *v35;
    do
    {
      for (i = 0; i != v30; i = i + 1)
      {
        if (*v35 != v29)
        {
          objc_enumerationMutation(obj);
        }

        v3 = *(*(&v34 + 1) + 8 * i);
        v4 = [v3 application];
        v5 = +[DeviceSignature fetchRequest];
        v6 = [NSPredicate predicateWithFormat:@"application = %@", v4];
        [v5 setPredicate:v6];

        v33 = 0;
        v7 = [v5 execute:&v33];
        v31 = v33;
        if ([v7 count])
        {
          v8 = [v7 firstObject];
        }

        else
        {
          v8 = [[DeviceSignature alloc] initWithContext:*(v1 + 40)];
          [(DeviceSignature *)v8 setApplication:v4];
          v9 = +[NSDate date];
          [(DeviceSignature *)v8 setCreatedAt:v9];
        }

        v10 = [v3 signature];

        if (v10)
        {
          v11 = +[NSDate date];
          [(DeviceSignature *)v8 setSignedAt:v11];

          v12 = [v3 signature];
          [(DeviceSignature *)v8 setSignature:v12];
        }

        v13 = [v3 tbsKTIDSRegistrationData];
        [(DeviceSignature *)v8 setRegistrationData:v13];

        v14 = [v3 publicKey];
        [(DeviceSignature *)v8 setPublicKey:v14];

        v15 = [v3 pushToken];
        [(DeviceSignature *)v8 setPushToken:v15];

        v16 = [(DeviceSignature *)v8 signature];

        if (v16)
        {
          v17 = @"done";
        }

        else
        {
          v17 = @"tbs";
        }

        [(DeviceSignature *)v8 setState:v17];
        v18 = [v3 orderedTimestamp];
        [(DeviceSignature *)v8 setCurrentItemPointerModificationTime:v18];

        v19 = [v3 altDSID];
        [(DeviceSignature *)v8 setAltDSID:v19];

        v20 = [v3 dsid];
        [(DeviceSignature *)v8 setDsid:v20];

        v21 = v1;
        v22 = *(v1 + 48);
        v23 = [v3 error];
        v24 = [v22 jsonifyError:v23];

        if (v24)
        {
          v25 = [NSJSONSerialization dataWithJSONObject:v24 options:0 error:0];
          [(DeviceSignature *)v8 setError:v25];
        }

        v1 = v21;
      }

      v30 = [obj countByEnumeratingWithState:&v34 objects:v38 count:16];
    }

    while (v30);
  }

  if ([*(v1 + 40) hasChanges])
  {
    v26 = *(v1 + 40);
    v27 = *(*(v1 + 56) + 8);
    v32 = *(v27 + 40);
    [v26 save:&v32];
    objc_storeStrong((v27 + 40), v32);
  }
}

void sub_1001C2470(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C26BC(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C28F0(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v9 - 96), 8);
  _Unwind_Resume(a1);
}

void sub_1001C291C(uint64_t a1)
{
  [*(a1 + 32) _onQueueClearDeviceSignatureSignatures];
  v2 = *(a1 + 40);
  v3 = *(*(a1 + 56) + 8);
  obj = *(v3 + 40);
  v4 = [v2 save:&obj];
  objc_storeStrong((v3 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v4;
}

void sub_1001C298C(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C2C20(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va1, a9);
  va_start(va, a9);
  v10 = va_arg(va1, void);
  v12 = va_arg(va1, void);
  v13 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001C2C4C(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C2C90(uint64_t a1)
{
  [*(a1 + 32) _onQueueClearDeviceSignatureSignatures];
  v2 = *(a1 + 32);
  v3 = +[CachedData fetchRequest];
  [v2 delete:v3 onMOC:*(a1 + 40)];

  v4 = *(a1 + 40);
  v5 = *(*(a1 + 56) + 8);
  obj = *(v5 + 40);
  LOBYTE(v3) = [v4 save:&obj];
  objc_storeStrong((v5 + 40), obj);
  *(*(*(a1 + 48) + 8) + 24) = v3;
}

void sub_1001C2D2C(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C2E28(uint64_t a1)
{
  v2 = [NSEntityDescription insertNewObjectForEntityForName:@"CachedData" inManagedObjectContext:*(a1 + 32)];
  [v2 setKey:@"FixUps"];
  [v2 setApplication:*(a1 + 40)];
  v3 = +[NSData data];
  [v2 setData:v3];

  v4 = +[NSDate date];
  [v2 setUpdated:v4];

  v5 = *(a1 + 32);
  v8 = 0;
  LOBYTE(v4) = [v5 save:&v8];
  v6 = v8;
  if ((v4 & 1) == 0)
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BF4C();
    }

    v7 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v10 = v6;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_ERROR, "storeFixup: save %@", buf, 0xCu);
    }
  }
}

void sub_1001C2F94(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C3204(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v7 = 0;
  v4 = [v2 countForFetchRequest:v3 error:&v7];
  v5 = v7;
  *(*(a1[6] + 8) + 24) = v4;
  if (*(*(a1[6] + 8) + 24) == 0x7FFFFFFFFFFFFFFFLL)
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BF74();
    }

    v6 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v9 = v5;
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "haveDoneFixup: countForFetchRequest %@", buf, 0xCu);
    }
  }
}

void sub_1001C3310(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C3528(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C356C(uint64_t a1)
{
  v2 = +[CachedData fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"SettingsDate", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 48);
  if (*(a1 + 40))
  {
    v24 = 0;
    v5 = [v4 executeFetchRequest:v2 error:&v24];
    v6 = v24;
    if ([v5 count])
    {
      v7 = [v5 firstObject];
      if (!v7)
      {
        v7 = v5;
        goto LABEL_25;
      }
    }

    else
    {
      v7 = [NSEntityDescription insertNewObjectForEntityForName:@"CachedData" inManagedObjectContext:*(a1 + 48)];
      [v7 setKey:@"SettingsDate"];
      [v7 setApplication:*(a1 + 32)];
    }

    [v7 setData:*(a1 + 56)];
    v9 = +[NSDate date];
    [v7 setUpdated:v9];
  }

  else
  {
    v29 = 0;
    v8 = [v4 executeFetchRequest:v2 error:&v29];
    v6 = v29;
    v25 = 0u;
    v26 = 0u;
    v27 = 0u;
    v28 = 0u;
    v9 = v8;
    v7 = [v9 countByEnumeratingWithState:&v25 objects:v36 count:16];
    if (v7)
    {
      v10 = *v26;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v26 != v10)
          {
            objc_enumerationMutation(v9);
          }

          [*(a1 + 48) deleteObject:*(*(&v25 + 1) + 8 * i)];
        }

        v7 = [v9 countByEnumeratingWithState:&v25 objects:v36 count:16];
      }

      while (v7);
    }

    v5 = v9;
  }

  v12 = v6;

  v13 = *(a1 + 48);
  v23 = v6;
  v14 = [v13 save:&v23];
  v6 = v23;

  if (v14)
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BFEC();
    }

    v15 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_DEFAULT))
    {
      v16 = *(a1 + 32);
      v17 = *(a1 + 40);
      *buf = 138412802;
      v31 = @"SettingsDate";
      v32 = 2112;
      v33 = v16;
      v34 = 2112;
      v35 = v17;
      v18 = "stored %@/%@ - %@";
      v19 = v15;
      v20 = OS_LOG_TYPE_DEFAULT;
      v21 = 32;
LABEL_24:
      _os_log_impl(&_mh_execute_header, v19, v20, v18, buf, v21);
    }
  }

  else
  {
    if (qword_10039C928 != -1)
    {
      sub_10025BFC4();
    }

    v22 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v31 = v6;
      v18 = "setSettingsDate: save %@";
      v19 = v22;
      v20 = OS_LOG_TYPE_ERROR;
      v21 = 12;
      goto LABEL_24;
    }
  }

LABEL_25:
}

void sub_1001C38B0(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C38F4(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C3AD8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C3AF4(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v18 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v18];
  v5 = v18;
  v6 = [v4 firstObject];
  v7 = v6;
  if (v6 && ([v6 data], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = objc_opt_class();
    v10 = [v7 data];
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v9 fromData:v10 error:0];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    if (qword_10039C928 != -1)
    {
      sub_10025C014();
    }

    v14 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
    {
      v15 = a1[6];
      v16 = v14;
      v17 = [v7 data];
      *buf = 138412802;
      v20 = @"SettingsDate";
      v21 = 2112;
      v22 = v15;
      v23 = 2112;
      v24 = v17;
      _os_log_impl(&_mh_execute_header, v16, OS_LOG_TYPE_INFO, "getSettingsDate: no cached data %@/%@ - %@", buf, 0x20u);
    }
  }
}

void sub_1001C3CC0(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C3DE8(uint64_t a1)
{
  v2 = +[CachedData fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"SettingsData", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 48);
  if (*(a1 + 40))
  {
    v17 = 0;
    v5 = [v4 executeFetchRequest:v2 error:&v17];
    v6 = v17;
    if ([v5 count])
    {
      v7 = [v5 firstObject];
      if (!v7)
      {

        goto LABEL_20;
      }
    }

    else
    {
      v7 = [NSEntityDescription insertNewObjectForEntityForName:@"CachedData" inManagedObjectContext:*(a1 + 48)];
      [v7 setKey:@"SettingsData"];
      [v7 setApplication:*(a1 + 32)];
    }

    [v7 setData:*(a1 + 40)];
    v9 = +[NSDate date];
    [v7 setUpdated:v9];
  }

  else
  {
    v22 = 0;
    v8 = [v4 executeFetchRequest:v2 error:&v22];
    v6 = v22;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v7 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v7)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v9);
          }

          [*(a1 + 48) deleteObject:*(*(&v18 + 1) + 8 * i)];
        }

        v7 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v7);
    }

    v5 = v9;
  }

  v12 = v6;

  v13 = *(a1 + 48);
  v16 = v6;
  v14 = [v13 save:&v16];
  v6 = v16;

  if ((v14 & 1) == 0)
  {
    if (qword_10039C928 != -1)
    {
      sub_10025C03C();
    }

    v15 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "setSettingsData: save %@", buf, 0xCu);
    }
  }

LABEL_20:
}

void sub_1001C40B4(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C4284(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C42A0(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v15 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v15];
  v5 = v15;
  v6 = [v4 firstObject];
  v7 = v6;
  if (v6 && ([v6 data], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = [v7 data];
    v10 = *(a1[6] + 8);
    v11 = *(v10 + 40);
    *(v10 + 40) = v9;
  }

  else
  {
    if (qword_10039C928 != -1)
    {
      sub_10025C064();
    }

    v12 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
    {
      v13 = v12;
      v14 = [v7 data];
      *buf = 138412290;
      v17 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "getSettingsData: no cached data: %@", buf, 0xCu);
    }
  }
}

void sub_1001C440C(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C4624(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C4668(uint64_t a1)
{
  v2 = +[CachedData fetchRequest];
  v3 = [NSPredicate predicateWithFormat:@"key = %@ AND application = %@", @"SettingsNumber", *(a1 + 32)];
  [v2 setPredicate:v3];

  v4 = *(a1 + 48);
  if (*(a1 + 40))
  {
    v17 = 0;
    v5 = [v4 executeFetchRequest:v2 error:&v17];
    v6 = v17;
    if ([v5 count])
    {
      v7 = [v5 firstObject];
      if (!v7)
      {

        goto LABEL_20;
      }
    }

    else
    {
      v7 = [NSEntityDescription insertNewObjectForEntityForName:@"CachedData" inManagedObjectContext:*(a1 + 48)];
      [v7 setKey:@"SettingsNumber"];
      [v7 setApplication:*(a1 + 32)];
    }

    [v7 setData:*(a1 + 56)];
    v9 = +[NSDate date];
    [v7 setUpdated:v9];
  }

  else
  {
    v22 = 0;
    v8 = [v4 executeFetchRequest:v2 error:&v22];
    v6 = v22;
    v18 = 0u;
    v19 = 0u;
    v20 = 0u;
    v21 = 0u;
    v9 = v8;
    v7 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
    if (v7)
    {
      v10 = *v19;
      do
      {
        for (i = 0; i != v7; i = i + 1)
        {
          if (*v19 != v10)
          {
            objc_enumerationMutation(v9);
          }

          [*(a1 + 48) deleteObject:*(*(&v18 + 1) + 8 * i)];
        }

        v7 = [v9 countByEnumeratingWithState:&v18 objects:v25 count:16];
      }

      while (v7);
    }

    v5 = v9;
  }

  v12 = v6;

  v13 = *(a1 + 48);
  v16 = v6;
  v14 = [v13 save:&v16];
  v6 = v16;

  if ((v14 & 1) == 0)
  {
    if (qword_10039C928 != -1)
    {
      sub_10025C0B4();
    }

    v15 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v24 = v6;
      _os_log_impl(&_mh_execute_header, v15, OS_LOG_TYPE_ERROR, "setSettingsNumber: save %@", buf, 0xCu);
    }
  }

LABEL_20:
}

void sub_1001C4934(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C4B04(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001C4B20(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v16 = 0;
  v4 = [v2 executeFetchRequest:v3 error:&v16];
  v5 = v16;
  v6 = [v4 firstObject];
  v7 = v6;
  if (v6 && ([v6 data], v8 = objc_claimAutoreleasedReturnValue(), v8, v8))
  {
    v9 = objc_opt_class();
    v10 = [v7 data];
    v11 = [NSKeyedUnarchiver unarchivedObjectOfClass:v9 fromData:v10 error:0];
    v12 = *(a1[6] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;
  }

  else
  {
    if (qword_10039C928 != -1)
    {
      sub_10025C0DC();
    }

    v14 = qword_10039C930;
    if (os_log_type_enabled(qword_10039C930, OS_LOG_TYPE_INFO))
    {
      *v15 = 0;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "getSettingsNumber: no cached data", v15, 2u);
    }
  }
}

void sub_1001C4C74(id a1)
{
  qword_10039C930 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C5D84(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C6078(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C6294(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C7224(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C7268(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C72AC(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C72F0(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C7758(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001C779C(id a1)
{
  qword_10039C940 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1001C7C3C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 32);
  v3 = a2;
  v4 = [v2 deviceIDHash];
  v5 = [v3 deviceIdHash];

  v6 = [v4 isEqualToData:v5];
  return v6;
}

BOOL sub_1001C9CF8(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = [*(a1 + 32) clientDataHash];
  v5 = [v3 clientDataHash];
  if ([v4 isEqual:v5])
  {
    v6 = [*(a1 + 32) applicationVersion];
    v7 = v6 == [v3 appVersion];
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

void sub_1001CA408(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CA42C(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v8 = WeakRetained;
  if (v6)
  {
    [WeakRetained setError:v6];
    v9 = [v8 operationQueue];
    v10 = [v8 finishedOp];
    [v9 addOperation:v10];
  }

  else
  {
    v11 = [WeakRetained deps];
    v12 = [v11 smDataStore];
    v16 = 0;
    v13 = [v12 storeIDMSDeviceList:v5 error:&v16];
    v9 = v16;

    if (v13)
    {
      v14 = [v8 intendedState];
      [v8 setNextState:v14];
    }

    else
    {
      [v8 setError:v9];
    }

    v10 = [v8 operationQueue];
    v15 = [v8 finishedOp];
    [v10 addOperation:v15];
  }
}

void sub_1001CA898(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001CA8BC(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v1 = [WeakRetained intendedState];
  [WeakRetained setNextState:v1];

  v2 = [WeakRetained operationQueue];
  v3 = [WeakRetained finishedOp];
  [v2 addOperation:v3];
}

void sub_1001CB218(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CB25C(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CB480(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, ...)
{
  va_start(va, a15);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v15 - 96), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001CB4A4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001CB4BC(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(a1 + 40);
  v4 = *(*(a1 + 48) + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchServerRpcById:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  if (v5)
  {
    [*(a1 + 32) deleteObject:v5];
  }

  v6 = *(a1 + 32);
  v7 = *(*(a1 + 48) + 8);
  v12 = *(v7 + 40);
  v8 = [v6 persistWithError:&v12];
  objc_storeStrong((v7 + 40), v12);
  *(*(*(a1 + 56) + 8) + 24) = v8;
  v9 = [SecXPCHelper cleanseErrorForXPC:*(*(*(a1 + 48) + 8) + 40)];
  v10 = *(*(a1 + 48) + 8);
  v11 = *(v10 + 40);
  *(v10 + 40) = v9;
}

void sub_1001CB598(uint64_t a1)
{
  if (qword_10039C948 != -1)
  {
    sub_10025C230();
  }

  v2 = qword_10039C950;
  if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_ERROR))
  {
    v3 = *(a1 + 32);
    v4 = *(*(*(a1 + 40) + 8) + 40);
    v5 = 138412546;
    v6 = v3;
    v7 = 2112;
    v8 = v4;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_ERROR, "failed to delete server rpc for UUID %@: %@", &v5, 0x16u);
  }
}

void sub_1001CB668(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CBAEC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1001CBB10(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 fetchServerRpcById:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = [SecXPCHelper cleanseErrorForXPC:*(*(a1[7] + 8) + 40)];
  v7 = *(a1[7] + 8);
  v8 = *(v7 + 40);
  *(v7 + 40) = v6;

  if (v5)
  {
    v9 = [v5 rpcId];
    v10 = [v9 isEqual:a1[5]];

    if (v10)
    {
      (*(a1[6] + 16))();
      *(*(a1[8] + 8) + 24) = 1;
    }
  }

  else
  {
    v11 = [TransparencyError errorWithDomain:kTransparencyErrorDatabase code:-330 description:@"no server rpc found for %@", a1[5]];
    v12 = *(a1[7] + 8);
    v13 = *(v12 + 40);
    *(v12 + 40) = v11;

    if (qword_10039C948 != -1)
    {
      sub_10025C244();
    }

    v14 = qword_10039C950;
    if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_INFO))
    {
      v15 = a1[5];
      *buf = 138543362;
      v18 = v15;
      _os_log_impl(&_mh_execute_header, v14, OS_LOG_TYPE_INFO, "no server rpc found for rpcId %{public}@", buf, 0xCu);
    }
  }
}

void sub_1001CBCD0(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CBE8C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001CBEA4(void *a1, void *a2)
{
  v3 = a2;
  [v3 setState:0];
  [v3 setFailure:a1[4]];
  if (qword_10039C948 != -1)
  {
    sub_10025C26C();
  }

  v4 = qword_10039C950;
  if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_ERROR))
  {
    v5 = v4;
    v6 = [v3 rpcId];
    v7 = [v3 rpcType];
    v8 = a1[4];
    *buf = 138412802;
    v13 = v6;
    v14 = 2048;
    v15 = v7;
    v16 = 2112;
    v17 = v8;
    _os_log_impl(&_mh_execute_header, v5, OS_LOG_TYPE_ERROR, "ServerRPC failed. rpcId: %@, rpcType: %lld -- %@", buf, 0x20u);
  }

  v9 = a1[5];
  v10 = *(a1[6] + 8);
  obj = *(v10 + 40);
  [v9 persistWithError:&obj];
  objc_storeStrong((v10 + 40), obj);
}

void sub_1001CBFEC(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CC20C(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, ...)
{
  va_start(va, a13);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001CC224(uint64_t a1, void *a2)
{
  v3 = a2;
  [v3 setResponse:*(a1 + 32)];
  [v3 setResponseStatus:{objc_msgSend(*(a1 + 40), "integerValue")}];
  [v3 setUsedReversePush:*(a1 + 72)];
  [v3 setServerHint:*(a1 + 48)];
  v4 = +[NSDate now];
  [v3 setResponseTime:v4];

  if (([*(a1 + 40) isEqualToNumber:&off_10033CF60] & 1) != 0 || objc_msgSend(*(a1 + 40), "isEqualToNumber:", &off_10033CF78))
  {
    [v3 setState:1];
    if (qword_10039C948 != -1)
    {
      sub_10025C294();
    }

    v5 = qword_10039C950;
    if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_DEFAULT))
    {
      v6 = v5;
      v7 = [v3 rpcId];
      *buf = 138412546;
      v15 = v7;
      v16 = 2048;
      v17 = [v3 rpcType];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_DEFAULT, "ServerRPC succeeded. rpcId: %@, rpcType: %lld", buf, 0x16u);

LABEL_11:
    }
  }

  else
  {
    [v3 setState:0];
    if (qword_10039C948 != -1)
    {
      sub_10025C280();
    }

    v8 = qword_10039C950;
    if (os_log_type_enabled(qword_10039C950, OS_LOG_TYPE_ERROR))
    {
      v6 = v8;
      v9 = [v3 responseStatus];
      v10 = [v3 rpcId];
      *buf = 134218498;
      v15 = v9;
      v16 = 2112;
      v17 = v10;
      v18 = 2048;
      v19 = [v3 rpcType];
      _os_log_impl(&_mh_execute_header, v6, OS_LOG_TYPE_ERROR, "ServerRPC failed. responseStatus: %lld, rpcId: %@, rpcType: %lld", buf, 0x20u);

      goto LABEL_11;
    }
  }

  v11 = *(a1 + 56);
  v12 = *(*(a1 + 64) + 8);
  obj = *(v12 + 40);
  [v11 persistWithError:&obj];
  objc_storeStrong((v12 + 40), obj);
}

void sub_1001CC498(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CC4DC(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CC7AC(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  v17 = va_arg(va1, void);
  v18 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001CC7D8(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CC81C(void *a1, void *a2)
{
  v3 = a2;
  v4 = [NSFetchRequest fetchRequestWithEntityName:@"RPCSingleQuery"];
  v5 = [NSPredicate predicateWithFormat:@"uri == %@ && application == %@ && requestTime > %@ && state == %@", a1[4], a1[5], a1[6], &off_10033CF90];
  [v4 setPredicate:v5];

  v6 = [NSSortDescriptor sortDescriptorWithKey:@"requestTime" ascending:0];
  v17 = v6;
  v7 = [NSArray arrayWithObjects:&v17 count:1];
  [v4 setSortDescriptors:v7];

  [v4 setResultType:2];
  [v4 setFetchLimit:1];
  [v4 setPropertiesToFetch:&off_10033D7F0];
  v8 = *(a1[7] + 8);
  obj = *(v8 + 40);
  v9 = [v3 executeFetchRequest:v4 error:&obj];

  objc_storeStrong((v8 + 40), obj);
  v10 = *(a1[7] + 8);
  v15 = *(v10 + 40);
  [TransparencyManagedDataStore cleanseError:&v15];
  objc_storeStrong((v10 + 40), v15);
  if (v9 && [v9 count])
  {
    v11 = [v9 objectAtIndexedSubscript:0];
    v12 = [v11 objectForKeyedSubscript:@"rpcId"];
    v13 = *(a1[8] + 8);
    v14 = *(v13 + 40);
    *(v13 + 40) = v12;
  }
}

void sub_1001CCBF8(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 112), 8);
  _Unwind_Resume(a1);
}

void sub_1001CCC1C(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"RPCBatchQuery"];
  v3 = [NSPredicate predicateWithFormat:@"application == %@ && requestTime > %@ && state == %@", *(a1 + 32), *(a1 + 40), &off_10033CF90];
  [v2 setPredicate:v3];

  v4 = [NSSortDescriptor sortDescriptorWithKey:@"requestTime" ascending:0];
  v27 = v4;
  v5 = [NSArray arrayWithObjects:&v27 count:1];
  [v2 setSortDescriptors:v5];

  [v2 setResultType:2];
  [v2 setPropertiesToFetch:&off_10033D808];
  v6 = [*(a1 + 48) context];
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [v6 executeFetchRequest:v2 error:&obj];
  objc_storeStrong((v7 + 40), obj);

  v9 = *(*(a1 + 64) + 8);
  v24 = *(v9 + 40);
  [TransparencyManagedDataStore cleanseError:&v24];
  objc_storeStrong((v9 + 40), v24);
  if (v8 && [v8 count])
  {
    v22 = 0u;
    v23 = 0u;
    v20 = 0u;
    v21 = 0u;
    v10 = v8;
    v11 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
    if (v11)
    {
      v12 = v11;
      v13 = *v21;
      while (2)
      {
        for (i = 0; i != v12; i = i + 1)
        {
          if (*v21 != v13)
          {
            objc_enumerationMutation(v10);
          }

          v15 = *(*(&v20 + 1) + 8 * i);
          v16 = [v15 objectForKeyedSubscript:@"uris"];
          if ([v16 containsObject:*(a1 + 56)])
          {
            v17 = [v15 objectForKeyedSubscript:@"rpcId"];
            v18 = *(*(a1 + 72) + 8);
            v19 = *(v18 + 40);
            *(v18 + 40) = v17;

            goto LABEL_13;
          }
        }

        v12 = [v10 countByEnumeratingWithState:&v20 objects:v26 count:16];
        if (v12)
        {
          continue;
        }

        break;
      }
    }

LABEL_13:
  }
}

void sub_1001CD108(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va1, a11);
  va_start(va, a11);
  v12 = va_arg(va1, void);
  v14 = va_arg(va1, void);
  v15 = va_arg(va1, void);
  v16 = va_arg(va1, void);
  _Block_object_dispose(va, 8);
  _Block_object_dispose(va1, 8);
  _Unwind_Resume(a1);
}

void sub_1001CD134(uint64_t a1)
{
  v2 = [NSFetchRequest fetchRequestWithEntityName:@"RPCSingleQuery"];
  [*(a1 + 32) serverRPCTimeoutSeconds];
  v4 = [NSDate dateWithTimeIntervalSinceNow:-v3];
  v5 = [NSPredicate predicateWithFormat:@"uri == %@ && application == %@ && state == %@ && requestTime > %@", *(a1 + 40), *(a1 + 48), &off_10033CFA8, v4];
  [v2 setPredicate:v5];

  [v2 setResultType:4];
  v6 = [*(a1 + 32) context];
  v7 = *(*(a1 + 64) + 8);
  obj = *(v7 + 40);
  v8 = [v6 countForFetchRequest:v2 error:&obj];
  objc_storeStrong((v7 + 40), obj);
  *(*(*(a1 + 56) + 8) + 24) = v8;

  v9 = *(*(a1 + 64) + 8);
  v10 = *(v9 + 40);
  [TransparencyManagedDataStore cleanseError:&v10];
  objc_storeStrong((v9 + 40), v10);
}

void sub_1001CD278(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CD4B0(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CD4F4(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CD614(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CD7CC(id a1)
{
  qword_10039C950 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id QueryRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[QueryRequest descriptor](QueryRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetQueryRequest_Version_RawValue(void *a1, int a2)
{
  v4 = [+[QueryRequest descriptor](QueryRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id QueryRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[QueryRequest descriptor](QueryRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetQueryRequest_Application_RawValue(void *a1, int a2)
{
  v4 = [+[QueryRequest descriptor](QueryRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id QueryResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[QueryResponse descriptor](QueryResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetQueryResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[QueryResponse descriptor](QueryResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id BatchQueryRequest_Version_RawValue(uint64_t a1)
{
  v2 = [+[BatchQueryRequest descriptor](BatchQueryRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetBatchQueryRequest_Version_RawValue(void *a1, int a2)
{
  v4 = [+[BatchQueryRequest descriptor](BatchQueryRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id BatchQueryRequest_Application_RawValue(uint64_t a1)
{
  v2 = [+[BatchQueryRequest descriptor](BatchQueryRequest "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetBatchQueryRequest_Application_RawValue(void *a1, int a2)
{
  v4 = [+[BatchQueryRequest descriptor](BatchQueryRequest "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id BatchQueryResponse_Status_RawValue(uint64_t a1)
{
  v2 = [+[BatchQueryResponse descriptor](BatchQueryResponse "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetBatchQueryResponse_Status_RawValue(void *a1, int a2)
{
  v4 = [+[BatchQueryResponse descriptor](BatchQueryResponse "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

id BatchQueryInfo_Status_RawValue(uint64_t a1)
{
  v2 = [+[BatchQueryInfo descriptor](BatchQueryInfo "descriptor")];

  return sub_10019EE7C(a1, v2);
}

id SetBatchQueryInfo_Status_RawValue(void *a1, int a2)
{
  v4 = [+[BatchQueryInfo descriptor](BatchQueryInfo "descriptor")];

  return sub_10019EE80(a1, v4, a2);
}

void sub_1001CDF88(id a1)
{
  v1 = xpc_transaction_exit_clean();

  _xpc_transaction_try_exit_clean(v1);
}

id sub_1001CE35C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Received signal SIGTERM. Will terminate when clean.", v3, 2u);
  }

  return [*(a1 + 32) signalEventHandler];
}

void sub_1001CEF00(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, uint64_t a28, uint64_t a29, uint64_t a30, uint64_t a31, uint64_t a32, uint64_t a33, uint64_t a34, uint64_t a35, uint64_t a36, uint64_t a37, uint64_t a38, uint64_t a39, uint64_t a40, uint64_t a41, uint64_t a42, uint64_t a43, uint64_t a44, uint64_t a45, uint64_t a46, char a47, uint64_t a48, uint64_t a49, uint64_t a50, char a51)
{
  _Block_object_dispose(&a47, 8);
  _Block_object_dispose(&a51, 8);
  _Unwind_Resume(a1);
}

void sub_1001CEF54(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CEF98(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CEFDC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  if (v6)
  {
    v7 = [*(a1 + 32) deps];
    v8 = [v7 logger];
    [v8 logResultForEvent:@"KTEnrollFetch" hardFailure:1 result:v6];

    [*(a1 + 32) setError:v6];
  }

  else
  {
    if (qword_10039C9B0 != -1)
    {
      sub_10025C3FC();
    }

    v9 = &qword_10039A8D0[742];
    v10 = qword_10039C9B8;
    if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_DEFAULT))
    {
      v11 = v10;
      *buf = 67109120;
      LODWORD(v95) = [v5 count];
      _os_log_impl(&_mh_execute_header, v11, OS_LOG_TYPE_DEFAULT, "Processing %d registrations requests", buf, 8u);
    }

    v92 = 0u;
    v93 = 0u;
    v90 = 0u;
    v91 = 0u;
    v73 = v5;
    v12 = v5;
    v13 = &qword_10039A8D0[742];
    v81 = [v12 countByEnumeratingWithState:&v90 objects:v98 count:16];
    if (v81)
    {
      v79 = *v91;
      v78 = v12;
      v74 = a1;
      do
      {
        v14 = 0;
        do
        {
          if (*v91 != v79)
          {
            objc_enumerationMutation(v12);
          }

          v15 = *(*(&v90 + 1) + 8 * v14);
          v16 = [v12 objectForKeyedSubscript:v15];
          v17 = [v16 tbsKTIDSRegistrationData];

          if (v17)
          {
            v18 = [v16 pushToken];

            if (v18)
            {
              if (v13[310] != -1)
              {
                sub_10025C410();
              }

              v19 = v9[311];
              if (os_log_type_enabled(v19, OS_LOG_TYPE_INFO))
              {
                v20 = v19;
                v21 = [v16 pushToken];
                v22 = [v21 kt_hexString];
                *buf = 138412290;
                v95 = v22;
                _os_log_impl(&_mh_execute_header, v20, OS_LOG_TYPE_INFO, "Adding device to set: %@", buf, 0xCu);
              }

              v23 = *(a1 + 40);
              v24 = [v16 pushToken];
              v25 = [v16 tbsKTIDSRegistrationData];
              v18 = [v23 addDevice:v24 registationData:v25 app:v15];
            }

            v26 = [*(a1 + 32) deps];
            v27 = [v26 accountKeyService];
            v28 = [v16 application];
            v29 = [v27 accountKeyService:v28];

            if (v29)
            {
              v89 = 0;
              v30 = [v29 publicPublicKey:&v89];
              v31 = v89;
              v32 = v31;
              v80 = v30;
              if (v30)
              {
                v77 = v31;
                v33 = [*(a1 + 32) idsRegistrationInterface];
                v34 = [v33 isKTKeyDifferent:v30];

                v9 = &qword_10039A8D0[742];
                if (v34)
                {
                  if (v13[310] != -1)
                  {
                    sub_10025C438();
                  }

                  v35 = qword_10039C9B8;
                  if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_DEFAULT))
                  {
                    *buf = 0;
                    _os_log_impl(&_mh_execute_header, v35, OS_LOG_TYPE_DEFAULT, "isKTKeyDifferent, forcing update", buf, 2u);
                  }

                  [*(a1 + 32) setForceUpdate:1];
                }

                v36 = [*(a1 + 32) deps];
                v37 = [v36 accountKeyService];
                v38 = [v16 validateSignature:v37 withPublicKey:v80];

                if (v38)
                {
                  v13 = &qword_10039A8D0[742];
                  if (qword_10039C9B0 != -1)
                  {
                    sub_10025C460();
                  }

                  v39 = v77;
                  v40 = qword_10039C9B8;
                  if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_ERROR))
                  {
                    v41 = v40;
                    v42 = [v16 application];
                    *buf = 138412546;
                    v95 = v42;
                    v96 = 2112;
                    v97 = v38;
                    _os_log_impl(&_mh_execute_header, v41, OS_LOG_TYPE_ERROR, "Performing signing of data in %@ for reason: %@", buf, 0x16u);

                    v13 = qword_10039A8D0 + 5936;
                  }

                  v43 = [v16 tbsKTIDSRegistrationData];
                  v82[0] = _NSConcreteStackBlock;
                  v82[1] = 3221225472;
                  v82[2] = sub_1001CFBBC;
                  v82[3] = &unk_100327888;
                  v82[4] = *(a1 + 32);
                  v83 = v16;
                  v84 = *(a1 + 48);
                  v85 = *(a1 + 56);
                  v86 = *(a1 + 64);
                  v44 = v18;
                  v45 = *(a1 + 72);
                  v87 = v44;
                  v88 = v45;
                  [v29 signData:v43 completionBlock:v82];
                }

                else
                {
                  v62 = *(a1 + 32);
                  v63 = [v16 application];
                  [v62 recordKeyState:1 application:v63];

                  [v18 markedSigned];
                  v64 = [v16 pushToken];
                  if (v64)
                  {
                    v65 = v64;
                    v76 = [*(a1 + 32) deps];
                    v66 = [v76 cloudRecords];
                    v67 = [v16 pushToken];
                    v68 = [v16 tbsKTIDSRegistrationData];
                    v75 = [v66 cloudDeviceNeedUpdateWithPushToken:v67 tbsRegistrationData:v68];

                    if (v75)
                    {
                      v13 = &qword_10039A8D0[742];
                      v9 = &qword_10039A8D0[742];
                      if (qword_10039C9B0 != -1)
                      {
                        sub_10025C488();
                      }

                      a1 = v74;
                      v69 = qword_10039C9B8;
                      if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_INFO))
                      {
                        v70 = v69;
                        v71 = [v16 pushToken];
                        v72 = [v71 kt_hexString];
                        *buf = 138412546;
                        v95 = v15;
                        v96 = 2112;
                        v97 = v72;
                        _os_log_impl(&_mh_execute_header, v70, OS_LOG_TYPE_INFO, "Service (%@) need update %@", buf, 0x16u);

                        v9 = qword_10039A8D0 + 5936;
                        v13 = qword_10039A8D0 + 5936;
                      }

                      *(*(*(v74 + 80) + 8) + 24) = 1;
                    }

                    else
                    {
                      a1 = v74;
                      v13 = qword_10039A8D0 + 5936;
                      v9 = qword_10039A8D0 + 5936;
                    }
                  }

                  else
                  {
                    v13 = qword_10039A8D0 + 5936;
                  }

                  v39 = v77;
                }
              }

              else
              {
                v9 = &qword_10039A8D0[742];
                if (v13[310] != -1)
                {
                  sub_10025C4B0();
                }

                v55 = qword_10039C9B8;
                if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_ERROR))
                {
                  *buf = 138412290;
                  v95 = v32;
                  _os_log_impl(&_mh_execute_header, v55, OS_LOG_TYPE_ERROR, "publicPublicKey failed: %@", buf, 0xCu);
                }

                [v16 setError:v32];
                [*(a1 + 48) addObject:v16];
                [*(a1 + 32) setError:v32];
                v56 = [*(a1 + 32) deps];
                [v56 lockStateTracker];
                v58 = v57 = v32;
                [v58 isLockedError:v57];

                v59 = *(a1 + 32);
                v60 = [v16 application];
                [v59 recordKeyState:3 application:v60];

                v39 = v57;
                v38 = [*(a1 + 32) deps];
                v61 = [v38 logger];
                [v61 logResultForEvent:@"KTValidateEnrollPublicKey" hardFailure:1 result:v39];
              }

              v12 = v78;
            }

            else
            {
              v50 = *(a1 + 32);
              v51 = [v16 application];
              [v50 recordKeyState:2 application:v51];

              v9 = &qword_10039A8D0[742];
              if (v13[310] != -1)
              {
                sub_10025C4D8();
              }

              v12 = v78;
              v52 = qword_10039C9B8;
              if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_ERROR))
              {
                v53 = v52;
                v54 = [v16 application];
                *buf = 138412290;
                v95 = v54;
                _os_log_impl(&_mh_execute_header, v53, OS_LOG_TYPE_ERROR, "No key server for %@", buf, 0xCu);
              }
            }
          }

          else
          {
            if (v13[310] != -1)
            {
              sub_10025C500();
            }

            v46 = v9[311];
            if (os_log_type_enabled(v46, OS_LOG_TYPE_ERROR))
            {
              v47 = v46;
              v48 = [v16 application];
              *buf = 138412290;
              v95 = v48;
              _os_log_impl(&_mh_execute_header, v47, OS_LOG_TYPE_ERROR, "No registration data for %@", buf, 0xCu);
            }

            v49 = *(a1 + 32);
            v18 = [v16 application];
            [v49 recordKeyState:5 application:v18];
          }

          v14 = v14 + 1;
        }

        while (v81 != v14);
        v81 = [v12 countByEnumeratingWithState:&v90 objects:v98 count:16];
      }

      while (v81);
    }

    v6 = 0;
    v5 = v73;
  }
}

void sub_1001CF9E0(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFA24(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFA68(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFAAC(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFAF0(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFB34(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFB78(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFBBC(uint64_t a1, void *a2, void *a3, void *a4, void *a5)
{
  v9 = a2;
  v10 = a3;
  v11 = a4;
  v12 = a5;
  if (v12)
  {
    if (qword_10039C9B0 != -1)
    {
      sub_10025C528();
    }

    v13 = qword_10039C9B8;
    if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_ERROR))
    {
      *buf = 138412290;
      v30 = v12;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_ERROR, "signData failed: %@", buf, 0xCu);
    }

    [*(a1 + 32) setError:v12];
    [*(a1 + 40) setError:v12];
    [*(a1 + 48) addObject:*(a1 + 40)];
    v14 = *(a1 + 32);
    v15 = [*(a1 + 40) application];
    [v14 recordKeyState:6 application:v15];

    v16 = [*(a1 + 32) deps];
    v17 = [v16 logger];
    [v17 logResultForEvent:@"KTEnrollSign" hardFailure:1 result:v12];
  }

  else
  {
    [*(a1 + 40) setSignature:v10];
    [*(a1 + 40) setPublicKey:v9];
    [*(a1 + 40) setOrderedTimestamp:v11];
    [*(a1 + 40) setDsid:*(a1 + 56)];
    [*(a1 + 40) setAltDSID:*(a1 + 64)];
    if (qword_10039C9B0 != -1)
    {
      sub_10025C53C();
    }

    v18 = qword_10039C9B8;
    if (os_log_type_enabled(qword_10039C9B8, OS_LOG_TYPE_INFO))
    {
      v19 = *(a1 + 40);
      log = v18;
      v20 = [v19 application];
      v26 = [v9 kt_hexString];
      v21 = [*(a1 + 40) pushToken];
      [v21 kt_hexString];
      v22 = v28 = v10;
      v23 = [*(a1 + 40) tbsKTIDSRegistrationData];
      v24 = [v23 kt_hexString];
      *buf = 138413058;
      v30 = v20;
      v31 = 2112;
      v32 = v26;
      v33 = 2112;
      v34 = v22;
      v35 = 2112;
      v36 = v24;
      _os_log_impl(&_mh_execute_header, log, OS_LOG_TYPE_INFO, "New signature for: %@ with key: %@. Push token %@, TBS %@", buf, 0x2Au);

      v10 = v28;
    }

    [*(a1 + 48) addObject:*(a1 + 40)];
    [*(a1 + 72) markedSigned];
    *(*(*(a1 + 80) + 8) + 24) = 1;
    v25 = *(a1 + 32);
    v16 = [*(a1 + 40) application];
    [v25 recordKeyState:1 application:v16];
  }
}

void sub_1001CFEE8(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFF2C(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFF70(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFFB4(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001CFFF8(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);
  v6 = a2;
  v4 = [v3 deps];
  v5 = [v4 logger];
  [v5 logResultForEvent:@"KTEnrollStore" hardFailure:1 result:v6];

  [*(a1 + 32) setError:v6];
}

void sub_1001D008C(id a1)
{
  qword_10039C9B8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D00D0(uint64_t a1)
{
  v2 = [*(a1 + 32) signatureTracker];
  v3 = [v2 signaturesComplete];
  [v3 fulfill];

  v4 = [*(a1 + 32) signatureTracker];
  LODWORD(v3) = [v4 shouldPokeIDSUponSigning];

  if (v3)
  {
    v5 = [*(a1 + 32) idsRegistrationInterface];
    [v5 triggerRegistrationDataNeedsUpdate:@"updated"];
  }
}

void sub_1001D05BC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location)
{
  objc_destroyWeak((v17 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D05E8(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D062C(uint64_t a1)
{
  if (os_log_type_enabled(&_os_log_default, OS_LOG_TYPE_DEFAULT))
  {
    *v4 = 0;
    _os_log_impl(&_mh_execute_header, &_os_log_default, OS_LOG_TYPE_DEFAULT, "Retrying CK account state fetch", v4, 2u);
  }

  WeakRetained = objc_loadWeakRetained((a1 + 32));
  v3 = [WeakRetained notifyCKAccountStatusChange:0];
}

void sub_1001D09BC(id *a1)
{
  v2 = [a1[4] ckChangeListeners];
  v3 = [v2 objectEnumerator];

  v4 = [v3 nextObject];
  if (v4)
  {
    v5 = v4;
    v6 = 0;
    do
    {
      v6 |= v5 == a1[5];
      v7 = [v3 nextObject];

      v5 = v7;
    }

    while (v7);
  }

  else
  {
    v6 = 0;
  }

  if (a1[5] && (v6 & 1) == 0)
  {
    v8 = [NSString stringWithFormat:@"ck-account-state-%@", a1[5]];
    v9 = [v8 UTF8String];
    v10 = dispatch_queue_attr_make_with_autorelease_frequency(0, DISPATCH_AUTORELEASE_FREQUENCY_WORK_ITEM);
    v11 = dispatch_queue_create(v9, v10);

    v12 = [a1[4] ckChangeListeners];
    [v12 setObject:a1[5] forKey:v11];

    if (qword_10039C9C0 != -1)
    {
      sub_10025C578();
    }

    v13 = qword_10039C9C8;
    if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
    {
      v14 = a1[5];
      *buf = 138412290;
      v27 = v14;
      _os_log_impl(&_mh_execute_header, v13, OS_LOG_TYPE_INFO, "adding a new listener: %@", buf, 0xCu);
    }

    if ([a1[4] firstCKAccountFetch])
    {
      if (qword_10039C9C0 != -1)
      {
        sub_10025C58C();
      }

      v15 = qword_10039C9C8;
      if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
      {
        v16 = a1[4];
        v17 = a1[5];
        v18 = v15;
        v19 = [v16 currentCKAccountInfo];
        *buf = 138412546;
        v27 = v17;
        v28 = 2112;
        v29 = v19;
        _os_log_impl(&_mh_execute_header, v18, OS_LOG_TYPE_INFO, "notifying new listener %@ of current state %@", buf, 0x16u);
      }

      v20 = dispatch_group_create();
      if (v20)
      {
        v21 = v20;
        [a1[4] _onqueueDeliverCurrentCloudKitState:a1[5] listenerQueue:v11 oldStatus:0 group:v20];
        v22 = [a1[4] queue];
        block[0] = _NSConcreteStackBlock;
        block[1] = 3221225472;
        block[2] = sub_1001D0DFC;
        block[3] = &unk_100316FE0;
        v25 = a1[6];
        dispatch_group_notify(v21, v22, block);

LABEL_25:
        goto LABEL_26;
      }

      if (qword_10039C9C0 != -1)
      {
        sub_10025C5B4();
      }

      v23 = qword_10039C9C8;
      if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
      {
        *buf = 0;
        _os_log_impl(&_mh_execute_header, v23, OS_LOG_TYPE_INFO, "Unable to get dispatch group.", buf, 2u);
      }
    }

    dispatch_semaphore_signal(a1[6]);
    goto LABEL_25;
  }

  dispatch_semaphore_signal(a1[6]);
LABEL_26:
}

void sub_1001D0D30(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D0D74(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D0DB8(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D0FE8(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 48));
  objc_destroyWeak((v2 + 40));
  objc_destroyWeak((v3 - 72));
  _Unwind_Resume(a1);
}

void sub_1001D1014(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 40));
  v8 = WeakRetained;
  if (v6)
  {
    if (qword_10039C9C0 != -1)
    {
      sub_10025C5DC();
    }

    v9 = qword_10039C9C8;
    if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
    {
      v10 = v9;
      v11 = [v8 container];
      v12 = [v11 options];
      v13 = [v12 accountOverrideInfo];
      v14 = [v13 accountID];
      *buf = 138412546;
      v21 = v14;
      v22 = 2112;
      v23 = v6;
      _os_log_impl(&_mh_execute_header, v10, OS_LOG_TYPE_INFO, "error getting account info(altDSID: %@): %@", buf, 0x16u);
    }

    v15 = [v8 fetchCKAccountStatusScheduler];
    [v15 trigger];

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v16 = [WeakRetained queue];
    block[0] = _NSConcreteStackBlock;
    block[1] = 3221225472;
    block[2] = sub_1001D126C;
    block[3] = &unk_10031E018;
    block[4] = v8;
    v18 = v5;
    v19 = *(a1 + 32);
    dispatch_async(v16, block);
  }
}

void sub_1001D1228(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

id sub_1001D126C(uint64_t a1)
{
  [*(a1 + 32) setFirstCKAccountFetch:1];
  if (qword_10039C9C0 != -1)
  {
    sub_10025C5F0();
  }

  v2 = qword_10039C9C8;
  if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
  {
    v3 = *(a1 + 32);
    v4 = v2;
    v5 = [v3 container];
    v6 = [v5 options];
    v7 = [v6 accountOverrideInfo];
    v8 = [v7 accountID];
    v9 = *(a1 + 40);
    v11 = 138412546;
    v12 = v8;
    v13 = 2112;
    v14 = v9;
    _os_log_impl(&_mh_execute_header, v4, OS_LOG_TYPE_INFO, "received CK Account info(altDSID: %@): %@", &v11, 0x16u);
  }

  return [*(a1 + 32) _onqueueUpdateAccountState:*(a1 + 40) deliveredSemaphore:*(a1 + 48)];
}

void sub_1001D13B0(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D13F4(uint64_t a1, void *a2)
{
  v3 = a2;
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v5 = WeakRetained;
  if (v3)
  {
    if (qword_10039C9C0 != -1)
    {
      sub_10025C604();
    }

    v6 = qword_10039C9C8;
    if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
    {
      v7 = v6;
      v8 = [v5 container];
      v9 = [v8 options];
      v10 = [v9 accountOverrideInfo];
      v11 = [v10 accountID];
      v14 = 138412546;
      v15 = v11;
      v16 = 2112;
      v17 = v3;
      _os_log_impl(&_mh_execute_header, v7, OS_LOG_TYPE_INFO, "error reloading account info(altDSID: %@): %@", &v14, 0x16u);
    }

    v12 = [v5 fetchCKAccountStatusScheduler];
    [v12 trigger];

    dispatch_semaphore_signal(*(a1 + 32));
  }

  else
  {
    v13 = [WeakRetained container];
    [v13 accountInfoWithCompletionHandler:*(a1 + 40)];
  }
}

void sub_1001D1580(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D1724(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D1A64(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D1AA8(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D1D18(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 48));
  v2 = *(a1 + 32);
  v3 = [*(a1 + 40) currentCKAccountInfo];
  [WeakRetained cloudkitAccountStateChange:v2 to:v3];
}

void sub_1001D1F80(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D1FC4(uint64_t a1)
{
  v2 = [*(a1 + 32) ckChangeListeners];
  v3 = [v2 keyEnumerator];

  v4 = [v3 nextObject];
  if (v4)
  {
    v6 = v4;
    *&v5 = 138412290;
    v12 = v5;
    do
    {
      v7 = [*(a1 + 32) ckChangeListeners];
      v8 = [v7 objectForKey:v6];

      if (qword_10039C9C0 != -1)
      {
        sub_10025C668();
      }

      v9 = qword_10039C9C8;
      if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
      {
        *buf = v12;
        v16 = v8;
        _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_INFO, "Starting blocking for listener %@", buf, 0xCu);
      }

      objc_initWeak(buf, v8);
      v10 = *(a1 + 40);
      block[0] = _NSConcreteStackBlock;
      block[1] = 3221225472;
      block[2] = sub_1001D21F0;
      block[3] = &unk_1003175E0;
      objc_copyWeak(&v14, buf);
      dispatch_group_async(v10, v6, block);
      objc_destroyWeak(&v14);
      objc_destroyWeak(buf);

      v11 = [v3 nextObject];

      v6 = v11;
    }

    while (v11);
  }
}

void sub_1001D21AC(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D21F0(uint64_t a1)
{
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_10039C9C0 != -1)
  {
    sub_10025C690();
  }

  v2 = qword_10039C9C8;
  if (os_log_type_enabled(qword_10039C9C8, OS_LOG_TYPE_INFO))
  {
    v3 = 138412290;
    v4 = WeakRetained;
    _os_log_impl(&_mh_execute_header, v2, OS_LOG_TYPE_INFO, "Done blocking for listener %@", &v3, 0xCu);
  }
}

void sub_1001D22B4(id a1)
{
  qword_10039C9C8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

unint64_t sub_1001D27F4(unint64_t result)
{
  if (result)
  {
    v1 = result;
    result = 0;
    do
    {
      ++result;
      v2 = v1 > 0xFF;
      v1 >>= 8;
    }

    while (v2);
  }

  return result;
}

unsigned __int8 *sub_1001D2818(unint64_t a1, unsigned __int8 *a2, unint64_t a3, unint64_t *a4)
{
  v4 = 0;
  if (a1)
  {
    do
    {
      ++v4;
      v5 = a1 > 0xFF;
      a1 >>= 8;
    }

    while (v5);
  }

  result = 0;
  if (a3 >= a2 && a2 && a3 && a3 - a2 >= v4)
  {
    v7 = 0;
    if (v4)
    {
      v8 = a2;
      v9 = v4;
      do
      {
        v10 = *v8++;
        v7 = v10 | (v7 << 8);
        --v9;
      }

      while (v9);
    }

    if (a4)
    {
      *a4 = v7;
    }

    return &a2[v4];
  }

  return result;
}

void sub_1001D334C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, id location)
{
  objc_destroyWeak((v15 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1001D3378(id a1)
{
  qword_10039C9D8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D33BC(uint64_t a1, void *a2, void *a3)
{
  v5 = a2;
  v6 = a3;
  WeakRetained = objc_loadWeakRetained((a1 + 32));
  if (qword_10039C9D0 != -1)
  {
    sub_10025C6CC();
  }

  v8 = qword_10039C9D8;
  if (os_log_type_enabled(qword_10039C9D8, OS_LOG_TYPE_DEFAULT))
  {
    v9 = v8;
    v10 = [WeakRetained uri];
    *buf = 141558530;
    v35 = 1752392040;
    v36 = 2112;
    v37 = v10;
    v38 = 2112;
    v39 = v6;
    _os_log_impl(&_mh_execute_header, v9, OS_LOG_TYPE_DEFAULT, "FetchKTSelf: fetched %{mask.hash}@: %@", buf, 0x20u);
  }

  [WeakRetained setQueryResponse:v5];
  v11 = [WeakRetained queryResponse];

  if (v6 || !v11)
  {
    if (!v6)
    {
      v6 = [TransparencyError errorWithDomain:kTransparencyErrorNetwork code:-344 underlyingError:0 description:@"FetchQuery data missing, and no error"];
    }

    if (qword_10039C9D0 != -1)
    {
      sub_10025C708();
    }

    v27 = qword_10039C9D8;
    if (os_log_type_enabled(qword_10039C9D8, OS_LOG_TYPE_ERROR))
    {
      v28 = v27;
      v29 = [WeakRetained uri];
      *buf = 141558530;
      v35 = 1752392040;
      v36 = 2112;
      v37 = v29;
      v38 = 2114;
      v39 = v6;
      _os_log_impl(&_mh_execute_header, v28, OS_LOG_TYPE_ERROR, "FetchKTSelf: no query response for %{mask.hash}@: %{public}@", buf, 0x20u);
    }

    [WeakRetained setError:v6];
    v26 = [WeakRetained operationQueue];
    v24 = [WeakRetained finishedOp];
    [v26 addOperation:v24];
  }

  else
  {
    v32 = v5;
    v12 = [v5 metadata];
    v13 = [v12 objectForKeyedSubscript:kTransparencyResponseMetadataKeyServerHint];

    v30 = [WeakRetained deps];
    v14 = [v30 smDataStore];
    v15 = [WeakRetained queryRequest];
    v16 = [v15 data];
    v17 = [WeakRetained queryResponse];
    v18 = [v17 data];
    v19 = [WeakRetained uri];
    v20 = [WeakRetained application];
    v33 = 0;
    v31 = v13;
    LOBYTE(v13) = [v14 storeQueryRequest:v16 queryResponse:v18 serverHint:v13 uri:v19 application:v20 error:&v33];
    v6 = v33;

    if ((v13 & 1) == 0)
    {
      if (qword_10039C9D0 != -1)
      {
        sub_10025C6E0();
      }

      v21 = qword_10039C9D8;
      if (os_log_type_enabled(qword_10039C9D8, OS_LOG_TYPE_ERROR))
      {
        v22 = v21;
        v23 = [WeakRetained uri];
        *buf = 141558530;
        v35 = 1752392040;
        v36 = 2112;
        v37 = v23;
        v38 = 2112;
        v39 = v6;
        _os_log_impl(&_mh_execute_header, v22, OS_LOG_TYPE_ERROR, "FetchKTSelf: failed to store KT response for %{mask.hash}@: %@", buf, 0x20u);
      }

      [WeakRetained setError:v6];
    }

    v24 = [WeakRetained operationQueue];
    v25 = [WeakRetained finishedOp];
    [v24 addOperation:v25];

    v26 = v31;
    v5 = v32;
  }
}

void sub_1001D381C(id a1)
{
  qword_10039C9D8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D3860(id a1)
{
  qword_10039C9D8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D38A4(id a1)
{
  qword_10039C9D8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001D9D90(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, uint64_t a27, char a28)
{
  _Block_object_dispose(&a28, 8);
  _Block_object_dispose((v28 - 136), 8);
  _Unwind_Resume(a1);
}

uint64_t sub_1001D9DB4(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1001D9DCC(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);
  v4 = *(a1 + 40);
  v5 = *(a1 + 48);
  v6 = *(a1 + 56);
  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 80);
  v10 = *(a1 + 112);
  v11 = *(a1 + 88);
  v12 = *(*(a1 + 96) + 8);
  v25 = *(v12 + 40);
  v13 = [v3 createIDSKTVerification:v4 application:v5 onMoc:a2 accountKey:v6 idsResponseTime:v7 serverLoggableDatas:v8 optedIn:v10 type:v9 syncedLoggableDatas:v11 verificationId:&v25 error:?];
  objc_storeStrong((v12 + 40), v25);
  if (v13)
  {
    v14 = *(a1 + 32);
    v15 = *(*(a1 + 96) + 8);
    obj = *(v15 + 40);
    v16 = [v14 persistWithError:&obj];
    objc_storeStrong((v15 + 40), obj);
    if (v16)
    {
      v17 = [v13 verificationId];
      v18 = *(*(a1 + 104) + 8);
      v19 = *(v18 + 40);
      *(v18 + 40) = v17;
    }

    v20 = *(a1 + 32);
    v21 = objc_opt_class();
    v22 = *(*(a1 + 96) + 8);
    v23 = *(v22 + 40);
    [v21 cleanseError:&v23];
    objc_storeStrong((v22 + 40), v23);
  }
}

void sub_1001DA810(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, ...)
{
  va_start(va, a11);
  _Block_object_dispose(va, 8);
  _Block_object_dispose((v11 - 80), 8);
  _Unwind_Resume(a1);
}

void sub_1001DA834(void *a1)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = *(a1[7] + 8);
  obj = *(v4 + 40);
  v5 = [v2 onMocFetchVerificationForVerificationId:v3 error:&obj];
  objc_storeStrong((v4 + 40), obj);
  v6 = a1[4];
  v7 = objc_opt_class();
  v8 = *(a1[7] + 8);
  v9 = *(v8 + 40);
  [v7 cleanseError:&v9];
  objc_storeStrong((v8 + 40), v9);
  if (v5)
  {
    (*(a1[6] + 16))();
    *(*(a1[8] + 8) + 24) = 1;
  }
}

void sub_1001DAAC4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, ...)
{
  va_start(va, a9);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

void sub_1001DAAE4(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 48) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = *(a1 + 32);
    v6 = *(a1 + 40);
    v7 = *(*(a1 + 48) + 8);
    v25 = *(v7 + 40);
    [v5 deleteNonRecentVerificationsForApplication:v6 error:&v25];
    objc_storeStrong((v7 + 40), v25);
    v8 = [NSBatchUpdateRequest batchUpdateRequestWithEntityName:@"IDSKTVerification"];
    v9 = [NSPredicate predicateWithFormat:@"application == %@", *(a1 + 40)];
    [v8 setPredicate:v9];

    v29[0] = @"verificationResult";
    v29[1] = @"reported";
    v30[0] = &off_10033CFC0;
    v30[1] = &__kCFBooleanFalse;
    v29[2] = @"failure";
    v10 = +[NSNull null];
    v29[3] = @"partialFail";
    v30[2] = v10;
    v30[3] = &__kCFBooleanFalse;
    v11 = [NSDictionary dictionaryWithObjects:v30 forKeys:v29 count:4];
    [v8 setPropertiesToUpdate:v11];

    [v8 setResultType:1];
    v12 = [*(a1 + 32) context];
    v13 = *(*(a1 + 48) + 8);
    v24 = *(v13 + 40);
    v14 = [v12 executeRequest:v8 error:&v24];
    objc_storeStrong((v13 + 40), v24);

    v15 = *(a1 + 32);
    v16 = *(*(a1 + 48) + 8);
    v23 = *(v16 + 40);
    [v15 persistWithError:&v23];
    objc_storeStrong((v16 + 40), v23);
    if (!v14)
    {
      if (qword_10039C9E0 != -1)
      {
        sub_10025C758();
      }

      v17 = qword_10039C9E8;
      if (os_log_type_enabled(qword_10039C9E8, OS_LOG_TYPE_ERROR))
      {
        v18 = *(*(*(a1 + 48) + 8) + 40);
        *buf = 138412290;
        v28 = v18;
        _os_log_impl(&_mh_execute_header, v17, OS_LOG_TYPE_ERROR, "resetVerificationsToPending delete: %@", buf, 0xCu);
      }
    }
  }

  v19 = *(a1 + 32);
  v20 = objc_opt_class();
  v21 = *(*(a1 + 48) + 8);
  v22 = *(v21 + 40);
  [v20 cleanseError:&v22];
  objc_storeStrong((v21 + 40), v22);
}

void sub_1001DAD9C(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DADE0(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}

void sub_1001DB0A4(_Unwind_Exception *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, char a21, uint64_t a22, uint64_t a23, uint64_t a24, uint64_t a25, uint64_t a26, char a27)
{
  _Block_object_dispose(&a21, 8);
  _Block_object_dispose(&a27, 8);
  _Unwind_Resume(a1);
}

void sub_1001DB0D0(uint64_t a1)
{
  v2 = *(a1 + 32);
  v3 = *(*(a1 + 72) + 8);
  obj = *(v3 + 40);
  v4 = [v2 persistWithError:&obj];
  objc_storeStrong((v3 + 40), obj);
  if (v4)
  {
    v5 = [NSPredicate predicateWithFormat:@"uri = %@ && verificationResult == %d && application = %@ && idsResponseTime < %@", *(a1 + 40), 2, *(a1 + 48), *(a1 + 56)];
    v6 = [NSFetchRequest fetchRequestWithEntityName:@"IDSKTVerification"];
    [v6 setPredicate:v5];
    [v6 setFetchBatchSize:*(a1 + 88)];
    v7 = [*(a1 + 32) context];
    v8 = *(*(a1 + 72) + 8);
    v14 = *(v8 + 40);
    v9 = [v7 executeFetchRequest:v6 error:&v14];
    objc_storeStrong((v8 + 40), v14);

    if ([v9 count])
    {
      (*(*(a1 + 64) + 16))();
      *(*(*(a1 + 80) + 8) + 24) = 1;
    }
  }

  v10 = *(a1 + 32);
  v11 = objc_opt_class();
  v12 = *(*(a1 + 72) + 8);
  v13 = *(v12 + 40);
  [v11 cleanseError:&v13];
  objc_storeStrong((v12 + 40), v13);
}

void sub_1001DB244(id a1)
{
  qword_10039C9E8 = os_log_create("com.apple.Transparency", "default");

  _objc_release_x1();
}