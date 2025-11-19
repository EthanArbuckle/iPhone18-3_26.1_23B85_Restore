uint64_t sub_1000AD1F4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X4>, uint64_t a5@<X5>, char a6@<W6>, uint64_t a7@<X7>, _DWORD *a8@<X8>, unint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v17 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v17 != 2)
    {
      memset(v110, 0, 14);
      v19 = *a4;
      v18 = a4[1];
      v33 = v18 >> 62;
      if ((v18 >> 62) <= 1)
      {
        if (v33)
        {
          sub_100069E2C(a7, a9);
          sub_100069E2C(a10, a11);
          sub_100069E2C(a7, a9);
          sub_100069E2C(a10, a11);
          sub_100069E2C(a2, a3);
          sub_100069E2C(a10, a11);
          sub_100069E2C(a7, a9);
          sub_100069E2C(a2, a3);
          sub_100069E2C(v19, v18);
          sub_10006A178(v19, v18);
          *a4 = xmmword_1004098D0;
          v22 = v18 & 0x3FFFFFFFFFFFFFFFLL;
          sub_10006A178(0, 0xC000000000000000);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v69 = v19;
          v70 = v19 >> 32;
          v100 = v19;
          if (isUniquelyReferenced_nonNull_native)
          {
            goto LABEL_70;
          }

          v97 = v19 >> 32;
          if (v70 < v19)
          {
LABEL_103:
            __break(1u);
            goto LABEL_104;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v19, __DataStorage._offset.getter()))
          {
            goto LABEL_107;
          }

LABEL_69:
          v80 = type metadata accessor for __DataStorage();
          v81 = *(v80 + 48);
          v82 = *(v80 + 52);
          swift_allocObject();
          v69 = v100;
          v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v70 = v97;
LABEL_70:
          if (v70 >= v69)
          {
            sub_100069E2C(a10, a11);
            sub_100069E2C(a7, a9);
            sub_100069E2C(a2, a3);

            result = __DataStorage._bytes.getter();
            if (result)
            {
              v77 = result;
              v83 = __DataStorage._offset.getter();
              v79 = v100 - v83;
              if (!__OFSUB__(v100, v83))
              {
LABEL_73:
                v84 = v79 + v77;
                __DataStorage._length.getter();
                sub_100069E2C(a10, a11);
                sub_100069E2C(a7, a9);
                sub_100069E2C(a2, a3);
                v106 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v110, a10, a11, a12, v84, a14);
                sub_10006A178(a10, a11);
                sub_10006A178(a2, a3);
                sub_10006A178(a7, a9);
                sub_10006A178(a10, a11);
                sub_10006A178(a2, a3);
                sub_10006A178(a7, a9);

                sub_10006A178(a7, a9);
                sub_10006A178(a2, a3);
                sub_10006A178(a10, a11);
                sub_10006A178(a7, a9);
                v43 = v22 | 0x4000000000000000;
                v44 = a4;
                *a4 = v19;
                v34 = v106;
                goto LABEL_74;
              }

              goto LABEL_99;
            }

            goto LABEL_115;
          }

          goto LABEL_96;
        }

        goto LABEL_20;
      }

      goto LABEL_26;
    }

    v26 = *(a2 + 16);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    v27 = __DataStorage._bytes.getter();
    if (v27)
    {
      v28 = v27;
      v29 = __DataStorage._offset.getter();
      if (__OFSUB__(v26, v29))
      {
LABEL_92:
        __break(1u);
        goto LABEL_93;
      }

      v101 = v26 - v29 + v28;
    }

    else
    {
      v101 = 0;
    }

    __DataStorage._length.getter();
    v48 = *a4;
    v47 = a4[1];
    v49 = v47 >> 62;
    if ((v47 >> 62) <= 1)
    {
      if (!v49)
      {
LABEL_47:
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a2, a3);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a2, a3);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a2, a3);
        sub_10006A178(v48, v47);
        *&v111 = v48;
        WORD4(v111) = v47;
        BYTE10(v111) = BYTE2(v47);
        BYTE11(v111) = BYTE3(v47);
        BYTE12(v111) = BYTE4(v47);
        BYTE13(v111) = BYTE5(v47);
        BYTE14(v111) = BYTE6(v47);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a2, a3);
        v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v101, a10, a11, a12, &v111, a14);
        sub_10006A178(a10, a11);
        sub_10006A178(a2, a3);
        sub_10006A178(a7, a9);
        v60 = v111;
        v61 = DWORD2(v111) | ((WORD6(v111) | (BYTE14(v111) << 16)) << 32);
        sub_10006A178(a7, a9);
        sub_10006A178(a2, a3);
        sub_10006A178(a10, a11);
        sub_10006A178(a7, a9);
        *a4 = v60;
        a4[1] = v61;
LABEL_88:
        sub_10006A178(a2, a3);
        sub_10006A178(a10, a11);
        goto LABEL_89;
      }

      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(v48, v47);
      sub_10006A178(v48, v47);
      *a4 = xmmword_1004098D0;
      v50 = v47 & 0x3FFFFFFFFFFFFFFFLL;
      sub_10006A178(0, 0xC000000000000000);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v52 = v48;
      v53 = v48 >> 32;
      v98 = v48;
      if ((v51 & 1) == 0)
      {
        v96 = v48 >> 32;
        if (v53 < v48)
        {
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (__DataStorage._bytes.getter() && __OFSUB__(v48, __DataStorage._offset.getter()))
        {
          goto LABEL_108;
        }

        v85 = type metadata accessor for __DataStorage();
        v86 = *(v85 + 48);
        v87 = *(v85 + 52);
        swift_allocObject();
        v52 = v48;
        v50 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

        v53 = v48 >> 32;
      }

      if (v53 < v52)
      {
        goto LABEL_97;
      }

      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);

      result = __DataStorage._bytes.getter();
      if (!result)
      {
LABEL_116:
        __break(1u);
        goto LABEL_117;
      }

      v88 = result;
      v89 = __DataStorage._offset.getter();
      v90 = v48 - v89;
      if (!__OFSUB__(v48, v89))
      {
        goto LABEL_86;
      }

      __break(1u);
      goto LABEL_82;
    }

    if (v49 != 2)
    {
      goto LABEL_52;
    }

    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a2, a3);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    sub_100069E2C(v48, v47);
    sub_10006A178(v48, v47);
    *&v111 = v48;
    *(&v111 + 1) = v47 & 0x3FFFFFFFFFFFFFFFLL;
    *a4 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v54 = *(&v111 + 1);
    v99 = v111;
    v55 = *(v111 + 16);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
LABEL_112:
      __break(1u);
      goto LABEL_113;
    }

    v56 = result;
    v57 = __DataStorage._offset.getter();
    v58 = v55 - v57;
    if (!__OFSUB__(v55, v57))
    {
      goto LABEL_51;
    }

    __break(1u);
    goto LABEL_44;
  }

  if (!v17)
  {
    v110[0] = a2;
    LOWORD(v110[1]) = a3;
    BYTE2(v110[1]) = BYTE2(a3);
    BYTE3(v110[1]) = BYTE3(a3);
    BYTE4(v110[1]) = BYTE4(a3);
    v19 = *a4;
    v18 = a4[1];
    v20 = v18 >> 62;
    BYTE5(v110[1]) = BYTE5(a3);
    if ((v18 >> 62) <= 1)
    {
      if (v20)
      {
        sub_100069E2C(a7, a9);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a2, a3);
        sub_100069E2C(a10, a11);
        sub_100069E2C(a7, a9);
        sub_100069E2C(a2, a3);
        sub_100069E2C(v19, v18);
        sub_10006A178(v19, v18);
        *a4 = xmmword_1004098D0;
        v22 = v18 & 0x3FFFFFFFFFFFFFFFLL;
        sub_10006A178(0, 0xC000000000000000);
        v23 = swift_isUniquelyReferenced_nonNull_native();
        v24 = v19;
        v25 = v19 >> 32;
        v100 = v19;
        if ((v23 & 1) == 0)
        {
          v97 = v19 >> 32;
          if (v25 < v19)
          {
LABEL_102:
            __break(1u);
            goto LABEL_103;
          }

          if (__DataStorage._bytes.getter() && __OFSUB__(v19, __DataStorage._offset.getter()))
          {
            goto LABEL_106;
          }

          v74 = type metadata accessor for __DataStorage();
          v75 = *(v74 + 48);
          v76 = *(v74 + 52);
          swift_allocObject();
          v24 = v19;
          v22 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

          v25 = v19 >> 32;
        }

        if (v25 >= v24)
        {
          sub_100069E2C(a10, a11);
          sub_100069E2C(a7, a9);
          sub_100069E2C(a2, a3);

          result = __DataStorage._bytes.getter();
          if (result)
          {
            v77 = result;
            v78 = __DataStorage._offset.getter();
            v79 = v19 - v78;
            if (!__OFSUB__(v19, v78))
            {
              goto LABEL_73;
            }

            __break(1u);
            goto LABEL_69;
          }

LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
          goto LABEL_116;
        }

LABEL_95:
        __break(1u);
LABEL_96:
        __break(1u);
LABEL_97:
        __break(1u);
        goto LABEL_98;
      }

LABEL_20:
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_10006A178(v19, v18);
      *&v111 = v19;
      WORD4(v111) = v18;
      BYTE10(v111) = BYTE2(v18);
      BYTE11(v111) = BYTE3(v18);
      BYTE12(v111) = BYTE4(v18);
      BYTE13(v111) = BYTE5(v18);
      BYTE14(v111) = BYTE6(v18);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v110, a10, a11, a12, &v111, a14);
      sub_10006A178(a10, a11);
      sub_10006A178(a2, a3);
      sub_10006A178(a7, a9);
      v35 = v111;
      v36 = DWORD2(v111) | ((WORD6(v111) | (BYTE14(v111) << 16)) << 32);
      sub_10006A178(a7, a9);
      sub_10006A178(a2, a3);
      sub_10006A178(a10, a11);
      sub_10006A178(a7, a9);
      *a4 = v35;
      a4[1] = v36;
LABEL_75:
      sub_10006A178(a2, a3);
      v45 = a10;
      v46 = a11;
      goto LABEL_90;
    }

    if (v20 != 2)
    {
      goto LABEL_30;
    }

    sub_100069E2C(a7, a9);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a2, a3);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    sub_100069E2C(v19, v18);
    sub_10006A178(v19, v18);
    *&v111 = v19;
    *(&v111 + 1) = v18 & 0x3FFFFFFFFFFFFFFFLL;
    *a4 = xmmword_1004098D0;
    sub_10006A178(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v18 = *(&v111 + 1);
    v102 = v111;
    v19 = *(v111 + 16);
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
LABEL_111:
      __break(1u);
      goto LABEL_112;
    }

    v38 = result;
    v39 = __DataStorage._offset.getter();
    v33 = v19 - v39;
    if (!__OFSUB__(v19, v39))
    {
      goto LABEL_29;
    }

    __break(1u);
LABEL_26:
    if (v33 == 2)
    {
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(v19, v18);
      sub_10006A178(v19, v18);
      *&v111 = v19;
      *(&v111 + 1) = v18 & 0x3FFFFFFFFFFFFFFFLL;
      *a4 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v18 = *(&v111 + 1);
      v102 = v111;
      v40 = *(v111 + 16);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      result = __DataStorage._bytes.getter();
      if (result)
      {
        v38 = result;
        v41 = __DataStorage._offset.getter();
        v33 = v40 - v41;
        if (!__OFSUB__(v40, v41))
        {
LABEL_29:
          v42 = v33 + v38;
          __DataStorage._length.getter();
          sub_100069E2C(a10, a11);
          sub_100069E2C(a7, a9);
          sub_100069E2C(a2, a3);
          v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v110, a10, a11, a12, v42, a14);
          sub_10006A178(a10, a11);
          sub_10006A178(a2, a3);
          sub_10006A178(a7, a9);
          sub_10006A178(a10, a11);
          sub_10006A178(a2, a3);
          sub_10006A178(a7, a9);
          sub_10006A178(a7, a9);
          sub_10006A178(a2, a3);
          sub_10006A178(a10, a11);
          sub_10006A178(a7, a9);
          v43 = v18 | 0x8000000000000000;
          v44 = a4;
          *a4 = v102;
LABEL_74:
          v44[1] = v43;
          goto LABEL_75;
        }

LABEL_94:
        __break(1u);
        goto LABEL_95;
      }

      goto LABEL_111;
    }

LABEL_30:
    *(&v111 + 7) = 0;
    *&v111 = 0;
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v110, a10, a11, a12, &v111, a14);
    v45 = a2;
    v46 = a3;
LABEL_90:
    sub_10006A178(v45, v46);
    sub_10006A178(a10, a11);
    sub_10006A178(a2, a3);
    result = sub_10006A178(a7, a9);
    *a8 = v34;
    return result;
  }

  if (a2 > a2 >> 32)
  {
    __break(1u);
    goto LABEL_92;
  }

  sub_100069E2C(a10, a11);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a2, a3);
  v30 = __DataStorage._bytes.getter();
  if (v30)
  {
    v31 = v30;
    v32 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v32))
    {
      v101 = a2 - v32 + v31;
      goto LABEL_45;
    }

LABEL_93:
    __break(1u);
    goto LABEL_94;
  }

LABEL_44:
  v101 = 0;
LABEL_45:
  __DataStorage._length.getter();
  v48 = *a4;
  v47 = a4[1];
  v59 = v47 >> 62;
  if ((v47 >> 62) > 1)
  {
    if (v59 == 2)
    {
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a2, a3);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      sub_100069E2C(v48, v47);
      sub_10006A178(v48, v47);
      *&v111 = v48;
      *(&v111 + 1) = v47 & 0x3FFFFFFFFFFFFFFFLL;
      *a4 = xmmword_1004098D0;
      sub_10006A178(0, 0xC000000000000000);
      Data.LargeSlice.ensureUniqueReference()();
      v54 = *(&v111 + 1);
      v99 = v111;
      v62 = *(v111 + 16);
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      result = __DataStorage._bytes.getter();
      if (!result)
      {
LABEL_113:
        __break(1u);
        goto LABEL_114;
      }

      v56 = result;
      v63 = __DataStorage._offset.getter();
      v58 = v62 - v63;
      if (__OFSUB__(v62, v63))
      {
LABEL_98:
        __break(1u);
LABEL_99:
        __break(1u);
        goto LABEL_100;
      }

LABEL_51:
      v64 = v58 + v56;
      __DataStorage._length.getter();
      sub_100069E2C(a10, a11);
      sub_100069E2C(a7, a9);
      sub_100069E2C(a2, a3);
      v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v101, a10, a11, a12, v64, a14);
      sub_10006A178(a10, a11);
      sub_10006A178(a2, a3);
      sub_10006A178(a7, a9);
      sub_10006A178(a10, a11);
      sub_10006A178(a2, a3);
      sub_10006A178(a7, a9);
      sub_10006A178(a7, a9);
      sub_10006A178(a2, a3);
      sub_10006A178(a10, a11);
      sub_10006A178(a7, a9);
      v65 = v54 | 0x8000000000000000;
      v66 = a4;
      *a4 = v99;
LABEL_87:
      v66[1] = v65;
      goto LABEL_88;
    }

LABEL_52:
    *(&v111 + 7) = 0;
    *&v111 = 0;
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    v34 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v101, a10, a11, a12, &v111, a14);
LABEL_89:
    sub_10006A178(a10, a11);
    sub_10006A178(a2, a3);
    v45 = a7;
    v46 = a9;
    goto LABEL_90;
  }

  if (!v59)
  {
    goto LABEL_47;
  }

  sub_100069E2C(a10, a11);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a2, a3);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a10, a11);
  sub_100069E2C(a2, a3);
  sub_100069E2C(a10, a11);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a2, a3);
  sub_100069E2C(v48, v47);
  sub_10006A178(v48, v47);
  *a4 = xmmword_1004098D0;
  v50 = v47 & 0x3FFFFFFFFFFFFFFFLL;
  sub_10006A178(0, 0xC000000000000000);
  v71 = swift_isUniquelyReferenced_nonNull_native();
  v72 = v48;
  v73 = v48 >> 32;
  v98 = v48;
  if ((v71 & 1) == 0)
  {
    v96 = v48 >> 32;
    if (v73 < v48)
    {
LABEL_105:
      __break(1u);
LABEL_106:
      __break(1u);
LABEL_107:
      __break(1u);
LABEL_108:
      __break(1u);
      goto LABEL_109;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v48, __DataStorage._offset.getter()))
    {
LABEL_109:
      __break(1u);
    }

LABEL_82:
    v91 = type metadata accessor for __DataStorage();
    v92 = *(v91 + 48);
    v93 = *(v91 + 52);
    swift_allocObject();
    v72 = v98;
    v50 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v73 = v96;
  }

  if (v73 < v72)
  {
LABEL_100:
    __break(1u);
    goto LABEL_101;
  }

  sub_100069E2C(a10, a11);
  sub_100069E2C(a7, a9);
  sub_100069E2C(a2, a3);

  result = __DataStorage._bytes.getter();
  if (result)
  {
    v88 = result;
    v94 = __DataStorage._offset.getter();
    v90 = v98 - v94;
    if (__OFSUB__(v98, v94))
    {
LABEL_101:
      __break(1u);
      goto LABEL_102;
    }

LABEL_86:
    v95 = v90 + v88;
    __DataStorage._length.getter();
    sub_100069E2C(a10, a11);
    sub_100069E2C(a7, a9);
    sub_100069E2C(a2, a3);
    v107 = sub_1000B089C(a5, a6 & 1, a7, a9, a1, a2, a3, v101, a10, a11, a12, v95, a14);
    sub_10006A178(a10, a11);
    sub_10006A178(a2, a3);
    sub_10006A178(a7, a9);
    sub_10006A178(a10, a11);
    sub_10006A178(a2, a3);
    sub_10006A178(a7, a9);

    sub_10006A178(a7, a9);
    sub_10006A178(a2, a3);
    sub_10006A178(a10, a11);
    sub_10006A178(a7, a9);
    v65 = v50 | 0x4000000000000000;
    v66 = a4;
    *a4 = v48;
    v34 = v107;
    goto LABEL_87;
  }

LABEL_117:
  __break(1u);
  return result;
}

Swift::Int sub_1000AE8DC()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int sub_1000AE924()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t sub_1000AE968()
{
  v1 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart + 8);
  sub_1000B2A4C(*(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_onOwnerPairingStart));
  v4 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_activeFirstApproachPeers);

  v5 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachKeyIdentifiers);

  v6 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_requestedFirstApproachPeers);

  v7 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_closuresOnUnpairing);

  v8 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

  v9 = *(v0 + OBJC_IVAR____TtC10seserviced13AlishaPairing_unpairingPeerIdentifiers);

  return v0;
}

uint64_t sub_1000AEA4C()
{
  sub_1000AE968();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AlishaPairing()
{
  result = qword_100502DE8;
  if (!qword_100502DE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000AEAF8()
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

uint64_t getEnumTagSinglePayload for AlishaPairing.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF6)
  {
    goto LABEL_17;
  }

  if (a2 + 10 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 10) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 10;
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

      return (*a1 | (v4 << 8)) - 10;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 10;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xB;
  v8 = v6 - 11;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlishaPairing.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 10 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 10) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF6)
  {
    v4 = 0;
  }

  if (a2 > 0xF5)
  {
    v5 = ((a2 - 246) >> 8) + 1;
    *result = a2 + 10;
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
    *result = a2 + 10;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DSKExpress.ExpressState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

  if (a2 + 2 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 2) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DSKExpress.ExpressState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000AEE84()
{
  result = qword_100502ED0;
  if (!qword_100502ED0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502ED0);
  }

  return result;
}

unint64_t sub_1000AEEDC()
{
  result = qword_100502ED8;
  if (!qword_100502ED8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502ED8);
  }

  return result;
}

void sub_1000AF00C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v58 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
    goto LABEL_20;
  }

  if ([a1 endPointType] != 1)
  {
    return;
  }

  v11 = OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint;
  v12 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
  v62 = a1;
  if (v12)
  {

    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v13, v14))
    {

      goto LABEL_14;
    }

    v60 = v14;
    v61 = v13;
    v15 = swift_slowAlloc();
    v59 = swift_slowAlloc();
    v64 = v59;
    *v15 = 136315394;
    v16 = *(v2 + v11);
    if (v16)
    {
      v17 = v16;

      v18 = [v17 publicKeyIdentifier];
      v19 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      v63 = sub_100288788(v19, v21);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v22 = BidirectionalCollection<>.joined(separator:)();
      v24 = v23;
      sub_10006A178(v19, v21);

      v25 = sub_1002FFA0C(v22, v24, &v64);

      *(v15 + 4) = v25;
      *(v15 + 12) = 2080;
      v26 = [v62 publicKeyIdentifier];
      v27 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v29 = v28;

      v63 = sub_100288788(v27, v29);
      v30 = BidirectionalCollection<>.joined(separator:)();
      v32 = v31;
      sub_10006A178(v27, v29);

      v33 = sub_1002FFA0C(v30, v32, &v64);

      *(v15 + 14) = v33;
      v13 = v61;
      _os_log_impl(&_mh_execute_header, v61, v60, "We're tracking endpoint %s but got a new one %s", v15, 0x16u);
      swift_arrayDestroy();

LABEL_14:

      sub_100099870(2);
      return;
    }

