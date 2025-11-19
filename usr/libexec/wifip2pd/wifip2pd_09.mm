uint64_t sub_1000BCCE0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v7 = *(v4 - 1);
      v6 = *v4;
      v9 = *(i - 1);
      v8 = *i;
      v10 = *v4 >> 62;
      v11 = *i >> 62;
      if (v10 == 3)
      {
        break;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v20 = *(v7 + 16);
          v19 = *(v7 + 24);
          v17 = __OFSUB__(v19, v20);
          v13 = v19 - v20;
          if (v17)
          {
            goto LABEL_62;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v10)
      {
        LODWORD(v13) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_63;
        }

        v13 = v13;
        if (v11 <= 1)
        {
LABEL_29:
          if (v11)
          {
            LODWORD(v18) = HIDWORD(v9) - v9;
            if (__OFSUB__(HIDWORD(v9), v9))
            {
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
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v8);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v6);
        if (v11 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v11 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v9 + 16);
      v15 = *(v9 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
        goto LABEL_61;
      }

LABEL_33:
      if (v13 != v18)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v10 > 1)
      {
        if (v10 == 2)
        {
          v31 = v3;
          v21 = *(v7 + 16);
          v30 = *(v7 + 24);
          sub_10000AB0C(v7, v6);
          sub_10000AB0C(v9, v8);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_66;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_65;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v9;
          v26 = v8;
          v3 = v31;
          goto LABEL_54;
        }

        memset(v33, 0, 14);
        sub_10000AB0C(v7, v6);
        sub_10000AB0C(v9, v8);
      }

      else
      {
        if (v10)
        {
          if (v7 >> 32 < v7)
          {
            goto LABEL_64;
          }

          sub_10000AB0C(v7, v6);
          sub_10000AB0C(v9, v8);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v7, v28))
            {
              goto LABEL_67;
            }

            v27 += v7 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v9;
          v26 = v8;
LABEL_54:
          sub_100031E04(v24, v25, v26, v33);
          sub_1000124C8(v9, v8);
          sub_1000124C8(v7, v6);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 - 1);
        LOWORD(v33[1]) = v6;
        BYTE2(v33[1]) = BYTE2(v6);
        BYTE3(v33[1]) = BYTE3(v6);
        BYTE4(v33[1]) = BYTE4(v6);
        BYTE5(v33[1]) = BYTE5(v6);
        sub_10000AB0C(v7, v6);
        sub_10000AB0C(v9, v8);
      }

      sub_100031E04(v33, v9, v8, &v32);
      sub_1000124C8(v9, v8);
      sub_1000124C8(v7, v6);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    if (v7)
    {
      v12 = 0;
    }

    else
    {
      v12 = v6 == 0xC000000000000000;
    }

    v13 = 0;
    v14 = v12 && *i >> 62 == 3;
    if (v14 && !v9 && v8 == 0xC000000000000000)
    {
      goto LABEL_6;
    }

LABEL_28:
    if (v11 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1000BD0EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v24 - v9;
  v11 = *(a1 + 16);
  if (v11 != *(a2 + 16))
  {
    v21 = 0;
    return v21 & 1;
  }

  if (!v11 || a1 == a2)
  {
    v21 = 1;
    return v21 & 1;
  }

  v12 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v13 = a1 + v12;
  v14 = a2 + v12;
  v16 = *(v5 + 16);
  v15 = v5 + 16;
  v17 = (v15 - 8);
  v24 = *(v15 + 56);
  v25 = v16;
  while (1)
  {
    v18 = v25;
    result = (v25)(v10, v13, v4);
    if (!v11)
    {
      break;
    }

    v20 = v15;
    v18(v8, v14, v4);
    sub_1000C2CA8();
    v21 = dispatch thunk of static Equatable.== infix(_:_:)();
    v22 = *v17;
    (*v17)(v8, v4);
    v22(v10, v4);
    if (v21)
    {
      v14 += v24;
      v13 += v24;
      v23 = v11-- == 1;
      v15 = v20;
      if (!v23)
      {
        continue;
      }
    }

    return v21 & 1;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BD2D0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 32);
    for (i = (a2 + 32); ; i += 24)
    {
      if (*v4 != *i || v4[1] != i[1] || v4[2] != i[2])
      {
        return 0;
      }

      v9 = *(v4 + 1);
      v8 = *(v4 + 2);
      v11 = *(i + 1);
      v10 = *(i + 2);
      v12 = v8 >> 62;
      v13 = v10 >> 62;
      if (v8 >> 62 == 3)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v20 = *(v9 + 16);
          v19 = *(v9 + 24);
          v17 = __OFSUB__(v19, v20);
          v14 = v19 - v20;
          if (v17)
          {
            goto LABEL_64;
          }

          goto LABEL_31;
        }

        v14 = 0;
        if (v13 <= 1)
        {
          goto LABEL_32;
        }
      }

      else if (v12)
      {
        LODWORD(v14) = HIDWORD(v9) - v9;
        if (__OFSUB__(HIDWORD(v9), v9))
        {
          goto LABEL_65;
        }

        v14 = v14;
        if (v13 <= 1)
        {
LABEL_32:
          if (v13)
          {
            LODWORD(v18) = HIDWORD(v11) - v11;
            if (__OFSUB__(HIDWORD(v11), v11))
            {
              goto LABEL_63;
            }

            v18 = v18;
          }

          else
          {
            v18 = BYTE6(v10);
          }

          goto LABEL_36;
        }
      }

      else
      {
        v14 = BYTE6(v8);
        if (v13 <= 1)
        {
          goto LABEL_32;
        }
      }

LABEL_25:
      if (v13 != 2)
      {
        if (v14)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v16 = *(v11 + 16);
      v15 = *(v11 + 24);
      v17 = __OFSUB__(v15, v16);
      v18 = v15 - v16;
      if (v17)
      {
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
        __break(1u);
LABEL_69:
        __break(1u);
      }

LABEL_36:
      if (v14 != v18)
      {
        return 0;
      }

      if (v14 < 1)
      {
        goto LABEL_6;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v31 = v3;
          v21 = *(v9 + 16);
          v30 = *(v9 + 24);
          sub_10000AB0C(v9, v8);
          sub_10000AB0C(v11, v10);
          v22 = __DataStorage._bytes.getter();
          if (v22)
          {
            v23 = __DataStorage._offset.getter();
            if (__OFSUB__(v21, v23))
            {
              goto LABEL_68;
            }

            v22 += v21 - v23;
          }

          if (__OFSUB__(v30, v21))
          {
            goto LABEL_67;
          }

          __DataStorage._length.getter();
          v24 = v22;
          v25 = v11;
          v26 = v10;
          v3 = v31;
          goto LABEL_57;
        }

        memset(v33, 0, 14);
        sub_10000AB0C(v9, v8);
        sub_10000AB0C(v11, v10);
      }

      else
      {
        if (v12)
        {
          if (v9 >> 32 < v9)
          {
            goto LABEL_66;
          }

          sub_10000AB0C(v9, v8);
          sub_10000AB0C(v11, v10);
          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            if (__OFSUB__(v9, v28))
            {
              goto LABEL_69;
            }

            v27 += v9 - v28;
          }

          __DataStorage._length.getter();
          v24 = v27;
          v25 = v11;
          v26 = v10;
LABEL_57:
          sub_100031E04(v24, v25, v26, v33);
          sub_1000124C8(v11, v10);
          sub_1000124C8(v9, v8);
          if ((v33[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v33[0] = *(v4 + 1);
        LOWORD(v33[1]) = v8;
        BYTE2(v33[1]) = BYTE2(v8);
        BYTE3(v33[1]) = BYTE3(v8);
        BYTE4(v33[1]) = BYTE4(v8);
        BYTE5(v33[1]) = BYTE5(v8);
        sub_10000AB0C(v9, v8);
        sub_10000AB0C(v11, v10);
      }

      sub_100031E04(v33, v11, v10, &v32);
      sub_1000124C8(v11, v10);
      sub_1000124C8(v9, v8);
      if (!v32)
      {
        return 0;
      }

LABEL_6:
      v4 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    v14 = 0;
    if (!v9 && v8 == 0xC000000000000000 && v10 >> 62 == 3)
    {
      v14 = 0;
      if (!v11 && v10 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_31:
    if (v13 <= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_25;
  }

  return 1;
}

uint64_t sub_1000BD70C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v52 = *(a1 + 16);
    v53 = a2 + 32;
    v54 = a1 + 32;
    while (1)
    {
      if (v3 == v2)
      {
        __break(1u);
        __break(1u);
LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
LABEL_100:
        __break(1u);
LABEL_101:
        __break(1u);
LABEL_102:
        __break(1u);
      }

      v5 = (v54 + 56 * v3);
      v6 = *v5;
      v7 = (v53 + 56 * v3);
      v8 = *v7;
      result = v6 == v8;
      if (v6 != v8)
      {
        return result;
      }

      v9 = *(v5 + 1);
      v10 = *(v5 + 2);
      v11 = *(v5 + 3);
      v12 = *(v5 + 5);
      v13 = *(v7 + 2);
      v60 = *(v7 + 1);
      v14 = *(v7 + 3);
      v15 = *(v7 + 5);
      v55 = v6 == v8;
      v56 = *(v5 + 48);
      v58 = *(v7 + 32);
      v59 = *(v5 + 32);
      v57 = *(v7 + 48);
      if (v11 >> 60 != 15)
      {
        break;
      }

      if (v14 >> 60 != 15)
      {
        goto LABEL_91;
      }

      sub_10005D4F4(v9, v10, v11);
      v16 = v11;
      v17 = v9;
      v18 = v12;

      sub_10005D4F4(v60, v13, v14);

      sub_10005D4F4(v9, v10, v16);
      sub_10005D4F4(v60, v13, v14);
LABEL_64:
      sub_10002F75C(v17, v10, v16);
      if (v59 != v58)
      {
        goto LABEL_87;
      }

      if (v56)
      {
        if ((v57 & 1) == 0)
        {
          goto LABEL_87;
        }

        v41 = *(v18 + 16);
        if (v41 != *(v15 + 16))
        {
          goto LABEL_87;
        }

        if (v41 && v18 != v15)
        {
          v42 = 0;
          do
          {
            v45 = v18 + v42;
            v46 = v15 + v42;
            if (*(v18 + v42 + 32) != *(v15 + v42 + 32) || *(v45 + 34) != *(v46 + 34) || *(v45 + 36) != *(v46 + 36))
            {
              goto LABEL_87;
            }

            v47 = *(v46 + 40);
            if (*(v45 + 40))
            {
              if ((*(v46 + 40) & 1) == 0)
              {
                goto LABEL_87;
              }
            }

            else if ((*(v46 + 40) & 1) != 0 || *(v45 + 38) != *(v46 + 38))
            {
              goto LABEL_87;
            }

            v42 += 10;
          }

          while (--v41);
        }
      }

      else
      {
        if (v57)
        {
          goto LABEL_87;
        }

        v43 = *(v18 + 16);
        if (v43 != *(v15 + 16))
        {
          goto LABEL_87;
        }

        if (v43 && v18 != v15)
        {
          v44 = 32;
          while (*(v18 + v44) == *(v15 + v44))
          {
            ++v44;
            if (!--v43)
            {
              goto LABEL_6;
            }
          }

LABEL_87:
          sub_10002F75C(v60, v13, v14);

          sub_10002F75C(v17, v10, v16);
LABEL_88:

          return 0;
        }
      }

LABEL_6:
      ++v3;
      sub_10002F75C(v60, v13, v14);

      sub_10002F75C(v17, v10, v16);

      v2 = v52;
      result = v55;
      if (v3 == v52)
      {
        return result;
      }
    }

    if (v14 >> 60 == 15)
    {
LABEL_91:
      sub_10005D4F4(v9, v10, v11);
      sub_10005D4F4(v60, v13, v14);
      sub_10002F75C(v9, v10, v11);
      sub_10002F75C(v60, v13, v14);
      return 0;
    }

    if (*(v5 + 1) != v60)
    {
      goto LABEL_92;
    }

    v19 = v11 >> 62;
    v20 = v14 >> 62;
    if (v11 >> 62 == 3)
    {
      v21 = 0;
      if (!v10 && v11 == 0xC000000000000000 && v14 >> 62 == 3)
      {
        v21 = 0;
        if (!v13 && v14 == 0xC000000000000000)
        {
          sub_10005D4F4(v9, 0, 0xC000000000000000);
          v16 = 0xC000000000000000;
          v17 = v9;
          v18 = v12;

          sub_10005D4F4(v60, 0, 0xC000000000000000);

          sub_10005D4F4(v9, 0, 0xC000000000000000);
          sub_10005D4F4(v60, 0, 0xC000000000000000);
          v22 = v60;
          v23 = 0;
          v24 = 0xC000000000000000;
          goto LABEL_46;
        }
      }
    }

    else if (v19 > 1)
    {
      if (v19 != 2)
      {
        v21 = 0;
        if (v20 <= 1)
        {
LABEL_32:
          if (v20)
          {
            LODWORD(v28) = HIDWORD(v13) - v13;
            if (__OFSUB__(HIDWORD(v13), v13))
            {
              goto LABEL_95;
            }

            v28 = v28;
          }

          else
          {
            v28 = BYTE6(v14);
          }

          goto LABEL_39;
        }

LABEL_37:
        if (v20 != 2)
        {
          if (v21)
          {
LABEL_92:
            sub_10005D4F4(v9, v10, v11);

            sub_10005D4F4(v60, v13, v14);

            sub_10005D4F4(v9, v10, v11);
            sub_10005D4F4(v60, v13, v14);
            sub_10002F75C(v60, v13, v14);
LABEL_93:
            sub_10002F75C(v9, v10, v11);
            sub_10002F75C(v60, v13, v14);

            sub_10002F75C(v9, v10, v11);
            goto LABEL_88;
          }

LABEL_45:
          sub_10005D4F4(v9, v10, v11);
          v16 = v11;
          v17 = v9;
          v18 = v12;

          sub_10005D4F4(v60, v13, v14);

          sub_10005D4F4(v9, v10, v16);
          sub_10005D4F4(v60, v13, v14);
          v22 = v60;
          v23 = v13;
          v24 = v14;
LABEL_46:
          sub_10002F75C(v22, v23, v24);
          goto LABEL_64;
        }

        v30 = *(v13 + 16);
        v29 = *(v13 + 24);
        v27 = __OFSUB__(v29, v30);
        v28 = v29 - v30;
        if (v27)
        {
          goto LABEL_96;
        }

LABEL_39:
        if (v21 != v28)
        {
          goto LABEL_92;
        }

        if (v21 < 1)
        {
          goto LABEL_45;
        }

        v51 = v13;
        if (v19 > 1)
        {
          if (v19 != 2)
          {
            memset(v62, 0, 14);
            sub_10005D4F4(v9, v10, v11);

            v31 = v60;
            sub_10005D4F4(v60, v13, v14);

            sub_10005D4F4(v9, v10, v11);
            sub_10005D4F4(v60, v13, v14);
            v32 = v13;
LABEL_57:
            sub_100031E04(v62, v32, v14, &v61);
            sub_10002F75C(v31, v13, v14);
            if (!v61)
            {
              goto LABEL_93;
            }

LABEL_63:
            v16 = v11;
            v17 = v9;
            v18 = v12;
            goto LABEL_64;
          }

          v48 = *(v10 + 24);
          v49 = *(v10 + 16);
          sub_10005D4F4(v9, v10, v11);

          sub_10005D4F4(v60, v13, v14);

          v50 = v9;
          sub_10005D4F4(v9, v10, v11);
          sub_10005D4F4(v60, v13, v14);
          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v34 = v33;
            v35 = __DataStorage._offset.getter();
            v36 = v49;
            if (__OFSUB__(v49, v35))
            {
              goto LABEL_101;
            }

            v37 = v49 - v35 + v34;
          }

          else
          {
            v37 = 0;
            v36 = v49;
          }

          if (__OFSUB__(v48, v36))
          {
            goto LABEL_100;
          }

          __DataStorage._length.getter();
          v40 = v37;
        }

        else
        {
          if (!v19)
          {
            v62[0] = v10;
            LOWORD(v62[1]) = v11;
            BYTE2(v62[1]) = BYTE2(v11);
            BYTE3(v62[1]) = BYTE3(v11);
            BYTE4(v62[1]) = BYTE4(v11);
            BYTE5(v62[1]) = BYTE5(v11);
            sub_10005D4F4(v9, v10, v11);

            v31 = v60;
            sub_10005D4F4(v60, v13, v14);

            sub_10005D4F4(v9, v10, v11);
            sub_10005D4F4(v60, v13, v14);
            v32 = v13;
            goto LABEL_57;
          }

          if (v10 >> 32 < v10)
          {
            goto LABEL_99;
          }

          sub_10005D4F4(v9, v10, v11);

          sub_10005D4F4(v60, v13, v14);

          v50 = v9;
          sub_10005D4F4(v9, v10, v11);
          sub_10005D4F4(v60, v13, v14);
          v38 = __DataStorage._bytes.getter();
          if (v38)
          {
            v39 = __DataStorage._offset.getter();
            if (__OFSUB__(v10, v39))
            {
              goto LABEL_102;
            }

            v38 += v10 - v39;
          }

          __DataStorage._length.getter();
          v40 = v38;
        }

        v13 = v51;
        sub_100031E04(v40, v51, v14, v62);
        sub_10002F75C(v60, v51, v14);
        v9 = v50;
        if ((v62[0] & 1) == 0)
        {
          goto LABEL_93;
        }

        goto LABEL_63;
      }

      v26 = *(v10 + 16);
      v25 = *(v10 + 24);
      v27 = __OFSUB__(v25, v26);
      v21 = v25 - v26;
      if (v27)
      {
        goto LABEL_98;
      }
    }

    else
    {
      if (!v19)
      {
        v21 = BYTE6(v11);
        if (v20 <= 1)
        {
          goto LABEL_32;
        }

        goto LABEL_37;
      }

      LODWORD(v21) = HIDWORD(v10) - v10;
      if (__OFSUB__(HIDWORD(v10), v10))
      {
        goto LABEL_97;
      }

      v21 = v21;
    }

    if (v20 <= 1)
    {
      goto LABEL_32;
    }

    goto LABEL_37;
  }

  return 1;
}

uint64_t _s7CoreP2P12NANAttributeO32FineTimingMeasurementRangeReportV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, double a3, uint8x8_t a4, uint8x8_t a5)
{
  v5 = *(a1 + 16);
  if (v5 == *(a2 + 16))
  {
    if (!v5 || a1 == a2)
    {
      return 1;
    }

    for (i = 0; ; i += 16)
    {
      v7 = a1 + i;
      v8 = a2 + i;
      if (*(a1 + i + 32) != *(a2 + i + 32))
      {
        break;
      }

      a4.i32[0] = *(v7 + 36);
      a5.i32[0] = *(v7 + 42);
      v9 = vmovl_u8(a5);
      v10 = vuzp1_s8(*&vmovl_u8(a4), 0x8000400020001);
      v11 = v10.i32[0] == *(v8 + 36) && *(v7 + 40) == *(v8 + 40);
      v12 = !v11;
      v10.i32[0] = *(v8 + 42);
      a5 = (v9.i64[0] & 0xFF00FF00FF00FFLL);
      a4 = vand_s8(vceq_s16(a5, (vmovl_u8(v10).u64[0] & 0xFF00FF00FF00FFLL)), 0x8000400020001);
      a4.i16[0] = vaddv_s16(a4);
      if (v12 || (~a4.i32[0] & 0xF) != 0)
      {
        break;
      }

      if (!--v5)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000BE1B8(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (a2 + 33);
  v4 = (result + 33);
  while (v2)
  {
    v5 = *(v3 - 1);
    v6 = *v3;
    v3 += 2;
    v7 = v6;
    result = *(v4 - 1) == v5 && *v4 == v7;
    v9 = result != 1 || v2-- == 1;
    v4 += 2;
    if (v9)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t _s7CoreP2P12NANAttributeO26SecurityContextInformationV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = 0;
    v4 = (a1 + 32);
    for (i = (a2 + 32); ; i += 24)
    {
      if (*v4 != *i || v4[1] != i[1])
      {
        return 0;
      }

      v8 = *(v4 + 1);
      v7 = *(v4 + 2);
      v10 = *(i + 1);
      v9 = *(i + 2);
      v11 = v7 >> 62;
      v12 = v9 >> 62;
      if (v7 >> 62 == 3)
      {
        break;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v19 = *(v8 + 16);
          v18 = *(v8 + 24);
          v16 = __OFSUB__(v18, v19);
          v13 = v18 - v19;
          if (v16)
          {
            goto LABEL_61;
          }

          goto LABEL_28;
        }

        v13 = 0;
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

      else if (v11)
      {
        LODWORD(v13) = HIDWORD(v8) - v8;
        if (__OFSUB__(HIDWORD(v8), v8))
        {
          goto LABEL_62;
        }

        v13 = v13;
        if (v12 <= 1)
        {
LABEL_29:
          if (v12)
          {
            LODWORD(v17) = HIDWORD(v10) - v10;
            if (__OFSUB__(HIDWORD(v10), v10))
            {
              goto LABEL_60;
            }

            v17 = v17;
          }

          else
          {
            v17 = BYTE6(v9);
          }

          goto LABEL_33;
        }
      }

      else
      {
        v13 = BYTE6(v7);
        if (v12 <= 1)
        {
          goto LABEL_29;
        }
      }

LABEL_22:
      if (v12 != 2)
      {
        if (v13)
        {
          return 0;
        }

        goto LABEL_6;
      }

      v15 = *(v10 + 16);
      v14 = *(v10 + 24);
      v16 = __OFSUB__(v14, v15);
      v17 = v14 - v15;
      if (v16)
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
LABEL_64:
        __break(1u);
LABEL_65:
        __break(1u);
LABEL_66:
        __break(1u);
      }

LABEL_33:
      if (v13 != v17)
      {
        return 0;
      }

      if (v13 < 1)
      {
        goto LABEL_6;
      }

      if (v11 > 1)
      {
        if (v11 == 2)
        {
          v30 = v3;
          v20 = *(v8 + 16);
          v29 = *(v8 + 24);
          sub_10000AB0C(v8, v7);
          sub_10000AB0C(v10, v9);
          v21 = __DataStorage._bytes.getter();
          if (v21)
          {
            v22 = __DataStorage._offset.getter();
            if (__OFSUB__(v20, v22))
            {
              goto LABEL_65;
            }

            v21 += v20 - v22;
          }

          if (__OFSUB__(v29, v20))
          {
            goto LABEL_64;
          }

          __DataStorage._length.getter();
          v23 = v21;
          v24 = v10;
          v25 = v9;
          v3 = v30;
          goto LABEL_54;
        }

        memset(v32, 0, 14);
        sub_10000AB0C(v8, v7);
        sub_10000AB0C(v10, v9);
      }

      else
      {
        if (v11)
        {
          if (v8 >> 32 < v8)
          {
            goto LABEL_63;
          }

          sub_10000AB0C(v8, v7);
          sub_10000AB0C(v10, v9);
          v26 = __DataStorage._bytes.getter();
          if (v26)
          {
            v27 = __DataStorage._offset.getter();
            if (__OFSUB__(v8, v27))
            {
              goto LABEL_66;
            }

            v26 += v8 - v27;
          }

          __DataStorage._length.getter();
          v23 = v26;
          v24 = v10;
          v25 = v9;
LABEL_54:
          sub_100031E04(v23, v24, v25, v32);
          sub_1000124C8(v10, v9);
          sub_1000124C8(v8, v7);
          if ((v32[0] & 1) == 0)
          {
            return 0;
          }

          goto LABEL_6;
        }

        v32[0] = *(v4 + 1);
        LOWORD(v32[1]) = v7;
        BYTE2(v32[1]) = BYTE2(v7);
        BYTE3(v32[1]) = BYTE3(v7);
        BYTE4(v32[1]) = BYTE4(v7);
        BYTE5(v32[1]) = BYTE5(v7);
        sub_10000AB0C(v8, v7);
        sub_10000AB0C(v10, v9);
      }

      sub_100031E04(v32, v10, v9, &v31);
      sub_1000124C8(v10, v9);
      sub_1000124C8(v8, v7);
      if (!v31)
      {
        return 0;
      }

LABEL_6:
      v4 += 24;
      if (!--v2)
      {
        return 1;
      }
    }

    v13 = 0;
    if (!v8 && v7 == 0xC000000000000000 && v9 >> 62 == 3)
    {
      v13 = 0;
      if (!v10 && v9 == 0xC000000000000000)
      {
        goto LABEL_6;
      }
    }

LABEL_28:
    if (v12 <= 1)
    {
      goto LABEL_29;
    }

    goto LABEL_22;
  }

  return 1;
}

uint64_t sub_1000BE660(uint64_t a1, uint64_t a2, uint8x8_t a3)
{
  v3 = *(a1 + 16);
  if (v3 == *(a2 + 16))
  {
    if (!v3 || a1 == a2)
    {
      return 1;
    }

    v4 = a2 + 38;
    for (i = a1 + 38; *(i - 6) == *(v4 - 6); i += 7)
    {
      a3.i32[0] = *(i - 5);
      v6 = vmovl_u8(a3).u64[0];
      a3 = vuzp1_s8(v6, v6);
      if (a3.i32[0] != *(v4 - 5) || *(i - 1) != *(v4 - 1))
      {
        break;
      }

      v4 += 7;
      if (!--v3)
      {
        return 1;
      }
    }
  }

  return 0;
}

uint64_t sub_1000BE73C(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    for (i = 0; ; i += 14)
    {
      v5 = *(a1 + i + 38);
      v6 = *(a1 + i + 40);
      v7 = *(a1 + i + 42);
      v8 = *(a1 + i + 44);
      v9 = *(a2 + i + 38);
      v10 = *(a2 + i + 40);
      v11 = *(a2 + i + 42);
      v12 = *(a2 + i + 44);
      v19 = *(a1 + i + 36);
      if (*(a1 + i + 32) != *(a2 + i + 32) || *(a1 + i + 36) != *(a2 + i + 36))
      {
        break;
      }

      v14 = v9 & 0xFF00;
      if ((v5 & 0xFF00) == 0x2200)
      {
        if (v14 != 8704)
        {
          return 0;
        }
      }

      else if (v14 == 8704 || word_100483080[v5] != word_100483080[v9] || word_1004830EE[v5 >> 8] != word_1004830EE[v9 >> 8])
      {
        return 0;
      }

      v15 = v10 & 0xFF00;
      if ((v6 & 0xFF00) == 0x2200)
      {
        if (v15 != 8704)
        {
          return 0;
        }
      }

      else if (v15 == 8704 || word_100483080[v6] != word_100483080[v10] || word_1004830EE[v6 >> 8] != word_1004830EE[v10 >> 8])
      {
        return 0;
      }

      v16 = v11 & 0xFF00;
      if ((v7 & 0xFF00) == 0x2200)
      {
        if (v16 != 8704)
        {
          return 0;
        }
      }

      else if (v16 == 8704 || word_100483080[v7] != word_100483080[v11] || word_1004830EE[v7 >> 8] != word_1004830EE[v11 >> 8])
      {
        return 0;
      }

      v17 = v12 & 0xFF00;
      if ((v8 & 0xFF00) == 0x2200)
      {
        if (v17 != 8704)
        {
          return 0;
        }
      }

      else if (v17 == 8704 || word_100483080[v8] != word_100483080[v12] || word_1004830EE[v8 >> 8] != word_1004830EE[v12 >> 8])
      {
        return 0;
      }

      v4 = 1;
      if (!--v2)
      {
        return v4;
      }
    }

    return 0;
  }

  return 1;
}

uint64_t _s7CoreP2P19InfraScanStartEventV23__derived_struct_equalsySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 37);
    v4 = (a2 + 37);
    do
    {
      if (*(v3 - 5) != *(v4 - 5) || (0x801004u >> (8 * *(v3 - 1))) != (0x801004u >> (8 * *(v4 - 1))))
      {
        return 0;
      }

      v5 = *v3;
      v6 = *v4;
      if (v5 <= 3)
      {
        if (v5 == 2)
        {
          if (v6 != 2)
          {
            return 0;
          }

          goto LABEL_6;
        }

        if (v5 == 3)
        {
          if (v6 != 3)
          {
            return 0;
          }

          goto LABEL_6;
        }
      }

      else
      {
        switch(v5)
        {
          case 4u:
            if (v6 != 4)
            {
              return 0;
            }

            goto LABEL_6;
          case 5u:
            if (v6 != 5)
            {
              return 0;
            }

            goto LABEL_6;
          case 6u:
            if (v6 != 6)
            {
              return 0;
            }

            goto LABEL_6;
        }
      }

      if (v6 - 2) < 5 || ((v6 ^ v5))
      {
        return 0;
      }

LABEL_6:
      v3 += 8;
      v4 += 8;
      --v2;
    }

    while (v2);
  }

  return 1;
}

