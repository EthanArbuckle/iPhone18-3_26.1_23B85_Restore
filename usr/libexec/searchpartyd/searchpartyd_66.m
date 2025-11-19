void sub_1006E9DB0()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = (v4 + 15) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v3);
  v7 = *(v0 + v4);
  v8 = *(v0 + v5);
  v9 = v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8);
  v10 = *v9;
  v11 = *(v9 + 8);
  v12 = *(v9 + 16);

  sub_1006CFF0C(v0 + v2, v6, v7, v8, v10, v11, v12);
}

uint64_t sub_1006E9E68(id *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for BeaconNamingRecord();
  v7 = *(*(v6 - 1) + 64);
  __chkstk_darwin(v6);
  v9 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100721C9C(a2, v9, type metadata accessor for BeaconNamingRecord);
  [*a1 encryptedValues];
  swift_getObjectType();
  v10 = v6[6];
  type metadata accessor for UUID();
  sub_100003E8C(&qword_1016984A0, &type metadata accessor for UUID);
  if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
  {
    v11 = UUID.uuidString.getter();
    *(&v36 + 1) = &type metadata for String;
    v37 = &protocol witness table for String;
    *&v35 = v11;
    *(&v35 + 1) = v12;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v13 = v6[7];
  v14 = *(v3 + v13);
  v15 = *&v9[v13];
  if (v14 != v15)
  {
    *(&v36 + 1) = &type metadata for Int;
    v37 = &protocol witness table for Int;
    *&v35 = v15;
    CKRecordKeyValueSetting.subscript.setter();
  }

  v16 = v6[8];
  v17 = *(v3 + v16);
  v18 = *(v3 + v16 + 8);
  v19 = &v9[v16];
  v21 = *v19;
  v20 = *(v19 + 1);
  if (v17 != *v19 || v18 != v20)
  {
    v23 = *v19;
    v24 = *(v19 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      *(&v36 + 1) = &type metadata for String;
      v37 = &protocol witness table for String;
      *&v35 = v21;
      *(&v35 + 1) = v20;

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

  v25 = v6[9];
  v26 = (v3 + v25);
  v27 = *(v3 + v25 + 8);
  v28 = &v9[v25];
  v30 = *v28;
  v29 = *(v28 + 1);
  if (!v27)
  {
    if (!v29)
    {
      goto LABEL_23;
    }

    goto LABEL_20;
  }

  if (!v29)
  {
    v37 = 0;
    v35 = 0u;
    v36 = 0u;
    goto LABEL_22;
  }

  if (*v26 != v30 || v27 != v29)
  {
    v32 = *v28;
    v33 = *(v28 + 1);
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
LABEL_20:
      *(&v36 + 1) = &type metadata for String;
      v37 = &protocol witness table for String;
      *&v35 = v30;
      *(&v35 + 1) = v29;
LABEL_22:

      CKRecordKeyValueSetting.subscript.setter();
    }
  }

LABEL_23:
  swift_unknownObjectRelease();
  return sub_100721D04(v9, type metadata accessor for BeaconNamingRecord);
}

void sub_1006EA170(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t *a4)
{
  sub_100008BB8(0, a3, a4);
  isa = Array._bridgeToObjectiveC()().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_1006EA1E4(uint64_t result, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v83 = result;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = _swiftEmptyArrayStorage;
LABEL_88:
    v5 = *v83;
    if (!*v83)
    {
      goto LABEL_128;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
LABEL_122:
      result = sub_100B31E68(v8);
      v8 = result;
    }

    v75 = v8 + 2;
    v76 = v8[2];
    if (v76 >= 2)
    {
      while (*a3)
      {
        v77 = &v8[2 * v76];
        v78 = *v77;
        v79 = &v75[2 * v76];
        v80 = v79[1];
        sub_1006EAADC((*a3 + 8 * *v77), (*a3 + 8 * *v79), (*a3 + 8 * v80), v5);
        if (v4)
        {
        }

        if (v80 < v78)
        {
          goto LABEL_114;
        }

        if (v76 - 2 >= *v75)
        {
          goto LABEL_115;
        }

        *v77 = v78;
        v77[1] = v80;
        v81 = *v75 - v76;
        if (*v75 < v76)
        {
          goto LABEL_116;
        }

        v76 = *v75 - 1;
        result = memmove(v79, v79 + 2, 16 * v81);
        *v75 = v76;
        if (v76 <= 1)
        {
        }
      }

      goto LABEL_126;
    }
  }

  v7 = 0;
  v8 = _swiftEmptyArrayStorage;
  v82 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 8 * v7);
      v11 = *(*a3 + 8 * v9);
      v12 = v9 + 2;
      v13 = v10;
      while (v6 != v12)
      {
        v14 = *(*a3 + 8 * v12);
        v15 = (v10 < v11) ^ (v14 >= v13);
        ++v12;
        v13 = v14;
        if ((v15 & 1) == 0)
        {
          v7 = v12 - 1;
          if (v10 >= v11)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v11)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v16 = v7 - 1;
        v17 = v9;
        do
        {
          if (v17 != v16)
          {
            v20 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v18 = *(v20 + 8 * v17);
            *(v20 + 8 * v17) = *(v20 + 8 * v16);
            *(v20 + 8 * v16) = v18;
          }
        }

        while (++v17 < v16--);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if ((result & 1) == 0)
    {
      result = sub_100A5B430(0, v8[2] + 1, 1, v8);
      v8 = result;
    }

    v5 = v8[2];
    v29 = v8[3];
    v30 = v5 + 1;
    if (v5 >= v29 >> 1)
    {
      result = sub_100A5B430((v29 > 1), v5 + 1, 1, v8);
      v8 = result;
    }

    v8[2] = v30;
    v31 = v8 + 4;
    v32 = &v8[2 * v5 + 4];
    *v32 = v9;
    v32[1] = v7;
    v84 = *v83;
    if (!*v83)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v30 - 1;
        if (v30 >= 4)
        {
          break;
        }

        if (v30 == 3)
        {
          v33 = v8[4];
          v34 = v8[5];
          v43 = __OFSUB__(v34, v33);
          v35 = v34 - v33;
          v36 = v43;
LABEL_57:
          if (v36)
          {
            goto LABEL_104;
          }

          v49 = &v8[2 * v30];
          v51 = *v49;
          v50 = v49[1];
          v52 = __OFSUB__(v50, v51);
          v53 = v50 - v51;
          v54 = v52;
          if (v52)
          {
            goto LABEL_106;
          }

          v55 = &v31[2 * v5];
          v57 = *v55;
          v56 = v55[1];
          v43 = __OFSUB__(v56, v57);
          v58 = v56 - v57;
          if (v43)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v53, v58))
          {
            goto LABEL_111;
          }

          if (v53 + v58 >= v35)
          {
            if (v35 < v58)
            {
              v5 = v30 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v30 < 2)
        {
          goto LABEL_112;
        }

        v59 = &v8[2 * v30];
        v61 = *v59;
        v60 = v59[1];
        v43 = __OFSUB__(v60, v61);
        v53 = v60 - v61;
        v54 = v43;
LABEL_72:
        if (v54)
        {
          goto LABEL_108;
        }

        v62 = &v31[2 * v5];
        v64 = *v62;
        v63 = v62[1];
        v43 = __OFSUB__(v63, v64);
        v65 = v63 - v64;
        if (v43)
        {
          goto LABEL_110;
        }

        if (v65 < v53)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v30)
        {
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
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v70 = &v31[2 * v5 - 2];
        v71 = *v70;
        v72 = &v31[2 * v5];
        v73 = v72[1];
        sub_1006EAADC((*a3 + 8 * *v70), (*a3 + 8 * *v72), (*a3 + 8 * v73), v84);
        if (v4)
        {
        }

        if (v73 < v71)
        {
          goto LABEL_99;
        }

        if (v5 > v8[2])
        {
          goto LABEL_100;
        }

        *v70 = v71;
        v70[1] = v73;
        v74 = v8[2];
        if (v5 >= v74)
        {
          goto LABEL_101;
        }

        v30 = v74 - 1;
        result = memmove(&v31[2 * v5], v72 + 2, 16 * (v74 - 1 - v5));
        v8[2] = v74 - 1;
        if (v74 <= 2)
        {
          goto LABEL_3;
        }
      }

      v37 = &v31[2 * v30];
      v38 = *(v37 - 8);
      v39 = *(v37 - 7);
      v43 = __OFSUB__(v39, v38);
      v40 = v39 - v38;
      if (v43)
      {
        goto LABEL_102;
      }

      v42 = *(v37 - 6);
      v41 = *(v37 - 5);
      v43 = __OFSUB__(v41, v42);
      v35 = v41 - v42;
      v36 = v43;
      if (v43)
      {
        goto LABEL_103;
      }

      v44 = &v8[2 * v30];
      v46 = *v44;
      v45 = v44[1];
      v43 = __OFSUB__(v45, v46);
      v47 = v45 - v46;
      if (v43)
      {
        goto LABEL_105;
      }

      v43 = __OFADD__(v35, v47);
      v48 = v35 + v47;
      if (v43)
      {
        goto LABEL_107;
      }

      if (v48 >= v40)
      {
        v66 = &v31[2 * v5];
        v68 = *v66;
        v67 = v66[1];
        v43 = __OFSUB__(v67, v68);
        v69 = v67 - v68;
        if (v43)
        {
          goto LABEL_113;
        }

        if (v35 < v69)
        {
          v5 = v30 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v82;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v21 = *a3;
  v22 = *a3 + 8 * v7 - 8;
  v23 = v9 - v7;
LABEL_30:
  v24 = *(v21 + 8 * v7);
  v25 = v23;
  v26 = v22;
  while (1)
  {
    v27 = *v26;
    if (v24 >= *v26)
    {
LABEL_29:
      ++v7;
      v22 += 8;
      --v23;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v21)
    {
      break;
    }

    *v26 = v24;
    v26[1] = v27;
    --v26;
    if (__CFADD__(v25++, 1))
    {
      goto LABEL_29;
    }
  }

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
  return result;
}

uint64_t sub_1006EA730(char *__dst, char *__src, unint64_t a3, char *a4, uint64_t a5)
{
  v41 = a5;
  v6 = a4;
  v7 = a3;
  v8 = __src;
  v9 = __dst;
  v10 = __src - __dst;
  v11 = (__src - __dst) / 40;
  v12 = a3 - __src;
  v13 = (a3 - __src) / 40;
  if (v11 >= v13)
  {
    if (a4 != __src || &__src[40 * v13] <= a4)
    {
      memmove(a4, __src, 40 * v13);
    }

    v14 = v6 + 40 * v13;
    if (v12 < 40 || v8 <= v9)
    {
LABEL_43:
      v21 = v8;
      goto LABEL_44;
    }

    v22 = -v6;
    while (1)
    {
      v21 = v8 - 40;
      v23 = v14 - 40;
      v24 = v22 + v14;
      v7 -= 40;
      while (1)
      {
        sub_10001F280(v23, v40);
        sub_10001F280((v8 - 40), v39);
        v27 = sub_1006CD3D4(v40, v39, v41);
        if (v5)
        {
          sub_100007BAC(v39);
          sub_100007BAC(v40);
          v36 = v24 / 40;
          if (v8 >= v6 && v8 < v6 + 40 * v36 && v8 == v6)
          {
            goto LABEL_49;
          }

          v34 = 40 * v36;
          v35 = v8;
          goto LABEL_48;
        }

        v28 = v27;
        sub_100007BAC(v39);
        sub_100007BAC(v40);
        if (v28)
        {
          break;
        }

        if (v7 + 40 != v23 + 40)
        {
          v29 = *v23;
          v30 = *(v23 + 16);
          *(v7 + 32) = *(v23 + 32);
          *v7 = v29;
          *(v7 + 16) = v30;
        }

        v25 = v23 - 40;
        v24 -= 40;
        v7 -= 40;
        v26 = v23 > v6;
        v23 -= 40;
        if (!v26)
        {
          v14 = v25 + 40;
          goto LABEL_43;
        }
      }

      if ((v7 + 40) != v8)
      {
        v31 = *v21;
        v32 = *(v8 - 24);
        *(v7 + 32) = *(v8 - 1);
        *v7 = v31;
        *(v7 + 16) = v32;
      }

      v14 = v23 + 40;
      if (v23 + 40 > v6)
      {
        v8 -= 40;
        v22 = -v6;
        if (v21 > v9)
        {
          continue;
        }
      }

      v14 = v23 + 40;
      goto LABEL_44;
    }
  }

  if (a4 != __dst || &__dst[40 * v11] <= a4)
  {
    memmove(a4, __dst, 40 * v11);
  }

  v14 = v6 + 40 * v11;
  if (v10 < 40 || v8 >= v7)
  {
LABEL_16:
    v21 = v9;
LABEL_44:
    v37 = (v14 - v6) / 40;
    if (v21 >= v6 && v21 < v6 + 40 * v37 && v21 == v6)
    {
      goto LABEL_49;
    }

    v34 = 40 * v37;
    v35 = v21;
LABEL_48:
    memmove(v35, v6, v34);
    goto LABEL_49;
  }

  while (1)
  {
    sub_10001F280(v8, v40);
    sub_10001F280(v6, v39);
    v15 = sub_1006CD3D4(v40, v39, v41);
    if (v5)
    {
      break;
    }

    v16 = v15;
    sub_100007BAC(v39);
    sub_100007BAC(v40);
    if ((v16 & 1) == 0)
    {
      v17 = v6;
      v18 = v9 == v6;
      v6 += 40;
      if (v18)
      {
        goto LABEL_14;
      }

LABEL_13:
      v19 = *v17;
      v20 = *(v17 + 1);
      *(v9 + 4) = *(v17 + 4);
      *v9 = v19;
      *(v9 + 1) = v20;
      goto LABEL_14;
    }

    v17 = v8;
    v18 = v9 == v8;
    v8 += 40;
    if (!v18)
    {
      goto LABEL_13;
    }

LABEL_14:
    v9 += 40;
    if (v6 >= v14 || v8 >= v7)
    {
      goto LABEL_16;
    }
  }

  sub_100007BAC(v39);
  sub_100007BAC(v40);
  v33 = (v14 - v6) / 40;
  if (v9 < v6 || v9 >= v6 + 40 * v33 || v9 != v6)
  {
    v34 = 40 * v33;
    v35 = v9;
    goto LABEL_48;
  }

LABEL_49:

  return 1;
}

uint64_t sub_1006EAADC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (*v6 < *v4)
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4;
      v4 += 8;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6;
    v6 += 8;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[8 * v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 8;
    v5 -= 8;
    v18 = v14;
    do
    {
      v19 = v5 + 8;
      v21 = *(v18 - 8);
      v18 -= 8;
      v20 = v21;
      if (v21 < *v17)
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (v6 -= 8, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v20;
      }

      v5 -= 8;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v22 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

void *sub_1006EACD0(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *))
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

    sub_10061BC30(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

id sub_1006EAD60(uint64_t a1, uint64_t a2)
{
  v191 = a2;
  v3 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v183 = &v164 - v5;
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v9 = &v164 - v8;
  v186 = type metadata accessor for BeaconProductInfoRecord();
  v185 = *(v186 - 8);
  v10 = *(v185 + 64);
  __chkstk_darwin(v186);
  v170 = &v164 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v168 = &v164 - v14;
  v15 = type metadata accessor for SharedBeaconRecord(0);
  v167 = *(v15 - 1);
  v16 = *(v167 + 64);
  __chkstk_darwin(v15);
  v169 = &v164 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v165 = &v164 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v166 = &v164 - v22;
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v180 = &v164 - v25;
  v181 = type metadata accessor for OwnedBeaconRecord();
  v179 = *(v181 - 8);
  v26 = *(v179 + 64);
  __chkstk_darwin(v181);
  v182 = &v164 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v28 = *(*(v188 - 1) + 64);
  __chkstk_darwin(v188);
  v176 = &v164 - v29;
  v177 = type metadata accessor for BeaconNamingRecord();
  v175 = *(v177 - 8);
  v30 = *(v175 + 64);
  __chkstk_darwin(v177);
  v171 = &v164 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for Date();
  v178 = *(v32 - 8);
  v33 = *(v178 + 64);
  __chkstk_darwin(v32);
  v35 = &v164 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v193 = type metadata accessor for UUID();
  v190 = *(v193 - 8);
  v36 = *(v190 + 64);
  v37 = __chkstk_darwin(v193);
  v192 = &v164 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v164 - v39;
  v205[3] = v15;
  v205[4] = sub_100003E8C(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v41 = sub_1000280DC(v205);
  sub_100721C9C(a1, v41, type metadata accessor for SharedBeaconRecord);
  v42 = [objc_allocWithZone(SPBeacon) init];
  v43 = *(v41 + v15[12]);
  v174 = *(v41 + v15[11]);
  v173 = v43;
  v44 = sub_100314604(v174, v43);
  v187 = v9;
  if (v45 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177BA08);
    sub_10001F280(v205, &v200);
    sub_10001F280(v205, &v195);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134218240;
      v50 = *(sub_1000035D0(&v200, *(&v201 + 1)) + v15[11]);
      sub_100007BAC(&v200);
      *(v49 + 4) = v50;
      *(v49 + 12) = 2048;
      v51 = *(sub_1000035D0(&v195, *(&v196 + 1)) + v15[12]);
      sub_100007BAC(&v195);
      *(v49 + 14) = v51;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unable to create AccessoryProductData from %ld/%ld", v49, 0x16u);
    }

    else
    {
      sub_100007BAC(&v195);
      sub_100007BAC(&v200);
    }

    UUID.init(uuid:)();
  }

  else
  {
    v52 = v44;
    v53 = v45;
    v189 = v32;
    v54 = v15;
    v55 = v40;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v200 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v57 = *(&v200 + 1);
    v56 = v200;
    v195 = v200;
    sub_100017D5C(v200, *(&v200 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v52, v53);
    sub_100016590(v56, v57);
    v58 = v57;
    v40 = v55;
    sub_100016590(v56, v58);
    v15 = v54;
    v32 = v189;
  }

  v172 = v15[5];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v42 setIdentifier:isa];

  v60 = (v41 + v15[9]);
  v61 = *v60;
  v62 = v60[1];
  v63 = String._bridgeToObjectiveC()();
  [v42 setModel:v63];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  v64 = Set._bridgeToObjectiveC()().super.isa;
  [v42 setShares:v64];

  v189 = v15;
  v65 = (v41 + v15[10]);
  v66 = *v65;
  v67 = v65[1];
  v68 = String._bridgeToObjectiveC()();
  [v42 setSystemVersion:v68];

  v184 = v40;
  v69 = UUID._bridgeToObjectiveC()().super.isa;
  [v42 setProductUUID:v69];

  v70 = v174;
  [v42 setVendorId:v174];
  v71 = v173;
  [v42 setProductId:v173];
  sub_100A8AD0C(v35);
  v72 = Date._bridgeToObjectiveC()().super.isa;
  v73 = *(v178 + 8);
  v73(v35, v32);
  [v42 setPairingDate:v72];

  [v42 setType:sub_1011DBF4C()];
  [v42 setLostModeInfo:0];
  [v42 setConnected:0];
  [v42 setConnectedStateExpiryDate:0];
  [v42 setIsAppleAudioAccessory:{sub_100E0EA64(v70, v71)}];
  [v42 setKeySyncLastObservedIndex:1];
  sub_100A8AD0C(v35);
  v74 = Date._bridgeToObjectiveC()().super.isa;
  v73(v35, v32);
  [v42 setKeySyncLastIndexObservationDate:v74];

  [v42 setKeySyncWildIndexFallback:1];
  [v42 setKeyAlignmentLastObservedIndex:0];
  static Date.distantPast.getter();
  v75 = Date._bridgeToObjectiveC()().super.isa;
  v73(v35, v32);
  [v42 setKeyAlignmentLastIndexObservationDate:v75];

  [v42 setAccessoryProductInfo:0];
  v76 = v190;
  v77 = v192;
  v78 = v193;
  v173 = *(v190 + 16);
  v79 = v173(v192, v41 + v172, v193);
  v174 = v41;
  v80 = v191;
  v81 = *(v191 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v79);
  v82 = v176;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v83 = *(v76 + 8);
  v178 = v76 + 8;
  v188 = v83;
  v83(v77, v78);
  v84 = v177;
  if ((*(v175 + 48))(v82, 1, v177) == 1)
  {
    sub_10000B3A8(v82, &unk_1016B29E0, &unk_1013B70E0);
    sub_10001F280(v205, &v194);
    v85 = swift_allocObject();
    *(v85 + 16) = v80;
    sub_10000A748(&v194, v85 + 24);

    sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
    unsafeFromAsyncTask<A>(_:)();

    v200 = v195;
    v201 = v196;
    v202 = v197;
    v203 = v198;
    v86 = v199;
    v204 = v199;
    if (*(&v195 + 1))
    {
      v87 = v202;
      v88 = v201;
      v89 = String._bridgeToObjectiveC()();
      [v42 setName:v89];

      v90 = sub_1012BD7E8(v88);
      v91 = v90;
      v92 = v189;
      if (v88 == SPBeaconRoleIdOther && v87 && v90)
      {

        v93 = [v91 role];
        if (!v93)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v93 = String._bridgeToObjectiveC()();
        }

        v94 = objc_allocWithZone(SPBeaconRole);
        v95 = String._bridgeToObjectiveC()();

        v96 = [v94 initWithRoleId:v88 role:v93 roleEmoji:v95];

        [v42 setRole:v96];
      }

      else
      {
        [v42 setRole:v90];
      }

      v112 = v193;
      v108 = v184;
      v115 = v181;
      v116 = v180;
      if (v86)
      {

        v117 = String._bridgeToObjectiveC()();
        sub_10000B3A8(&v200, &unk_1016AF910, &unk_10138C4C0);
      }

      else
      {
        sub_10000B3A8(&v200, &unk_1016AF910, &unk_10138C4C0);
        v117 = 0;
      }

      [v42 setSerialNumber:v117];

      v113 = v183;
      v114 = v182;
    }

    else
    {
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v118 = type metadata accessor for Logger();
      sub_1000076D4(v118, qword_10177BA08);
      sub_10001F280(v205, &v195);
      v119 = Logger.logObject.getter();
      v120 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v119, v120))
      {
        v121 = swift_slowAlloc();
        v122 = swift_slowAlloc();
        *&v194 = v122;
        *v121 = 141558275;
        *(v121 + 4) = 1752392040;
        *(v121 + 12) = 2081;
        v123 = sub_1000035D0(&v195, *(&v196 + 1));
        v124 = v192;
        v173(v192, &v123[v189[5]], v193);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v125 = dispatch thunk of CustomStringConvertible.description.getter();
        v127 = v126;
        v128 = v124;
        v92 = v189;
        v188(v128, v193);
        sub_100007BAC(&v195);
        v129 = sub_1000136BC(v125, v127, &v194);

        *(v121 + 14) = v129;
        _os_log_impl(&_mh_execute_header, v119, v120, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v121, 0x16u);
        sub_100007BAC(v122);

        v112 = v193;

        v108 = v184;
        v113 = v183;
        v114 = v182;
        v115 = v181;
        v116 = v180;
      }

      else
      {

        sub_100007BAC(&v195);
        v108 = v184;
        v113 = v183;
        v114 = v182;
        v115 = v181;
        v116 = v180;
        v112 = v193;
        v92 = v189;
      }

      v130 = String._bridgeToObjectiveC()();
      [v42 setName:v130];
    }
  }

  else
  {
    v97 = v171;
    sub_10002AB74(v82, v171, type metadata accessor for BeaconNamingRecord);
    v98 = (v97 + v84[8]);
    v99 = *v98;
    v100 = v98[1];
    v101 = String._bridgeToObjectiveC()();
    [v42 setName:v101];

    v102 = *(v97 + v84[7]);
    v103 = sub_1012BD7E8(v102);
    v104 = v103;
    if (v102 == SPBeaconRoleIdOther && (v105 = (v97 + v84[9]), v105[1]) && v103)
    {
      v106 = *v105;
      v107 = [v103 role];
      v108 = v184;
      v92 = v189;
      if (!v107)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v107 = String._bridgeToObjectiveC()();
      }

      v109 = objc_allocWithZone(SPBeaconRole);
      v110 = String._bridgeToObjectiveC()();
      v111 = [v109 initWithRoleId:v102 role:v107 roleEmoji:v110];

      [v42 setRole:v111];
      v112 = v193;
      v97 = v171;
    }

    else
    {
      [v42 setRole:v103];
      v108 = v184;
      v92 = v189;
      v112 = v193;
    }

    sub_100721D04(v97, type metadata accessor for BeaconNamingRecord);
    v113 = v183;
    v114 = v182;
    v115 = v181;
    v116 = v180;
  }

  sub_10001F280(v205, &v200);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v131 = swift_dynamicCast();
  v132 = *(v179 + 56);
  if (v131)
  {
    v132(v116, 0, 1, v115);
    sub_10002AB74(v116, v114, type metadata accessor for OwnedBeaconRecord);
    v133 = v114 + v115[6];
    sub_1010DA578();
    v134 = String._bridgeToObjectiveC()();

    [v42 setStableIdentifier:v134];

    v135 = v166;
    sub_1000D2A70(v114 + v115[7], v166, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v190 + 48))(v135, 1, v112) == 1)
    {
      v136 = 0;
      v137 = v188;
    }

    else
    {
      v136 = UUID._bridgeToObjectiveC()().super.isa;
      v137 = v188;
      v188(v135, v112);
    }

    [v42 setGroupIdentifier:v136];

    sub_100B0E4A8(v114);
    if (v152)
    {
      v153 = String._bridgeToObjectiveC()();
    }

    else
    {
      v153 = 0;
    }

    [v42 setSerialNumber:v153];

    [v42 setPartIdentifier:sub_100B0E7A8(v114)];
    [v42 setBatteryLevel:*(v114 + v115[19])];
    [v42 setIsZeus:*(v114 + v115[20])];
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    [v42 setOwner:qword_10177C088];
    [v42 setAccepted:1];
    v154 = String._bridgeToObjectiveC()();
    [v42 setCorrelationIdentifier:v154];

    [v42 setInternalShareType:-1];
    [v42 setOwnerBeaconIdentifier:0];
    v155 = type metadata accessor for OwnedBeaconRecord;
    v156 = v114;
  }

  else
  {
    v132(v116, 1, 1, v115);
    sub_10000B3A8(v116, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v205, &v200);
    v138 = v168;
    v139 = swift_dynamicCast();
    v140 = *(v167 + 56);
    if ((v139 & 1) == 0)
    {
      v140(v138, 1, 1, v92);
      sub_10000B3A8(v138, &unk_101698C30, &unk_101392630);
      v137 = v188;
      goto LABEL_57;
    }

    v140(v138, 0, 1, v92);
    v141 = v138;
    v142 = v169;
    sub_10002AB74(v141, v169, type metadata accessor for SharedBeaconRecord);
    v143 = String._bridgeToObjectiveC()();
    [v42 setStableIdentifier:v143];

    v144 = sub_100EB3708(*(v142 + v92[7]), *(v142 + v92[7] + 8), *(v142 + v92[7] + 16));
    [v42 setOwner:v144];

    [v42 setAccepted:*(v142 + v92[13])];
    v145 = (v142 + v92[8]);
    v146 = *v145;
    v147 = v145[1];
    v148 = String._bridgeToObjectiveC()();
    [v42 setCorrelationIdentifier:v148];

    [v42 setInternalShareType:*(v142 + v92[16])];
    sub_1000D2A70(v142 + v92[20], v113, &unk_1016AF890, &qword_1013926D0);
    v149 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    v150 = (*(*(v149 - 8) + 48))(v113, 1, v149);
    v137 = v188;
    if (v150 == 1)
    {
      sub_10000B3A8(v113, &unk_1016AF890, &qword_1013926D0);
      (*(v190 + 56))(v165, 1, 1, v112);
      v151 = 0;
    }

    else
    {
      v157 = v165;
      sub_1000D2A70(v113 + *(v149 + 20), v165, &qword_1016980D0, &unk_10138F3B0);
      sub_100721D04(v113, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if ((*(v190 + 48))(v157, 1, v112) == 1)
      {
        v151 = 0;
      }

      else
      {
        v151 = UUID._bridgeToObjectiveC()().super.isa;
        v137(v157, v112);
      }
    }

    [v42 setOwnerBeaconIdentifier:v151];

    [v42 setLostModeInfo:0];
    v155 = type metadata accessor for SharedBeaconRecord;
    v156 = v169;
  }

  sub_100721D04(v156, v155);
LABEL_57:
  v158 = [v42 identifier];
  v159 = v192;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v160 = v187;
  sub_100AC1584(v159, v187);
  v137(v159, v112);
  if ((*(v185 + 48))(v160, 1, v186) == 1)
  {
    v137(v108, v112);
    sub_10000B3A8(v160, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v161 = v170;
    sub_10002AB74(v160, v170, type metadata accessor for BeaconProductInfoRecord);
    v162 = sub_10083B890();
    [v42 setAccessoryProductInfo:v162];

    sub_100721D04(v161, type metadata accessor for BeaconProductInfoRecord);
    v137(v108, v112);
  }

  sub_100007BAC(v205);
  return v42;
}

id sub_1006EC8A4(uint64_t a1, uint64_t a2)
{
  v195 = a2;
  v3 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v172 = &v171 - v5;
  v6 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v7 = *(*(v6 - 8) + 64);
  __chkstk_darwin(v6 - 8);
  v191 = &v171 - v8;
  v190 = type metadata accessor for BeaconProductInfoRecord();
  v189 = *(v190 - 8);
  v9 = *(v189 + 64);
  __chkstk_darwin(v190);
  v178 = &v171 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v175 = &v171 - v13;
  v176 = type metadata accessor for SharedBeaconRecord(0);
  v174 = *(v176 - 8);
  v14 = *(v174 + 64);
  __chkstk_darwin(v176);
  v177 = &v171 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v17 = *(*(v16 - 8) + 64);
  v18 = __chkstk_darwin(v16 - 8);
  v171 = &v171 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v171 - v20;
  v22 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v23 = *(*(v22 - 8) + 64);
  __chkstk_darwin(v22 - 8);
  v187 = &v171 - v24;
  v25 = type metadata accessor for OwnedBeaconRecord();
  v186 = *(v25 - 8);
  v26 = *(v186 + 64);
  __chkstk_darwin(v25);
  v188 = &v171 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v183 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v28 = *(*(v183 - 8) + 64);
  __chkstk_darwin(v183);
  v184 = &v171 - v29;
  v30 = type metadata accessor for BeaconNamingRecord();
  v182 = *(v30 - 8);
  v31 = *(v182 + 64);
  __chkstk_darwin(v30);
  v192 = &v171 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = type metadata accessor for Date();
  v180 = *(v181 - 8);
  v33 = *(v180 + 8);
  __chkstk_darwin(v181);
  v179 = &v171 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v198 = type metadata accessor for UUID();
  v193 = *(v198 - 8);
  v35 = *(v193 + 64);
  v36 = __chkstk_darwin(v198);
  v197 = &v171 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v194 = &v171 - v38;
  v210[3] = v25;
  v210[4] = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v39 = sub_1000280DC(v210);
  sub_100721C9C(a1, v39, type metadata accessor for OwnedBeaconRecord);
  v40 = [objc_allocWithZone(SPBeacon) init];
  v196 = v25;
  v41 = *(v39 + *(v25 + 64));
  v42 = *(v39 + *(v25 + 68));
  v43 = sub_100314604(v41, v42);
  v173 = v21;
  v185 = v30;
  if (v44 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    sub_1000076D4(v45, qword_10177BA08);
    sub_10001F280(v210, &v205);
    sub_10001F280(v210, &v200);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.error.getter();
    v48 = os_log_type_enabled(v46, v47);
    v49 = v196;
    if (v48)
    {
      v50 = swift_slowAlloc();
      *v50 = 134218240;
      v51 = *(sub_1000035D0(&v205, *(&v206 + 1)) + v49[16]);
      sub_100007BAC(&v205);
      *(v50 + 4) = v51;
      *(v50 + 12) = 2048;
      v52 = *(sub_1000035D0(&v200, *(&v201 + 1)) + v49[17]);
      sub_100007BAC(&v200);
      *(v50 + 14) = v52;
      _os_log_impl(&_mh_execute_header, v46, v47, "Unable to create AccessoryProductData from %ld/%ld", v50, 0x16u);
    }

    else
    {
      sub_100007BAC(&v200);
      sub_100007BAC(&v205);
    }

    UUID.init(uuid:)();
  }

  else
  {
    v53 = v43;
    v54 = v44;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v205 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v55 = v205;
    v200 = v205;
    sub_100017D5C(v205, *(&v205 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v53, v54);
    sub_100016590(v55, *(&v55 + 1));
    sub_100016590(v55, *(&v55 + 1));
    v49 = v196;
  }

  v56 = v49[5];
  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v40 setIdentifier:isa];

  v58 = (v39 + v49[14]);
  v59 = *v58;
  v60 = v58[1];
  v61 = String._bridgeToObjectiveC()();
  [v40 setModel:v61];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  v62 = Set._bridgeToObjectiveC()().super.isa;
  [v40 setShares:v62];

  v63 = (v39 + v49[15]);
  v64 = *v63;
  v65 = v63[1];
  v66 = String._bridgeToObjectiveC()();
  [v40 setSystemVersion:v66];

  v67 = UUID._bridgeToObjectiveC()().super.isa;
  [v40 setProductUUID:v67];

  [v40 setVendorId:v41];
  [v40 setProductId:v42];
  v68 = v49[8];
  v69 = Date._bridgeToObjectiveC()().super.isa;
  [v40 setPairingDate:v69];

  v70 = sub_100D60CD0();
  [v40 setType:v70];

  [v40 setLostModeInfo:0];
  [v40 setConnected:0];
  [v40 setConnectedStateExpiryDate:0];
  [v40 setIsAppleAudioAccessory:{sub_100E0EA64(v41, v42)}];
  [v40 setKeySyncLastObservedIndex:1];
  v71 = Date._bridgeToObjectiveC()().super.isa;
  [v40 setKeySyncLastIndexObservationDate:v71];

  [v40 setKeySyncWildIndexFallback:1];
  [v40 setKeyAlignmentLastObservedIndex:0];
  v72 = v179;
  static Date.distantPast.getter();
  v73 = Date._bridgeToObjectiveC()().super.isa;
  (*(v180 + 1))(v72, v181);
  [v40 setKeyAlignmentLastIndexObservationDate:v73];

  [v40 setAccessoryProductInfo:0];
  v74 = v193;
  v75 = *(v193 + 16);
  v76 = v39 + v56;
  v77 = v197;
  v78 = v198;
  v181 = v193 + 16;
  v180 = v75;
  v79 = (v75)(v197, v76, v198);
  v80 = v195;
  v81 = *(v195 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v79);
  v82 = v184;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v84 = *(v74 + 8);
  v83 = (v74 + 8);
  v85 = v84;
  (v84)(v77, v78);
  v86 = v185;
  if ((*(v182 + 48))(v82, 1, v185) == 1)
  {
    sub_10000B3A8(v82, &unk_1016B29E0, &unk_1013B70E0);
    sub_10001F280(v210, v199);
    v87 = swift_allocObject();
    *(v87 + 16) = v80;
    sub_10000A748(v199, v87 + 24);

    sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
    unsafeFromAsyncTask<A>(_:)();

    v205 = v200;
    v206 = v201;
    v207 = v202;
    v208 = v203;
    v88 = v204;
    v209 = v204;
    if (*(&v200 + 1))
    {
      v185 = v85;
      v89 = v207;
      v90 = *(&v208 + 1);
      v91 = v206;
      v92 = String._bridgeToObjectiveC()();
      [v40 setName:v92];

      v93 = sub_1012BD7E8(v91);
      v94 = v93;
      v95 = v196;
      if (v91 == SPBeaconRoleIdOther && v89 && v93)
      {
        v192 = v90;

        v96 = [v94 role];
        if (!v96)
        {
          static String._unconditionallyBridgeFromObjectiveC(_:)();
          v96 = String._bridgeToObjectiveC()();
        }

        v97 = objc_allocWithZone(SPBeaconRole);
        v98 = String._bridgeToObjectiveC()();

        v99 = [v97 initWithRoleId:v91 role:v96 roleEmoji:v98];

        [v40 setRole:v99];
      }

      else
      {
        [v40 setRole:v93];
      }

      v116 = v198;
      v112 = v194;
      if (v88)
      {

        v119 = String._bridgeToObjectiveC()();
        sub_10000B3A8(&v205, &unk_1016AF910, &unk_10138C4C0);
      }

      else
      {
        sub_10000B3A8(&v205, &unk_1016AF910, &unk_10138C4C0);
        v119 = 0;
      }

      v118 = v187;
      [v40 setSerialNumber:v119];

      v117 = v188;
      v85 = v185;
    }

    else
    {
      v95 = v196;
      if (qword_101694BE8 != -1)
      {
        swift_once();
      }

      v120 = type metadata accessor for Logger();
      sub_1000076D4(v120, qword_10177BA08);
      sub_10001F280(v210, &v200);
      v121 = Logger.logObject.getter();
      v122 = static os_log_type_t.error.getter();
      v123 = os_log_type_enabled(v121, v122);
      v116 = v198;
      if (v123)
      {
        v124 = swift_slowAlloc();
        v184 = v83;
        v185 = v85;
        v125 = v124;
        v126 = swift_slowAlloc();
        *&v199[0] = v126;
        *v125 = 141558275;
        *(v125 + 4) = 1752392040;
        *(v125 + 12) = 2081;
        v127 = sub_1000035D0(&v200, *(&v201 + 1)) + v95[5];
        v128 = v197;
        v180(v197, v127, v198);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v129 = dispatch thunk of CustomStringConvertible.description.getter();
        v131 = v130;
        v132 = v128;
        v95 = v196;
        (v185)(v132, v198);
        sub_100007BAC(&v200);
        v133 = sub_1000136BC(v129, v131, v199);

        *(v125 + 14) = v133;
        _os_log_impl(&_mh_execute_header, v121, v122, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v125, 0x16u);
        sub_100007BAC(v126);
        v116 = v198;

        v85 = v185;
      }

      else
      {

        sub_100007BAC(&v200);
      }

      v112 = v194;
      v117 = v188;
      v134 = String._bridgeToObjectiveC()();
      [v40 setName:v134];

      v118 = v187;
    }
  }

  else
  {
    v100 = v82;
    v101 = v192;
    sub_10002AB74(v100, v192, type metadata accessor for BeaconNamingRecord);
    v102 = (v101 + v86[8]);
    v103 = *v102;
    v104 = v102[1];
    v105 = String._bridgeToObjectiveC()();
    [v40 setName:v105];

    v106 = *(v101 + v86[7]);
    v107 = sub_1012BD7E8(v106);
    v108 = v107;
    if (v106 == SPBeaconRoleIdOther && (v109 = (v192 + v86[9]), v109[1]) && v107)
    {
      v185 = v85;
      v184 = v83;
      v110 = *v109;
      v111 = [v107 role];
      v112 = v194;
      v95 = v196;
      if (!v111)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v111 = String._bridgeToObjectiveC()();
      }

      v113 = objc_allocWithZone(SPBeaconRole);
      v114 = String._bridgeToObjectiveC()();
      v115 = [v113 initWithRoleId:v106 role:v111 roleEmoji:v114];

      [v40 setRole:v115];
      v116 = v198;
      v85 = v185;
    }

    else
    {
      [v40 setRole:v107];
      v112 = v194;
      v95 = v196;
      v116 = v198;
    }

    sub_100721D04(v192, type metadata accessor for BeaconNamingRecord);
    v117 = v188;
    v118 = v187;
  }

  sub_10001F280(v210, &v205);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v135 = swift_dynamicCast();
  v136 = *(v186 + 56);
  if (v135)
  {
    v136(v118, 0, 1, v95);
    sub_10002AB74(v118, v117, type metadata accessor for OwnedBeaconRecord);
    v137 = v117 + v95[6];
    sub_1010DA578();
    v138 = String._bridgeToObjectiveC()();

    [v40 setStableIdentifier:v138];

    v139 = v173;
    sub_1000D2A70(v117 + v95[7], v173, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v193 + 48))(v139, 1, v116) == 1)
    {
      v140 = 0;
    }

    else
    {
      v140 = UUID._bridgeToObjectiveC()().super.isa;
      (v85)(v139, v116);
    }

    [v40 setGroupIdentifier:v140];

    sub_100B0E4A8(v117);
    if (v156)
    {
      v157 = String._bridgeToObjectiveC()();
    }

    else
    {
      v157 = 0;
    }

    [v40 setSerialNumber:v157];

    [v40 setPartIdentifier:sub_100B0E7A8(v117)];
    [v40 setBatteryLevel:*(v117 + v95[19])];
    [v40 setIsZeus:*(v117 + v95[20])];
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    [v40 setOwner:qword_10177C088];
    [v40 setAccepted:1];
    v158 = String._bridgeToObjectiveC()();
    [v40 setCorrelationIdentifier:v158];

    [v40 setInternalShareType:-1];
    [v40 setOwnerBeaconIdentifier:0];
    v159 = type metadata accessor for OwnedBeaconRecord;
    v160 = v117;
  }

  else
  {
    v136(v118, 1, 1, v95);
    sub_10000B3A8(v118, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v210, &v205);
    v141 = v175;
    v142 = v176;
    v143 = swift_dynamicCast();
    v144 = *(v174 + 56);
    if ((v143 & 1) == 0)
    {
      v144(v141, 1, 1, v142);
      sub_10000B3A8(v141, &unk_101698C30, &unk_101392630);
      goto LABEL_57;
    }

    v144(v141, 0, 1, v142);
    v145 = v177;
    sub_10002AB74(v141, v177, type metadata accessor for SharedBeaconRecord);
    v146 = String._bridgeToObjectiveC()();
    [v40 setStableIdentifier:v146];

    v147 = sub_100EB3708(*(v145 + v142[7]), *(v145 + v142[7] + 8), *(v145 + v142[7] + 16));
    [v40 setOwner:v147];

    [v40 setAccepted:*(v145 + v142[13])];
    v148 = (v145 + v142[8]);
    v149 = *v148;
    v150 = v148[1];
    v151 = String._bridgeToObjectiveC()();
    [v40 setCorrelationIdentifier:v151];

    [v40 setInternalShareType:*(v145 + v142[16])];
    v152 = v145 + v142[20];
    v153 = v172;
    sub_1000D2A70(v152, v172, &unk_1016AF890, &qword_1013926D0);
    v154 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v154 - 8) + 48))(v153, 1, v154) == 1)
    {
      sub_10000B3A8(v153, &unk_1016AF890, &qword_1013926D0);
      (*(v193 + 56))(v171, 1, 1, v116);
      v155 = 0;
    }

    else
    {
      v161 = v153 + *(v154 + 20);
      v162 = v171;
      sub_1000D2A70(v161, v171, &qword_1016980D0, &unk_10138F3B0);
      sub_100721D04(v153, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if ((*(v193 + 48))(v162, 1, v116) == 1)
      {
        v155 = 0;
      }

      else
      {
        v163.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v164 = v162;
        v155 = v163.super.isa;
        (v85)(v164, v116);
      }
    }

    [v40 setOwnerBeaconIdentifier:v155];

    [v40 setLostModeInfo:0];
    v159 = type metadata accessor for SharedBeaconRecord;
    v160 = v177;
  }

  sub_100721D04(v160, v159);