LABEL_20:

    __break(1u);
    return;
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v36 = 136315138;
    v37 = [v62 publicKeyIdentifier];
    v60 = v35;
    v38 = v37;
    v39 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v41 = v40;

    v63 = sub_100288788(v39, v41);
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v42 = BidirectionalCollection<>.joined(separator:)();
    v44 = v43;
    sub_10006A178(v39, v41);

    v45 = sub_1002FFA0C(v42, v44, &v64);

    *(v36 + 4) = v45;
    _os_log_impl(&_mh_execute_header, v34, v60, "Endpoint created %s", v36, 0xCu);
    sub_1000752F4(v61);
  }

  v46 = *(v2 + v11);
  *(v2 + v11) = v62;

  v47 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
  if (v47)
  {
    v48 = v62;

    v49 = [v48 publicKeyIdentifier];
    v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v52 = v51;

    v53 = (v47 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v54 = *(v47 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier);
    v55 = *(v47 + OBJC_IVAR____TtC10seserviced4Peer_keyIdentifier + 8);
    *v53 = v50;
    v53[1] = v52;
    sub_10006A2D0(v54, v55);
  }

  else
  {
    v56 = v62;

    v57 = v56;
  }
}

void sub_1000AF69C(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if (v9)
  {
    if ([a1 endPointType] == 1)
    {
      v11 = OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint;
      v12 = *(v2 + OBJC_IVAR____TtC10seserviced13AlishaPairing_endpoint);
      if (v12 && (sub_10009393C(0, &qword_100503F00, SEEndPoint_ptr), v13 = v12, v14 = a1, v15 = static NSObject.== infix(_:_:)(), v14, v13, (v15 & 1) != 0))
      {
        v36 = v14;
        v16 = Logger.logObject.getter();
        v17 = static os_log_type_t.info.getter();

        if (os_log_type_enabled(v16, v17))
        {
          v18 = swift_slowAlloc();
          v35 = swift_slowAlloc();
          v38 = v35;
          *v18 = 136315138;
          v19 = [v36 publicKeyIdentifier];
          HIDWORD(v34) = v17;
          v20 = v19;
          v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v23 = v22;

          v37 = sub_100288788(v21, v23);
          sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
          sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
          v24 = BidirectionalCollection<>.joined(separator:)();
          v26 = v25;
          sub_10006A178(v21, v23);

          v27 = sub_1002FFA0C(v24, v26, &v38);

          *(v18 + 4) = v27;
          _os_log_impl(&_mh_execute_header, v16, BYTE4(v34), "Endpoint updated %s", v18, 0xCu);
          sub_1000752F4(v35);
        }

        v28 = *(v2 + v11);
        *(v2 + v11) = v36;

        v29 = v36;

        v30 = v29;
      }

      else
      {
        v31 = Logger.logObject.getter();
        v32 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v31, v32))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&_mh_execute_header, v31, v32, "Got an update for a different endpoint", v33, 2u);
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

id sub_1000AFACC(void *a1)
{
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  result = (*(v3 + 8))(v6, v2);
  if (v7)
  {
    result = [a1 endPointType];
    if (result == 1)
    {
      v10 = [a1 publicKeyIdentifier];
      v11 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v13 = v12;

      sub_1000A6DB8(v11, v13);
      return sub_10006A178(v11, v13);
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1000AFC98(uint64_t *a1, uint64_t a2)
{
  v4 = *a1;

  v5 = sub_1000B32F0(v4, a2);

  *a1 = v5;
  return result;
}

uint64_t sub_1000AFCF4(id *a1)
{
  v1 = *a1;
  if ([*a1 endPointType] == 1)
  {
    result = [v1 bleUUID];
    if (!result)
    {
      return result;
    }

    v3 = [v1 revocationAttestation];
    if (!v3)
    {
      return 1;
    }

    v4 = v3;
    v5 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    sub_10006A178(v5, v7);
  }

  return 0;
}

void *sub_1000AFDA4(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    v8 = sub_1000B2F9C(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *sub_1000AFE40(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
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

    sub_1000DFB00(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void sub_1000AFEE0(const char *a1, char a2)
{
  v5 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  (*(v7 + 8))(v10, v6);
  if (v11)
  {
    if (*(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
    {
      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v13, v14))
      {
        v15 = swift_slowAlloc();
        *v15 = 0;
        _os_log_impl(&_mh_execute_header, v13, v14, a1, v15, 2u);
      }

      *(v5 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) = a2;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B00C4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchPredicate();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = (&v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v11 = qword_10051B7F0;
  *v10 = qword_10051B7F0;
  (*(v7 + 104))(v10, enum case for DispatchPredicate.onQueue(_:), v6);
  v12 = v11;
  LOBYTE(v11) = _dispatchPreconditionTest(_:)();
  result = (*(v7 + 8))(v10, v6);
  if ((v11 & 1) == 0)
  {
    __break(1u);
    return result;
  }

  if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
  {
    v14 = OBJC_IVAR____TtC10seserviced13AlishaPairing_logger;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v42 = a1;
      v18 = v17;
      v19 = swift_slowAlloc();
      v41 = v14;
      v20 = v19;
      v43[0] = v19;
      *v18 = 136315138;
      v21 = UUID.uuidString.getter();
      v23 = sub_1002FFA0C(v21, v22, v43);

      *(v18 + 4) = v23;
      _os_log_impl(&_mh_execute_header, v15, v16, "Peer discovered %s", v18, 0xCu);
      sub_1000752F4(v20);

      a1 = v42;
    }

    v24 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
    if (*(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 1)
    {
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      if (*(a1 + 16))
      {
        v27 = sub_10008C908(v25, v26);
        v29 = v28;

        if (v29)
        {
          sub_1000754F0(*(a1 + 56) + 32 * v27, v43);
          if (swift_dynamicCast())
          {
            if (v44)
            {
              v30 = *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);
              *(v3 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer) = a2;
            }
          }
        }
      }

      else
      {
      }

      v31 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v31, v38))
      {
        goto LABEL_19;
      }

      v39 = swift_slowAlloc();
      *v39 = 0;
      _os_log_impl(&_mh_execute_header, v31, v38, "Peripheral is not connectable", v39, 2u);
    }

    else
    {

      v31 = Logger.logObject.getter();
      v32 = static os_log_type_t.error.getter();

      if (!os_log_type_enabled(v31, v32))
      {
LABEL_19:

        sub_100099870(2);
        sub_100069DD8();
        swift_allocError();
        *v40 = 2;
        return swift_willThrow();
      }

      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v43[0] = v34;
      *v33 = 136315138;
      v44 = *(v3 + v24);
      v35 = String.init<A>(describing:)();
      v37 = sub_1002FFA0C(v35, v36, v43);

      *(v33 + 4) = v37;
      _os_log_impl(&_mh_execute_header, v31, v32, "Wrong state %s", v33, 0xCu);
      sub_1000752F4(v34);
    }

    goto LABEL_19;
  }

  return result;
}

unint64_t sub_1000B0570(unint64_t result)
{
  v1 = result;
  v2 = result >> 62;
  if (result >> 62)
  {
    result = _CocoaArrayWrapper.endIndex.getter();
    if (result)
    {
LABEL_3:
      sub_100068FC4(&unk_100507CE0, &unk_10040B260);
      result = static _SetStorage.allocate(capacity:)();
      v3 = result;
      v21 = v1;
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
  v21 = v1;
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
  v20 = v4;
  while ((v21 & 0xC000000000000001) != 0)
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
    Hasher.init(_seed:)();
    type metadata accessor for UUID();
    sub_1000B2B6C(&unk_100507480, &type metadata accessor for UUID);
    dispatch thunk of Hashable.hash(into:)();
    result = Hasher._finalize()();
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
        v16 = *(v3[6] + 8 * v11);

        v17 = static UUID.== infix(_:_:)();

        if (v17)
        {
          break;
        }

        v11 = (v11 + 1) & v15;
        v12 = v11 >> 6;
        v13 = *&v6[8 * (v11 >> 6)];
        v14 = 1 << v11;
        if (((1 << v11) & v13) == 0)
        {
          v4 = v20;
          goto LABEL_22;
        }
      }

      v4 = v20;
      if (v5 == v20)
      {
        return v3;
      }
    }

    else
    {
LABEL_22:
      *&v6[8 * v12] = v14 | v13;
      *(v3[6] + 8 * v11) = v7;
      v18 = v3[2];
      v8 = __OFADD__(v18, 1);
      v19 = v18 + 1;
      if (v8)
      {
        goto LABEL_26;
      }

      v3[2] = v19;
      if (v5 == v4)
      {
        return v3;
      }
    }
  }

  if (v5 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_27;
  }

  v7 = *(v21 + 32 + 8 * v5);

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

uint64_t sub_1000B07FC(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return sub_10008FCB4(result);
    }

    else
    {
      v2 = type metadata accessor for __DataStorage();
      v3 = *(v2 + 48);
      v4 = *(v2 + 52);
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

void sub_1000B136C(unsigned __int8 a1, int a2, unint64_t a3, unint64_t a4, uint64_t a5, char *a6)
{
  v120 = a6;
  v11 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v12 = *(*(v11 - 8) + 64);
  __chkstk_darwin(v11 - 8);
  v14 = (&v117 - v13);
  v15 = type metadata accessor for DispatchPredicate();
  v16 = *(v15 - 8);
  v17 = *(v16 + 64);
  __chkstk_darwin(v15);
  v19 = (&v117 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = qword_10051B7F0;
  *v19 = qword_10051B7F0;
  (*(v16 + 104))(v19, enum case for DispatchPredicate.onQueue(_:), v15);
  v21 = v20;
  LOBYTE(v20) = _dispatchPreconditionTest(_:)();
  (*(v16 + 8))(v19, v15);
  if ((v20 & 1) == 0)
  {
    __break(1u);
LABEL_95:

    v44 = Logger.logObject.getter();
    v107 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v44, v107))
    {
      goto LABEL_55;
    }

    v108 = swift_slowAlloc();
    v109 = swift_slowAlloc();
    v124[0] = v109;
    *v108 = 136315138;
    v121 = *(v119 + v118);
    v110 = String.init<A>(describing:)();
    v112 = sub_1002FFA0C(v110, v111, v124);

    *(v108 + 4) = v112;
    v113 = "FA success control flow received in unexpected state %s";
    goto LABEL_99;
  }

  if (a1 <= 1u)
  {
    if (!a1)
    {
      if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2)
      {
        if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 3)
        {
          *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) = 4;
          sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
        }

        if (qword_1005018E0 != -1)
        {
          swift_once();
        }

        sub_1000680F8(a3, a4);
      }

      return;
    }

    if (a1 != 1)
    {
      goto LABEL_40;
    }

    v27 = OBJC_IVAR____TtC10seserviced13AlishaPairing_mode;
    if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 && *(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_isSEAccessAllowed) != 1)
    {
      v60 = sub_1002B3B94(&off_1004C38D0);
      v62 = v84;
      v85 = Logger.logObject.getter();
      v86 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v85, v86))
      {
        v87 = swift_slowAlloc();
        v88 = swift_slowAlloc();
        v122 = v88;
        *v87 = 136315138;
        *(v87 + 4) = sub_1002FFA0C(0x535F454349564544, 0xEE00595355425F45, &v122);
        _os_log_impl(&_mh_execute_header, v85, v86, "Sending %s", v87, 0xCu);
        sub_1000752F4(v88);
      }

      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v67 = sub_100239160(3, 17, v60, v62);
      v69 = v89;
      if (qword_100501960 == -1)
      {
        goto LABEL_65;
      }
    }

    else
    {
      if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 8)
      {
        v118 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
        v119 = v6;
        if (qword_100501C80 != -1)
        {
          swift_once();
        }

        v28 = OBJC_IVAR____TtC10seserviced4Peer_connectionIdentifier;
        v29 = v120;
        swift_beginAccess();
        v30 = type metadata accessor for UUID();
        v31 = *(v30 - 8);
        (*(v31 + 16))(v14, &v29[v28], v30);
        (*(v31 + 56))(v14, 0, 1, v30);
        sub_1002D9C74(a2, a3, a4, v29, 1, v14, 0, 1);
        sub_100075768(v14, &unk_10050BE80, &unk_10040B360);
        sub_100069E2C(a3, a4);
        v90 = sub_1000939AC(a3, a4, 1, 0, 0);
        sub_100069E2C(a3, a4);
        v91 = sub_1000939AC(a3, a4, 2, 0, 0);
        v92 = v119;
        v93 = v91;
        sub_100069E2C(a3, a4);
        v94 = sub_1000939AC(a3, a4, 3, 0, 0);
        if (v90 != 60)
        {
          return;
        }

        if (*(v92 + v27))
        {
          if (*(v92 + v27) == 1)
          {
            if (v93)
            {
              if (v93 != 1 || v94 != 176)
              {
                return;
              }

              if (*(v92 + v118) == 8)
              {
                *(v92 + v118) = 9;
                sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
                return;
              }

              goto LABEL_95;
            }
          }

          else if (v93)
          {
            if (v93 != 1 || v94 != 129)
            {
              return;
            }

            if (*(v92 + v118) == 8)
            {
              *(v92 + v118) = 9;
              sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
              if (qword_1005018E0 != -1)
              {
                swift_once();
              }

              sub_1000684C4();
              v102 = Logger.logObject.getter();
              v103 = static os_log_type_t.info.getter();
              if (os_log_type_enabled(v102, v103))
              {
                v104 = swift_slowAlloc();
                *v104 = 0;
                _os_log_impl(&_mh_execute_header, v102, v103, "Handing off the peripheral to Alisha", v104, 2u);
              }

              if (qword_100501B60 != -1)
              {
                swift_once();
              }

              sub_10022E104(v120, *(v119 + OBJC_IVAR____TtC10seserviced13AlishaPairing_dkProtocolVersion));
              sub_100099870(6);
              return;
            }

            v44 = Logger.logObject.getter();
            v107 = static os_log_type_t.info.getter();

            if (!os_log_type_enabled(v44, v107))
            {
              goto LABEL_55;
            }

            v108 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v124[0] = v109;
            *v108 = 136315138;
            v121 = *(v119 + v118);
            v114 = String.init<A>(describing:)();
            v116 = sub_1002FFA0C(v114, v115, v124);

            *(v108 + 4) = v116;
            v113 = "OP success control flow received in unexpected state %s";
LABEL_99:
            _os_log_impl(&_mh_execute_header, v44, v107, v113, v108, 0xCu);
            sub_1000752F4(v109);

            goto LABEL_54;
          }
        }

        else if (v93)
        {
          return;
        }

        v77 = Logger.logObject.getter();
        v105 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v77, v105))
        {
          v106 = swift_slowAlloc();
          *v106 = 0;
          _os_log_impl(&_mh_execute_header, v77, v105, "Received error control flow", v106, 2u);
        }

        goto LABEL_59;
      }

      v60 = sub_1002B3B94(&off_1004C38A8);
      v62 = v61;
      v63 = Logger.logObject.getter();
      v64 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v63, v64))
      {
        v65 = swift_slowAlloc();
        v66 = swift_slowAlloc();
        v122 = v66;
        *v65 = 136315138;
        *(v65 + 4) = sub_1002FFA0C(0x425F454349564544, 0xEB00000000595355, &v122);
        _os_log_impl(&_mh_execute_header, v63, v64, "Sending %s", v65, 0xCu);
        sub_1000752F4(v66);
      }

      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v67 = sub_100239160(3, 17, v60, v62);
      v69 = v68;
      if (qword_100501960 == -1)
      {
LABEL_65:
        sub_1000E71A0(v67, v69, v120);
        sub_10006A178(v60, v62);
        sub_10006A178(v67, v69);
        return;
      }
    }

    swift_once();
    goto LABEL_65;
  }

  if (a1 != 2)
  {
    if (a1 == 3)
    {
      sub_100069E2C(a3, a4);
      v42 = sub_1000939AC(a3, a4, 0, 0, 0);
      v43 = v120;
      if (v42 == 4)
      {
        sub_100069E2C(a3, a4);
        sub_100084D68(1, a3, a4, &v122);
        v70 = v122;
        v71 = v123;
        sub_1000A291C(v122, v123, v43);
        sub_10006A178(v70, v71);
        return;
      }

      if (v42 == 1)
      {
        sub_1000A15AC(a3, a4, v120);
        return;
      }

      v72 = v42;
      sub_100069E2C(a3, a4);
      v44 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      sub_10006A178(a3, a4);
      if (!os_log_type_enabled(v44, v52))
      {
        goto LABEL_55;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v122 = v54;
      *v53 = 16777730;
      *(v53 + 4) = v72;
      *(v53 + 5) = 2080;
      v124[0] = sub_100288788(a3, a4);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v73 = BidirectionalCollection<>.joined(separator:)();
      v75 = v74;

      v76 = sub_1002FFA0C(v73, v75, &v122);

      *(v53 + 7) = v76;
      v59 = "Ignoring unknown event category %hhu payload %s";
      goto LABEL_53;
    }

    if (a1 == 5)
    {
      if (a2 == 15)
      {
        v22 = OBJC_IVAR____TtC10seserviced13AlishaPairing_state;
        if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_state) == 6)
        {
          v23 = v6;
          v24 = Logger.logObject.getter();
          v25 = static os_log_type_t.info.getter();
          if (os_log_type_enabled(v24, v25))
          {
            v26 = swift_slowAlloc();
            *v26 = 0;
            _os_log_impl(&_mh_execute_header, v24, v25, "Received FIRST_APPROACH_RS", v26, 2u);
          }

          *(v23 + v22) = 7;
          sub_10009905C(&OBJC_IVAR____TtC10seserviced13AlishaPairing_state, &type metadata for AlishaPairing.State, "New pairing state %s");
          sub_1000A2B9C(a3, a4);
          return;
        }

        v77 = Logger.logObject.getter();
        v78 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v77, v78))
        {
          v79 = swift_slowAlloc();
          v80 = swift_slowAlloc();
          v122 = v80;
          *v79 = 136315138;
          LOBYTE(v124[0]) = *(v6 + v22);
          v81 = String.init<A>(describing:)();
          v83 = sub_1002FFA0C(v81, v82, &v122);

          *(v79 + 4) = v83;
          _os_log_impl(&_mh_execute_header, v77, v78, "Wrong state %s", v79, 0xCu);
          sub_1000752F4(v80);
        }

LABEL_59:

        sub_100099870(2);
        return;
      }

      sub_100069E2C(a3, a4);
      v44 = Logger.logObject.getter();
      v52 = static os_log_type_t.info.getter();
      sub_10006A178(a3, a4);
      if (os_log_type_enabled(v44, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v122 = v54;
        *v53 = 16777730;
        *(v53 + 4) = a2;
        *(v53 + 5) = 2080;
        v124[0] = sub_100288788(a3, a4);
        sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
        sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
        v55 = BidirectionalCollection<>.joined(separator:)();
        v57 = v56;

        v58 = sub_1002FFA0C(v55, v57, &v122);

        *(v53 + 7) = v58;
        v59 = "Ignoring supplementary service message identifier %hhu payload %s";
LABEL_53:
        _os_log_impl(&_mh_execute_header, v44, v52, v59, v53, 0xFu);
        sub_1000752F4(v54);

        goto LABEL_54;
      }

LABEL_55:

      return;
    }

LABEL_40:
    sub_100069E2C(a3, a4);
    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.error.getter();
    sub_10006A178(a3, a4);
    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v47 = swift_slowAlloc();
      v122 = v47;
      *v46 = 16777986;
      *(v46 + 4) = a1;
      *(v46 + 5) = 256;
      *(v46 + 7) = a2;
      *(v46 + 8) = 2080;
      v124[0] = sub_100288788(a3, a4);
      sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
      sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
      v48 = BidirectionalCollection<>.joined(separator:)();
      v50 = v49;

      v51 = sub_1002FFA0C(v48, v50, &v122);

      *(v46 + 10) = v51;
      _os_log_impl(&_mh_execute_header, v44, v45, "Ignoring unknown message type %hhu identifier %hhu payload %s", v46, 0x12u);
      sub_1000752F4(v47);

LABEL_54:

      goto LABEL_55;
    }

    goto LABEL_55;
  }

  if (*(v6 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) != 2)
  {
    return;
  }

  if (qword_100501B70 != -1)
  {
    swift_once();
  }

  v32 = qword_10051B5B0;
  v33 = v120;

  v34 = sub_10024F2B4(v32, v33);

  v35 = sub_1000CA828(v34);

  if (v35)
  {
    type metadata accessor for UWBAlishaSession();
    if (swift_dynamicCastClass())
    {
      if (a2 == 5)
      {
        v36 = objc_opt_self();
        UUID.uuidString.getter();
        v37 = String._bridgeToObjectiveC()();
        v33 = v120;

        sub_1003AE0BC(v36, v37);
      }

      if (qword_100501B60 != -1)
      {
        swift_once();
      }

      v38 = sub_100239160(2, a2, a3, a4);
      v40 = v39;
      v41 = swift_allocObject();
      *(v41 + 16) = v6;
      *(v41 + 24) = v33;

      sub_100240FEC(v38, v40, sub_1000B3670, v41);

      sub_10006A178(v38, v40);

      return;
    }
  }

  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v95, v96))
  {
    v97 = swift_slowAlloc();
    v98 = swift_slowAlloc();
    v122 = v98;
    *v97 = 136315138;
    v99 = UUID.uuidString.getter();
    v101 = sub_1002FFA0C(v99, v100, &v122);

    *(v97 + 4) = v101;
    _os_log_impl(&_mh_execute_header, v95, v96, "No active UWB Alisha session for %s", v97, 0xCu);
    sub_1000752F4(v98);
  }

  sub_100099870(2);
}