uint64_t sub_1000BEA94(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v5 = *v3++;
    v6 = v5;
    v7 = *v4++;
    result = v6 == v7;
    if (v6 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BEAF0(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = (result + 32);
  v4 = (a2 + 32);
  while (v2)
  {
    v6 = *v3++;
    v5 = v6;
    v7 = *v4++;
    result = v5 == v7;
    if (v5 != v7 || v2-- == 1)
    {
      return result;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BEB4C(uint64_t result, uint64_t a2)
{
  v2 = *(result + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || result == a2)
  {
    return 1;
  }

  v3 = 0;
  while (v2)
  {
    v4 = (result + v3);
    v5 = (a2 + v3);
    v6.i64[0] = *(result + v3 + 36);
    v7.i64[0] = *(a2 + v3 + 36);
    v8.i64[0] = *(a2 + v3 + 68);
    v6.i64[1] = *(result + v3 + 52);
    v9.i64[1] = *(result + v3 + 84);
    v7.i64[1] = *(a2 + v3 + 52);
    v8.i64[1] = *(a2 + v3 + 84);
    v9.i64[0] = *(result + v3 + 68);
    v10 = (*(result + v3 + 32) == *(a2 + v3 + 32)) & vminv_u8(vmovn_s16(vuzp1q_s16(vceqq_s32(v6, v7), vceqq_s32(v9, v8))));
    if (*(result + v3 + 33) != *(a2 + v3 + 33))
    {
      v10 = 0;
    }

    if (v4[44] != v5[44])
    {
      v10 = 0;
    }

    v11 = v4[65] == v5[65] && v4[76] == v5[76];
    v14 = v11 && v4[77] == v5[77] && *(result + v3 + 80) == v5[80];
    if (v4[48] != v5[48] || v4[49] != v5[49] || v4[60] != v5[60])
    {
      v10 = 0;
    }

    if (v4[64] != v5[64])
    {
      v10 = 0;
    }

    v17 = v4[81] == v5[81] && v4[92] == v5[92];
    v18 = v4[93];
    v19 = v5[93];
    if (v17)
    {
      v20 = v14;
    }

    else
    {
      v20 = 0;
    }

    v11 = v18 == v19;
    LODWORD(v21) = v10 & v20;
    if (v11)
    {
      v21 = v21;
    }

    else
    {
      v21 = 0;
    }

    v22 = v21 != 1 || v2-- == 1;
    v3 += 64;
    if (v22)
    {
      return v21;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000BED14(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      v7 = 1;
    }

    else
    {
      v3 = (a1 + 32);
      v4 = (a2 + 32);
      do
      {
        v5 = v3[1];
        v10[0] = *v3;
        v10[1] = v5;
        v11[0] = v3[2];
        *(v11 + 9) = *(v3 + 41);
        v6 = v4[1];
        v12[0] = *v4;
        v12[1] = v6;
        v13[0] = v4[2];
        *(v13 + 9) = *(v4 + 41);
        sub_1000C2DC8(v10, v9);
        sub_1000C2DC8(v12, v9);
        v7 = static IEEE80211InformationElement.__derived_enum_equals(_:_:)(v10, v12);
        sub_1000C2E24(v12);
        sub_1000C2E24(v10);
        if ((v7 & 1) == 0)
        {
          break;
        }

        v3 += 4;
        v4 += 4;
        --v2;
      }

      while (v2);
    }
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

uint64_t sub_1000BEE34(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(void), uint64_t (*a5)(char *, char *))
{
  v9 = *(*(a3(0) - 8) + 64);
  __chkstk_darwin();
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v14 = &v22 - v13;
  v15 = *(a1 + 16);
  if (v15 == *(a2 + 16))
  {
    if (!v15 || a1 == a2)
    {
      v20 = 1;
    }

    else
    {
      v16 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v17 = a1 + v16;
      v18 = a2 + v16;
      v19 = *(v12 + 72);
      do
      {
        sub_1000C2D00(v17, v14, a4);
        sub_1000C2D00(v18, v11, a4);
        v20 = a5(v14, v11);
        sub_1000C2D68(v11, a4);
        sub_1000C2D68(v14, a4);
        if ((v20 & 1) == 0)
        {
          break;
        }

        v18 += v19;
        v17 += v19;
        --v15;
      }

      while (v15);
    }
  }

  else
  {
    v20 = 0;
  }

  return v20 & 1;
}

uint64_t sub_1000BEFD0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a2 + 80);
    for (i = (a1 + 80); ; i += 7)
    {
      if (*(i - 48) != *(v3 - 48))
      {
        return 0;
      }

      v5 = *(i - 5);
      v6 = *(i - 4);
      v7 = *(i - 3);
      v8 = *i;
      v9 = *(v3 - 4);
      v84 = *(v3 - 5);
      v85 = *(i - 2);
      v10 = *(v3 - 2);
      v80 = *i;
      v81 = *(v3 - 3);
      v11 = *v3;
      v12 = v6 >> 62;
      v13 = v9 >> 62;
      v82 = v9;
      v83 = v5;
      v78 = *(v3 - 1);
      v79 = *(i - 1);
      if (v6 >> 62 == 3)
      {
        break;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v23 = *(v5 + 16);
          v22 = *(v5 + 24);
          v20 = __OFSUB__(v22, v23);
          v14 = v22 - v23;
          if (v20)
          {
            goto LABEL_136;
          }

          goto LABEL_25;
        }

        v14 = 0;
        if (v13 <= 1)
        {
          goto LABEL_26;
        }
      }

      else if (v12)
      {
        LODWORD(v14) = HIDWORD(v5) - v5;
        if (__OFSUB__(HIDWORD(v5), v5))
        {
          goto LABEL_137;
        }

        v14 = v14;
        if (v13 <= 1)
        {
LABEL_26:
          if (v13)
          {
            LODWORD(v21) = HIDWORD(v84) - v84;
            if (__OFSUB__(HIDWORD(v84), v84))
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
LABEL_139:
              __break(1u);
LABEL_140:
              __break(1u);
LABEL_141:
              __break(1u);
LABEL_142:
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
LABEL_148:
              __break(1u);
LABEL_149:
              __break(1u);
            }

            v21 = v21;
          }

          else
          {
            v21 = BYTE6(v9);
          }

          goto LABEL_32;
        }
      }

      else
      {
        v14 = BYTE6(v6);
        if (v13 <= 1)
        {
          goto LABEL_26;
        }
      }

LABEL_19:
      if (v13 != 2)
      {
        if (v14)
        {
          return 0;
        }

LABEL_37:
        v15 = *(i - 5);
        sub_10000AB0C(v5, v6);
        sub_10005D67C(v7, v85);

        v16 = v84;
        v17 = v9;
LABEL_38:
        sub_10000AB0C(v16, v17);
        v26 = v81;
        sub_10005D67C(v81, v10);

        goto LABEL_61;
      }

      v19 = *(v84 + 16);
      v18 = *(v84 + 24);
      v20 = __OFSUB__(v18, v19);
      v21 = v18 - v19;
      if (v20)
      {
        goto LABEL_135;
      }

LABEL_32:
      if (v14 != v21)
      {
        return 0;
      }

      if (v14 < 1)
      {
        goto LABEL_37;
      }

      if (v12 > 1)
      {
        if (v12 == 2)
        {
          v26 = *(v3 - 3);
          v76 = *(v5 + 16);
          v69 = *(v5 + 24);
          sub_10000AB0C(v5, v6);
          v71 = v7;
          sub_10005D67C(v7, v85);

          sub_10000AB0C(v84, v82);
          sub_10005D67C(v81, v10);

          v27 = __DataStorage._bytes.getter();
          if (v27)
          {
            v28 = __DataStorage._offset.getter();
            v29 = v76;
            if (__OFSUB__(v76, v28))
            {
              goto LABEL_142;
            }

            v27 += v76 - v28;
          }

          else
          {
            v29 = v76;
          }

          if (__OFSUB__(v69, v29))
          {
            goto LABEL_141;
          }

          __DataStorage._length.getter();
          sub_100031E04(v27, v84, v82, v87);
          v7 = v71;
          if ((v87[0] & 1) == 0)
          {
            goto LABEL_129;
          }

          goto LABEL_60;
        }

        memset(v87, 0, 14);
        v75 = v6;
        sub_10000AB0C(v5, v6);
        sub_10005D67C(v7, v85);

        v25 = v84;
        v24 = v9;
        sub_10000AB0C(v84, v9);
        v26 = v81;
        sub_10005D67C(v81, v10);
      }

      else
      {
        if (v12)
        {
          v30 = *(v3 - 4);
          v31 = *(i - 4);
          v32 = v5;
          if (v5 >> 32 < v5)
          {
            goto LABEL_140;
          }

          sub_10000AB0C(v5, v31);
          v72 = v7;
          sub_10005D67C(v7, v85);

          sub_10000AB0C(v84, v30);
          sub_10005D67C(v81, v10);

          v33 = __DataStorage._bytes.getter();
          if (v33)
          {
            v34 = __DataStorage._offset.getter();
            if (__OFSUB__(v32, v34))
            {
              goto LABEL_143;
            }

            v33 += v32 - v34;
          }

          __DataStorage._length.getter();
          sub_100031E04(v33, v84, v30, v87);
          v7 = v72;
          v6 = v31;
          v26 = v81;
          if ((v87[0] & 1) == 0)
          {
LABEL_129:
            sub_1000124C8(v84, v82);
            sub_100017554(v26, v10);

            sub_1000124C8(v83, v6);
            v67 = v7;
            v68 = v85;
LABEL_130:
            sub_100017554(v67, v68);
LABEL_131:

            return 0;
          }

          goto LABEL_60;
        }

        v87[0] = v5;
        LOWORD(v87[1]) = v6;
        BYTE2(v87[1]) = BYTE2(v6);
        BYTE3(v87[1]) = BYTE3(v6);
        BYTE4(v87[1]) = BYTE4(v6);
        BYTE5(v87[1]) = BYTE5(v6);
        v24 = v9;
        v75 = v6;
        sub_10000AB0C(v5, v6);
        sub_10005D67C(v7, v85);

        v25 = v84;
        sub_10000AB0C(v84, v9);
        v26 = v81;
        sub_10005D67C(v81, v10);
      }

      sub_100031E04(v87, v25, v24, &v86);
      v6 = v75;
      if (!v86)
      {
        goto LABEL_129;
      }

LABEL_60:
      v15 = v83;
LABEL_61:
      if (v85 >> 60 == 15)
      {
        if (v10 >> 60 != 15)
        {
          goto LABEL_124;
        }

        sub_10005D67C(v7, v85);
        sub_10005D67C(v26, v10);
        goto LABEL_115;
      }

      if (v10 >> 60 == 15)
      {
LABEL_124:
        v64 = v15;
        v65 = v85;
        sub_10005D67C(v7, v85);
        sub_10005D67C(v26, v10);
        sub_100017554(v7, v85);
        sub_100017554(v26, v10);
        sub_1000124C8(v84, v82);
        sub_100017554(v26, v10);

        v66 = v64;
LABEL_128:
        sub_1000124C8(v66, v6);
        v67 = v7;
        v68 = v65;
        goto LABEL_130;
      }

      v35 = v85 >> 62;
      v36 = v10 >> 62;
      if (v85 >> 62 == 3)
      {
        v37 = 0;
        if (!v7 && v85 == 0xC000000000000000 && v10 >> 62 == 3)
        {
          v37 = 0;
          if (!v26 && v10 == 0xC000000000000000)
          {
            sub_10005D67C(0, 0xC000000000000000);
            sub_10005D67C(0, 0xC000000000000000);
            v38 = 0;
            v39 = 0xC000000000000000;
            goto LABEL_94;
          }
        }

LABEL_81:
        if (v36 <= 1)
        {
          goto LABEL_82;
        }

        goto LABEL_75;
      }

      if (v35 > 1)
      {
        if (v35 == 2)
        {
          v44 = *(v7 + 16);
          v43 = *(v7 + 24);
          v20 = __OFSUB__(v43, v44);
          v37 = v43 - v44;
          if (v20)
          {
            goto LABEL_144;
          }

          goto LABEL_81;
        }

        v37 = 0;
        if (v36 <= 1)
        {
          goto LABEL_82;
        }
      }

      else if (v35)
      {
        LODWORD(v37) = HIDWORD(v7) - v7;
        if (__OFSUB__(HIDWORD(v7), v7))
        {
          goto LABEL_145;
        }

        v37 = v37;
        if (v36 <= 1)
        {
LABEL_82:
          if (v36)
          {
            LODWORD(v42) = HIDWORD(v26) - v26;
            if (__OFSUB__(HIDWORD(v26), v26))
            {
              goto LABEL_139;
            }

            v42 = v42;
          }

          else
          {
            v42 = BYTE6(v10);
          }

          goto LABEL_88;
        }
      }

      else
      {
        v37 = BYTE6(v85);
        if (v36 <= 1)
        {
          goto LABEL_82;
        }
      }

LABEL_75:
      if (v36 != 2)
      {
        if (v37)
        {
          goto LABEL_126;
        }

LABEL_93:
        sub_10005D67C(v7, v85);
        sub_10005D67C(v26, v10);
        v38 = v26;
        v39 = v10;
LABEL_94:
        sub_100017554(v38, v39);
        goto LABEL_115;
      }

      v41 = *(v26 + 16);
      v40 = *(v26 + 24);
      v20 = __OFSUB__(v40, v41);
      v42 = v40 - v41;
      if (v20)
      {
        goto LABEL_138;
      }

LABEL_88:
      if (v37 != v42)
      {
LABEL_126:
        sub_10005D67C(v7, v85);
        sub_10005D67C(v26, v10);
        sub_100017554(v26, v10);
LABEL_127:
        v65 = v85;
        sub_100017554(v7, v85);
        sub_1000124C8(v84, v82);
        sub_100017554(v26, v10);

        v66 = v83;
        goto LABEL_128;
      }

      if (v37 < 1)
      {
        goto LABEL_93;
      }

      if (v35 > 1)
      {
        if (v35 == 2)
        {
          v74 = v11;
          v77 = v6;
          v50 = v26;
          v51 = *(v7 + 16);
          v52 = *(v7 + 24);
          v73 = v7;
          sub_10005D67C(v7, v85);
          sub_10005D67C(v50, v10);
          sub_10005D67C(v50, v10);
          v53 = __DataStorage._bytes.getter();
          if (v53)
          {
            v54 = __DataStorage._offset.getter();
            if (__OFSUB__(v51, v54))
            {
              goto LABEL_148;
            }

            v53 += v51 - v54;
          }

          if (__OFSUB__(v52, v51))
          {
            goto LABEL_147;
          }

          __DataStorage._length.getter();
          v26 = v50;
          sub_100031E04(v53, v50, v10, v87);
          sub_100017554(v50, v10);
          v55 = v50;
          v56 = v10;
          goto LABEL_111;
        }

        memset(v87, 0, 14);
        sub_10005D67C(v7, v85);
        sub_10005D67C(v26, v10);
        sub_10005D67C(v26, v10);
        v48 = v26;
        v49 = v10;
        v45 = i;
        v46 = v3;
        v47 = v6;
      }

      else
      {
        if (v35)
        {
          v70 = v10;
          v57 = v26;
          v74 = v11;
          v77 = v6;
          v58 = v7;
          if (v7 >> 32 < v7)
          {
            goto LABEL_146;
          }

          v73 = v7;
          sub_10005D67C(v7, v85);
          sub_10005D67C(v57, v70);
          sub_10005D67C(v57, v70);
          v59 = __DataStorage._bytes.getter();
          if (v59)
          {
            v60 = __DataStorage._offset.getter();
            if (__OFSUB__(v58, v60))
            {
              goto LABEL_149;
            }

            v59 += v58 - v60;
          }

          v26 = v57;
          __DataStorage._length.getter();
          v61 = v57;
          v10 = v70;
          sub_100031E04(v59, v61, v70, v87);
          sub_100017554(v26, v70);
          v55 = v26;
          v56 = v70;
LABEL_111:
          sub_100017554(v55, v56);
          v7 = v73;
          v11 = v74;
          v6 = v77;
          if ((v87[0] & 1) == 0)
          {
            goto LABEL_127;
          }

          goto LABEL_115;
        }

        v87[0] = v7;
        LODWORD(v87[1]) = v85;
        WORD2(v87[1]) = WORD2(v85);
        v45 = i;
        v46 = v3;
        v47 = v6;
        sub_10005D67C(v7, v85);
        sub_10005D67C(v26, v10);
        sub_10005D67C(v26, v10);
        v48 = v26;
        v49 = v10;
      }

      sub_100031E04(v87, v48, v49, &v86);
      v6 = v47;
      v3 = v46;
      i = v45;
      sub_100017554(v26, v10);
      sub_100017554(v26, v10);
      if (!v86)
      {
        goto LABEL_127;
      }

LABEL_115:
      sub_100017554(v7, v85);
      if (!v80)
      {
        sub_1000124C8(v84, v82);
        sub_100017554(v26, v10);
        if (v11)
        {

          sub_1000124C8(v83, v6);
          sub_100017554(v7, v85);
          goto LABEL_131;
        }

        sub_1000124C8(v83, v6);
        sub_100017554(v7, v85);
        goto LABEL_6;
      }

      if (!v11)
      {
        sub_1000124C8(v84, v82);
        sub_100017554(v26, v10);

        sub_1000124C8(v83, v6);
        sub_100017554(v7, v85);
        goto LABEL_131;
      }

      if (v79 == v78 && v80 == v11)
      {
        sub_1000124C8(v84, v82);
        sub_100017554(v26, v10);

        sub_1000124C8(v83, v6);
        sub_100017554(v7, v85);
LABEL_6:

        goto LABEL_7;
      }

      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
      sub_1000124C8(v84, v82);
      sub_100017554(v26, v10);

      sub_1000124C8(v83, v6);
      sub_100017554(v7, v85);

      if ((v62 & 1) == 0)
      {
        return 0;
      }

LABEL_7:
      v3 += 7;
      if (!--v2)
      {
        return 1;
      }
    }

    v14 = 0;
    if (!v5 && v6 == 0xC000000000000000 && v9 >> 62 == 3)
    {
      v14 = 0;
      if (!v84 && v9 == 0xC000000000000000)
      {
        v15 = 0;
        sub_10000AB0C(0, 0xC000000000000000);
        sub_10005D67C(v7, v85);

        v16 = 0;
        v17 = 0xC000000000000000;
        goto LABEL_38;
      }
    }

LABEL_25:
    if (v13 <= 1)
    {
      goto LABEL_26;
    }

    goto LABEL_19;
  }

  return 1;
}

uint64_t sub_1000BFCF4(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (!v2 || a1 == a2)
  {
    return 1;
  }

  v3 = 0;
  v4 = (a1 + 40);
  for (i = (a2 + 40); ; i += 2)
  {
    v9 = *(v4 - 1);
    v8 = *v4;
    v11 = *(i - 1);
    v10 = *i;
    if (*v4 >> 60 == 15)
    {
      if (*i >> 60 != 15)
      {
        goto LABEL_62;
      }

      sub_10005D67C(*(v4 - 1), *v4);
      sub_10005D67C(v11, v10);
      goto LABEL_8;
    }

    if (*i >> 60 == 15)
    {
LABEL_62:
      sub_10005D67C(*(v4 - 1), *v4);
      sub_10005D67C(v11, v10);
      sub_100017554(v9, v8);
      v31 = v11;
      v32 = v10;
      goto LABEL_64;
    }

    v12 = v8 >> 62;
    v13 = v10 >> 62;
    if (v8 >> 62 == 3)
    {
      v14 = 0;
      if (!v9 && v8 == 0xC000000000000000 && v10 >> 62 == 3)
      {
        v14 = 0;
        if (!v11 && v10 == 0xC000000000000000)
        {
          sub_10005D67C(0, 0xC000000000000000);
          sub_10005D67C(0, 0xC000000000000000);
          sub_10005D67C(0, 0xC000000000000000);
          sub_10005D67C(0, 0xC000000000000000);
          v6 = 0;
          v7 = 0xC000000000000000;
          goto LABEL_7;
        }
      }

LABEL_30:
      if (v13 <= 1)
      {
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v20 = *(v9 + 16);
        v19 = *(v9 + 24);
        v17 = __OFSUB__(v19, v20);
        v14 = v19 - v20;
        if (v17)
        {
          goto LABEL_67;
        }

        goto LABEL_30;
      }

      v14 = 0;
      if (v13 <= 1)
      {
        goto LABEL_31;
      }
    }

    else if (v12)
    {
      LODWORD(v14) = HIDWORD(v9) - v9;
      if (__OFSUB__(HIDWORD(v9), v9))
      {
        goto LABEL_68;
      }

      v14 = v14;
      if (v13 <= 1)
      {
LABEL_31:
        if (v13)
        {
          LODWORD(v18) = HIDWORD(v11) - v11;
          if (__OFSUB__(HIDWORD(v11), v11))
          {
            goto LABEL_66;
          }

          v18 = v18;
        }

        else
        {
          v18 = BYTE6(v10);
        }

        goto LABEL_35;
      }
    }

    else
    {
      v14 = BYTE6(v8);
      if (v13 <= 1)
      {
        goto LABEL_31;
      }
    }

LABEL_24:
    if (v13 != 2)
    {
      if (v14)
      {
        break;
      }

LABEL_6:
      sub_10005D67C(*(v4 - 1), *v4);
      sub_10005D67C(v11, v10);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
      v6 = v11;
      v7 = v10;
LABEL_7:
      sub_100017554(v6, v7);
      sub_100017554(v9, v8);
      sub_100017554(v11, v10);
LABEL_8:
      sub_100017554(v9, v8);
      goto LABEL_9;
    }

    v16 = *(v11 + 16);
    v15 = *(v11 + 24);
    v17 = __OFSUB__(v15, v16);
    v18 = v15 - v16;
    if (v17)
    {
      __break(1u);
LABEL_66:
      __break(1u);
LABEL_67:
      __break(1u);
LABEL_68:
      __break(1u);
LABEL_69:
      __break(1u);
LABEL_70:
      __break(1u);
LABEL_71:
      __break(1u);
LABEL_72:
      __break(1u);
    }

LABEL_35:
    if (v14 != v18)
    {
      break;
    }

    if (v14 < 1)
    {
      goto LABEL_6;
    }

    if (v12 > 1)
    {
      if (v12 == 2)
      {
        v34 = v3;
        v21 = *(v9 + 16);
        v33 = *(v9 + 24);
        sub_10005D67C(v9, v8);
        sub_10005D67C(v11, v10);
        sub_10005D67C(v9, v8);
        sub_10005D67C(v11, v10);
        v22 = __DataStorage._bytes.getter();
        if (v22)
        {
          v23 = __DataStorage._offset.getter();
          if (__OFSUB__(v21, v23))
          {
            goto LABEL_71;
          }

          v22 += v21 - v23;
        }

        if (__OFSUB__(v33, v21))
        {
          goto LABEL_70;
        }

        __DataStorage._length.getter();
        v24 = v22;
        v25 = v11;
        v26 = v10;
        v3 = v34;
        goto LABEL_56;
      }

      memset(v36, 0, 14);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
    }

    else
    {
      if (v12)
      {
        if (v9 >> 32 < v9)
        {
          goto LABEL_69;
        }

        sub_10005D67C(v9, v8);
        sub_10005D67C(v11, v10);
        sub_10005D67C(v9, v8);
        sub_10005D67C(v11, v10);
        v27 = __DataStorage._bytes.getter();
        if (v27)
        {
          v28 = __DataStorage._offset.getter();
          if (__OFSUB__(v9, v28))
          {
            goto LABEL_72;
          }

          v27 += v9 - v28;
        }

        __DataStorage._length.getter();
        v24 = v27;
        v25 = v11;
        v26 = v10;
LABEL_56:
        sub_100031E04(v24, v25, v26, v36);
        sub_100017554(v11, v10);
        v29 = v36[0];
        goto LABEL_59;
      }

      v36[0] = *(v4 - 1);
      LOWORD(v36[1]) = v8;
      BYTE2(v36[1]) = BYTE2(v8);
      BYTE3(v36[1]) = BYTE3(v8);
      BYTE4(v36[1]) = BYTE4(v8);
      BYTE5(v36[1]) = BYTE5(v8);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
      sub_10005D67C(v9, v8);
      sub_10005D67C(v11, v10);
    }

    sub_100031E04(v36, v11, v10, &v35);
    sub_100017554(v11, v10);
    v29 = v35;
LABEL_59:
    sub_100017554(v9, v8);
    sub_100017554(v11, v10);
    sub_100017554(v9, v8);
    if ((v29 & 1) == 0)
    {
      return 0;
    }

LABEL_9:
    v4 += 2;
    if (!--v2)
    {
      return 1;
    }
  }

  sub_10005D67C(*(v4 - 1), *v4);
  sub_10005D67C(v11, v10);
  sub_10005D67C(v9, v8);
  sub_10005D67C(v11, v10);
  sub_100017554(v11, v10);
  sub_100017554(v9, v8);
  sub_100017554(v11, v10);
  v31 = v9;
  v32 = v8;
LABEL_64:
  sub_100017554(v31, v32);
  return 0;
}

uint64_t sub_1000C02D8(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 == *(a2 + 16))
  {
    if (!v2 || a1 == a2)
    {
      return 1;
    }

    v3 = (a1 + 56);
    for (i = (a2 + 56); ; i += 4)
    {
      v6 = *(v3 - 1);
      v5 = *v3;
      v8 = *(i - 1);
      v7 = *i;
      v14 = *(v3 - 3);
      v15 = *(v3 - 2);
      v12 = *(i - 3);
      v13 = *(i - 2);

      if (v14 != v12 || v15 != v13)
      {
        break;
      }

      if (v5)
      {
        if (!v7)
        {
          goto LABEL_20;
        }

        if (v6 == v8 && v5 == v7)
        {
        }

        else
        {
          v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v10 & 1) == 0)
          {
            return 0;
          }
        }
      }

      else if (v7)
      {
        goto LABEL_20;
      }

      v3 += 4;
      if (!--v2)
      {
        return 1;
      }
    }

LABEL_20:
  }

  return 0;
}