LABEL_57:
  v165 = [v40 identifier];
  v166 = v197;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v167 = v191;
  sub_100AC1584(v166, v191);
  (v85)(v166, v116);
  if ((*(v189 + 48))(v167, 1, v190) == 1)
  {
    (v85)(v112, v116);
    sub_10000B3A8(v167, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v168 = v178;
    sub_10002AB74(v167, v178, type metadata accessor for BeaconProductInfoRecord);
    v169 = sub_10083B890();
    [v40 setAccessoryProductInfo:v169];

    sub_100721D04(v168, type metadata accessor for BeaconProductInfoRecord);
    (v85)(v112, v116);
  }

  sub_100007BAC(v210);
  return v40;
}

id sub_1006EE39C(uint64_t a1, uint64_t a2)
{
  v194 = a2;
  v3 = sub_1000BC4D4(&unk_1016AF890, &qword_1013926D0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = &v168 - v5;
  v7 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v168 - v9;
  v192 = type metadata accessor for BeaconProductInfoRecord();
  v191 = *(v192 - 8);
  v11 = *(v191 + 64);
  __chkstk_darwin(v192);
  v176 = &v168 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v14 = *(*(v13 - 8) + 64);
  __chkstk_darwin(v13 - 8);
  v173 = &v168 - v15;
  v174 = type metadata accessor for SharedBeaconRecord(0);
  v172 = *(v174 - 8);
  v16 = *(v172 + 64);
  __chkstk_darwin(v174);
  v175 = &v168 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v169 = &v168 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v171 = &v168 - v22;
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v187 = &v168 - v25;
  v188 = type metadata accessor for OwnedBeaconRecord();
  v186 = *(v188 - 8);
  v26 = *(v186 + 64);
  __chkstk_darwin(v188);
  v189 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v185 = sub_1000BC4D4(&unk_1016B29E0, &unk_1013B70E0);
  v28 = *(*(v185 - 8) + 64);
  __chkstk_darwin(v185);
  v182 = &v168 - v29;
  v183 = type metadata accessor for BeaconNamingRecord();
  v181 = *(v183 - 8);
  v30 = *(v181 + 64);
  __chkstk_darwin(v183);
  v177 = &v168 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v184 = type metadata accessor for Date();
  v180 = *(v184 - 1);
  v32 = *(v180 + 64);
  __chkstk_darwin(v184);
  v34 = &v168 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for UUID();
  v195 = *(v196 - 8);
  v35 = *(v195 + 64);
  v36 = __chkstk_darwin(v196);
  v197 = &v168 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v36);
  v39 = &v168 - v38;
  v40 = type metadata accessor for LocalFindableAccessoryRecord();
  v209[3] = v40;
  v209[4] = sub_100003E8C(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord);
  v41 = sub_1000280DC(v209);
  sub_100721C9C(a1, v41, type metadata accessor for LocalFindableAccessoryRecord);
  v42 = [objc_allocWithZone(SPBeacon) init];
  v43 = *(v41 + v40[11]);
  v179 = *(v41 + v40[10]);
  v178 = v43;
  v44 = sub_100314604(v179, v43);
  v193 = v10;
  v170 = v6;
  if (v45 >> 60 == 15)
  {
    if (qword_101694BE8 != -1)
    {
      swift_once();
    }

    v46 = type metadata accessor for Logger();
    sub_1000076D4(v46, qword_10177BA08);
    sub_10001F280(v209, &v204);
    sub_10001F280(v209, &v199);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v47, v48))
    {
      v49 = swift_slowAlloc();
      *v49 = 134218240;
      v50 = v39;
      v51 = *(sub_1000035D0(&v204, *(&v205 + 1)) + v40[10]);
      sub_100007BAC(&v204);
      *(v49 + 4) = v51;
      *(v49 + 12) = 2048;
      v52 = *(sub_1000035D0(&v199, *(&v200 + 1)) + v40[11]);
      sub_100007BAC(&v199);
      *(v49 + 14) = v52;
      v39 = v50;
      _os_log_impl(&_mh_execute_header, v47, v48, "Unable to create AccessoryProductData from %ld/%ld", v49, 0x16u);
    }

    else
    {
      sub_100007BAC(&v199);
      sub_100007BAC(&v204);
    }

    UUID.init(uuid:)();
    v55 = v39;
  }

  else
  {
    v53 = v44;
    v54 = v45;
    v55 = v39;
    if (qword_101694570 != -1)
    {
      swift_once();
    }

    v204 = xmmword_10169DAA8;
    sub_100017D5C(xmmword_10169DAA8, *(&xmmword_10169DAA8 + 1));
    Data.append(_:)();
    v56 = v204;
    v199 = v204;
    sub_100017D5C(v204, *(&v204 + 1));
    sub_1000E0A3C();
    DataProtocol.stableUUID.getter();
    sub_100006654(v53, v54);
    sub_100016590(v56, *(&v56 + 1));
    sub_100016590(v56, *(&v56 + 1));
  }

  isa = UUID._bridgeToObjectiveC()().super.isa;
  [v42 setIdentifier:isa];

  v58 = (v41 + v40[5]);
  v59 = *v58;
  v60 = v58[1];
  v61 = String._bridgeToObjectiveC()();
  [v42 setModel:v61];

  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  v62 = Set._bridgeToObjectiveC()().super.isa;
  [v42 setShares:v62];

  v63 = (v41 + v40[6]);
  v64 = *v63;
  v65 = v63[1];
  v66 = String._bridgeToObjectiveC()();
  [v42 setSystemVersion:v66];

  v190 = v55;
  v67 = UUID._bridgeToObjectiveC()().super.isa;
  [v42 setProductUUID:v67];

  v68 = v179;
  [v42 setVendorId:v179];
  v69 = v178;
  [v42 setProductId:v178];
  v70 = *(v41 + v40[12]) / 1000.0;
  Date.init(timeIntervalSince1970:)();
  v71 = Date._bridgeToObjectiveC()().super.isa;
  v72 = *(v180 + 8);
  v73 = v184;
  v72(v34, v184);
  [v42 setPairingDate:v71];

  [v42 setType:SPBeaconTypeLocalFindable];
  [v42 setLostModeInfo:0];
  [v42 setConnected:0];
  [v42 setConnectedStateExpiryDate:0];
  [v42 setIsAppleAudioAccessory:{sub_100E0EA64(v68, v69)}];
  [v42 setKeySyncLastObservedIndex:1];
  Date.init(timeIntervalSince1970:)();
  v74 = Date._bridgeToObjectiveC()().super.isa;
  v72(v34, v73);
  [v42 setKeySyncLastIndexObservationDate:v74];

  [v42 setKeySyncWildIndexFallback:1];
  [v42 setKeyAlignmentLastObservedIndex:0];
  static Date.distantPast.getter();
  v75 = Date._bridgeToObjectiveC()().super.isa;
  v72(v34, v73);
  [v42 setKeyAlignmentLastIndexObservationDate:v75];

  [v42 setAccessoryProductInfo:0];
  v76 = v195;
  v77 = *(v195 + 16);
  v78 = v197;
  v79 = v196;
  v180 = v195 + 16;
  v179 = v77;
  v80 = (v77)(v197, v41, v196);
  v81 = v194;
  v82 = *(v194 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
  __chkstk_darwin(v80);
  v83 = v182;
  QueueSynchronizer.conditionalSync<A>(_:)();
  v84 = *(v76 + 8);
  v185 = v76 + 8;
  v184 = v84;
  (v84)(v78, v79);
  v85 = v183;
  if ((*(v181 + 48))(v83, 1, v183) != 1)
  {
    v98 = v177;
    sub_10002AB74(v83, v177, type metadata accessor for BeaconNamingRecord);
    v99 = (v98 + v85[8]);
    v100 = *v99;
    v101 = v99[1];
    v102 = String._bridgeToObjectiveC()();
    [v42 setName:v102];

    v103 = *(v98 + v85[7]);
    v104 = sub_1012BD7D0(v103);
    v105 = v104;
    if (v103 == SPBeaconRoleIdOther && (v106 = (v98 + v85[9]), v106[1]) && v104)
    {
      v107 = *v106;
      v108 = [v104 role];
      if (!v108)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v108 = String._bridgeToObjectiveC()();
      }

      v109 = objc_allocWithZone(SPBeaconRole);
      v110 = String._bridgeToObjectiveC()();
      v111 = [v109 initWithRoleId:v103 role:v108 roleEmoji:v110];

      [v42 setRole:v111];
      v112 = v196;
      v94 = v184;
      v98 = v177;
    }

    else
    {
      [v42 setRole:v104];
      v112 = v79;
      v94 = v184;
    }

    sub_100721D04(v98, type metadata accessor for BeaconNamingRecord);
    v113 = v190;
    v114 = v189;
    v115 = v188;
    goto LABEL_36;
  }

  sub_10000B3A8(v83, &unk_1016B29E0, &unk_1013B70E0);
  sub_10001F280(v209, &v198);
  v86 = swift_allocObject();
  *(v86 + 16) = v81;
  sub_10000A748(&v198, v86 + 24);

  sub_1000BC4D4(&unk_1016AF910, &unk_10138C4C0);
  unsafeFromAsyncTask<A>(_:)();

  v204 = v199;
  v205 = v200;
  v206 = v201;
  v207 = v202;
  v87 = v203;
  v208 = v203;
  if (*(&v199 + 1))
  {
    v88 = v206;
    v89 = v205;
    v90 = String._bridgeToObjectiveC()();
    [v42 setName:v90];

    v91 = sub_1012BD7D0(v89);
    v92 = v91;
    if (v89 == SPBeaconRoleIdOther && v88 && v91)
    {

      v93 = [v92 role];
      v94 = v184;
      if (!v93)
      {
        static String._unconditionallyBridgeFromObjectiveC(_:)();
        v93 = String._bridgeToObjectiveC()();
      }

      v95 = objc_allocWithZone(SPBeaconRole);
      v96 = String._bridgeToObjectiveC()();

      v97 = [v95 initWithRoleId:v89 role:v93 roleEmoji:v96];

      [v42 setRole:v97];
    }

    else
    {
      [v42 setRole:v91];
      v94 = v184;
    }

    v112 = v196;
    v114 = v189;
    v115 = v188;
    if (v87)
    {

      v116 = String._bridgeToObjectiveC()();
      sub_10000B3A8(&v204, &unk_1016AF910, &unk_10138C4C0);
    }

    else
    {
      sub_10000B3A8(&v204, &unk_1016AF910, &unk_10138C4C0);
      v116 = 0;
    }

    [v42 setSerialNumber:v116];

    v113 = v190;
LABEL_36:
    v128 = v187;
    goto LABEL_37;
  }

  if (qword_101694BE8 != -1)
  {
    swift_once();
  }

  v117 = type metadata accessor for Logger();
  sub_1000076D4(v117, qword_10177BA08);
  sub_10001F280(v209, &v199);
  v118 = Logger.logObject.getter();
  v119 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v118, v119))
  {
    v120 = swift_slowAlloc();
    v121 = swift_slowAlloc();
    *&v198 = v121;
    *v120 = 141558275;
    *(v120 + 4) = 1752392040;
    *(v120 + 12) = 2081;
    v122 = sub_1000035D0(&v199, *(&v200 + 1));
    v123 = v197;
    v179(v197, v122, v196);
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v124 = dispatch thunk of CustomStringConvertible.description.getter();
    v126 = v125;
    v94 = v184;
    (v184)(v123, v196);
    sub_100007BAC(&v199);
    v127 = sub_1000136BC(v124, v126, &v198);

    *(v120 + 14) = v127;
    _os_log_impl(&_mh_execute_header, v118, v119, "No beacon name record %{private,mask.hash}s. Fallback to custom role.", v120, 0x16u);
    sub_100007BAC(v121);
    v112 = v196;

    v113 = v190;
    v114 = v189;
    v115 = v188;
    v128 = v187;
  }

  else
  {

    sub_100007BAC(&v199);
    v113 = v190;
    v114 = v189;
    v115 = v188;
    v128 = v187;
    v112 = v79;
    v94 = v184;
  }

  v159 = String._bridgeToObjectiveC()();
  [v42 setName:v159];

LABEL_37:
  sub_10001F280(v209, &v204);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  v129 = swift_dynamicCast();
  v130 = *(v186 + 56);
  if (v129)
  {
    v130(v128, 0, 1, v115);
    sub_10002AB74(v128, v114, type metadata accessor for OwnedBeaconRecord);
    v131 = v114 + v115[6];
    sub_1010DA578();
    v132 = String._bridgeToObjectiveC()();

    [v42 setStableIdentifier:v132];

    v133 = v171;
    sub_1000D2A70(v114 + v115[7], v171, &qword_1016980D0, &unk_10138F3B0);
    if ((*(v195 + 48))(v133, 1, v112) == 1)
    {
      v134 = 0;
    }

    else
    {
      v151 = v133;
      v134 = UUID._bridgeToObjectiveC()().super.isa;
      v94(v151, v112);
    }

    [v42 setGroupIdentifier:v134];

    sub_100B0E4A8(v114);
    if (v152)
    {
      v153 = String._bridgeToObjectiveC()();
    }

    else
    {
      v153 = 0;
    }

    [v42 setSerialNumber:v153];

    [v42 setPartIdentifier:sub_100B0E7A8(v114)];
    [v42 setBatteryLevel:*(v114 + v115[19])];
    [v42 setIsZeus:*(v114 + v115[20])];
    if (qword_101694E80 != -1)
    {
      swift_once();
    }

    [v42 setOwner:qword_10177C088];
    [v42 setAccepted:1];
    v154 = String._bridgeToObjectiveC()();
    [v42 setCorrelationIdentifier:v154];

    [v42 setInternalShareType:-1];
    [v42 setOwnerBeaconIdentifier:0];
    v155 = type metadata accessor for OwnedBeaconRecord;
    v156 = v114;
  }

  else
  {
    v130(v128, 1, 1, v115);
    sub_10000B3A8(v128, &unk_1016A9A20, &qword_10138B280);
    sub_10001F280(v209, &v204);
    v135 = v173;
    v136 = v174;
    v137 = swift_dynamicCast();
    v138 = *(v172 + 56);
    if ((v137 & 1) == 0)
    {
      v138(v135, 1, 1, v136);
      sub_10000B3A8(v135, &unk_101698C30, &unk_101392630);
      goto LABEL_58;
    }

    v138(v135, 0, 1, v136);
    v139 = v135;
    v140 = v175;
    sub_10002AB74(v139, v175, type metadata accessor for SharedBeaconRecord);
    v141 = String._bridgeToObjectiveC()();
    [v42 setStableIdentifier:v141];

    v142 = sub_100EB3708(*(v140 + v136[7]), *(v140 + v136[7] + 8), *(v140 + v136[7] + 16));
    [v42 setOwner:v142];

    [v42 setAccepted:*(v140 + v136[13])];
    v143 = (v140 + v136[8]);
    v144 = *v143;
    v145 = v143[1];
    v146 = String._bridgeToObjectiveC()();
    [v42 setCorrelationIdentifier:v146];

    [v42 setInternalShareType:*(v140 + v136[16])];
    v147 = v140 + v136[20];
    v148 = v170;
    sub_1000D2A70(v147, v170, &unk_1016AF890, &qword_1013926D0);
    v149 = type metadata accessor for SharedBeaconRecord.PropertyListContent(0);
    if ((*(*(v149 - 8) + 48))(v148, 1, v149) == 1)
    {
      sub_10000B3A8(v148, &unk_1016AF890, &qword_1013926D0);
      (*(v195 + 56))(v169, 1, 1, v112);
      v150 = 0;
    }

    else
    {
      v157 = v148 + *(v149 + 20);
      v158 = v169;
      sub_1000D2A70(v157, v169, &qword_1016980D0, &unk_10138F3B0);
      sub_100721D04(v148, type metadata accessor for SharedBeaconRecord.PropertyListContent);
      if ((*(v195 + 48))(v158, 1, v112) == 1)
      {
        v150 = 0;
      }

      else
      {
        v160.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v161 = v158;
        v150 = v160.super.isa;
        v94(v161, v112);
      }
    }

    [v42 setOwnerBeaconIdentifier:v150];

    [v42 setLostModeInfo:0];
    v155 = type metadata accessor for SharedBeaconRecord;
    v156 = v175;
  }

  sub_100721D04(v156, v155);
LABEL_58:
  v162 = [v42 identifier];
  v163 = v197;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v164 = v193;
  sub_100AC1584(v163, v193);
  v94(v163, v112);
  if ((*(v191 + 48))(v164, 1, v192) == 1)
  {
    v94(v113, v112);
    sub_10000B3A8(v164, &unk_1016AF8C0, &unk_1013A07A0);
  }

  else
  {
    v165 = v176;
    sub_10002AB74(v164, v176, type metadata accessor for BeaconProductInfoRecord);
    v166 = sub_10083B890();
    [v42 setAccessoryProductInfo:v166];

    sub_100721D04(v165, type metadata accessor for BeaconProductInfoRecord);
    v94(v113, v112);
  }

  sub_100007BAC(v209);
  return v42;
}