uint64_t sub_1000B2A4C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000B2A64()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B2A9C()
{
  v1 = *(v0 + 24);

  sub_10006A178(*(v0 + 32), *(v0 + 40));
  sub_10006A178(*(v0 + 48), *(v0 + 56));
  sub_10006A178(*(v0 + 64), *(v0 + 72));
  v2 = *(v0 + 80);

  v3 = *(v0 + 88);

  return _swift_deallocObject(v0, 96, 7);
}

uint64_t sub_1000B2B04()
{
  v1 = *(v0 + 16);
  v4 = *(v0 + 24);
  v2 = *(v0 + 48);
  v5 = *(v0 + 32);
  v6 = v2;
  v7 = *(v0 + 64);
  return sub_1000A9558(v1, &v4, *(v0 + 80), *(v0 + 88));
}

uint64_t sub_1000B2B44(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B2B6C(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t sub_1000B2BD0()
{
  v1 = type metadata accessor for UUID();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);
  v6 = *(v0 + 16);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

uint64_t sub_1000B2C94()
{
  v1 = *(type metadata accessor for UUID() - 8);
  v2 = (v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80)));
  v3 = *(v0 + 16);
  return sub_10009C71C(v2);
}

void sub_1000B2D00()
{
  v1 = v0;
  v2 = type metadata accessor for DispatchPredicate();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = (&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v7 = qword_10051B7F0;
  *v6 = qword_10051B7F0;
  (*(v3 + 104))(v6, enum case for DispatchPredicate.onQueue(_:), v2);
  v8 = v7;
  LOBYTE(v7) = _dispatchPreconditionTest(_:)();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {

    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v18 = v12;
      *v11 = 136315138;
      v13 = UUID.uuidString.getter();
      v15 = sub_1002FFA0C(v13, v14, &v18);

      *(v11 + 4) = v15;
      _os_log_impl(&_mh_execute_header, v9, v10, "UWB Alisha session invalidated for %s", v11, 0xCu);
      sub_1000752F4(v12);
    }

    if (*(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_mode) == 2 && *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer))
    {
      v16 = *(v1 + OBJC_IVAR____TtC10seserviced13AlishaPairing_peer);

      if (static UUID.== infix(_:_:)())
      {
        sub_100099870(4);
      }
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000B2F9C(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
    v14 = v13 | (v8 << 6);
LABEL_11:
    if (*(*(*(a3 + 48) + 8 * v14) + 16) != a4)
    {
      *(result + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v7++, 1))
      {
        __break(1u);
LABEL_15:

        return sub_10024A854(v6, a2, v7, a3);
      }
    }
  }

  v15 = v8;
  while (1)
  {
    v8 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v8 >= v12)
    {
      goto LABEL_15;
    }

    v16 = *(a3 + 56 + 8 * v8);
    ++v15;
    if (v16)
    {
      v11 = (v16 - 1) & v16;
      v14 = __clz(__rbit64(v16)) | (v8 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1000B30B4(uint64_t a1, uint64_t a2)
{
  v4 = *(a1 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    __chkstk_darwin();
    bzero(&v22 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    v8 = 0;
    v9 = 0;
    v10 = 1 << *(a1 + 32);
    v11 = -1;
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    v12 = v11 & *(a1 + 56);
    v13 = (v10 + 63) >> 6;
    while (v12)
    {
      v14 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
      v15 = v14 | (v9 << 6);
LABEL_12:
      if (*(*(*(a1 + 48) + 8 * v15) + 16) != a2)
      {
        *(&v22 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8) - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)) |= 1 << v15;
        if (__OFADD__(v8++, 1))
        {
          __break(1u);
LABEL_16:
          v19 = sub_10024A854((&v22 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, v8, a1);
          goto LABEL_17;
        }
      }
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v13)
      {
        goto LABEL_16;
      }

      v17 = *(a1 + 56 + 8 * v9);
      ++v16;
      if (v17)
      {
        v12 = (v17 - 1) & v17;
        v15 = __clz(__rbit64(v17)) | (v9 << 6);
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v21 = swift_slowAlloc();

  v19 = sub_1000AFDA4(v21, v6, a1, a2);

LABEL_17:

  return v19;
}

Swift::Int sub_1000B32F0(uint64_t a1, uint64_t a2)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return sub_1000B30B4(a1, a2);
  }

  v3 = &_swiftEmptySetSingleton;

  __CocoaSet.makeIterator()();
  while (__CocoaSet.Iterator.next()())
  {
    sub_100068FC4(&unk_100503FA0, &unk_10040B2F0);
    swift_dynamicCast();
    if (*(v16 + 16) == a2)
    {
    }

    else
    {
      v4 = *(&_swiftEmptySetSingleton + 2);
      if (*(&_swiftEmptySetSingleton + 3) <= v4)
      {
        sub_100109E88(v4 + 1);
        v3 = &_swiftEmptySetSingleton;
      }

      v5 = *(&_swiftEmptySetSingleton + 5);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(*(v16 + 16));
      result = Hasher._finalize()();
      v7 = &_swiftEmptySetSingleton + 56;
      v8 = -1 << *(&_swiftEmptySetSingleton + 32);
      v9 = result & ~v8;
      v10 = v9 >> 6;
      if (((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7)) != 0)
      {
        v11 = __clz(__rbit64((-1 << v9) & ~*(&_swiftEmptySetSingleton + (v9 >> 6) + 7))) | v9 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v12 = 0;
        v13 = (63 - v8) >> 6;
        do
        {
          if (++v10 == v13 && (v12 & 1) != 0)
          {
            __break(1u);
            return result;
          }

          v14 = v10 == v13;
          if (v10 == v13)
          {
            v10 = 0;
          }

          v12 |= v14;
          v15 = *&v7[8 * v10];
        }

        while (v15 == -1);
        v11 = __clz(__rbit64(~v15)) + (v10 << 6);
      }

      *&v7[(v11 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v11;
      *(*(&_swiftEmptySetSingleton + 6) + 8 * v11) = v16;
      ++*(&_swiftEmptySetSingleton + 2);
    }
  }

  return v3;
}

uint64_t sub_1000B3530(uint64_t a1)
{
  if (*(a1 + OBJC_IVAR____TtC10seserviced4Peer_type))
  {
    return 0;
  }

  v3 = *(v1 + 16);
  return static UUID.== infix(_:_:)();
}

uint64_t sub_1000B35AC()
{
  sub_10006A178(*(v0 + 16), *(v0 + 24));

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B3680()
{
  sub_10006A178(v0[2], v0[3]);
  v1 = v0[4];

  sub_10006A178(v0[5], v0[6]);
  sub_10006A178(v0[7], v0[8]);
  sub_10006A178(v0[9], v0[10]);
  v2 = v0[11];

  v3 = v0[12];

  return _swift_deallocObject(v0, 104, 7);
}

uint64_t sub_1000B36E8()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v3 = *(v0 + 56);
  v6 = *(v0 + 40);
  v7 = v3;
  v8 = *(v0 + 72);
  return sub_1000A3B8C(v1, v2, &v5, *(v0 + 88), *(v0 + 96));
}

uint64_t sub_1000B3730()
{
  v1 = v0[2];

  sub_10006A178(v0[3], v0[4]);
  sub_10006A178(v0[5], v0[6]);
  sub_10006A178(v0[7], v0[8]);
  v2 = v0[9];

  return _swift_deallocObject(v0, 80, 7);
}

__n128 sub_1000B3788(void *a1)
{
  v5 = *(v1 + 16);
  v2 = *(v1 + 40);
  v6 = *(v1 + 24);
  v7 = v2;
  v8 = *(v1 + 56);
  v3 = *(v1 + 72);
  sub_1000A9A78(a1, &v5);
  return result;
}

uint64_t sub_1000B37E4(void (*a1)(void))
{
  a1(v1[2]);
  v2 = v1[3];

  sub_10006A178(v1[4], v1[5]);
  v3 = v1[6];

  return _swift_deallocObject(v1, 56, 7);
}

uint64_t sub_1000B38C8()
{
  v1 = v0[2];

  sub_10006A178(v0[3], v0[4]);

  return _swift_deallocObject(v0, 40, 7);
}

Swift::Int sub_1000B3934(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&unk_100503FD0, &unk_10040B320);
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

void *sub_1000B3A70(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_100068FC4(&qword_100502F18, &qword_10040A018);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v27 = v1;
    v28 = a1 + 32;
    v6 = v1;
    while (1)
    {
      v7 = *(v28 + 8 * v4);
      v8 = *(v3 + 40);
      static String._unconditionallyBridgeFromObjectiveC(_:)();
      Hasher.init(_seed:)();
      v29 = v7;
      String.hash(into:)();
      v9 = Hasher._finalize()();

      v11 = -1 << *(v3 + 32);
      v12 = v9 & ~v11;
      v13 = v12 >> 6;
      v14 = *(v5 + 8 * (v12 >> 6));
      v15 = 1 << v12;
      if (((1 << v12) & v14) == 0)
      {
        goto LABEL_15;
      }

      v16 = ~v11;
      do
      {
        v17 = *(*(v3 + 48) + 8 * v12);
        v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v20 = v19;
        if (v18 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v20 == v21)
        {

LABEL_4:
          v6 = v27;
          goto LABEL_5;
        }

        v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v23)
        {

          goto LABEL_4;
        }

        v12 = (v12 + 1) & v16;
        v13 = v12 >> 6;
        v14 = *(v5 + 8 * (v12 >> 6));
        v15 = 1 << v12;
      }

      while (((1 << v12) & v14) != 0);
      v6 = v27;
LABEL_15:
      *(v5 + 8 * v13) = v15 | v14;
      *(*(v3 + 48) + 8 * v12) = v29;
      v24 = *(v3 + 16);
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        __break(1u);
        return result;
      }

      *(v3 + 16) = v26;
LABEL_5:
      if (++v4 == v6)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_1000B3C6C()
{
  sub_10006A178(v0[2], v0[3]);
  v1 = v0[4];

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000B3CD0(void (*a1)(void))
{
  a1(*(v1 + 16));
  v2 = *(v1 + 24);

  return _swift_deallocObject(v1, 32, 7);
}

uint64_t getEnumTagSinglePayload for AlishaPairing.PairingError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AlishaPairing.PairingError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B3E74()
{
  result = qword_100502F20;
  if (!qword_100502F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502F20);
  }

  return result;
}

uint64_t sub_1000B4000(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  *(v6 + 104) = a5;
  *(v6 + 112) = v5;
  *(v6 + 88) = a2;
  *(v6 + 96) = a4;
  *(v6 + 192) = a3;
  *(v6 + 80) = a1;
  return _swift_task_switch(sub_1000B402C, 0, 0);
}

uint64_t sub_1000B402C()
{
  v62 = v0;
  v1 = [objc_opt_self() identifierWithPid:*(v0 + 192)];
  *(v0 + 120) = v1;
  if (v1)
  {
    v2 = v1;
    sub_1000B54F8();
    v3 = v2;
    v4 = sub_1000B5544(v3);
    *(v0 + 128) = v4;

    v5 = qword_1005019D8;
    v14 = v4;
    if (v5 != -1)
    {
      swift_once();
    }

    v15 = *(v0 + 88);
    v16 = type metadata accessor for Logger();
    *(v0 + 136) = sub_1000958E4(v16, qword_10051B2C8);

    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v17, v18))
    {
      v20 = *(v0 + 80);
      v19 = *(v0 + 88);
      v21 = swift_slowAlloc();
      v61[0] = swift_slowAlloc();
      *v21 = 136315394;
      *(v21 + 4) = sub_1002FFA0C(v20, v19, v61);
      *(v21 + 12) = 2080;
      v22 = [v14 description];
      v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v25 = v24;

      v26 = sub_1002FFA0C(v23, v25, v61);

      *(v21 + 14) = v26;
      _os_log_impl(&_mh_execute_header, v17, v18, "AuthSheet present: Starting presentation for scene ID %s and process %s", v21, 0x16u);
      swift_arrayDestroy();
    }

    v27 = *(v0 + 104);
    v28 = *(v0 + 112);
    v29 = *(v0 + 88);
    v30 = *(v0 + 96);
    v31 = *(v0 + 80);
    v32 = objc_opt_self();
    v33 = String._bridgeToObjectiveC()();
    v34 = [v32 createForSceneID:v33 inProcess:v14];
    *(v0 + 144) = v34;

    v35 = [objc_allocWithZone(LAContext) init];
    *(v0 + 152) = v35;
    v36 = *(v28 + 24);
    v37 = v35;

    *(v28 + 24) = v35;
    v38 = String._bridgeToObjectiveC()();
    v39 = [v37 externalizedContext];
    if (v39)
    {
      v47 = v39;
      v48 = *(v0 + 112);
      v49 = objc_opt_self();
      v50 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      isa = Data._bridgeToObjectiveC()().super.isa;
      sub_10006A178(v50, v52);
      v54 = [v49 createForName:v38 externalizedContext:isa];
      *(v0 + 160) = v54;

      v55 = [objc_opt_self() createForRequest:v54];
      *(v0 + 168) = v55;
      v56 = *(v48 + 16);
      v57 = v55;

      *(v48 + 16) = v55;
      v58 = swift_task_alloc();
      *(v0 + 176) = v58;
      v58[2] = v57;
      v58[3] = v34;
      v58[4] = v37;
      v59 = async function pointer to withCheckedContinuation<A>(isolation:function:_:)[1];
      v60 = swift_task_alloc();
      *(v0 + 184) = v60;
      v46 = sub_100068FC4(&qword_100502F28, &qword_10040A0E0);
      *v60 = v0;
      v60[1] = sub_1000B4744;
      v44 = sub_1000B5608;
      v39 = (v0 + 16);
      v43 = 0x8000000100462300;
      v40 = 0;
      v41 = 0;
      v42 = 0xD000000000000032;
      v45 = v58;
    }

    else
    {
      __break(1u);
    }

    return withCheckedContinuation<A>(isolation:function:_:)(v39, v40, v41, v42, v43, v44, v45, v46);
  }

  else
  {
    if (qword_1005019D8 != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    sub_1000958E4(v6, qword_10051B2C8);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = *(v0 + 192);
      v10 = swift_slowAlloc();
      *v10 = 67109120;
      *(v10 + 4) = v9;
      _os_log_impl(&_mh_execute_header, v7, v8, "AuthSheet present: Unable to convert client pid %d to RBSProcessIdentifier", v10, 8u);
    }

    sub_10009591C();
    swift_allocError();
    *v11 = 6;
    swift_willThrow();
    v12 = *(v0 + 8);

    return v12();
  }
}

uint64_t sub_1000B4744()
{
  v1 = *(*v0 + 184);
  v2 = *(*v0 + 176);
  v3 = *(*v0 + 168);
  v4 = *(*v0 + 152);
  v6 = *v0;

  return _swift_task_switch(sub_1000B4894, 0, 0);
}

uint64_t sub_1000B4894()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  if (!v3)
  {
    v13 = *(v0 + 136);
    v9 = Logger.logObject.getter();
    v14 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v9, v14))
    {
      v12 = 29;
      goto LABEL_13;
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    _os_log_impl(&_mh_execute_header, v9, v14, "AuthSheet present: Returning from present since auth sheet is unavailable in PK", v15, 2u);
    v12 = 29;
LABEL_7:

LABEL_13:
    v21 = *(v0 + 160);
    v22 = *(v0 + 144);
    v24 = *(v0 + 120);
    v23 = *(v0 + 128);

    sub_10009591C();
    swift_allocError();
    *v25 = v12;
    swift_willThrow();

    sub_10006A2D0(v1, v2);
    v26 = *(v0 + 8);

    return v26();
  }

  v4 = *(v0 + 112);
  v5 = *(v0 + 40);
  v6 = swift_allocObject();
  *(v6 + 16) = v3;
  *(v6 + 24) = v5;
  v7 = v4[1];
  sub_1000B2A4C(*v4);
  *v4 = sub_1000B564C;
  v4[1] = v6;
  if (v2 >> 60 == 15)
  {
    v8 = *(v0 + 136);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v9, v10))
    {
      v12 = 6;
      goto LABEL_13;
    }

    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&_mh_execute_header, v9, v10, "AuthSheet present: Externalize Context is unexpectedly nil", v11, 2u);
    v12 = 6;
    goto LABEL_7;
  }

  v16 = *(v0 + 160);
  v17 = *(v0 + 144);
  v18 = *(v0 + 120);

  v19 = *(v0 + 8);

  return v19(v1, v2);
}

void sub_1000B4B0C(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v26 = a4;
  v30 = a2;
  v31 = a3;
  v28 = a1;
  v5 = sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v24 - v8;
  v10 = [objc_allocWithZone(type metadata accessor for SingleCallback()) init];
  v24 = v10;
  v27 = *(v6 + 16);
  v27(v9, a1, v5);
  v11 = *(v6 + 80);
  v12 = (v11 + 24) & ~v11;
  v13 = swift_allocObject();
  *(v13 + 16) = v10;
  v25 = *(v6 + 32);
  v25(v13 + v12, v9, v5);
  v14 = v26;
  *(v13 + ((v7 + v12 + 7) & 0xFFFFFFFFFFFFFFF8)) = v26;
  v36 = sub_1000B5768;
  v37 = v13;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_1000B505C;
  v35 = &unk_1004C64C8;
  v29 = _Block_copy(&aBlock);
  v15 = v24;
  v16 = v14;

  v27(v9, v28, v5);
  v17 = (v11 + 32) & ~v11;
  v18 = swift_allocObject();
  v19 = v30;
  *(v18 + 16) = v30;
  *(v18 + 24) = v15;
  v25(v18 + v17, v9, v5);
  v36 = sub_1000B5914;
  v37 = v18;
  aBlock = _NSConcreteStackBlock;
  v33 = 1107296256;
  v34 = sub_100080830;
  v35 = &unk_1004C6518;
  v20 = _Block_copy(&aBlock);
  v21 = v15;
  v22 = v19;

  v23 = v29;
  [v22 displayForPresentationTarget:v31 withAction:v29 completion:v20];
  _Block_release(v20);
  _Block_release(v23);
}

atomic_uchar *sub_1000B4E10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  result = (*(**(a3 + OBJC_IVAR____TtC10seserviced14SingleCallback_invoked) + 136))();
  v10 = 0;
  atomic_compare_exchange_strong(result, &v10, 1u);
  if (!v10)
  {

    return sub_1000B4EC4(a4, a5, a1, a2);
  }

  return result;
}

uint64_t sub_1000B4EC4(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  sub_1000958E4(v7, qword_10051B2C8);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "AuthSheet present: Auth performed, returning continuation for consumption", v10, 2u);
  }

  v11 = [a2 externalizedContext];
  if (v11)
  {
    v12 = v11;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v13 = swift_allocObject();
  *(v13 + 16) = a3;
  *(v13 + 24) = a4;

  sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  return CheckedContinuation.resume(returning:)();
}

uint64_t sub_1000B505C(uint64_t a1, void *aBlock)
{
  v3 = *(a1 + 32);
  v2 = *(a1 + 40);
  v4 = _Block_copy(aBlock);
  v5 = swift_allocObject();
  *(v5 + 16) = v4;

  v3(sub_1000B59BC, v5);
}

atomic_uchar *sub_1000B50F0(void *a1, uint64_t a2)
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
    _os_log_impl(&_mh_execute_header, v5, v6, "AuthSheet present: Auth sheet has been invalidated by PassKitCore", v7, 2u);
  }

  v8 = [a1 invalidateWithCompletion:0];
  result = (*(**(a2 + OBJC_IVAR____TtC10seserviced14SingleCallback_invoked) + 136))(v8);
  v10 = 0;
  atomic_compare_exchange_strong(result, &v10, 1u);
  if (!v10)
  {

    return sub_1000B525C();
  }

  return result;
}

uint64_t sub_1000B525C()
{
  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  sub_1000958E4(v0, qword_10051B2C8);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&_mh_execute_header, v1, v2, "AuthSheet present: Resuming continuation upon invalidation", v3, 2u);
  }

  sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  return CheckedContinuation.resume(returning:)();
}

void sub_1000B5374(char a1)
{
  v2 = v1;
  v3 = *v1;
  if (*v1)
  {
    v5 = *(v1 + 8);
    v6 = qword_1005019D8;
    v7 = *(v2 + 8);

    if (v6 != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    sub_1000958E4(v8, qword_10051B2C8);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 67109120;
      *(v11 + 4) = a1 & 1;
      _os_log_impl(&_mh_execute_header, v9, v10, "Notifying PassKitCore about auth completion commited %{BOOL}d", v11, 8u);
    }

    v3(a1 & 1);
    sub_1000B2A4C(v3);
    sub_1000B2A4C(v3);
  }

  *v2 = 0;
  *(v2 + 8) = 0;
  v12 = *(v2 + 16);
  if (v12)
  {
    [*(v2 + 16) invalidateWithCompletion:0];

    *(v2 + 16) = 0;
  }

  v13 = *(v2 + 24);
  if (v13)
  {
    [*(v2 + 24) invalidate];
  }

  *(v2 + 24) = 0;
}

unint64_t sub_1000B54F8()
{
  result = qword_100506F80;
  if (!qword_100506F80)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_100506F80);
  }

  return result;
}

id sub_1000B5544(uint64_t a1)
{
  v5 = 0;
  v1 = [swift_getObjCClassFromMetadata() handleForIdentifier:a1 error:&v5];
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

uint64_t sub_1000B5614()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000B564C(char a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v5 = a1;
  return v2(&v5);
}

uint64_t sub_1000B5684()
{
  v1 = sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v5 + 8, v3 | 7);
}

atomic_uchar *sub_1000B5768(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_100068FC4(&qword_100502F30, &unk_10040A0E8) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v8 = *(v2 + 16);

  return sub_1000B4E10(a1, a2, v8, v2 + v6, v7);
}