void *sub_1000C0444(void *a1, int64_t a2, char a3)
{
  result = sub_1000C08D4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0464(char *a1, int64_t a2, char a3)
{
  result = sub_1000C0A08(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0484(void *a1, int64_t a2, char a3)
{
  result = sub_1000C0B14(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C04A4(void *a1, int64_t a2, char a3)
{
  result = sub_1000C0C5C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C04C4(char *a1, int64_t a2, char a3)
{
  result = sub_1000C0D90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C04E4(char *a1, int64_t a2, char a3)
{
  result = sub_1000C0E90(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0504(char *a1, int64_t a2, char a3)
{
  result = sub_10002D74C(a1, a2, a3, *v3, &qword_10058CC80, &qword_100482F88);
  *v3 = result;
  return result;
}

char *sub_1000C0534(char *a1, int64_t a2, char a3)
{
  result = sub_10002D74C(a1, a2, a3, *v3, &qword_10058CC88, &unk_100482F90);
  *v3 = result;
  return result;
}

size_t sub_1000C0564(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C0F9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0584(char *a1, int64_t a2, char a3)
{
  result = sub_1000C118C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C05A4(char *a1, int64_t a2, char a3)
{
  result = sub_1000C129C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C05C4(char *a1, int64_t a2, char a3)
{
  result = sub_1000C1390(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C05E4(char *a1, int64_t a2, char a3)
{
  result = sub_1000C149C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0604(char *a1, int64_t a2, char a3)
{
  result = sub_1000C15A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0624(void *a1, int64_t a2, char a3)
{
  result = sub_1000C16C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0644(char *a1, int64_t a2, char a3)
{
  result = sub_1000C1910(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0664(char *a1, int64_t a2, char a3)
{
  result = sub_1000C1A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C0684(char *a1, int64_t a2, char a3)
{
  result = sub_1000C1B50(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C06A4(void *a1, int64_t a2, char a3)
{
  result = sub_1000C1C54(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C06C4(void *a1, int64_t a2, char a3)
{
  result = sub_1000C1D88(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C06E4(char *a1, int64_t a2, char a3)
{
  result = sub_1000C1ED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000C0704(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C2494(a1, a2, a3, *v3, &qword_10058F4E0, &unk_100482FD0, type metadata accessor for WiFiAwarePairedDevice);
  *v3 = result;
  return result;
}

size_t sub_1000C0748(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C2494(a1, a2, a3, *v3, &qword_10058CCB8, &qword_100482FC8, &type metadata accessor for SymmetricKey);
  *v3 = result;
  return result;
}

size_t sub_1000C078C(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C2494(a1, a2, a3, *v3, &qword_10058CC18, &qword_100482F18, type metadata accessor for LongTermPairingKeys.PublicIdentity);
  *v3 = result;
  return result;
}

void *sub_1000C07D0(void *a1, int64_t a2, char a3)
{
  result = sub_1000C1FD4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1000C07F0(char *a1, int64_t a2, char a3)
{
  result = sub_1000C2108(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0810(void *a1, int64_t a2, char a3)
{
  result = sub_1000C2204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C0830(void *a1, int64_t a2, char a3)
{
  result = sub_1000C234C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

size_t sub_1000C0850(size_t a1, int64_t a2, char a3)
{
  result = sub_1000C2494(a1, a2, a3, *v3, &unk_100597530, &qword_100482F50, type metadata accessor for NANAttribute);
  *v3 = result;
  return result;
}

char *sub_1000C0894(char *a1, int64_t a2, char a3)
{
  result = sub_1000C2670(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C08B4(void *a1, int64_t a2, char a3)
{
  result = sub_1000C277C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1000C08D4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CD08, &qword_100483020);
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
    v10 = &_swiftEmptyArrayStorage;
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
    sub_10005DC58(&qword_10058CD10, &qword_100483028);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C0A08(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100595370, &qword_1004AF240);
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

void *sub_1000C0B14(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CD28, &qword_100483050);
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
    sub_10005DC58(&qword_10058CD30, &qword_100483058);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C0C5C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CC20, &qword_100482F20);
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
    sub_10005DC58(&qword_10058CC28, &qword_100482F28);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C0D90(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CC60, &qword_100482F68);
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
  v15 = 16 * v8;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[v15])
    {
      memmove(v13, v14, v15);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, v15);
  }

  return v10;
}

char *sub_1000C0E90(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CC78, &qword_100482F80);
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

size_t sub_1000C0F9C(size_t result, int64_t a2, char a3, void *a4)
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

  sub_10005DC58(&qword_10058CD20, &qword_100483038);
  v10 = *(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8);
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
  v15 = *(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8);
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

char *sub_1000C118C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_100598800, &qword_1004842A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 10);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 10 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

char *sub_1000C129C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CD18, &qword_100483030);
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

char *sub_1000C1390(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCC0, &qword_100492360);
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

char *sub_1000C149C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCA0, &qword_100482FA8);
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

char *sub_1000C15A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CD40, &qword_100483068);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 14);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[14 * v8])
    {
      memmove(v12, v13, 14 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 14 * v8);
  }

  return v10;
}

void *sub_1000C16C4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CC68, &unk_100482F70);
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
    sub_10005DC58(&qword_10058CC70, &unk_100484290);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C180C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCF8, &qword_100483010);
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
    memcpy(v13, v14, 32 * v8);
  }

  return v10;
}

char *sub_1000C1910(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCF0, &qword_100483008);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 34);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[34 * v8])
    {
      memmove(v12, v13, 34 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 34 * v8);
  }

  return v10;
}

char *sub_1000C1A2C(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCE8, &qword_100483000);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 7);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[8 * v8 - v8])
    {
      memmove(v12, v13, 7 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 7 * v8);
  }

  return v10;
}

char *sub_1000C1B50(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CD38, &qword_100483060);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 29;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 2);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[4 * v8])
    {
      memmove(v13, v14, 4 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 4 * v8);
  }

  return v10;
}

void *sub_1000C1C54(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CC08, &unk_100488510);
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
    sub_10005DC58(&qword_10058CC10, &qword_100482F10);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C1D88(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CCD8, &unk_100482FF0);
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
    sub_10005DC58(&qword_10058CCE0, &unk_1004ABB80);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C1ED0(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCC8, &qword_100482FE0);
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

void *sub_1000C1FD4(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CCB0, &unk_1004871A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_10005DC58(&unk_10059B2B0, &qword_100482FC0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1000C2108(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CCA8, &unk_100482FB0);
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

void *sub_1000C2204(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CC90, &unk_100487190);
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
    sub_10005DC58(&qword_10058CC98, &qword_100482FA0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_1000C234C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CC50, &qword_100482F58);
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
    sub_10005DC58(&qword_10058CC58, &qword_100482F60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

size_t sub_1000C2494(size_t result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
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

  sub_10005DC58(a5, a6);
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

char *sub_1000C2670(char *result, int64_t a2, char a3, char *a4)
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
    sub_10005DC58(&qword_10058CC48, &unk_100487170);
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

void *sub_1000C277C(void *result, int64_t a2, char a3, void *a4)
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
    sub_10005DC58(&qword_10058CC30, &qword_100482F30);
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
    sub_10005DC58(&qword_10058CC38, &qword_100482F38);
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1000C28D8()
{
  result = qword_10059A6F0;
  if (!qword_10059A6F0)
  {
    sub_10005DD04(&qword_10058CBE0, &qword_100482CF0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10059A6F0);
  }

  return result;
}

unint64_t sub_1000C293C(uint64_t a1)
{
  result = sub_1000C2964();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1000C2964()
{
  result = qword_10058CBE8;
  if (!qword_10058CBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CBE8);
  }

  return result;
}

unint64_t sub_1000C29BC()
{
  result = qword_10058CBF0;
  if (!qword_10058CBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CBF0);
  }

  return result;
}

unint64_t sub_1000C2A14()
{
  result = qword_100598620;
  if (!qword_100598620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100598620);
  }

  return result;
}

unint64_t sub_1000C2A6C()
{
  result = qword_10058CBF8;
  if (!qword_10058CBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CBF8);
  }

  return result;
}

unint64_t sub_1000C2AC4()
{
  result = qword_10058CC00;
  if (!qword_10058CC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CC00);
  }

  return result;
}

uint64_t sub_1000C2BF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_9:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_9;
  }

  __DataStorage._length.getter();
  sub_100031E04(v11, a4, a5, &v13);
  if (!v5)
  {
    return v13;
  }

  return v12;
}

unint64_t sub_1000C2CA8()
{
  result = qword_100597540;
  if (!qword_100597540)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100597540);
  }

  return result;
}

uint64_t sub_1000C2D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1000C2D68(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s7CoreP2P12NANAttributeO13ServiceIDListV23__derived_struct_equalsySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{

  return sub_100050FFC(a1, a2);
}

unint64_t IEEE80211Status.description.getter(char a1)
{
  result = 0x6673736563637553;
  switch(a1)
  {
    case 1:
    case 15:
    case 42:
      result = 0xD000000000000013;
      break;
    case 2:
    case 25:
    case 35:
      result = 0xD000000000000018;
      break;
    case 3:
      result = 0xD000000000000014;
      break;
    case 4:
      result = 0xD000000000000012;
      break;
    case 5:
      result = 0xD000000000000023;
      break;
    case 6:
      result = 0xD000000000000025;
      break;
    case 7:
    case 30:
      result = 0xD000000000000011;
      break;
    case 8:
      result = 0x74756F656D6954;
      break;
    case 9:
      result = 0x6C6C7566205041;
      break;
    case 10:
      result = 0xD000000000000014;
      break;
    case 11:
    case 18:
    case 29:
    case 38:
      result = 0xD000000000000016;
      break;
    case 12:
    case 26:
    case 46:
      result = 0xD000000000000015;
      break;
    case 13:
      result = 0x5448206F4ELL;
      break;
    case 14:
      result = 0xD000000000000014;
      break;
    case 16:
    case 27:
      v3 = 10;
      goto LABEL_18;
    case 17:
      v3 = 11;
LABEL_18:
      result = v3 | 0xD000000000000014;
      break;
    case 19:
      result = 0xD000000000000010;
      break;
    case 20:
    case 23:
      result = 0x2064696C61766E49;
      break;
    case 21:
      result = 0xD000000000000014;
      break;
    case 22:
    case 24:
    case 44:
      result = 0xD000000000000017;
      break;
    case 28:
      result = 0xD00000000000001BLL;
      break;
    case 31:
      result = 0xD000000000000014;
      break;
    case 32:
    case 40:
      result = 0xD000000000000019;
      break;
    case 33:
    case 47:
      result = 0xD00000000000001ALL;
      break;
    case 34:
      result = 0x756C696166205854;
      break;
    case 36:
      result = 0xD000000000000026;
      break;
    case 37:
    case 39:
    case 41:
    case 45:
      result = 0xD00000000000001CLL;
      break;
    case 43:
      result = 0x20746F6E20535342;
      break;
    case 48:
      result = 0x6620584D20504145;
      break;
    case 49:
      result = 0xD000000000000020;
      break;
    case 50:
      result = 0x697420656E696F4ALL;
      break;
    case 51:
      result = 0x6F72726520564349;
      break;
    case 52:
      result = 0x6F6261206E696F4ALL;
      break;
    case 53:
      result = 0x736572206E696F4ALL;
      break;
    case 54:
      result = 0x616C696176616E55;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000C3448@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000C3494()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000C351C()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v1]);
  return Hasher._finalize()();
}

unint64_t IEEE80211Reason.description.getter(char a1)
{
  result = 0x6673736563637553;
  switch(a1)
  {
    case 1:
      result = 0x6669636570736E55;
      break;
    case 2:
      result = 0xD00000000000001ELL;
      break;
    case 3:
    case 23:
      result = 0xD000000000000015;
      break;
    case 4:
      result = 0x6576697463616E49;
      break;
    case 5:
      result = 0x6C7265766F205041;
      break;
    case 6:
      result = 0x6874756120746F4ELL;
      break;
    case 7:
      result = 0x6F73736120746F4ELL;
      break;
    case 8:
    case 31:
      result = 0xD000000000000013;
      break;
    case 9:
      result = 0xD00000000000001ALL;
      break;
    case 10:
      result = 0xD00000000000001DLL;
      break;
    case 11:
      result = 0xD00000000000001FLL;
      break;
    case 12:
    case 19:
      result = 0x2064696C61766E49;
      break;
    case 13:
      result = 0x6C6961662043494DLL;
      break;
    case 14:
      result = 0x6974207961772D34;
      break;
    case 15:
    case 17:
      result = 0xD000000000000011;
      break;
    case 16:
      result = 0x6E65726566666944;
      break;
    case 18:
    case 29:
      result = 0xD000000000000010;
      break;
    case 20:
    case 21:
    case 24:
      result = 0xD000000000000018;
      break;
    case 22:
      result = 0xD000000000000021;
      break;
    case 25:
      result = 0xD000000000000016;
      break;
    case 26:
      result = 0xD000000000000016;
      break;
    case 27:
      result = 0xD000000000000012;
      break;
    case 28:
      result = 0xD00000000000001CLL;
      break;
    case 30:
      result = 0xD000000000000016;
      break;
    case 32:
      result = 0x6D69742072656550;
      break;
    case 33:
      result = 0xD000000000000026;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1000C3A18@<X0>(unsigned __int16 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000C3A64()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1004834AA[v1]);
  return Hasher._finalize()();
}

Swift::Int sub_1000C3AEC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_1004834AA[v1]);
  return Hasher._finalize()();
}

void IEEE80211StatusAndReason.hash(into:)(uint64_t a1, unsigned int a2)
{
  v2 = a2 >> 8;
  Hasher._combine(_:)(word_10048343C[a2]);
  Hasher._combine(_:)(word_1004834AA[v2]);
}

Swift::Int IEEE80211StatusAndReason.hashValue.getter(unsigned int a1)
{
  v1 = a1;
  v2 = a1 >> 8;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v1]);
  Hasher._combine(_:)(word_1004834AA[v2]);
  return Hasher._finalize()();
}

Swift::Int sub_1000C3D10()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v1]);
  Hasher._combine(_:)(word_1004834AA[v2]);
  return Hasher._finalize()();
}