uint64_t sub_1006EFEC4(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v410) = a2;
  v5 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v381 = &v346[-v7];
  found = type metadata accessor for NotifyWhenFoundRecord();
  v414 = *(found - 8);
  v8 = *(v414 + 64);
  __chkstk_darwin(found);
  v379 = &v346[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v397 = sub_1000BC4D4(&qword_1016A7840, &qword_1013B66F8);
  v10 = *(*(v397 - 8) + 64);
  v11 = __chkstk_darwin(v397);
  v392 = &v346[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v396 = &v346[-v13];
  v14 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v393 = &v346[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v395 = &v346[-v18];
  v388 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v388 - 8) + 64);
  v20 = __chkstk_darwin(v388);
  v378 = &v346[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v383 = &v346[-v23];
  v24 = __chkstk_darwin(v22);
  v382 = &v346[-v25];
  v26 = __chkstk_darwin(v24);
  v384 = &v346[-v27];
  v28 = __chkstk_darwin(v26);
  v386 = &v346[-v29];
  v30 = __chkstk_darwin(v28);
  v387 = &v346[-v31];
  v32 = __chkstk_darwin(v30);
  v389 = &v346[-v33];
  v34 = __chkstk_darwin(v32);
  v390 = &v346[-v35];
  v36 = __chkstk_darwin(v34);
  v413 = &v346[-v37];
  __chkstk_darwin(v36);
  v418 = &v346[-v38];
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v391 = &v346[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = __chkstk_darwin(v42);
  v394 = &v346[-v45];
  v46 = __chkstk_darwin(v44);
  v415 = &v346[-v47];
  __chkstk_darwin(v46);
  v417 = &v346[-v48];
  v49 = type metadata accessor for UUID();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v406 = &v346[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = __chkstk_darwin(v52);
  v385 = &v346[-v55];
  __chkstk_darwin(v54);
  v57 = &v346[-v56];
  v58 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v59 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58 - 8);
  v61 = &v346[-v60];
  v425 = type metadata accessor for SharedBeaconRecord(0);
  v426 = sub_100003E8C(&qword_101698D80, type metadata accessor for SharedBeaconRecord);
  v62 = sub_1000280DC(&v424);
  sub_100721C9C(a1, v62, type metadata accessor for SharedBeaconRecord);
  v64 = v425;
  v63 = v426;
  sub_1000035D0(&v424, v425);
  v65 = v64;
  v66 = v410;
  (*(*(*(v63 + 8) + 8) + 32))(v65);
  sub_100A423AC(v57, v61);
  v67 = *(v50 + 8);
  v398 = v57;
  v416 = v49;
  v408 = v50 + 8;
  v407 = v67;
  v67(v57, v49);
  v68 = (*(v40 + 48))(v61, 1, v39);
  sub_10000B3A8(v61, &unk_101696900, &unk_10138B1E0);
  v69 = sub_1006C1A0C(&v424, v66);
  v70 = v69[2];
  v401 = v69;
  if (v70)
  {
    v377 = a3;
    v403 = 0;
    v402 = 0;
    v372 = 0;
    v412 = (v50 + 56);
    v357 = 2 * (v68 == 1);
    v356 = (v414 + 48);
    v355 = (v50 + 16);
    v375 = (v40 + 40);
    v411 = (v50 + 48);
    v366 = (v50 + 32);
    v414 = v40 + 8;
    v374 = (v40 + 32);
    v409 = (v40 + 16);
    v369 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
    v370 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
    v410 = SPBeaconTaskNameUnknown;
    v405 = SPBeaconTaskNameStartSharing;
    v400 = SPBeaconTaskNameStopSharing;
    v376 = SPBeaconTaskNameEnableLostMode;
    v373 = SPBeaconTaskNameDisableLostMode;
    v371 = SPBeaconTaskNamePlaySound;
    v368 = SPBeaconTaskNameStopSound;
    v365 = SPBeaconTaskNameBeginLeashing;
    v364 = SPBeaconTaskNameEndLeashing;
    v363 = SPBeaconTaskNameBeginBTFinding;
    v362 = SPBeaconTaskNameEndBTFinding;
    v361 = SPBeaconTaskNameConnect;
    v360 = SPBeaconTaskNameDisconnect;
    v359 = SPBeaconTaskNameRename;
    v358 = SPBeaconTaskNameBeginRanging;
    v354 = SPBeaconTaskNameEndRanging;
    v353 = SPBeaconTaskNameAccessoryFirmwareUpdate;
    v352 = SPBeaconTaskNameEnableNotifyWhenFound;
    v351 = SPBeaconTaskNameDisableNotifyWhenFound;
    v350 = SPBeaconTaskNameLocating;
    v71 = (v69 + 4);
    v367 = v420;
    v72 = 2;
    if (v66)
    {
      v73 = 2;
    }

    else
    {
      v73 = 0;
    }

    v399 = v73;
    if (v66)
    {
      v72 = 0;
    }

    v404 = v72;
    v74 = &_swiftEmptyDictionarySingleton;
    v75 = v418;
    while (1)
    {
      v78 = *v71;
      v423 = 2;
      v79 = v78;
      Date.init()();
      v422 = 0;
      v80 = *v412;
      (*v412)(v75, 1, 1, v416);
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
      if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
      {

LABEL_19:
        v92 = -1;
        goto LABEL_23;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v87 = v406;
      if (v86)
      {
        goto LABEL_19;
      }

      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;
      if (v88 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v90 == v91)
      {

LABEL_21:
        v94 = &v425;
LABEL_22:
        v92 = *(v94 - 32);
LABEL_23:
        v423 = v92;
        goto LABEL_24;
      }

      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v93)
      {
        goto LABEL_21;
      }

      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;
      if (v106 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v108 == v109)
      {

        v94 = &v422;
        goto LABEL_22;
      }

      v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v110)
      {
        v94 = &v422;
        goto LABEL_22;
      }

      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;
      if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
      {
      }

      else
      {
        v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v115 & 1) == 0)
        {
          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v130;
          if (v129 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v131 == v132)
          {

LABEL_46:
            v134 = v377;
            v135 = *(v377 + 280);
            v137 = v425;
            v136 = v426;
            sub_1000035D0(&v424, v425);
            v138 = v398;
            (*(*(*(v136 + 8) + 8) + 32))(v137);
            v139 = v393;
            sub_100ABD87C(v393);
            v407(v138, v416);
            v140 = type metadata accessor for LostModeRecord();
            LODWORD(v136) = (*(*(v140 - 8) + 48))(v139, 1, v140);
            sub_10000B3A8(v139, &unk_1016A99E0, &qword_1013A07B0);
            if (v136 == 1)
            {
              sub_10001F280(&v424, &aBlock);
              v141 = swift_allocObject();
              *(v141 + 16) = v134;
              sub_10000A748(&aBlock, v141 + 24);

              v142 = v392;
              unsafeFromAsyncTask<A>(_:)();

              v143 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
              if ((*(*(v143 - 8) + 48))(v142, 1, v143) == 1)
              {
                sub_10000B3A8(v142, &qword_1016A7840, &qword_1013B66F8);
                v423 = 0;
                goto LABEL_24;
              }

              (*v414)(v142, v39);
            }

LABEL_53:
            v92 = 2;
            goto LABEL_23;
          }

          v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v133)
          {
            goto LABEL_46;
          }

          v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v146 = v145;
          if (v144 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v146 == v147)
          {

LABEL_55:
            v149 = v425;
            v150 = v426;
            sub_1000035D0(&v424, v425);
            if ((*(v150 + 152))(v149, v150))
            {
              v151 = *(v377 + v370);
              v153 = v425;
              v152 = v426;
              sub_1000035D0(&v424, v425);
              v154 = v398;
              v155 = (*(*(*(v152 + 8) + 8) + 32))(v153);
              v349 = v346;
              v156 = *(v151 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v155);
              *&v346[-16] = v151;
              *&v346[-8] = v154;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v157 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v372 = v157;
              v158 = aBlock;
              v407(v154, v416);
              v423 = [v158 state];
              v159 = [v158 lastUpdated];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v160 = v417;
              (*v375)();
              v422 = [v158 error];

              v161 = [v158 commandIdentifier];
              if (v161)
              {
                v162 = v390;
                v163 = v161;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v164 = 0;
                v158 = v163;
                v165 = v162;
                v160 = v417;
              }

              else
              {
                v164 = 1;
                v165 = v390;
              }

              v197 = v165;
              v198 = v164;
LABEL_71:
              v80(v197, v198, 1, v416);
              sub_10002311C(v165, v418, &qword_1016980D0, &unk_10138F3B0);
              v95 = v160;
              goto LABEL_25;
            }

            v166 = v425;
            v167 = v426;
            sub_1000035D0(&v424, v425);
            v168 = (*(v167 + 88))(v166, v167);
            if (v168)
            {
              v169 = *(v377 + 280);
              v171 = v425;
              v170 = v426;
              sub_1000035D0(&v424, v425);
              v172 = v398;
              v173 = (*(*(*(v170 + 8) + 8) + 32))(v171);
              v349 = v346;
              v174 = *(v169 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
              __chkstk_darwin(v173);
              *&v346[-16] = v169;
              *&v346[-8] = v172;
              v175 = v387;
              v176 = v372;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v372 = v176;
              v177 = v389;
              sub_1000D2AD8(v175, v389, &qword_1016980D0, &unk_10138F3B0);
              v178 = v416;
              v407(v172, v416);
              v179 = *v411;
              if ((*v411)(v177, 1, v178) == 1)
              {
                v349 = v39;
                v180 = v178;
                v182 = v425;
                v181 = v426;
                sub_1000035D0(&v424, v425);
                v183 = *(*(*(v181 + 8) + 8) + 32);
                v348 = v179;
                v184 = v385;
                v183(v182);
                v185 = v389;
                v186 = v180;
                v39 = v349;
                v187 = (v348)(v389, 1, v186);
                if (v187 != 1)
                {
                  v187 = sub_10000B3A8(v185, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v184 = v385;
                v187 = (*v366)(v385, v177, v178);
              }

              v349 = v346;
              v207 = *(*(v377 + v370) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v187);
              *&v346[-16] = v208;
              *&v346[-8] = v184;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v209 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v372 = v209;
              v210 = aBlock;
              v423 = [aBlock state];
              v211 = [v210 lastUpdated];
              v212 = v391;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v375)(v417, v212, v39);
              v422 = [v210 error];

              v213 = [v210 commandIdentifier];
              if (v213)
              {
                v214 = v386;
                v215 = v213;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v216 = 0;
              }

              else
              {
                v216 = 1;
                v214 = v386;
              }

              v234 = v416;
              v407(v184, v416);
              v80(v214, v216, 1, v234);
              v235 = v214;
            }

            else
            {
              v349 = v346;
              v192 = v377;
              v193 = *(v377 + v369);
              __chkstk_darwin(v168);
              *&v346[-16] = v192;
              *&v346[-8] = &v424;
              sub_1000BC4D4(&qword_1016A7848, &qword_1013B6710);
              v194 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v195 = v420[0];
              if (LOBYTE(v420[0]) != 255)
              {
                v196 = aBlock;
                if ((v420[0] & 1) == 0)
                {
                  v348 = *(&aBlock + 1);
                  LODWORD(v349) = LOBYTE(v420[0]);
                  v240 = *(aBlock + 56);
                  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                  OS_dispatch_queue.sync<A>(execute:)();
                  v372 = v194;
                  v241 = aBlock;
                  v423 = [aBlock state];
                  v242 = [v241 lastUpdated];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v160 = v417;
                  (*v375)();
                  v422 = [v241 error];

                  v243 = [v241 commandIdentifier];
                  if (v243)
                  {
                    v244 = v382;
                    v245 = v243;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v347 = 0;
                    v241 = v245;
                    v165 = v244;
                    v160 = v417;
                  }

                  else
                  {
                    v347 = 1;
                    v165 = v382;
                  }

                  sub_10071EB9C(v196, v348, v349);
                  v197 = v165;
                  v198 = v347;
                  goto LABEL_71;
                }

                v372 = v194;
                if (aBlock)
                {
                  swift_errorRetain();
                  sub_10071EB9C(v196, *(&v196 + 1), v195);
                  v422 = v196;
                  v423 = 3;
                }

                else
                {
                  sub_10071EB9C(0, *(&aBlock + 1), v420[0]);
                  v422 = 0;
                  v423 = 2;
                }

                v263 = v418;
                sub_10000B3A8(v418, &qword_1016980D0, &unk_10138F3B0);
                v80(v263, 1, 1, v416);
                goto LABEL_24;
              }

              v348 = *(v192 + 280);
              v372 = v194;
              v218 = v425;
              v217 = v426;
              sub_1000035D0(&v424, v425);
              v219 = v398;
              v220 = (*(*(*(v217 + 8) + 8) + 32))(v218);
              v349 = v346;
              v221 = *&v348[OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer];
              __chkstk_darwin(v220);
              *&v346[-16] = v222;
              *&v346[-8] = v219;
              v223 = v387;
              v224 = v372;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v372 = v224;
              v225 = v384;
              sub_1000D2AD8(v223, v384, &qword_1016980D0, &unk_10138F3B0);
              v226 = v416;
              v407(v398, v416);
              v349 = *v411;
              if ((v349)(v225, 1, v226) == 1)
              {
                v227 = v39;
                v228 = v226;
                v230 = v425;
                v229 = v426;
                sub_1000035D0(&v424, v425);
                (*(*(*(v229 + 8) + 8) + 32))(v230);
                v231 = v384;
                v232 = v228;
                v39 = v227;
                v87 = v406;
                v233 = (v349)(v384, 1, v232);
                if (v233 != 1)
                {
                  v233 = sub_10000B3A8(v231, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v233 = (*v366)(v87, v225, v226);
              }

              v349 = v346;
              v246 = *(*(v377 + v370) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v233);
              *&v346[-16] = v247;
              *&v346[-8] = v87;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v248 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v249 = aBlock;
              v250 = sub_1006C22E8(&v424);
              v372 = v248;
              if (v250)
              {
                type metadata accessor for SPBeaconSharingError(0);
                *&v421 = 19;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
                _BridgedStoredNSError.init(_:userInfo:)();
                v349 = aBlock;
                v251 = 3;
              }

              else
              {
                v251 = [v249 state];
                v349 = 0;
              }

              v423 = v251;
              v252 = v249;
              v253 = [v249 lastUpdated];
              v254 = v391;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v375)(v417, v254, v39);
              v255 = v349;
              if (!v349)
              {
                v255 = [v252 error];
              }

              v422 = v255;
              swift_errorRetain();

              v348 = v252;
              v256 = [v252 commandIdentifier];
              if (v256)
              {
                v257 = v383;
                v258 = v256;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v259 = 0;
              }

              else
              {
                v259 = 1;
                v257 = v383;
              }

              v262 = v416;
              v407(v87, v416);
              v80(v257, v259, 1, v262);
              v235 = v257;
            }

            goto LABEL_100;
          }

          v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v148)
          {
            goto LABEL_55;
          }

          v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v190 = v189;
          if (v188 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v190 == v191)
          {

LABEL_73:
            v200 = v377;
            v201 = *(v377 + v369);
            sub_10001F280(&v424, &v421);
            v202 = swift_allocObject();
            v202[2] = v200;
            sub_10000A748(&v421, (v202 + 3));
            v202[8] = &v423;
            v202[9] = &v422;
            v203 = v417;
            v202[10] = v418;
            v202[11] = v203;

            sub_1000BB27C(v403);
            v204 = swift_allocObject();
            v403 = sub_10071EB44;
            *(v204 + 16) = sub_10071EB44;
            *(v204 + 24) = v202;
            v420[2] = sub_1000D2FB0;
            v420[3] = v204;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v420[0] = sub_10013FE14;
            v420[1] = &unk_10162E338;
            v205 = _Block_copy(&aBlock);

            dispatch_sync(v201, v205);
            _Block_release(v205);
            LOBYTE(v200) = swift_isEscapingClosureAtFileLocation();

            if (v200)
            {
              __break(1u);
              return result;
            }

            v402 = v202;
            goto LABEL_24;
          }

          v199 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v199)
          {
            goto LABEL_73;
          }

          v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v238 = v237;
          if (v236 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v238 == v239)
          {
LABEL_85:

            goto LABEL_97;
          }

          v260 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v260)
          {
            goto LABEL_97;
          }

          v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v266 = v265;
          if (v264 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v266 == v267)
          {
            goto LABEL_85;
          }

          v268 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v268)
          {
LABEL_97:
            sub_10001F280(&v424, &aBlock);
            v261 = swift_allocObject();
            *(v261 + 16) = v377;
            sub_10000A748(&aBlock, v261 + 24);
            type metadata accessor for BeaconTaskState(0);

            unsafeFromAsyncTask<A>(_:)();

            v92 = aBlock;
            goto LABEL_23;
          }

          v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v271 = v270;
          if (v269 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v271 != v272)
          {
            v273 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v273)
            {
              goto LABEL_53;
            }

            v274 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v276 = v275;
            if (v274 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v276 != v277)
            {
              v278 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v278)
              {
                goto LABEL_53;
              }

              v279 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v281 = v280;
              if (v279 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v281 != v282)
              {
                v283 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v283)
                {
                  goto LABEL_53;
                }

                v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v286 = v285;
                if (v284 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v286 != v287)
                {
                  v288 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v288)
                  {
                    goto LABEL_53;
                  }

                  v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v291 = v290;
                  if (v289 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v291 != v292)
                  {
                    v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v293)
                    {
                      goto LABEL_53;
                    }

                    v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v296 = v295;
                    if (v294 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v296 == v297)
                    {
LABEL_126:

                      goto LABEL_131;
                    }

                    v298 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v298)
                    {
                      goto LABEL_131;
                    }

                    v299 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v301 = v300;
                    if (v299 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v301 == v302)
                    {
                      goto LABEL_126;
                    }

                    v303 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v303)
                    {
LABEL_131:
                      v423 = 2;
                      if ((sub_1006C22E8(&v424) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      type metadata accessor for SPBeaconSharingError(0);
                      *&v421 = 19;
                      sub_100032898(_swiftEmptyArrayStorage);
                      sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
                      _BridgedStoredNSError.init(_:userInfo:)();
                      v422 = aBlock;

                      v92 = 3;
                      goto LABEL_23;
                    }

                    v304 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v306 = v305;
                    if (v304 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v306 == v307)
                    {

LABEL_137:
                      if (!*(v377 + 176))
                      {
                        goto LABEL_24;
                      }

                      v309 = *(v377 + 176);
                      v310 = v426;
                      v349 = v425;
                      sub_1000035D0(&v424, v425);
                      v311 = *(*(v310 + 8) + 8);
                      v348 = *(v311 + 32);

                      v312 = (v348)(v349, v311);
                      v349 = v346;
                      v313 = *(v309 + 24);
                      __chkstk_darwin(v312);
                      v314 = v398;
                      *&v346[-16] = v309;
                      *&v346[-8] = v314;
                      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                      v315 = v372;
                      OS_dispatch_queue.sync<A>(execute:)();
                      v372 = v315;

                      v316 = aBlock;
                      v407(v314, v416);
                      v423 = [v316 state];
                      v317 = [v316 lastUpdated];
                      v318 = v391;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v375)(v417, v318, v39);
                      v422 = [v316 error];

                      v319 = [v316 commandIdentifier];
                      if (v319)
                      {
                        v320 = v319;
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v321 = 0;
                        v316 = v320;
                      }

                      else
                      {
                        v321 = 1;
                      }

                      v326 = v378;
                      v80(v378, v321, 1, v416);
                      v235 = v326;
LABEL_100:
                      sub_10002311C(v235, v418, &qword_1016980D0, &unk_10138F3B0);
                      goto LABEL_24;
                    }

                    v308 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v308)
                    {
                      goto LABEL_137;
                    }

                    v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v324 = v323;
                    if (v322 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v324 == v325)
                    {

LABEL_146:
                      v328 = *(v377 + 280);
                      v330 = v425;
                      v329 = v426;
                      sub_1000035D0(&v424, v425);
                      v331 = v398;
                      (*(*(*(v329 + 8) + 8) + 32))(v330);
                      v332 = v381;
                      sub_10003A604(v381);
                      v407(v331, v416);
                      if ((*v356)(v332, 1, found) != 1)
                      {
                        v333 = v379;
                        sub_10002AB74(v381, v379, type metadata accessor for NotifyWhenFoundRecord);
                        v334 = v387;
                        v335 = v416;
                        (*v355)(v387, &v333[*(found + 20)], v416);
                        sub_100721D04(v333, type metadata accessor for NotifyWhenFoundRecord);
                        v80(v334, 0, 1, v335);
                        sub_10002311C(v334, v418, &qword_1016980D0, &unk_10138F3B0);
                        v423 = 0;
                        goto LABEL_24;
                      }

                      sub_10000B3A8(v381, &qword_10169E328, &unk_10139D740);
                      goto LABEL_53;
                    }

                    v327 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v327)
                    {
                      goto LABEL_146;
                    }

                    v336 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v338 = v337;
                    if (v336 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v338 != v339)
                    {
                      v340 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v340 & 1) == 0)
                      {
                        v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v343 = v342;
                        if (v341 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v343 == v344)
                        {
                        }

                        else
                        {
                          v345 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v345 & 1) == 0)
                          {
                            goto LABEL_24;
                          }
                        }

                        v94 = &v389;
                        goto LABEL_22;
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_53;
        }
      }

      v116 = v377;
      v117 = *(v377 + 280);
      v119 = v425;
      v118 = v426;
      sub_1000035D0(&v424, v425);
      v120 = v398;
      (*(*(*(v118 + 8) + 8) + 32))(v119);
      v121 = v395;
      sub_100ABD87C(v395);
      v407(v120, v416);
      v122 = type metadata accessor for LostModeRecord();
      LODWORD(v118) = (*(*(v122 - 8) + 48))(v121, 1, v122) == 1;
      sub_10000B3A8(v121, &unk_1016A99E0, &qword_1013A07B0);
      v423 = 2 * v118;
      sub_10001F280(&v424, &aBlock);
      v123 = swift_allocObject();
      *(v123 + 16) = v116;
      sub_10000A748(&aBlock, v123 + 24);

      v124 = v396;
      unsafeFromAsyncTask<A>(_:)();

      v125 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
      if ((*(*(v125 - 8) + 48))(v124, 1, v125) != 1)
      {
        v126 = *(v124 + *(v125 + 48));
        v127 = v394;
        (*v374)(v394, v124, v39);
        v128 = v417;
        (*v375)(v417, v127, v39);
        v95 = v128;
        v423 = v126;
        goto LABEL_25;
      }

      sub_10000B3A8(v124, &qword_1016A7840, &qword_1013B66F8);
LABEL_24:
      v95 = v417;
LABEL_25:
      (*v409)(v415, v95, v39);
      v97 = v422;
      v96 = v423;
      v98 = v79;
      swift_errorRetain();
      v99.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (v97)
      {
        v100 = _convertErrorToNSError(_:)();
      }

      else
      {
        v100 = 0;
      }

      v101 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v98 lastUpdated:v99.super.isa error:v100 state:v96];

      v102 = *v414;
      v103 = v39;
      (*v414)(v415, v39);
      v104 = v413;
      sub_1000D2A70(v418, v413, &qword_1016980D0, &unk_10138F3B0);
      v105 = v416;
      if ((*v411)(v104, 1, v416) == 1)
      {
        v76.super.isa = 0;
      }

      else
      {
        v76.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v407(v104, v105);
      }

      [v101 setCommandIdentifier:v76.super.isa];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v74;
      sub_100FFF5A8(v101, v98, isUniquelyReferenced_nonNull_native);

      v74 = aBlock;
      v75 = v418;
      sub_10000B3A8(v418, &qword_1016980D0, &unk_10138F3B0);

      v39 = v103;
      v102(v417, v103);
      ++v71;
      if (!--v70)
      {
        goto LABEL_158;
      }
    }
  }

  v403 = 0;
  v402 = 0;
  v74 = &_swiftEmptyDictionarySingleton;
LABEL_158:

  sub_1000BB27C(v403);
  sub_100007BAC(&v424);
  return v74;
}