uint64_t sub_1000B5824(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000B583C()
{
  v1 = sub_100068FC4(&qword_100502F30, &unk_10040A0E8);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return _swift_deallocObject(v0, v4 + v5, v3 | 7);
}

atomic_uchar *sub_1000B5914()
{
  v1 = *(*(sub_100068FC4(&qword_100502F30, &unk_10040A0E8) - 8) + 80);
  v2 = *(v0 + 16);
  v3 = *(v0 + 24);

  return sub_1000B50F0(v2, v3);
}

uint64_t sub_1000B5984()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000B6158(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 sub_1000B61C0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000B61D4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_1000B621C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1000B6274()
{
  v1 = v0;
  v2 = *v0;
  v3 = v0[1];
  v4 = objc_allocWithZone(LSApplicationRecord);

  v5 = sub_10013FCB4(v2, v3, 1);
  if (qword_100501910 != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  sub_1000958E4(v6, qword_100502F60);
  v14 = *(v1 + 3);

  sub_1000B6AF8(&v14, v13);
  v7 = v5;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.info.getter();

  sub_1000B6B54(&v14);
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v13[0] = v11;
    *v10 = 136315394;
    *(v10 + 4) = sub_1002FFA0C(v2, v3, v13);
    *(v10 + 12) = 2048;
    *(v10 + 14) = [v7 installType];

    _os_log_impl(&_mh_execute_header, v8, v9, "Current Default Application with bundleID %s is installed with installType %lu", v10, 0x16u);
    sub_1000752F4(v11);
  }

  else
  {
  }

  return 1;
}

Swift::Int sub_1000B65F8()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B6644()
{
  v1 = *v0;
  v2 = v0[1];
  return String.hash(into:)();
}

Swift::Int sub_1000B664C()
{
  v1 = *v0;
  v2 = v0[1];
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000B6694(void *a1, void *a2)
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

unint64_t sub_1000B66C8()
{
  result = qword_100502F78;
  if (!qword_100502F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502F78);
  }

  return result;
}

uint64_t sub_1000B671C()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100502F60);
  sub_1000958E4(v0, qword_100502F60);
  return Logger.init(subsystem:category:)();
}

void sub_1000B67A0(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (*(a1 + 16))
  {
    v4 = sub_10008C908(0x6449656C646E7562, 0xE800000000000000);
    if (v5)
    {
      sub_1000754F0(*(a1 + 56) + 32 * v4, v26);
      if (swift_dynamicCast())
      {
        v6 = v25;
        if (*(a1 + 16))
        {
          v7 = v24;
          v8 = sub_10008C908(0x6E69616D6F64, 0xE600000000000000);
          if (v9)
          {
            sub_1000754F0(*(a1 + 56) + 32 * v8, v26);
            if (swift_dynamicCast())
            {
              if (*(a1 + 16))
              {
                v10 = v24;
                v11 = sub_10008C908(0x4E79616C70736964, 0xEB00000000656D61);
                if (v12)
                {
                  sub_1000754F0(*(a1 + 56) + 32 * v11, v26);
                  if (swift_dynamicCast())
                  {

                    v13 = v24;
                    v14 = v25;
                    goto LABEL_18;
                  }
                }
              }
            }
          }
        }
      }
    }
  }

  if (qword_100501910 != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  sub_1000958E4(v15, qword_100502F60);

  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v26[0] = v19;
    *v18 = 136315138;
    v20 = Dictionary.description.getter();
    v22 = v21;

    v23 = sub_1002FFA0C(v20, v22, v26);

    *(v18 + 4) = v23;
    _os_log_impl(&_mh_execute_header, v16, v17, "Malformed dict %s when forming default app info", v18, 0xCu);
    sub_1000752F4(v19);
  }

  else
  {
  }

  v7 = 0;
  v6 = 0;
  v10 = 0;
  v13 = 0;
  v14 = 0;
LABEL_18:
  *a2 = v7;
  a2[1] = v6;
  a2[2] = v10;
  a2[3] = v13;
  a2[4] = v14;
}

uint64_t *sub_1000B6A94(uint64_t a1, uint64_t *a2)
{
  v3 = *(a1 - 8);
  if ((*(v3 + 80) & 0x20000) != 0)
  {
    v4 = *(v3 + 64);
    v5 = *(v3 + 80);
    v6 = swift_slowAlloc();
    *a2 = v6;
    return v6;
  }

  return a2;
}

uint64_t sub_1000B6BA8(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
}

uint64_t sub_1000B6BC4(uint64_t a1)
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

__n128 sub_1000B6BEC(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1000B6C08(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xC && *(a1 + 56))
  {
    return (*a1 + 12);
  }

  v3 = *(a1 + 16) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 14 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1000B6C64(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xB)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 12;
    if (a3 >= 0xC)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0xC)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = ((4 * (a2 ^ 0xF)) | ((a2 ^ 0xF) >> 2)) << 60;
    }
  }

  return result;
}

uint64_t sub_1000B6CD0()
{
  *&v16 = 0;
  *(&v16 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(190);
  v14 = v16;
  v1._countAndFlagsBits = 0xD000000000000030;
  v1._object = 0x8000000100462510;
  String.append(_:)(v1);
  LOWORD(v16) = *v0;
  BYTE2(v16) = *(v0 + 2);
  sub_100068FC4(&qword_100502F98, &unk_10040A380);
  v2._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 0xD000000000000027;
  v3._object = 0x8000000100462550;
  String.append(_:)(v3);
  LOWORD(v16) = *(v0 + 4);
  BYTE2(v16) = *(v0 + 6);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._object = 0x8000000100462580;
  v5._countAndFlagsBits = 0xD00000000000001BLL;
  String.append(_:)(v5);
  v15 = *(v0 + 8);
  v16 = v15;
  sub_1000B7C24(&v16, &v13);
  sub_100068FC4(&qword_100502BF0, &qword_100409C88);
  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._countAndFlagsBits = 0xD000000000000024;
  v7._object = 0x80000001004625A0;
  String.append(_:)(v7);
  *&v15 = *(v0 + 24);
  BYTE8(v15) = *(v0 + 32);
  sub_100068FC4(&qword_100502FA0, &qword_10040A390);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._countAndFlagsBits = 0xD00000000000001ELL;
  v9._object = 0x80000001004625D0;
  String.append(_:)(v9);
  v15 = *(v0 + 40);
  v13 = *(v0 + 40);
  sub_1000B7C24(&v15, &v12);
  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  return v14;
}

void sub_1000B6F08(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (v3 >> 60 == 15)
  {
LABEL_17:
    v9 = type metadata accessor for UUID();
    v10 = *(*(v9 - 8) + 56);

    v10(a1, 1, 1, v9);
    return;
  }

  v4 = *(v1 + 8);
  v5 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_16;
    }

    v7 = *(v4 + 16);
    v6 = *(v4 + 24);
    v8 = v6 - v7;
    if (!__OFSUB__(v6, v7))
    {
LABEL_12:
      sub_100069E2C(v4, v3);
      if (v8 == 16)
      {
        goto LABEL_13;
      }

LABEL_16:
      sub_10006A2D0(v4, v3);
      goto LABEL_17;
    }

    __break(1u);
LABEL_10:
    if (__OFSUB__(HIDWORD(v4), v4))
    {
      __break(1u);
      return;
    }

    v8 = HIDWORD(v4) - v4;
    goto LABEL_12;
  }

  if (v5)
  {
    goto LABEL_10;
  }

  if (BYTE6(v3) != 16)
  {
    goto LABEL_16;
  }

LABEL_13:

  sub_1001E0778(v4, v3, a1);
}

void sub_1000B7028()
{
  v1 = *(v0 + 48);
  if (v1 >> 60 == 15)
  {
    return;
  }

  v2 = *(v0 + 40);
  v3 = objc_opt_self();
  sub_100069E2C(v2, v1);
  v69 = v2;
  v70 = v1;
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [v3 TLVsWithData:isa];

  if (!v5)
  {
    __break(1u);
    return;
  }

  sub_1000754A4();
  v6 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  if (v6 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = _swiftEmptyArrayStorage;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v7 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_19;
        }

        v9 = *(v6 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v12 = v8;
      v13 = [v9 value];
      if (!v13)
      {
        goto LABEL_87;
      }

      v14 = v13;
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      v18 = v12;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_10012E5A4(0, *(v12 + 16) + 1, 1, v12);
      }

      v20 = *(v18 + 2);
      v19 = *(v18 + 3);
      v21 = v18;
      if (v20 >= v19 >> 1)
      {
        v21 = sub_10012E5A4((v19 > 1), v20 + 1, 1, v18);
      }

      *(v21 + 2) = v20 + 1;
      v8 = v21;
      v22 = &v21[16 * v20];
      *(v22 + 4) = v15;
      *(v22 + 5) = v17;
      ++v7;
      if (v11 == i)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

  v8 = _swiftEmptyArrayStorage;
LABEL_22:

  if (qword_100501918 != -1)
  {
    goto LABEL_83;
  }

LABEL_23:
  v23 = type metadata accessor for Logger();
  sub_1000958E4(v23, qword_100502F80);

  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.debug.getter();
  v26 = v70;
  if (!os_log_type_enabled(v24, v25))
  {
    sub_10006A2D0(v69, v70);

    goto LABEL_72;
  }

  v68 = v25;
  v27 = swift_slowAlloc();
  v67 = swift_slowAlloc();
  v86 = v67;
  *v27 = 136315138;
  v28 = *(v8 + 16);
  if (!v28)
  {
    goto LABEL_71;
  }

  v65 = v27;
  v66 = v24;
  v85 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v28, 0);
  v29 = 0;
  v30 = v85;
  v73 = v8 + 32;
  v71 = v8;
  v72 = v28;
  do
  {
    v74 = v29;
    v75 = v30;
    v31 = (v73 + 16 * v29);
    v32 = *v31;
    v33 = v31[1];
    v34 = v33 >> 62;
    v76 = HIDWORD(*v31);
    if ((v33 >> 62) > 1)
    {
      if (v34 != 2)
      {
        v35 = _swiftEmptyArrayStorage;
        goto LABEL_66;
      }

      v37 = *(v32 + 16);
      v36 = *(v32 + 24);
      v8 = v36 - v37;
      if (__OFSUB__(v36, v37))
      {
        goto LABEL_82;
      }

      goto LABEL_36;
    }

    if (v34)
    {
      if (__OFSUB__(v76, v32))
      {
        goto LABEL_81;
      }

      v8 = v76 - v32;
LABEL_36:
      sub_100069E2C(v32, v33);
      sub_100069E2C(v32, v33);
      if (!v8)
      {
LABEL_29:
        v35 = _swiftEmptyArrayStorage;
        v8 = v71;
        goto LABEL_66;
      }

      goto LABEL_37;
    }

    v8 = BYTE6(v33);
    if (!BYTE6(v33))
    {
      goto LABEL_29;
    }

LABEL_37:
    v84 = _swiftEmptyArrayStorage;
    v38 = v8 & ~(v8 >> 63);
    sub_10019F3C0(0, v38, 0);
    v35 = v84;
    if (v34 == 2)
    {
      v39 = *(v32 + 16);
      goto LABEL_42;
    }

    if (v34 == 1)
    {
      v39 = v32;
LABEL_42:
      if ((v8 & 0x8000000000000000) == 0)
      {
        goto LABEL_46;
      }

LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      swift_once();
      goto LABEL_23;
    }

    if (v8 < 0)
    {
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      __break(1u);
LABEL_87:
      __break(1u);
    }

    v39 = 0;
    do
    {
LABEL_46:
      if (!v38)
      {
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
LABEL_78:
        __break(1u);
LABEL_79:
        __break(1u);
        goto LABEL_80;
      }

      if (v34 == 2)
      {
        if (v39 < *(v32 + 16))
        {
          goto LABEL_74;
        }

        if (v39 >= *(v32 + 24))
        {
          goto LABEL_77;
        }

        v44 = __DataStorage._bytes.getter();
        if (!v44)
        {
          goto LABEL_86;
        }

        v41 = v44;
        v45 = __DataStorage._offset.getter();
        v43 = v39 - v45;
        if (__OFSUB__(v39, v45))
        {
          goto LABEL_79;
        }

        goto LABEL_59;
      }

      if (v34 == 1)
      {
        if (v39 < v32 || v39 >= v32 >> 32)
        {
          goto LABEL_76;
        }

        v40 = __DataStorage._bytes.getter();
        if (!v40)
        {
          goto LABEL_85;
        }

        v41 = v40;
        v42 = __DataStorage._offset.getter();
        v43 = v39 - v42;
        if (__OFSUB__(v39, v42))
        {
          goto LABEL_78;
        }

LABEL_59:
        v46 = *(v41 + v43);
        goto LABEL_62;
      }

      if (v39 >= BYTE6(v33))
      {
        goto LABEL_75;
      }

      LOWORD(v78) = v32;
      BYTE2(v78) = BYTE2(v32);
      BYTE3(v78) = BYTE3(v32);
      BYTE4(v78) = v76;
      BYTE5(v78) = BYTE5(v32);
      BYTE6(v78) = BYTE6(v32);
      HIBYTE(v78) = HIBYTE(v32);
      v79 = v33;
      v80 = BYTE2(v33);
      v81 = BYTE3(v33);
      v82 = BYTE4(v33);
      v83 = BYTE5(v33);
      v46 = *(&v78 + v39);
LABEL_62:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v47 = swift_allocObject();
      *(v47 + 16) = xmmword_1004098F0;
      *(v47 + 56) = &type metadata for UInt8;
      *(v47 + 64) = &protocol witness table for UInt8;
      *(v47 + 32) = v46;
      v48 = String.init(format:_:)();
      v84 = v35;
      v51 = v35[2];
      v50 = v35[3];
      if (v51 >= v50 >> 1)
      {
        v64 = v48;
        v53 = v49;
        sub_10019F3C0((v50 > 1), v51 + 1, 1);
        v49 = v53;
        v48 = v64;
        v35 = v84;
      }

      v35[2] = v51 + 1;
      v52 = &v35[2 * v51];
      v52[4] = v48;
      v52[5] = v49;
      ++v39;
      --v38;
      --v8;
    }

    while (v8);
    v8 = v71;
LABEL_66:
    v78 = v35;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_10007A2D0();
    v54 = BidirectionalCollection<>.joined(separator:)();
    v56 = v55;

    sub_10006A178(v32, v33);
    sub_10006A178(v32, v33);
    v30 = v75;
    v85 = v75;
    v58 = v75[2];
    v57 = v75[3];
    if (v58 >= v57 >> 1)
    {
      sub_10019F3C0((v57 > 1), v58 + 1, 1);
      v30 = v85;
    }

    v29 = v74 + 1;
    v30[2] = v58 + 1;
    v59 = &v30[2 * v58];
    v59[4] = v54;
    v59[5] = v56;
  }

  while (v74 + 1 != v72);
  v26 = v70;
  v27 = v65;
  v24 = v66;
LABEL_71:
  v60 = Array.description.getter();
  v62 = v61;

  v63 = sub_1002FFA0C(v60, v62, &v86);

  *(v27 + 4) = v63;

  _os_log_impl(&_mh_execute_header, v24, v68, "MultiSEGroupAIDs: %s", v27, 0xCu);
  sub_1000752F4(v67);

  sub_10006A2D0(v69, v26);
LABEL_72:
}

unint64_t sub_1000B7818()
{
  v1 = *v0;
  v2 = 0xD00000000000001DLL;
  if (v1 != 3)
  {
    v2 = 0xD000000000000017;
  }

  if (v1 == 2)
  {
    v2 = 0xD000000000000014;
  }

  v3 = 0xD000000000000020;
  if (!*v0)
  {
    v3 = 0xD000000000000015;
  }

  if (*v0 <= 1u)
  {
    result = v3;
  }

  else
  {
    result = v2;
  }

  *v0;
  return result;
}

uint64_t sub_1000B78A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000B8288(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000B78E8(uint64_t a1)
{
  v2 = sub_1000B8780();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000B7924(uint64_t a1)
{
  v2 = sub_1000B8780();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t sub_1000B7960(void *a1)
{
  v3 = v1;
  v5 = sub_100068FC4(&qword_100502FC0, &unk_10040A3A0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v19[-v8 - 8];
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1000B8780();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = *(v3 + 2);
  LOBYTE(v21) = 0;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    v14 = *(v3 + 6);
    LOBYTE(v21) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v23 = *(v3 + 4);
    v21 = *(v3 + 4);
    v20 = 2;
    sub_1000B7C24(&v23, v19);
    sub_1000B8890();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10006A2D0(v21, *(&v21 + 1));
    v15 = *(v3 + 3);
    v16 = *(v3 + 32);
    LOBYTE(v21) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v22 = *(v3 + 20);
    v21 = *(v3 + 20);
    v20 = 4;
    sub_1000B7C24(&v22, v19);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_10006A2D0(v21, *(&v21 + 1));
  }

  return (*(v6 + 8))(v9, v5);
}

double sub_1000B7BBC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000B843C(a1, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

uint64_t sub_1000B7C24(uint64_t a1, uint64_t a2)
{
  v4 = sub_100068FC4(&qword_100502BF0, &qword_100409C88);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1000B7C94()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_100502F80);
  sub_1000958E4(v0, qword_100502F80);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

void sub_1000B7D0C(void *a1@<X0>, uint64_t a2@<X8>)
{
  if (!a1)
  {
    v22 = 0;
    v36 = 0;
    v32 = 0;
    v35 = 0;
    v33 = 0;
    v45 = 1;
    v44 = 1;
    v43 = 1;
    v24 = 0xF000000000000000;
    v34 = 0xF000000000000000;
    goto LABEL_34;
  }

  v3 = a1;
  v4 = &stru_1004F5000;
  v5 = [v3 childWithTag:254];

  if (!v5 || (v6 = [v5 childWithTag:57152], v5, !v6))
  {

    goto LABEL_7;
  }

  v7 = [v6 value];
  if (!v7)
  {
LABEL_7:
    v35 = 0;
    v45 = 1;
    goto LABEL_8;
  }

  v8 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v10 = v9;

  sub_100069E2C(v8, v10);
  v35 = sub_100090214(v8, v10, 0, 0, 1);
  sub_10006A178(v8, v10);
  sub_10006A178(v8, v10);
  v45 = 0;
LABEL_8:
  v11 = v3;
  v12 = [v11 childWithTag:254];

  if (v12 && (v13 = [v12 childWithTag:57153], v12, v13))
  {

    v14 = [v13 value];
    if (v14)
    {
      v15 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      sub_100069E2C(v15, v17);
      v36 = sub_100090214(v15, v17, 0, 0, 1);
      sub_10006A178(v15, v17);
      sub_10006A178(v15, v17);
      v44 = 0;
    }

    else
    {
      v36 = 0;
      v44 = 1;
    }

    v4 = &stru_1004F5000;
  }

  else
  {

    v36 = 0;
    v44 = 1;
  }

  v18 = v11;
  v19 = [v18 v4[113].type];

  if (v19 && (v20 = [v19 v4[113].type], v19, v20))
  {

    v21 = [v20 value];
    if (v21)
    {
      v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      goto LABEL_20;
    }
  }

  else
  {
  }

  v22 = 0;
  v24 = 0xF000000000000000;
LABEL_20:
  v25 = v18;
  v26 = [v25 childWithTag:254];

  if (v26 && (v27 = [v26 childWithTag:57155], v26, v27))
  {

    v28 = [v27 value];
    if (v28)
    {
      v42 = v35;
      v29 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v31 = v30;

      sub_100069E2C(v29, v31);
      v32 = sub_1000905BC(v29, v31, 0, 0, 1);
      sub_10006A178(v29, v31);
      sub_10006A178(v29, v31);
      v37 = 0;
      v35 = v42;
    }

    else
    {
      v32 = 0;
      v37 = 1;
    }
  }

  else
  {

    v32 = 0;
    v37 = 1;
  }

  v43 = v37;
  v38 = v25;
  v33 = [v38 childWithTag:221];

  if (v33)
  {
    v39 = v35;
    v40 = [v33 value];

    if (v40)
    {
      v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v34 = v41;
    }

    else
    {

      v33 = 0;
      v34 = 0xF000000000000000;
    }

    v35 = v39;
  }

  else
  {

    v34 = 0xF000000000000000;
  }

LABEL_34:
  *a2 = v35;
  *(a2 + 2) = v45;
  *(a2 + 4) = v36;
  *(a2 + 6) = v44;
  *(a2 + 8) = v22;
  *(a2 + 16) = v24;
  *(a2 + 24) = v32;
  *(a2 + 32) = v43;
  *(a2 + 40) = v33;
  *(a2 + 48) = v34;
}

uint64_t sub_1000B8288(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000015 && 0x80000001004625F0 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000020 && 0x8000000100462610 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x8000000100462640 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD00000000000001DLL && 0x8000000100462660 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000017 && 0x8000000100462680 == a2)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1000B843C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = sub_100068FC4(&qword_100502FA8, &qword_10040A398);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v21 - v8;
  v10 = a1[4];
  sub_1000752B0(a1, a1[3]);
  sub_1000B8780();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_1000752F4(a1);
  }

  LOBYTE(v33) = 0;
  v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v44 = BYTE2(v11) & 1;
  LOBYTE(v33) = 1;
  v28 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v43 = BYTE2(v28) & 1;
  LOBYTE(v29) = 2;
  sub_1000B87D4();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v33;
  v27 = v34;
  LOBYTE(v33) = 3;
  v25 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v42 = v12 & 1;
  v45 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v9, v5);
  v22 = v40;
  v21 = v41;
  LOWORD(v29) = v11;
  v23 = v44;
  v24 = v11;
  BYTE2(v29) = v44;
  v13 = v28;
  WORD2(v29) = v28;
  v14 = v43;
  BYTE6(v29) = v43;
  v16 = v26;
  v15 = v27;
  *(&v29 + 1) = v26;
  *&v30 = v27;
  v17 = v25;
  *(&v30 + 1) = v25;
  v18 = v42;
  LOBYTE(v31) = v42;
  *(&v31 + 1) = v40;
  v32 = v41;
  sub_1000B8828(&v29, &v33);
  sub_1000752F4(a1);
  LOWORD(v33) = v24;
  BYTE2(v33) = v23;
  WORD2(v33) = v13;
  BYTE6(v33) = v14;
  v34 = v16;
  v35 = v15;
  v36 = v17;
  v37 = v18;
  v38 = v22;
  v39 = v21;
  result = sub_1000B8860(&v33);
  v20 = v30;
  *a2 = v29;
  *(a2 + 16) = v20;
  *(a2 + 32) = v31;
  *(a2 + 48) = v32;
  return result;
}

unint64_t sub_1000B8780()
{
  result = qword_100502FB0;
  if (!qword_100502FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FB0);
  }

  return result;
}