void sub_1000C3D80()
{
  v1 = v0[1];
  Hasher._combine(_:)(word_10048343C[*v0]);
  Hasher._combine(_:)(word_1004834AA[v1]);
}

Swift::Int sub_1000C3DD4()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(word_10048343C[v1]);
  Hasher._combine(_:)(word_1004834AA[v2]);
  return Hasher._finalize()();
}

uint64_t _s7CoreP2P15IEEE80211ReasonO8rawValueACSgs6UInt16V_tcfC_0(unsigned __int16 a1)
{
  if (a1 > 0x2Du)
  {
    return 34;
  }

  else
  {
    return byte_1004834EE[a1];
  }
}

uint64_t _s7CoreP2P15IEEE80211StatusO8rawValueACSgs6UInt16V_tcfC_0(unsigned __int16 a1)
{
  v1 = a1;
  if (a1 > 0x3E7u)
  {
    if (a1 > 0x3EDu)
    {
      if (a1 <= 0x3F0u)
      {
        if (a1 == 1006)
        {
          return 49;
        }

        if (a1 == 1007)
        {
          return 50;
        }

        return 51;
      }

      switch(a1)
      {
        case 0x3F1u:
          return 52;
        case 0x3F2u:
          return 53;
        case 0xFFFFu:
          return 54;
      }
    }

    else
    {
      if (a1 > 0x3EAu)
      {
        if (a1 == 1003)
        {
          return 46;
        }

        if (a1 == 1004)
        {
          return 47;
        }

        return 48;
      }

      switch(a1)
      {
        case 0x3E8u:
          return 43;
        case 0x3E9u:
          return 44;
        case 0x3EAu:
          return 45;
      }
    }

    return 55;
  }

  result = 1;
  switch(v1)
  {
    case 0:
      result = 0;
      break;
    case 1:
      return result;
    case 10:
      result = 2;
      break;
    case 11:
      result = 3;
      break;
    case 12:
      result = 4;
      break;
    case 13:
      result = 5;
      break;
    case 14:
      result = 6;
      break;
    case 15:
      result = 7;
      break;
    case 16:
      result = 8;
      break;
    case 17:
      result = 9;
      break;
    case 18:
      result = 10;
      break;
    case 25:
      result = 11;
      break;
    case 26:
      result = 12;
      break;
    case 27:
      result = 13;
      break;
    case 28:
      result = 14;
      break;
    case 30:
      result = 15;
      break;
    case 33:
      result = 16;
      break;
    case 34:
      result = 17;
      break;
    case 35:
      result = 18;
      break;
    case 37:
      result = 19;
      break;
    case 40:
      result = 20;
      break;
    case 41:
      result = 21;
      break;
    case 42:
      result = 22;
      break;
    case 43:
      result = 23;
      break;
    case 44:
      result = 24;
      break;
    case 45:
      result = 25;
      break;
    case 46:
      result = 26;
      break;
    case 59:
      result = 27;
      break;
    case 60:
      result = 28;
      break;
    case 61:
      result = 29;
      break;
    case 62:
      result = 30;
      break;
    case 63:
      result = 31;
      break;
    case 64:
      result = 32;
      break;
    case 65:
      result = 33;
      break;
    case 66:
      result = 34;
      break;
    case 67:
      result = 35;
      break;
    case 68:
      result = 36;
      break;
    case 82:
      result = 37;
      break;
    case 83:
      result = 38;
      break;
    case 92:
      result = 39;
      break;
    case 93:
      result = 40;
      break;
    case 99:
      result = 41;
      break;
    case 126:
      result = 42;
      break;
    default:
      return 55;
  }

  return result;
}