uint64_t sub_1006F2DA0(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v410) = a2;
  v5 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v381 = &v346[-v7];
  found = type metadata accessor for NotifyWhenFoundRecord();
  v414 = *(found - 8);
  v8 = *(v414 + 64);
  __chkstk_darwin(found);
  v379 = &v346[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v397 = sub_1000BC4D4(&qword_1016A7840, &qword_1013B66F8);
  v10 = *(*(v397 - 8) + 64);
  v11 = __chkstk_darwin(v397);
  v392 = &v346[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v396 = &v346[-v13];
  v14 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v393 = &v346[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v395 = &v346[-v18];
  v388 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v388 - 8) + 64);
  v20 = __chkstk_darwin(v388);
  v378 = &v346[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v383 = &v346[-v23];
  v24 = __chkstk_darwin(v22);
  v382 = &v346[-v25];
  v26 = __chkstk_darwin(v24);
  v384 = &v346[-v27];
  v28 = __chkstk_darwin(v26);
  v386 = &v346[-v29];
  v30 = __chkstk_darwin(v28);
  v387 = &v346[-v31];
  v32 = __chkstk_darwin(v30);
  v389 = &v346[-v33];
  v34 = __chkstk_darwin(v32);
  v390 = &v346[-v35];
  v36 = __chkstk_darwin(v34);
  v413 = &v346[-v37];
  __chkstk_darwin(v36);
  v418 = &v346[-v38];
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v391 = &v346[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = __chkstk_darwin(v42);
  v394 = &v346[-v45];
  v46 = __chkstk_darwin(v44);
  v415 = &v346[-v47];
  __chkstk_darwin(v46);
  v417 = &v346[-v48];
  v49 = type metadata accessor for UUID();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v406 = &v346[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = __chkstk_darwin(v52);
  v385 = &v346[-v55];
  __chkstk_darwin(v54);
  v57 = &v346[-v56];
  v58 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v59 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58 - 8);
  v61 = &v346[-v60];
  v425 = type metadata accessor for OwnedBeaconRecord();
  v426 = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v62 = sub_1000280DC(&v424);
  sub_100721C9C(a1, v62, type metadata accessor for OwnedBeaconRecord);
  v64 = v425;
  v63 = v426;
  sub_1000035D0(&v424, v425);
  v65 = v64;
  v66 = v410;
  (*(*(*(v63 + 8) + 8) + 32))(v65);
  sub_100A423AC(v57, v61);
  v67 = *(v50 + 8);
  v398 = v57;
  v416 = v49;
  v408 = v50 + 8;
  v407 = v67;
  v67(v57, v49);
  v68 = (*(v40 + 48))(v61, 1, v39);
  sub_10000B3A8(v61, &unk_101696900, &unk_10138B1E0);
  v69 = sub_1006C1A0C(&v424, v66);
  v70 = v69[2];
  v401 = v69;
  if (v70)
  {
    v377 = a3;
    v403 = 0;
    v402 = 0;
    v372 = 0;
    v412 = (v50 + 56);
    v357 = 2 * (v68 == 1);
    v356 = (v414 + 48);
    v355 = (v50 + 16);
    v375 = (v40 + 40);
    v411 = (v50 + 48);
    v366 = (v50 + 32);
    v414 = v40 + 8;
    v374 = (v40 + 32);
    v409 = (v40 + 16);
    v369 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
    v370 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
    v410 = SPBeaconTaskNameUnknown;
    v405 = SPBeaconTaskNameStartSharing;
    v400 = SPBeaconTaskNameStopSharing;
    v376 = SPBeaconTaskNameEnableLostMode;
    v373 = SPBeaconTaskNameDisableLostMode;
    v371 = SPBeaconTaskNamePlaySound;
    v368 = SPBeaconTaskNameStopSound;
    v365 = SPBeaconTaskNameBeginLeashing;
    v364 = SPBeaconTaskNameEndLeashing;
    v363 = SPBeaconTaskNameBeginBTFinding;
    v362 = SPBeaconTaskNameEndBTFinding;
    v361 = SPBeaconTaskNameConnect;
    v360 = SPBeaconTaskNameDisconnect;
    v359 = SPBeaconTaskNameRename;
    v358 = SPBeaconTaskNameBeginRanging;
    v354 = SPBeaconTaskNameEndRanging;
    v353 = SPBeaconTaskNameAccessoryFirmwareUpdate;
    v352 = SPBeaconTaskNameEnableNotifyWhenFound;
    v351 = SPBeaconTaskNameDisableNotifyWhenFound;
    v350 = SPBeaconTaskNameLocating;
    v71 = (v69 + 4);
    v367 = v420;
    v72 = 2;
    if (v66)
    {
      v73 = 2;
    }

    else
    {
      v73 = 0;
    }

    v399 = v73;
    if (v66)
    {
      v72 = 0;
    }

    v404 = v72;
    v74 = &_swiftEmptyDictionarySingleton;
    v75 = v418;
    while (1)
    {
      v78 = *v71;
      v423 = 2;
      v79 = v78;
      Date.init()();
      v422 = 0;
      v80 = *v412;
      (*v412)(v75, 1, 1, v416);
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
      if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
      {

LABEL_19:
        v92 = -1;
        goto LABEL_23;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v87 = v406;
      if (v86)
      {
        goto LABEL_19;
      }

      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;
      if (v88 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v90 == v91)
      {

LABEL_21:
        v94 = &v425;
LABEL_22:
        v92 = *(v94 - 32);
LABEL_23:
        v423 = v92;
        goto LABEL_24;
      }

      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v93)
      {
        goto LABEL_21;
      }

      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;
      if (v106 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v108 == v109)
      {

        v94 = &v422;
        goto LABEL_22;
      }

      v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v110)
      {
        v94 = &v422;
        goto LABEL_22;
      }

      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;
      if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
      {
      }

      else
      {
        v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v115 & 1) == 0)
        {
          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v130;
          if (v129 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v131 == v132)
          {

LABEL_46:
            v134 = v377;
            v135 = *(v377 + 280);
            v137 = v425;
            v136 = v426;
            sub_1000035D0(&v424, v425);
            v138 = v398;
            (*(*(*(v136 + 8) + 8) + 32))(v137);
            v139 = v393;
            sub_100ABD87C(v393);
            v407(v138, v416);
            v140 = type metadata accessor for LostModeRecord();
            LODWORD(v136) = (*(*(v140 - 8) + 48))(v139, 1, v140);
            sub_10000B3A8(v139, &unk_1016A99E0, &qword_1013A07B0);
            if (v136 == 1)
            {
              sub_10001F280(&v424, &aBlock);
              v141 = swift_allocObject();
              *(v141 + 16) = v134;
              sub_10000A748(&aBlock, v141 + 24);

              v142 = v392;
              unsafeFromAsyncTask<A>(_:)();

              v143 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
              if ((*(*(v143 - 8) + 48))(v142, 1, v143) == 1)
              {
                sub_10000B3A8(v142, &qword_1016A7840, &qword_1013B66F8);
                v423 = 0;
                goto LABEL_24;
              }

              (*v414)(v142, v39);
            }

LABEL_53:
            v92 = 2;
            goto LABEL_23;
          }

          v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v133)
          {
            goto LABEL_46;
          }

          v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v146 = v145;
          if (v144 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v146 == v147)
          {

LABEL_55:
            v149 = v425;
            v150 = v426;
            sub_1000035D0(&v424, v425);
            if ((*(v150 + 152))(v149, v150))
            {
              v151 = *(v377 + v370);
              v153 = v425;
              v152 = v426;
              sub_1000035D0(&v424, v425);
              v154 = v398;
              v155 = (*(*(*(v152 + 8) + 8) + 32))(v153);
              v349 = v346;
              v156 = *(v151 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v155);
              *&v346[-16] = v151;
              *&v346[-8] = v154;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v157 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v372 = v157;
              v158 = aBlock;
              v407(v154, v416);
              v423 = [v158 state];
              v159 = [v158 lastUpdated];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v160 = v417;
              (*v375)();
              v422 = [v158 error];

              v161 = [v158 commandIdentifier];
              if (v161)
              {
                v162 = v390;
                v163 = v161;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v164 = 0;
                v158 = v163;
                v165 = v162;
                v160 = v417;
              }

              else
              {
                v164 = 1;
                v165 = v390;
              }

              v197 = v165;
              v198 = v164;
LABEL_71:
              v80(v197, v198, 1, v416);
              sub_10002311C(v165, v418, &qword_1016980D0, &unk_10138F3B0);
              v95 = v160;
              goto LABEL_25;
            }

            v166 = v425;
            v167 = v426;
            sub_1000035D0(&v424, v425);
            v168 = (*(v167 + 88))(v166, v167);
            if (v168)
            {
              v169 = *(v377 + 280);
              v171 = v425;
              v170 = v426;
              sub_1000035D0(&v424, v425);
              v172 = v398;
              v173 = (*(*(*(v170 + 8) + 8) + 32))(v171);
              v349 = v346;
              v174 = *(v169 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
              __chkstk_darwin(v173);
              *&v346[-16] = v169;
              *&v346[-8] = v172;
              v175 = v387;
              v176 = v372;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v372 = v176;
              v177 = v389;
              sub_1000D2AD8(v175, v389, &qword_1016980D0, &unk_10138F3B0);
              v178 = v416;
              v407(v172, v416);
              v179 = *v411;
              if ((*v411)(v177, 1, v178) == 1)
              {
                v349 = v39;
                v180 = v178;
                v182 = v425;
                v181 = v426;
                sub_1000035D0(&v424, v425);
                v183 = *(*(*(v181 + 8) + 8) + 32);
                v348 = v179;
                v184 = v385;
                v183(v182);
                v185 = v389;
                v186 = v180;
                v39 = v349;
                v187 = (v348)(v389, 1, v186);
                if (v187 != 1)
                {
                  v187 = sub_10000B3A8(v185, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v184 = v385;
                v187 = (*v366)(v385, v177, v178);
              }

              v349 = v346;
              v207 = *(*(v377 + v370) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v187);
              *&v346[-16] = v208;
              *&v346[-8] = v184;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v209 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v372 = v209;
              v210 = aBlock;
              v423 = [aBlock state];
              v211 = [v210 lastUpdated];
              v212 = v391;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v375)(v417, v212, v39);
              v422 = [v210 error];

              v213 = [v210 commandIdentifier];
              if (v213)
              {
                v214 = v386;
                v215 = v213;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v216 = 0;
              }

              else
              {
                v216 = 1;
                v214 = v386;
              }

              v234 = v416;
              v407(v184, v416);
              v80(v214, v216, 1, v234);
              v235 = v214;
            }

            else
            {
              v349 = v346;
              v192 = v377;
              v193 = *(v377 + v369);
              __chkstk_darwin(v168);
              *&v346[-16] = v192;
              *&v346[-8] = &v424;
              sub_1000BC4D4(&qword_1016A7848, &qword_1013B6710);
              v194 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v195 = v420[0];
              if (LOBYTE(v420[0]) != 255)
              {
                v196 = aBlock;
                if ((v420[0] & 1) == 0)
                {
                  v348 = *(&aBlock + 1);
                  LODWORD(v349) = LOBYTE(v420[0]);
                  v240 = *(aBlock + 56);
                  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                  OS_dispatch_queue.sync<A>(execute:)();
                  v372 = v194;
                  v241 = aBlock;
                  v423 = [aBlock state];
                  v242 = [v241 lastUpdated];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v160 = v417;
                  (*v375)();
                  v422 = [v241 error];

                  v243 = [v241 commandIdentifier];
                  if (v243)
                  {
                    v244 = v382;
                    v245 = v243;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v347 = 0;
                    v241 = v245;
                    v165 = v244;
                    v160 = v417;
                  }

                  else
                  {
                    v347 = 1;
                    v165 = v382;
                  }

                  sub_10071EB9C(v196, v348, v349);
                  v197 = v165;
                  v198 = v347;
                  goto LABEL_71;
                }

                v372 = v194;
                if (aBlock)
                {
                  swift_errorRetain();
                  sub_10071EB9C(v196, *(&v196 + 1), v195);
                  v422 = v196;
                  v423 = 3;
                }

                else
                {
                  sub_10071EB9C(0, *(&aBlock + 1), v420[0]);
                  v422 = 0;
                  v423 = 2;
                }

                v263 = v418;
                sub_10000B3A8(v418, &qword_1016980D0, &unk_10138F3B0);
                v80(v263, 1, 1, v416);
                goto LABEL_24;
              }

              v348 = *(v192 + 280);
              v372 = v194;
              v218 = v425;
              v217 = v426;
              sub_1000035D0(&v424, v425);
              v219 = v398;
              v220 = (*(*(*(v217 + 8) + 8) + 32))(v218);
              v349 = v346;
              v221 = *&v348[OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer];
              __chkstk_darwin(v220);
              *&v346[-16] = v222;
              *&v346[-8] = v219;
              v223 = v387;
              v224 = v372;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v372 = v224;
              v225 = v384;
              sub_1000D2AD8(v223, v384, &qword_1016980D0, &unk_10138F3B0);
              v226 = v416;
              v407(v398, v416);
              v349 = *v411;
              if ((v349)(v225, 1, v226) == 1)
              {
                v227 = v39;
                v228 = v226;
                v230 = v425;
                v229 = v426;
                sub_1000035D0(&v424, v425);
                (*(*(*(v229 + 8) + 8) + 32))(v230);
                v231 = v384;
                v232 = v228;
                v39 = v227;
                v87 = v406;
                v233 = (v349)(v384, 1, v232);
                if (v233 != 1)
                {
                  v233 = sub_10000B3A8(v231, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v233 = (*v366)(v87, v225, v226);
              }

              v349 = v346;
              v246 = *(*(v377 + v370) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v233);
              *&v346[-16] = v247;
              *&v346[-8] = v87;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v248 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v249 = aBlock;
              v250 = sub_1006C22E8(&v424);
              v372 = v248;
              if (v250)
              {
                type metadata accessor for SPBeaconSharingError(0);
                *&v421 = 19;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
                _BridgedStoredNSError.init(_:userInfo:)();
                v349 = aBlock;
                v251 = 3;
              }

              else
              {
                v251 = [v249 state];
                v349 = 0;
              }

              v423 = v251;
              v252 = v249;
              v253 = [v249 lastUpdated];
              v254 = v391;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v375)(v417, v254, v39);
              v255 = v349;
              if (!v349)
              {
                v255 = [v252 error];
              }

              v422 = v255;
              swift_errorRetain();

              v348 = v252;
              v256 = [v252 commandIdentifier];
              if (v256)
              {
                v257 = v383;
                v258 = v256;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v259 = 0;
              }

              else
              {
                v259 = 1;
                v257 = v383;
              }

              v262 = v416;
              v407(v87, v416);
              v80(v257, v259, 1, v262);
              v235 = v257;
            }

            goto LABEL_100;
          }

          v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v148)
          {
            goto LABEL_55;
          }

          v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v190 = v189;
          if (v188 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v190 == v191)
          {

LABEL_73:
            v200 = v377;
            v201 = *(v377 + v369);
            sub_10001F280(&v424, &v421);
            v202 = swift_allocObject();
            v202[2] = v200;
            sub_10000A748(&v421, (v202 + 3));
            v202[8] = &v423;
            v202[9] = &v422;
            v203 = v417;
            v202[10] = v418;
            v202[11] = v203;

            sub_1000BB27C(v403);
            v204 = swift_allocObject();
            v403 = sub_100721E68;
            *(v204 + 16) = sub_100721E68;
            *(v204 + 24) = v202;
            v420[2] = sub_10040B9F8;
            v420[3] = v204;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v420[0] = sub_10013FE14;
            v420[1] = &unk_10162E478;
            v205 = _Block_copy(&aBlock);

            dispatch_sync(v201, v205);
            _Block_release(v205);
            LOBYTE(v200) = swift_isEscapingClosureAtFileLocation();

            if (v200)
            {
              __break(1u);
              return result;
            }

            v402 = v202;
            goto LABEL_24;
          }

          v199 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v199)
          {
            goto LABEL_73;
          }

          v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v238 = v237;
          if (v236 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v238 == v239)
          {
LABEL_85:

            goto LABEL_97;
          }

          v260 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v260)
          {
            goto LABEL_97;
          }

          v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v266 = v265;
          if (v264 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v266 == v267)
          {
            goto LABEL_85;
          }

          v268 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v268)
          {
LABEL_97:
            sub_10001F280(&v424, &aBlock);
            v261 = swift_allocObject();
            *(v261 + 16) = v377;
            sub_10000A748(&aBlock, v261 + 24);
            type metadata accessor for BeaconTaskState(0);

            unsafeFromAsyncTask<A>(_:)();

            v92 = aBlock;
            goto LABEL_23;
          }

          v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v271 = v270;
          if (v269 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v271 != v272)
          {
            v273 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v273)
            {
              goto LABEL_53;
            }

            v274 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v276 = v275;
            if (v274 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v276 != v277)
            {
              v278 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v278)
              {
                goto LABEL_53;
              }

              v279 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v281 = v280;
              if (v279 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v281 != v282)
              {
                v283 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v283)
                {
                  goto LABEL_53;
                }

                v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v286 = v285;
                if (v284 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v286 != v287)
                {
                  v288 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v288)
                  {
                    goto LABEL_53;
                  }

                  v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v291 = v290;
                  if (v289 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v291 != v292)
                  {
                    v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v293)
                    {
                      goto LABEL_53;
                    }

                    v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v296 = v295;
                    if (v294 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v296 == v297)
                    {
LABEL_126:

                      goto LABEL_131;
                    }

                    v298 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v298)
                    {
                      goto LABEL_131;
                    }

                    v299 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v301 = v300;
                    if (v299 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v301 == v302)
                    {
                      goto LABEL_126;
                    }

                    v303 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v303)
                    {
LABEL_131:
                      v423 = 2;
                      if ((sub_1006C22E8(&v424) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      type metadata accessor for SPBeaconSharingError(0);
                      *&v421 = 19;
                      sub_100032898(_swiftEmptyArrayStorage);
                      sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
                      _BridgedStoredNSError.init(_:userInfo:)();
                      v422 = aBlock;

                      v92 = 3;
                      goto LABEL_23;
                    }

                    v304 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v306 = v305;
                    if (v304 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v306 == v307)
                    {

LABEL_137:
                      if (!*(v377 + 176))
                      {
                        goto LABEL_24;
                      }

                      v309 = *(v377 + 176);
                      v310 = v426;
                      v349 = v425;
                      sub_1000035D0(&v424, v425);
                      v311 = *(*(v310 + 8) + 8);
                      v348 = *(v311 + 32);

                      v312 = (v348)(v349, v311);
                      v349 = v346;
                      v313 = *(v309 + 24);
                      __chkstk_darwin(v312);
                      v314 = v398;
                      *&v346[-16] = v309;
                      *&v346[-8] = v314;
                      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                      v315 = v372;
                      OS_dispatch_queue.sync<A>(execute:)();
                      v372 = v315;

                      v316 = aBlock;
                      v407(v314, v416);
                      v423 = [v316 state];
                      v317 = [v316 lastUpdated];
                      v318 = v391;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v375)(v417, v318, v39);
                      v422 = [v316 error];

                      v319 = [v316 commandIdentifier];
                      if (v319)
                      {
                        v320 = v319;
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v321 = 0;
                        v316 = v320;
                      }

                      else
                      {
                        v321 = 1;
                      }

                      v326 = v378;
                      v80(v378, v321, 1, v416);
                      v235 = v326;
LABEL_100:
                      sub_10002311C(v235, v418, &qword_1016980D0, &unk_10138F3B0);
                      goto LABEL_24;
                    }

                    v308 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v308)
                    {
                      goto LABEL_137;
                    }

                    v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v324 = v323;
                    if (v322 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v324 == v325)
                    {

LABEL_146:
                      v328 = *(v377 + 280);
                      v330 = v425;
                      v329 = v426;
                      sub_1000035D0(&v424, v425);
                      v331 = v398;
                      (*(*(*(v329 + 8) + 8) + 32))(v330);
                      v332 = v381;
                      sub_10003A604(v381);
                      v407(v331, v416);
                      if ((*v356)(v332, 1, found) != 1)
                      {
                        v333 = v379;
                        sub_10002AB74(v381, v379, type metadata accessor for NotifyWhenFoundRecord);
                        v334 = v387;
                        v335 = v416;
                        (*v355)(v387, &v333[*(found + 20)], v416);
                        sub_100721D04(v333, type metadata accessor for NotifyWhenFoundRecord);
                        v80(v334, 0, 1, v335);
                        sub_10002311C(v334, v418, &qword_1016980D0, &unk_10138F3B0);
                        v423 = 0;
                        goto LABEL_24;
                      }

                      sub_10000B3A8(v381, &qword_10169E328, &unk_10139D740);
                      goto LABEL_53;
                    }

                    v327 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v327)
                    {
                      goto LABEL_146;
                    }

                    v336 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v338 = v337;
                    if (v336 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v338 != v339)
                    {
                      v340 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v340 & 1) == 0)
                      {
                        v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v343 = v342;
                        if (v341 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v343 == v344)
                        {
                        }

                        else
                        {
                          v345 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v345 & 1) == 0)
                          {
                            goto LABEL_24;
                          }
                        }

                        v94 = &v389;
                        goto LABEL_22;
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_53;
        }
      }

      v116 = v377;
      v117 = *(v377 + 280);
      v119 = v425;
      v118 = v426;
      sub_1000035D0(&v424, v425);
      v120 = v398;
      (*(*(*(v118 + 8) + 8) + 32))(v119);
      v121 = v395;
      sub_100ABD87C(v395);
      v407(v120, v416);
      v122 = type metadata accessor for LostModeRecord();
      LODWORD(v118) = (*(*(v122 - 8) + 48))(v121, 1, v122) == 1;
      sub_10000B3A8(v121, &unk_1016A99E0, &qword_1013A07B0);
      v423 = 2 * v118;
      sub_10001F280(&v424, &aBlock);
      v123 = swift_allocObject();
      *(v123 + 16) = v116;
      sub_10000A748(&aBlock, v123 + 24);

      v124 = v396;
      unsafeFromAsyncTask<A>(_:)();

      v125 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
      if ((*(*(v125 - 8) + 48))(v124, 1, v125) != 1)
      {
        v126 = *(v124 + *(v125 + 48));
        v127 = v394;
        (*v374)(v394, v124, v39);
        v128 = v417;
        (*v375)(v417, v127, v39);
        v95 = v128;
        v423 = v126;
        goto LABEL_25;
      }

      sub_10000B3A8(v124, &qword_1016A7840, &qword_1013B66F8);
LABEL_24:
      v95 = v417;
LABEL_25:
      (*v409)(v415, v95, v39);
      v97 = v422;
      v96 = v423;
      v98 = v79;
      swift_errorRetain();
      v99.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (v97)
      {
        v100 = _convertErrorToNSError(_:)();
      }

      else
      {
        v100 = 0;
      }

      v101 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v98 lastUpdated:v99.super.isa error:v100 state:v96];

      v102 = *v414;
      v103 = v39;
      (*v414)(v415, v39);
      v104 = v413;
      sub_1000D2A70(v418, v413, &qword_1016980D0, &unk_10138F3B0);
      v105 = v416;
      if ((*v411)(v104, 1, v416) == 1)
      {
        v76.super.isa = 0;
      }

      else
      {
        v76.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v407(v104, v105);
      }

      [v101 setCommandIdentifier:v76.super.isa];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v74;
      sub_100FFF5A8(v101, v98, isUniquelyReferenced_nonNull_native);

      v74 = aBlock;
      v75 = v418;
      sub_10000B3A8(v418, &qword_1016980D0, &unk_10138F3B0);

      v39 = v103;
      v102(v417, v103);
      ++v71;
      if (!--v70)
      {
        goto LABEL_158;
      }
    }
  }

  v403 = 0;
  v402 = 0;
  v74 = &_swiftEmptyDictionarySingleton;
LABEL_158:

  sub_1000BB27C(v403);
  sub_100007BAC(&v424);
  return v74;
}

uint64_t sub_1006F5C7C(uint64_t a1, int a2, uint64_t a3)
{
  LODWORD(v410) = a2;
  v5 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v381 = &v346[-v7];
  found = type metadata accessor for NotifyWhenFoundRecord();
  v414 = *(found - 8);
  v8 = *(v414 + 64);
  __chkstk_darwin(found);
  v379 = &v346[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v397 = sub_1000BC4D4(&qword_1016A7840, &qword_1013B66F8);
  v10 = *(*(v397 - 8) + 64);
  v11 = __chkstk_darwin(v397);
  v392 = &v346[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v11);
  v396 = &v346[-v13];
  v14 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v15 = *(*(v14 - 8) + 64);
  v16 = __chkstk_darwin(v14 - 8);
  v393 = &v346[-((v17 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v16);
  v395 = &v346[-v18];
  v388 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v19 = *(*(v388 - 8) + 64);
  v20 = __chkstk_darwin(v388);
  v378 = &v346[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v22 = __chkstk_darwin(v20);
  v383 = &v346[-v23];
  v24 = __chkstk_darwin(v22);
  v382 = &v346[-v25];
  v26 = __chkstk_darwin(v24);
  v384 = &v346[-v27];
  v28 = __chkstk_darwin(v26);
  v386 = &v346[-v29];
  v30 = __chkstk_darwin(v28);
  v387 = &v346[-v31];
  v32 = __chkstk_darwin(v30);
  v389 = &v346[-v33];
  v34 = __chkstk_darwin(v32);
  v390 = &v346[-v35];
  v36 = __chkstk_darwin(v34);
  v413 = &v346[-v37];
  __chkstk_darwin(v36);
  v418 = &v346[-v38];
  v39 = type metadata accessor for Date();
  v40 = *(v39 - 8);
  v41 = *(v40 + 64);
  v42 = __chkstk_darwin(v39);
  v391 = &v346[-((v43 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v44 = __chkstk_darwin(v42);
  v394 = &v346[-v45];
  v46 = __chkstk_darwin(v44);
  v415 = &v346[-v47];
  __chkstk_darwin(v46);
  v417 = &v346[-v48];
  v49 = type metadata accessor for UUID();
  v50 = *(v49 - 8);
  v51 = *(v50 + 64);
  v52 = __chkstk_darwin(v49);
  v406 = &v346[-((v53 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v54 = __chkstk_darwin(v52);
  v385 = &v346[-v55];
  __chkstk_darwin(v54);
  v57 = &v346[-v56];
  v58 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v59 = *(*(v58 - 8) + 64);
  __chkstk_darwin(v58 - 8);
  v61 = &v346[-v60];
  v425 = type metadata accessor for LocalFindableAccessoryRecord();
  v426 = sub_100003E8C(&qword_1016AA560, type metadata accessor for LocalFindableAccessoryRecord);
  v62 = sub_1000280DC(&v424);
  sub_100721C9C(a1, v62, type metadata accessor for LocalFindableAccessoryRecord);
  v64 = v425;
  v63 = v426;
  sub_1000035D0(&v424, v425);
  v65 = v64;
  v66 = v410;
  (*(*(*(v63 + 8) + 8) + 32))(v65);
  sub_100A423AC(v57, v61);
  v67 = *(v50 + 8);
  v398 = v57;
  v416 = v49;
  v408 = v50 + 8;
  v407 = v67;
  v67(v57, v49);
  v68 = (*(v40 + 48))(v61, 1, v39);
  sub_10000B3A8(v61, &unk_101696900, &unk_10138B1E0);
  v69 = sub_1006C1A0C(&v424, v66);
  v70 = v69[2];
  v401 = v69;
  if (v70)
  {
    v377 = a3;
    v403 = 0;
    v402 = 0;
    v372 = 0;
    v412 = (v50 + 56);
    v357 = 2 * (v68 == 1);
    v356 = (v414 + 48);
    v355 = (v50 + 16);
    v375 = (v40 + 40);
    v411 = (v50 + 48);
    v366 = (v50 + 32);
    v414 = v40 + 8;
    v374 = (v40 + 32);
    v409 = (v40 + 16);
    v369 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
    v370 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
    v410 = SPBeaconTaskNameUnknown;
    v405 = SPBeaconTaskNameStartSharing;
    v400 = SPBeaconTaskNameStopSharing;
    v376 = SPBeaconTaskNameEnableLostMode;
    v373 = SPBeaconTaskNameDisableLostMode;
    v371 = SPBeaconTaskNamePlaySound;
    v368 = SPBeaconTaskNameStopSound;
    v365 = SPBeaconTaskNameBeginLeashing;
    v364 = SPBeaconTaskNameEndLeashing;
    v363 = SPBeaconTaskNameBeginBTFinding;
    v362 = SPBeaconTaskNameEndBTFinding;
    v361 = SPBeaconTaskNameConnect;
    v360 = SPBeaconTaskNameDisconnect;
    v359 = SPBeaconTaskNameRename;
    v358 = SPBeaconTaskNameBeginRanging;
    v354 = SPBeaconTaskNameEndRanging;
    v353 = SPBeaconTaskNameAccessoryFirmwareUpdate;
    v352 = SPBeaconTaskNameEnableNotifyWhenFound;
    v351 = SPBeaconTaskNameDisableNotifyWhenFound;
    v350 = SPBeaconTaskNameLocating;
    v71 = (v69 + 4);
    v367 = v420;
    v72 = 2;
    if (v66)
    {
      v73 = 2;
    }

    else
    {
      v73 = 0;
    }

    v399 = v73;
    if (v66)
    {
      v72 = 0;
    }

    v404 = v72;
    v74 = &_swiftEmptyDictionarySingleton;
    v75 = v418;
    while (1)
    {
      v78 = *v71;
      v423 = 2;
      v79 = v78;
      Date.init()();
      v422 = 0;
      v80 = *v412;
      (*v412)(v75, 1, 1, v416);
      v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v83 = v82;
      if (v81 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v83 == v84)
      {

LABEL_19:
        v92 = -1;
        goto LABEL_23;
      }

      v86 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v87 = v406;
      if (v86)
      {
        goto LABEL_19;
      }

      v88 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v90 = v89;
      if (v88 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v90 == v91)
      {

LABEL_21:
        v94 = &v425;
LABEL_22:
        v92 = *(v94 - 32);
LABEL_23:
        v423 = v92;
        goto LABEL_24;
      }

      v93 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v93)
      {
        goto LABEL_21;
      }

      v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v108 = v107;
      if (v106 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v108 == v109)
      {

        v94 = &v422;
        goto LABEL_22;
      }

      v110 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v110)
      {
        v94 = &v422;
        goto LABEL_22;
      }

      v111 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v113 = v112;
      if (v111 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v113 == v114)
      {
      }

      else
      {
        v115 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v115 & 1) == 0)
        {
          v129 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v131 = v130;
          if (v129 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v131 == v132)
          {

LABEL_46:
            v134 = v377;
            v135 = *(v377 + 280);
            v137 = v425;
            v136 = v426;
            sub_1000035D0(&v424, v425);
            v138 = v398;
            (*(*(*(v136 + 8) + 8) + 32))(v137);
            v139 = v393;
            sub_100ABD87C(v393);
            v407(v138, v416);
            v140 = type metadata accessor for LostModeRecord();
            LODWORD(v136) = (*(*(v140 - 8) + 48))(v139, 1, v140);
            sub_10000B3A8(v139, &unk_1016A99E0, &qword_1013A07B0);
            if (v136 == 1)
            {
              sub_10001F280(&v424, &aBlock);
              v141 = swift_allocObject();
              *(v141 + 16) = v134;
              sub_10000A748(&aBlock, v141 + 24);

              v142 = v392;
              unsafeFromAsyncTask<A>(_:)();

              v143 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
              if ((*(*(v143 - 8) + 48))(v142, 1, v143) == 1)
              {
                sub_10000B3A8(v142, &qword_1016A7840, &qword_1013B66F8);
                v423 = 0;
                goto LABEL_24;
              }

              (*v414)(v142, v39);
            }

LABEL_53:
            v92 = 2;
            goto LABEL_23;
          }

          v133 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v133)
          {
            goto LABEL_46;
          }

          v144 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v146 = v145;
          if (v144 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v146 == v147)
          {

LABEL_55:
            v149 = v425;
            v150 = v426;
            sub_1000035D0(&v424, v425);
            if ((*(v150 + 152))(v149, v150))
            {
              v151 = *(v377 + v370);
              v153 = v425;
              v152 = v426;
              sub_1000035D0(&v424, v425);
              v154 = v398;
              v155 = (*(*(*(v152 + 8) + 8) + 32))(v153);
              v349 = v346;
              v156 = *(v151 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v155);
              *&v346[-16] = v151;
              *&v346[-8] = v154;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v157 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v372 = v157;
              v158 = aBlock;
              v407(v154, v416);
              v423 = [v158 state];
              v159 = [v158 lastUpdated];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v160 = v417;
              (*v375)();
              v422 = [v158 error];

              v161 = [v158 commandIdentifier];
              if (v161)
              {
                v162 = v390;
                v163 = v161;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v164 = 0;
                v158 = v163;
                v165 = v162;
                v160 = v417;
              }

              else
              {
                v164 = 1;
                v165 = v390;
              }

              v197 = v165;
              v198 = v164;
LABEL_71:
              v80(v197, v198, 1, v416);
              sub_10002311C(v165, v418, &qword_1016980D0, &unk_10138F3B0);
              v95 = v160;
              goto LABEL_25;
            }

            v166 = v425;
            v167 = v426;
            sub_1000035D0(&v424, v425);
            v168 = (*(v167 + 88))(v166, v167);
            if (v168)
            {
              v169 = *(v377 + 280);
              v171 = v425;
              v170 = v426;
              sub_1000035D0(&v424, v425);
              v172 = v398;
              v173 = (*(*(*(v170 + 8) + 8) + 32))(v171);
              v349 = v346;
              v174 = *(v169 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
              __chkstk_darwin(v173);
              *&v346[-16] = v169;
              *&v346[-8] = v172;
              v175 = v387;
              v176 = v372;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v372 = v176;
              v177 = v389;
              sub_1000D2AD8(v175, v389, &qword_1016980D0, &unk_10138F3B0);
              v178 = v416;
              v407(v172, v416);
              v179 = *v411;
              if ((*v411)(v177, 1, v178) == 1)
              {
                v349 = v39;
                v180 = v178;
                v182 = v425;
                v181 = v426;
                sub_1000035D0(&v424, v425);
                v183 = *(*(*(v181 + 8) + 8) + 32);
                v348 = v179;
                v184 = v385;
                v183(v182);
                v185 = v389;
                v186 = v180;
                v39 = v349;
                v187 = (v348)(v389, 1, v186);
                if (v187 != 1)
                {
                  v187 = sub_10000B3A8(v185, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v184 = v385;
                v187 = (*v366)(v385, v177, v178);
              }

              v349 = v346;
              v207 = *(*(v377 + v370) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v187);
              *&v346[-16] = v208;
              *&v346[-8] = v184;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v209 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v372 = v209;
              v210 = aBlock;
              v423 = [aBlock state];
              v211 = [v210 lastUpdated];
              v212 = v391;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v375)(v417, v212, v39);
              v422 = [v210 error];

              v213 = [v210 commandIdentifier];
              if (v213)
              {
                v214 = v386;
                v215 = v213;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v216 = 0;
              }

              else
              {
                v216 = 1;
                v214 = v386;
              }

              v234 = v416;
              v407(v184, v416);
              v80(v214, v216, 1, v234);
              v235 = v214;
            }

            else
            {
              v349 = v346;
              v192 = v377;
              v193 = *(v377 + v369);
              __chkstk_darwin(v168);
              *&v346[-16] = v192;
              *&v346[-8] = &v424;
              sub_1000BC4D4(&qword_1016A7848, &qword_1013B6710);
              v194 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v195 = v420[0];
              if (LOBYTE(v420[0]) != 255)
              {
                v196 = aBlock;
                if ((v420[0] & 1) == 0)
                {
                  v348 = *(&aBlock + 1);
                  LODWORD(v349) = LOBYTE(v420[0]);
                  v240 = *(aBlock + 56);
                  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                  OS_dispatch_queue.sync<A>(execute:)();
                  v372 = v194;
                  v241 = aBlock;
                  v423 = [aBlock state];
                  v242 = [v241 lastUpdated];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v160 = v417;
                  (*v375)();
                  v422 = [v241 error];

                  v243 = [v241 commandIdentifier];
                  if (v243)
                  {
                    v244 = v382;
                    v245 = v243;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v347 = 0;
                    v241 = v245;
                    v165 = v244;
                    v160 = v417;
                  }

                  else
                  {
                    v347 = 1;
                    v165 = v382;
                  }

                  sub_10071EB9C(v196, v348, v349);
                  v197 = v165;
                  v198 = v347;
                  goto LABEL_71;
                }

                v372 = v194;
                if (aBlock)
                {
                  swift_errorRetain();
                  sub_10071EB9C(v196, *(&v196 + 1), v195);
                  v422 = v196;
                  v423 = 3;
                }

                else
                {
                  sub_10071EB9C(0, *(&aBlock + 1), v420[0]);
                  v422 = 0;
                  v423 = 2;
                }

                v263 = v418;
                sub_10000B3A8(v418, &qword_1016980D0, &unk_10138F3B0);
                v80(v263, 1, 1, v416);
                goto LABEL_24;
              }

              v348 = *(v192 + 280);
              v372 = v194;
              v218 = v425;
              v217 = v426;
              sub_1000035D0(&v424, v425);
              v219 = v398;
              v220 = (*(*(*(v217 + 8) + 8) + 32))(v218);
              v349 = v346;
              v221 = *&v348[OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer];
              __chkstk_darwin(v220);
              *&v346[-16] = v222;
              *&v346[-8] = v219;
              v223 = v387;
              v224 = v372;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v372 = v224;
              v225 = v384;
              sub_1000D2AD8(v223, v384, &qword_1016980D0, &unk_10138F3B0);
              v226 = v416;
              v407(v398, v416);
              v349 = *v411;
              if ((v349)(v225, 1, v226) == 1)
              {
                v227 = v39;
                v228 = v226;
                v230 = v425;
                v229 = v426;
                sub_1000035D0(&v424, v425);
                (*(*(*(v229 + 8) + 8) + 32))(v230);
                v231 = v384;
                v232 = v228;
                v39 = v227;
                v87 = v406;
                v233 = (v349)(v384, 1, v232);
                if (v233 != 1)
                {
                  v233 = sub_10000B3A8(v231, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v233 = (*v366)(v87, v225, v226);
              }

              v349 = v346;
              v246 = *(*(v377 + v370) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v233);
              *&v346[-16] = v247;
              *&v346[-8] = v87;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v248 = v372;
              OS_dispatch_queue.sync<A>(execute:)();
              v249 = aBlock;
              v250 = sub_1006C22E8(&v424);
              v372 = v248;
              if (v250)
              {
                type metadata accessor for SPBeaconSharingError(0);
                *&v421 = 19;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
                _BridgedStoredNSError.init(_:userInfo:)();
                v349 = aBlock;
                v251 = 3;
              }

              else
              {
                v251 = [v249 state];
                v349 = 0;
              }

              v423 = v251;
              v252 = v249;
              v253 = [v249 lastUpdated];
              v254 = v391;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v375)(v417, v254, v39);
              v255 = v349;
              if (!v349)
              {
                v255 = [v252 error];
              }

              v422 = v255;
              swift_errorRetain();

              v348 = v252;
              v256 = [v252 commandIdentifier];
              if (v256)
              {
                v257 = v383;
                v258 = v256;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v259 = 0;
              }

              else
              {
                v259 = 1;
                v257 = v383;
              }

              v262 = v416;
              v407(v87, v416);
              v80(v257, v259, 1, v262);
              v235 = v257;
            }

            goto LABEL_100;
          }

          v148 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v148)
          {
            goto LABEL_55;
          }

          v188 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v190 = v189;
          if (v188 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v190 == v191)
          {

LABEL_73:
            v200 = v377;
            v201 = *(v377 + v369);
            sub_10001F280(&v424, &v421);
            v202 = swift_allocObject();
            v202[2] = v200;
            sub_10000A748(&v421, (v202 + 3));
            v202[8] = &v423;
            v202[9] = &v422;
            v203 = v417;
            v202[10] = v418;
            v202[11] = v203;

            sub_1000BB27C(v403);
            v204 = swift_allocObject();
            v403 = sub_100721E68;
            *(v204 + 16) = sub_100721E68;
            *(v204 + 24) = v202;
            v420[2] = sub_10040B9F8;
            v420[3] = v204;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v420[0] = sub_10013FE14;
            v420[1] = &unk_10162E568;
            v205 = _Block_copy(&aBlock);

            dispatch_sync(v201, v205);
            _Block_release(v205);
            LOBYTE(v200) = swift_isEscapingClosureAtFileLocation();

            if (v200)
            {
              __break(1u);
              return result;
            }

            v402 = v202;
            goto LABEL_24;
          }

          v199 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v199)
          {
            goto LABEL_73;
          }

          v236 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v238 = v237;
          if (v236 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v238 == v239)
          {
LABEL_85:

            goto LABEL_97;
          }

          v260 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v260)
          {
            goto LABEL_97;
          }

          v264 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v266 = v265;
          if (v264 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v266 == v267)
          {
            goto LABEL_85;
          }

          v268 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v268)
          {
LABEL_97:
            sub_10001F280(&v424, &aBlock);
            v261 = swift_allocObject();
            *(v261 + 16) = v377;
            sub_10000A748(&aBlock, v261 + 24);
            type metadata accessor for BeaconTaskState(0);

            unsafeFromAsyncTask<A>(_:)();

            v92 = aBlock;
            goto LABEL_23;
          }

          v269 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v271 = v270;
          if (v269 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v271 != v272)
          {
            v273 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v273)
            {
              goto LABEL_53;
            }

            v274 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v276 = v275;
            if (v274 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v276 != v277)
            {
              v278 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v278)
              {
                goto LABEL_53;
              }

              v279 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v281 = v280;
              if (v279 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v281 != v282)
              {
                v283 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v283)
                {
                  goto LABEL_53;
                }

                v284 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v286 = v285;
                if (v284 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v286 != v287)
                {
                  v288 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v288)
                  {
                    goto LABEL_53;
                  }

                  v289 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v291 = v290;
                  if (v289 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v291 != v292)
                  {
                    v293 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v293)
                    {
                      goto LABEL_53;
                    }

                    v294 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v296 = v295;
                    if (v294 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v296 == v297)
                    {
LABEL_126:

                      goto LABEL_131;
                    }

                    v298 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v298)
                    {
                      goto LABEL_131;
                    }

                    v299 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v301 = v300;
                    if (v299 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v301 == v302)
                    {
                      goto LABEL_126;
                    }

                    v303 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v303)
                    {
LABEL_131:
                      v423 = 2;
                      if ((sub_1006C22E8(&v424) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      type metadata accessor for SPBeaconSharingError(0);
                      *&v421 = 19;
                      sub_100032898(_swiftEmptyArrayStorage);
                      sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
                      _BridgedStoredNSError.init(_:userInfo:)();
                      v422 = aBlock;

                      v92 = 3;
                      goto LABEL_23;
                    }

                    v304 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v306 = v305;
                    if (v304 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v306 == v307)
                    {

LABEL_137:
                      if (!*(v377 + 176))
                      {
                        goto LABEL_24;
                      }

                      v309 = *(v377 + 176);
                      v310 = v426;
                      v349 = v425;
                      sub_1000035D0(&v424, v425);
                      v311 = *(*(v310 + 8) + 8);
                      v348 = *(v311 + 32);

                      v312 = (v348)(v349, v311);
                      v349 = v346;
                      v313 = *(v309 + 24);
                      __chkstk_darwin(v312);
                      v314 = v398;
                      *&v346[-16] = v309;
                      *&v346[-8] = v314;
                      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                      v315 = v372;
                      OS_dispatch_queue.sync<A>(execute:)();
                      v372 = v315;

                      v316 = aBlock;
                      v407(v314, v416);
                      v423 = [v316 state];
                      v317 = [v316 lastUpdated];
                      v318 = v391;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v375)(v417, v318, v39);
                      v422 = [v316 error];

                      v319 = [v316 commandIdentifier];
                      if (v319)
                      {
                        v320 = v319;
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v321 = 0;
                        v316 = v320;
                      }

                      else
                      {
                        v321 = 1;
                      }

                      v326 = v378;
                      v80(v378, v321, 1, v416);
                      v235 = v326;
LABEL_100:
                      sub_10002311C(v235, v418, &qword_1016980D0, &unk_10138F3B0);
                      goto LABEL_24;
                    }

                    v308 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v308)
                    {
                      goto LABEL_137;
                    }

                    v322 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v324 = v323;
                    if (v322 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v324 == v325)
                    {

LABEL_146:
                      v328 = *(v377 + 280);
                      v330 = v425;
                      v329 = v426;
                      sub_1000035D0(&v424, v425);
                      v331 = v398;
                      (*(*(*(v329 + 8) + 8) + 32))(v330);
                      v332 = v381;
                      sub_10003A604(v381);
                      v407(v331, v416);
                      if ((*v356)(v332, 1, found) != 1)
                      {
                        v333 = v379;
                        sub_10002AB74(v381, v379, type metadata accessor for NotifyWhenFoundRecord);
                        v334 = v387;
                        v335 = v416;
                        (*v355)(v387, &v333[*(found + 20)], v416);
                        sub_100721D04(v333, type metadata accessor for NotifyWhenFoundRecord);
                        v80(v334, 0, 1, v335);
                        sub_10002311C(v334, v418, &qword_1016980D0, &unk_10138F3B0);
                        v423 = 0;
                        goto LABEL_24;
                      }

                      sub_10000B3A8(v381, &qword_10169E328, &unk_10139D740);
                      goto LABEL_53;
                    }

                    v327 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v327)
                    {
                      goto LABEL_146;
                    }

                    v336 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v338 = v337;
                    if (v336 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v338 != v339)
                    {
                      v340 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v340 & 1) == 0)
                      {
                        v341 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v343 = v342;
                        if (v341 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v343 == v344)
                        {
                        }

                        else
                        {
                          v345 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v345 & 1) == 0)
                          {
                            goto LABEL_24;
                          }
                        }

                        v94 = &v389;
                        goto LABEL_22;
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_53;
        }
      }

      v116 = v377;
      v117 = *(v377 + 280);
      v119 = v425;
      v118 = v426;
      sub_1000035D0(&v424, v425);
      v120 = v398;
      (*(*(*(v118 + 8) + 8) + 32))(v119);
      v121 = v395;
      sub_100ABD87C(v395);
      v407(v120, v416);
      v122 = type metadata accessor for LostModeRecord();
      LODWORD(v118) = (*(*(v122 - 8) + 48))(v121, 1, v122) == 1;
      sub_10000B3A8(v121, &unk_1016A99E0, &qword_1013A07B0);
      v423 = 2 * v118;
      sub_10001F280(&v424, &aBlock);
      v123 = swift_allocObject();
      *(v123 + 16) = v116;
      sub_10000A748(&aBlock, v123 + 24);

      v124 = v396;
      unsafeFromAsyncTask<A>(_:)();

      v125 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
      if ((*(*(v125 - 8) + 48))(v124, 1, v125) != 1)
      {
        v126 = *(v124 + *(v125 + 48));
        v127 = v394;
        (*v374)(v394, v124, v39);
        v128 = v417;
        (*v375)(v417, v127, v39);
        v95 = v128;
        v423 = v126;
        goto LABEL_25;
      }

      sub_10000B3A8(v124, &qword_1016A7840, &qword_1013B66F8);
LABEL_24:
      v95 = v417;
LABEL_25:
      (*v409)(v415, v95, v39);
      v97 = v422;
      v96 = v423;
      v98 = v79;
      swift_errorRetain();
      v99.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (v97)
      {
        v100 = _convertErrorToNSError(_:)();
      }

      else
      {
        v100 = 0;
      }

      v101 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v98 lastUpdated:v99.super.isa error:v100 state:v96];

      v102 = *v414;
      v103 = v39;
      (*v414)(v415, v39);
      v104 = v413;
      sub_1000D2A70(v418, v413, &qword_1016980D0, &unk_10138F3B0);
      v105 = v416;
      if ((*v411)(v104, 1, v416) == 1)
      {
        v76.super.isa = 0;
      }

      else
      {
        v76.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v407(v104, v105);
      }

      [v101 setCommandIdentifier:v76.super.isa];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v74;
      sub_100FFF5A8(v101, v98, isUniquelyReferenced_nonNull_native);

      v74 = aBlock;
      v75 = v418;
      sub_10000B3A8(v418, &qword_1016980D0, &unk_10138F3B0);

      v39 = v103;
      v102(v417, v103);
      ++v71;
      if (!--v70)
      {
        goto LABEL_158;
      }
    }
  }

  v403 = 0;
  v402 = 0;
  v74 = &_swiftEmptyDictionarySingleton;