unint64_t sub_1000B87D4()
{
  result = qword_100502FB8;
  if (!qword_100502FB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FB8);
  }

  return result;
}

unint64_t sub_1000B8890()
{
  result = qword_100502FC8;
  if (!qword_100502FC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FC8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DiscretionaryData.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for DiscretionaryData.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1000B8A38()
{
  result = qword_100502FD0;
  if (!qword_100502FD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FD0);
  }

  return result;
}

unint64_t sub_1000B8A90()
{
  result = qword_100502FD8;
  if (!qword_100502FD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FD8);
  }

  return result;
}

unint64_t sub_1000B8AE8()
{
  result = qword_100502FE0;
  if (!qword_100502FE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100502FE0);
  }

  return result;
}

uint64_t sub_1000B8B3C()
{
  v17 = type metadata accessor for HPKE.AEAD();
  v0 = *(v17 - 8);
  v1 = *(v0 + 64);
  __chkstk_darwin(v17);
  v3 = &v16 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for HPKE.KDF();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for HPKE.KEM();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  __chkstk_darwin(v9);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HPKE.Ciphersuite();
  sub_1000B6A94(v14, qword_100502FE8);
  sub_1000958E4(v14, qword_100502FE8);
  (*(v10 + 104))(v13, enum case for HPKE.KEM.P256_HKDF_SHA256(_:), v9);
  (*(v5 + 104))(v8, enum case for HPKE.KDF.HKDF_SHA256(_:), v4);
  (*(v0 + 104))(v3, enum case for HPKE.AEAD.AES_GCM_128(_:), v17);
  return HPKE.Ciphersuite.init(kem:kdf:aead:)();
}

char *sub_1000B8D94(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v66 = a1;
  v67 = a2;
  v68 = type metadata accessor for SHA256();
  v59 = *(v68 - 8);
  v6 = *(v59 + 64);
  __chkstk_darwin(v68);
  v58 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SHA256Digest();
  v61 = *(v8 - 8);
  v62 = v8;
  v9 = *(v61 + 64);
  __chkstk_darwin(v8);
  v60 = &v56 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for HPKE.Ciphersuite();
  v65 = *(v63 - 8);
  v11 = *(v65 + 8);
  __chkstk_darwin(v63);
  v64 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for HPKE.Sender();
  v69 = *(v13 - 8);
  v14 = *(v69 + 64);
  __chkstk_darwin(v13);
  v16 = &v56 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for P256.KeyAgreement.PublicKey();
  v70 = *(v17 - 8);
  v18 = *(v70 + 64);
  v19 = __chkstk_darwin(v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v19);
  v23 = &v56 - v22;
  v71[0] = a3;
  v71[1] = a4;
  v24 = a3;
  v25 = a3;
  v26 = a4;
  sub_100069E2C(v25, a4);
  v27 = v75;
  P256.KeyAgreement.PublicKey.init<A>(x963Representation:)();
  if (!v27)
  {
    v28 = v63;
    v56 = v26;
    v57 = v24;
    v75 = v13;
    (*(v70 + 16))(v21, v23, v17);
    if (qword_100501920 != -1)
    {
      swift_once();
    }

    v29 = sub_1000958E4(v28, qword_100502FE8);
    (*(v65 + 2))(v64, v29, v28);
    HPKE.Sender.init<A>(recipientKey:ciphersuite:info:)();
    v30 = v68;
    v65 = v23;
    v71[0] = v66;
    v71[1] = v67;
    v74 = xmmword_1004098D0;
    sub_1000937E0();
    v31 = HPKE.Sender.seal<A, B>(_:authenticating:)();
    v67 = 0;
    v66 = v31;
    v64 = v33;
    sub_10006A178(v74, *(&v74 + 1));
    sub_100068FC4(&unk_100503F50, &unk_10040D950);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1004099F0;
    strcpy(v71, "version");
    v71[1] = 0xE700000000000000;
    AnyHashable.init<A>(_:)();
    v35 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    *(inited + 96) = &type metadata for String;
    *(inited + 72) = v35;
    *(inited + 80) = v36;
    strcpy(v71, "publicKeyHash");
    HIWORD(v71[1]) = -4864;
    AnyHashable.init<A>(_:)();
    sub_1000B95EC(&qword_100503000, &type metadata accessor for SHA256);
    v63 = v17;
    v37 = v58;
    dispatch thunk of HashFunction.init()();
    v38 = v56;
    v39 = v57;
    sub_100069E2C(v57, v56);
    v40 = v67;
    sub_100357FC4(v39, v38);
    v67 = v40;
    sub_10006A178(v39, v38);
    v41 = v60;
    dispatch thunk of HashFunction.finalize()();
    (*(v59 + 8))(v37, v30);
    v42 = v62;
    v72 = v62;
    v73 = sub_1000B95EC(&qword_100503008, &type metadata accessor for SHA256Digest);
    v43 = sub_1000B9634(v71);
    v44 = v61;
    (*(v61 + 16))(v43, v41, v42);
    sub_1000752B0(v71, v72);
    v45 = v67;
    dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
    v67 = v45;
    (*(v44 + 8))(v41, v42);
    v47 = *(&v74 + 1);
    v46 = v74;
    sub_1000752F4(v71);
    v48 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v46, v47);
    *(inited + 168) = &type metadata for String;
    *(inited + 144) = v48;
    v71[0] = 0xD000000000000012;
    v71[1] = 0x80000001004626A0;
    AnyHashable.init<A>(_:)();
    v49 = HPKE.Sender.encapsulatedKey.getter();
    v51 = v50;
    v52 = Data.base64EncodedString(options:)(0);
    sub_10006A178(v49, v51);
    *(inited + 240) = &type metadata for String;
    *(inited + 216) = v52;
    v71[0] = 1635017060;
    v71[1] = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    v53 = v66;
    v54 = v64;
    v55 = Data.base64EncodedString(options:)(0);
    *(inited + 312) = &type metadata for String;
    *(inited + 288) = v55;
    v23 = sub_100090BC4(inited);
    swift_setDeallocating();
    sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
    swift_arrayDestroy();
    sub_10006A178(v53, v54);
    (*(v69 + 8))(v16, v75);
    (*(v70 + 8))(v65, v63);
  }

  return v23;
}

uint64_t sub_1000B95EC(unint64_t *a1, void (*a2)(uint64_t))
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

uint64_t *sub_1000B9634(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1000B9698(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for HPKE.Ciphersuite();
  v44 = *(v4 - 8);
  v5 = *(v44 + 64);
  __chkstk_darwin(v4);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for P256.KeyAgreement.PrivateKey();
  v43 = *(v8 - 8);
  v9 = *(v43 + 64);
  __chkstk_darwin(v8);
  v11 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for HPKE.Recipient();
  v42 = *(v12 - 8);
  v13 = *(v42 + 64);
  __chkstk_darwin(v12);
  v15 = &v36 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = 0xD000000000000012;
  v46 = 0x80000001004626A0;
  AnyHashable.init<A>(_:)();
  if (!*(a1 + 16) || (v16 = sub_10008CA7C(v47), (v17 & 1) == 0))
  {
    sub_100092F28(v47);
    goto LABEL_7;
  }

  sub_1000754F0(*(a1 + 56) + 32 * v16, v48);
  sub_100092F28(v47);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_7:
    v20 = sub_1000B9C54();
    v21 = "Missing ephemeralPublicKey";
    goto LABEL_8;
  }

  v39 = a2;
  v41 = Data.init(base64Encoded:options:)();
  v19 = v18;

  v40 = v19;
  if (v19 >> 60 != 15)
  {
    v45 = 1635017060;
    v46 = 0xE400000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a1 + 16) && (v23 = sub_10008CA7C(v47), (v24 & 1) != 0))
    {
      sub_1000754F0(*(a1 + 56) + 32 * v23, v48);
      sub_100092F28(v47);
      if (swift_dynamicCast())
      {
        v25 = Data.init(base64Encoded:options:)();
        v27 = v26;

        if (v27 >> 60 != 15)
        {
          v37 = v25;
          v38 = v27;
          (*(v43 + 16))(v11, v39, v8);
          v20 = v41;
          if (qword_100501920 != -1)
          {
            swift_once();
          }

          v31 = sub_1000958E4(v4, qword_100502FE8);
          (*(v44 + 16))(v7, v31, v4);
          v32 = v40;
          sub_100069E2C(v20, v40);
          v33 = v49;
          HPKE.Recipient.init<A>(privateKey:ciphersuite:info:encapsulatedKey:)();
          if (!v33)
          {
            v35 = v37;
            v34 = v38;
            v47[0] = v37;
            v47[1] = v38;
            *v48 = xmmword_1004098D0;
            sub_1000937E0();
            v20 = HPKE.Recipient.open<A, B>(_:authenticating:)();
            sub_10006A2D0(v41, v32);
            sub_10006A178(v48[0], v48[1]);
            (*(v42 + 8))(v15, v12);
            sub_10006A2D0(v35, v34);
            return v20;
          }

          sub_10006A2D0(v20, v32);
          v29 = v37;
          v30 = v38;
          goto LABEL_18;
        }

        v20 = sub_1000B9C54();
        v28 = 0x2064696C61766E49;
LABEL_17:
        sub_10030990C(0, 1, v28, 0xEC00000061746164, 0);
        swift_willThrow();
        v30 = v40;
        v29 = v41;
LABEL_18:
        sub_10006A2D0(v29, v30);
        return v20;
      }
    }

    else
    {
      sub_100092F28(v47);
    }

    v20 = sub_1000B9C54();
    v28 = 0x20676E697373694DLL;
    goto LABEL_17;
  }

  v20 = sub_1000B9C54();
  v21 = "Invalid ephemeralPublicKey";
LABEL_8:
  sub_10030990C(0, 1, 0xD00000000000001ALL, (v21 - 32) | 0x8000000000000000, 0);
  swift_willThrow();
  return v20;
}

unint64_t sub_1000B9C54()
{
  result = qword_10050AA20;
  if (!qword_10050AA20)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_10050AA20);
  }

  return result;
}

uint64_t sub_1000B9CA0(void *a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = *(v1 + OBJC_IVAR____TtC10seserviced13EventListener_queue);
  *v7 = v8;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.notOnQueue(_:), v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  result = (*(v4 + 8))(v7, v3);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_5;
  }

  v12 = swift_allocObject();
  *(v12 + 16) = v1;
  *(v12 + 24) = a1;
  v13 = swift_allocObject();
  *(v13 + 16) = sub_1000BA740;
  *(v13 + 24) = v12;
  aBlock[4] = sub_1000B3564;
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100346DB0;
  aBlock[3] = &unk_1004C6810;
  v14 = _Block_copy(aBlock);

  v15 = a1;

  dispatch_sync(v9, v14);
  _Block_release(v14);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
LABEL_5:
    __break(1u);
  }

  return result;
}

void sub_1000B9EE0(uint64_t a1, void *a2)
{
  v3 = a2;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v24 = v7;
    *v6 = 136315138;
    v8 = [v3 name];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v12 = sub_1002FFA0C(v9, v11, &v24);

    *(v6 + 4) = v12;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received notification %s", v6, 0xCu);
    sub_1000752F4(v7);
  }

  v13 = [v3 name];
  swift_beginAccess();
  v14 = *(a1 + 16);
  if (*(v14 + 16) && (v15 = sub_10008CAC0(v13), (v16 & 1) != 0))
  {
    v17 = *(*(v14 + 56) + 8 * v15);

    swift_endAccess();

    v18 = *(v17 + 16);
    if (v18)
    {
      v19 = 0;
      v20 = (v17 + 64);
      while (v19 < *(v17 + 16))
      {
        ++v19;
        v21 = *(v20 - 1);
        v22 = *v20;
        v24 = *(v20 - 4);
        v25 = *(v20 - 3);
        v26 = v21;
        v27 = v22;

        v23 = v22;
        sub_1000BA12C(&v24);

        v20 += 5;
        if (v18 == v19)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_9:
    }
  }

  else
  {

    swift_endAccess();
  }
}

uint64_t sub_1000BA12C(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v32 = *(v2 - 8);
  v33 = v2;
  v3 = *(v32 + 64);
  __chkstk_darwin(v2);
  v31 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for DispatchQoS();
  v29 = *(v5 - 8);
  v30 = v5;
  v6 = *(v29 + 64);
  __chkstk_darwin(v5);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *a1;
  v11 = *(a1 + 24);
  v10 = *(a1 + 32);
  v28 = *(a1 + 8);
  v12 = v28;

  v13 = v10;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v27 = v13;
    v18 = v17;
    aBlock[0] = v17;
    *v16 = 136315138;

    v19 = v9;
    v20 = sub_1002FFA0C(v9, v12, aBlock);

    *(v16 + 4) = v20;
    v9 = v19;
    _os_log_impl(&_mh_execute_header, v14, v15, "Calling handler for %s", v16, 0xCu);
    sub_1000752F4(v18);
    v13 = v27;
  }

  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  *(v21 + 24) = v28;
  *(v21 + 40) = v11;
  *(v21 + 48) = v13;
  aBlock[4] = sub_1000BA7B8;
  aBlock[5] = v21;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C6860;
  v22 = _Block_copy(aBlock);

  v13;
  static DispatchQoS.unspecified.getter();
  aBlock[7] = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  v23 = v31;
  v24 = v33;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v22);
  (*(v32 + 8))(v23, v24);
  (*(v29 + 8))(v8, v30);
}

uint64_t sub_1000BA53C()
{
  v1 = *(v0 + 2);

  v2 = OBJC_IVAR____TtC10seserviced13EventListener_logger;
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(&v0[v2], v3);

  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for EventListener()
{
  result = qword_100503048;
  if (!qword_100503048)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1000BA644()
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

uint64_t sub_1000BA700()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000BA758(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1000BA770()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000BA7B8()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 40);
  return v1();
}

unint64_t sub_1000BA7E0()
{
  result = qword_1005020E0;
  if (!qword_1005020E0)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005020E0);
  }

  return result;
}

unint64_t sub_1000BA838()
{
  result = qword_1005020F0;
  if (!qword_1005020F0)
  {
    sub_1000692D8(&unk_1005046F0, &unk_10040B2A0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1005020F0);
  }

  return result;
}

uint64_t sub_1000BA8A4()
{
  type metadata accessor for DSKMotion();
  swift_allocObject();
  result = sub_1000BA8E0();
  qword_10051B238 = result;
  return result;
}

uint64_t sub_1000BA8E0()
{
  v1 = v0;
  v2 = sub_100068FC4(qword_100502460, &unk_100410A50);
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  __chkstk_darwin(v2);
  v6 = &v15 - v5;
  v7 = sub_100068FC4(&unk_100504880, &unk_10040A5B0);
  v8 = *(v7 - 8);
  v9 = *(v8 + 64);
  __chkstk_darwin(v7);
  v11 = &v15 - v10;
  *(v1 + 16) = 0;
  *(v1 + 24) = &_swiftEmptyDictionarySingleton;
  *(v1 + 32) = 1;
  LOBYTE(aBlock) = 1;
  LOBYTE(v22) = 2;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  (*(v8 + 8))(v11, v7);
  *(v1 + 33) = aBlock;
  v22 = 0x3FE0000000000000;
  aBlock = 0;
  LOBYTE(v17) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v12 = *(v3 + 8);
  v12(v6, v2);
  *(v1 + 40) = aBlock;
  v22 = 0x4082C00000000000;
  aBlock = 0;
  LOBYTE(v17) = 1;
  UserDefaultBacked.init(suiteName:key:initial:internalOnly:internalOnlyInitial:)();
  UserDefaultBacked.wrappedValue.getter();
  v12(v6, v2);
  *(v1 + 48) = aBlock;
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v20 = sub_1000BBF84;
  v21 = v1;
  aBlock = _NSConcreteStackBlock;
  v17 = 1107296256;
  v18 = sub_100193978;
  v19 = &unk_1004C6888;
  v13 = _Block_copy(&aBlock);

  os_state_add_handler();
  _Block_release(v13);
  return v1;
}

_DWORD *sub_1000BAC94()
{
  sub_100068FC4(&unk_100503F50, &unk_10040D950);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_10040A530;
  AnyHashable.init<A>(_:)();
  v2 = *(v0 + 16) != 0;
  *(inited + 96) = &type metadata for Bool;
  *(inited + 72) = v2;
  AnyHashable.init<A>(_:)();
  swift_beginAccess();
  v3 = *(v0 + 24);
  *(inited + 168) = sub_100068FC4(&qword_1005031C0, &unk_10040A5C0);
  *(inited + 144) = v3;

  AnyHashable.init<A>(_:)();
  v4 = *(v0 + 32);
  *(inited + 240) = &type metadata for Bool;
  *(inited + 216) = v4;
  AnyHashable.init<A>(_:)();
  v5 = *(v0 + 33);
  *(inited + 312) = &type metadata for Bool;
  *(inited + 288) = v5;
  AnyHashable.init<A>(_:)();
  v6 = *(v0 + 40);
  *(inited + 384) = &type metadata for Double;
  *(inited + 360) = v6;
  AnyHashable.init<A>(_:)();
  v7 = *(v0 + 48);
  *(inited + 456) = &type metadata for Double;
  *(inited + 432) = v7;
  sub_100090BC4(inited);
  swift_setDeallocating();
  sub_100068FC4(&qword_100502C48, &qword_10040B2D0);
  swift_arrayDestroy();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v9 = sub_100015DA0("dskmotion.state", isa);

  return v9;
}

void sub_1000BAF34(uint64_t a1, Swift::UInt a2)
{
  v5 = type metadata accessor for DispatchPredicate();
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = (&v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v10 = qword_10051B7F0;
  *v9 = qword_10051B7F0;
  (*(v6 + 104))(v9, enum case for DispatchPredicate.onQueue(_:), v5);
  v11 = v10;
  LOBYTE(v10) = _dispatchPreconditionTest(_:)();
  (*(v6 + 8))(v9, v5);
  if ((v10 & 1) == 0)
  {
    __break(1u);
    goto LABEL_21;
  }

  if (*(v2 + 33) == 1 && [objc_opt_self() activityAlarmAvailable])
  {
    swift_beginAccess();
    v12 = *(v2 + 24);
    if (*(v12 + 16))
    {
      v13 = v2;
      v14 = *(v2 + 24);
      v15 = sub_10008C9C8(a2);
      if (v16)
      {
        sub_1000BC094(*(v12 + 56) + 40 * v15, &v23);
      }

      else
      {
        v25 = 0;
        v23 = 0u;
        v24 = 0u;
      }

      v2 = v13;
    }

    else
    {
      v25 = 0;
      v23 = 0u;
      v24 = 0u;
    }

    swift_endAccess();
    v17 = *(&v24 + 1);
    sub_1000BC02C(&v23);
    if (v17)
    {
      sub_100079E24();
      swift_allocError();
      *v18 = 0;
      swift_willThrow();
      return;
    }

    sub_1000BC094(a1, &v23);
    swift_beginAccess();
    sub_1000C55D8(&v23, a2);
    swift_endAccess();
    if (!*(v2 + 16))
    {
      if (qword_100501930 == -1)
      {
LABEL_16:
        v19 = type metadata accessor for Logger();
        sub_1000958E4(v19, qword_1005030E0);
        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.info.getter();
        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          *v22 = 0;
          _os_log_impl(&_mh_execute_header, v20, v21, "Starting motion detection", v22, 2u);
        }

        sub_1000BB26C(0);
        return;
      }

LABEL_21:
      swift_once();
      goto LABEL_16;
    }
  }
}