unint64_t sub_1000C4124()
{
  result = qword_10058CD48;
  if (!qword_10058CD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CD48);
  }

  return result;
}

unint64_t sub_1000C417C()
{
  result = qword_10058CD50;
  if (!qword_10058CD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CD50);
  }

  return result;
}

unint64_t sub_1000C41D4()
{
  result = qword_10058CD58;
  if (!qword_10058CD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CD58);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211Status(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xCA)
  {
    goto LABEL_17;
  }

  if (a2 + 54 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 54) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 54;
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

      return (*a1 | (v4 << 8)) - 54;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 54;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x37;
  v8 = v6 - 55;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211Status(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 54 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 54) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xCA)
  {
    v4 = 0;
  }

  if (a2 > 0xC9)
  {
    v5 = ((a2 - 202) >> 8) + 1;
    *result = a2 + 54;
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
    *result = a2 + 54;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211Reason(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 33 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 33) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 33;
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

      return (*a1 | (v4 << 8)) - 33;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 33;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211Reason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 33 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 33) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 8) + 1;
    *result = a2 + 33;
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
    *result = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IEEE80211StatusAndReason(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xDF)
  {
    goto LABEL_17;
  }

  if (a2 + 65313 <= 0xFFFEFFFF)
  {
    v2 = 2;
  }

  else
  {
    v2 = 4;
  }

  if (a2 + 65313 < 0xFF0000)
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
      return (*a1 | (v4 << 16)) - 65313;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 16)) - 65313;
    }

    v4 = *(a1 + 2);
    if (*(a1 + 2))
    {
      return (*a1 | (v4 << 16)) - 65313;
    }
  }

LABEL_17:
  v6 = *(a1 + 1);
  v7 = v6 >= 0x22;
  v8 = v6 - 34;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for IEEE80211StatusAndReason(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65313 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65313 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xDF)
  {
    v4 = 0;
  }

  if (a2 > 0xDE)
  {
    v5 = ((a2 - 223) >> 16) + 1;
    *result = a2 - 223;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 2) = v5;
      }

      else
      {
        *(result + 2) = v5;
      }
    }

    else if (v4)
    {
      *(result + 2) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 2) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 2) = 0;
  }

  else if (v4)
  {
    *(result + 2) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *(result + 1) = a2 + 33;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000C461C()
{
  result = qword_10058CD60;
  if (!qword_10058CD60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CD60);
  }

  return result;
}

unint64_t sub_1000C4670()
{
  result = qword_10058CD68;
  if (!qword_10058CD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CD68);
  }

  return result;
}

uint64_t sub_1000C46CC(unint64_t a1, uint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v7 = a1;
    v8 = a2 & 0xFFFFFFFFFFFFFFLL;
    v5 = String.count.getter();
    sub_1002AAFAC(&v7, v5);
    goto LABEL_6;
  }

  if ((a1 & 0x1000000000000000) == 0)
  {
LABEL_8:
    type metadata accessor for SymmetricKey();
    _StringGuts._slowWithCString<A>(_:)();
  }

  v2 = a2 & 0xFFFFFFFFFFFFFFFLL;
  v3 = String.count.getter();
  v7 = sub_1002AAFAC((v2 + 32), v3);
  v8 = v4;
LABEL_6:
  SymmetricKey.init<A>(data:)();
}

CoreP2P::NANPassphrase __swiftcall NANPassphrase.init(_:)(CoreP2P::NANPassphrase result)
{
  v1 = HIBYTE(result.string._object) & 0xF;
  if ((result.string._object & 0x2000000000000000) == 0)
  {
    v1 = result.string._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
  }

  if (!v1)
  {
    __break(1u);
  }

  return result;
}

uint64_t static NANPassphrase.__derived_struct_equals(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int NANPassphrase.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int sub_1000C48AC()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C48F8()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_1000C4900()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000C4948(void *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t NANPassphrase.description.getter(uint64_t a1, void *a2)
{
  _StringGuts.grow(_:)(16);

  strcpy(v7, "Passphrase: ");
  v4._countAndFlagsBits = a1;
  v4._object = a2;
  String.append(_:)(v4);
  v5._countAndFlagsBits = 34;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7[0];
}

uint64_t NANPassphrase.customMirror.getter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Mirror.AncestorRepresentation();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin();
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v11 = v14 - v10;
  v14[2] = a1;
  v14[3] = a2;
  v14[1] = _swiftEmptyArrayStorage;
  v12 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v12 - 8) + 56))(v11, 1, 1, v12);
  (*(v5 + 104))(v8, enum case for Mirror.AncestorRepresentation.generated(_:), v4);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t sub_1000C4BDC()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(16);

  strcpy(v6, "Passphrase: ");
  v3._countAndFlagsBits = v1;
  v3._object = v2;
  String.append(_:)(v3);
  v4._countAndFlagsBits = 34;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return v6[0];
}

uint64_t sub_1000C4C70()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = v13 - v7;
  v9 = *v0;
  v10 = v0[1];
  v13[2] = v9;
  v13[3] = v10;
  v13[1] = _swiftEmptyArrayStorage;
  v11 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v11 - 8) + 56))(v8, 1, 1, v11);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);

  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_1000B9D64();
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