LABEL_158:

  sub_1000BB27C(v403);
  sub_100007BAC(&v424);
  return v74;
}

uint64_t sub_1006F8B58(uint64_t a1, int a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v406 = a3;
  LODWORD(v413) = a2;
  v8 = sub_1000BC4D4(&qword_10169E328, &unk_10139D740);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v383 = &v349[-v10];
  found = type metadata accessor for NotifyWhenFoundRecord();
  v417 = *(found - 8);
  v11 = *(v417 + 64);
  __chkstk_darwin(found);
  v381 = &v349[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v399 = sub_1000BC4D4(&qword_1016A7840, &qword_1013B66F8);
  v13 = *(*(v399 - 8) + 64);
  v14 = __chkstk_darwin(v399);
  v394 = &v349[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v14);
  v398 = &v349[-v16];
  v17 = sub_1000BC4D4(&unk_1016A99E0, &qword_1013A07B0);
  v18 = *(*(v17 - 8) + 64);
  v19 = __chkstk_darwin(v17 - 8);
  v395 = &v349[-((v20 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v19);
  v397 = &v349[-v21];
  v390 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v22 = *(*(v390 - 8) + 64);
  v23 = __chkstk_darwin(v390);
  v380 = &v349[-((v24 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v25 = __chkstk_darwin(v23);
  v385 = &v349[-v26];
  v27 = __chkstk_darwin(v25);
  v384 = &v349[-v28];
  v29 = __chkstk_darwin(v27);
  v386 = &v349[-v30];
  v31 = __chkstk_darwin(v29);
  v388 = &v349[-v32];
  v33 = __chkstk_darwin(v31);
  v389 = &v349[-v34];
  v35 = __chkstk_darwin(v33);
  v391 = &v349[-v36];
  v37 = __chkstk_darwin(v35);
  v392 = &v349[-v38];
  v39 = __chkstk_darwin(v37);
  v416 = &v349[-v40];
  __chkstk_darwin(v39);
  v421 = &v349[-v41];
  v42 = type metadata accessor for Date();
  v43 = *(v42 - 8);
  v44 = *(v43 + 64);
  v45 = __chkstk_darwin(v42);
  v393 = &v349[-((v46 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v47 = __chkstk_darwin(v45);
  v396 = &v349[-v48];
  v49 = __chkstk_darwin(v47);
  v418 = &v349[-v50];
  __chkstk_darwin(v49);
  v420 = &v349[-v51];
  v52 = type metadata accessor for UUID();
  v53 = *(v52 - 8);
  v54 = *(v53 + 64);
  v55 = __chkstk_darwin(v52);
  v409 = &v349[-((v56 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v57 = __chkstk_darwin(v55);
  v387 = &v349[-v58];
  __chkstk_darwin(v57);
  v60 = &v349[-v59];
  v61 = sub_1000BC4D4(&unk_101696900, &unk_10138B1E0);
  v62 = *(*(v61 - 8) + 64);
  __chkstk_darwin(v61 - 8);
  v64 = &v349[-v63];
  v429 = a4;
  v430 = a5;
  v65 = sub_1000280DC(&v428);
  (*(*(a4 - 8) + 16))(v65, a1, a4);
  v67 = v429;
  v66 = v430;
  sub_1000035D0(&v428, v429);
  v68 = v67;
  v69 = v413;
  (*(*(*(v66 + 8) + 8) + 32))(v68);
  sub_100A423AC(v60, v64);
  v70 = *(v53 + 8);
  v400 = v60;
  v419 = v52;
  v411 = v53 + 8;
  v410 = v70;
  v70(v60, v52);
  v71 = (*(v43 + 48))(v64, 1, v42);
  sub_10000B3A8(v64, &unk_101696900, &unk_10138B1E0);
  v72 = sub_1006C1A0C(&v428, v69);
  v73 = v72[2];
  v403 = v72;
  if (v73)
  {
    v405 = 0;
    v404 = 0;
    v375 = 0;
    v415 = (v53 + 56);
    v360 = 2 * (v71 == 1);
    v359 = (v417 + 48);
    v358 = (v53 + 16);
    v378 = (v43 + 40);
    v414 = (v53 + 48);
    v369 = (v53 + 32);
    v417 = v43 + 8;
    v377 = (v43 + 32);
    v412 = (v43 + 16);
    v372 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_playbackCoordinatorModQueue;
    v373 = OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_soundPlaybackManager;
    v413 = SPBeaconTaskNameUnknown;
    v408 = SPBeaconTaskNameStartSharing;
    v402 = SPBeaconTaskNameStopSharing;
    v379 = SPBeaconTaskNameEnableLostMode;
    v376 = SPBeaconTaskNameDisableLostMode;
    v374 = SPBeaconTaskNamePlaySound;
    v371 = SPBeaconTaskNameStopSound;
    v368 = SPBeaconTaskNameBeginLeashing;
    v367 = SPBeaconTaskNameEndLeashing;
    v366 = SPBeaconTaskNameBeginBTFinding;
    v365 = SPBeaconTaskNameEndBTFinding;
    v364 = SPBeaconTaskNameConnect;
    v363 = SPBeaconTaskNameDisconnect;
    v362 = SPBeaconTaskNameRename;
    v361 = SPBeaconTaskNameBeginRanging;
    v357 = SPBeaconTaskNameEndRanging;
    v356 = SPBeaconTaskNameAccessoryFirmwareUpdate;
    v355 = SPBeaconTaskNameEnableNotifyWhenFound;
    v354 = SPBeaconTaskNameDisableNotifyWhenFound;
    v353 = SPBeaconTaskNameLocating;
    v74 = (v72 + 4);
    v370 = v423;
    v75 = 2;
    if (v69)
    {
      v76 = 2;
    }

    else
    {
      v76 = 0;
    }

    v401 = v76;
    if (v69)
    {
      v75 = 0;
    }

    v407 = v75;
    v77 = _swiftEmptyDictionarySingleton;
    v78 = v421;
    while (1)
    {
      v81 = *v74;
      v427 = 2;
      v82 = v81;
      Date.init()();
      v426 = 0;
      v83 = *v415;
      (*v415)(v78, 1, 1, v419);
      v84 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v86 = v85;
      if (v84 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v86 == v87)
      {

LABEL_19:
        v95 = -1;
        goto LABEL_23;
      }

      v89 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v90 = v409;
      if (v89)
      {
        goto LABEL_19;
      }

      v91 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v93 = v92;
      if (v91 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v93 == v94)
      {

LABEL_21:
        v97 = &v429;
LABEL_22:
        v95 = *(v97 - 32);
LABEL_23:
        v427 = v95;
        goto LABEL_24;
      }

      v96 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v96)
      {
        goto LABEL_21;
      }

      v109 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v111 = v110;
      if (v109 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v111 == v112)
      {

        v97 = &v425;
        goto LABEL_22;
      }

      v113 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v113)
      {
        v97 = &v425;
        goto LABEL_22;
      }

      v114 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v116 = v115;
      if (v114 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v116 == v117)
      {
      }

      else
      {
        v118 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v118 & 1) == 0)
        {
          v132 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v134 = v133;
          if (v132 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v134 == v135)
          {

LABEL_46:
            v137 = v406;
            v138 = *(v406 + 280);
            v140 = v429;
            v139 = v430;
            sub_1000035D0(&v428, v429);
            v141 = v400;
            (*(*(*(v139 + 8) + 8) + 32))(v140);
            v142 = v395;
            sub_100ABD87C(v395);
            v410(v141, v419);
            v143 = type metadata accessor for LostModeRecord();
            LODWORD(v139) = (*(*(v143 - 8) + 48))(v142, 1, v143);
            sub_10000B3A8(v142, &unk_1016A99E0, &qword_1013A07B0);
            if (v139 == 1)
            {
              sub_10001F280(&v428, &aBlock);
              v144 = swift_allocObject();
              *(v144 + 16) = v137;
              sub_10000A748(&aBlock, v144 + 24);

              v145 = v394;
              unsafeFromAsyncTask<A>(_:)();

              v146 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
              if ((*(*(v146 - 8) + 48))(v145, 1, v146) == 1)
              {
                sub_10000B3A8(v145, &qword_1016A7840, &qword_1013B66F8);
                v427 = 0;
                goto LABEL_24;
              }

              (*v417)(v145, v42);
            }

LABEL_53:
            v95 = 2;
            goto LABEL_23;
          }

          v136 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v136)
          {
            goto LABEL_46;
          }

          v147 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v149 = v148;
          if (v147 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v149 == v150)
          {

LABEL_55:
            v152 = v429;
            v153 = v430;
            sub_1000035D0(&v428, v429);
            if ((*(v153 + 152))(v152, v153))
            {
              v154 = *(v406 + v373);
              v156 = v429;
              v155 = v430;
              sub_1000035D0(&v428, v429);
              v157 = v400;
              v158 = (*(*(*(v155 + 8) + 8) + 32))(v156);
              v352 = v349;
              v159 = *(v154 + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v158);
              *&v349[-16] = v154;
              *&v349[-8] = v157;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v160 = v375;
              OS_dispatch_queue.sync<A>(execute:)();
              v375 = v160;
              v161 = aBlock;
              v410(v157, v419);
              v427 = [v161 state];
              v162 = [v161 lastUpdated];
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              v163 = v420;
              (*v378)();
              v426 = [v161 error];

              v164 = [v161 commandIdentifier];
              if (v164)
              {
                v165 = v392;
                v166 = v164;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v167 = 0;
                v161 = v166;
                v168 = v165;
                v163 = v420;
              }

              else
              {
                v167 = 1;
                v168 = v392;
              }

              v200 = v168;
              v201 = v167;
LABEL_71:
              v83(v200, v201, 1, v419);
              sub_10002311C(v168, v421, &qword_1016980D0, &unk_10138F3B0);
              v98 = v163;
              goto LABEL_25;
            }

            v169 = v429;
            v170 = v430;
            sub_1000035D0(&v428, v429);
            v171 = (*(v170 + 88))(v169, v170);
            if (v171)
            {
              v172 = *(v406 + 280);
              v174 = v429;
              v173 = v430;
              sub_1000035D0(&v428, v429);
              v175 = v400;
              v176 = (*(*(*(v173 + 8) + 8) + 32))(v174);
              v352 = v349;
              v177 = *(v172 + OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer);
              __chkstk_darwin(v176);
              *&v349[-16] = v172;
              *&v349[-8] = v175;
              v178 = v389;
              v179 = v375;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v375 = v179;
              v180 = v391;
              sub_1000D2AD8(v178, v391, &qword_1016980D0, &unk_10138F3B0);
              v181 = v419;
              v410(v175, v419);
              v182 = *v414;
              if ((*v414)(v180, 1, v181) == 1)
              {
                v352 = v42;
                v183 = v181;
                v185 = v429;
                v184 = v430;
                sub_1000035D0(&v428, v429);
                v186 = *(*(*(v184 + 8) + 8) + 32);
                v351 = v182;
                v187 = v387;
                v186(v185);
                v188 = v391;
                v189 = v183;
                v42 = v352;
                v190 = (v351)(v391, 1, v189);
                if (v190 != 1)
                {
                  v190 = sub_10000B3A8(v188, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v187 = v387;
                v190 = (*v369)(v387, v180, v181);
              }

              v352 = v349;
              v210 = *(*(v406 + v373) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v190);
              *&v349[-16] = v211;
              *&v349[-8] = v187;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v212 = v375;
              OS_dispatch_queue.sync<A>(execute:)();
              v375 = v212;
              v213 = aBlock;
              v427 = [aBlock state];
              v214 = [v213 lastUpdated];
              v215 = v393;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v378)(v420, v215, v42);
              v426 = [v213 error];

              v216 = [v213 commandIdentifier];
              if (v216)
              {
                v217 = v388;
                v218 = v216;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v219 = 0;
              }

              else
              {
                v219 = 1;
                v217 = v388;
              }

              v237 = v419;
              v410(v187, v419);
              v83(v217, v219, 1, v237);
              v238 = v217;
            }

            else
            {
              v352 = v349;
              v195 = v406;
              v196 = *(v406 + v372);
              __chkstk_darwin(v171);
              *&v349[-16] = v195;
              *&v349[-8] = &v428;
              sub_1000BC4D4(&qword_1016A7848, &qword_1013B6710);
              v197 = v375;
              OS_dispatch_queue.sync<A>(execute:)();
              v198 = v423[0];
              if (LOBYTE(v423[0]) != 255)
              {
                v199 = aBlock;
                if ((v423[0] & 1) == 0)
                {
                  v351 = *(&aBlock + 1);
                  LODWORD(v352) = LOBYTE(v423[0]);
                  v243 = *(aBlock + 56);
                  sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                  OS_dispatch_queue.sync<A>(execute:)();
                  v375 = v197;
                  v244 = aBlock;
                  v427 = [aBlock state];
                  v245 = [v244 lastUpdated];
                  static Date._unconditionallyBridgeFromObjectiveC(_:)();

                  v163 = v420;
                  (*v378)();
                  v426 = [v244 error];

                  v246 = [v244 commandIdentifier];
                  if (v246)
                  {
                    v247 = v384;
                    v248 = v246;
                    static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                    v350 = 0;
                    v244 = v248;
                    v168 = v247;
                    v163 = v420;
                  }

                  else
                  {
                    v350 = 1;
                    v168 = v384;
                  }

                  sub_10071EB9C(v199, v351, v352);
                  v200 = v168;
                  v201 = v350;
                  goto LABEL_71;
                }

                v375 = v197;
                if (aBlock)
                {
                  swift_errorRetain();
                  sub_10071EB9C(v199, *(&v199 + 1), v198);
                  v426 = v199;
                  v427 = 3;
                }

                else
                {
                  sub_10071EB9C(0, *(&aBlock + 1), v423[0]);
                  v426 = 0;
                  v427 = 2;
                }

                v266 = v421;
                sub_10000B3A8(v421, &qword_1016980D0, &unk_10138F3B0);
                v83(v266, 1, 1, v419);
                goto LABEL_24;
              }

              v351 = *(v195 + 280);
              v375 = v197;
              v221 = v429;
              v220 = v430;
              sub_1000035D0(&v428, v429);
              v222 = v400;
              v223 = (*(*(*(v220 + 8) + 8) + 32))(v221);
              v352 = v349;
              v224 = *&v351[OBJC_IVAR____TtC12searchpartyd11BeaconStore_cachedBeaconRecordsQueueSynchronizer];
              __chkstk_darwin(v223);
              *&v349[-16] = v225;
              *&v349[-8] = v222;
              v226 = v389;
              v227 = v375;
              QueueSynchronizer.conditionalSync<A>(_:)();
              v375 = v227;
              v228 = v386;
              sub_1000D2AD8(v226, v386, &qword_1016980D0, &unk_10138F3B0);
              v229 = v419;
              v410(v400, v419);
              v352 = *v414;
              if ((v352)(v228, 1, v229) == 1)
              {
                v230 = v42;
                v231 = v229;
                v233 = v429;
                v232 = v430;
                sub_1000035D0(&v428, v429);
                (*(*(*(v232 + 8) + 8) + 32))(v233);
                v234 = v386;
                v235 = v231;
                v42 = v230;
                v90 = v409;
                v236 = (v352)(v386, 1, v235);
                if (v236 != 1)
                {
                  v236 = sub_10000B3A8(v234, &qword_1016980D0, &unk_10138F3B0);
                }
              }

              else
              {
                v236 = (*v369)(v90, v228, v229);
              }

              v352 = v349;
              v249 = *(*(v406 + v373) + OBJC_IVAR____TtC12searchpartyd20SoundPlaybackManager_commandQueue);
              __chkstk_darwin(v236);
              *&v349[-16] = v250;
              *&v349[-8] = v90;
              sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
              v251 = v375;
              OS_dispatch_queue.sync<A>(execute:)();
              v252 = aBlock;
              v253 = sub_1006C22E8(&v428);
              v375 = v251;
              if (v253)
              {
                type metadata accessor for SPBeaconSharingError(0);
                *&v424 = 19;
                sub_100032898(_swiftEmptyArrayStorage);
                sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
                _BridgedStoredNSError.init(_:userInfo:)();
                v352 = aBlock;
                v254 = 3;
              }

              else
              {
                v254 = [v252 state];
                v352 = 0;
              }

              v427 = v254;
              v255 = v252;
              v256 = [v252 lastUpdated];
              v257 = v393;
              static Date._unconditionallyBridgeFromObjectiveC(_:)();

              (*v378)(v420, v257, v42);
              v258 = v352;
              if (!v352)
              {
                v258 = [v255 error];
              }

              v426 = v258;
              swift_errorRetain();

              v351 = v255;
              v259 = [v255 commandIdentifier];
              if (v259)
              {
                v260 = v385;
                v261 = v259;
                static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                v262 = 0;
              }

              else
              {
                v262 = 1;
                v260 = v385;
              }

              v265 = v419;
              v410(v90, v419);
              v83(v260, v262, 1, v265);
              v238 = v260;
            }

            goto LABEL_100;
          }

          v151 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v151)
          {
            goto LABEL_55;
          }

          v191 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v193 = v192;
          if (v191 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v193 == v194)
          {

LABEL_73:
            v203 = v406;
            v204 = *(v406 + v372);
            sub_10001F280(&v428, &v424);
            v205 = swift_allocObject();
            v205[2] = v203;
            sub_10000A748(&v424, (v205 + 3));
            v205[8] = &v427;
            v205[9] = &v426;
            v206 = v420;
            v205[10] = v421;
            v205[11] = v206;

            sub_1000BB27C(v405);
            v207 = swift_allocObject();
            v405 = sub_100721E68;
            *(v207 + 16) = sub_100721E68;
            *(v207 + 24) = v205;
            v423[2] = sub_10040B9F8;
            v423[3] = v207;
            *&aBlock = _NSConcreteStackBlock;
            *(&aBlock + 1) = 1107296256;
            v423[0] = sub_10013FE14;
            v423[1] = &unk_10162F0F8;
            v208 = _Block_copy(&aBlock);

            dispatch_sync(v204, v208);
            _Block_release(v208);
            LOBYTE(v203) = swift_isEscapingClosureAtFileLocation();

            if (v203)
            {
              __break(1u);
              return result;
            }

            v404 = v205;
            goto LABEL_24;
          }

          v202 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v202)
          {
            goto LABEL_73;
          }

          v239 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v241 = v240;
          if (v239 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v241 == v242)
          {
LABEL_85:

            goto LABEL_97;
          }

          v263 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v263)
          {
            goto LABEL_97;
          }

          v267 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v269 = v268;
          if (v267 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v269 == v270)
          {
            goto LABEL_85;
          }

          v271 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v271)
          {
LABEL_97:
            sub_10001F280(&v428, &aBlock);
            v264 = swift_allocObject();
            *(v264 + 16) = v406;
            sub_10000A748(&aBlock, v264 + 24);
            type metadata accessor for BeaconTaskState(0);

            unsafeFromAsyncTask<A>(_:)();

            v95 = aBlock;
            goto LABEL_23;
          }

          v272 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v274 = v273;
          if (v272 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v274 != v275)
          {
            v276 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v276)
            {
              goto LABEL_53;
            }

            v277 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v279 = v278;
            if (v277 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v279 != v280)
            {
              v281 = _stringCompareWithSmolCheck(_:_:expecting:)();

              if (v281)
              {
                goto LABEL_53;
              }

              v282 = static String._unconditionallyBridgeFromObjectiveC(_:)();
              v284 = v283;
              if (v282 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v284 != v285)
              {
                v286 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v286)
                {
                  goto LABEL_53;
                }

                v287 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                v289 = v288;
                if (v287 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v289 != v290)
                {
                  v291 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v291)
                  {
                    goto LABEL_53;
                  }

                  v292 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                  v294 = v293;
                  if (v292 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v294 != v295)
                  {
                    v296 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v296)
                    {
                      goto LABEL_53;
                    }

                    v297 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v299 = v298;
                    if (v297 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v299 == v300)
                    {
LABEL_126:

                      goto LABEL_131;
                    }

                    v301 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v301)
                    {
                      goto LABEL_131;
                    }

                    v302 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v304 = v303;
                    if (v302 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v304 == v305)
                    {
                      goto LABEL_126;
                    }

                    v306 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v306)
                    {
LABEL_131:
                      v427 = 2;
                      if ((sub_1006C22E8(&v428) & 1) == 0)
                      {
                        goto LABEL_24;
                      }

                      type metadata accessor for SPBeaconSharingError(0);
                      *&v424 = 19;
                      sub_100032898(_swiftEmptyArrayStorage);
                      sub_100003E8C(&qword_101696340, type metadata accessor for SPBeaconSharingError);
                      _BridgedStoredNSError.init(_:userInfo:)();
                      v426 = aBlock;

                      v95 = 3;
                      goto LABEL_23;
                    }

                    v307 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v309 = v308;
                    if (v307 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v309 == v310)
                    {

LABEL_137:
                      if (!*(v406 + 176))
                      {
                        goto LABEL_24;
                      }

                      v312 = *(v406 + 176);
                      v313 = v430;
                      v352 = v429;
                      sub_1000035D0(&v428, v429);
                      v314 = *(*(v313 + 8) + 8);
                      v351 = *(v314 + 32);

                      v315 = (v351)(v352, v314);
                      v352 = v349;
                      v316 = *(v312 + 24);
                      __chkstk_darwin(v315);
                      v317 = v400;
                      *&v349[-16] = v312;
                      *&v349[-8] = v317;
                      sub_100008BB8(0, &unk_1016AF850, SPBeaconTaskInformation_ptr);
                      v318 = v375;
                      OS_dispatch_queue.sync<A>(execute:)();
                      v375 = v318;

                      v319 = aBlock;
                      v410(v317, v419);
                      v427 = [v319 state];
                      v320 = [v319 lastUpdated];
                      v321 = v393;
                      static Date._unconditionallyBridgeFromObjectiveC(_:)();

                      (*v378)(v420, v321, v42);
                      v426 = [v319 error];

                      v322 = [v319 commandIdentifier];
                      if (v322)
                      {
                        v323 = v322;
                        static UUID._unconditionallyBridgeFromObjectiveC(_:)();

                        v324 = 0;
                        v319 = v323;
                      }

                      else
                      {
                        v324 = 1;
                      }

                      v329 = v380;
                      v83(v380, v324, 1, v419);
                      v238 = v329;
LABEL_100:
                      sub_10002311C(v238, v421, &qword_1016980D0, &unk_10138F3B0);
                      goto LABEL_24;
                    }

                    v311 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v311)
                    {
                      goto LABEL_137;
                    }

                    v325 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v327 = v326;
                    if (v325 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v327 == v328)
                    {

LABEL_146:
                      v331 = *(v406 + 280);
                      v333 = v429;
                      v332 = v430;
                      sub_1000035D0(&v428, v429);
                      v334 = v400;
                      (*(*(*(v332 + 8) + 8) + 32))(v333);
                      v335 = v383;
                      sub_10003A604(v383);
                      v410(v334, v419);
                      if ((*v359)(v335, 1, found) != 1)
                      {
                        v336 = v381;
                        sub_10002AB74(v383, v381, type metadata accessor for NotifyWhenFoundRecord);
                        v337 = v389;
                        v338 = v419;
                        (*v358)(v389, &v336[*(found + 20)], v419);
                        sub_100721D04(v336, type metadata accessor for NotifyWhenFoundRecord);
                        v83(v337, 0, 1, v338);
                        sub_10002311C(v337, v421, &qword_1016980D0, &unk_10138F3B0);
                        v427 = 0;
                        goto LABEL_24;
                      }

                      sub_10000B3A8(v383, &qword_10169E328, &unk_10139D740);
                      goto LABEL_53;
                    }

                    v330 = _stringCompareWithSmolCheck(_:_:expecting:)();

                    if (v330)
                    {
                      goto LABEL_146;
                    }

                    v339 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                    v341 = v340;
                    if (v339 != static String._unconditionallyBridgeFromObjectiveC(_:)() || v341 != v342)
                    {
                      v343 = _stringCompareWithSmolCheck(_:_:expecting:)();

                      if ((v343 & 1) == 0)
                      {
                        v344 = static String._unconditionallyBridgeFromObjectiveC(_:)();
                        v346 = v345;
                        if (v344 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v346 == v347)
                        {
                        }

                        else
                        {
                          v348 = _stringCompareWithSmolCheck(_:_:expecting:)();

                          if ((v348 & 1) == 0)
                          {
                            goto LABEL_24;
                          }
                        }

                        v97 = &v392;
                        goto LABEL_22;
                      }

                      goto LABEL_53;
                    }
                  }
                }
              }
            }
          }

          goto LABEL_53;
        }
      }

      v119 = v406;
      v120 = *(v406 + 280);
      v122 = v429;
      v121 = v430;
      sub_1000035D0(&v428, v429);
      v123 = v400;
      (*(*(*(v121 + 8) + 8) + 32))(v122);
      v124 = v397;
      sub_100ABD87C(v397);
      v410(v123, v419);
      v125 = type metadata accessor for LostModeRecord();
      LODWORD(v121) = (*(*(v125 - 8) + 48))(v124, 1, v125) == 1;
      sub_10000B3A8(v124, &unk_1016A99E0, &qword_1013A07B0);
      v427 = 2 * v121;
      sub_10001F280(&v428, &aBlock);
      v126 = swift_allocObject();
      *(v126 + 16) = v119;
      sub_10000A748(&aBlock, v126 + 24);

      v127 = v398;
      unsafeFromAsyncTask<A>(_:)();

      v128 = sub_1000BC4D4(&qword_1016A7850, &qword_1013B6728);
      if ((*(*(v128 - 8) + 48))(v127, 1, v128) != 1)
      {
        v129 = *(v127 + *(v128 + 48));
        v130 = v396;
        (*v377)(v396, v127, v42);
        v131 = v420;
        (*v378)(v420, v130, v42);
        v98 = v131;
        v427 = v129;
        goto LABEL_25;
      }

      sub_10000B3A8(v127, &qword_1016A7840, &qword_1013B66F8);