void sub_1000BB26C(char a1)
{
  v3 = type metadata accessor for DispatchPredicate();
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  __chkstk_darwin(v3);
  v7 = (aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v8 = qword_10051B7F0;
  *v7 = qword_10051B7F0;
  (*(v4 + 104))(v7, enum case for DispatchPredicate.onQueue(_:), v3);
  v9 = v8;
  v10 = _dispatchPreconditionTest(_:)();
  (*(v4 + 8))(v7, v3);
  if (v10)
  {
    v11 = *(v1 + 16);
    if (v11)
    {
      [v11 invalidate];
    }

    v12 = a1 & 1;
    v13 = 48;
    if (v12)
    {
      v13 = 40;
    }

    v14 = *(v1 + v13);
    v15 = objc_allocWithZone(CMActivityAlarm);
    aBlock[4] = sub_1000BC0F8;
    aBlock[5] = v1;
    aBlock[0] = _NSConcreteStackBlock;
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1000BBFA0;
    aBlock[3] = &unk_1004C68B0;
    v16 = _Block_copy(aBlock);

    v17 = [v15 initWithTrigger:v12 duration:v9 onQueue:v16 withHandler:v14];
    _Block_release(v16);

    v18 = *(v1 + 16);
    *(v1 + 16) = v17;
  }

  else
  {
    __break(1u);
  }
}

void sub_1000BB4B4(Swift::UInt a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchPredicate();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  __chkstk_darwin(v4);
  v8 = (&v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v9 = qword_10051B7F0;
  *v8 = qword_10051B7F0;
  (*(v5 + 104))(v8, enum case for DispatchPredicate.onQueue(_:), v4);
  v10 = v9;
  LOBYTE(v9) = _dispatchPreconditionTest(_:)();
  (*(v5 + 8))(v8, v4);
  if ((v9 & 1) == 0)
  {
    __break(1u);
LABEL_19:
    swift_once();
    goto LABEL_11;
  }

  swift_beginAccess();
  v11 = *(v2 + 24);
  if (*(v11 + 16) && (v12 = sub_10008C9C8(a1), (v13 & 1) != 0))
  {
    sub_1000BC094(*(v11 + 56) + 40 * v12, &v21);
  }

  else
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
  }

  swift_endAccess();
  v14 = *(&v22 + 1);
  sub_1000BC02C(&v21);
  if (!v14)
  {
    return;
  }

  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  swift_beginAccess();
  sub_1000C55D8(&v21, a1);
  swift_endAccess();
  if (*(*(v2 + 24) + 16))
  {
    return;
  }

  if (qword_100501930 != -1)
  {
    goto LABEL_19;
  }

LABEL_11:
  v15 = type metadata accessor for Logger();
  sub_1000958E4(v15, qword_1005030E0);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 0;
    _os_log_impl(&_mh_execute_header, v16, v17, "Stopping motion detection", v18, 2u);
  }

  v19 = *(v2 + 16);
  if (v19)
  {
    [v19 invalidate];
    v20 = *(v2 + 16);
  }

  else
  {
    v20 = 0;
  }

  *(v2 + 16) = 0;

  *(v2 + 32) = 1;
}

uint64_t sub_1000BB78C(void *a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for DispatchWorkItemFlags();
  v38 = *(v6 - 8);
  v7 = *(v38 + 64);
  __chkstk_darwin(v6);
  v9 = v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for DispatchPredicate();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  __chkstk_darwin(v14);
  v18 = (v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (qword_100501D90 != -1)
  {
    swift_once();
  }

  v19 = qword_10051B7F0;
  *v18 = qword_10051B7F0;
  (*(v15 + 104))(v18, enum case for DispatchPredicate.onQueue(_:), v14);
  v35[1] = v19;
  LOBYTE(v19) = _dispatchPreconditionTest(_:)();
  result = (*(v15 + 8))(v18, v14);
  if ((v19 & 1) == 0)
  {
    __break(1u);
LABEL_24:
    swift_once();
    goto LABEL_13;
  }

  if (!*(v3 + 16))
  {
    return result;
  }

  if (a2 || !a1)
  {
    *(v3 + 32) = 1;
    sub_1000BB26C(0);
  }

  else
  {
    v21 = a1;
    v22 = [v21 trigger] == 0;
    if (v22)
    {
      v23 = 0;
    }

    else
    {
      v23 = 1;
    }

    *(v3 + 32) = v23;
    sub_1000BB26C(v22);
  }

  if (qword_100501930 != -1)
  {
    goto LABEL_24;
  }

LABEL_13:
  v24 = type metadata accessor for Logger();
  sub_1000958E4(v24, qword_1005030E0);

  swift_errorRetain();
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    aBlock[0] = swift_slowAlloc();
    *v27 = 136315394;
    if (*(v3 + 32))
    {
      v28 = 0x676E69766F6DLL;
    }

    else
    {
      v28 = 0x636974617473;
    }

    v29 = sub_1002FFA0C(v28, 0xE600000000000000, aBlock);

    *(v27 + 4) = v29;
    *(v27 + 12) = 2080;
    if (a2)
    {
      swift_getErrorValue();
      v30 = Error.localizedDescription.getter();
      v32 = v31;
    }

    else
    {
      v32 = 0xE400000000000000;
      v30 = 1701736302;
    }

    v33 = sub_1002FFA0C(v30, v32, aBlock);

    *(v27 + 14) = v33;
    _os_log_impl(&_mh_execute_header, v25, v26, "Device is %s error %s", v27, 0x16u);
    swift_arrayDestroy();
  }

  aBlock[4] = sub_1000BC0FC;
  aBlock[5] = v3;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_100080830;
  aBlock[3] = &unk_1004C68D8;
  v34 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v39 = _swiftEmptyArrayStorage;
  sub_1000BA7E0();
  sub_100068FC4(&unk_1005046F0, &unk_10040B2A0);
  sub_1000BA838();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v34);
  (*(v38 + 8))(v9, v6);
  (*(v36 + 8))(v13, v37);
}