uint64_t NANPassphrase.pmk(for:serviceName:publisherAddress:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  v24 = a5;
  v25 = a6;
  v23 = a4;
  v7 = type metadata accessor for SHA256Digest();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SHA256();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin();
  v16 = &v23 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  SHA256.init()();
  v17 = String.lowercased()();

  sub_1001F93A4(v17._countAndFlagsBits, v17._object);

  SHA256.finalize()();
  SHA256Digest.withUnsafeBytes<A>(_:)();
  (*(v8 + 8))(v11, v7);
  v18 = v26;
  v19 = v27;
  (*(v13 + 8))(v16, v12);
  if (((1 << a1) & 0x55) != 0)
  {
    v20 = sub_1000C5220(v24, v25, a1, v18, v19, v23 & 0xFFFFFFFFFFFFLL, &qword_10058CB98, &unk_100488540, &off_1005561D0, &type metadata accessor for SHA256, &qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  else
  {
    v20 = sub_1000C5220(v24, v25, a1, v18, v19, v23 & 0xFFFFFFFFFFFFLL, &qword_10058CBA8, &unk_100482C98, &off_1005561F8, &type metadata accessor for SHA384, &qword_10058CBB0, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  }

  v21 = v20;
  sub_1000124C8(v18, v19);
  return v21;
}

uint64_t NANPassphrase.pmk(for:serviceNameHash:publisherAddress:)(char a1, uint64_t a2, unint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (((1 << a1) & 0x55) != 0)
  {
    return sub_1000C5220(a5, a6, a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL, &qword_10058CB98, &unk_100488540, &off_1005561D0, &type metadata accessor for SHA256, &qword_10059AB90, &type metadata accessor for SHA256, &protocol conformance descriptor for SHA256);
  }

  else
  {
    return sub_1000C5220(a5, a6, a1, a2, a3, a4 & 0xFFFFFFFFFFFFLL, &qword_10058CBA8, &unk_100482C98, &off_1005561F8, &type metadata accessor for SHA384, &qword_10058CBB0, &type metadata accessor for SHA384, &protocol conformance descriptor for SHA384);
  }
}

uint64_t sub_1000C5220(unint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5, unint64_t a6, uint64_t *a7, uint64_t *a8, uint64_t a9, void (*a10)(uint64_t), unint64_t *a11, void (*a12)(uint64_t), void (*a13)(uint64_t))
{
  v13 = a6;
  v137 = a12;
  v138 = a11;
  v135 = a10;
  v136 = a13;
  *&v134 = a9;
  v125 = a6 >> 8;
  v131 = a6 >> 16;
  v133 = a6 >> 24;
  v130 = HIDWORD(a6);
  v132 = a6 >> 40;
  v127 = sub_10005DC58(a7, a8);
  v129 = *(v127 - 8);
  v19 = *(v129 + 64);
  __chkstk_darwin();
  v126 = &v108 - v20;
  v110 = type metadata accessor for SymmetricKey();
  v109 = *(v110 - 8);
  v21 = *(v109 + 64);
  __chkstk_darwin();
  v128 = &v108 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);

  sub_1000C46CC(a1, a2);
  sub_10005DC58(&qword_10058B3C0, &qword_100481920);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100483520;
  *(v23 + 32) = 0;
  *(v23 + 33) = a3 + 1;
  v24 = sub_10002D874(v23);
  v26 = v25;

  *&v143 = v24;
  *(&v143 + 1) = v26;
  v140 = &type metadata for Data;
  v141 = &protocol witness table for Data;
  *&v139 = a4;
  *(&v139 + 1) = a5;
  v27 = sub_100029B34(&v139, &type metadata for Data);
  v28 = *v27;
  v29 = v27[1];
  sub_10000AB0C(v24, v26);
  sub_10000AB0C(a4, a5);
  sub_100178A18(v28, v29);
  sub_1000124C8(v24, v26);
  sub_100002A00(&v139);
  v30 = v143;
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1004817D0;
  *(v31 + 32) = v13;
  *(v31 + 33) = v125;
  *(v31 + 34) = v131;
  *(v31 + 35) = v133;
  *(v31 + 36) = v130;
  *(v31 + 37) = v132;
  v32 = sub_10002D874(v31);
  v34 = v33;

  v142 = v30;
  v140 = &type metadata for Data;
  v141 = &protocol witness table for Data;
  *&v139 = v32;
  *(&v139 + 1) = v34;
  v35 = sub_100029B34(&v139, &type metadata for Data);
  v36 = *v35;
  v37 = v35[1];
  sub_10000AB0C(v30, *(&v30 + 1));
  sub_10000AB0C(v32, v34);
  sub_100178A18(v36, v37);
  sub_1000124C8(v32, v34);
  sub_1000124C8(v30, *(&v30 + 1));
  sub_100002A00(&v139);
  v40 = v142;
  v39 = v40 >> 64;
  v38 = v40;
  v41 = sub_10002D874(v134);
  v43 = v42;
  v143 = __PAIR128__(v39, v38);
  v140 = &type metadata for Data;
  v141 = &protocol witness table for Data;
  *&v139 = v41;
  *(&v139 + 1) = v42;
  v44 = sub_100029B34(&v139, &type metadata for Data);
  v45 = *v44;
  v46 = v44[1];
  sub_10000AB0C(v38, v39);
  sub_10000AB0C(v41, v43);
  sub_100178A18(v45, v46);
  sub_1000124C8(v41, v43);
  sub_1000124C8(v38, v39);
  sub_100002A00(&v139);
  v139 = v143;
  v47 = (v135)(0);
  v48 = sub_1000C623C(v138, v137);
  v49 = sub_1000BA0A4();
  v50 = v126;
  v124 = v47;
  v123 = v48;
  v122 = v49;
  static HMAC.authenticationCode<A>(for:using:)();
  sub_1000124C8(v139, *(&v139 + 1));
  v51 = v127;
  v52 = v50;
  HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
  v53 = 0;
  v54 = *(v129 + 8);
  v129 += 8;
  v121 = v54;
  v54(v52, v51);
  v56 = *(&v139 + 1);
  v55 = v139;
  sub_10000AB0C(v139, *(&v139 + 1));
  v57 = 2;
  v134 = xmmword_100480A90;
  while (2)
  {
    *&v143 = v55;
    *(&v143 + 1) = v56;
    sub_10000AB0C(v55, v56);
    v59 = v126;
    static HMAC.authenticationCode<A>(for:using:)();
    sub_1000124C8(v143, *(&v143 + 1));
    v60 = v127;
    HashedAuthenticationCode.withUnsafeBytes<A>(_:)();
    sub_1000124C8(v55, v56);
    v121(v59, v60);
    v56 = *(&v143 + 1);
    v55 = v143;
    v61 = *(&v143 + 1) >> 62;
    v133 = v143;
    v131 = v143 >> 32;
    v132 = BYTE14(v143);
    if ((*(&v143 + 1) >> 62) > 1)
    {
      v62 = 0;
      v63 = 0;
      if (v61 != 2)
      {
        goto LABEL_11;
      }

      v62 = *(v143 + 16);
      v63 = *(v143 + 24);
    }

    else
    {
      if (!v61)
      {
        v62 = 0;
        v63 = v132;
        goto LABEL_11;
      }

      v63 = v131;
      v62 = v133;
    }

    if (v63 < v62)
    {
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
      goto LABEL_119;
    }

LABEL_11:
    v130 = v53;
    if (v62 == v63)
    {
      goto LABEL_3;
    }

    v120 = v63 - 1;
    v64 = v62;
    v137 = v62;
    v138 = (*(&v143 + 1) >> 62);
    v136 = v63;
    v125 = v57;
    do
    {
      v65 = v64;
      v135 = v64;
      while (1)
      {
        if (v64 < v62 || v65 >= v63)
        {
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
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
          goto LABEL_114;
        }

        v67 = *(&v139 + 1);
        v68 = *(&v139 + 1) >> 62;
        if ((*(&v139 + 1) >> 62) > 1)
        {
          if (v68 != 2)
          {
            goto LABEL_120;
          }

          if (v65 < *(v139 + 16))
          {
            goto LABEL_100;
          }

          if (v65 >= *(v139 + 24))
          {
            goto LABEL_102;
          }

          v59 = *(&v139 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          v73 = __DataStorage._bytes.getter();
          if (!v73)
          {
            goto LABEL_123;
          }

          v60 = v73;
          v59 = v67 & 0x3FFFFFFFFFFFFFFFLL;
          v74 = __DataStorage._offset.getter();
          v75 = v65 - v74;
          if (__OFSUB__(v65, v74))
          {
            goto LABEL_105;
          }

LABEL_39:
          v69 = *(v60 + v75);
          if (v61 > 1)
          {
            goto LABEL_21;
          }

          goto LABEL_40;
        }

        if (v68)
        {
          if (v65 >= v139 >> 32 || v65 < v139)
          {
            goto LABEL_101;
          }

          v59 = *(&v139 + 1) & 0x3FFFFFFFFFFFFFFFLL;
          v76 = __DataStorage._bytes.getter();
          if (!v76)
          {
            goto LABEL_122;
          }

          v60 = v76;
          v59 = v67 & 0x3FFFFFFFFFFFFFFFLL;
          v77 = __DataStorage._offset.getter();
          v75 = v65 - v77;
          if (__OFSUB__(v65, v77))
          {
            goto LABEL_103;
          }

          goto LABEL_39;
        }

        if (v65 >= BYTE14(v139))
        {
          goto LABEL_99;
        }

        LODWORD(v143) = v139;
        WORD2(v143) = WORD2(v139);
        *(&v143 + 6) = *(&v139 + 6);
        v69 = *(&v143 + v65);
        if (v61 > 1)
        {
LABEL_21:
          if (v61 != 2)
          {
            goto LABEL_121;
          }

          if (v65 < *(v55 + 16))
          {
            goto LABEL_104;
          }

          if (v65 >= *(v55 + 24))
          {
            goto LABEL_108;
          }

          v59 = v56 & 0x3FFFFFFFFFFFFFFFLL;
          v70 = __DataStorage._bytes.getter();
          if (!v70)
          {
            goto LABEL_125;
          }

          v60 = v70;
          v59 = v56 & 0x3FFFFFFFFFFFFFFFLL;
          v71 = __DataStorage._offset.getter();
          v72 = v65 - v71;
          if (__OFSUB__(v65, v71))
          {
            goto LABEL_110;
          }

          goto LABEL_47;
        }

LABEL_40:
        if (v61)
        {
          if (v65 < v133 || v65 >= v131)
          {
            goto LABEL_107;
          }

          v59 = v56 & 0x3FFFFFFFFFFFFFFFLL;
          v79 = __DataStorage._bytes.getter();
          if (!v79)
          {
            goto LABEL_124;
          }

          v60 = v79;
          v59 = v56 & 0x3FFFFFFFFFFFFFFFLL;
          v80 = __DataStorage._offset.getter();
          v72 = v65 - v80;
          if (__OFSUB__(v65, v80))
          {
            goto LABEL_109;
          }

LABEL_47:
          v78 = *(v60 + v72);
          goto LABEL_48;
        }

        if (v65 >= v132)
        {
          goto LABEL_106;
        }

        *&v143 = v55;
        WORD4(v143) = v56;
        BYTE10(v143) = BYTE2(v56);
        BYTE11(v143) = BYTE3(v56);
        BYTE12(v143) = BYTE4(v56);
        BYTE13(v143) = BYTE5(v56);
        v78 = *(&v143 + v65);
LABEL_48:
        v81 = v78 ^ v69;
        v59 = *(&v139 + 1);
        v61 = v139;
        if ((*(&v139 + 1) >> 62) <= 1)
        {
          break;
        }

        if (*(&v139 + 1) >> 62 != 2)
        {
          goto LABEL_116;
        }

        v82 = *(&v139 + 1) & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000124C8(v61, v59);
        v139 = v134;
        sub_1000124C8(0, 0xC000000000000000);
        if (v65 < *(v61 + 16))
        {
          goto LABEL_94;
        }

        if (v65 >= *(v61 + 24))
        {
          goto LABEL_96;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v60 = *(v61 + 16);
          v83 = *(v61 + 24);
          v84 = __DataStorage._bytes.getter();
          if (v84)
          {
            v85 = v84;
            v59 = v82;
            v86 = __DataStorage._offset.getter();
            if (__OFSUB__(v60, v86))
            {
              goto LABEL_113;
            }

            v59 = v60 - v86 + v85;
            if (__OFSUB__(v83, v60))
            {
              goto LABEL_111;
            }
          }

          else
          {
            v59 = 0;
            if (__OFSUB__(v83, v60))
            {
              goto LABEL_111;
            }
          }

          v93 = type metadata accessor for __DataStorage();
          v94 = *(v93 + 48);
          v95 = *(v93 + 52);
          swift_allocObject();
          v60 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v82 = v60;
          v64 = v135;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = *(v61 + 16);
          v97 = *(v61 + 24);
          type metadata accessor for Data.RangeReference();
          v60 = swift_allocObject();
          *(v60 + 16) = v96;
          *(v60 + 24) = v97;
          v64 = v135;

          v61 = v60;
        }

        v59 = v82;
        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v98 = __DataStorage._bytes.getter();
        if (!v98)
        {
          goto LABEL_118;
        }

        v60 = v98;
        v59 = v82;
        v99 = __DataStorage._offset.getter();
        v92 = v65 - v99;
        if (__OFSUB__(v65, v99))
        {
          goto LABEL_98;
        }

        v66 = 0x8000000000000000;
LABEL_14:
        ++v65;
        *(v60 + v92) = v81;
        *&v139 = v61;
        *(&v139 + 1) = v66 | v82;
        v63 = v136;
        v62 = v137;
        LODWORD(v61) = v138;
        if (v136 == v65)
        {
          v57 = v125;
          goto LABEL_3;
        }
      }

      if (*(&v139 + 1) >> 62 == 1)
      {
        v82 = *(&v139 + 1) & 0x3FFFFFFFFFFFFFFFLL;

        sub_1000124C8(v61, v59);
        v139 = v134;
        sub_1000124C8(0, 0xC000000000000000);
        if (v65 >= v61 >> 32)
        {
          goto LABEL_95;
        }

        v60 = v61;
        if (v65 < v61)
        {
          goto LABEL_95;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {

          if (__DataStorage._bytes.getter())
          {
            v59 = v82;
            if (__OFSUB__(v61, __DataStorage._offset.getter()))
            {
              goto LABEL_112;
            }
          }

          v87 = type metadata accessor for __DataStorage();
          v88 = *(v87 + 48);
          v89 = *(v87 + 52);
          swift_allocObject();
          v60 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v82 = v60;
        }

        v59 = v82;
        __DataStorage.ensureUniqueBufferReference(growingTo:clear:)(0, 0);
        v90 = __DataStorage._bytes.getter();
        if (!v90)
        {
          goto LABEL_117;
        }

        v60 = v90;
        v59 = v82;
        v91 = __DataStorage._offset.getter();
        v92 = v65 - v91;
        v64 = v135;
        if (__OFSUB__(v65, v91))
        {
          goto LABEL_97;
        }

        v66 = 0x4000000000000000;
        goto LABEL_14;
      }

      v60 = v139 >> 8;
      v100 = v139 >> 16;
      v101 = v139 >> 24;
      v112 = DWORD1(v139);
      v113 = v139 >> 40;
      v114 = WORD3(v139);
      v115 = BYTE7(v139);
      v116 = *(&v139 + 1) >> 8;
      v117 = *(&v139 + 1) >> 16;
      v118 = *(&v139 + 1) >> 24;
      v119 = HIDWORD(*(&v139 + 1));
      v135 = (*(&v139 + 1) >> 40);
      v102 = HIWORD(*(&v139 + 1));
      sub_1000124C8(v139, *(&v139 + 1));
      LOBYTE(v143) = v61;
      BYTE1(v143) = v60;
      BYTE2(v143) = v100;
      BYTE3(v143) = v101;
      BYTE4(v143) = v112;
      BYTE5(v143) = v113;
      BYTE6(v143) = v114;
      BYTE7(v143) = v115;
      BYTE8(v143) = v59;
      BYTE9(v143) = v116;
      BYTE10(v143) = v117;
      BYTE11(v143) = v118;
      BYTE12(v143) = v119;
      BYTE13(v143) = v135;
      BYTE14(v143) = v102;
      if (v65 >= v102)
      {
        goto LABEL_115;
      }

      *(&v143 + v65) = v81;
      v64 = (v65 + 1);
      *&v139 = v143;
      *(&v139 + 1) = v111 & 0xF00000000000000 | DWORD2(v143) | ((WORD6(v143) | (BYTE14(v143) << 16)) << 32);
      v111 = *(&v139 + 1);
      v57 = v125;
      v62 = v137;
      LODWORD(v61) = v138;
      v63 = v136;
    }

    while (v120 != v65);
LABEL_3:
    v58 = v57++ == 4096;
    v53 = v130;
    if (!v58)
    {
      continue;
    }

    break;
  }

  v59 = *(&v139 + 1);
  v60 = v139;
  v103 = *(&v139 + 1) >> 62;
  if ((*(&v139 + 1) >> 62) <= 1)
  {
    if (!v103)
    {
      v104 = BYTE14(v139);
      goto LABEL_91;
    }

LABEL_88:
    if (!__OFSUB__(HIDWORD(v60), v60))
    {
      v104 = HIDWORD(v60) - v60;
      goto LABEL_90;
    }

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
    sub_1000124C8(v60, v59);
    __break(1u);
  }

  if (v103 != 2)
  {
    goto LABEL_126;
  }

  v106 = *(v139 + 16);
  v105 = *(v139 + 24);
  v104 = v105 - v106;
  if (__OFSUB__(v105, v106))
  {
    __break(1u);
    goto LABEL_88;
  }

LABEL_90:
  sub_10000AB0C(v60, v59);
LABEL_91:
  if (v104 != 32)
  {
    goto LABEL_126;
  }

  (*(v109 + 8))(v128, v110);
  sub_1000124C8(v55, v56);
  sub_1000124C8(v139, *(&v139 + 1));
  return v60;
}

uint64_t sub_1000C603C(_BYTE *a1)
{
  v2 = String.count.getter();
  sub_1002AAFAC(a1, v2);
  return SymmetricKey.init<A>(data:)();
}

uint64_t sub_1000C60B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v14[3] = &type metadata for UnsafeRawBufferPointer;
  v14[4] = &protocol witness table for UnsafeRawBufferPointer;
  v14[0] = a1;
  v14[1] = a2;
  v4 = sub_100029B34(v14, &type metadata for UnsafeRawBufferPointer);
  v5 = *v4;
  if (*v4 && (v6 = v4[1], v7 = v6 - v5, v6 != v5))
  {
    if (v7 <= 14)
    {
      v8 = sub_10000AD84(v5, v6);
      v9 = v12 & 0xFFFFFFFFFFFFFFLL;
    }

    else if (v7 >= 0x7FFFFFFF)
    {
      v8 = sub_100178EFC(v5, v6);
      v9 = v13 | 0x8000000000000000;
    }

    else
    {
      v8 = sub_10004F46C(v5, v6);
      v9 = v11 | 0x4000000000000000;
    }
  }

  else
  {
    v8 = 0;
    v9 = 0xC000000000000000;
  }

  result = sub_100002A00(v14);
  *a3 = v8;
  a3[1] = v9;
  return result;
}

unint64_t sub_1000C6180()
{
  result = qword_10058CD70;
  if (!qword_10058CD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CD70);
  }

  return result;
}

uint64_t sub_1000C61D4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1000C6220(_BYTE *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  return sub_1000C603C(a1);
}

uint64_t sub_1000C623C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t WiFiNetwork.description.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  strcpy(v7, "WiFiNetwork[");
  v4._countAndFlagsBits = Channel.description.getter(a4 & 0xFFFFFFFFFFFFLL, a2);
  String.append(_:)(v4);

  v5._countAndFlagsBits = 93;
  v5._object = 0xE100000000000000;
  String.append(_:)(v5);
  return v7[0];
}

void WiFiNetwork.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5)
{
  v6 = a4;
  v7 = a4 >> 8;
  v8 = a4 >> 16;
  v9 = a4 >> 24;
  v10 = HIDWORD(a4);
  v11 = a4 >> 40;
  String.hash(into:)();
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v8);
  Hasher._combine(_:)(v9);
  Hasher._combine(_:)(v10);
  Hasher._combine(_:)(v11);
  Hasher._combine(_:)(a5);
  Hasher._combine(_:)(0x801004u >> ((a5 >> 29) & 0xF8));
  if (BYTE5(a5) <= 3u)
  {
    if (BYTE5(a5) == 2)
    {
      v12 = 0;
      goto LABEL_12;
    }

    if (BYTE5(a5) == 3)
    {
      v12 = 1;
      goto LABEL_12;
    }
  }

  else
  {
    switch(BYTE5(a5))
    {
      case 4u:
        v12 = 3;
        goto LABEL_12;
      case 5u:
        v12 = 4;
        goto LABEL_12;
      case 6u:
        v12 = 5;
LABEL_12:
        Hasher._combine(_:)(v12);
        return;
    }
  }

  Hasher._combine(_:)(2uLL);
  Hasher._combine(_:)(BYTE5(a5) & 1);
}

Swift::Int WiFiNetwork.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  WiFiNetwork.hash(into:)(v9, a1, a2, a3 & 0xFFFFFFFFFFFFLL, a4 & 0xFFFFFFFFFFFFLL);
  return Hasher._finalize()();
}

Swift::Int sub_1000C64C0()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  v6 = *(v0 + 24);
  v7 = *(v0 + 28);
  v8 = *(v0 + 29);
  Hasher.init(_seed:)();
  WiFiNetwork.hash(into:)(v10, v1, v2, v3 | (v4 << 32) | (v5 << 40), v6 | (v7 << 32) | (v8 << 40));
  return Hasher._finalize()();
}

Swift::Int sub_1000C657C()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 20);
  v5 = *(v0 + 21);
  v6 = *(v0 + 24);
  v7 = *(v0 + 28);
  v8 = *(v0 + 29);
  Hasher.init(_seed:)();
  WiFiNetwork.hash(into:)(v10, v1, v2, v3 | (v4 << 32) | (v5 << 40), v6 | (v7 << 32) | (v8 << 40));
  return Hasher._finalize()();
}

uint64_t sub_1000C6604(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 28);
  v5 = *(v2 + 29);
  strcpy(v9, "WiFiNetwork[");
  v6._countAndFlagsBits = Channel.description.getter(v3 | (v4 << 32) | (v5 << 40), a2);
  String.append(_:)(v6);

  v7._countAndFlagsBits = 93;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return v9[0];
}

Swift::Int NANInternetSharingStatistics.Status.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

unint64_t sub_1000C676C()
{
  v1 = 0x6669636570736E75;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD00000000000001ALL;
  }
}

uint64_t sub_1000C67DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000C7B8C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000C6804(uint64_t a1)
{
  v2 = sub_1000C6F98();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C6840(uint64_t a1)
{
  v2 = sub_1000C6F98();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C687C(uint64_t a1)
{
  v2 = sub_1000C7094();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C68B8(uint64_t a1)
{
  v2 = sub_1000C7094();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C68F4(uint64_t a1)
{
  v2 = sub_1000C7040();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C6930(uint64_t a1)
{
  v2 = sub_1000C7040();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000C696C(uint64_t a1)
{
  v2 = sub_1000C6FEC();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000C69A8(uint64_t a1)
{
  v2 = sub_1000C6FEC();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t InfrastructureDisableReason.encode(to:)(void *a1, int a2)
{
  v30 = a2;
  v3 = sub_10005DC58(&qword_10058CD78, &qword_100483620);
  v28 = *(v3 - 8);
  v29 = v3;
  v4 = *(v28 + 64);
  __chkstk_darwin();
  v27 = &v23 - v5;
  v6 = sub_10005DC58(&qword_10058CD80, &qword_100483628);
  v25 = *(v6 - 8);
  v26 = v6;
  v7 = *(v25 + 64);
  __chkstk_darwin();
  v9 = &v23 - v8;
  v10 = sub_10005DC58(&qword_10058CD88, &qword_100483630);
  v24 = *(v10 - 8);
  v11 = *(v24 + 64);
  __chkstk_darwin();
  v13 = &v23 - v12;
  v14 = sub_10005DC58(&qword_10058CD90, &qword_100483638);
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin();
  v18 = &v23 - v17;
  v19 = a1[4];
  sub_100029B34(a1, a1[3]);
  sub_1000C6F98();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = (v15 + 8);
  if (v30)
  {
    if (v30 == 1)
    {
      v32 = 1;
      sub_1000C7040();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
    }

    else
    {
      v33 = 2;
      sub_1000C6FEC();
      v21 = v27;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v21, v29);
    }
  }

  else
  {
    v31 = 0;
    sub_1000C7094();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v13, v10);
  }

  return (*v20)(v18, v14);
}

uint64_t sub_1000C6D7C@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000C70E8(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

BOOL sub_1000C6DC4(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  if ((a1 != a5 || a2 != a6) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  LOWORD(v16) = a3;
  BYTE2(v16) = BYTE2(a3);
  HIBYTE(v16) = BYTE3(a3);
  LOBYTE(v17) = BYTE4(a3);
  HIBYTE(v17) = BYTE5(a3);
  LOWORD(v14) = a7;
  BYTE2(v14) = BYTE2(a7);
  HIBYTE(v14) = BYTE3(a7);
  LOBYTE(v15) = BYTE4(a7);
  HIBYTE(v15) = BYTE5(a7);
  v12 = v16 == v14 && v17 == v15;
  if (!v12 || a4 != a8 || ((0x801004u >> ((a4 >> 29) & 0xF8)) & 0xFFC) != ((0x801004u >> ((a8 >> 29) & 0xF8)) & 0xFFC))
  {
    return 0;
  }

  if (BYTE5(a4) > 3u)
  {
    switch(BYTE5(a4))
    {
      case 4u:
        return BYTE5(a8) == 4;
      case 5u:
        return BYTE5(a8) == 5;
      case 6u:
        return BYTE5(a8) == 6;
    }

    return BYTE5(a8) - 2 >= 5 && (((a8 >> 40) ^ (a4 >> 40)) & 1) == 0;
  }

  if (BYTE5(a4) == 2)
  {
    return BYTE5(a8) == 2;
  }

  if (BYTE5(a4) != 3)
  {
    return BYTE5(a8) - 2 >= 5 && (((a8 >> 40) ^ (a4 >> 40)) & 1) == 0;
  }

  return BYTE5(a8) == 3;
}

unint64_t sub_1000C6F98()
{
  result = qword_10058CD98;
  if (!qword_10058CD98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CD98);
  }

  return result;
}

unint64_t sub_1000C6FEC()
{
  result = qword_10058CDA0;
  if (!qword_10058CDA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDA0);
  }

  return result;
}

unint64_t sub_1000C7040()
{
  result = qword_10058CDA8;
  if (!qword_10058CDA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDA8);
  }

  return result;
}

unint64_t sub_1000C7094()
{
  result = qword_10058CDB0;
  if (!qword_10058CDB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDB0);
  }

  return result;
}

uint64_t sub_1000C70E8(uint64_t *a1)
{
  v36 = sub_10005DC58(&qword_10058CE18, &qword_100483C20);
  v33 = *(v36 - 8);
  v2 = *(v33 + 64);
  __chkstk_darwin();
  v38 = &v31 - v3;
  v37 = sub_10005DC58(&qword_10058CE20, &qword_100483C28);
  v35 = *(v37 - 8);
  v4 = *(v35 + 64);
  __chkstk_darwin();
  v6 = &v31 - v5;
  v7 = sub_10005DC58(&qword_10058CE28, &qword_100483C30);
  v34 = *(v7 - 8);
  v8 = *(v34 + 64);
  __chkstk_darwin();
  v10 = &v31 - v9;
  v11 = sub_10005DC58(&qword_10058CE30, &qword_100483C38);
  v12 = *(v11 - 8);
  v13 = *(v12 + 64);
  __chkstk_darwin();
  v15 = &v31 - v14;
  v16 = a1[3];
  v17 = a1[4];
  v40 = a1;
  sub_100029B34(a1, v16);
  sub_1000C6F98();
  v18 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v18)
  {
    v32 = v7;
    v19 = v38;
    v39 = v12;
    v20 = v15;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v41 = v21;
    v42 = v21 + 32;
    v43 = 0;
    v44 = v22;
    v23 = sub_100144290();
    if (v23 != 3 && v43 == v44 >> 1)
    {
      v12 = v23;
      if (v23)
      {
        if (v23 == 1)
        {
          v45 = 1;
          sub_1000C7040();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v24 = v39;
          (*(v35 + 8))(v6, v37);
          (*(v24 + 8))(v15, v11);
LABEL_13:
          swift_unknownObjectRelease();
          sub_100002A00(v40);
          return v12;
        }

        v45 = 2;
        sub_1000C6FEC();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v30 = v39;
        (*(v33 + 8))(v19, v36);
      }

      else
      {
        v45 = 0;
        sub_1000C7094();
        v29 = v15;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v34 + 8))(v10, v32);
        v30 = v39;
      }

      (*(v30 + 8))(v29, v11);
      goto LABEL_13;
    }

    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    v12 = *(sub_10005DC58(&qword_10058CE38, &unk_100483C40) + 48);
    *v27 = &type metadata for InfrastructureDisableReason;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, enum case for DecodingError.typeMismatch(_:), v25);
    swift_willThrow();
    (*(v39 + 8))(v20, v11);
    swift_unknownObjectRelease();
  }

  sub_100002A00(v40);
  return v12;
}