LABEL_24:
      v98 = v420;
LABEL_25:
      (*v412)(v418, v98, v42);
      v100 = v426;
      v99 = v427;
      v101 = v82;
      swift_errorRetain();
      v102.super.isa = Date._bridgeToObjectiveC()().super.isa;
      if (v100)
      {
        v103 = _convertErrorToNSError(_:)();
      }

      else
      {
        v103 = 0;
      }

      v104 = [objc_allocWithZone(SPBeaconTaskInformation) initWithName:v101 lastUpdated:v102.super.isa error:v103 state:v99];

      v105 = *v417;
      v106 = v42;
      (*v417)(v418, v42);
      v107 = v416;
      sub_1000D2A70(v421, v416, &qword_1016980D0, &unk_10138F3B0);
      v108 = v419;
      if ((*v414)(v107, 1, v419) == 1)
      {
        v79.super.isa = 0;
      }

      else
      {
        v79.super.isa = UUID._bridgeToObjectiveC()().super.isa;
        v410(v107, v108);
      }

      [v104 setCommandIdentifier:v79.super.isa];

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&aBlock = v77;
      sub_100FFF5A8(v104, v101, isUniquelyReferenced_nonNull_native);

      v77 = aBlock;
      v78 = v421;
      sub_10000B3A8(v421, &qword_1016980D0, &unk_10138F3B0);

      v42 = v106;
      v105(v420, v106);
      ++v74;
      if (!--v73)
      {
        goto LABEL_158;
      }
    }
  }

  v405 = 0;
  v404 = 0;
  v77 = _swiftEmptyDictionarySingleton;
LABEL_158:

  sub_1000BB27C(v405);
  sub_100007BAC(&v428);
  return v77;
}

id sub_1006FBA08(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v167 = &v158 - v6;
  v7 = type metadata accessor for OwnedBeaconRecord();
  v166 = *(v7 - 8);
  v8 = *(v166 + 64);
  __chkstk_darwin(v7);
  v165 = &v158 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v11 = *(*(v10 - 8) + 64);
  __chkstk_darwin(v10 - 8);
  v163 = &v158 - v12;
  v162 = type metadata accessor for OwnedBeaconGroup(0);
  v161 = *(v162 - 8);
  v13 = *(v161 + 64);
  __chkstk_darwin(v162);
  v160 = &v158 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v18 = &v158 - v17;
  v19 = type metadata accessor for UUID();
  v20 = *(v19 - 8);
  v169 = v19;
  v170 = v20;
  v21 = *(v20 + 64);
  v22 = __chkstk_darwin(v19);
  v164 = &v158 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v22);
  v168 = &v158 - v24;
  v25 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v26 = *(*(v25 - 8) + 64);
  __chkstk_darwin(v25 - 8);
  v28 = &v158 - v27;
  v29 = type metadata accessor for BeaconProductInfoRecord();
  v30 = *(v29 - 8);
  v31 = *(v30 + 64);
  __chkstk_darwin(v29);
  v33 = &v158 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v175[3] = v7;
  v175[4] = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v34 = sub_1000280DC(v175);
  sub_100721C9C(a1, v34, type metadata accessor for OwnedBeaconRecord);
  v35 = *(a2 + 280);
  v171 = v7;
  sub_100AC1584(v34 + *(v7 + 20), v28);
  if ((*(v30 + 48))(v28, 1, v29) == 1)
  {
    sub_10000B3A8(v28, &unk_1016AF8C0, &unk_1013A07A0);
    if (sub_1000322C8())
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v36 = type metadata accessor for Logger();
      sub_1000076D4(v36, qword_10177B780);
      sub_10001F280(v175, v173);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v172 = v40;
        *v39 = 141558275;
        *(v39 + 4) = 1752392040;
        *(v39 + 12) = 2081;
        v41 = sub_1000035D0(v173, v174);
        v42 = v170;
        v44 = v168;
        v43 = v169;
        (*(v170 + 16))(v168, &v41[v171[5]], v169);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v45 = dispatch thunk of CustomStringConvertible.description.getter();
        v47 = v46;
        (*(v42 + 8))(v44, v43);
        sub_100007BAC(v173);
        v48 = sub_1000136BC(v45, v47, &v172);

        *(v39 + 14) = v48;
        v49 = "Can't monitor beacon: %{private,mask.hash}s due to: accessory beacon but missing product info!";
LABEL_25:
        _os_log_impl(&_mh_execute_header, v37, v38, v49, v39, 0x16u);
        sub_100007BAC(v40);

        goto LABEL_61;
      }

      goto LABEL_59;
    }
  }

  else
  {
    sub_10002AB74(v28, v33, type metadata accessor for BeaconProductInfoRecord);
    if ((sub_1000322C8() & 1) != 0 && v33[*(v29 + 36)] == 1)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v50 = type metadata accessor for Logger();
      sub_1000076D4(v50, qword_10177B780);
      sub_10001F280(v175, v173);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v172 = v54;
        *v53 = 141558275;
        *(v53 + 4) = 1752392040;
        *(v53 + 12) = 2081;
        v55 = sub_1000035D0(v173, v174);
        v56 = v170;
        v58 = v168;
        v57 = v169;
        (*(v170 + 16))(v168, &v55[v171[5]], v169);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v59 = dispatch thunk of CustomStringConvertible.description.getter();
        v61 = v60;
        (*(v56 + 8))(v58, v57);
        sub_100007BAC(v173);
        v62 = sub_1000136BC(v59, v61, &v172);

        *(v53 + 14) = v62;
        _os_log_impl(&_mh_execute_header, v51, v52, "Can't monitor beacon: %{private,mask.hash}s due to: hidden accessory.", v53, 0x16u);
        sub_100007BAC(v54);

        v63 = type metadata accessor for BeaconProductInfoRecord;
        v64 = v33;
LABEL_13:
        sub_100721D04(v64, v63);
LABEL_61:
        v121 = 0;
        goto LABEL_62;
      }

      v96 = type metadata accessor for BeaconProductInfoRecord;
      v97 = v33;
LABEL_37:
      sub_100721D04(v97, v96);
LABEL_60:
      sub_100007BAC(v173);
      goto LABEL_61;
    }

    sub_100721D04(v33, type metadata accessor for BeaconProductInfoRecord);
  }

  if ((sub_1006FD510(v34, a2) & 1) == 0)
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v74 = type metadata accessor for Logger();
    sub_1000076D4(v74, qword_10177B780);
    sub_10001F280(v175, v173);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v172 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v75 = sub_1000035D0(v173, v174);
      v76 = v170;
      v78 = v168;
      v77 = v169;
      (*(v170 + 16))(v168, &v75[v171[5]], v169);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v79 = dispatch thunk of CustomStringConvertible.description.getter();
      v81 = v80;
      (*(v76 + 8))(v78, v77);
      sub_100007BAC(v173);
      v82 = sub_1000136BC(v79, v81, &v172);

      *(v39 + 14) = v82;
      v49 = "Can't monitor beacon: %{private,mask.hash}s due to: unsupported beacon.";
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  if (sub_100DDE094())
  {
    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    sub_1000076D4(v65, qword_10177B780);
    sub_10001F280(v175, v173);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v172 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v66 = sub_1000035D0(v173, v174);
      v67 = v170;
      v69 = v168;
      v68 = v169;
      (*(v170 + 16))(v168, &v66[v171[5]], v169);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v70 = dispatch thunk of CustomStringConvertible.description.getter();
      v72 = v71;
      (*(v67 + 8))(v69, v68);
      sub_100007BAC(v173);
      v73 = sub_1000136BC(v70, v72, &v172);

      *(v39 + 14) = v73;
      v49 = "Can't monitor beacon: %{private,mask.hash}s due to: this device.";
      goto LABEL_25;
    }

    goto LABEL_59;
  }

  v83 = *(*(a2 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_bluetoothCommunicatorCoordinator) + 64);

  CurrentValueSubject.value.getter();

  v159 = v173[0];
  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v84 = qword_10177C218;
  v85 = objc_opt_self();
  v86 = [v85 sharedInstance];
  v87 = [v86 isInternalBuild];

  if ((v87 & 1) != 0 && (v88 = String._bridgeToObjectiveC()(), v89 = [v84 BOOLForKey:v88], v88, v89))
  {
    v90 = [v85 sharedInstance];
    v91 = [v90 isInternalBuild];
  }

  else
  {
    v91 = 0;
  }

  v92 = v171;
  v93 = sub_100E0EA64(*(v34 + v171[16]), *(v34 + v171[17]));
  v94 = v170;
  if (v93)
  {
    if (!((v159 > 1) | v91 & 1))
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v98 = type metadata accessor for Logger();
      sub_1000076D4(v98, qword_10177B780);
      sub_10001F280(v175, v173);
      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v172 = v40;
        *v39 = 141558275;
        *(v39 + 4) = 1752392040;
        *(v39 + 12) = 2081;
        v99 = sub_1000035D0(v173, v174);
        v100 = v170;
        v102 = v168;
        v101 = v169;
        (*(v170 + 16))(v168, &v99[v171[5]], v169);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v103 = dispatch thunk of CustomStringConvertible.description.getter();
        v105 = v104;
        (*(v100 + 8))(v102, v101);
        sub_100007BAC(v173);
        v106 = sub_1000136BC(v103, v105, &v172);

        *(v39 + 14) = v106;
        v49 = "Can't monitor beacon: %{private,mask.hash}s due to: airpods beacon but less than 2 adv buffers.";
        goto LABEL_25;
      }

      goto LABEL_59;
    }

    sub_1000D2A70(v34 + v171[7], v18, &qword_1016980D0, &unk_10138F3B0);
    v95 = v169;
    if ((*(v94 + 48))(v18, 1, v169) == 1)
    {
      sub_10000B3A8(v18, &qword_1016980D0, &unk_10138F3B0);
    }

    else
    {
      v107 = v164;
      (*(v94 + 32))();
      v108 = v163;
      sub_100AC53EC(v107, v163);
      if ((*(v161 + 48))(v108, 1, v162) == 1)
      {
        (*(v94 + 8))(v107, v95);
        sub_10000B3A8(v108, &unk_1016AF8B0, &unk_1013A0700);
      }

      else
      {
        v109 = v160;
        sub_10002AB74(v108, v160, type metadata accessor for OwnedBeaconGroup);
        if ((sub_100518118() & 1) == 0)
        {
          if (qword_101694B70 != -1)
          {
            swift_once();
          }

          v144 = type metadata accessor for Logger();
          sub_1000076D4(v144, qword_10177B780);
          sub_10001F280(v175, v173);
          v145 = Logger.logObject.getter();
          v146 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v145, v146))
          {
            v147 = swift_slowAlloc();
            v148 = swift_slowAlloc();
            v172 = v148;
            *v147 = 141558275;
            *(v147 + 4) = 1752392040;
            *(v147 + 12) = 2081;
            v149 = sub_1000035D0(v173, v174);
            v150 = v170;
            v152 = v168;
            v151 = v169;
            (*(v170 + 16))(v168, &v149[v171[5]], v169);
            sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
            v153 = dispatch thunk of CustomStringConvertible.description.getter();
            v155 = v154;
            v156 = *(v150 + 8);
            v156(v152, v151);
            sub_100007BAC(v173);
            v157 = sub_1000136BC(v153, v155, &v172);

            *(v147 + 14) = v157;
            _os_log_impl(&_mh_execute_header, v145, v146, "Can't monitor beacon: %{private,mask.hash}s due to: group pairing incomplete.", v147, 0x16u);
            sub_100007BAC(v148);

            sub_100721D04(v160, type metadata accessor for OwnedBeaconGroup);
            v156(v164, v151);
            goto LABEL_61;
          }

          sub_100721D04(v109, type metadata accessor for OwnedBeaconGroup);
          (*(v170 + 8))(v164, v169);
          goto LABEL_60;
        }

        sub_100721D04(v109, type metadata accessor for OwnedBeaconGroup);
        (*(v94 + 8))(v107, v169);
      }
    }

    v92 = v171;
  }

  v110 = v167;
  sub_1009D762C(v167);
  if ((*(v166 + 48))(v110, 1, v92) == 1)
  {
    sub_10000B3A8(v110, &unk_1016A9A20, &qword_10138B280);
    goto LABEL_52;
  }

  v111 = v165;
  sub_10002AB74(v110, v165, type metadata accessor for OwnedBeaconRecord);
  v112 = (v34 + v92[14]);
  v113 = *v112;
  v114 = v112[1];
  if (sub_1006DCF58())
  {
    v115 = v92[5];
    sub_100003E8C(&qword_1016984A0, &type metadata accessor for UUID);
    v116 = v169;
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      if (qword_101694B70 != -1)
      {
        swift_once();
      }

      v131 = type metadata accessor for Logger();
      sub_1000076D4(v131, qword_10177B780);
      sub_10001F280(v175, v173);
      v132 = Logger.logObject.getter();
      v133 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v132, v133))
      {
        v134 = swift_slowAlloc();
        v135 = v111;
        v136 = swift_slowAlloc();
        v172 = v136;
        *v134 = 141558275;
        *(v134 + 4) = 1752392040;
        *(v134 + 12) = 2081;
        v137 = sub_1000035D0(v173, v174);
        v138 = v170;
        v139 = v168;
        (*(v170 + 16))(v168, &v137[v92[5]], v116);
        sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
        v140 = dispatch thunk of CustomStringConvertible.description.getter();
        v142 = v141;
        (*(v138 + 8))(v139, v116);
        sub_100007BAC(v173);
        v143 = sub_1000136BC(v140, v142, &v172);

        *(v134 + 14) = v143;
        _os_log_impl(&_mh_execute_header, v132, v133, "Can't monitor beacon: %{private,mask.hash}s due to: watch beacon, but not actively paired.", v134, 0x16u);
        sub_100007BAC(v136);

        v63 = type metadata accessor for OwnedBeaconRecord;
        v64 = v135;
        goto LABEL_13;
      }

      v96 = type metadata accessor for OwnedBeaconRecord;
      v97 = v111;
      goto LABEL_37;
    }
  }

  sub_100721D04(v111, type metadata accessor for OwnedBeaconRecord);
LABEL_52:
  result = [objc_opt_self() defaultWorkspace];
  if (result)
  {
    v118 = result;
    v119 = String._bridgeToObjectiveC()();
    v120 = [v118 applicationIsInstalled:v119];

    if (v120)
    {
      v121 = 1;
LABEL_62:
      sub_100007BAC(v175);
      return v121;
    }

    if (qword_101694B70 != -1)
    {
      swift_once();
    }

    v122 = type metadata accessor for Logger();
    sub_1000076D4(v122, qword_10177B780);
    sub_10001F280(v175, v173);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v172 = v40;
      *v39 = 141558275;
      *(v39 + 4) = 1752392040;
      *(v39 + 12) = 2081;
      v123 = sub_1000035D0(v173, v174);
      v125 = v169;
      v124 = v170;
      v126 = v168;
      (*(v170 + 16))(v168, &v123[v92[5]], v169);
      sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
      v127 = dispatch thunk of CustomStringConvertible.description.getter();
      v129 = v128;
      (*(v124 + 8))(v126, v125);
      sub_100007BAC(v173);
      v130 = sub_1000136BC(v127, v129, &v172);

      *(v39 + 14) = v130;
      v49 = "Can't monitor beacon: %{private,mask.hash}s due to: no Find My app installed.";
      goto LABEL_25;
    }

LABEL_59:

    goto LABEL_60;
  }

  __break(1u);
  return result;
}

uint64_t sub_1006FD1C4(uint64_t a1, uint64_t a2, int a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v37 = a5;
  v38 = a4;
  v35 = a3;
  v36 = a2;
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  __chkstk_darwin(v12);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v18 = *(*(v17 - 8) + 64);
  __chkstk_darwin(v17 - 8);
  v20 = &v34 - v19;
  v39[3] = a7;
  v39[4] = a8;
  v21 = sub_1000280DC(v39);
  (*(*(a7 - 8) + 16))(v21, a1, a7);
  v34 = a6;
  v22 = *(a6 + 280);
  (*(*(*(a8 + 8) + 8) + 32))(a7);
  sub_100AC1584(v16, v20);
  (*(v13 + 8))(v16, v12);
  v23 = type metadata accessor for BeaconProductInfoRecord();
  LODWORD(a1) = (*(*(v23 - 8) + 48))(v20, 1, v23);
  v24 = sub_10000B3A8(v20, &unk_1016AF8C0, &unk_1013A07A0);
  if (a1 == 1)
  {
    v25 = v38;
    if ((*(a8 + 144))(a7, a8))
    {
      v26 = (*(a8 + 48))(a7, a8);
      v27 = (*(a8 + 56))(a7, a8);
      v28 = sub_100314604(v26, v27);
      v30 = v29;
    }

    else
    {
      v28 = 0;
      v30 = 0xF000000000000000;
    }

    v31 = *(v34 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_productInfoManager);
    sub_1000BC4D4(&qword_1016975D8, &unk_1013AAF10);
    v32 = swift_allocObject();
    *(v32 + 16) = xmmword_101385D80;
    sub_10001F280(v39, v32 + 32);
    sub_101095D74(v32, 1, v28, v30, v36, v35 & 1, v25, v37);

    sub_100006654(v28, v30);
  }

  else if (v38)
  {
    v38(v24);
  }

  return sub_100007BAC(v39);
}

uint64_t sub_1006FD510(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OwnedBeaconRecord();
  v5 = *(*(v4 - 8) + 64);
  __chkstk_darwin(v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_100721C9C(a1, v7, type metadata accessor for OwnedBeaconRecord);
  v8 = sub_100D60CD0();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;
  if (v9 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v11 == v12)
  {

    goto LABEL_9;
  }

  v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v14)
  {
LABEL_9:
    sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);
LABEL_10:
    v16 = 0;
    return v16 & 1;
  }

  v15 = sub_1006FD6D0(v7, *(a2 + 280));
  if ((sub_10111F67C(8, v15) & 1) == 0)
  {
    sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);

    goto LABEL_10;
  }

  v16 = sub_10111F67C(9, v15);

  sub_100721D04(v7, type metadata accessor for OwnedBeaconRecord);
  return v16 & 1;
}

void *sub_1006FD6D0(uint64_t a1, uint64_t a2)
{
  v67 = a2;
  v3 = type metadata accessor for LocalFindableAccessoryRecord();
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3);
  v6 = &v63 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1000BC4D4(&unk_1016AF8C0, &unk_1013A07A0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v10 = &v63 - v9;
  v66 = type metadata accessor for StableIdentifier();
  v11 = *(*(v66 - 8) + 64);
  v12 = __chkstk_darwin(v66);
  v65 = &v63 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v15 = &v63 - v14;
  v16 = type metadata accessor for SharedBeaconRecord(0);
  v17 = *(*(v16 - 1) + 64);
  v18 = __chkstk_darwin(v16);
  v64 = &v63 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v18);
  v21 = &v63 - v20;
  v22 = type metadata accessor for OwnedBeaconRecord();
  v23 = *(*(v22 - 8) + 64);
  v24 = __chkstk_darwin(v22);
  v26 = &v63 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __chkstk_darwin(v24);
  v29 = &v63 - v28;
  v74[3] = v27;
  v74[4] = sub_100003E8C(&qword_1016B1810, type metadata accessor for OwnedBeaconRecord);
  v30 = sub_1000280DC(v74);
  sub_100721C9C(a1, v30, type metadata accessor for OwnedBeaconRecord);
  sub_10001F280(v74, v73);
  sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
  if (swift_dynamicCast())
  {
    sub_10002AB74(v29, v26, type metadata accessor for OwnedBeaconRecord);
    if (qword_101694940 != -1)
    {
      swift_once();
    }

    v31 = *(qword_10177B348 + 40);
    OS_dispatch_queue.sync<A>(execute:)();
    v32 = v69[0];
    if (qword_1016954E8 != -1)
    {
      swift_once();
    }

    v33 = qword_10177CE20;
    v70 = &type metadata for KoreaFeatureFlag;
    v34 = sub_10013CCC4();
    v71 = v34;

    v35 = isFeatureEnabled(_:)();
    sub_100007BAC(v69);
    if ((v35 & 1) != 0 || (sub_100EF9844() & 1) == 0)
    {
      v68 = v33;
    }

    else
    {
      v68 = v33;
      sub_1010F6870(2);
      sub_1010F6870(1);
    }

    if (sub_1009C4EC0(v26) & 1) != 0 && ((v70 = &type metadata for KoreaFeatureFlag, v71 = v34, v40 = isFeatureEnabled(_:)(), sub_100007BAC(v69), (v40) || (sub_100EF9844() & 1) == 0))
    {
      sub_100DEB610(v69, 8);
      sub_100DEB610(v69, 9);
    }

    else
    {
      sub_1010F6870(8);
      sub_1010F6870(9);
    }

    v42 = *(v22 + 24);
    sub_100721C9C(&v26[v42], v15, type metadata accessor for StableIdentifier);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    sub_100721D04(v15, type metadata accessor for StableIdentifier);
    if (EnumCaseMultiPayload != 1)
    {
      sub_1010F6870(12);
      sub_1010F6870(13);
    }

    if ((sub_100D60B1C() & 1) == 0 || (My = type metadata accessor for Feature.FindMy(), v70 = My, v71 = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy), v45 = sub_1000280DC(v69), (*(*(My - 8) + 104))(v45, enum case for Feature.FindMy.btRSSIFinding(_:), My), LOBYTE(My) = isFeatureEnabled(_:)(), sub_100007BAC(v69), (My & 1) == 0))
    {
      sub_1010F6870(10);
      sub_1010F6870(11);
    }

    v46 = &v26[v42];
    v47 = v65;
    sub_100721C9C(v46, v65, type metadata accessor for StableIdentifier);
    v48 = swift_getEnumCaseMultiPayload();
    sub_100721D04(v47, type metadata accessor for StableIdentifier);
    if (!v48)
    {
      sub_1010F6870(7);
    }

    if ((sub_1000322C8() & 1) == 0)
    {
      goto LABEL_37;
    }

    v49 = type metadata accessor for Feature.FindMy();
    v70 = v49;
    v50 = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
    v71 = v50;
    v51 = sub_1000280DC(v69);
    v52 = *(*(v49 - 8) + 104);
    v52(v51, enum case for Feature.FindMy.itemSharing(_:), v49);
    v53 = isFeatureEnabled(_:)();
    sub_100007BAC(v69);
    if (v53)
    {
      sub_100DEB610(v69, 4);
      v70 = v49;
      v71 = v50;
      v54 = sub_1000280DC(v69);
      v52(v54, enum case for Feature.FindMy.cowardlyCarrot(_:), v49);
      v55 = isFeatureEnabled(_:)();
      sub_100007BAC(v69);
      if (v55)
      {
        v56 = sub_101073410(v32);

        if ((v56 & 1) == 0)
        {
          sub_100DEB610(v69, 21);
LABEL_60:
          sub_100721D04(v26, type metadata accessor for OwnedBeaconRecord);
          v41 = v68;
          goto LABEL_61;
        }
      }

      else
      {
      }
    }

    else
    {
LABEL_37:

      v57 = v68;
      if (sub_10111F67C(4, v68))
      {
        sub_1010F6870(4);
        v57 = v68;
      }

      if (sub_10111F67C(5, v57))
      {
        sub_1010F6870(5);
      }
    }

    sub_1010F6870(21);
    goto LABEL_60;
  }

  if (swift_dynamicCast())
  {
    v36 = v64;
    sub_10002AB74(v21, v64, type metadata accessor for SharedBeaconRecord);
    v69[0] = &_swiftEmptySetSingleton;
    sub_100AC1584(v36 + v16[5], v10);
    v37 = type metadata accessor for BeaconProductInfoRecord();
    if ((*(*(v37 - 8) + 48))(v10, 1, v37) == 1)
    {
      sub_10000B3A8(v10, &unk_1016AF8C0, &unk_1013A07A0);
      v38 = *(v36 + v16[11]);
      if (v38 == -1)
      {
        if (*(v36 + v16[12]) == -1)
        {
          sub_100DEB610(&v72, 6);
          sub_100DEB610(&v72, 3);
          sub_100DEB610(&v72, 14);
          v59 = 15;
          goto LABEL_47;
        }
      }

      else if (v38 == 76)
      {
        v39 = *(v36 + v16[12]);
        if (!HIDWORD(v39) && (v39 == 22034 || v39 == 21760))
        {
          sub_100DEB610(&v72, 6);
          sub_100DEB610(&v72, 7);
          sub_100DEB610(&v72, 12);
          sub_100DEB610(&v72, 13);
LABEL_46:
          sub_100DEB610(&v72, 17);
          sub_100DEB610(&v72, 3);
          sub_100DEB610(&v72, 16);
          v59 = 5;
LABEL_47:
          sub_100DEB610(&v72, v59);
        }
      }

      if (*(v36 + v16[16]) == 5)
      {
        sub_100DEB610(&v72, 6);
        sub_1010F6870(7);
        sub_100DEB610(&v72, 3);
        if (*(v36 + v16[11]) != 76)
        {
          goto LABEL_57;
        }

        v60 = *(v36 + v16[12]);
        if (HIDWORD(v60) || v60 != 22034 && v60 != 21760)
        {
          goto LABEL_57;
        }

        sub_100DEB610(&v72, 12);
        v61 = 13;
      }

      else
      {
        v61 = 5;
      }

      sub_100DEB610(&v72, v61);
LABEL_57:
      sub_100721D04(v36, type metadata accessor for SharedBeaconRecord);
      v41 = v69[0];
      goto LABEL_61;
    }

    v58 = *&v10[*(v37 + 80)];
    sub_100721D04(v10, type metadata accessor for BeaconProductInfoRecord);
    if (v58)
    {
      sub_100DEB610(&v72, 6);
      sub_100DEB610(&v72, 7);
      if ((v58 & 0x400) == 0)
      {
LABEL_43:
        if ((v58 & 0x100) == 0)
        {
          goto LABEL_44;
        }

        goto LABEL_64;
      }
    }

    else if ((v58 & 0x400) == 0)
    {
      goto LABEL_43;
    }

    sub_100DEB610(&v72, 10);
    sub_100DEB610(&v72, 11);
    if ((v58 & 0x100) == 0)
    {
LABEL_44:
      if ((v58 & 0x4000) == 0)
      {
        goto LABEL_46;
      }

LABEL_45:
      sub_100DEB610(&v72, 22);
      sub_100DEB610(&v72, 23);
      goto LABEL_46;
    }

LABEL_64:
    sub_100DEB610(&v72, 12);
    sub_100DEB610(&v72, 13);
    if ((v58 & 0x4000) == 0)
    {
      goto LABEL_46;
    }

    goto LABEL_45;
  }

  if (swift_dynamicCast())
  {
    v41 = sub_100B041C8(&off_1016076D8);
    sub_100721D04(v6, type metadata accessor for LocalFindableAccessoryRecord);
  }

  else
  {
    v41 = &_swiftEmptySetSingleton;
  }

LABEL_61:
  sub_100007BAC(v73);
  sub_100007BAC(v74);
  return v41;
}

uint64_t sub_1006FE20C()
{
  v1 = *(v0 + 24);
  v2 = *(v0 + 32);
  return v1();
}