uint64_t sub_1000BBD00(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = 1 << *(v2 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(v2 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = *(a1 + 24);

  v9 = 0;
  if (v5)
  {
    while (1)
    {
      v10 = v9;
LABEL_12:
      v13 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v14 = v13 | (v10 << 6);
      v15 = *(*(v2 + 48) + 8 * v14);
      sub_1000BC094(*(v2 + 56) + 40 * v14, v18);
      *&v19 = v15;
      sub_1000BC104(v18, &v19 + 8);
      v12 = v10;
LABEL_13:
      v22[1] = v20;
      v22[2] = v21;
      v22[0] = v19;
      if (!v21)
      {
      }

      sub_1000BC104((v22 + 8), &v19);
      v16 = *(&v20 + 1);
      v17 = v21;
      sub_1000752B0(&v19, *(&v20 + 1));
      (*(v17 + 8))(*(a1 + 32), v16, v17);
      result = sub_1000752F4(&v19);
      v9 = v12;
      if (!v5)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    if (v6 <= v9 + 1)
    {
      v11 = v9 + 1;
    }

    else
    {
      v11 = v6;
    }

    v12 = v11 - 1;
    while (1)
    {
      v10 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        break;
      }

      if (v10 >= v6)
      {
        v5 = 0;
        v20 = 0u;
        v21 = 0u;
        v19 = 0u;
        goto LABEL_13;
      }

      v5 = *(v2 + 64 + 8 * v10);
      ++v9;
      if (v5)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1000BBEA8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000BBF0C()
{
  v0 = type metadata accessor for Logger();
  sub_1000B6A94(v0, qword_1005030E0);
  sub_1000958E4(v0, qword_1005030E0);
  String.init(cString:)();
  return Logger.init(subsystem:category:)();
}

uint64_t sub_1000BBF88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1000BBFA0(uint64_t a1, void *a2, void *a3)
{
  v6 = *(a1 + 32);
  v5 = *(a1 + 40);

  v8 = a2;
  v7 = a3;
  v6(a2, a3);
}

uint64_t sub_1000BC02C(uint64_t a1)
{
  v2 = sub_100068FC4(&qword_1005031C8, &qword_10040A5D0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1000BC094(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1000BC104(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

void sub_1000BC12C(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    __CocoaSet.makeIterator()();
    type metadata accessor for SecureElementApplicationEntity();
    sub_1000C0A10(&unk_10050BEC0, type metadata accessor for SecureElementApplicationEntity);
    Set.Iterator.init(_cocoa:)();
    v1 = v20;
    v2 = v21;
    v3 = v22;
    v4 = v23;
    v5 = v24;
  }

  else
  {
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);

    v4 = 0;
  }

LABEL_7:
  v9 = &selRef_cacheProximityChipData_completion_;
  while (v1 < 0)
  {
    if (!__CocoaSet.Iterator.next()() || (type metadata accessor for SecureElementApplicationEntity(), swift_dynamicCast(), v12 = v19, v9 = &selRef_cacheProximityChipData_completion_, !v19))
    {
LABEL_24:
      sub_100093854();
      return;
    }

LABEL_17:
    v13 = v12;
    v14 = [v13 v9[328]];
    if (v14)
    {
      v15 = v14;
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      v16 = [v13 bundleIdentifier];
      if (v16)
      {
        v17 = v16;
        static String._unconditionallyBridgeFromObjectiveC(_:)();
      }

      type metadata accessor for ApplicationInfoInternal();
      [v13 gdprVersionShown];
      dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();

      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v18 = *((_swiftEmptyArrayStorage & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      goto LABEL_7;
    }
  }

  v10 = v4;
  v11 = v5;
  if (v5)
  {
LABEL_13:
    v5 = (v11 - 1) & v11;
    v12 = *(*(v1 + 48) + ((v4 << 9) | (8 * __clz(__rbit64(v11)))));
    if (!v12)
    {
      goto LABEL_24;
    }

    goto LABEL_17;
  }

  while (1)
  {
    v4 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v4 >= ((v3 + 64) >> 6))
    {
      goto LABEL_24;
    }

    v11 = *(v2 + 8 * v4);
    ++v10;
    if (v11)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
}

uint64_t sub_1000BC43C(void *a1, uint64_t a2, uint64_t a3)
{
  v93 = a2;
  v5 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v6 = *(*(v5 - 8) + 64);
  __chkstk_darwin(v5 - 8);
  v89 = &v76 - v7;
  v8 = sub_100068FC4(&qword_1005031F8, &unk_10040A5E0);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v76 - v10;
  v12 = type metadata accessor for StateInternal();
  v92 = *(v12 - 8);
  v13 = *(v92 + 64);
  v14 = __chkstk_darwin(v12);
  v90 = &v76 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v91 = &v76 - v16;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  v19 = *(v18 + 64);
  v20 = __chkstk_darwin(v17);
  v22 = &v76 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __chkstk_darwin(v20);
  v25 = &v76 - v24;
  v26 = __chkstk_darwin(v23);
  v28 = &v76 - v27;
  __chkstk_darwin(v26);
  v30 = &v76 - v29;
  v31 = [a1 friendlyName];
  if (!v31)
  {

LABEL_19:

    return 0;
  }

  v88 = v28;
  v86 = v12;
  v32 = v31;
  v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  v35 = [a1 uuid];
  if (!v35)
  {

    goto LABEL_19;
  }

  v87 = v34;
  v36 = v35;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v37 = [a1 ownerApplications];
  if (!v37)
  {
    (*(v18 + 8))(v30, v17);

LABEL_18:

    goto LABEL_19;
  }

  v38 = v37;
  v84 = v18;
  v94 = 0;
  type metadata accessor for SecureElementApplicationEntity();
  sub_1000C0A10(&unk_10050BEC0, type metadata accessor for SecureElementApplicationEntity);
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  v39 = v94;
  if (!v94)
  {

    (*(v84 + 8))(v30, v17);
    return 0;
  }

  v40 = [a1 userApplications];
  if (!v40)
  {
    (*(v84 + 8))(v30, v17);

LABEL_17:

    goto LABEL_18;
  }

  v83 = v17;
  v94 = 0;
  v41 = v40;
  static Set._conditionallyBridgeFromObjectiveC(_:result:)();

  v42 = v94;
  if (!v94)
  {

    (*(v84 + 8))(v30, v83);
    return 0;
  }

  v43 = [a1 productConfigUUID];
  v44 = v83;
  if (!v43)
  {
    (*(v84 + 8))(v30, v83);

    goto LABEL_17;
  }

  v45 = v43;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  sub_1000BC12C(v39);
  v82 = v46;

  sub_1000BC12C(v42);
  v48 = v47;

  [a1 state];
  StateInternal.init(rawDiscriminant:instanceInfos:)();
  v49 = v92;
  v50 = v86;
  if ((*(v92 + 48))(v11, 1, v86) == 1)
  {

    v51 = *(v84 + 8);
    v51(v88, v44);
    v51(v30, v44);
    sub_100075768(v11, &qword_1005031F8, &unk_10040A5E0);
    return 0;
  }

  v78 = v48;
  (*(v49 + 32))(v91, v11, v50);
  v53 = v82;
  if (v82 >> 62)
  {
LABEL_59:
    v79 = v53 & 0xFFFFFFFFFFFFFF8;
    v75 = _CocoaArrayWrapper.endIndex.getter();
    v53 = v82;
    v81 = v75;
  }

  else
  {
    v79 = v82 & 0xFFFFFFFFFFFFFF8;
    v81 = *((v82 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v88;
  v55 = 0;
  v80 = v53 & 0xC000000000000001;
  v77 = 1;
  while (v81 != v55)
  {
    if (v80)
    {
      v57 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v55 >= *(v79 + 16))
      {
        goto LABEL_56;
      }

      v57 = *(v53 + 8 * v55 + 32);
    }

    v58 = v57;
    if (__OFADD__(v55, 1))
    {
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
LABEL_58:
      __break(1u);
      goto LABEL_59;
    }

    if (ApplicationInfoInternal.applicationId.getter() == v93 && v59 == a3)
    {
LABEL_48:
      v66 = v89;

      v44 = v83;
      v67 = v84;
      v54 = v88;
      goto LABEL_51;
    }

    v56 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v55;
    v53 = v82;
    v44 = v83;
    v54 = v88;
    if (v56)
    {
      goto LABEL_50;
    }
  }

  v60 = v78;
  v79 = v78 & 0xFFFFFFFFFFFFFF8;
  if (v78 >> 62)
  {
    v81 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v81 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v61 = 0;
  v80 = v60 & 0xC000000000000001;
  do
  {
    if (v81 == v61)
    {

      (*(v92 + 8))(v91, v86);
      v65 = *(v84 + 8);
      v65(v54, v44);
      v65(v30, v44);
      return 0;
    }

    if (v80)
    {
      v63 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v61 >= *(v79 + 16))
      {
        goto LABEL_58;
      }

      v63 = *(v78 + 8 * v61 + 32);
    }

    v58 = v63;
    if (__OFADD__(v61, 1))
    {
      goto LABEL_57;
    }

    if (ApplicationInfoInternal.applicationId.getter() == v93 && v64 == a3)
    {
      v77 = 0;
      goto LABEL_48;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

    ++v61;
    v44 = v83;
    v54 = v88;
  }

  while ((v62 & 1) == 0);
  v77 = 0;
LABEL_50:
  v67 = v84;
  v66 = v89;
LABEL_51:

  v68 = *(v67 + 16);
  v68(v25, v30, v44);
  (*(v92 + 16))(v90, v91, v86);
  v68(v22, v54, v44);
  v69 = [a1 lastUsedDate];
  if (v69)
  {
    v70 = v69;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v71 = 0;
  }

  else
  {
    v71 = 1;
  }

  v72 = type metadata accessor for Date();
  (*(*(v72 - 8) + 56))(v66, v71, 1, v72);
  v73 = dispatch thunk of CredentialInternal.__allocating_init(identifier:friendlyName:ownerApplications:userApplications:state:configUUID:accessLevel:lastUsedDate:)();

  (*(v92 + 8))(v91, v86);
  v74 = *(v84 + 8);
  v74(v54, v44);
  v74(v30, v44);
  return v73;
}

uint64_t sub_1000BCE28(unint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for StateInternal();
  v260 = *(v5 - 8);
  v6 = *(v260 + 64);
  v7 = __chkstk_darwin(v5);
  v267 = &v255 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v258 = (&v255 - v9);
  v10 = type metadata accessor for InstanceInfoInternal.LifeCycleState();
  v257 = *(v10 - 8);
  isa = v257[8].isa;
  v12 = __chkstk_darwin(v10);
  v266 = &v255 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __chkstk_darwin(v12);
  v16 = &v255 - v15;
  __chkstk_darwin(v14);
  v273 = (&v255 - v17);
  v282 = sub_100068FC4(&qword_1005031D0, &unk_100413B20);
  v18 = *(*(v282 - 8) + 64);
  __chkstk_darwin(v282);
  v283 = &v255 - v19;
  v20 = sub_100068FC4(&unk_10050BE80, &unk_10040B360);
  v21 = *(*(v20 - 8) + 64);
  v22 = __chkstk_darwin(v20 - 8);
  v24 = &v255 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __chkstk_darwin(v22);
  v277 = &v255 - v26;
  __chkstk_darwin(v25);
  v28 = &v255 - v27;
  v284 = type metadata accessor for UUID();
  v264 = *(v284 - 8);
  v29 = v264[8].isa;
  __chkstk_darwin(v284);
  v276 = &v255 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v262 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_239;
  }

  v31 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v259 = v5;
  v263 = v10;
  v286 = v28;
  v275 = v24;
  if (v31)
  {
    v293 = _swiftEmptyArrayStorage;
    v32 = &v293;
    specialized ContiguousArray.reserveCapacity(_:)();
    if (v31 < 0)
    {
      goto LABEL_242;
    }

    v290 = v3;
    if ((a1 & 0xC000000000000001) != 0)
    {
      v33 = 0;
      do
      {
        v34 = v33 + 1;
        v35 = [specialized _ArrayBuffer._getElementSlowPath(_:)() applet];
        swift_unknownObjectRelease();
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v36 = *(v293 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v33 = v34;
      }

      while (v31 != v34);
    }

    else
    {
      v37 = (a1 + 32);
      do
      {
        v38 = *v37++;
        v39 = [v38 applet];
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v40 = *(v293 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        --v31;
      }

      while (v31);
    }

    v28 = v293;
    v3 = v290;
  }

  else
  {
    v28 = _swiftEmptyArrayStorage;
  }

  if (qword_1005019D8 != -1)
  {
    swift_once();
  }

  v41 = type metadata accessor for Logger();
  v42 = sub_1000958E4(v41, qword_10051B2C8);

  v10 = v3;
  v268 = v42;
  v43 = Logger.logObject.getter();
  v2 = static os_log_type_t.info.getter();

  v44 = os_log_type_enabled(v43, v2);
  p_isa = (v28 >> 62);
  v271 = v16;
  v285 = v10;
  *&v261 = a1;
  v265 = (v28 >> 62);
  if (v44)
  {
    v16 = swift_slowAlloc();
    v46 = swift_slowAlloc();
    v293 = v46;
    *v16 = 136315394;
    if (p_isa)
    {
      v47 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v47 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v47)
    {
      v299 = _swiftEmptyArrayStorage;
      sub_10019F3C0(0, v47 & ~(v47 >> 63), 0);
      if (v47 < 0)
      {
        goto LABEL_247;
      }

      v281 = v46;
      v287 = v16;
      LODWORD(v288) = v2;
      *&v289 = v43;
      v48 = v299;
      v290 = v28;
      if ((v28 & 0xC000000000000001) != 0)
      {
        v49 = 0;
        do
        {
          specialized _ArrayBuffer._getElementSlowPath(_:)();
          v50 = [swift_unknownObjectRetain() identifier];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;
          swift_unknownObjectRelease_n();

          v299 = v48;
          v55 = v48[2].isa;
          v54 = v48[3].isa;
          a1 = v55 + 1;
          if (v55 >= v54 >> 1)
          {
            sub_10019F3C0((v54 > 1), v55 + 1, 1);
            v48 = v299;
          }

          ++v49;
          v48[2].isa = a1;
          v56 = &v48[2 * v55];
          v56[4].isa = v51;
          v56[5].isa = v53;
        }

        while (v47 != v49);
      }

      else
      {
        v57 = (v28 + 32);
        a1 = &selRef_cacheProximityChipData_completion_;
        do
        {
          v58 = *v57;
          v59 = [v58 identifier];
          v60 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v62 = v61;

          v299 = v48;
          v64 = v48[2].isa;
          v63 = v48[3].isa;
          if (v64 >= v63 >> 1)
          {
            sub_10019F3C0((v63 > 1), v64 + 1, 1);
            v48 = v299;
          }

          v48[2].isa = (v64 + 1);
          v65 = &v48[2 * v64];
          v65[4].isa = v60;
          v65[5].isa = v62;
          ++v57;
          --v47;
        }

        while (v47);
      }

      v28 = v290;
      v43 = v289;
      v2 = v288;
      v16 = v287;
    }

    v66 = Array.description.getter();
    v68 = v67;

    v69 = sub_1002FFA0C(v66, v68, &v293);

    *(v16 + 4) = v69;
    *(v16 + 6) = 2080;
    v10 = v276;
    CredentialInternal.identifier.getter();
    v70 = UUID.uuidString.getter();
    v72 = v71;
    (v264[1].isa)(v10, v284);
    v73 = sub_1002FFA0C(v70, v72, &v293);

    *(v16 + 14) = v73;
    _os_log_impl(&_mh_execute_header, v43, v2, "Syncing NFAppletInfo %s with credential %s", v16, 0x16u);
    swift_arrayDestroy();

    p_isa = &v265->isa;
  }

  else
  {
  }

  if (p_isa)
  {
    v5 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v5 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = v277;
  v290 = v28;
  if (!v5)
  {
    goto LABEL_51;
  }

  v74 = 0;
  v280 = v28 & 0xFFFFFFFFFFFFFF8;
  v281 = v28 & 0xC000000000000001;
  v279 = v264 + 7;
  v24 = &v264[6];
  v270 = v264 + 4;
  v272 = v264 + 1;
  v278 = v5;
  v269 = v264 + 6;
  while (!v281)
  {
    if (v74 >= *(v280 + 16))
    {
      __break(1u);
LABEL_225:
      __break(1u);
LABEL_226:
      __break(1u);
LABEL_227:
      __break(1u);
LABEL_228:
      __break(1u);
LABEL_229:
      __break(1u);
LABEL_230:
      __break(1u);
LABEL_231:
      __break(1u);
LABEL_232:
      __break(1u);
LABEL_233:
      __break(1u);
LABEL_234:
      __break(1u);
LABEL_235:
      __break(1u);
LABEL_236:
      __break(1u);
LABEL_237:
      __break(1u);
LABEL_238:
      __break(1u);
LABEL_239:
      v31 = _CocoaArrayWrapper.endIndex.getter();
      goto LABEL_3;
    }

    v77 = *(v28 + 8 * v74 + 32);
    v78 = (v74 + 1);
    if (__OFADD__(v74, 1))
    {
      goto LABEL_50;
    }

LABEL_44:
    v287 = v74;
    a1 = v286;
    *&v289 = v77;
    sub_10013070C(v286);
    CredentialInternal.identifier.getter();
    v79 = v284;
    (v279->isa)(v3, 0, 1, v284);
    v16 = v283;
    v80 = *(v282 + 48);
    sub_1000756F8(a1, v283);
    sub_1000756F8(v3, &v16[v80]);
    v81 = *v24;
    v82 = (*v24)(v16, 1, v79);
    v288 = v78;
    if (v82 == 1)
    {

      v2 = v3;
      v10 = &unk_10040B360;
      sub_100075768(v3, &unk_10050BE80, &unk_10040B360);
      sub_100075768(a1, &unk_10050BE80, &unk_10040B360);
      v75 = v81(&v16[v80], 1, v79) == 1;
      v76 = v16;
      if (!v75)
      {
        goto LABEL_153;
      }

      sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
      v28 = v290;
    }

    else
    {
      v83 = v289;
      a1 = v275;
      sub_1000756F8(v16, v275);
      if (v81(&v16[v80], 1, v79) == 1)
      {
        goto LABEL_152;
      }

      v84 = v276;
      (v270->isa)(v276, &v16[v80], v79);
      sub_1000C0A10(&qword_100502C18, &type metadata accessor for UUID);
      v85 = dispatch thunk of static Equatable.== infix(_:_:)();

      v86 = v272->isa;
      (v272->isa)(v84, v79);
      v87 = v277;
      v10 = &unk_10040B360;
      sub_100075768(v277, &unk_10050BE80, &unk_10040B360);
      sub_100075768(v286, &unk_10050BE80, &unk_10040B360);
      v2 = v87;
      (v86)(a1, v79);
      v24 = v269;
      sub_100075768(v16, &unk_10050BE80, &unk_10040B360);
      v28 = v290;
      if ((v85 & 1) == 0)
      {
        goto LABEL_154;
      }
    }

    v74 = v287 + 1;
    v5 = v278;
    v3 = v2;
    if (v288 == v278)
    {
      goto LABEL_51;
    }
  }

  v77 = specialized _ArrayBuffer._getElementSlowPath(_:)();
  v78 = (v74 + 1);
  if (!__OFADD__(v74, 1))
  {
    goto LABEL_44;
  }

LABEL_50:
  __break(1u);
LABEL_51:
  v293 = _swiftEmptyArrayStorage;
  a1 = v261;
  v88 = v261 & 0xFFFFFFFFFFFFFF8;
  if (v262)
  {
    v89 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v89 = *((v261 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v90 = 0;
  v2 = _swiftEmptyArrayStorage;
  v16 = v271;
  while (v89 != v90)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v91 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (v90 >= *(v88 + 16))
      {
        goto LABEL_219;
      }

      v91 = *(a1 + 8 * v90 + 32);
    }

    v92 = v91;
    v3 = (&v90->isa + 1);
    if (__OFADD__(v90, 1))
    {
      __break(1u);
LABEL_219:
      __break(1u);
LABEL_220:
      __break(1u);
      goto LABEL_221;
    }

    type metadata accessor for InstanceInfoInternal();
    v90 = (v90 + 1);
    if (sub_1000BF218(v92))
    {
      specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
      if (*((v293 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v293 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        v93 = *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10);
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v2 = v293;
      v90 = v3;
    }
  }

  v32 = (v2 >> 62);
  if (v2 >> 62)
  {
    goto LABEL_243;
  }

  v94 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v10 = v263;
    v262 = v94;
    if (v265)
    {
      v95 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v95 = *((v290 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v262 != v95)
    {

      v98 = Logger.logObject.getter();
      v99 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v98, v99))
      {
        v100 = swift_slowAlloc();
        *v100 = 0;
        _os_log_impl(&_mh_execute_header, v98, v99, "Some applets could not be transformed into InstanceInfo", v100, 2u);
        goto LABEL_156;
      }

LABEL_157:

      sub_10009591C();
      swift_allocError();
      *v179 = 6;
      swift_willThrow();
      return v180 & 1;
    }

    if (v32)
    {
      v97 = _CocoaArrayWrapper.endIndex.getter();
    }

    else
    {
      v97 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v24 = v267;
    v280 = v97;
    v281 = v2;
    if (!v97)
    {
      goto LABEL_130;
    }

    v101 = 0;
    v279 = (v2 & 0xC000000000000001);
    v256 = v2 & 0xFFFFFFFFFFFFFF8;
    v255 = v2 + 32;
    v277 = &v257[1];
    v278 = v257 + 2;
    *&v96 = 136315394;
    v261 = v96;
    v289 = xmmword_1004098F0;
LABEL_78:
    if (v279)
    {
      v5 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v102 = v273;
      v103 = __OFADD__(v101, 1);
      v28 = v101 + 1;
      if (v103)
      {
        goto LABEL_232;
      }
    }

    else
    {
      v102 = v273;
      if (v101 >= *(v256 + 16))
      {
        __break(1u);
LABEL_242:
        __break(1u);
LABEL_243:
        v94 = _CocoaArrayWrapper.endIndex.getter();
        continue;
      }

      v5 = *(v255 + 8 * v101);
      v103 = __OFADD__(v101, 1);
      v28 = v101 + 1;
      if (v103)
      {
        goto LABEL_232;
      }
    }

    break;
  }

  InstanceInfoInternal.lifeCycleState.getter();
  InstanceInfoInternal.LifeCycleState.init(from:)();
  (v278->isa)(v16, v102, v10);
  v3 = v5;
  v104 = Logger.logObject.getter();
  v105 = static os_log_type_t.debug.getter();

  v106 = os_log_type_enabled(v104, v105);
  v282 = v28;
  if (!v106)
  {

    v111 = v16;
    v112 = *v277;
    a1 = v277 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
    (*v277)(v111, v10);
    goto LABEL_128;
  }

  LODWORD(v269) = v105;
  v272 = v104;
  v107 = swift_slowAlloc();
  v265 = swift_slowAlloc();
  v299 = v265;
  v270 = v107;
  LODWORD(v107->isa) = v261;
  v108 = InstanceInfoInternal.instanceAID.getter();
  v24 = v108;
  v110 = v109;
  a1 = v109 >> 62;
  v288 = HIDWORD(v108);
  v275 = v3;
  if ((v109 >> 62) > 1)
  {
    if (a1 != 2)
    {
      v3 = _swiftEmptyArrayStorage;
      goto LABEL_127;
    }

    v114 = *(v108 + 16);
    v113 = *(v108 + 24);
    v2 = v113 - v114;
    if (__OFSUB__(v113, v114))
    {
      goto LABEL_245;
    }

    if (!v2)
    {
      goto LABEL_98;
    }
  }

  else if (a1)
  {
    v115 = v288 - v108;
    if (__OFSUB__(v288, v108))
    {
      goto LABEL_246;
    }

    v2 = v115;
    if (!v115)
    {
LABEL_98:
      v3 = _swiftEmptyArrayStorage;
      goto LABEL_126;
    }
  }

  else
  {
    v2 = BYTE6(v109);
    if (!BYTE6(v109))
    {
      goto LABEL_98;
    }
  }

  v292 = _swiftEmptyArrayStorage;
  v16 = (v2 & ~(v2 >> 63));
  v5 = &v292;
  sub_10019F3C0(0, v16, 0);
  v3 = v292;
  v287 = v24;
  if (a1 == 2)
  {
    v10 = *(v24 + 16);
LABEL_101:
    if ((v2 & 0x8000000000000000) == 0)
    {
      goto LABEL_105;
    }

    __break(1u);
LABEL_245:
    __break(1u);
LABEL_246:
    __break(1u);
LABEL_247:
    __break(1u);
LABEL_248:
    __break(1u);
LABEL_249:
    __break(1u);
LABEL_250:
    __break(1u);
LABEL_251:
    __break(1u);
LABEL_252:
    __break(1u);
LABEL_253:
    __break(1u);
LABEL_254:
    __break(1u);
LABEL_255:
    __break(1u);
LABEL_256:
    __break(1u);
LABEL_257:
    __break(1u);
LABEL_258:
    __break(1u);
  }

  if (a1 == 1)
  {
    v10 = v287;
    goto LABEL_101;
  }

  if (v2 < 0)
  {
    goto LABEL_248;
  }

  v10 = 0;
LABEL_105:
  v283 = v24 >> 32;
  v286 = BYTE6(v110);
  v290 = a1;
  while (2)
  {
    if (!v16)
    {
      goto LABEL_220;
    }

    if (a1 == 2)
    {
      if (v10 < *(v24 + 16))
      {
        goto LABEL_226;
      }

      if (v10 >= *(v24 + 24))
      {
        goto LABEL_228;
      }

      v119 = __DataStorage._bytes.getter();
      if (!v119)
      {
        goto LABEL_256;
      }

      v28 = v119;
      v5 = v110 & 0x3FFFFFFFFFFFFFFFLL;
      v120 = __DataStorage._offset.getter();
      v118 = v10 - v120;
      if (__OFSUB__(v10, v120))
      {
        goto LABEL_230;
      }

LABEL_119:
      v5 = *(v28 + v118);
    }

    else
    {
      if (a1 == 1)
      {
        if (v10 < v287 || v10 >= v283)
        {
          goto LABEL_227;
        }

        v116 = __DataStorage._bytes.getter();
        if (!v116)
        {
          goto LABEL_255;
        }

        v28 = v116;
        v5 = v110 & 0x3FFFFFFFFFFFFFFFLL;
        v117 = __DataStorage._offset.getter();
        v118 = v10 - v117;
        if (__OFSUB__(v10, v117))
        {
          goto LABEL_229;
        }

        goto LABEL_119;
      }

      if (v10 >= v286)
      {
        goto LABEL_225;
      }

      LOWORD(v293) = v24;
      BYTE2(v293) = BYTE2(v24);
      BYTE3(v293) = BYTE3(v24);
      BYTE4(v293) = v288;
      BYTE5(v293) = BYTE5(v24);
      BYTE6(v293) = BYTE6(v24);
      HIBYTE(v293) = HIBYTE(v24);
      v294 = v110;
      v295 = BYTE2(v110);
      v296 = BYTE3(v110);
      v297 = BYTE4(v110);
      v298 = BYTE5(v110);
      v5 = *(&v293 + v10);
    }

    sub_100068FC4(&qword_100502440, &unk_10040B240);
    v121 = swift_allocObject();
    *(v121 + 16) = v289;
    *(v121 + 56) = &type metadata for UInt8;
    *(v121 + 64) = &protocol witness table for UInt8;
    *(v121 + 32) = v5;
    v122 = String.init(format:_:)();
    v292 = v3;
    v125 = v3[2].isa;
    v124 = v3[3].isa;
    v28 = v125 + 1;
    if (v125 >= v124 >> 1)
    {
      v5 = &v292;
      v257 = v122;
      v127 = v123;
      sub_10019F3C0((v124 > 1), v125 + 1, 1);
      v123 = v127;
      v122 = v257;
      v3 = v292;
    }

    v3[2].isa = v28;
    v126 = &v3[2 * v125];
    v126[4].isa = v122;
    v126[5].isa = v123;
    ++v10;
    --v16;
    --v2;
    a1 = v290;
    if (v2)
    {
      continue;
    }

    break;
  }

  v10 = v263;
  v16 = v271;
LABEL_126:
  v2 = v281;
LABEL_127:
  v293 = v3;
  sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
  sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
  v128 = BidirectionalCollection<>.joined(separator:)();
  v130 = v129;
  sub_10006A178(v24, v110);

  v131 = sub_1002FFA0C(v128, v130, &v299);

  v132 = v270;
  *(&v270->isa + 4) = v131;
  WORD2(v132[1].isa) = 2080;
  v133 = InstanceInfoInternal.LifeCycleState.description.getter();
  v135 = v134;
  v136 = v16;
  v112 = *v277;
  a1 = v277 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  (*v277)(v136, v10);
  v137 = sub_1002FFA0C(v133, v135, &v299);

  *(&v132[1].isa + 6) = v137;
  v138 = v272;
  _os_log_impl(&_mh_execute_header, v272, v269, "AID %s lifecycle %s", v132, 0x16u);
  swift_arrayDestroy();

  v102 = v273;
  v3 = v275;
LABEL_128:
  v139 = v266;
  static InstanceInfoInternal.LifeCycleState.locked.getter();
  sub_1000C0A10(&qword_1005031D8, &type metadata accessor for InstanceInfoInternal.LifeCycleState);
  v32 = v102;
  v140 = dispatch thunk of SetAlgebra.isSuperset(of:)();
  (v112)(v139, v10);
  if (v140)
  {

    v222 = v285;
    v223 = Logger.logObject.getter();
    v224 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v223, v224))
    {
      v225 = swift_slowAlloc();
      v226 = swift_slowAlloc();
      v275 = v3;
      v227 = v226;
      v293 = v226;
      *v225 = 136315138;
      v228 = v276;
      CredentialInternal.identifier.getter();
      v229 = UUID.uuidString.getter();
      v290 = v222;
      v231 = v230;
      (v264[1].isa)(v228, v284);
      v232 = sub_1002FFA0C(v229, v231, &v293);

      *(v225 + 4) = v232;
      _os_log_impl(&_mh_execute_header, v223, v224, "Credential %s transitioned into locked state", v225, 0xCu);
      sub_1000752F4(v227);
      v3 = v275;
    }

    v233 = v259;
    v234 = v273;
    sub_100068FC4(&qword_100504060, &qword_10040B370);
    v235 = swift_allocObject();
    *(v235 + 16) = xmmword_100409E40;
    *(v235 + 32) = v3;
    v236 = v258;
    *v258 = v235;
    (*(v260 + 104))(v236, enum case for StateInternal.locked(_:), v233);
    v237 = v3;
    CredentialInternal.state.setter();

    (v112)(v234, v263);
    v180 = 0;
    return v180 & 1;
  }

  (v112)(v32, v10);

  v101 = v282;
  v24 = v267;
  v16 = v271;
  if (v282 != v280)
  {
    goto LABEL_78;
  }

LABEL_130:
  v141 = v285;
  CredentialInternal.state.getter();
  v142 = v260;
  v143 = v259;
  v144 = (*(v260 + 88))(v24, v259);
  v145 = v144;
  if (v144 == enum case for StateInternal.installed(_:))
  {
    (*(v142 + 96))(v24, v143);
    v146 = *v24;
    v147 = v141;
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.info.getter();

    v150 = os_log_type_enabled(v148, v149);
    v290 = v147;
    if (v150)
    {
      v151 = swift_slowAlloc();
      v152 = swift_slowAlloc();
      v293 = v152;
      *v151 = 136315138;
      v153 = v276;
      CredentialInternal.identifier.getter();
      v154 = UUID.uuidString.getter();
      v156 = v155;
      (v264[1].isa)(v153, v284);
      v157 = sub_1002FFA0C(v154, v156, &v293);

      *(v151 + 4) = v157;
      _os_log_impl(&_mh_execute_header, v148, v149, "Credential %s is already in installed state", v151, 0xCu);
      sub_1000752F4(v152);

      v2 = v281;
    }

    v158 = v280;
    v159 = sub_1000BF4C8(v146);
    v293 = v159;
    if (!v158)
    {
LABEL_210:

      v221 = v258;
      *v258 = v159;
      (*(v260 + 104))(v221, v145, v259);
      CredentialInternal.state.setter();
      v180 = 0;
      return v180 & 1;
    }

    if (v158 >= 1)
    {
      v160 = 0;
      v161 = v2 & 0xC000000000000001;
      v16 = &v299;
      while (1)
      {
        if (v161)
        {
          v162 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          v162 = *(v281 + 8 * v160 + 32);
        }

        v79 = v162;
        a1 = &v255;
        v299 = v162;
        __chkstk_darwin(v162);
        *(&v255 - 2) = &v299;

        v163 = v274;
        v164 = sub_10033322C(sub_1000C0508, &v255 - 4, v159);
        v83 = v164;
        if (v164 >> 62)
        {
          if (!_CocoaArrayWrapper.endIndex.getter())
          {
LABEL_145:
            v274 = v163;
            goto LABEL_146;
          }
        }

        else if (!*((v164 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_145;
        }

        v165 = sub_1000C0718(&v293, v83);
        if (v293 >> 62)
        {
          a1 = v163;
          v169 = v165;
          v166 = _CocoaArrayWrapper.endIndex.getter();
          v165 = v169;
          if (v166 < v169)
          {
LABEL_151:
            __break(1u);
LABEL_152:

            sub_100075768(v277, &unk_10050BE80, &unk_10040B360);
            sub_100075768(v286, &unk_10050BE80, &unk_10040B360);
            (v272->isa)(a1, v79);
            v76 = v16;
LABEL_153:
            sub_100075768(v76, &qword_1005031D0, &unk_100413B20);
LABEL_154:

            v170 = v285;
            v98 = Logger.logObject.getter();
            v171 = static os_log_type_t.error.getter();

            if (os_log_type_enabled(v98, v171))
            {
              v172 = swift_slowAlloc();
              v173 = swift_slowAlloc();
              v293 = v173;
              *v172 = 136315138;
              v174 = v276;
              CredentialInternal.identifier.getter();
              v175 = UUID.uuidString.getter();
              v177 = v176;
              (v272->isa)(v174, v284);
              v178 = sub_1002FFA0C(v175, v177, &v293);

              *(v172 + 4) = v178;
              _os_log_impl(&_mh_execute_header, v98, v171, "Some applets are not for credential %s", v172, 0xCu);
              sub_1000752F4(v173);

LABEL_156:
            }

            goto LABEL_157;
          }
        }

        else
        {
          v166 = *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v166 < v165)
          {
            goto LABEL_151;
          }
        }

        v274 = v163;
        sub_1001A2230(v165, v166);
LABEL_146:

        v167 = v79;
        specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
        if (*((v293 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v293 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v168 = *((v293 & 0xFFFFFFFFFFFFFF8) + 0x10);
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        ++v160;
        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v159 = v293;

        if (v158 == v160)
        {
          goto LABEL_210;
        }
      }
    }

    goto LABEL_252;
  }

  if (v144 != enum case for StateInternal.installationPending(_:))
  {

    v238 = v285;
    v239 = Logger.logObject.getter();
    v240 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v239, v240))
    {
      v241 = swift_slowAlloc();
      v242 = swift_slowAlloc();
      v293 = v242;
      *v241 = 136315138;
      v243 = v276;
      CredentialInternal.identifier.getter();
      v244 = UUID.uuidString.getter();
      v246 = v245;
      (v264[1].isa)(v243, v284);
      v247 = sub_1002FFA0C(v244, v246, &v293);

      *(v241 + 4) = v247;
      _os_log_impl(&_mh_execute_header, v239, v240, "Credential %s is in a bad state", v241, 0xCu);
      sub_1000752F4(v242);
    }

    (*(v260 + 8))(v267, v259);
    v180 = 0;
    return v180 & 1;
  }

  v181 = v258;
  *v258 = v2;
  (*(v260 + 104))(v181);

  v182 = v285;
  CredentialInternal.state.setter();
  v183 = v182;

  v184 = Logger.logObject.getter();
  v185 = static os_log_type_t.info.getter();

  LODWORD(v278) = v185;
  if (!os_log_type_enabled(v184, v185))
  {

    goto LABEL_222;
  }

  v277 = v184;
  v186 = swift_slowAlloc();
  v275 = swift_slowAlloc();
  v299 = v275;
  *v186 = 136315394;
  v187 = v276;
  CredentialInternal.identifier.getter();
  v188 = UUID.uuidString.getter();
  v190 = v189;
  (v264[1].isa)(v187, v284);
  v191 = sub_1002FFA0C(v188, v190, &v299);

  *(v186 + 4) = v191;
  v276 = v186;
  *(v186 + 12) = 2080;
  v192 = v262;
  if (!v262)
  {
    goto LABEL_221;
  }

  v292 = _swiftEmptyArrayStorage;
  sub_10019F3C0(0, v262 & ~(v262 >> 63), 0);
  if (v192 < 0)
  {
    goto LABEL_254;
  }

  v193 = 0;
  v194 = v292;
  v282 = v2 & 0xC000000000000001;
  v279 = (v2 + 32);
  v289 = xmmword_1004098F0;
  do
  {
    if (v282)
    {
      v195 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v195 = v279[v193].isa;
    }

    v196 = v195;
    v197 = InstanceInfoInternal.instanceAID.getter();
    v10 = v197;
    v199 = v198;
    v16 = (v198 >> 62);
    v288 = HIDWORD(v197);
    v283 = v196;
    v284 = v193;
    if ((v198 >> 62) > 1)
    {
      if (v16 != 2)
      {
        v24 = _swiftEmptyArrayStorage;
        goto LABEL_206;
      }

      v201 = *(v197 + 16);
      v200 = *(v197 + 24);
      v2 = v200 - v201;
      if (__OFSUB__(v200, v201))
      {
        goto LABEL_251;
      }

      if (!v2)
      {
        goto LABEL_178;
      }
    }

    else if (v16)
    {
      v202 = v288 - v197;
      if (__OFSUB__(v288, v197))
      {
        goto LABEL_250;
      }

      v2 = v202;
      if (!v202)
      {
LABEL_178:
        v24 = _swiftEmptyArrayStorage;
        goto LABEL_206;
      }
    }

    else
    {
      v2 = BYTE6(v198);
      if (!BYTE6(v198))
      {
        goto LABEL_178;
      }
    }

    v291 = _swiftEmptyArrayStorage;
    v28 = v2 & ~(v2 >> 63);
    v5 = &v291;
    sub_10019F3C0(0, v28, 0);
    v24 = v291;
    v287 = v10;
    v280 = v194;
    if (v16 == 2)
    {
      v3 = *(v10 + 16);
    }

    else
    {
      if (v16 != 1)
      {
        if (v2 < 0)
        {
          goto LABEL_253;
        }

        v3 = 0;
        goto LABEL_185;
      }

      v3 = v287;
    }

    if (v2 < 0)
    {
      goto LABEL_249;
    }

LABEL_185:
    v285 = v10 >> 32;
    v286 = BYTE6(v199);
    v290 = v16;
    do
    {
      if (!v28)
      {
        goto LABEL_231;
      }

      if (v16 == 2)
      {
        if (v3 < *(v10 + 16))
        {
          goto LABEL_233;
        }

        if (v3 >= *(v10 + 24))
        {
          goto LABEL_236;
        }

        v206 = __DataStorage._bytes.getter();
        if (!v206)
        {
          goto LABEL_258;
        }

        v16 = v206;
        v5 = v199 & 0x3FFFFFFFFFFFFFFFLL;
        v207 = __DataStorage._offset.getter();
        v205 = v3 - v207;
        if (__OFSUB__(v3, v207))
        {
          goto LABEL_238;
        }

        goto LABEL_199;
      }

      if (v16 == 1)
      {
        if (v3 < v287 || v3 >= v285)
        {
          goto LABEL_235;
        }

        v203 = __DataStorage._bytes.getter();
        if (!v203)
        {
          goto LABEL_257;
        }

        v16 = v203;
        v5 = v199 & 0x3FFFFFFFFFFFFFFFLL;
        v204 = __DataStorage._offset.getter();
        v205 = v3 - v204;
        if (__OFSUB__(v3, v204))
        {
          goto LABEL_237;
        }

LABEL_199:
        v5 = v205[v16];
        goto LABEL_202;
      }

      if (v3 >= v286)
      {
        goto LABEL_234;
      }

      LOWORD(v293) = v10;
      BYTE2(v293) = BYTE2(v10);
      BYTE3(v293) = BYTE3(v10);
      BYTE4(v293) = v288;
      BYTE5(v293) = BYTE5(v10);
      BYTE6(v293) = BYTE6(v10);
      HIBYTE(v293) = HIBYTE(v10);
      v294 = v199;
      v295 = BYTE2(v199);
      v296 = BYTE3(v199);
      v297 = BYTE4(v199);
      v298 = BYTE5(v199);
      v5 = *(&v293 + v3);
LABEL_202:
      sub_100068FC4(&qword_100502440, &unk_10040B240);
      v208 = swift_allocObject();
      *(v208 + 16) = v289;
      *(v208 + 56) = &type metadata for UInt8;
      *(v208 + 64) = &protocol witness table for UInt8;
      *(v208 + 32) = v5;
      v209 = String.init(format:_:)();
      v291 = v24;
      a1 = *(v24 + 16);
      v211 = *(v24 + 24);
      if (a1 >= v211 >> 1)
      {
        v5 = &v291;
        v273 = v209;
        v213 = v210;
        sub_10019F3C0((v211 > 1), a1 + 1, 1);
        v210 = v213;
        v209 = v273;
        v24 = v291;
      }

      *(v24 + 16) = a1 + 1;
      v212 = v24 + 16 * a1;
      *(v212 + 32) = v209;
      *(v212 + 40) = v210;
      v3 = (v3 + 1);
      --v28;
      --v2;
      v16 = v290;
    }

    while (v2);
    v194 = v280;
LABEL_206:
    v293 = v24;
    sub_100068FC4(&unk_100503E60, &qword_10040A3B0);
    sub_100075C60(&qword_100504780, &unk_100503E60, &qword_10040A3B0);
    v214 = BidirectionalCollection<>.joined(separator:)();
    v216 = v215;

    sub_10006A178(v10, v199);
    v217 = v283;

    v292 = v194;
    v219 = v194[2].isa;
    v218 = v194[3].isa;
    if (v219 >= v218 >> 1)
    {
      sub_10019F3C0((v218 > 1), v219 + 1, 1);
      v194 = v292;
    }

    v193 = v284 + 1;
    v194[2].isa = (v219 + 1);
    v220 = &v194[2 * v219];
    v220[4].isa = v214;
    v220[5].isa = v216;
  }

  while (v193 != v262);
LABEL_221:

  v248 = Array.description.getter();
  v250 = v249;

  v251 = sub_1002FFA0C(v248, v250, &v299);

  v252 = v276;
  *(v276 + 14) = v251;
  v253 = v277;
  _os_log_impl(&_mh_execute_header, v277, v278, "Credential %s transitioned to installed state with new instances %s", v252, 0x16u);
  swift_arrayDestroy();

LABEL_222:
  v180 = 1;
  return v180 & 1;
}

uint64_t sub_1000BF218(void *a1)
{
  v2 = [a1 applet];
  v3 = [v2 packageIdentifier];
  v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v6 = v5;

  v7 = sub_10013044C(v4, v6);
  if (v8 >> 60 == 15)
  {

    return 0;
  }

  v10 = v7;
  v11 = v8;
  v12 = [v2 moduleIdentifier];
  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = sub_10013044C(v13, v15);
  if (v17 >> 60 == 15)
  {

LABEL_9:
    sub_10006A2D0(v10, v11);
    return 0;
  }

  v18 = v16;
  v19 = v17;
  v20 = [a1 ssdAID];
  if (!v20)
  {

    sub_10006A2D0(v18, v19);
    goto LABEL_9;
  }

  v21 = v20;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v22 = [a1 obgk];
  if (v22)
  {
    v23 = v22;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
  }

  v24 = [v2 groupMembers];
  if (v24 || (v24 = [v2 groupHead]) != 0)
  {
  }

  v25 = [v2 identifierAsData];
  static Data._unconditionallyBridgeFromObjectiveC(_:)();

  v27 = bswap64([v2 rawGPState]);
  sub_1002B1854(&v27, &v28);
  v26 = dispatch thunk of InstanceInfoInternal.__allocating_init(instanceAID:packageAID:moduleAID:securityDomainAID:securityDomainKeyInfo:lifeCycleState:instanceType:)();

  return v26;
}

void *sub_1000BF4C8(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = _CocoaArrayWrapper.endIndex.getter();
  if (!v3)
  {
LABEL_7:

    return _swiftEmptyArrayStorage;
  }

  v4 = v3;
  v5 = sub_1000C01C4(v3, 0);
  sub_1000C02DC((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t sub_1000BF55C(void *a1)
{
  v3 = sub_100068FC4(&qword_1005031F0, &unk_10040C4C0);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v74 - v5;
  v7 = sub_100068FC4(&qword_1005031F8, &unk_10040A5E0);
  v8 = *(*(v7 - 8) + 64);
  __chkstk_darwin(v7 - 8);
  v87 = v74 - v9;
  v10 = type metadata accessor for StateInternal();
  v90 = *(v10 - 8);
  v91 = v10;
  v11 = *(v90 + 64);
  v12 = __chkstk_darwin(v10);
  v88 = v74 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v89 = v74 - v14;
  v15 = type metadata accessor for NSFastEnumerationIterator();
  v93 = *(v15 - 8);
  v16 = *(v93 + 64);
  v17 = __chkstk_darwin(v15);
  v19 = v74 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v17);
  v21 = v74 - v20;
  v22 = type metadata accessor for UUID();
  v23 = *(v22 - 8);
  v24 = *(v23 + 64);
  v25 = __chkstk_darwin(v22);
  v27 = v74 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __chkstk_darwin(v25);
  v86 = v74 - v29;
  v30 = __chkstk_darwin(v28);
  v92 = v74 - v31;
  __chkstk_darwin(v30);
  v33 = v74 - v32;
  v34 = [a1 friendlyName];
  if (!v34)
  {

    return 0;
  }

  v83 = v27;
  v82 = v6;
  v35 = v34;
  v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v37 = v36;

  v38 = [a1 uuid];
  if (!v38)
  {
    goto LABEL_20;
  }

  v39 = v38;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v40 = [a1 ownerApplications];
  if (!v40)
  {
    (*(v23 + 8))(v33, v22);
LABEL_20:

LABEL_21:

    return 0;
  }

  v80 = v40;
  v79 = [a1 userApplications];
  if (!v79)
  {
    (*(v23 + 8))(v33, v22);

    return 0;
  }

  v41 = [a1 productConfigUUID];
  if (!v41)
  {
    (*(v23 + 8))(v33, v22);

    goto LABEL_21;
  }

  v76 = v23;
  v77 = v22;
  v74[1] = v1;
  v78 = a1;
  v42 = v41;
  static UUID._unconditionallyBridgeFromObjectiveC(_:)();

  v101 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  sub_1000C0A10(&qword_100503200, &type metadata accessor for NSFastEnumerationIterator);
  dispatch thunk of IteratorProtocol.next()();
  v94 = v33;
  v95 = v37;
  v85 = _swiftEmptyArrayStorage;
  if (v100)
  {
    v84 = _swiftEmptyArrayStorage;
    do
    {
      sub_100075D50(&v99, v98);
      sub_1000754F0(v98, v97);
      type metadata accessor for SecureElementApplicationEntity();
      if (swift_dynamicCast())
      {
        v43 = v96;
        v44 = [v96 identifier];
        if (v44)
        {
          v45 = v44;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v46 = [v43 bundleIdentifier];
          if (v46)
          {
            v47 = v46;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          type metadata accessor for ApplicationInfoInternal();
          [v43 gdprVersionShown];
          dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();

          sub_1000752F4(v98);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v48 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v84 = v101;
          v33 = v94;
        }

        else
        {
          sub_1000752F4(v98);
        }
      }

      else
      {
        sub_1000752F4(v98);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v100);
  }

  else
  {
    v84 = _swiftEmptyArrayStorage;
  }

  v50 = *(v93 + 8);
  v93 += 8;
  v75 = v50;
  v50(v21, v15);
  v101 = _swiftEmptyArrayStorage;
  NSSet.makeIterator()();
  dispatch thunk of IteratorProtocol.next()();
  if (v100)
  {
    v85 = _swiftEmptyArrayStorage;
    v51 = v90;
    do
    {
      sub_100075D50(&v99, v98);
      sub_1000754F0(v98, v97);
      type metadata accessor for SecureElementApplicationEntity();
      if (swift_dynamicCast())
      {
        v52 = v96;
        v53 = [v96 identifier];
        if (v53)
        {
          v54 = v53;
          static String._unconditionallyBridgeFromObjectiveC(_:)();

          v55 = [v52 bundleIdentifier];
          if (v55)
          {
            v56 = v55;
            static String._unconditionallyBridgeFromObjectiveC(_:)();
          }

          type metadata accessor for ApplicationInfoInternal();
          [v52 gdprVersionShown];
          dispatch thunk of ApplicationInfoInternal.__allocating_init(applicationId:bundleId:gdprShownVersion:)();

          sub_1000752F4(v98);
          specialized Array._makeUniqueAndReserveCapacityIfNotUnique()();
          if (*((v101 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v101 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            v57 = *((v101 & 0xFFFFFFFFFFFFFF8) + 0x10);
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v85 = v101;
          v33 = v94;
        }

        else
        {
          sub_1000752F4(v98);
        }
      }

      else
      {
        sub_1000752F4(v98);
      }

      dispatch thunk of IteratorProtocol.next()();
    }

    while (v100);
  }

  else
  {
    v51 = v90;
  }

  v75(v19, v15);
  v58 = v78;
  [v78 state];
  v59 = v87;
  StateInternal.init(rawDiscriminant:instanceInfos:)();
  v60 = v91;
  if ((*(v51 + 48))(v59, 1, v91) == 1)
  {

    v61 = *(v76 + 8);
    v62 = v77;
    v61(v92, v77);
    v61(v33, v62);
    sub_100075768(v59, &qword_1005031F8, &unk_10040A5E0);
    return 0;
  }

  v63 = v89;
  (*(v51 + 32))(v89, v59, v60);
  v64 = v76;
  v65 = *(v76 + 16);
  v66 = v77;
  v65(v86, v33, v77);
  (*(v51 + 16))(v88, v63, v60);
  v65(v83, v92, v66);
  v67 = [v58 lastUsedDate];
  if (v67)
  {
    v68 = v82;
    v69 = v67;
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v70 = 0;
  }

  else
  {
    v70 = 1;
    v68 = v82;
  }

  v71 = type metadata accessor for Date();
  (*(*(v71 - 8) + 56))(v68, v70, 1, v71);
  v72 = dispatch thunk of CredentialInternal.__allocating_init(identifier:friendlyName:ownerApplications:userApplications:state:configUUID:accessLevel:lastUsedDate:)();

  (*(v51 + 8))(v89, v60);
  v73 = *(v64 + 8);
  v73(v92, v66);
  v73(v33, v66);
  return v72;
}

void *sub_1000C0148(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100068FC4(&qword_100502448, &qword_100409998);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = (v5 - 32 + ((v5 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  return result;
}

void *sub_1000C01C4(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100068FC4(&qword_100504060, &qword_10040B370);
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = (2 * (v9 >> 3)) | 1;
  return result;
}

void *sub_1000C024C(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return _swiftEmptyArrayStorage;
  }

  sub_100068FC4(&qword_100503208, "|e\a");
  v4 = swift_allocObject();
  v5 = j__malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x6666666666666667) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

uint64_t sub_1000C02DC(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_100075C60(&qword_1005031E8, &qword_1005031E0, &qword_10040A5D8);
          for (i = 0; i != v6; ++i)
          {
            sub_100068FC4(&qword_1005031E0, &qword_10040A5D8);
            v9 = sub_1000C0480(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for InstanceInfoInternal();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void (*sub_1000C0480(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
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
    return sub_1000C0500;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000C0508(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *v2;
  type metadata accessor for InstanceInfoInternal();
  return static NSObject.== infix(_:_:)() & 1;
}

unint64_t sub_1000C0560(unint64_t a1, unint64_t a2)
{
  if (a1 >> 62)
  {
LABEL_24:
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v3 = 0;
  v4 = a2 >> 62;
  while (v15 != v3)
  {
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (!v4)
      {
        goto LABEL_10;
      }
    }

    else
    {
      if (v3 >= *(v14 + 16))
      {
        __break(1u);
LABEL_22:
        __break(1u);
LABEL_23:
        __break(1u);
        goto LABEL_24;
      }

      v6 = *(a1 + 8 * v3 + 32);
      if (!v4)
      {
LABEL_10:
        if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_4;
        }

        goto LABEL_11;
      }
    }

    if (!_CocoaArrayWrapper.endIndex.getter())
    {
LABEL_4:

      goto LABEL_5;
    }

LABEL_11:
    if ((a2 & 0xC000000000000001) != 0)
    {
      v7 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      v7 = *(a2 + 32);
    }

    v8 = v7;
    type metadata accessor for InstanceInfoInternal();
    v9 = v6;
    v10 = v8;
    v11 = static NSObject.== infix(_:_:)();

    if (v11)
    {
      return v3;
    }

LABEL_5:
    if (__OFADD__(v3++, 1))
    {
      goto LABEL_22;
    }
  }

  return 0;
}

unint64_t sub_1000C0718(unint64_t *a1, unint64_t a2)
{
  v5 = *a1;
  result = sub_1000C0560(*a1, a2);
  v8 = result;
  if (v2)
  {
    return v8;
  }

  if (v7)
  {
    if (v5 >> 62)
    {
      return _CocoaArrayWrapper.endIndex.getter();
    }

    return *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v9 = result + 1;
  if (__OFADD__(result, 1))
  {
    __break(1u);
    return result;
  }

  while (1)
  {
    if (v5 >> 62)
    {
      if (v9 == _CocoaArrayWrapper.endIndex.getter())
      {
        return v8;
      }
    }

    else if (v9 == *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      return v8;
    }

    if ((v5 & 0xC000000000000001) != 0)
    {
      v13 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      goto LABEL_16;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v9 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_50;
    }

    v13 = *(v5 + 8 * v9 + 32);
LABEL_16:
    v14 = v13;
    if (a2 >> 62)
    {
      if (!_CocoaArrayWrapper.endIndex.getter())
      {
LABEL_28:

        if (v8 != v9)
        {
          goto LABEL_29;
        }

        goto LABEL_8;
      }
    }

    else if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_28;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v15 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v15 = *(a2 + 32);
    }

    v16 = v15;
    type metadata accessor for InstanceInfoInternal();
    v17 = v14;
    v18 = v16;
    v19 = static NSObject.== infix(_:_:)();

    if ((v19 & 1) == 0)
    {
      if (v8 != v9)
      {
LABEL_29:
        if ((v5 & 0xC000000000000001) != 0)
        {
          v20 = specialized _ArrayBuffer._getElementSlowPath(_:)();
          v21 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if ((v8 & 0x8000000000000000) != 0)
          {
            goto LABEL_55;
          }

          v22 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v8 >= v22)
          {
            goto LABEL_56;
          }

          if (v9 >= v22)
          {
            goto LABEL_57;
          }

          v23 = *(v5 + 32 + 8 * v9);
          v20 = *(v5 + 32 + 8 * v8);
          v21 = v23;
        }

        v24 = v21;
        if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v5 & 0x8000000000000000) != 0 || (v5 & 0x4000000000000000) != 0)
        {
          v5 = sub_1001A291C(v5);
          v25 = (v5 >> 62) & 1;
        }

        else
        {
          LODWORD(v25) = 0;
        }

        v26 = v5 & 0xFFFFFFFFFFFFFF8;
        v27 = *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
        *((v5 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v24;

        if ((v5 & 0x8000000000000000) != 0 || v25)
        {
          v5 = sub_1001A291C(v5);
          v26 = v5 & 0xFFFFFFFFFFFFFF8;
          if ((v9 & 0x8000000000000000) != 0)
          {
LABEL_47:
            __break(1u);
            return v8;
          }
        }

        else if ((v9 & 0x8000000000000000) != 0)
        {
          goto LABEL_47;
        }

        if (v9 >= *(v26 + 16))
        {
          goto LABEL_54;
        }

        v10 = v26 + 8 * v9;
        v11 = *(v10 + 32);
        *(v10 + 32) = v20;

        *a1 = v5;
      }

LABEL_8:
      v12 = __OFADD__(v8++, 1);
      if (v12)
      {
        goto LABEL_52;
      }
    }

    v12 = __OFADD__(v9++, 1);
    if (v12)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
LABEL_57:
  __break(1u);
  return _CocoaArrayWrapper.endIndex.getter();
}

uint64_t sub_1000C0A10(unint64_t *a1, void (*a2)(uint64_t))
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

void sub_1000C0AC8(unsigned int a1, unsigned int a2)
{
  if (a1 <= 0xA && a2)
  {
    v4 = log10f(a2);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
    }

    else if (v4 > -1.0)
    {
      if (v4 < 4295000000.0)
      {
        v5 = v4 + 1;
        if (v4 != -1)
        {
          v6 = v5 >= a1;
          v7 = v5 - a1;
          if (v7 == 0 || !v6)
          {
            return;
          }

          v8 = __exp10(v7);
          if (v8 != INFINITY)
          {
            if (v8 > -1.0)
            {
              if (v8 < 4294967300.0)
              {
                if (v8)
                {
                  if (a2 >= a2 % v8)
                  {
                    return;
                  }

LABEL_23:
                  __break(1u);
                  return;
                }

LABEL_22:
                __break(1u);
                goto LABEL_23;
              }

LABEL_21:
              __break(1u);
              goto LABEL_22;
            }

LABEL_20:
            __break(1u);
            goto LABEL_21;
          }

LABEL_19:
          __break(1u);
          goto LABEL_20;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }

LABEL_17:
      __break(1u);
      goto LABEL_18;
    }

    __break(1u);
    goto LABEL_17;
  }
}

uint64_t sub_1000C0BCC()
{
  sub_100068FC4(&qword_100503238, &unk_10040A660);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1004098F0;
  v1 = sub_1000C0C38();
  *(v0 + 32) = &type metadata for SEStorageMockPassSchemaV1;
  *(v0 + 40) = v1;
  return v0;
}

unint64_t sub_1000C0C38()
{
  result = qword_100503240[0];
  if (!qword_100503240[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_100503240);
  }

  return result;
}

Swift::Int UUID.UTF8DataStringCase.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1 & 1);
  return Hasher._finalize()();
}

Swift::Int sub_1000C0D78()
{
  Hasher.init(_seed:)();
  UUID.UTF8DataStringCase.hash(into:)(v2, *v0);
  return Hasher._finalize()();
}

uint64_t sub_1000C0DB8()
{
  v1 = *(v0 + 24);

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0E9C()
{
  v1 = *(v0 + 16);
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

uint64_t sub_1000C0EF4()
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1000C0F30(uint64_t *a1, int a2)
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

uint64_t sub_1000C0F78(uint64_t result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for LyonTimeExtension.MessageDirection(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

  if (a2 + 1 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for LyonTimeExtension.MessageDirection(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

Swift::Int sub_1000C1154()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(*(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int sub_1000C11E0()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  sub_1000C0E70();
  return Hasher._finalize()();
}