unint64_t sub_1000C765C()
{
  result = qword_10058CDB8;
  if (!qword_10058CDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDB8);
  }

  return result;
}

unint64_t sub_1000C76B4()
{
  result = qword_10058CDC0;
  if (!qword_10058CDC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDC0);
  }

  return result;
}

unint64_t sub_1000C770C()
{
  result = qword_10058CDC8;
  if (!qword_10058CDC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDC8);
  }

  return result;
}

__n128 sub_1000C7760(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 14) = *(a2 + 14);
  *a1 = result;
  return result;
}

uint64_t sub_1000C7774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 30))
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

uint64_t sub_1000C77BC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 30) = 1;
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

    *(result + 30) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000C7878()
{
  result = qword_10058CDD0;
  if (!qword_10058CDD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDD0);
  }

  return result;
}

unint64_t sub_1000C78D0()
{
  result = qword_10058CDD8;
  if (!qword_10058CDD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDD8);
  }

  return result;
}

unint64_t sub_1000C7928()
{
  result = qword_10058CDE0;
  if (!qword_10058CDE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDE0);
  }

  return result;
}

unint64_t sub_1000C7980()
{
  result = qword_10058CDE8;
  if (!qword_10058CDE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDE8);
  }

  return result;
}

unint64_t sub_1000C79D8()
{
  result = qword_10058CDF0;
  if (!qword_10058CDF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDF0);
  }

  return result;
}

unint64_t sub_1000C7A30()
{
  result = qword_10058CDF8;
  if (!qword_10058CDF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CDF8);
  }

  return result;
}

unint64_t sub_1000C7A88()
{
  result = qword_10058CE00;
  if (!qword_10058CE00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE00);
  }

  return result;
}

unint64_t sub_1000C7AE0()
{
  result = qword_10058CE08;
  if (!qword_10058CE08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE08);
  }

  return result;
}

unint64_t sub_1000C7B38()
{
  result = qword_10058CE10;
  if (!qword_10058CE10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_10058CE10);
  }

  return result;
}

uint64_t sub_1000C7B8C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD00000000000001ALL && 0x80000001004B8F70 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001004B8F90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6669636570736E75 && a2 == 0xEB00000000646569)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_1000C7CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v23 = a2;
  v24 = a3;
  v22 = sub_10005DC58(&qword_10058CE40, &unk_100483C90);
  v5 = *(*(v22 - 8) + 64);
  __chkstk_darwin();
  v7 = &v21 - v6;
  v8 = a1 + 64;
  v9 = 1 << *(a1 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a1 + 64);
  v12 = (v9 + 63) >> 6;
  v25 = a1;

  v14 = 0;
  while (v11)
  {
    v15 = v14;
LABEL_10:
    v16 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v17 = v16 | (v15 << 6);
    v18 = *(v25 + 56);
    v19 = *(*(v25 + 48) + v17);
    v20 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    sub_1000D2A28(v18 + *(*(v20 - 8) + 72) * v17, &v7[*(v22 + 48)], type metadata accessor for NANGenericServiceProtocol.Attribute);
    *v7 = v19;
    sub_1000CEEE0(v7, v23, v24);
    result = sub_100016290(v7, &qword_10058CE40, &unk_100483C90);
    if (v3)
    {
    }
  }

  while (1)
  {
    v15 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v15 >= v12)
    {
    }

    v11 = *(v8 + 8 * v15);
    ++v14;
    if (v11)
    {
      v14 = v15;
      goto LABEL_10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C7EA8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v64 = a4;
  v65 = a3;
  v70 = a2;
  v63 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  v7 = *(*(v63 - 8) + 64);
  __chkstk_darwin();
  v9 = &v62 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = &v62 - v10;
  v12 = *(*(type metadata accessor for String.Encoding() - 8) + 64);
  __chkstk_darwin();
  v14 = &v62 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v17 = &v62 - v16;
  v18 = type metadata accessor for NWEndpoint.Port();
  v19 = *(v18 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin();
  v22 = &v62 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000D1338(a1);
  if (result <= 3u)
  {
    if (result <= 1u)
    {
      v24 = v65;
      if (!result)
      {
        v27 = v70;
        sub_100037568(v70, v65);
        if (v4)
        {
          v28 = v27;
        }

        else
        {
          NWEndpoint.Port.init(rawValue:)();
          if ((*(v19 + 48))(v17, 1, v18) != 1)
          {
            sub_1000124C8(v70, v24);
            v57 = *(v19 + 32);
            v57(v22, v17, v18);
            v57(v64, v22, v18);
            return swift_storeEnumTagMultiPayload();
          }

          sub_100016290(v17, &qword_10058BA40, &qword_100480D90);
          sub_10000B02C();
          swift_allocError();
          *v48 = xmmword_10047CE70;
          *(v48 + 16) = 2;
          swift_willThrow();
          v28 = v70;
        }

        goto LABEL_24;
      }

      v32 = v70;
      v33 = sub_100033CDC(v70, v65);
      if (v4)
      {
        goto LABEL_20;
      }

      if (v33 == 6)
      {
        v49 = 0;
      }

      else
      {
        if (v33 != 17)
        {
          sub_10000B02C();
          swift_allocError();
          *v61 = xmmword_10047CE70;
          *(v61 + 16) = 2;
          swift_willThrow();
LABEL_20:
          v28 = v32;
LABEL_24:
          v40 = v24;
          return sub_1000124C8(v28, v40);
        }

        v49 = 1;
      }

      sub_1000124C8(v32, v24);
      *v64 = v49;
      return swift_storeEnumTagMultiPayload();
    }

    v29 = v65;
    if (result != 2)
    {
      static String.Encoding.utf8.getter();
      v24 = v70;
      v34 = String.init(data:encoding:)();
      if (!v35)
      {
LABEL_71:
        sub_10000B02C();
        swift_allocError();
        *v58 = xmmword_10047CE70;
        goto LABEL_72;
      }

LABEL_22:
      v36 = v34;
      v37 = v35;
      sub_1000124C8(v24, v29);
      v38 = v64;
      *v64 = v36;
      *(v38 + 1) = v37;
      return swift_storeEnumTagMultiPayload();
    }

    v25 = v65 >> 62;
    v24 = v70;
    if ((v65 >> 62) > 1)
    {
      if (v25 != 2)
      {
        goto LABEL_68;
      }

      v43 = *(v70 + 16);
      v42 = *(v70 + 24);
      v44 = __OFSUB__(v42, v43);
      v26 = v42 - v43;
      if (v44)
      {
        __break(1u);
LABEL_33:
        if (v26 == 2)
        {
          v25 = *(v19 + 16);
        }

        goto LABEL_35;
      }
    }

    else
    {
      if (!v25)
      {
        v26 = BYTE6(v65);
        goto LABEL_52;
      }

      LODWORD(v26) = HIDWORD(v70) - v70;
      if (__OFSUB__(HIDWORD(v70), v70))
      {
LABEL_82:
        __break(1u);
        goto LABEL_83;
      }

      v26 = v26;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (!(v26 >> 16))
    {
LABEL_52:
      if (v26)
      {
        if (!v25)
        {
          goto LABEL_69;
        }

        if (v25 == 2)
        {
          v54 = *(v70 + 16);
          v53 = *(v70 + 24);
          v44 = __OFSUB__(v53, v54);
          v55 = v53 - v54;
          if (v44)
          {
            __break(1u);
LABEL_58:
            if (!__OFSUB__(HIDWORD(v5), v5))
            {
              if (HIDWORD(v5) - v5 == 16)
              {
                goto LABEL_17;
              }

              goto LABEL_60;
            }

            goto LABEL_84;
          }
        }

        else
        {
          LODWORD(v55) = HIDWORD(v70) - v70;
          if (__OFSUB__(HIDWORD(v70), v70))
          {
LABEL_85:
            __break(1u);
            return result;
          }

          v55 = v55;
        }

        if ((v55 & 0x8000000000000000) == 0)
        {
          if (!(v55 >> 16))
          {
            if (v55 > 0xFF)
            {
              goto LABEL_68;
            }

LABEL_69:
            static String.Encoding.utf8.getter();
            v59 = String.init(data:encoding:)();
            if (!v60)
            {
              goto LABEL_71;
            }

            v34 = _s7CoreP2P14NANServiceNameVyACSgSScfC_0(v59, v60);
            if (!v35)
            {
              goto LABEL_71;
            }

            goto LABEL_22;
          }

          goto LABEL_81;
        }

LABEL_80:
        __break(1u);
LABEL_81:
        __break(1u);
        goto LABEL_82;
      }

LABEL_68:
      sub_10000B02C();
      swift_allocError();
      *v58 = 0;
      *(v58 + 8) = 0;
LABEL_72:
      *(v58 + 16) = 2;
      swift_willThrow();
      v28 = v24;
      v40 = v29;
      return sub_1000124C8(v28, v40);
    }

    __break(1u);
    goto LABEL_80;
  }

  if (result <= 5u)
  {
    v14 = v65;
    v5 = v70;
    if (result == 4)
    {
LABEL_17:
      v30 = v64;
      *v64 = v5;
      *(v30 + 1) = v14;
      return swift_storeEnumTagMultiPayload();
    }

    v41 = v65 >> 62;
    if ((v65 >> 62) <= 1)
    {
      if (!v41)
      {
        if (BYTE6(v65) == 16)
        {
          goto LABEL_17;
        }

LABEL_60:
        sub_10000B02C();
        swift_allocError();
        *v56 = 0;
        *(v56 + 8) = 0;
        *(v56 + 16) = 2;
        swift_willThrow();
        v28 = v5;
        v40 = v14;
        return sub_1000124C8(v28, v40);
      }

      goto LABEL_58;
    }

    if (v41 != 2)
    {
      goto LABEL_60;
    }

    v46 = *(v70 + 16);
    v45 = *(v70 + 24);
    v44 = __OFSUB__(v45, v46);
    v47 = v45 - v46;
    if (!v44)
    {
      if (v47 == 16)
      {
        goto LABEL_17;
      }

      goto LABEL_60;
    }

LABEL_83:
    __break(1u);
LABEL_84:
    __break(1u);
    goto LABEL_85;
  }

  v24 = v65;
  v19 = v70;
  if (result == 6)
  {
    v31 = v64;
    *v64 = v70;
    *(v31 + 1) = v24;
    return swift_storeEnumTagMultiPayload();
  }

  if (result != 7)
  {
    sub_10000B02C();
    swift_allocError();
    *v39 = xmmword_10047CE70;
    *(v39 + 16) = 2;
    swift_willThrow();
    v28 = v19;
    goto LABEL_24;
  }

  sub_10000AB0C(v70, v65);
  v14 = sub_100033AA8(_swiftEmptyArrayStorage);
  type metadata accessor for BinaryDecoder();
  v17 = swift_allocObject();
  v25 = 0;
  *(v17 + 5) = &_swiftEmptyDictionarySingleton;
  *(v17 + 2) = v19;
  *(v17 + 3) = v24;
  v26 = v24 >> 62;
  if ((v24 >> 62) > 1)
  {
    goto LABEL_33;
  }

  if (v26)
  {
    v25 = v19;
  }

LABEL_35:
  *(v17 + 4) = v25;
  swift_beginAccess();
  *(v17 + 5) = v14;
  v68 = &type metadata for BinaryDecoder.UnkeyedContainer;
  v69 = sub_1000325F0();
  v67[0] = v17;
  sub_100031694(v67, &type metadata for BinaryDecoder.UnkeyedContainer);
  sub_1000317F0();

  dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();
  if (v4)
  {

    sub_1000124C8(v19, v24);
    return sub_100002A00(v67);
  }

  else
  {
    v50 = v66;
    v51 = BYTE1(v66);
    v52 = BYTE2(v66);
    if (sub_1000319F0(v66 | (BYTE1(v66) << 8) | (BYTE2(v66) << 16), 0xF21700u))
    {
      sub_100031694(v67, v68);
      type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
      sub_1000D2C6C(&qword_10058CFB8, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      UnkeyedDecodingContainer.inferredDecode<A>()();

      sub_1000124C8(v70, v65);
      swift_storeEnumTagMultiPayload();
      sub_1000D2A90(v11, v64, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    else
    {
      sub_100031694(v67, v68);
      sub_100039F68();
      dispatch thunk of UnkeyedDecodingContainer.decode<A>(_:)();

      sub_1000124C8(v70, v65);
      *v9 = v50;
      v9[1] = v51;
      v9[2] = v52;
      *(v9 + 8) = v66;
      swift_storeEnumTagMultiPayload();
      sub_1000D2A90(v9, v64, type metadata accessor for NANGenericServiceProtocol.Attribute);
    }

    return sub_100002A00(v67);
  }
}

uint64_t sub_1000C882C@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v2, v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v11 = *(v6 + 1);
    }

    else if (!EnumCaseMultiPayload)
    {
      v8 = type metadata accessor for NWEndpoint.Port();
      v9 = *(v8 - 8);
      (*(v9 + 32))(a1, v6, v8);
      return (*(v9 + 56))(a1, 0, 1, v8);
    }
  }

  else if (EnumCaseMultiPayload <= 6)
  {
    sub_1000124C8(*v6, *(v6 + 1));
  }

  else
  {
    sub_1000D2AF8(v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  v12 = type metadata accessor for NWEndpoint.Port();
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t sub_1000C8A08()
{
  v1 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v0, v3, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      sub_1000124C8(*v3, *(v3 + 1));
      return 2;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload > 1)
  {
    v5 = *(v3 + 1);

    return 2;
  }

  if (!EnumCaseMultiPayload)
  {
LABEL_6:
    sub_1000D2AF8(v3, type metadata accessor for NANGenericServiceProtocol.Attribute);
    return 2;
  }

  return *v3;
}

uint64_t sub_1000C8B1C()
{
  v1 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v0, v3, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 6)
    {
      sub_1000124C8(*v3, *(v3 + 1));
      return 0;
    }

    goto LABEL_6;
  }

  if (EnumCaseMultiPayload <= 1)
  {
    v5 = EnumCaseMultiPayload;
    result = 0;
    if (v5)
    {
      return result;
    }

LABEL_6:
    sub_1000D2AF8(v3, type metadata accessor for NANGenericServiceProtocol.Attribute);
    return 0;
  }

  if (EnumCaseMultiPayload == 2)
  {
    result = *v3;
    v7 = *(v3 + 1);
    return result;
  }

  v8 = *(v3 + 1);

  return 0;
}

uint64_t sub_1000C8C44()
{
  v1 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v3 = &v9 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v0, v3, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        result = *v3;
        v8 = *(v3 + 1);
        return result;
      }

      v7 = *(v3 + 1);

      return 0;
    }

    v5 = EnumCaseMultiPayload;
    result = 0;
    if (v5)
    {
      return result;
    }
  }

  else if (EnumCaseMultiPayload <= 6)
  {
    sub_1000124C8(*v3, *(v3 + 1));
    return 0;
  }

  sub_1000D2AF8(v3, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return 0;
}