uint64_t sub_1006FE27C()
{
  v1 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v2 = (*(v1 + 80) + 40) & ~*(v1 + 80);
  v3 = *(v1 + 64);
  v4 = *(type metadata accessor for UUID() - 8);
  v5 = (v2 + v3 + *(v4 + 80)) & ~*(v4 + 80);
  v6 = (*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  v7 = v0[2];
  v8 = v0[3];
  v9 = v0[4];
  v10 = *(v0 + v6);
  v11 = *(v0 + ((v6 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1006D4BC8(v7, v8, v9, v0 + v2, v0 + v5, v10, v11);
}

void sub_1006FE3BC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v5 = *(v1 + 16);
  v6 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1006D4F68(a1, v5, v1 + v4, v6);
}

uint64_t sub_1006FE4D4()
{
  v1 = *(v0 + 32);
  v2 = *(*(v0 + 24) + 168);
  return sub_1009F10FC(v1);
}

void sub_1006FE4FC(uint64_t a1)
{
  v3 = *(type metadata accessor for OwnedBeaconGroup(0) - 8);
  v4 = *(v3 + 80);
  v5 = (v4 + 24) & ~v4;
  v6 = (*(v3 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_1006E3B70(a1, *(v1 + 16), v1 + v5, *(v1 + v6), v1 + ((v4 + v6 + 8) & ~v4), type metadata accessor for OwnedBeaconGroup, &qword_101699398, &qword_101391900, type metadata accessor for OwnedBeaconGroup, sub_1009F10FC, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_1006FE608(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UUID();
  v1[3] = v2;
  v3 = *(v2 - 8);
  v1[4] = v3;
  v4 = *(v3 + 64) + 15;
  v1[5] = swift_task_alloc();
  v5 = async function pointer to daemon.getter[1];
  v6 = swift_task_alloc();
  v1[6] = v6;
  *v6 = v1;
  v6[1] = sub_1006FE6F8;

  return daemon.getter();
}

uint64_t sub_1006FE6F8(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 48);
  v12 = *v1;
  *(v3 + 56) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 64) = v6;
  v7 = type metadata accessor for Daemon();
  found = type metadata accessor for NotifyWhenFoundManager();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&unk_1016B10A0, type metadata accessor for NotifyWhenFoundManager);
  *v6 = v12;
  v6[1] = sub_1006FE8D4;

  return ActorServiceDaemon.getService<A>()(v7, found, v9, v10);
}

uint64_t sub_1006FE8D4(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 64);
  v6 = *v2;
  v4[9] = a1;
  v4[10] = v1;

  if (v1)
  {

    return _swift_task_switch(sub_1006FEEB4, 0, 0);
  }

  else
  {
    v7 = v4[7];

    v8 = swift_task_alloc();
    v4[11] = v8;
    *v8 = v6;
    v8[1] = sub_1006FEA64;
    v9 = v4[2];

    return sub_100039E1C(v9);
  }
}

uint64_t sub_1006FEA64()
{
  v2 = *(*v1 + 88);
  v5 = *v1;
  *(*v1 + 96) = v0;

  if (v0)
  {
    v3 = sub_1006FEBE0;
  }

  else
  {
    v3 = sub_1006FEB78;
  }

  return _swift_task_switch(v3, 0, 0);
}

uint64_t sub_1006FEB78()
{
  v1 = v0[9];

  v2 = v0[5];

  v3 = v0[1];

  return v3();
}

uint64_t sub_1006FEBE0()
{
  v26 = v0;
  v1 = v0[12];
  v2 = v0[9];

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7F8);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v25);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v23 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to force publish for beacon %{private,mask.hash}s, error: %{public}@.", v14, 0x20u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v24);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[5];

  v21 = v0[1];

  return v21();
}

uint64_t sub_1006FEEB4()
{
  v26 = v0;
  v1 = v0[10];
  v2 = v0[7];

  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v4 = v0[4];
  v3 = v0[5];
  v6 = v0[2];
  v5 = v0[3];
  v7 = type metadata accessor for Logger();
  sub_1000076D4(v7, qword_10177B7F8);
  (*(v4 + 16))(v3, v6, v5);
  swift_errorRetain();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();

  v10 = os_log_type_enabled(v8, v9);
  v12 = v0[4];
  v11 = v0[5];
  v13 = v0[3];
  if (v10)
  {
    v14 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v24 = swift_slowAlloc();
    v25 = v24;
    *v14 = 141558531;
    *(v14 + 4) = 1752392040;
    *(v14 + 12) = 2081;
    sub_100003E8C(&qword_101696930, &type metadata accessor for UUID);
    v15 = dispatch thunk of CustomStringConvertible.description.getter();
    v17 = v16;
    (*(v12 + 8))(v11, v13);
    v18 = sub_1000136BC(v15, v17, &v25);

    *(v14 + 14) = v18;
    *(v14 + 22) = 2114;
    swift_errorRetain();
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v14 + 24) = v19;
    *v23 = v19;
    _os_log_impl(&_mh_execute_header, v8, v9, "Failed to force publish for beacon %{private,mask.hash}s, error: %{public}@.", v14, 0x20u);
    sub_10000B3A8(v23, &qword_10169BB30, &unk_10138B3C0);

    sub_100007BAC(v24);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  v20 = v0[5];

  v21 = v0[1];

  return v21();
}

void sub_1006FF188(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v189 = a3;
  v5 = type metadata accessor for ShareRecord();
  v182 = *(v5 - 8);
  v6 = *(v182 + 64);
  __chkstk_darwin(v5 - 8);
  v183 = &v167 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = type metadata accessor for StableIdentifier();
  v8 = *(*(v168 - 8) + 64);
  __chkstk_darwin(v168);
  v169 = &v167 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v181 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v175 = *(v181 - 8);
  v10 = *(v175 + 64);
  __chkstk_darwin(v181);
  v174 = &v167 - v11;
  v12 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v173 = (&v167 - v14);
  v15 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v180 = &v167 - v17;
  v179 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v172 = *(v179 - 8);
  v18 = *(v172 + 64);
  __chkstk_darwin(v179);
  v170 = &v167 - v19;
  v20 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v171 = (&v167 - v22);
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v177 = &v167 - v25;
  v187 = type metadata accessor for OwnedBeaconRecord();
  v176 = *(v187 - 8);
  v26 = *(v176 + 64);
  __chkstk_darwin(v187);
  v186 = &v167 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v190 = &v167 - v30;
  v31 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v193 = &v167 - v33;
  v34 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v167 - v36;
  v197 = type metadata accessor for DirectorySequence();
  v201 = *(v197 - 8);
  v38 = *(v201 + 64);
  __chkstk_darwin(v197);
  v203 = &v167 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v195 = type metadata accessor for URL();
  v200 = *(v195 - 8);
  v40 = *(v200 + 64);
  v41 = __chkstk_darwin(v195);
  v178 = &v167 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v194 = &v167 - v44;
  v45 = __chkstk_darwin(v43);
  v196 = &v167 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v167 - v48;
  __chkstk_darwin(v47);
  v199 = &v167 - v50;
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v198 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v51 = swift_allocObject();
  v191 = xmmword_10138BBE0;
  *(v51 + 16) = xmmword_10138BBE0;
  v207 = *a2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v52 = String.init<A>(describing:)();
  v54 = v53;
  *(v51 + 56) = &type metadata for String;
  v55 = sub_100008C00();
  *(v51 + 32) = v52;
  *(v51 + 40) = v54;
  *(v51 + 96) = &type metadata for String;
  *(v51 + 104) = v55;
  v192 = v55;
  *(v51 + 64) = v55;
  *(v51 + 72) = 0xD000000000000017;
  *(v51 + 80) = 0x800000010135D780;
  os_log(_:dso:log:_:_:)();

  v56 = a2[35];
  sub_100025020(a1, &v205);
  if (!v206)
  {
    sub_10000B3A8(&v205, &qword_101696920, &unk_10138B200);
    return;
  }

  sub_10000A748(&v205, &v207);
  v188 = v56;
  v202 = *(v56 + 168);
  v57 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v184 = a2;
  v58 = v195;
  sub_1000076D4(v195, qword_10177A518);
  v185 = a1;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v57);
  v204 = _swiftEmptyArrayStorage;
  *&v205 = _swiftEmptyArrayStorage;
  v59 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v60 = v200;
  v61 = *(v200 + 48);
  if (v61(v37, 1, v58) != 1)
  {
    v62 = *(v60 + 32);
    do
    {
      v62(v49, v37, v58);
      v63 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v49, v202, &v205, &v204);
      objc_autoreleasePoolPop(v63);
      (*(v60 + 8))(v49, v58);
      DirectorySequence.next()();
    }

    while (v61(v37, 1, v58) != 1);
  }

  (*(v201 + 8))(v203, v197);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v64 = v58;
  v65 = static OS_os_log.default.getter();
  v66 = swift_allocObject();
  *(v66 + 16) = v191;
  v67 = v205;
  v68 = *(v205 + 16);
  *(v66 + 56) = &type metadata for Int;
  *(v66 + 64) = &protocol witness table for Int;
  *(v66 + 32) = v68;
  sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL);

  v69 = v199;
  v70 = dispatch thunk of CustomStringConvertible.description.getter();
  v71 = v192;
  *(v66 + 96) = &type metadata for String;
  *(v66 + 104) = v71;
  *(v66 + 72) = v70;
  *(v66 + 80) = v72;
  os_log(_:dso:log:_:_:)();

  v73 = (v200 + 8);
  v202 = *(v200 + 8);
  v202(v69, v64);

  v74 = *(v67 + 16);
  v203 = v73;
  if (v74)
  {
    *&v205 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v75 = v67 + ((*(v182 + 80) + 32) & ~*(v182 + 80));
    v76 = *(v182 + 72);
    v77 = v183;
    do
    {
      sub_100721C9C(v75, v77, type metadata accessor for ShareRecord);
      sub_100156F5C();
      sub_100721D04(v77, type metadata accessor for ShareRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v78 = *(v205 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v75 += v76;
      --v74;
    }

    while (v74);

    v79 = v205;
  }

  else
  {

    v79 = _swiftEmptyArrayStorage;
  }

  sub_10112A654(v79);

  v80 = v208;
  v81 = v209;
  v82 = sub_1000035D0(&v207, v208);
  v83 = sub_100B005BC(v82, v188, v80, v81);
  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v83 setShares:isa];

  v85 = v184;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v86 = v185;
  v87 = sub_1011A30E0(v185);
  [v83 setSeparationState:v87];

  v88 = type metadata accessor for UUID();
  v89 = *(v88 - 8);
  v90 = v193;
  (*(v89 + 16))(v193, v86, v88);
  v192 = v89;
  v91 = *(v89 + 56);
  v199 = v88;
  v91(v90, 0, 1, v88);
  v92 = sub_1009C75D0(4, v90);
  sub_10000B3A8(v90, &qword_1016980D0, &unk_10138F3B0);
  sub_10112A684(v92);

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
  v93 = Set._bridgeToObjectiveC()().super.isa;

  [v83 setSafeLocations:v93];

  v94 = v208;
  v95 = v209;
  v96 = sub_1000035D0(&v207, v208);
  [v83 setCanBeLeashedByHost:{sub_100A05A00(v96, v85, v94, v95) & 1}];
  v97 = v85;
  [v83 setBeaconSeparationState:sub_1009C7E64(v86)];
  v98 = *(v85 + 40);
  v99 = v194;
  v100 = v196;
  if (v98)
  {
    v101 = *(v98 + 280);
    v102 = *(v85 + 40);

    static os_log_type_t.info.getter();
    v103 = v201;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v104 = swift_allocObject();
    *(v104 + 16) = xmmword_101385D80;
    *(v104 + 56) = &type metadata for Bool;
    *(v104 + 64) = &protocol witness table for Bool;
    *(v104 + 32) = v101;
    os_log(_:dso:log:_:_:)();

    [v83 setConnectionAllowed:v101];
    sub_10001F280(&v207, &v205);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v105 = type metadata accessor for SharedBeaconRecord(0);
    v106 = v190;
    v107 = swift_dynamicCast();
    v108 = *(*(v105 - 8) + 56);
    if (v107)
    {
      v108(v106, 0, 1, v105);
      sub_10000B3A8(v106, &unk_101698C30, &unk_101392630);
      [v83 setConnectableDeviceCount:0];
LABEL_37:
      v166 = *(v189 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_targetBeacon);
      *(v189 + OBJC_IVAR____TtC12searchpartyd24SoundPlaybackCoordinator_targetBeacon) = v83;

      sub_100007BAC(&v207);
      return;
    }

    v108(v106, 1, 1, v105);
    sub_10000B3A8(v106, &unk_101698C30, &unk_101392630);
    sub_10001F280(&v207, &v205);
    v109 = v177;
    v110 = v187;
    v111 = swift_dynamicCast();
    v112 = *(v176 + 56);
    if ((v111 & 1) == 0)
    {
      v112(v109, 1, 1, v110);
      sub_10000B3A8(v109, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_37;
    }

    v113 = v99;
    v190 = v83;
    v112(v109, 0, 1, v110);
    sub_10002AB74(v109, v186, type metadata accessor for OwnedBeaconRecord);
    v114 = *(v188 + 168);
    if (qword_101694EB8 != -1)
    {
      swift_once();
    }

    v115 = v195;
    v116 = sub_1000076D4(v195, qword_10177C0D8);
    v117 = *(v200 + 16);
    v117(v100, v116, v115);
    v118 = v113;
    v117(v113, v100, v115);
    v198 = *(v179 + 40);
    v119 = v179;
    v200 = *(v103 + 56);
    v120 = v170;
    (v200)(&v170[v198], 1, 1, v197);
    v117(v120, v118, v115);
    *(v120 + *(v119 + 36)) = v114;
    v193 = v117;
    v117(v178, v118, v115);

    v121 = v180;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v122 = v118;
    v123 = v202;
    v202(v122, v115);
    v123(v196, v115);
    v201 = v103 + 56;
    (v200)(v121, 0, 1, v197);
    sub_10002311C(v121, v120 + v198, &qword_1016A5970, &unk_1013B3470);
    v124 = *(v172 + 56);
    v125 = v171;
    v126 = v179;
    v124(v171, 1, 1, v179);
    sub_10000B3A8(v125, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v120, v125, &qword_1016A7828, &unk_1013D7340);
    v124(v125, 0, 1, v126);
    v198 = sub_100B34BBC(v125);
    sub_10000B3A8(v125, &qword_1016A7830, &unk_1013D69E0);
    v127 = *(v188 + 168);
    if (qword_101694680 != -1)
    {
      swift_once();
    }

    v128 = sub_1000076D4(v115, qword_10177AC60);
    v129 = v196;
    v130 = v193;
    (v193)(v196, v128, v115);
    v131 = v194;
    (v130)(v194, v129, v115);
    *&v191 = *(v181 + 40);
    v132 = v181;
    v133 = v174;
    v134 = v200;
    (v200)(&v174[v191], 1, 1, v197);
    (v130)(v133, v131, v115);
    *(v133 + *(v132 + 36)) = v127;
    (v130)(v178, v131, v115);

    v135 = v180;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v136 = v202;
    v202(v131, v115);
    v136(v196, v115);
    v134(v135, 0, 1, v197);
    sub_10002311C(v135, v133 + v191, &qword_1016A5970, &unk_1013B3470);
    v137 = *(v175 + 56);
    v138 = v173;
    v139 = v181;
    v137(v173, 1, 1, v181);
    sub_10000B3A8(v138, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v133, v138, &qword_1016A5978, &qword_101410D20);
    v137(v138, 0, 1, v139);
    v140 = sub_100B33E08(v138);
    v141 = sub_10000B3A8(v138, &qword_1016A5980, &unk_1013B3480);
    __chkstk_darwin(v141);
    v142 = v185;
    *(&v167 - 2) = v185;
    v97 = *(sub_10013CF58(sub_100721E70, (&v167 - 4), v198) + 16);

    __chkstk_darwin(v143);
    *(&v167 - 2) = v142;
    v144 = *(sub_10013CEF0(sub_10062CF74, (&v167 - 4), v140) + 16);

    v145 = &v97[v144];
    if (__OFADD__(v97, v144))
    {
      __break(1u);
    }

    else
    {
      v146 = v184;
      v147 = *(v184 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);
      CurrentValueSubject.value.getter();
      v148 = v205;
      v97 = v146;
      sub_10069CA80(v142, v205);
      v149 = v169;
      v83 = v190;
      if (!__OFADD__(v148, v145))
      {
        [v190 setConnectableDeviceCount:&v145[v148]];
        sub_100721C9C(v186 + *(v187 + 24), v149, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v159 = v149[1];
          v160 = v149[3];
          v161 = v149[4];
          v162 = v149[5];

          v163 = String._bridgeToObjectiveC()();

          [v83 setSerialNumber:v163];

          v164 = type metadata accessor for OwnedBeaconRecord;
          v165 = v186;
        }

        else
        {
          if (EnumCaseMultiPayload == 2)
          {
            v151 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
            v152 = *(v149 + v151[12] + 8);

            v153 = *(v149 + v151[16] + 8);

            v154 = (v149 + v151[20]);
            v155 = *v154;
            v156 = v154[1];
            v157 = *(v149 + v151[28] + 8);

            v158 = String._bridgeToObjectiveC()();

            [v83 setSerialNumber:v158];

            sub_100721D04(v186, type metadata accessor for OwnedBeaconRecord);
            (*(v192 + 8))(v149, v199);
            goto LABEL_37;
          }

          [v83 setSerialNumber:0];
          sub_100721D04(v186, type metadata accessor for OwnedBeaconRecord);
          v164 = type metadata accessor for StableIdentifier;
          v165 = v149;
        }

        sub_100721D04(v165, v164);
        goto LABEL_37;
      }
    }

    __break(1u);
  }

  __break(1u);

  objc_autoreleasePoolPop(v97);
  __break(1u);
}

void sub_100700AF8(uint64_t a1, uint64_t *a2, void (**a3)(void, void))
{
  v197 = a3;
  v5 = type metadata accessor for ShareRecord();
  v183 = *(v5 - 8);
  v6 = *(v183 + 64);
  __chkstk_darwin(v5 - 8);
  v184 = &v168 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v169 = type metadata accessor for StableIdentifier();
  v8 = *(*(v169 - 8) + 64);
  __chkstk_darwin(v169);
  v170 = &v168 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v182 = sub_1000BC4D4(&qword_1016A5978, &qword_101410D20);
  v176 = *(v182 - 8);
  v10 = *(v176 + 64);
  __chkstk_darwin(v182);
  v175 = &v168 - v11;
  v12 = sub_1000BC4D4(&qword_1016A5980, &unk_1013B3480);
  v13 = *(*(v12 - 8) + 64);
  __chkstk_darwin(v12 - 8);
  v174 = (&v168 - v14);
  v15 = sub_1000BC4D4(&qword_1016A5970, &unk_1013B3470);
  v16 = *(*(v15 - 8) + 64);
  __chkstk_darwin(v15 - 8);
  v181 = &v168 - v17;
  v180 = sub_1000BC4D4(&qword_1016A7828, &unk_1013D7340);
  v173 = *(v180 - 8);
  v18 = *(v173 + 64);
  __chkstk_darwin(v180);
  v171 = &v168 - v19;
  v20 = sub_1000BC4D4(&qword_1016A7830, &unk_1013D69E0);
  v21 = *(*(v20 - 8) + 64);
  __chkstk_darwin(v20 - 8);
  v172 = (&v168 - v22);
  v23 = sub_1000BC4D4(&unk_1016A9A20, &qword_10138B280);
  v24 = *(*(v23 - 8) + 64);
  __chkstk_darwin(v23 - 8);
  v178 = &v168 - v25;
  v188 = type metadata accessor for OwnedBeaconRecord();
  v177 = *(v188 - 8);
  v26 = *(v177 + 64);
  __chkstk_darwin(v188);
  v187 = &v168 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = sub_1000BC4D4(&unk_101698C30, &unk_101392630);
  v29 = *(*(v28 - 8) + 64);
  __chkstk_darwin(v28 - 8);
  v190 = &v168 - v30;
  v31 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v32 = *(*(v31 - 8) + 64);
  __chkstk_darwin(v31 - 8);
  v194 = &v168 - v33;
  v34 = sub_1000BC4D4(&unk_101696AC0, &qword_101390A60);
  v35 = *(*(v34 - 8) + 64);
  __chkstk_darwin(v34 - 8);
  v37 = &v168 - v36;
  v198 = type metadata accessor for DirectorySequence();
  v202 = *(v198 - 8);
  v38 = *(v202 + 64);
  __chkstk_darwin(v198);
  v204 = &v168 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  v196 = type metadata accessor for URL();
  v201 = *(v196 - 8);
  v40 = *(v201 + 8);
  v41 = __chkstk_darwin(v196);
  v179 = &v168 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = __chkstk_darwin(v41);
  v195 = &v168 - v44;
  v45 = __chkstk_darwin(v43);
  v191 = &v168 - v46;
  v47 = __chkstk_darwin(v45);
  v49 = &v168 - v48;
  __chkstk_darwin(v47);
  v200 = &v168 - v50;
  static os_log_type_t.info.getter();
  if (qword_101695028 != -1)
  {
    swift_once();
  }

  v199 = sub_1000BC4D4(&unk_101697F80, &unk_10138CDC0);
  v51 = swift_allocObject();
  v192 = xmmword_10138BBE0;
  *(v51 + 16) = xmmword_10138BBE0;
  v208 = *a2;
  sub_1000BC4D4(&qword_1016C1A50, &unk_1013A08C8);
  v52 = String.init<A>(describing:)();
  v54 = v53;
  *(v51 + 56) = &type metadata for String;
  v55 = sub_100008C00();
  *(v51 + 32) = v52;
  *(v51 + 40) = v54;
  *(v51 + 96) = &type metadata for String;
  *(v51 + 104) = v55;
  v193 = v55;
  *(v51 + 64) = v55;
  *(v51 + 72) = 0xD000000000000017;
  *(v51 + 80) = 0x800000010135D780;
  os_log(_:dso:log:_:_:)();

  v56 = a2[35];
  sub_100025020(a1, &v206);
  if (!v207)
  {
    sub_10000B3A8(&v206, &qword_101696920, &unk_10138B200);
    v197[2](v197, 0);
    return;
  }

  v57 = a1;
  sub_10000A748(&v206, &v208);
  v203 = *(v56 + 168);
  v58 = objc_autoreleasePoolPush();
  if (qword_101694468 != -1)
  {
    swift_once();
  }

  v185 = a2;
  v59 = v196;
  sub_1000076D4(v196, qword_10177A518);
  v186 = v57;
  UUID.uuidString.getter();
  URL.appendingPathComponent(_:isDirectory:)();

  objc_autoreleasePoolPop(v58);
  v205 = _swiftEmptyArrayStorage;
  *&v206 = _swiftEmptyArrayStorage;
  v60 = [objc_opt_self() defaultManager];
  NSFileManager.deepSequence(at:includingPropertiesForKeys:options:)();

  DirectorySequence.next()();
  v61 = v59;
  v62 = v201;
  v63 = *(v201 + 6);
  v64 = v63(v37, 1, v59);
  v189 = v56;
  if (v64 != 1)
  {
    v65 = *(v62 + 4);
    do
    {
      v65(v49, v37, v61);
      v66 = v61;
      v67 = objc_autoreleasePoolPush();
      sub_1005FF9CC(v49, v203, &v206, &v205);
      objc_autoreleasePoolPop(v67);
      (*(v62 + 1))(v49, v66);
      DirectorySequence.next()();
      v61 = v66;
    }

    while (v63(v37, 1, v66) != 1);
  }

  (*(v202 + 8))(v204, v198);
  static os_log_type_t.debug.getter();
  sub_100008BB8(0, &qword_101698160, OS_os_log_ptr);
  v68 = static OS_os_log.default.getter();
  v69 = swift_allocObject();
  *(v69 + 16) = v192;
  v70 = v206;
  v71 = *(v206 + 16);
  *(v69 + 56) = &type metadata for Int;
  *(v69 + 64) = &protocol witness table for Int;
  *(v69 + 32) = v71;
  sub_100003E8C(&qword_1016B14E0, &type metadata accessor for URL);

  v72 = v200;
  v73 = dispatch thunk of CustomStringConvertible.description.getter();
  v74 = v193;
  *(v69 + 96) = &type metadata for String;
  *(v69 + 104) = v74;
  *(v69 + 72) = v73;
  *(v69 + 80) = v75;
  os_log(_:dso:log:_:_:)();

  v76 = v201 + 8;
  v203 = *(v201 + 1);
  v203(v72, v61);

  v77 = *(v70 + 16);
  v204 = v76;
  if (v77)
  {
    *&v206 = _swiftEmptyArrayStorage;
    specialized ContiguousArray.reserveCapacity(_:)();
    v78 = v70 + ((*(v183 + 80) + 32) & ~*(v183 + 80));
    v79 = *(v183 + 72);
    v80 = v184;
    do
    {
      sub_100721C9C(v78, v80, type metadata accessor for ShareRecord);
      sub_100156F5C();
      sub_100721D04(v80, type metadata accessor for ShareRecord);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v81 = *(v206 + 16);
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v78 += v79;
      --v77;
    }

    while (v77);

    v82 = v206;
  }

  else
  {

    v82 = _swiftEmptyArrayStorage;
  }

  sub_10112A654(v82);

  v83 = v209;
  v84 = v210;
  v85 = sub_1000035D0(&v208, v209);
  v86 = sub_100B005BC(v85, v189, v83, v84);
  sub_100008BB8(0, &unk_1016BBE80, SPBeaconShare_ptr);
  sub_100009D18(&qword_101698BF0, &unk_1016BBE80, SPBeaconShare_ptr);
  isa = Set._bridgeToObjectiveC()().super.isa;

  [v86 setShares:isa];

  v88 = v185;
  if (qword_101694920 != -1)
  {
    swift_once();
  }

  v89 = v186;
  v90 = sub_1011A30E0(v186);
  [v86 setSeparationState:v90];

  v91 = type metadata accessor for UUID();
  v92 = *(v91 - 8);
  v93 = v194;
  (*(v92 + 16))(v194, v89, v91);
  v193 = v92;
  v94 = *(v92 + 56);
  v200 = v91;
  v94(v93, 0, 1, v91);
  v95 = sub_1009C75D0(4, v93);
  sub_10000B3A8(v93, &qword_1016980D0, &unk_10138F3B0);
  sub_10112A684(v95);

  sub_100008BB8(0, &unk_1016B1680, SPSafeLocation_ptr);
  sub_100009D18(&unk_1016B1820, &unk_1016B1680, SPSafeLocation_ptr);
  v96 = Set._bridgeToObjectiveC()().super.isa;

  [v86 setSafeLocations:v96];

  v97 = v209;
  v98 = v210;
  v99 = sub_1000035D0(&v208, v209);
  [v86 setCanBeLeashedByHost:{sub_100A05A00(v99, v88, v97, v98) & 1}];
  [v86 setBeaconSeparationState:sub_1009C7E64(v89)];
  v100 = *(v88 + 40);
  v101 = v195;
  if (v100)
  {
    v102 = v100[280];
    v103 = *(v88 + 40);

    static os_log_type_t.info.getter();
    v104 = v202;
    if (qword_101695030 != -1)
    {
      swift_once();
    }

    v105 = swift_allocObject();
    *(v105 + 16) = xmmword_101385D80;
    *(v105 + 56) = &type metadata for Bool;
    *(v105 + 64) = &protocol witness table for Bool;
    *(v105 + 32) = v102;
    os_log(_:dso:log:_:_:)();

    [v86 setConnectionAllowed:v102];
    sub_10001F280(&v208, &v206);
    sub_1000BC4D4(&unk_1016AA470, &qword_10139FD30);
    v106 = type metadata accessor for SharedBeaconRecord(0);
    v107 = v190;
    v108 = swift_dynamicCast();
    v109 = *(*(v106 - 8) + 56);
    if (v108)
    {
      v109(v107, 0, 1, v106);
      sub_10000B3A8(v107, &unk_101698C30, &unk_101392630);
      [v86 setConnectableDeviceCount:0];
LABEL_36:
      (v197)[2](v197, v86);

      sub_100007BAC(&v208);
      return;
    }

    v109(v107, 1, 1, v106);
    sub_10000B3A8(v107, &unk_101698C30, &unk_101392630);
    sub_10001F280(&v208, &v206);
    v110 = v178;
    v111 = v188;
    v112 = swift_dynamicCast();
    v113 = *(v177 + 56);
    if ((v112 & 1) == 0)
    {
      v113(v110, 1, 1, v111);
      sub_10000B3A8(v110, &unk_1016A9A20, &qword_10138B280);
      goto LABEL_36;
    }

    v190 = v86;
    v113(v110, 0, 1, v111);
    sub_10002AB74(v110, v187, type metadata accessor for OwnedBeaconRecord);
    v114 = *(v189 + 168);
    if (qword_101694EB8 != -1)
    {
      swift_once();
    }

    v115 = v196;
    v116 = sub_1000076D4(v196, qword_10177C0D8);
    v117 = *(v201 + 2);
    v118 = v191;
    v117(v191, v116, v115);
    v117(v101, v118, v115);
    v119 = v101;
    v194 = *(v180 + 40);
    v120 = v180;
    v121 = *(v104 + 56);
    v202 = v104 + 56;
    v122 = v171;
    v121(&v171[v194], 1, 1, v198);
    v117(v122, v119, v115);
    *(v122 + *(v120 + 36)) = v114;
    v199 = v117;
    v117(v179, v119, v115);

    v123 = v181;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v124 = v119;
    v125 = v203;
    v203(v124, v115);
    v125(v191, v115);
    v201 = v121;
    v121(v123, 0, 1, v198);
    sub_10002311C(v123, v122 + v194, &qword_1016A5970, &unk_1013B3470);
    v126 = *(v173 + 56);
    v127 = v172;
    v128 = v180;
    v126(v172, 1, 1, v180);
    sub_10000B3A8(v127, &qword_1016A7838, &unk_1013EB250);
    sub_1000D2AD8(v122, v127, &qword_1016A7828, &unk_1013D7340);
    v126(v127, 0, 1, v128);
    v194 = sub_100B34BBC(v127);
    sub_10000B3A8(v127, &qword_1016A7830, &unk_1013D69E0);
    v129 = *(v189 + 168);
    if (qword_101694680 != -1)
    {
      swift_once();
    }

    v130 = sub_1000076D4(v115, qword_10177AC60);
    v131 = v191;
    v132 = v199;
    v199(v191, v130, v115);
    v133 = v195;
    v132(v195, v131, v115);
    *&v192 = *(v182 + 40);
    v134 = v182;
    v135 = v175;
    v136 = v201;
    v201(&v175[v192], 1, 1, v198);
    v132(v135, v133, v115);
    *(v135 + *(v134 + 36)) = v129;
    v132(v179, v133, v115);

    v137 = v181;
    DirectorySequence.init(at:includingPropertiesForKeys:options:)();
    v138 = v203;
    v203(v133, v115);
    v138(v191, v115);
    v136(v137, 0, 1, v198);
    sub_10002311C(v137, v135 + v192, &qword_1016A5970, &unk_1013B3470);
    v139 = *(v176 + 56);
    v140 = v174;
    v141 = v182;
    v139(v174, 1, 1, v182);
    sub_10000B3A8(v140, &qword_1016A5988, &qword_1013B3490);
    sub_1000D2AD8(v135, v140, &qword_1016A5978, &qword_101410D20);
    v139(v140, 0, 1, v141);
    v142 = sub_100B33E08(v140);
    v143 = sub_10000B3A8(v140, &qword_1016A5980, &unk_1013B3480);
    __chkstk_darwin(v143);
    v144 = v186;
    *(&v168 - 2) = v186;
    v145 = *(sub_10013CF58(sub_100721E70, (&v168 - 4), v194) + 16);

    __chkstk_darwin(v146);
    *(&v168 - 2) = v144;
    v100 = *(sub_10013CEF0(sub_10062CF74, (&v168 - 4), v142) + 16);

    v147 = &v100[v145];
    if (__OFADD__(v145, v100))
    {
      __break(1u);
    }

    else
    {
      v148 = v185;
      v149 = *(v185 + OBJC_IVAR____TtC12searchpartyd20BeaconManagerService_connectableDevicesChangedSubject);
      CurrentValueSubject.value.getter();
      v150 = v206;
      v100 = v148;
      sub_10069CA80(v144, v206);
      v151 = v170;
      v86 = v190;
      if (!__OFADD__(v150, v147))
      {
        [v190 setConnectableDeviceCount:&v147[v150]];
        sub_100721C9C(v187 + *(v188 + 24), v151, type metadata accessor for StableIdentifier);
        EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
        if (EnumCaseMultiPayload == 1)
        {
          v161 = v151[1];
          v162 = v151[3];
          v163 = v151[4];
          v164 = v151[5];

          v165 = String._bridgeToObjectiveC()();

          [v86 setSerialNumber:v165];

          v166 = type metadata accessor for OwnedBeaconRecord;
          v167 = v187;
        }

        else
        {
          if (EnumCaseMultiPayload == 2)
          {
            v153 = sub_1000BC4D4(&unk_1016AF920, &qword_1013A0710);
            v154 = *(v151 + v153[12] + 8);

            v155 = *(v151 + v153[16] + 8);

            v156 = (v151 + v153[20]);
            v157 = *v156;
            v158 = v156[1];
            v159 = *(v151 + v153[28] + 8);

            v160 = String._bridgeToObjectiveC()();

            [v86 setSerialNumber:v160];

            sub_100721D04(v187, type metadata accessor for OwnedBeaconRecord);
            (*(v193 + 8))(v151, v200);
            goto LABEL_36;
          }

          [v86 setSerialNumber:0];
          sub_100721D04(v187, type metadata accessor for OwnedBeaconRecord);
          v166 = type metadata accessor for StableIdentifier;
          v167 = v151;
        }

        sub_100721D04(v167, v166);
        goto LABEL_36;
      }
    }

    __break(1u);
  }

  _Block_release(v197);
  __break(1u);
  _Block_release(v197);
  objc_autoreleasePoolPop(v100);
  __break(1u);
}

uint64_t sub_100702488()
{
  v1 = type metadata accessor for StandaloneBeacon();
  v0[8] = v1;
  v2 = *(v1 - 8);
  v0[9] = v2;
  v3 = *(v2 + 64) + 15;
  v0[10] = swift_task_alloc();

  return _swift_task_switch(sub_100702544, 0, 0);
}

uint64_t sub_100702544()
{
  My = type metadata accessor for Feature.FindMy();
  v0[5] = My;
  v0[6] = sub_100003E8C(&qword_1016AF950, &type metadata accessor for Feature.FindMy);
  v2 = sub_1000280DC(v0 + 2);
  (*(*(My - 8) + 104))(v2, enum case for Feature.FindMy.managedCBPeripheral(_:), My);
  LOBYTE(My) = isFeatureEnabled(_:)();
  sub_100007BAC(v0 + 2);
  if (My)
  {
    v3 = async function pointer to daemon.getter[1];
    v4 = swift_task_alloc();
    v0[11] = v4;
    *v4 = v0;
    v4[1] = sub_100702774;

    return daemon.getter();
  }

  else
  {
    if (qword_101694B80 != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    sub_1000076D4(v5, qword_10177B7F8);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&_mh_execute_header, v6, v7, "managedCBPeripheral FF is disabled!", v8, 2u);
    }

    v9 = v0[10];

    v10 = v0[1];

    return v10(&_swiftEmptySetSingleton);
  }
}