uint64_t sub_1000C8D6C@<X0>(__int128 *a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v2, v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
  result = swift_getEnumCaseMultiPayload();
  v8 = xmmword_100483C50;
  if (result > 3)
  {
    if (result <= 6)
    {
      v8 = *v6;
      goto LABEL_10;
    }

    v11 = xmmword_100483C50;
    v9 = v6;
    goto LABEL_7;
  }

  if (result > 1)
  {
    v11 = xmmword_100483C50;
    v10 = *(v6 + 1);

    v8 = v11;
    goto LABEL_10;
  }

  if (!result)
  {
    v9 = v6;
    v11 = xmmword_100483C50;
LABEL_7:
    result = sub_1000D2AF8(v9, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v8 = v11;
  }

LABEL_10:
  *a1 = v8;
  return result;
}

uint64_t sub_1000C8EB4@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v2, v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v8 = EnumCaseMultiPayload;
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v9 = *(v6 + 1);

      goto LABEL_10;
    }

    if (EnumCaseMultiPayload)
    {
      goto LABEL_11;
    }

LABEL_7:
    sub_1000D2AF8(v6, type metadata accessor for NANGenericServiceProtocol.Attribute);
LABEL_10:
    v8 = 1;
    goto LABEL_11;
  }

  if (EnumCaseMultiPayload <= 6)
  {
    sub_1000124C8(*v6, *(v6 + 1));
    goto LABEL_10;
  }

  if (EnumCaseMultiPayload != 7)
  {
    goto LABEL_7;
  }

  sub_1000D2A90(v6, a1, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
  v8 = 0;
LABEL_11:
  v10 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  return (*(*(v10 - 8) + 56))(a1, v8, 1, v10);
}

uint64_t sub_1000C9034()
{
  v1 = v0;
  v2 = type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0);
  v3 = *(*(v2 - 8) + 64);
  __chkstk_darwin();
  v5 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for NWEndpoint.Port();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin();
  v10 = &v29 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v1, v13, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      v18 = *v13;
      v19 = *(v13 + 1);
      if (EnumCaseMultiPayload == 2)
      {
        v20 = &type metadata for NANServiceName;
      }

      else
      {
        v20 = &type metadata for String;
      }

      v32 = v20;
      v29 = v18;
      v30 = v19;
    }

    else
    {
      if (!EnumCaseMultiPayload)
      {
        (*(v7 + 32))(v10, v13, v6);
        v32 = v6;
        v17 = sub_1000297D4(&v29);
        (*(v7 + 16))(v17, v10, v6);
        Mirror.init(reflecting:)();
        return (*(v7 + 8))(v10, v6);
      }

      v25 = *v13;
      v32 = &type metadata for Layer3Protocol;
      LOBYTE(v29) = v25;
    }

    return Mirror.init(reflecting:)();
  }

  else
  {
    if (EnumCaseMultiPayload <= 6)
    {
      v21 = *v13;
      v22 = *(v13 + 1);
      v23 = Data.hexString.getter(*v13, v22);
      v32 = &type metadata for String;
      v29 = v23;
      v30 = v24;
    }

    else
    {
      if (EnumCaseMultiPayload == 7)
      {
        sub_1000D2A90(v13, v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        v32 = v2;
        v15 = sub_1000297D4(&v29);
        sub_1000D2A28(v5, v15, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        Mirror.init(reflecting:)();
        return sub_1000D2AF8(v5, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
      }

      v26 = *v13;
      v27 = v13[2];
      v21 = *(v13 + 1);
      v22 = *(v13 + 2);
      v32 = sub_10005DC58(&qword_10058CF50, &qword_100484178);
      LOWORD(v29) = v26;
      BYTE2(v29) = v27;
      v30 = Data.hexString.getter(v21, v22);
      v31 = v28;
    }

    Mirror.init(reflecting:)();
    return sub_1000124C8(v21, v22);
  }
}

uint64_t sub_1000C9388(__int128 *a1)
{
  v2 = v1;
  v4 = *(*(type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes(0) - 8) + 64);
  __chkstk_darwin();
  v6 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for NWEndpoint.Port();
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin();
  v11 = &v29 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(*(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8) + 64);
  __chkstk_darwin();
  v14 = &v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D2A28(v2, v14, type metadata accessor for NANGenericServiceProtocol.Attribute);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload <= 5)
    {
      v19 = *v14;
      v20 = *(v14 + 1);
      if (EnumCaseMultiPayload == 4)
      {
        v21 = 4;
      }

      else
      {
        v21 = 5;
      }
    }

    else
    {
      if (EnumCaseMultiPayload != 6)
      {
        if (EnumCaseMultiPayload == 7)
        {
          sub_1000D2A90(v14, v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
          Hasher._combine(_:)(7uLL);
          NANAttribute.CustomDeviceInformation.CustomAttributes.hash(into:)(a1);
          return sub_1000D2AF8(v6, type metadata accessor for NANAttribute.CustomDeviceInformation.CustomAttributes);
        }

        v23 = *v14;
        v24 = v14[2];
        v19 = *(v14 + 1);
        v20 = *(v14 + 2);
        Hasher._combine(_:)(8uLL);
        sub_10005DC58(&qword_10058B3C0, &qword_100481920);
        v25 = swift_allocObject();
        *(v25 + 16) = xmmword_100480F30;
        *(v25 + 32) = v23;
        *(v25 + 34) = v24;
        v26 = sub_10002D874(v25);
        v28 = v27;

        Data.hash(into:)();
        sub_1000124C8(v26, v28);
        goto LABEL_20;
      }

      v19 = *v14;
      v20 = *(v14 + 1);
      v21 = 6;
    }

    Hasher._combine(_:)(v21);
LABEL_20:
    Data.hash(into:)();
    return sub_1000124C8(v19, v20);
  }

  if (EnumCaseMultiPayload > 1)
  {
    v17 = *v14;
    v18 = *(v14 + 1);
    if (EnumCaseMultiPayload == 2)
    {
      Hasher._combine(_:)(2uLL);
      String.lowercased()();
      String.hash(into:)();
    }

    else
    {
      Hasher._combine(_:)(3uLL);
      String.hash(into:)();
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v22 = *v14;
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    (*(v8 + 32))(v11, v14, v7);
    Hasher._combine(_:)(0);
    sub_1000D2C6C(&qword_10058CF48, &type metadata accessor for NWEndpoint.Port);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v8 + 8))(v11, v7);
  }
}

Swift::Int sub_1000C9770()
{
  Hasher.init(_seed:)();
  sub_1000C9388(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C97B4()
{
  Hasher.init(_seed:)();
  sub_1000C9388(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000C9834@<X0>(unsigned __int8 *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1000D1338(*a1);
  *a2 = result;
  return result;
}

Swift::Int sub_1000C9884()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xDD06050403020100 >> (8 * v1));
  return Hasher._finalize()();
}

Swift::Int sub_1000C9924()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0xDD06050403020100 >> (8 * v1));
  return Hasher._finalize()();
}

uint64_t sub_1000C9A2C()
{
  v1 = type metadata accessor for Mirror.AncestorRepresentation();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(*(sub_10005DC58(&unk_10058FC10, &qword_100484170) - 8) + 64);
  __chkstk_darwin();
  v8 = &v11 - v7;
  v12 = *v0;
  v11 = _swiftEmptyArrayStorage;
  v9 = type metadata accessor for Mirror.DisplayStyle();
  (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  (*(v2 + 104))(v5, enum case for Mirror.AncestorRepresentation.generated(_:), v1);
  sub_10005DC58(&qword_10058C7A0, &qword_100481FD0);
  sub_10000CADC(&qword_10058C7A8, &qword_10058C7A0, &qword_100481FD0);
  return Mirror.init<A, B>(_:children:displayStyle:ancestorRepresentation:)();
}

unint64_t sub_1000C9C18()
{
  v1 = *v0;
  v2 = 1953656656;
  v3 = 1651469378;
  if (v1 != 6)
  {
    v3 = 0x5320726F646E6556;
  }

  v4 = 0x666E492074786554;
  if (v1 != 4)
  {
    v4 = 1145656661;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x2065636976726553;
  if (v1 != 2)
  {
    v5 = 0x65636E6174736E49;
  }

  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t NANGenericServiceProtocol.port.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin();
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16) && (v8 = sub_10007CD10(0), (v9 & 1) != 0))
  {
    sub_1000D2A28(*(a1 + 56) + *(v4 + 72) * v8, v7, type metadata accessor for NANGenericServiceProtocol.Attribute);
    sub_1000C882C(a2);
    return sub_1000D2AF8(v7, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  else
  {
    v11 = type metadata accessor for NWEndpoint.Port();
    v12 = *(*(v11 - 8) + 56);

    return v12(a2, 1, 1, v11);
  }
}

uint64_t NANGenericServiceProtocol.port.setter(uint64_t a1)
{
  v2 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  __chkstk_darwin();
  v4 = &v15 - v3;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v9 = &v15 - v8;
  sub_100012400(a1, v4, &qword_10058BA40, &qword_100480D90);
  v10 = type metadata accessor for NWEndpoint.Port();
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v4, 1, v10) == 1)
  {
    v12 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v12 - 8) + 56))(v9, 1, 1, v12);
  }

  else
  {
    (*(v11 + 32))(v9, v4, v10);
    v13 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
  }

  sub_100012400(v9, v7, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v7, 0);
  sub_100016290(a1, &qword_10058BA40, &qword_100480D90);
  return sub_100016290(v9, &qword_10058BB48, &unk_100483040);
}

void (*NANGenericServiceProtocol.port.modify(uint64_t **a1))(uint64_t *a1, char a2)
{
  *a1 = v1;
  v3 = *(*(sub_10005DC58(&qword_10058BA40, &qword_100480D90) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    a1[1] = swift_coroFrameAlloc();
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    a1[1] = malloc(v3);
    v4 = malloc(v3);
  }

  a1[2] = v4;
  NANGenericServiceProtocol.port.getter(*v1, v4);
  return sub_1000CA1C8;
}

void sub_1000CA1C8(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = *a1;
  if (a2)
  {
    sub_100012400(a1[2], v2, &qword_10058BA40, &qword_100480D90);
    NANGenericServiceProtocol.port.setter(v2);
    sub_100016290(v3, &qword_10058BA40, &qword_100480D90);
  }

  else
  {
    NANGenericServiceProtocol.port.setter(a1[2]);
  }

  free(v3);

  free(v2);
}

uint64_t NANGenericServiceProtocol.transportProtocol.getter(uint64_t a1)
{
  v2 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin();
  v5 = &v10 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 2;
  }

  v6 = sub_10007CD10(1);
  if ((v7 & 1) == 0)
  {
    return 2;
  }

  sub_1000D2A28(*(a1 + 56) + *(v2 + 72) * v6, v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v8 = sub_1000C8A08();
  sub_1000D2AF8(v5, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return v8;
}

uint64_t NANGenericServiceProtocol.transportProtocol.setter(unsigned __int8 a1)
{
  v2 = a1;
  v3 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v7 = &v11 - v6;
  if (v2 == 2)
  {
    v8 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  }

  else
  {
    *v7 = a1 & 1;
    v9 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v9 - 8) + 56))(v7, 0, 1, v9);
  }

  sub_100012400(v7, v5, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v5, 1);
  return sub_100016290(v7, &qword_10058BB48, &unk_100483040);
}

void (*NANGenericServiceProtocol.transportProtocol.modify(void *a1))(uint64_t **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x40uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = (v3 + 7);
  v6 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[1] = swift_coroFrameAlloc();
    v4[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v4[1] = malloc(v6);
    v4[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v4[3] = v7;
  v8 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  v4[4] = v8;
  v9 = *(v8 - 8);
  v4[5] = v9;
  if (&_swift_coroFrameAlloc)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(*(v9 + 64));
  }

  v4[6] = v10;
  v11 = *v1;
  if (*(v11 + 16) && (v12 = v10, v13 = sub_10007CD10(1), (v14 & 1) != 0))
  {
    sub_1000D2A28(*(v11 + 56) + *(v9 + 72) * v13, v12, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v15 = sub_1000C8A08();
    sub_1000D2AF8(v12, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  else
  {
    v15 = 2;
  }

  *v5 = v15;
  return sub_1000CA6B4;
}

void sub_1000CA6B4(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 56);
  v4 = (*a1)[4];
  v5 = (*a1)[5];
  if (a2)
  {
    v6 = v2[1];
    if (v3 == 2)
    {
      (*(v5 + 56))(v2[1], 1, 1, v4);
    }

    else
    {
      *v6 = v3 & 1;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v6, 0, 1, v4);
    }

    v8 = v2[6];
    v9 = v2[2];
    v10 = v2[3];
    v11 = v2[1];
    sub_100012400(v11, v9, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v9, 1);
    v12 = v11;
  }

  else
  {
    v7 = v2[3];
    if (v3 == 2)
    {
      (*(v5 + 56))(v2[3], 1, 1, v4);
    }

    else
    {
      *v7 = v3 & 1;
      swift_storeEnumTagMultiPayload();
      (*(v5 + 56))(v7, 0, 1, v4);
    }

    v8 = v2[6];
    v9 = v2[2];
    v11 = v2[3];
    v13 = *v2;
    v12 = v2[1];
    sub_100012400(v11, v9, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v9, 1);
    v10 = v11;
  }

  sub_100016290(v11, &qword_10058BB48, &unk_100483040);
  free(v8);
  free(v10);
  free(v9);
  free(v12);

  free(v2);
}

void (*NANGenericServiceProtocol.serviceName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  v7 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[8] = v9;
  v10 = *v1;
  if (*(v10 + 16) && (v11 = v9, v12 = sub_10007CD10(2), (v13 & 1) != 0))
  {
    sub_1000D2A28(*(v10 + 56) + *(v8 + 72) * v12, v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v14 = sub_1000C8B1C();
    v16 = v15;
    sub_1000D2AF8(v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *v4 = v14;
  v4[1] = v16;
  return sub_1000CAA5C;
}

uint64_t sub_1000CAA84(uint64_t a1, char a2, uint64_t (*a3)(uint64_t))
{
  v6 = *(type metadata accessor for NANGenericServiceProtocol.Attribute() - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!*(a1 + 16))
  {
    return 0;
  }

  v10 = sub_10007CD10(a2);
  if ((v11 & 1) == 0)
  {
    return 0;
  }

  v12 = sub_1000D2A28(*(a1 + 56) + *(v6 + 72) * v10, v9, type metadata accessor for NANGenericServiceProtocol.Attribute);
  v13 = a3(v12);
  sub_1000D2AF8(v9, type metadata accessor for NANGenericServiceProtocol.Attribute);
  return v13;
}

uint64_t sub_1000CABB0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v7 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  __chkstk_darwin();
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v11 = (&v15 - v10);
  if (a2)
  {
    *v11 = a1;
    v11[1] = a2;
    v12 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    swift_storeEnumTagMultiPayload();
    (*(*(v12 - 8) + 56))(v11, 0, 1, v12);
  }

  else
  {
    v13 = type metadata accessor for NANGenericServiceProtocol.Attribute();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
  }

  sub_100012400(v11, v9, &qword_10058BB48, &unk_100483040);
  sub_100072F88(v9, a4);
  return sub_100016290(v11, &qword_10058BB48, &unk_100483040);
}

void (*NANGenericServiceProtocol.instanceName.modify(uint64_t *a1))(uint64_t a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x48uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 16) = v1;
  v5 = *(*(sub_10005DC58(&qword_10058BB48, &unk_100483040) - 8) + 64);
  if (&_swift_coroFrameAlloc)
  {
    v4[3] = swift_coroFrameAlloc();
    v4[4] = swift_coroFrameAlloc();
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v5);
    v4[4] = malloc(v5);
    v6 = malloc(v5);
  }

  v4[5] = v6;
  v7 = type metadata accessor for NANGenericServiceProtocol.Attribute();
  v4[6] = v7;
  v8 = *(v7 - 8);
  v4[7] = v8;
  if (&_swift_coroFrameAlloc)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  v4[8] = v9;
  v10 = *v1;
  if (*(v10 + 16) && (v11 = v9, v12 = sub_10007CD10(3), (v13 & 1) != 0))
  {
    sub_1000D2A28(*(v10 + 56) + *(v8 + 72) * v12, v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
    v14 = sub_1000C8C44();
    v16 = v15;
    sub_1000D2AF8(v11, type metadata accessor for NANGenericServiceProtocol.Attribute);
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *v4 = v14;
  v4[1] = v16;
  return sub_1000CAF0C;
}

void sub_1000CAF18(uint64_t a1, char a2, uint64_t a3, char a4)
{
  v5 = *a1;
  v6 = *(*a1 + 8);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 56);
  if (a2)
  {
    v9 = v5[3];
    if (v6)
    {
      *v9 = *v5;
      v9[1] = v6;
      v10 = v7;
      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(v9, 0, 1, v10);
    }

    else
    {
      (*(v8 + 56))(v5[3], 1, 1, v7);
    }

    v13 = v5[8];
    v15 = v5[4];
    v14 = v5[5];
    v16 = v5[3];
    sub_100012400(v16, v15, &qword_10058BB48, &unk_100483040);

    sub_100072F88(v15, a4);
    sub_100016290(v16, &qword_10058BB48, &unk_100483040);
    v17 = v5[1];
  }

  else
  {
    v11 = v5[5];
    if (v6)
    {
      *v11 = *v5;
      v11[1] = v6;
      v12 = v7;
      swift_storeEnumTagMultiPayload();
      (*(v8 + 56))(v11, 0, 1, v12);
    }

    else
    {
      (*(v8 + 56))(v5[5], 1, 1, v7);
    }

    v13 = v5[8];
    v15 = v5[4];
    v14 = v5[5];
    v18 = v5[2];
    v16 = v5[3];
    sub_100012400(v14, v15, &qword_10058BB48, &unk_100483040);
    sub_100072F88(v15, a4);
    sub_100016290(v14, &qword_10058BB48, &unk_100483040);
  }

  free(v13);
  free(v14);
  free(v15);
  free(v16);

  free(v5);
}