uint64_t sub_100702774(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 88);
  v12 = *v1;
  *(v3 + 96) = a1;

  v5 = async function pointer to ActorServiceDaemon.getService<A>()[1];
  v6 = swift_task_alloc();
  *(v3 + 104) = v6;
  v7 = type metadata accessor for Daemon();
  v8 = type metadata accessor for StandaloneBeaconService();
  v9 = sub_100003E8C(&qword_1016AA400, &type metadata accessor for Daemon);
  v10 = sub_100003E8C(&qword_10169F450, type metadata accessor for StandaloneBeaconService);
  *v6 = v12;
  v6[1] = sub_100702950;

  return ActorServiceDaemon.getService<A>()(v7, v8, v9, v10);
}

uint64_t sub_100702950(uint64_t a1)
{
  v4 = *v2;
  v5 = *(*v2 + 104);
  v6 = *v2;
  v4[14] = a1;
  v4[15] = v1;

  if (v1)
  {
    v7 = sub_100702FB0;
    v8 = 0;
  }

  else
  {
    v9 = v4[12];

    v7 = sub_100702A88;
    v8 = a1;
  }

  return _swift_task_switch(v7, v8, 0);
}

uint64_t sub_100702A88()
{
  v1 = v0[15];
  sub_100F855A4(*(v0[14] + 128));
  v0[16] = v1;
  if (v1)
  {
    v2 = sub_100702DCC;
  }

  else
  {
    v0[17] = dispatch thunk of _AnySequenceBox.__copyToContiguousArray()();

    v2 = sub_100702B28;
  }

  return _swift_task_switch(v2, 0, 0);
}

uint64_t sub_100702B28()
{
  v1 = v0[17];
  v2 = *(v1 + 16);
  if (v2)
  {
    v3 = v0[9];
    v31 = v0[8];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = v1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v30 = *(v3 + 72);
    v41 = v0;
    do
    {
      v40 = v2;
      v5 = v41[10];
      sub_100721C9C(v4, v5, type metadata accessor for StandaloneBeacon);
      v6 = v5 + v31[5];
      v7 = MACAddress.dataRepresentation.getter();
      v38 = v8;
      v39 = v7;
      v9 = v5 + v31[6];
      v10 = MACAddress.dataRepresentation.getter();
      v12 = v11;
      v36 = v31[8];
      v37 = v10;
      v13 = (v5 + v31[7]);
      v14 = *v13;
      v15 = v13[1];
      v16 = (v5 + v31[9]);
      v34 = v16[1];
      v35 = *v16;
      v33 = objc_allocWithZone(SPStandaloneBeacon);
      isa = UUID._bridgeToObjectiveC()().super.isa;
      v17 = Data._bridgeToObjectiveC()().super.isa;
      v18 = Data._bridgeToObjectiveC()().super.isa;
      v19 = String._bridgeToObjectiveC()();
      v20 = Date._bridgeToObjectiveC()().super.isa;
      v21 = Data._bridgeToObjectiveC()().super.isa;
      [v33 initWithIdentifier:isa macAddress:v17 classicMacAddress:v18 serialNumber:v19 pairingDate:v20 productData:v21];

      sub_100016590(v37, v12);
      sub_100016590(v39, v38);
      v0 = v41;
      sub_100721D04(v5, type metadata accessor for StandaloneBeacon);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      v22 = _swiftEmptyArrayStorage[2];
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += v30;
      v2 = v40 - 1;
    }

    while (v40 != 1);
    v23 = v41[17];
  }

  else
  {
    v24 = v0[17];
  }

  v25 = v0[14];
  v26 = sub_10112AF70(_swiftEmptyArrayStorage);

  v27 = v0[10];

  v28 = v0[1];

  return v28(v26);
}

uint64_t sub_100702DCC()
{
  v15 = v0;
  v1 = v0[14];

  v2 = v0[16];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[7] = v2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "standaloneBeacons error %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v11 = v0[10];

  v12 = v0[1];

  return v12(&_swiftEmptySetSingleton);
}

uint64_t sub_100702FB0()
{
  v15 = v0;
  v1 = v0[12];

  v2 = v0[15];
  if (qword_101694B80 != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  sub_1000076D4(v3, qword_10177B7F8);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v14 = v7;
    *v6 = 136446210;
    v0[7] = v2;
    swift_errorRetain();
    sub_1000BC4D4(&qword_101696960, &unk_10138B220);
    v8 = String.init<A>(describing:)();
    v10 = sub_1000136BC(v8, v9, &v14);

    *(v6 + 4) = v10;
    _os_log_impl(&_mh_execute_header, v4, v5, "standaloneBeacons error %{public}s", v6, 0xCu);
    sub_100007BAC(v7);
  }

  else
  {
  }

  v11 = v0[10];

  v12 = v0[1];

  return v12(&_swiftEmptySetSingleton);
}

uint64_t sub_100703194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v86 = a2;
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v77 - v7;
  v88 = type metadata accessor for OwnedBeaconGroup(0);
  v85 = *(v88 - 8);
  v9 = *(v85 + 64);
  __chkstk_darwin(v88);
  v11 = &v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1000BC4D4(&qword_1016980D0, &unk_10138F3B0);
  v13 = *(*(v12 - 8) + 64);
  v14 = __chkstk_darwin(v12 - 8);
  v83 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __chkstk_darwin(v14);
  v84 = &v77 - v17;
  v18 = __chkstk_darwin(v16);
  v79 = &v77 - v19;
  v20 = __chkstk_darwin(v18);
  v80 = &v77 - v21;
  v22 = __chkstk_darwin(v20);
  v82 = &v77 - v23;
  __chkstk_darwin(v22);
  v25 = &v77 - v24;
  v26 = type metadata accessor for MACAddress();
  v27 = *(v26 - 8);
  v28 = *(v27 + 64);
  __chkstk_darwin(v26);
  v30 = &v77 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v31 = type metadata accessor for Logger();
  v32 = sub_1000076D4(v31, qword_10177C418);
  v33 = *(v27 + 16);
  v87 = a1;
  v33(v30, a1, v26);
  v81 = v32;
  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();
  v36 = os_log_type_enabled(v34, v35);
  v89 = v8;
  if (v36)
  {
    v37 = swift_slowAlloc();
    v78 = v11;
    v38 = v37;
    v77 = swift_slowAlloc();
    v90 = v77;
    *v38 = 141558275;
    *(v38 + 4) = 1752392040;
    *(v38 + 12) = 2081;
    sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress);
    v39 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v25;
    v41 = a3;
    v43 = v42;
    (*(v27 + 8))(v30, v26);
    v44 = sub_1000136BC(v39, v43, &v90);
    a3 = v41;
    v25 = v40;

    *(v38 + 14) = v44;
    _os_log_impl(&_mh_execute_header, v34, v35, "beaconingIdentifier for %{private,mask.hash}s", v38, 0x16u);
    sub_100007BAC(v77);

    v11 = v78;
  }

  else
  {

    (*(v27 + 8))(v30, v26);
  }

  if (qword_101694F58 != -1)
  {
    swift_once();
  }

  v45 = qword_10177C218;
  v46 = [objc_opt_self() sharedInstance];
  v47 = [v46 isInternalBuild];

  if (v47)
  {
    v48 = String._bridgeToObjectiveC()();
    v49 = [v45 stringForKey:v48];

    if (v49)
    {
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v53, v54))
      {
        v55 = swift_slowAlloc();
        v56 = swift_slowAlloc();
        v90 = v56;
        *v55 = 136315138;
        *(v55 + 4) = sub_1000136BC(v50, v52, &v90);
        _os_log_impl(&_mh_execute_header, v53, v54, "beaconingIdentifierOverride: %s", v55, 0xCu);
        sub_100007BAC(v56);
      }

      UUID.init(uuidString:)();

      v57 = v82;
      sub_1000D2A70(v25, v82, &qword_1016980D0, &unk_10138F3B0);
      v58 = type metadata accessor for UUID();
      v59 = *(v58 - 8);
      isa = 0;
      if ((*(v59 + 48))(v57, 1, v58) != 1)
      {
        isa = UUID._bridgeToObjectiveC()().super.isa;
        (*(v59 + 8))(v57, v58);
      }

      (*(a3 + 16))(a3, isa);

      v61 = v25;
      return sub_10000B3A8(v61, &qword_1016980D0, &unk_10138F3B0);
    }
  }

  v62 = *(v86 + 280);
  v63 = v89;
  sub_100AC5D4C(v87, v89);
  v64 = v88;
  if ((*(v85 + 48))(v63, 1, v88) == 1)
  {
    sub_10000B3A8(v63, &unk_1016AF8B0, &unk_1013A0700);
LABEL_22:
    v72 = type metadata accessor for UUID();
    v73 = *(v72 - 8);
    v74 = v84;
    (*(v73 + 56))(v84, 1, 1, v72);
    v75 = v83;
    sub_1000D2A70(v74, v83, &qword_1016980D0, &unk_10138F3B0);
    v76 = 0;
    if ((*(v73 + 48))(v75, 1, v72) != 1)
    {
      v76 = UUID._bridgeToObjectiveC()().super.isa;
      (*(v73 + 8))(v75, v72);
    }

    (*(a3 + 16))(a3, v76);

    v61 = v74;
    return sub_10000B3A8(v61, &qword_1016980D0, &unk_10138F3B0);
  }

  sub_10002AB74(v63, v11, type metadata accessor for OwnedBeaconGroup);
  if ((v11[*(v64 + 32)] & 1) == 0)
  {
    sub_100721D04(v11, type metadata accessor for OwnedBeaconGroup);
    goto LABEL_22;
  }

  v65 = *(v64 + 24);
  v66 = type metadata accessor for UUID();
  v67 = *(v66 - 8);
  v68 = v80;
  (*(v67 + 16))(v80, &v11[v65], v66);
  (*(v67 + 56))(v68, 0, 1, v66);
  v69 = v79;
  sub_1000D2A70(v68, v79, &qword_1016980D0, &unk_10138F3B0);
  v70 = 0;
  if ((*(v67 + 48))(v69, 1, v66) != 1)
  {
    v70 = UUID._bridgeToObjectiveC()().super.isa;
    (*(v67 + 8))(v69, v66);
  }

  (*(a3 + 16))(a3, v70);

  sub_10000B3A8(v68, &qword_1016980D0, &unk_10138F3B0);
  return sub_100721D04(v11, type metadata accessor for OwnedBeaconGroup);
}

uint64_t sub_100703BA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v59 = a2;
  v5 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v8 = &v50 - v7;
  v60 = type metadata accessor for OwnedBeaconGroup(0);
  v58 = *(v60 - 8);
  v9 = *(v58 + 64);
  __chkstk_darwin(v60);
  v56 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for MACAddress();
  v12 = *(v11 - 8);
  v13 = v12[8];
  v14 = __chkstk_darwin(v11);
  v16 = &v50 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v18 = &v50 - v17;
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  v20 = sub_1000076D4(v19, qword_10177C418);
  v53 = v12[2];
  v54 = v12 + 2;
  v53(v18, a1, v11);
  v55 = v20;
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.default.getter();
  v23 = os_log_type_enabled(v21, v22);
  v57 = v12;
  if (v23)
  {
    v24 = swift_slowAlloc();
    v52 = a1;
    v25 = v24;
    v50 = swift_slowAlloc();
    v61 = v50;
    *v25 = 141558275;
    *(v25 + 4) = 1752392040;
    *(v25 + 12) = 2081;
    sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress);
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v51 = v8;
    v27 = v16;
    v28 = a3;
    v30 = v29;
    v31 = v18;
    v32 = v12[1];
    v32(v31, v11);
    v33 = sub_1000136BC(v26, v30, &v61);
    a3 = v28;
    v16 = v27;
    v8 = v51;

    *(v25 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v21, v22, "fetchFindMyNetworkStatus for %{private,mask.hash}s", v25, 0x16u);
    sub_100007BAC(v50);

    a1 = v52;
  }

  else
  {

    v34 = v18;
    v32 = v12[1];
    v32(v34, v11);
  }

  v35 = *(v59 + 280);
  sub_100AC5D4C(a1, v8);
  v36 = v60;
  if ((*(v58 + 48))(v8, 1, v60) == 1)
  {
    sub_10000B3A8(v8, &unk_1016AF8B0, &unk_1013A0700);
    v53(v16, a1, v11);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v61 = v40;
      *v39 = 136315138;
      sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress);
      v41 = dispatch thunk of CustomStringConvertible.description.getter();
      v42 = v16;
      v44 = v43;
      v32(v42, v11);
      v45 = sub_1000136BC(v41, v44, &v61);

      *(v39 + 4) = v45;
      _os_log_impl(&_mh_execute_header, v37, v38, "No beacon group for %s", v39, 0xCu);
      sub_100007BAC(v40);
    }

    else
    {

      v32(v16, v11);
    }

    sub_1003FD838();
    swift_allocError();
    *v48 = 1;
    v49 = _convertErrorToNSError(_:)();
    (*(a3 + 16))(a3, 0, v49);
  }

  else
  {
    v46 = v56;
    sub_10002AB74(v8, v56, type metadata accessor for OwnedBeaconGroup);
    (*(a3 + 16))(a3, *(v46 + *(v36 + 32)), 0);
    return sub_100721D04(v46, type metadata accessor for OwnedBeaconGroup);
  }
}

uint64_t sub_1007041C4(uint64_t a1, int a2, uint64_t a3, void (**a4)(void, void))
{
  LODWORD(v233) = a2;
  v208 = sub_1000BC4D4(&qword_10169F3B0, &qword_1013A0880);
  v206 = *(v208 - 8);
  v7 = *(v206 + 64);
  __chkstk_darwin(v208);
  v205 = &v201 - v8;
  v210 = sub_1000BC4D4(&qword_10169F3B8, &qword_1013A0888);
  v209 = *(v210 - 8);
  v9 = *(v209 + 64);
  __chkstk_darwin(v210);
  v207 = &v201 - v10;
  v213 = sub_1000BC4D4(&qword_10169F3C0, &qword_1013A0890);
  v212 = *(v213 - 8);
  v11 = *(v212 + 64);
  __chkstk_darwin(v213);
  v211 = &v201 - v12;
  v216 = sub_1000BC4D4(&qword_10169F3C8, &qword_1013A0898);
  v215 = *(v216 - 8);
  v13 = *(v215 + 64);
  __chkstk_darwin(v216);
  v214 = &v201 - v14;
  v223 = type metadata accessor for DispatchTime();
  v230 = *(v223 - 8);
  v15 = *(v230 + 64);
  v16 = __chkstk_darwin(v223);
  v221 = &v201 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v16);
  v222 = &v201 - v18;
  v19 = sub_1000BC4D4(&unk_1016AF8B0, &unk_1013A0700);
  v20 = *(*(v19 - 8) + 64);
  __chkstk_darwin(v19 - 8);
  v232 = (&v201 - v21);
  v231 = type metadata accessor for OwnedBeaconGroup(0);
  v22 = *(v231 - 8);
  v23 = *(v22 + 64);
  v24 = __chkstk_darwin(v231);
  v204 = &v201 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v24);
  v219 = &v201 - v27;
  v28 = __chkstk_darwin(v26);
  v218 = &v201 - v29;
  v30 = __chkstk_darwin(v28);
  v220 = &v201 - v31;
  v203 = v32;
  __chkstk_darwin(v30);
  v235 = &v201 - v33;
  v34 = type metadata accessor for MACAddress();
  v35 = *(v34 - 8);
  v36 = v35[8];
  v37 = __chkstk_darwin(v34);
  v227 = &v201 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v37);
  v40 = &v201 - v39;
  v234 = swift_allocObject();
  *(v234 + 2) = a4;
  _Block_copy(a4);
  if (qword_1016950D0 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_1000076D4(v41, qword_10177C418);
  v43 = v35[2];
  v226 = v35 + 2;
  v225 = v43;
  v43(v40, a1, v34);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();
  v46 = os_log_type_enabled(v44, v45);
  v228 = v35;
  if (v46)
  {
    v47 = swift_slowAlloc();
    v217 = a4;
    v48 = v47;
    v49 = swift_slowAlloc();
    v229 = v42;
    v201 = v49;
    v239 = v49;
    *v48 = 67240450;
    *(v48 + 4) = v233 & 1;
    *(v48 + 8) = 2082;
    sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress);
    v50 = dispatch thunk of CustomStringConvertible.description.getter();
    v202 = a1;
    v51 = a3;
    v52 = v22;
    v54 = v53;
    v224 = v35[1];
    v224(v40, v34);
    v55 = sub_1000136BC(v50, v54, &v239);
    v22 = v52;
    a3 = v51;
    a1 = v202;

    *(v48 + 10) = v55;
    _os_log_impl(&_mh_execute_header, v44, v45, "setFindMyNetworkStatus %{BOOL,public}d for %{public}s", v48, 0x12u);
    sub_100007BAC(v201);
    v56 = v229;

    a4 = v217;
  }

  else
  {

    v224 = v35[1];
    v224(v40, v34);
    v56 = v42;
  }

  v57 = *(a3 + 280);
  v58 = v232;
  sub_100AC5D4C(a1, v232);
  if ((*(v22 + 48))(v58, 1, v231) != 1)
  {
    sub_10002AB74(v58, v235, type metadata accessor for OwnedBeaconGroup);
    if (v233)
    {
      v68 = v235;
      sub_100698438(1, v235, sub_10001E370, v234);
      sub_100721D04(v68, type metadata accessor for OwnedBeaconGroup);
    }

    v228 = v22;
    v71 = swift_allocObject();
    *(v71 + 16) = 0;
    v72 = (v71 + 16);
    v73 = dispatch_group_create();
    dispatch_group_enter(v73);

    v74 = v73;
    v233 = a3;
    sub_10040B2B8(v235, 1, a3, v71, v74);

    v75 = v221;
    static DispatchTime.now()();
    v76 = v222;
    + infix(_:_:)();
    v77 = v230 + 8;
    v78 = *(v230 + 8);
    v79 = v223;
    (v78)(v75, v223);
    OS_dispatch_group.wait(timeout:)();
    v232 = v78;
    (v78)(v76, v79);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v80 = v220;
      sub_100721C9C(v235, v220, type metadata accessor for OwnedBeaconGroup);
      v229 = v56;
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        v230 = v77;
        v84 = v83;
        v85 = swift_slowAlloc();
        v231 = v71;
        v86 = v85;
        v239 = v85;
        *v84 = 136315138;
        v87 = sub_10051F7B0(v85);
        v88 = v72;
        v90 = v89;
        sub_100721D04(v80, type metadata accessor for OwnedBeaconGroup);
        v91 = sub_1000136BC(v87, v90, &v239);
        v72 = v88;

        *(v84 + 4) = v91;
        _os_log_impl(&_mh_execute_header, v81, v82, "Timed out waiting for pairing lock removal %s", v84, 0xCu);
        sub_100007BAC(v86);
        v71 = v231;

        v77 = v230;
      }

      else
      {

        sub_100721D04(v80, type metadata accessor for OwnedBeaconGroup);
      }

      sub_1003FD838();
      v92 = swift_allocError();
      *v93 = 9;
      swift_beginAccess();
      v94 = *v72;
      *v72 = v92;

      v56 = v229;
    }

    swift_beginAccess();
    v95 = *v72;
    if (*v72)
    {
      v96 = *v72;
      swift_errorRetain();
      swift_errorRetain();
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v237 = v100;
        *v99 = 136446210;
        v238 = v95;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v101 = String.init<A>(describing:)();
        v103 = a4;
        v104 = sub_1000136BC(v101, v102, &v237);

        *(v99 + 4) = v104;
        a4 = v103;
        v105 = "Unable to remove pairing lock. Error %{public}s";
LABEL_39:
        _os_log_impl(&_mh_execute_header, v97, v98, v105, v99, 0xCu);
        sub_100007BAC(v100);

        goto LABEL_40;
      }

      goto LABEL_40;
    }

    dispatch_group_enter(v74);
    v106 = swift_allocObject();
    *(v106 + 16) = v71;
    *(v106 + 24) = v74;

    v107 = v74;
    sub_1003E8454(v235, sub_100721A80, v106);

    v108 = v221;
    static DispatchTime.now()();
    v109 = v222;
    + infix(_:_:)();
    v110 = v108;
    v111 = v223;
    v112 = v232;
    (v232)(v110, v223);
    OS_dispatch_group.wait(timeout:)();
    v112(v109, v111);
    v113 = static DispatchTimeoutResult.== infix(_:_:)();
    v231 = v71;
    v229 = v56;
    if (v113)
    {
      v114 = v218;
      sub_100721C9C(v235, v218, type metadata accessor for OwnedBeaconGroup);
      v115 = Logger.logObject.getter();
      v116 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v115, v116))
      {
        v117 = swift_slowAlloc();
        v230 = v77;
        v118 = v117;
        v119 = swift_slowAlloc();
        v237 = v119;
        *v118 = 136315138;
        v120 = sub_10051F7B0(v119);
        v121 = v107;
        v122 = v72;
        v124 = v123;
        sub_100721D04(v114, type metadata accessor for OwnedBeaconGroup);
        v125 = sub_1000136BC(v120, v124, &v237);
        v72 = v122;
        v107 = v121;

        *(v118 + 4) = v125;
        _os_log_impl(&_mh_execute_header, v115, v116, "Timed out waiting for unpair command response %s", v118, 0xCu);
        sub_100007BAC(v119);
        v71 = v231;

        v77 = v230;
      }

      else
      {

        sub_100721D04(v114, type metadata accessor for OwnedBeaconGroup);
      }

      sub_1003FD838();
      v126 = swift_allocError();
      *v127 = 9;
      v128 = *v72;
      *v72 = v126;
    }

    v129 = *v72;
    if (*v72)
    {
      v230 = v77;
      swift_errorRetain();
      swift_errorRetain();
      v130 = Logger.logObject.getter();
      v131 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v130, v131))
      {
        v132 = swift_slowAlloc();
        v133 = swift_slowAlloc();
        v237 = v133;
        *v132 = 136446210;
        v238 = v129;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v134 = String.init<A>(describing:)();
        v136 = v107;
        v137 = a4;
        v138 = sub_1000136BC(v134, v135, &v237);

        *(v132 + 4) = v138;
        a4 = v137;
        v107 = v136;
        _os_log_impl(&_mh_execute_header, v130, v131, "Unpair command failed. Error %{public}s", v132, 0xCu);
        sub_100007BAC(v133);
        v71 = v231;
      }

      else
      {
      }

      v139 = *v72;
      *v72 = 0;
    }

    dispatch_group_enter(v107);
    v140 = swift_allocObject();
    *(v140 + 16) = v71;
    *(v140 + 24) = v107;

    v74 = v107;
    sub_100698438(0, v235, sub_100721F34, v140);

    v141 = v221;
    static DispatchTime.now()();
    v142 = v222;
    + infix(_:_:)();
    v143 = v223;
    v144 = v232;
    (v232)(v141, v223);
    OS_dispatch_group.wait(timeout:)();
    v144(v142, v143);
    if (static DispatchTimeoutResult.== infix(_:_:)())
    {
      v145 = v219;
      sub_100721C9C(v235, v219, type metadata accessor for OwnedBeaconGroup);
      v146 = Logger.logObject.getter();
      v147 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v146, v147))
      {
        v148 = swift_slowAlloc();
        v149 = swift_slowAlloc();
        v237 = v149;
        *v148 = 136315138;
        v150 = sub_10051F7B0(v149);
        v151 = v145;
        v152 = v72;
        v154 = v153;
        sub_100721D04(v151, type metadata accessor for OwnedBeaconGroup);
        v155 = sub_1000136BC(v150, v154, &v237);
        v72 = v152;

        *(v148 + 4) = v155;
        _os_log_impl(&_mh_execute_header, v146, v147, "Timed out waiting for FMNS status update %s", v148, 0xCu);
        sub_100007BAC(v149);
        v71 = v231;
      }

      else
      {

        sub_100721D04(v145, type metadata accessor for OwnedBeaconGroup);
      }

      sub_1003FD838();
      v156 = swift_allocError();
      *v157 = 9;
      v158 = *v72;
      *v72 = v156;
    }

    v159 = *v72;
    if (*v72)
    {
      v160 = *v72;
      swift_errorRetain();
      swift_errorRetain();
      v97 = Logger.logObject.getter();
      v98 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v97, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        v237 = v100;
        *v99 = 136446210;
        v238 = v159;
        swift_errorRetain();
        sub_1000BC4D4(&qword_101696960, &unk_10138B220);
        v161 = String.init<A>(describing:)();
        v163 = a4;
        v164 = sub_1000136BC(v161, v162, &v237);

        *(v99 + 4) = v164;
        a4 = v163;
        v105 = "Unable to update FMNS status. Error %{public}s";
        goto LABEL_39;
      }

LABEL_40:

      swift_errorRetain();
      v165 = _convertErrorToNSError(_:)();
      (a4)[2](a4, v165);

LABEL_41:
      sub_100721D04(v235, type metadata accessor for OwnedBeaconGroup);
    }

    dispatch_group_enter(v74);
    v167 = swift_allocObject();
    *(v167 + 16) = v71;
    *(v167 + 24) = v74;
    v238 = _swiftEmptyArrayStorage;

    v168 = v74;
    v169 = sub_100519FB0();
    v170 = v233;

    sub_1003FCFF8(v169, v170, &v238, 0);

    v171 = v238;
    if (v238 >> 62)
    {
      if (_CocoaArrayWrapper.endIndex.getter())
      {
        goto LABEL_45;
      }
    }

    else if (*((v238 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_45:
      v172 = swift_allocObject();
      v232 = v172;
      *(v172 + 2) = 0;
      v173 = (v172 + 16);
      v237 = v171;

      v233 = v72;
      sub_1000BC4D4(&qword_10169F3D0, &qword_1013A08A0);
      v217 = a4;
      sub_1000BC4D4(&qword_10169F3D8, &qword_1013A08A8);
      sub_1000041A4(&qword_10169F3E0, &qword_10169F3D0, &qword_1013A08A0);
      sub_1000041A4(&qword_10169F3E8, &qword_10169F3D8, &qword_1013A08A8);
      v174 = v205;
      Publishers.MergeMany.init<A>(_:)();
      sub_1000041A4(&qword_10169F3F0, &qword_10169F3B0, &qword_1013A0880);
      v175 = v207;
      v176 = v208;
      Publisher.collect()();
      (*(v206 + 8))(v174, v176);
      sub_1000BC4D4(&qword_10169F3F8, &qword_1013A08B0);
      sub_1000041A4(&qword_10169F400, &qword_10169F3B8, &qword_1013A0888);
      v177 = v211;
      v178 = v210;
      Publisher.map<A>(_:)();
      (*(v209 + 8))(v175, v178);
      sub_1000BC4D4(&qword_10169F408, &qword_1013A08B8);
      sub_1000041A4(&qword_10169F410, &qword_10169F3C0, &qword_1013A0890);
      sub_1000041A4(&qword_10169F418, &qword_10169F408, &qword_1013A08B8);
      v179 = v214;
      v180 = v213;
      Publisher.catch<A>(_:)();
      (*(v212 + 8))(v177, v180);
      v181 = v204;
      sub_100721C9C(v235, v204, type metadata accessor for OwnedBeaconGroup);
      v182 = (*(v228 + 80) + 16) & ~*(v228 + 80);
      v183 = (v203 + v182 + 7) & 0xFFFFFFFFFFFFFFF8;
      v184 = swift_allocObject();
      sub_10002AB74(v181, v184 + v182, type metadata accessor for OwnedBeaconGroup);
      v185 = (v184 + v183);
      *v185 = sub_100721F34;
      v185[1] = v167;
      *(v184 + ((v183 + 23) & 0xFFFFFFFFFFFFFFF8)) = v232;
      a4 = v217;
      sub_1000041A4(&qword_10169F420, &qword_10169F3C8, &qword_1013A0898);

      v186 = v216;
      v187 = Publisher<>.sink(receiveValue:)();

      v188 = v186;
      v72 = v233;
      (*(v215 + 8))(v179, v188);
      swift_beginAccess();
      v189 = *v173;
      *v173 = v187;

LABEL_48:

      v191 = *v72;
      if (*v72)
      {
        v192 = *v72;
        swift_errorRetain();
        swift_errorRetain();
        v193 = Logger.logObject.getter();
        v194 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v193, v194))
        {
          v195 = swift_slowAlloc();
          v196 = swift_slowAlloc();
          v238 = v196;
          *v195 = 136446210;
          v236 = v191;
          swift_errorRetain();
          sub_1000BC4D4(&qword_101696960, &unk_10138B220);
          v197 = String.init<A>(describing:)();
          v199 = sub_1000136BC(v197, v198, &v238);

          *(v195 + 4) = v199;
          _os_log_impl(&_mh_execute_header, v193, v194, "Unable to remove related records. Error %{public}s", v195, 0xCu);
          sub_100007BAC(v196);
        }

        swift_errorRetain();
        v200 = _convertErrorToNSError(_:)();
        (a4)[2](a4, v200);
      }

      else
      {
        a4[2](a4, 0);
      }

      goto LABEL_41;
    }

    v190 = *v72;
    *v72 = 0;

    dispatch_group_leave(v168);

    goto LABEL_48;
  }

  sub_10000B3A8(v58, &unk_1016AF8B0, &unk_1013A0700);
  v59 = v227;
  v225(v227, a1, v34);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    v63 = swift_slowAlloc();
    v239 = v63;
    *v62 = 136446210;
    sub_100003E8C(&qword_1016A4210, &type metadata accessor for MACAddress);
    v64 = dispatch thunk of CustomStringConvertible.description.getter();
    v66 = v65;
    v224(v59, v34);
    v67 = sub_1000136BC(v64, v66, &v239);

    *(v62 + 4) = v67;
    _os_log_impl(&_mh_execute_header, v60, v61, "No beacon group for %{public}s", v62, 0xCu);
    sub_100007BAC(v63);
  }

  else
  {

    v224(v59, v34);
  }

  sub_1003FD838();
  swift_allocError();
  *v69 = 1;
  v70 = _convertErrorToNSError(_:)();
  (a4)[2](a4, v70);
}