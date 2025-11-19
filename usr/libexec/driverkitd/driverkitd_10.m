uint64_t sub_1000D08A4(int *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7)
{
  v74 = a7;
  v8 = a1;
  v9 = a2 - a1;
  if (a1)
  {
    v10 = v9 < 32;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    sub_10001449C();
    v12 = swift_allocError();
    *v13 = 0xD000000000000033;
    *(v13 + 8) = 0x800000010010BA70;
    v14 = v73;
    v15 = v72;
    v16 = v71;
    *(v13 + 16) = v70;
    *(v13 + 32) = v16;
    *(v13 + 48) = v15;
    *(v13 + 64) = v14;
    *(v13 + 72) = 24;
    swift_willThrow();
    v69 = v12;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (!swift_dynamicCast())
    {
    }

    v63 = v67;
    v64[0] = v68[0];
    *(v64 + 9) = *(v68 + 9);
    v61 = v65;
    v62 = v66;
    v17 = sub_1000319F4(0, 1, 1, _swiftEmptyArrayStorage);
    v19 = *(v17 + 2);
    v18 = *(v17 + 3);
    if (v19 >= v18 >> 1)
    {
      v17 = sub_1000319F4((v18 > 1), v19 + 1, 1, v17);
    }

    *(v17 + 2) = v19 + 1;
    v20 = &v17[80 * v19];
    *(v20 + 3) = v62;
    *(v20 + 4) = v63;
    *(v20 + 5) = v64[0];
    *(v20 + 89) = *(v64 + 9);
    *(v20 + 2) = v61;

    if (!v8 || v9 < 28)
    {
      v26 = swift_allocError();
      v8 = 0;
      *v37 = 0xD000000000000033;
      *(v37 + 8) = 0x800000010010BAB0;
      v38 = *&v68[0];
      v40 = v66;
      v39 = v67;
      *(v37 + 16) = v65;
      *(v37 + 32) = v40;
      *(v37 + 48) = v39;
      *(v37 + 64) = v38;
      *(v37 + 72) = 24;
      v27 = 255;
      goto LABEL_32;
    }

    v21 = 0;
    v22 = 255;
  }

  else
  {
    v23 = *a1;
    v17 = _swiftEmptyArrayStorage;
    if (*a1 != -805638658 && v23 != -17958193)
    {
      v21 = 0;
      v11 = 1;
      v22 = 255;
      goto LABEL_23;
    }

    v22 = 0;
    v21 = a1;
  }

  v23 = *v8;
LABEL_23:
  if (v23 != -822415874 && v23 != -17958194)
  {
    v8 = v21;
    if (v22 != 255)
    {
LABEL_38:
      v25 = 0;
      goto LABEL_39;
    }

    goto LABEL_29;
  }

  if (v11)
  {
    v25 = 1;
LABEL_39:

    sub_1000D42E4(v8, v25, a3, a4, a5, a6 & 1, v74);
  }

  sub_10001449C();
  v26 = swift_allocError();
  v27 = 0;
  *v28 = 0xD00000000000002BLL;
  *(v28 + 8) = 0x800000010010BB40;
  v29 = *&v68[0];
  v31 = v66;
  v30 = v67;
  *(v28 + 16) = v65;
  *(v28 + 32) = v31;
  *(v28 + 48) = v30;
  *(v28 + 64) = v29;
  *(v28 + 72) = 24;
  v8 = v21;
LABEL_32:
  swift_willThrow();
  *&v70 = v26;
  swift_errorRetain();
  sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
  if (!swift_dynamicCast())
  {
  }

  v63 = v67;
  v64[0] = v68[0];
  *(v64 + 9) = *(v68 + 9);
  v61 = v65;
  v62 = v66;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v17 = sub_1000319F4(0, *(v17 + 2) + 1, 1, v17);
  }

  v42 = *(v17 + 2);
  v41 = *(v17 + 3);
  if (v42 >= v41 >> 1)
  {
    v17 = sub_1000319F4((v41 > 1), v42 + 1, 1, v17);
  }

  *(v17 + 2) = v42 + 1;
  v43 = &v17[80 * v42];
  *(v43 + 2) = v61;
  v44 = v62;
  v45 = v63;
  v46 = v64[0];
  *(v43 + 89) = *(v64 + 9);
  *(v43 + 4) = v45;
  *(v43 + 5) = v46;
  *(v43 + 3) = v44;

  if (v27 != 255)
  {
    goto LABEL_38;
  }

LABEL_29:
  v32 = *(v17 + 2);
  if (v32 <= 1)
  {
    if (v32 == 1)
    {
      v47 = *(v17 + 3);
      v48 = *(v17 + 5);
      v67 = *(v17 + 4);
      v68[0] = v48;
      *(v68 + 9) = *(v17 + 89);
      v65 = *(v17 + 2);
      v66 = v47;
      sub_1000419A4(&v65, &v61);

      sub_10001449C();
      swift_allocError();
      *v49 = v65;
      v51 = v67;
      v50 = v68[0];
      v52 = v66;
      *(v49 + 57) = *(v68 + 9);
      v49[2] = v51;
      v49[3] = v50;
      v49[1] = v52;
    }

    else
    {

      sub_10001449C();
      swift_allocError();
      *v53 = 0xD000000000000040;
      *(v53 + 8) = 0x800000010010BAF0;
      v54 = *&v68[0];
      v56 = v66;
      v55 = v67;
      *(v53 + 16) = v65;
      *(v53 + 32) = v56;
      *(v53 + 48) = v55;
      *(v53 + 64) = v54;
      *(v53 + 72) = 50;
    }
  }

  else
  {
    sub_10001449C();
    swift_allocError();
    *v33 = v17;
    v34 = v67;
    v35 = v68[0];
    v36 = v66;
    *(v33 + 8) = v65;
    *(v33 + 56) = v35;
    *(v33 + 40) = v34;
    *(v33 + 24) = v36;
    *(v33 + 72) = 0;
  }

  swift_willThrow();
}

uint64_t sub_1000D0E84@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(int *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v4 = a3;
  v5 = a1;
  v68 = a4;
  v6 = a2 - a1;
  if (a1)
  {
    v7 = v6 < 32;
  }

  else
  {
    v7 = 1;
  }

  v8 = v7;
  if (v8 == 1)
  {
    sub_10001449C();
    v9 = swift_allocError();
    *v10 = 0xD000000000000033;
    *(v10 + 8) = 0x800000010010BA70;
    v11 = v67;
    v12 = v66;
    v13 = v65;
    *(v10 + 16) = v64;
    *(v10 + 32) = v13;
    *(v10 + 48) = v12;
    *(v10 + 64) = v11;
    *(v10 + 72) = 24;
    swift_willThrow();
    v63 = v9;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if ((swift_dynamicCast() & 1) == 0)
    {
    }

    v57 = v61;
    v58[0] = v62[0];
    *(v58 + 9) = *(v62 + 9);
    v55 = v59;
    v56 = v60;
    v14 = sub_1000319F4(0, 1, 1, _swiftEmptyArrayStorage);
    v16 = *(v14 + 2);
    v15 = *(v14 + 3);
    if (v16 >= v15 >> 1)
    {
      v14 = sub_1000319F4((v15 > 1), v16 + 1, 1, v14);
    }

    *(v14 + 2) = v16 + 1;
    v17 = &v14[80 * v16];
    *(v17 + 3) = v56;
    *(v17 + 4) = v57;
    *(v17 + 5) = v58[0];
    *(v17 + 89) = *(v58 + 9);
    *(v17 + 2) = v55;

    if (!v5 || v6 < 28)
    {
      v23 = swift_allocError();
      v18 = 0;
      *v28 = 0xD000000000000033;
      *(v28 + 8) = 0x800000010010BAB0;
      v29 = *&v62[0];
      v31 = v60;
      v30 = v61;
      *(v28 + 16) = v59;
      *(v28 + 32) = v31;
      *(v28 + 48) = v30;
      *(v28 + 64) = v29;
      *(v28 + 72) = 24;
      v19 = 255;
      v4 = a3;
LABEL_27:
      swift_willThrow();
      *&v64 = v23;
      swift_errorRetain();
      sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
      if (swift_dynamicCast())
      {

        v57 = v61;
        v58[0] = v62[0];
        *(v58 + 9) = *(v62 + 9);
        v55 = v59;
        v56 = v60;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v14 = sub_1000319F4(0, *(v14 + 2) + 1, 1, v14);
        }

        v33 = *(v14 + 2);
        v32 = *(v14 + 3);
        if (v33 >= v32 >> 1)
        {
          v14 = sub_1000319F4((v32 > 1), v33 + 1, 1, v14);
        }

        *(v14 + 2) = v33 + 1;
        v34 = &v14[80 * v33];
        *(v34 + 2) = v55;
        v35 = v56;
        v36 = v57;
        v37 = v58[0];
        *(v34 + 89) = *(v58 + 9);
        *(v34 + 4) = v36;
        *(v34 + 5) = v37;
        *(v34 + 3) = v35;

        goto LABEL_33;
      }
    }

    v18 = 0;
    v19 = 255;
    v4 = a3;
    v20 = *v5;
  }

  else
  {
    v20 = *a1;
    v14 = _swiftEmptyArrayStorage;
    if (*a1 == -805638658 || v20 == -17958193)
    {
      v19 = 0;
      v18 = a1;
      v20 = *a1;
    }

    else
    {
      v18 = 0;
      LOBYTE(v8) = 1;
      v19 = 255;
    }
  }

  if (v20 == -17958194 || v20 == -822415874)
  {
    if (v8)
    {
      v22 = 1;
LABEL_37:

      return v4(v5, v22);
    }

    sub_10001449C();
    v23 = swift_allocError();
    v19 = 0;
    *v24 = 0xD00000000000002BLL;
    *(v24 + 8) = 0x800000010010BB40;
    v25 = *&v62[0];
    v27 = v60;
    v26 = v61;
    *(v24 + 16) = v59;
    *(v24 + 32) = v27;
    *(v24 + 48) = v26;
    *(v24 + 64) = v25;
    *(v24 + 72) = 24;
    goto LABEL_27;
  }

LABEL_33:
  if (v19 != 255)
  {
    v22 = 0;
    v5 = v18;
    goto LABEL_37;
  }

  v38 = *(v14 + 2);
  if (v38 <= 1)
  {
    if (v38 == 1)
    {
      v44 = *(v14 + 3);
      v45 = *(v14 + 5);
      v61 = *(v14 + 4);
      v62[0] = v45;
      *(v62 + 9) = *(v14 + 89);
      v59 = *(v14 + 2);
      v60 = v44;
      sub_1000419A4(&v59, &v55);

      sub_10001449C();
      swift_allocError();
      *v46 = v59;
      v48 = v61;
      v47 = v62[0];
      v49 = v60;
      *(v46 + 57) = *(v62 + 9);
      v46[2] = v48;
      v46[3] = v47;
      v46[1] = v49;
    }

    else
    {

      sub_10001449C();
      swift_allocError();
      *v50 = 0xD000000000000040;
      *(v50 + 8) = 0x800000010010BAF0;
      v51 = *&v62[0];
      v53 = v60;
      v52 = v61;
      *(v50 + 16) = v59;
      *(v50 + 32) = v53;
      *(v50 + 48) = v52;
      *(v50 + 64) = v51;
      *(v50 + 72) = 50;
    }
  }

  else
  {
    sub_10001449C();
    swift_allocError();
    *v39 = v14;
    v40 = v61;
    v41 = v62[0];
    v42 = v60;
    *(v39 + 8) = v59;
    *(v39 + 56) = v41;
    *(v39 + 40) = v40;
    *(v39 + 24) = v42;
    *(v39 + 72) = 0;
  }

  return swift_willThrow();
}

uint64_t sub_1000D1458(int *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = a5;
  v11 = a1;
  v12 = a2 - a1;
  if (a1)
  {
    v13 = v12 < 32;
  }

  else
  {
    v13 = 1;
  }

  v14 = v13;
  v85 = a8;
  if (v13)
  {
    v69 = v14;
    commands = a5;
    sub_10001449C();
    v15 = swift_allocError();
    *v16 = 0xD000000000000033;
    *(v16 + 8) = 0x800000010010BA70;
    v17 = v84;
    v18 = v83;
    v19 = v82;
    *(v16 + 16) = v81;
    *(v16 + 32) = v19;
    *(v16 + 48) = v18;
    *(v16 + 64) = v17;
    *(v16 + 72) = 24;
    swift_willThrow();
    v80 = v15;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (!swift_dynamicCast())
    {

LABEL_48:

      v40 = a7;
      goto LABEL_49;
    }

    v74 = v78;
    v75[0] = v79[0];
    *(v75 + 9) = *(v79 + 9);
    v72 = v76;
    v73 = v77;
    v20 = sub_1000319F4(0, 1, 1, _swiftEmptyArrayStorage);
    v22 = *(v20 + 2);
    v21 = *(v20 + 3);
    v9 = commands;
    if (v22 >= v21 >> 1)
    {
      v20 = sub_1000319F4((v21 > 1), v22 + 1, 1, v20);
    }

    *(v20 + 2) = v22 + 1;
    v23 = &v20[80 * v22];
    *(v23 + 3) = v73;
    *(v23 + 4) = v74;
    *(v23 + 5) = v75[0];
    *(v23 + 89) = *(v75 + 9);
    *(v23 + 2) = v72;

    if (!v11 || v12 < 28)
    {
      v29 = swift_allocError();
      v11 = 0;
      *v41 = 0xD000000000000033;
      *(v41 + 8) = 0x800000010010BAB0;
      v42 = *&v79[0];
      v44 = v77;
      v43 = v78;
      *(v41 + 16) = v76;
      *(v41 + 32) = v44;
      *(v41 + 48) = v43;
      *(v41 + 64) = v42;
      *(v41 + 72) = 24;
      v30 = 255;
      goto LABEL_32;
    }

    v24 = 0;
    v25 = 255;
    v14 = v69;
    goto LABEL_21;
  }

  v26 = *a1;
  v20 = _swiftEmptyArrayStorage;
  if (*a1 == -805638658 || v26 == -17958193)
  {
    v25 = 0;
    v24 = a1;
LABEL_21:
    v26 = *v11;
    goto LABEL_23;
  }

  v24 = 0;
  v14 = 1;
  v25 = 255;
LABEL_23:
  if (v26 == -822415874 || v26 == -17958194)
  {
    if (v14)
    {
      v28 = 1;
      goto LABEL_39;
    }

    sub_10001449C();
    v29 = swift_allocError();
    v30 = 0;
    *v31 = 0xD00000000000002BLL;
    *(v31 + 8) = 0x800000010010BB40;
    v32 = *&v79[0];
    v34 = v77;
    v33 = v78;
    *(v31 + 16) = v76;
    *(v31 + 32) = v34;
    *(v31 + 48) = v33;
    *(v31 + 64) = v32;
    *(v31 + 72) = 24;
    v11 = v24;
LABEL_32:
    swift_willThrow();
    *&v81 = v29;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (!swift_dynamicCast())
    {
LABEL_47:

      goto LABEL_48;
    }

    v74 = v78;
    v75[0] = v79[0];
    *(v75 + 9) = *(v79 + 9);
    v72 = v76;
    v73 = v77;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_1000319F4(0, *(v20 + 2) + 1, 1, v20);
    }

    v46 = *(v20 + 2);
    v45 = *(v20 + 3);
    if (v46 >= v45 >> 1)
    {
      v20 = sub_1000319F4((v45 > 1), v46 + 1, 1, v20);
    }

    *(v20 + 2) = v46 + 1;
    v47 = &v20[80 * v46];
    *(v47 + 2) = v72;
    v48 = v73;
    v49 = v74;
    v50 = v75[0];
    *(v47 + 89) = *(v75 + 9);
    *(v47 + 4) = v49;
    *(v47 + 5) = v50;
    *(v47 + 3) = v48;

    if (v30 != 255)
    {
      goto LABEL_38;
    }

LABEL_29:
    v35 = *(v20 + 2);
    commands = a7;
    if (v35 <= 1)
    {
      v58 = v85;
      if (v35 == 1)
      {
        v59 = *(v20 + 3);
        v60 = *(v20 + 5);
        v78 = *(v20 + 4);
        v79[0] = v60;
        *(v79 + 9) = *(v20 + 89);
        v76 = *(v20 + 2);
        v77 = v59;
        sub_1000419A4(&v76, &v72);

        sub_10001449C();
        swift_allocError();
        *v61 = v76;
        v63 = v78;
        v62 = v79[0];
        v64 = v77;
        *(v61 + 57) = *(v79 + 9);
        v61[2] = v63;
        v61[3] = v62;
        v61[1] = v64;
      }

      else
      {

        sub_10001449C();
        swift_allocError();
        *v65 = 0xD000000000000040;
        *(v65 + 8) = 0x800000010010BAF0;
        v66 = *&v79[0];
        v68 = v77;
        v67 = v78;
        *(v65 + 16) = v76;
        *(v65 + 32) = v68;
        *(v65 + 48) = v67;
        *(v65 + 64) = v66;
        *(v65 + 72) = 50;
      }

      swift_willThrow();

      v40 = a7;
      v57 = v58;
      goto LABEL_50;
    }

    sub_10001449C();
    swift_allocError();
    *v36 = v20;
    v37 = v78;
    v38 = v79[0];
    v39 = v77;
    *(v36 + 8) = v76;
    *(v36 + 56) = v38;
    *(v36 + 40) = v37;
    *(v36 + 24) = v39;
    *(v36 + 72) = 0;
    swift_willThrow();

    v40 = a7;
LABEL_49:
    v57 = v85;
LABEL_50:
    sub_1000128D8(v40, v57);
    return commands;
  }

  v11 = v24;
  if (v25 == 255)
  {
    goto LABEL_29;
  }

LABEL_38:
  v28 = 0;
LABEL_39:

  v51 = *a3;
  v52 = a3[1];
  v53 = a3[2];
  commands = a3[3];
  v54 = a3[4];
  *a3 = a4;
  a3[1] = v9;
  a3[2] = v11;
  a3[3] = v28;
  a3[4] = 0;

  result = sub_1000D6A54(v51);
  if (!*a3)
  {
    goto LABEL_59;
  }

  v56 = v85 >> 62;
  if ((v85 >> 62) > 1)
  {
    if (v56 != 2 || !__OFSUB__(*(a7 + 24), *(a7 + 16)))
    {
      goto LABEL_52;
    }

    __break(1u);
    goto LABEL_47;
  }

  if (!v56 || !__OFSUB__(HIDWORD(a7), a7))
  {
LABEL_52:
    commands = macho_scan_load_commands();

    sub_1000128D8(a7, v85);
    return commands;
  }

  __break(1u);
LABEL_59:
  __break(1u);
  return result;
}

uint64_t sub_1000D1B34(int *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v75 = a6;
  v7 = a4;
  v8 = a1;
  v9 = a2 - a1;
  if (a1)
  {
    v10 = v9 < 32;
  }

  else
  {
    v10 = 1;
  }

  v11 = v10;
  if (v10)
  {
    sub_10001449C();
    v13 = swift_allocError();
    *v14 = 0xD000000000000033;
    *(v14 + 8) = 0x800000010010BA70;
    v15 = v73;
    v17 = v71;
    v16 = v72;
    *(v14 + 16) = v70;
    *(v14 + 32) = v17;
    *(v14 + 48) = v16;
    *(v14 + 64) = v15;
    *(v14 + 72) = 24;
    swift_willThrow();
    v69 = v13;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (!swift_dynamicCast())
    {
    }

    v63 = v67;
    v64[0] = v68[0];
    *(v64 + 9) = *(v68 + 9);
    v61 = v65;
    v62 = v66;
    v18 = sub_1000319F4(0, 1, 1, _swiftEmptyArrayStorage);
    v20 = *(v18 + 2);
    v19 = *(v18 + 3);
    v7 = a4;
    if (v20 >= v19 >> 1)
    {
      v18 = sub_1000319F4((v19 > 1), v20 + 1, 1, v18);
    }

    *(v18 + 2) = v20 + 1;
    v21 = &v18[80 * v20];
    *(v21 + 3) = v62;
    *(v21 + 4) = v63;
    *(v21 + 5) = v64[0];
    *(v21 + 89) = *(v64 + 9);
    *(v21 + 2) = v61;

    if (!v8 || v9 < 28)
    {
      v27 = swift_allocError();
      v8 = 0;
      *v38 = 0xD000000000000033;
      *(v38 + 8) = 0x800000010010BAB0;
      v39 = *&v68[0];
      v41 = v66;
      v40 = v67;
      *(v38 + 16) = v65;
      *(v38 + 32) = v41;
      *(v38 + 48) = v40;
      *(v38 + 64) = v39;
      *(v38 + 72) = 24;
      v28 = 255;
      goto LABEL_32;
    }

    v22 = 0;
    v6 = 0;
    v23 = 255;
    goto LABEL_21;
  }

  v24 = *a1;
  v18 = _swiftEmptyArrayStorage;
  if (*a1 == -805638658 || v24 == -17958193)
  {
    v23 = 0;
    v22 = a1;
LABEL_21:
    v24 = *v8;
    goto LABEL_23;
  }

  v22 = 0;
  v11 = 1;
  v23 = 255;
LABEL_23:
  if (v24 == -822415874 || v24 == -17958194)
  {
    if (v11)
    {
      v26 = v6;
      goto LABEL_39;
    }

    sub_10001449C();
    v27 = swift_allocError();
    v28 = 0;
    *v29 = 0xD00000000000002BLL;
    *(v29 + 8) = 0x800000010010BB40;
    v30 = *&v68[0];
    v32 = v66;
    v31 = v67;
    *(v29 + 16) = v65;
    *(v29 + 32) = v32;
    *(v29 + 48) = v31;
    *(v29 + 64) = v30;
    *(v29 + 72) = 24;
    v8 = v22;
LABEL_32:
    swift_willThrow();
    *&v70 = v27;
    swift_errorRetain();
    sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
    if (!swift_dynamicCast())
    {
    }

    v63 = v67;
    v64[0] = v68[0];
    *(v64 + 9) = *(v68 + 9);
    v61 = v65;
    v62 = v66;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v18 = sub_1000319F4(0, *(v18 + 2) + 1, 1, v18);
    }

    v43 = *(v18 + 2);
    v42 = *(v18 + 3);
    if (v43 >= v42 >> 1)
    {
      v18 = sub_1000319F4((v42 > 1), v43 + 1, 1, v18);
    }

    *(v18 + 2) = v43 + 1;
    v44 = &v18[80 * v43];
    *(v44 + 2) = v61;
    v45 = v62;
    v46 = v63;
    v47 = v64[0];
    *(v44 + 89) = *(v64 + 9);
    *(v44 + 4) = v46;
    *(v44 + 5) = v47;
    *(v44 + 3) = v45;

    v6 = 0;
    if (v28 != 255)
    {
      goto LABEL_38;
    }

LABEL_29:
    v33 = *(v18 + 2);
    if (v33 <= 1)
    {
      if (v33 == 1)
      {
        v49 = *(v18 + 3);
        v50 = *(v18 + 5);
        v67 = *(v18 + 4);
        v68[0] = v50;
        *(v68 + 9) = *(v18 + 89);
        v65 = *(v18 + 2);
        v66 = v49;
        sub_1000419A4(&v65, &v61);

        sub_10001449C();
        swift_allocError();
        *v51 = v65;
        v53 = v67;
        v52 = v68[0];
        v54 = v66;
        *(v51 + 57) = *(v68 + 9);
        v51[2] = v53;
        v51[3] = v52;
        v51[1] = v54;
      }

      else
      {

        sub_10001449C();
        swift_allocError();
        *v55 = 0xD000000000000040;
        *(v55 + 8) = 0x800000010010BAF0;
        v56 = *&v68[0];
        v58 = v66;
        v57 = v67;
        *(v55 + 16) = v65;
        *(v55 + 32) = v58;
        *(v55 + 48) = v57;
        *(v55 + 64) = v56;
        *(v55 + 72) = 50;
      }
    }

    else
    {
      sub_10001449C();
      swift_allocError();
      *v34 = v18;
      v35 = v67;
      v36 = v68[0];
      v37 = v66;
      *(v34 + 8) = v65;
      *(v34 + 56) = v36;
      *(v34 + 40) = v35;
      *(v34 + 24) = v37;
      *(v34 + 72) = 0;
    }

    swift_willThrow();
  }

  v8 = v22;
  if (v23 == 255)
  {
    goto LABEL_29;
  }

LABEL_38:
  v26 = v6;
LABEL_39:

  sub_1000D373C(v8, a3, v7, a5, v75, &v74);
  if (!v26)
  {

    return v74;
  }
}

uint64_t sub_1000D212C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  result = sub_1000D39A0(a1, a2, a3, a6, a7);
  if (!v7)
  {
    v32 = 0;
    memset(v31, 0, sizeof(v31));
    v15 = v14;
    v16 = result;
    sub_1000146C4(result, v14);

    sub_1000146C4(a6, a7);
    v17 = sub_1000D63B8(v16, v15, v16, v15, v31, a4, a5, a6, a7);
    sub_1000128D8(a6, a7);
    if (v17 == -1)
    {
      *&v27 = 0;
      *(&v27 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(58);
      v20._object = 0x800000010010C0F0;
      v20._countAndFlagsBits = 0xD000000000000038;
      String.append(_:)(v20);
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v21 = swift_allocObject();
      *(v21 + 16) = xmmword_1000F3C80;
      *(v21 + 56) = &type metadata for Int32;
      *(v21 + 64) = &protocol witness table for Int32;
      *(v21 + 32) = a3;
      *(v21 + 96) = &type metadata for Int32;
      *(v21 + 104) = &protocol witness table for Int32;
      *(v21 + 72) = HIDWORD(a3);
      v22 = String.init(format:_:)();
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      sub_10001449C();
      swift_allocError();
      *v26 = v27;
      *(v26 + 16) = v27;
      *(v26 + 32) = v28;
      *(v26 + 48) = v29;
      *(v26 + 64) = v30;
      *(v26 + 72) = 24;
      swift_willThrow();
      sub_1000128D8(v16, v15);
      v18 = *&v31[0];
    }

    else
    {
      v19 = *&v31[0];
      if (*&v31[0] && v32)
      {
        swift_willThrow();
        swift_errorRetain();
        sub_1000128D8(v16, v15);
        return sub_1000D6A54(v19);
      }

      sub_1000128D8(v16, v15);
      v18 = v19;
    }

    return sub_1000D6A54(v18);
  }

  return result;
}

char *sub_1000D2424(uint64_t a1, unint64_t a2)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      BYTE4(v13[1]) = BYTE4(a2);
      BYTE5(v13[1]) = BYTE5(a2);
      v4 = a1;
      v5 = a2;
      v6 = v13 + BYTE6(a2);
      goto LABEL_9;
    }

    v7 = a1;
    v8 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

LABEL_7:
    sub_1000146C4(a1, a2);
    v4 = sub_1000D6780(v7, v8, a2 & 0x3FFFFFFFFFFFFFFFLL, a1, a2);
    sub_1000128D8(a1, a2);
    return v4;
  }

  if (v3 == 2)
  {
    v7 = *(a1 + 16);
    v8 = *(a1 + 24);
    goto LABEL_7;
  }

  memset(v13, 0, 14);
  v4 = a1;
  v5 = a2;
  v6 = v13;
LABEL_9:
  sub_1000D25DC(v13, v6, v4, v5, &v12);
  sub_1000128D8(v4, v5);
  if (!v2)
  {
    return v12;
  }

  return v4;
}

uint64_t sub_1000D25DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, char **a5@<X8>)
{
  if (!a1 || (v5 = a2 - a1, a2 - a1 < 4))
  {
    v6 = 0x800000010010C010;
    sub_10001449C();
    swift_allocError();
    v8 = 0xD00000000000002CLL;
LABEL_4:
    *v7 = v8;
    *(v7 + 8) = v6;
    v9 = v96;
    v11 = *&mh.ncmds;
    v10 = v95;
    *(v7 + 16) = *&mh.magic;
    *(v7 + 32) = v11;
    *(v7 + 48) = v10;
    *(v7 + 64) = v9;
    *(v7 + 72) = 24;
    return swift_willThrow();
  }

  v13 = *a1;
  if (*a1 <= -822415875)
  {
    if (v13 > -889275715)
    {
      if (v13 != -889275714)
      {
        v14 = -889275713;
LABEL_14:
        if (v13 == v14)
        {
          if (v5 >= 8)
          {
            nfat_arch = *(a1 + 4);
            fat_header.magic = *a1;
            fat_header.nfat_arch = nfat_arch;
            if (v13 == -1078264118)
            {
              v17 = a1;
              v18 = a5;
              j__swap_fat_header(&fat_header, NX_LittleEndian);
              a1 = v17;
              a5 = v18;
              nfat_arch = fat_header.nfat_arch;
            }

            v19 = nfat_arch;
            if (v5 >= ((32 * nfat_arch) | 8uLL))
            {
              v20 = a1;
              v92 = a5;
              v21 = 32 * nfat_arch;
              v22 = swift_slowAlloc();
              v23 = v22;
              if (v19)
              {
                memcpy(v22, (v20 + 8), v21);
              }

              if (v13 == -1078264118)
              {
                j__swap_fat_arch_64(v23, v19, NX_LittleEndian);
              }

              v24 = _swiftEmptyArrayStorage;
              if (v19)
              {
                p_cputype = &v23->cputype;
                v26 = &v23[v19];
                do
                {
                  v27 = j__NXGetArchInfoFromCpuType(*p_cputype, p_cputype[1]);
                  if (v27 && v27->name)
                  {
                    v28 = String.init(cString:)();
                    v30 = v29;
                  }

                  else
                  {
                    *&mh.magic = 0x286E776F6E6B6E55;
                    *&mh.cpusubtype = 0xE800000000000000;
                    v31._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v31);

                    v32._countAndFlagsBits = 44;
                    v32._object = 0xE100000000000000;
                    String.append(_:)(v32);
                    v33._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
                    String.append(_:)(v33);

                    v34._countAndFlagsBits = 41;
                    v34._object = 0xE100000000000000;
                    String.append(_:)(v34);
                    v28 = *&mh.magic;
                    v30 = *&mh.cpusubtype;
                  }

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v24 = sub_100030EA0(0, *(v24 + 2) + 1, 1, v24);
                  }

                  v36 = *(v24 + 2);
                  v35 = *(v24 + 3);
                  if (v36 >= v35 >> 1)
                  {
                    v24 = sub_100030EA0((v35 > 1), v36 + 1, 1, v24);
                  }

                  *(v24 + 2) = v36 + 1;
                  v37 = &v24[16 * v36];
                  *(v37 + 4) = v28;
                  *(v37 + 5) = v30;
                  p_cputype += 8;
                }

                while (p_cputype != v26);
              }

LABEL_104:

              *v92 = v24;
              return result;
            }

            goto LABEL_49;
          }

          goto LABEL_42;
        }

LABEL_58:
        v6 = 0x800000010010C040;
        sub_10001449C();
        swift_allocError();
        v8 = 0xD000000000000020;
        goto LABEL_4;
      }
    }

    else if (v13 != -1095041334)
    {
      v14 = -1078264118;
      goto LABEL_14;
    }

    if (v5 >= 8)
    {
      v41 = *(a1 + 4);
      fat_header.magic = *a1;
      fat_header.nfat_arch = v41;
      if (v13 == -1095041334)
      {
        v42 = a1;
        v43 = a5;
        j__swap_fat_header(&fat_header, NX_LittleEndian);
        a1 = v42;
        a5 = v43;
        v41 = fat_header.nfat_arch;
      }

      v44 = v41;
      v45 = 20 * v41;
      if (v5 >= v45 + 8)
      {
        v56 = a1;
        v92 = a5;
        v57 = swift_slowAlloc();
        v58 = v57;
        if (v44)
        {
          memcpy(v57, (v56 + 8), v45);
        }

        if (v13 == -1095041334)
        {
          j__swap_fat_arch(v58, v44, NX_LittleEndian);
        }

        if (v44)
        {
          v59 = &v58[v44];
          v24 = _swiftEmptyArrayStorage;
          v60 = &v58->cputype;
          do
          {
            v61 = j__NXGetArchInfoFromCpuType(*v60, v60[1]);
            if (v61 && v61->name)
            {
              v62 = String.init(cString:)();
              v64 = v63;
            }

            else
            {
              *&mh.magic = 0x286E776F6E6B6E55;
              *&mh.cpusubtype = 0xE800000000000000;
              v65._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v65);

              v66._countAndFlagsBits = 44;
              v66._object = 0xE100000000000000;
              String.append(_:)(v66);
              v67._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v67);

              v68._countAndFlagsBits = 41;
              v68._object = 0xE100000000000000;
              String.append(_:)(v68);
              v62 = *&mh.magic;
              v64 = *&mh.cpusubtype;
            }

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v24 = sub_100030EA0(0, *(v24 + 2) + 1, 1, v24);
            }

            v70 = *(v24 + 2);
            v69 = *(v24 + 3);
            if (v70 >= v69 >> 1)
            {
              v24 = sub_100030EA0((v69 > 1), v70 + 1, 1, v24);
            }

            *(v24 + 2) = v70 + 1;
            v71 = &v24[16 * v70];
            *(v71 + 4) = v62;
            *(v71 + 5) = v64;
            v60 += 5;
          }

          while (v60 != v59);
        }

        else
        {
          v24 = _swiftEmptyArrayStorage;
        }

        goto LABEL_104;
      }

LABEL_49:
      v6 = 0x800000010010C070;
      sub_10001449C();
      swift_allocError();
      v8 = 0xD000000000000036;
      goto LABEL_4;
    }

LABEL_42:
    v6 = 0x800000010010C0B0;
    sub_10001449C();
    swift_allocError();
    v8 = 0xD000000000000030;
    goto LABEL_4;
  }

  if (v13 <= -17958195)
  {
    if (v13 != -822415874)
    {
      v15 = -805638658;
      goto LABEL_37;
    }

LABEL_43:
    v40 = a4 >> 62;
    if ((a4 >> 62) > 1)
    {
      if (v40 != 2)
      {
        goto LABEL_62;
      }

      v47 = *(a3 + 16);
      v46 = *(a3 + 24);
      v48 = __OFSUB__(v46, v47);
      v38 = v46 - v47;
      if (v48)
      {
        __break(1u);
LABEL_54:
        if (v38 != 2)
        {
LABEL_84:
          v51 = "Binary not large enough to accomodate 64-bit header";
          goto LABEL_85;
        }

        v50 = *(a3 + 16);
        v49 = *(a3 + 24);
        v48 = __OFSUB__(v49, v50);
        v39 = v49 - v50;
        if (v48)
        {
          __break(1u);
          goto LABEL_58;
        }

        goto LABEL_83;
      }
    }

    else if (v40)
    {
      LODWORD(v38) = HIDWORD(a3) - a3;
      if (__OFSUB__(HIDWORD(a3), a3))
      {
        __break(1u);
        goto LABEL_106;
      }

      v38 = v38;
    }

    else
    {
      v38 = BYTE6(a4);
    }

    if (v38 >= 28)
    {
      mh.magic = *a1;
      v52 = *(a1 + 4);
      *&mh.cputype = v52;
      *&mh.sizeofcmds = *(a1 + 20);
      if (v13 == -822415874)
      {
        v53 = a5;
        j__swap_mach_header(&mh, NX_LittleEndian);
        cputype = mh.cputype;
        cpusubtype = mh.cpusubtype;
      }

      else
      {
        v53 = a5;
        cputype = v52;
        cpusubtype = DWORD1(v52);
      }

      v83 = j__NXGetArchInfoFromCpuType(cputype, cpusubtype);
      if (v83 && v83->name)
      {
        v84 = String.init(cString:)();
      }

      else
      {
        v84 = sub_1000D66AC();
      }

      v86 = v84;
      v87 = v85;
      result = sub_100030EA0(0, 1, 1, _swiftEmptyArrayStorage);
      v88 = result;
      v90 = *(result + 16);
      v89 = *(result + 24);
      if (v90 >= v89 >> 1)
      {
        result = sub_100030EA0((v89 > 1), v90 + 1, 1, result);
        v88 = result;
      }

      *(v88 + 16) = v90 + 1;
      v91 = v88 + 16 * v90;
      *(v91 + 32) = v86;
      *(v91 + 40) = v87;
      *v53 = v88;
      return result;
    }

LABEL_62:
    v51 = "Binary not large enough to accomodate 32-bit header";
LABEL_85:
    v6 = (v51 - 32) | 0x8000000000000000;
    sub_10001449C();
    swift_allocError();
    v8 = 0xD000000000000033;
    goto LABEL_4;
  }

  if (v13 == -17958194)
  {
    goto LABEL_43;
  }

  v15 = -17958193;
LABEL_37:
  if (v13 != v15)
  {
    goto LABEL_58;
  }

  v38 = a4 >> 62;
  if ((a4 >> 62) > 1)
  {
    goto LABEL_54;
  }

  if (v38)
  {
    LODWORD(v39) = HIDWORD(a3) - a3;
    if (!__OFSUB__(HIDWORD(a3), a3))
    {
      v39 = v39;
      goto LABEL_83;
    }

LABEL_106:
    __break(1u);
  }

  v39 = BYTE6(a4);
LABEL_83:
  if (v39 < 32)
  {
    goto LABEL_84;
  }

  v72 = a5;
  v73 = *(a1 + 16);
  *&mh.magic = *a1;
  *&mh.ncmds = v73;
  if (v13 == -805638658)
  {
    j__swap_mach_header_64(&mh, NX_LittleEndian);
  }

  v74 = j__NXGetArchInfoFromCpuType(mh.cputype, mh.cpusubtype);
  if (v74 && v74->name)
  {
    v75 = String.init(cString:)();
  }

  else
  {
    v75 = sub_1000D66AC();
  }

  v77 = v75;
  v78 = v76;
  result = sub_100030EA0(0, 1, 1, _swiftEmptyArrayStorage);
  v79 = result;
  v81 = *(result + 16);
  v80 = *(result + 24);
  if (v81 >= v80 >> 1)
  {
    result = sub_100030EA0((v80 > 1), v81 + 1, 1, result);
    v79 = result;
  }

  *(v79 + 16) = v81 + 1;
  v82 = v79 + 16 * v81;
  *(v82 + 32) = v77;
  *(v82 + 40) = v78;
  *v72 = v79;
  return result;
}

uint64_t sub_1000D2EBC(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6, unint64_t a7)
{
  v10 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v10 != 2)
    {
      goto LABEL_8;
    }

    v13 = *(a1 + 16);
    v12 = *(a1 + 24);
    v11 = v12 - v13;
    if (!__OFSUB__(v12, v13))
    {
      if (v11 >= 28)
      {
        goto LABEL_11;
      }

      goto LABEL_8;
    }

    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v10)
  {
    v19 = HIDWORD(a1) - a1;
    if (!__OFSUB__(HIDWORD(a1), a1))
    {
      v11 = v19;
      if (v19 >= 28)
      {
        goto LABEL_11;
      }

LABEL_8:
      sub_10001449C();
      swift_allocError();
      *v14 = 0xD00000000000002ELL;
      *(v14 + 8) = 0x800000010010BE60;
      v15 = v57;
      v17 = v56[1];
      v16 = v56[2];
      *(v14 + 16) = v56[0];
      *(v14 + 32) = v17;
      *(v14 + 48) = v16;
      *(v14 + 64) = v15;
      *(v14 + 72) = 24;
      return swift_willThrow();
    }

    goto LABEL_29;
  }

  v11 = BYTE6(a2);
  if (BYTE6(a2) < 0x1CuLL)
  {
    goto LABEL_8;
  }

LABEL_11:
  if (v10 == 2)
  {
    v29 = *(a1 + 16);
    v28 = *(a1 + 24);
    sub_1000146C4(a6, a7);

    v32 = a1;
    sub_1000146C4(a1, a2);
    v33 = __DataStorage._bytes.getter();
    if (v33)
    {
      v34 = __DataStorage._offset.getter();
      if (__OFSUB__(v29, v34))
      {
LABEL_32:
        __break(1u);
        goto LABEL_33;
      }

      v33 = (v33 + v29 - v34);
    }

    if (!__OFSUB__(v28, v29))
    {
      __DataStorage._length.getter();
      sub_1000D32AC(v33, v11, a3, a4, a5, v56, a1, a2);
      v25 = v7;
      sub_1000128D8(a6, a7);

      v35 = v32;
      goto LABEL_25;
    }

LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  if (v10 != 1)
  {
    LOWORD(v46) = a1;
    BYTE2(v46) = BYTE2(a1);
    HIBYTE(v46) = BYTE3(a1);
    v47 = BYTE4(a1);
    v48 = BYTE5(a1);
    v49 = BYTE6(a1);
    v50 = HIBYTE(a1);
    v51 = a2;
    v52 = BYTE2(a2);
    v53 = BYTE3(a2);
    v54 = BYTE4(a2);
    v55 = BYTE5(a2);
    v21 = a1;
    sub_1000146C4(a6, a7);

    sub_1000D32AC(&v46, v11, a3, a4, a5, v56, v21, a2);
    v25 = v7;
    v26 = a6;
    v27 = a7;
    goto LABEL_24;
  }

  v20 = a1;
  if (a1 >> 32 < a1)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  v21 = a1;
  sub_1000146C4(a6, a7);

  sub_1000146C4(v21, a2);
  v23 = __DataStorage._bytes.getter();
  if (v23)
  {
    v24 = __DataStorage._offset.getter();
    if (!__OFSUB__(v20, v24))
    {
      v23 = (v23 + v20 - v24);
      goto LABEL_17;
    }

LABEL_33:
    __break(1u);
  }

LABEL_17:
  __DataStorage._length.getter();
  sub_1000D32AC(v23, v11, a3, a4, a5, v56, v21, a2);
  v25 = v7;
  v26 = a6;
  v27 = a7;
LABEL_24:
  sub_1000128D8(v26, v27);

  v35 = v21;
LABEL_25:
  result = sub_1000128D8(v35, a2);
  if (!v25)
  {
    return *&v56[0];
  }

  return result;
}

uint64_t sub_1000D32AC@<X0>(uint32_t *a1@<X0>, uint64_t a2@<X4>, uint64_t a3@<X5>, void *a4@<X6>, uint64_t a5@<X7>, uint64_t a6@<X8>, uint64_t a7, unint64_t a8)
{
  if (!a1)
  {
    sub_10001449C();
    swift_allocError();
    *v23 = 0xD000000000000019;
    *(v23 + 8) = 0x800000010010BE90;
    v24 = v59;
    v26 = v57;
    v25 = v58;
    *(v23 + 16) = v56;
    *(v23 + 32) = v26;
    *(v23 + 48) = v25;
    *(v23 + 64) = v24;
    *(v23 + 72) = 24;
    return swift_willThrow();
  }

  magic = *a1;
  v11 = a1[1];
  fat_header.magic = magic;
  fat_header.nfat_arch = v11;
  if (magic == -1095041334 || magic == -889275714)
  {
    static os_log_type_t.info.getter();
    sub_10001491C();
    v15 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v16 = bswap32(v11);
    result = sub_1000D0024(v16, a2);
    if (v8)
    {
      return result;
    }

    v17 = swift_slowAlloc();
    v18 = v17;
    if (v11)
    {
      memcpy(v17, a1 + 2, 20 * v16);
    }

    if (magic == -1095041334)
    {
      static os_log_type_t.info.getter();
      v19 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      j__swap_fat_header(&fat_header, NX_LittleEndian);
      j__swap_fat_arch(v18, v16, NX_LittleEndian);
      magic = fat_header.magic;
    }

    if (magic == -889275714)
    {
      v20 = j__NXFindBestFatArch(a5, SHIDWORD(a5), v18, v16);
      if (v20)
      {
        v21 = *&v20->offset;
        *&v22 = v21;
        *(&v22 + 1) = HIDWORD(v21);
        *a6 = v22;
        *(a6 + 16) = 0;
      }

      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      strcpy(v54, "Cannot find ");
      BYTE5(v54[1]) = 0;
      HIWORD(v54[1]) = -5120;
      if (a4)
      {
        v41 = a4;
        v42 = a3;
      }

      else
      {
        sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
        v43 = swift_allocObject();
        *(v43 + 16) = xmmword_1000F3C80;
        *(v43 + 56) = &type metadata for Int32;
        *(v43 + 64) = &protocol witness table for Int32;
        *(v43 + 32) = a5;
        *(v43 + 96) = &type metadata for Int32;
        *(v43 + 104) = &protocol witness table for Int32;
        *(v43 + 72) = HIDWORD(a5);
        v42 = String.init(format:_:)();
        v41 = v44;
      }

      v45._countAndFlagsBits = v42;
      v45._object = v41;
      String.append(_:)(v45);

      v46._countAndFlagsBits = 0x20746166206E6920;
      v46._object = 0xEE007972616E6962;
      String.append(_:)(v46);
      v47 = v54[1];
      sub_10001449C();
      swift_allocError();
      *v36 = v54[0];
      *(v36 + 8) = v47;
      v48 = v59;
      v50 = v57;
      v49 = v58;
      *(v36 + 16) = v56;
      *(v36 + 32) = v50;
      *(v36 + 48) = v49;
      *(v36 + 64) = v48;
      v40 = 16;
    }

    else
    {
      sub_10001449C();
      swift_allocError();
      *v36 = 0xD000000000000022;
      *(v36 + 8) = 0x800000010010BEC0;
      v37 = v59;
      v39 = v57;
      v38 = v58;
      *(v36 + 16) = v56;
      *(v36 + 32) = v39;
      *(v36 + 48) = v38;
      *(v36 + 64) = v37;
      v40 = 24;
    }

    *(v36 + 72) = v40;
    swift_willThrow();
  }

  v30 = sub_1000D5B38(a7, a8, a3, a4, a5, a2);
  v32 = v31;
  v34 = v33;

  if (!v8)
  {
    *a6 = v30;
    *(a6 + 8) = v32;
    *(a6 + 16) = v34 & 1;
  }

  return result;
}

uint64_t sub_1000D373C@<X0>(_DWORD *a1@<X0>, uint64_t a2@<X2>, void *a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v14 = a1 + 1;
  result = a1[1];
  v13 = v14[1];
  if ((*a1 | 0x1000000) == 0xCFFAEDFE)
  {
    if ((result & 0x80000000) != 0)
    {
      __break(1u);
    }

    else
    {
      result = sub_1000D6C24(result);
      if ((result & 0x80000000) == 0)
      {
        if ((v13 & 0x80000000) == 0)
        {
          v15 = result;
          result = sub_1000D6C24(v13);
          if ((result & 0x80000000) == 0)
          {
            v13 = result;
            result = v15;
            goto LABEL_7;
          }

LABEL_19:
          __break(1u);
          return result;
        }

LABEL_18:
        __break(1u);
        goto LABEL_19;
      }
    }

    __break(1u);
    goto LABEL_18;
  }

LABEL_7:
  if (result == a4)
  {
    *a6 = 0;
    *(a6 + 8) = a5;
    *(a6 + 16) = 1;
  }

  else
  {
    if (macho_arch_name_for_cpu_type(result, v13))
    {
      v16 = String.init(cString:)();
      v18 = v17;
    }

    else
    {
      v18 = 0xE700000000000000;
      v16 = 0x6E776F6E6B6E75;
    }

    *&v27 = 0;
    *(&v27 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(36);

    strcpy(v31, "Binary is for ");
    HIBYTE(v31[1]) = -18;
    v19._countAndFlagsBits = v16;
    v19._object = v18;
    String.append(_:)(v19);

    v20._object = 0x800000010010BFF0;
    v20._countAndFlagsBits = 0xD000000000000012;
    String.append(_:)(v20);
    if (a3)
    {
      v21 = a3;
    }

    else
    {
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v22 = swift_allocObject();
      *(v22 + 16) = xmmword_1000F3C80;
      *(v22 + 56) = &type metadata for Int32;
      *(v22 + 64) = &protocol witness table for Int32;
      *(v22 + 32) = a4;
      *(v22 + 96) = &type metadata for Int32;
      *(v22 + 104) = &protocol witness table for Int32;
      *(v22 + 72) = HIDWORD(a4);
      a2 = String.init(format:_:)();
      v21 = v23;
    }

    v24._countAndFlagsBits = a2;
    v24._object = v21;
    String.append(_:)(v24);

    v25 = v31[1];
    sub_10001449C();
    swift_allocError();
    *v26 = v31[0];
    *(v26 + 8) = v25;
    *(v26 + 16) = v27;
    *(v26 + 32) = v28;
    *(v26 + 48) = v29;
    *(v26 + 64) = v30;
    *(v26 + 72) = 16;
    return swift_willThrow();
  }

  return result;
}

unint64_t sub_1000D40A4(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = 0;
  v4 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v4 != 2)
    {
      goto LABEL_10;
    }

    v3 = *(a2 + 16);
  }

  else
  {
    if (!v4)
    {
      goto LABEL_10;
    }

    v3 = a2;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  if (HIDWORD(v3))
  {
    __break(1u);
  }

LABEL_10:
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v5 = 0;
      if (!v3)
      {
        goto LABEL_20;
      }

      goto LABEL_26;
    }

    v5 = *(a2 + 24);
LABEL_17:
    if ((v5 & 0x8000000000000000) != 0)
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    if (HIDWORD(v5))
    {
LABEL_28:
      __break(1u);
      goto LABEL_29;
    }

    if (v5 >= v3)
    {
      goto LABEL_20;
    }

LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v4)
  {
    v5 = a2 >> 32;
    goto LABEL_17;
  }

  v5 = BYTE6(a3);
  if (BYTE6(a3) < v3)
  {
    goto LABEL_26;
  }

LABEL_20:
  v6 = HIDWORD(result);
  if (HIDWORD(result) < v3)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v6 >= v5)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  if (HIDWORD(result) == -1)
  {
LABEL_31:
    __break(1u);
    goto LABEL_32;
  }

  result = result;
  if (result <= (v6 + 1))
  {
    return Data._Representation.subscript.getter();
  }

LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1000D4180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = sub_1000D39A0(a2, a3, a4, a7, a8);
  if (!v8)
  {
    v12 = v10;
    v13 = v11;
    v17 = sub_1000411B8(_swiftEmptyArrayStorage);
    __chkstk_darwin(v17);
    sub_1000D5408(v12, v13, sub_1000D6834, &v16);
    v15 = v17;
    sub_1000146C4(v12, v13);
    a6 = sub_1000D6860(v15);
    sub_1000128D8(v12, v13);
    sub_1000128D8(v12, v13);
  }

  return a6;
}

uint64_t sub_1000D42E4(uint64_t result, char a2, uint64_t a3, uint64_t *a4, uint64_t a5, char a6, uint64_t a7)
{
  v7 = *(a3 + 16);
  if (!v7)
  {
    return result;
  }

  if (a6)
  {
    v9 = 0;
  }

  else
  {
    v9 = a5;
  }

  v54 = v9;
  for (i = (a3 + 56); ; i += 4)
  {
    v14 = *(i - 2);
    v15 = *(i - 1);
    v16 = *i;
    v59 = *(i - 3);
    String.utf8CString.getter();
    v60 = v15;
    String.utf8CString.getter();

    if (a2)
    {
      section_by_name = macho_get_section_by_name();

      if (!section_by_name)
      {
        goto LABEL_24;
      }

      v18 = v54;
      if (v54 < 0)
      {
        goto LABEL_39;
      }

      v58 = v7;
      v19 = (section_by_name + 40);
      v20 = *(section_by_name + 36);
    }

    else
    {
      section_by_name_64 = macho_get_section_by_name_64();

      if (!section_by_name_64)
      {
LABEL_24:
        v40 = *a4;
        v41 = sub_100061F80(v59, v14, v15, v16);
        LOBYTE(v40) = v42;

        if (v40)
        {
          v43 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v45 = *a4;
          v62 = *a4;
          *a4 = 0x8000000000000000;
          if (!isUniquelyReferenced_nonNull_native)
          {
            sub_10003BB64();
            v45 = v62;
          }

          v46 = *(v45 + 48) + 32 * v41;
          v47 = *(v46 + 8);
          v48 = *(v46 + 24);

          sub_100038630(v41, v45);
          v49 = *a4;
          *a4 = v45;
        }

        goto LABEL_8;
      }

      v18 = v54;
      if (v54 < 0)
      {
        goto LABEL_38;
      }

      v20 = *(section_by_name_64 + 40);
      if (v20 < 0)
      {
        goto LABEL_40;
      }

      v58 = v7;
      v19 = (section_by_name_64 + 48);
    }

    v22 = *v19 - v18;
    v23 = a7 + v22;
    if (__OFADD__(a7, v22))
    {
      break;
    }

    v24 = __OFADD__(v23, v20);
    v25 = v23 + v20;
    if (v24)
    {
      goto LABEL_36;
    }

    v57 = v25;
    v26 = *a4;
    v27 = swift_isUniquelyReferenced_nonNull_native();
    v28 = a4;
    v29 = v27;
    v30 = *v28;
    v61 = *v28;
    v31 = v28;
    *v28 = 0x8000000000000000;
    v33 = sub_100061F80(v59, v14, v60, v16);
    v34 = v30[2];
    v35 = (v32 & 1) == 0;
    v36 = v34 + v35;
    if (__OFADD__(v34, v35))
    {
      goto LABEL_37;
    }

    v37 = v32;
    if (v30[3] >= v36)
    {
      if (v29)
      {
        a4 = v31;
        if ((v32 & 1) == 0)
        {
          goto LABEL_30;
        }
      }

      else
      {
        sub_10003BB64();
        a4 = v31;
        if ((v37 & 1) == 0)
        {
          goto LABEL_30;
        }
      }
    }

    else
    {
      sub_1000363AC(v36, v29);
      v38 = sub_100061F80(v59, v14, v60, v16);
      if ((v37 & 1) != (v39 & 1))
      {
        goto LABEL_42;
      }

      v33 = v38;
      a4 = v31;
      if ((v37 & 1) == 0)
      {
LABEL_30:
        v11 = v61;
        v61[(v33 >> 6) + 8] |= 1 << v33;
        v50 = (v61[6] + 32 * v33);
        *v50 = v59;
        v50[1] = v14;
        v50[2] = v60;
        v50[3] = v16;
        v51 = v61[7] + 24 * v33;
        *v51 = v23;
        *(v51 + 8) = v57;
        *(v51 + 16) = 0;
        v52 = v61[2];
        v24 = __OFADD__(v52, 1);
        v53 = v52 + 1;
        if (v24)
        {
          goto LABEL_41;
        }

        v61[2] = v53;
        goto LABEL_7;
      }
    }

    v11 = v61;
    v12 = v61[7] + 24 * v33;
    *v12 = v23;
    *(v12 + 8) = v57;
    *(v12 + 16) = 0;
LABEL_7:
    v13 = *a4;
    *a4 = v11;

    v7 = v58;
LABEL_8:
    if (!--v7)
    {
      return result;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t sub_1000D4660@<X0>(const uint8_t *a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for Data.Deallocator();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin(v8);
  v12 = &v58 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = a1;
  if (!a1)
  {
    static os_log_type_t.error.getter();
    sub_10001491C();
    v14 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    a4[3] = &type metadata for Data;
    a4[4] = &off_10012DA28;
    *a4 = a2;
    a4[1] = a3;
    return sub_1000146C4(a2, a3);
  }

  v63 = v12;
  v13 = a3 >> 62;
  if ((a3 >> 62) > 1)
  {
    if (v13 != 2)
    {
      memset(v73, 0, 14);
      goto LABEL_20;
    }

    v62 = v9;
    v16 = v8;
    v17 = *(a2 + 16);
    v18 = *(a2 + 24);
    v19 = __DataStorage._bytes.getter();
    if (v19)
    {
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v17, v20))
      {
LABEL_60:
        __break(1u);
        goto LABEL_61;
      }

      v19 += v17 - v20;
    }

    if (__OFSUB__(v18, v17))
    {
LABEL_59:
      __break(1u);
      goto LABEL_60;
    }

    __DataStorage._length.getter();
    if (v19)
    {
      v8 = v16;
      v21 = compression_stream_identify_algorithm();
      v9 = v62;
      if (v21 >= 1)
      {
        goto LABEL_21;
      }

LABEL_52:
      static os_log_type_t.info.getter();
      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v56 = swift_allocObject();
      *(v56 + 16) = xmmword_1000F3160;
      *(v56 + 56) = &type metadata for Int32;
      *(v56 + 64) = &protocol witness table for Int32;
      *(v56 + 32) = v21;
      sub_10001491C();
      v57 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      a4[3] = &type metadata for Data;
      a4[4] = &off_10012DA28;
      *a4 = a2;
      a4[1] = a3;
      return sub_1000146C4(a2, a3);
    }

LABEL_51:
    v21 = 0;
    goto LABEL_52;
  }

  if (!v13)
  {
    v73[0] = a2;
    LOWORD(v73[1]) = a3;
    BYTE2(v73[1]) = BYTE2(a3);
    BYTE3(v73[1]) = BYTE3(a3);
    BYTE4(v73[1]) = BYTE4(a3);
    BYTE5(v73[1]) = BYTE5(a3);
    goto LABEL_20;
  }

  if (a2 > a2 >> 32)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
    __DataStorage._length.getter();
    goto LABEL_51;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(a2, v24))
  {
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
  }

  v25 = a2 - v24 + v23;
  __DataStorage._length.getter();
  if (!v25)
  {
    goto LABEL_51;
  }

LABEL_20:
  v21 = compression_stream_identify_algorithm();
  if (v21 < 1)
  {
    goto LABEL_52;
  }

LABEL_21:
  v62 = v9;
  v59 = v8;
  static os_log_type_t.info.getter();
  v70 = sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v26 = swift_allocObject();
  v58 = xmmword_1000F3160;
  *(v26 + 16) = xmmword_1000F3160;
  v27 = v21;
  v28 = compression_algorithm.description.getter(v21);
  v30 = v29;
  *(v26 + 56) = &type metadata for String;
  *(v26 + 64) = sub_100003D24();
  *(v26 + 32) = v28;
  *(v26 + 40) = v30;
  sub_10001491C();
  v31 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v68 = v27;
  compression_decode_scratch_buffer_size(v27);
  v71 = swift_slowAlloc();
  v32 = HIDWORD(a2);
  v66 = a2;
  v67 = BYTE6(a3);
  if (v13 <= 1)
  {
    if (!v13)
    {
      a2 = v67;
      goto LABEL_30;
    }

LABEL_28:
    if (__OFSUB__(v32, a2))
    {
      goto LABEL_62;
    }

    a2 = v32 - a2;
    goto LABEL_30;
  }

  a2 = 0;
  if (v13 == 2)
  {
    v34 = *(v66 + 16);
    v33 = *(v66 + 24);
    a2 = v33 - v34;
    if (__OFSUB__(v33, v34))
    {
      __break(1u);
      goto LABEL_28;
    }
  }

LABEL_30:
  v60 = a3;
  v61 = a4;
  swift_slowAlloc();
  v35 = 0;
  v36 = __OFSUB__(v32, v66);
  v65 = v36;
  v64 = v32 - v66;
  v69 = xmmword_1000F3C80;
  while (1)
  {
    if ((a2 - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
LABEL_57:
      __break(1u);
      goto LABEL_58;
    }

    a2 *= 4;

    static os_log_type_t.info.getter();
    v37 = swift_allocObject();
    *(v37 + 16) = v69;
    *(v37 + 56) = &type metadata for Int;
    *(v37 + 64) = &protocol witness table for Int;
    *(v37 + 32) = a2;
    *(v37 + 96) = &type metadata for Int;
    *(v37 + 104) = &protocol witness table for Int;
    *(v37 + 72) = v35;
    v38 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    v39 = swift_slowAlloc();
    v40 = v39;
    if (v13 > 1)
    {
      if (v13 == 2)
      {
        v43 = *(v66 + 16);
        v42 = *(v66 + 24);
        v41 = v42 - v43;
        if (__OFSUB__(v42, v43))
        {
          goto LABEL_57;
        }
      }

      else
      {
        v41 = 0;
      }
    }

    else
    {
      v41 = v67;
      if (v13)
      {
        v41 = v64;
        if (v65)
        {
          goto LABEL_56;
        }
      }
    }

    v44 = compression_decode_buffer(v39, a2, v72, v41, v71, v68);
    if (!v44)
    {
      break;
    }

    if (__OFADD__(v35, 1))
    {
      goto LABEL_55;
    }

    v45 = v44;
    ++v35;
    if (v44 < a2)
    {
      static os_log_type_t.info.getter();
      v46 = swift_allocObject();
      *(v46 + 16) = v58;
      *(v46 + 56) = &type metadata for Int;
      *(v46 + 64) = &protocol witness table for Int;
      *(v46 + 32) = v45;
      v47 = static OS_os_log.default.getter();
      os_log(_:dso:log:_:_:)();

      v48 = v63;
      (*(v62 + 104))(v63, enum case for Data.Deallocator.free(_:), v59);
      v49 = sub_1000D5900(v40, v45, v48);
      v50 = v61;
      v61[3] = &type metadata for Data;
      v50[4] = &off_10012DA28;
      *v50 = v49;
      v50[1] = v51;
    }
  }

  static os_log_type_t.error.getter();
  v52 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  v53 = v60;
  v54 = v61;
  v61[3] = &type metadata for Data;
  v54[4] = &off_10012DA28;
  v55 = v66;
  *v54 = v66;
  v54[1] = v53;
  sub_1000146C4(v55, v53);
}

uint64_t compression_algorithm.description.getter(int a1)
{
  result = 0x6573667A6CLL;
  if (a1 > 2208)
  {
    if (a1 == 2209 || a1 == 2305)
    {
      return result;
    }

    if (a1 == 2304)
    {
      return 1853258348;
    }

LABEL_11:
    v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
    String.append(_:)(v3);

    return 0x2065646F6328;
  }

  if ((a1 - 256) < 2)
  {
    return 3439212;
  }

  if (a1 != 2049 && a1 != 2193)
  {
    goto LABEL_11;
  }

  return result;
}

void sub_1000D4ED8(uint64_t a1@<X0>, uint64_t a2@<X2>, unint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v4 = BYTE6(a3);
  v53 = 0;
  v51 = 0u;
  v52 = 0u;
  v49 = 0u;
  v50 = 0u;
  v47 = 0u;
  v48 = 0u;
  v45 = 0u;
  v46 = 0u;
  v43 = 0u;
  v44 = 0u;
  v41 = 0u;
  v42 = 0u;
  v39 = 0u;
  v40 = 0u;
  v37 = 0u;
  v38 = 0u;
  v35 = 0u;
  v36 = 0u;
  v33 = 0u;
  v34 = 0u;
  v8 = a3 >> 62;
  memset(v32, 0, sizeof(v32));
  if ((a3 >> 62) > 1)
  {
    v9 = 0;
    if (v8 != 2)
    {
      goto LABEL_10;
    }

    v11 = *(a2 + 16);
    v10 = *(a2 + 24);
    v9 = v10 - v11;
    if (!__OFSUB__(v10, v11))
    {
      goto LABEL_10;
    }

    __break(1u);
  }

  else if (!v8)
  {
    v9 = BYTE6(a3);
    goto LABEL_10;
  }

  if (__OFSUB__(HIDWORD(a2), a2))
  {
    __break(1u);
    goto LABEL_25;
  }

  v9 = HIDWORD(a2) - a2;
LABEL_10:
  Img4DecodeInitPayload(a1, v9, v32);
  v13 = "ch_source";
  if (!v12)
  {
    goto LABEL_22;
  }

  v14 = v12;
  v31 = a4;
  v15 = a1;
  static os_log_type_t.info.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1000F3160;
  *(v16 + 56) = &type metadata for Int32;
  *(v16 + 64) = &protocol witness table for Int32;
  *(v16 + 32) = v14;
  sub_10001491C();
  v17 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  if (v8 <= 1)
  {
    v18 = v15;
    v13 = "OS_dispatch_source" + 9;
    if (!v8)
    {
      v19 = v4;
      a4 = v31;
      goto LABEL_20;
    }

LABEL_18:
    a4 = v31;
    if (!__OFSUB__(HIDWORD(a2), a2))
    {
      v19 = HIDWORD(a2) - a2;
      goto LABEL_20;
    }

LABEL_25:
    __break(1u);
  }

  v19 = 0;
  v18 = v15;
  a4 = v31;
  v13 = "OS_dispatch_source" + 9;
  if (v8 == 2)
  {
    v21 = *(a2 + 16);
    v20 = *(a2 + 24);
    v19 = v20 - v21;
    if (__OFSUB__(v20, v21))
    {
      __break(1u);
      goto LABEL_18;
    }
  }

LABEL_20:
  Img4DecodeInit(v18, v19, v32);
  if (v22)
  {
    v23 = v22;
    static os_log_type_t.error.getter();
    v24 = swift_allocObject();
    *(v24 + 16) = xmmword_1000F3160;
    *(v24 + 56) = &type metadata for Int32;
    *(v24 + 64) = &protocol witness table for Int32;
    *(v24 + 32) = v23;
    v25 = static OS_os_log.default.getter();
    os_log(_:dso:log:_:_:)();

    *(a4 + 32) = 0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
    return;
  }

LABEL_22:
  static os_log_type_t.info.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v26 = swift_allocObject();
  *(v26 + 16) = *(v13 + 22);
  v27 = v34;
  *(v26 + 56) = &type metadata for Int;
  *(v26 + 64) = &protocol witness table for Int;
  *(v26 + 32) = v27;
  sub_10001491C();
  v28 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  if (*(&v33 + 1))
  {
    v29 = sub_10003F210(*(&v33 + 1), v34);
    *(a4 + 24) = &type metadata for Data;
    *(a4 + 32) = &off_10012DA28;
    *a4 = v29;
    *(a4 + 8) = v30;
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1000D527C@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v7 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v7 != 2)
    {
      memset(v12, 0, 14);
      goto LABEL_9;
    }

    v8 = *(a1 + 16);
    v9 = *(a1 + 24);
  }

  else
  {
    if (!v7)
    {
      v12[0] = a1;
      LOWORD(v12[1]) = a2;
      BYTE2(v12[1]) = BYTE2(a2);
      BYTE3(v12[1]) = BYTE3(a2);
      BYTE4(v12[1]) = BYTE4(a2);
      BYTE5(v12[1]) = BYTE5(a2);
LABEL_9:
      sub_1000D4660(v12, a3, a4, a5);
      return sub_1000128D8(a3, a4);
    }

    v8 = a1;
    v9 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  sub_1000146C4(a3, a4);
  sub_1000D5538(v8, v9, a3, a4, a5);
  return sub_1000128D8(a3, a4);
}

uint64_t sub_1000D5408@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t (*a3)(int *, uint64_t)@<X2>, uint64_t a4@<X8>)
{
  v4 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v4 != 2)
    {
      memset(v9, 0, 14);
      v5 = v9;
      return sub_1000D0E84(v9, v5, a3, a4);
    }

    v6 = *(a1 + 16);
    v7 = *(a1 + 24);
    return sub_1000D5698(v6, v7, a3, a4);
  }

  if (v4)
  {
    v6 = a1;
    v7 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return sub_1000D5698(v6, v7, a3, a4);
  }

  v9[0] = a1;
  LOWORD(v9[1]) = a2;
  BYTE2(v9[1]) = BYTE2(a2);
  BYTE3(v9[1]) = BYTE3(a2);
  BYTE4(v9[1]) = BYTE4(a2);
  BYTE5(v9[1]) = BYTE5(a2);
  v5 = v9 + BYTE6(a2);
  return sub_1000D0E84(v9, v5, a3, a4);
}

uint64_t sub_1000D5538@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t *a5@<X8>)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
      goto LABEL_7;
    }

    v11 += a1 - result;
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    sub_1000D4660(v11, a3, a4, a5);
    return sub_1000128D8(a3, a4);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1000D55F8(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  v5 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v5 = (v5 + a1 - result);
  }

  v6 = __OFSUB__(a2, a1);
  v7 = a2 - a1;
  if (v6)
  {
    __break(1u);
    goto LABEL_13;
  }

  v8 = __DataStorage._length.getter();
  if (v8 >= v7)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = v5 + v9;
  if (v5)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  v12 = sub_1000D02F4(v5, v11);
  return v12 | ((HIDWORD(v12) & 1) << 32);
}

uint64_t sub_1000D5698@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(int *, uint64_t)@<X3>, uint64_t a4@<X8>)
{
  result = __DataStorage._bytes.getter();
  v9 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v9 = (v9 + a1 - result);
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
    __break(1u);
    goto LABEL_13;
  }

  v12 = __DataStorage._length.getter();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  v14 = v9 + v13;
  if (v9)
  {
    v15 = v14;
  }

  else
  {
    v15 = 0;
  }

  return sub_1000D0E84(v9, v15, a3, a4);
}

unint64_t sub_1000D5744(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (result <= 0xFF)
  {
    return 0;
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D5764(_BYTE *__src, _BYTE *a2)
{
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t sub_1000D581C(uint64_t result, uint64_t a2)
{
  if (!a2)
  {

    return 0;
  }

  if (a2 > 14)
  {
    if (a2 < 0x7FFFFFFF)
    {
      return a2 << 32;
    }

    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = a2;
    return result;
  }

  if (a2 < 0)
  {
    __break(1u);
    goto LABEL_19;
  }

  v3 = __DataStorage._bytes.getter();
  if (v3)
  {
    result = __DataStorage._offset.getter();
    if (!__OFSUB__(0, result))
    {
      v3 -= result;
      goto LABEL_10;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_10:
  v4 = __DataStorage._length.getter();
  if (v4 >= a2)
  {
    v5 = a2;
  }

  else
  {
    v5 = v4;
  }

  v6 = &v3[v5];
  if (v3)
  {
    v7 = v6;
  }

  else
  {
    v7 = 0;
  }

  v8 = sub_1000D5764(v3, v7);

  return v8;
}

uint64_t sub_1000D5900(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Data.Deallocator();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  __chkstk_darwin(v6);
  v10 = &v20[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  Data.Deallocator._deallocator.getter();
  if (a2)
  {
    v11 = type metadata accessor for __DataStorage();
    v12 = *(v11 + 48);
    v13 = *(v11 + 52);
    swift_allocObject();

    v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();
    (*(v7 + 16))(v10, a3, v6);
    if ((*(v7 + 88))(v10, v6) == enum case for Data.Deallocator.none(_:))
    {
      v15 = __DataStorage._capacity.modify();
      *v16 |= 0x8000000000000000;
      v15(v20, 0);
    }

    else
    {
      (*(v7 + 8))(v10, v6);
    }

    v18 = sub_1000D581C(v14, a2);
  }

  else
  {
    v17 = Data.Deallocator._deallocator.getter();
    v17(a1, 0);

    v18 = 0;
  }

  (*(v7 + 8))(a3, v6);
  return v18;
}

uint64_t sub_1000D5B38(uint64_t a1, unint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v12 = BYTE6(a2);
  v13 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v13)
    {
      v33[0] = a1;
      LOWORD(v33[1]) = a2;
      BYTE2(v33[1]) = BYTE2(a2);
      BYTE3(v33[1]) = BYTE3(a2);
      BYTE4(v33[1]) = BYTE4(a2);
      BYTE5(v33[1]) = BYTE5(a2);
      swift_bridgeObjectRetain_n();
      v7 = sub_1000D1B34(v33, v33 + v12, a3, a4, a5, a6);

      goto LABEL_26;
    }

    v22 = a1;
    v23 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v31 = &v30;
      v32 = v6;
      swift_bridgeObjectRetain_n();
      v16 = __DataStorage._bytes.getter();
      if (!v16)
      {
        goto LABEL_16;
      }

      v24 = __DataStorage._offset.getter();
      if (!__OFSUB__(v22, v24))
      {
        v16 = (v16 + v22 - v24);
LABEL_16:
        v25 = __DataStorage._length.getter();
        if (v25 >= v23)
        {
          v21 = v23;
        }

        else
        {
          v21 = v25;
        }

        goto LABEL_19;
      }

LABEL_30:
      __break(1u);
    }

    __break(1u);
    goto LABEL_28;
  }

  if (v13 == 2)
  {
    v31 = &v30;
    v32 = v6;
    v15 = *(a1 + 16);
    v14 = *(a1 + 24);
    swift_bridgeObjectRetain_n();
    v16 = __DataStorage._bytes.getter();
    if (v16)
    {
      v17 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v17))
      {
LABEL_29:
        __break(1u);
        goto LABEL_30;
      }

      v16 = (v16 + v15 - v17);
    }

    v18 = __OFSUB__(v14, v15);
    v19 = v14 - v15;
    if (!v18)
    {
      v20 = __DataStorage._length.getter();
      if (v20 >= v19)
      {
        v21 = v19;
      }

      else
      {
        v21 = v20;
      }

LABEL_19:
      v26 = v16 + v21;
      if (v16)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      v7 = sub_1000D1B34(v16, v27, a3, a4, a5, a6);
      swift_bridgeObjectRelease_n();
      goto LABEL_26;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  memset(v33, 0, 14);
  swift_bridgeObjectRetain_n();
  v28 = sub_1000D1B34(v33, v33, a3, a4, a5, a6);
  if (!v6)
  {
    v7 = v28;
  }

LABEL_26:

  return v7;
}

int *sub_1000D5E34(uint64_t a1, unint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t a7, unint64_t a8)
{
  v9 = v8;
  v14 = BYTE6(a2);
  v15 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v15)
    {
      v47[0] = a1;
      LOWORD(v47[1]) = a2;
      BYTE2(v47[1]) = BYTE2(a2);
      BYTE3(v47[1]) = BYTE3(a2);
      BYTE4(v47[1]) = BYTE4(a2);
      BYTE5(v47[1]) = BYTE5(a2);

      sub_1000146C4(a7, a8);

      sub_1000146C4(a7, a8);
      sub_1000146C4(a7, a8);

      sub_1000146C4(a7, a8);

      v9 = sub_1000D1458(v47, v47 + v14, a3, a4, a5, a6, a7, a8);

      goto LABEL_32;
    }

    v44 = a3;
    v46 = a6;
    v29 = a1;
    v30 = (a1 >> 32) - a1;
    if (a1 >> 32 >= a1)
    {
      v45 = v8;
      v43 = &v42;
      swift_retain_n();
      sub_1000146C4(a7, a8);
      sub_1000146C4(a7, a8);
      sub_1000146C4(a7, a8);

      sub_1000146C4(a7, a8);

      sub_1000146C4(a7, a8);
      v32 = __DataStorage._bytes.getter();
      if (!v32)
      {
LABEL_22:
        v34 = __DataStorage._length.getter();
        if (v34 >= v30)
        {
          v35 = v30;
        }

        else
        {
          v35 = v34;
        }

        v36 = v32 + v35;
        if (v32)
        {
          v37 = v36;
        }

        else
        {
          v37 = 0;
        }

        sub_1000146C4(a7, a8);
        v9 = sub_1000D1458(v32, v37, v44, a4, a5, v46, a7, a8);

        sub_1000128D8(a7, a8);

        sub_1000128D8(a7, a8);

        goto LABEL_32;
      }

      v33 = __DataStorage._offset.getter();
      if (!__OFSUB__(v29, v33))
      {
        v32 = (v32 + v29 - v33);
        goto LABEL_22;
      }

LABEL_36:
      __break(1u);
    }

    __break(1u);
    goto LABEL_34;
  }

  if (v15 == 2)
  {
    v44 = a4;
    v45 = v8;
    v46 = a6;
    v43 = &v42;
    v18 = *(a1 + 16);
    v19 = *(a1 + 24);
    swift_retain_n();
    sub_1000146C4(a7, a8);
    sub_1000146C4(a7, a8);
    sub_1000146C4(a7, a8);

    sub_1000146C4(a7, a8);

    sub_1000146C4(a7, a8);
    v9 = __DataStorage._bytes.getter();
    if (v9)
    {
      v20 = __DataStorage._offset.getter();
      if (__OFSUB__(v18, v20))
      {
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v9 = (v9 + v18 - v20);
    }

    v21 = __OFSUB__(v19, v18);
    v22 = v19 - v18;
    if (v21)
    {
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    v23 = __DataStorage._length.getter();
    if (v23 >= v22)
    {
      v24 = v22;
    }

    else
    {
      v24 = v23;
    }

    v25 = v9 + v24;
    if (v9)
    {
      v26 = v25;
    }

    else
    {
      v26 = 0;
    }

    sub_1000146C4(a7, a8);
    v27 = v45;
    v28 = sub_1000D1458(v9, v26, a3, v44, a5, v46, a7, a8);
    if (!v27)
    {
      v9 = v28;
    }

    sub_1000128D8(a7, a8);

    sub_1000128D8(a7, a8);
  }

  else
  {
    memset(v47, 0, 14);

    sub_1000146C4(a7, a8);

    sub_1000146C4(a7, a8);
    sub_1000146C4(a7, a8);

    sub_1000146C4(a7, a8);

    v40 = sub_1000D1458(v47, v47, a3, a4, a5, a6, a7, a8);
    if (!v8)
    {
      v9 = v40;
    }
  }

LABEL_32:
  sub_1000128D8(a7, a8);

  sub_1000128D8(a7, a8);

  sub_1000128D8(a7, a8);
  return v9;
}

uint64_t sub_1000D63B8(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t a7, uint64_t a8, unint64_t a9)
{
  v14 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v14 != 2)
    {
      memset(v31, 0, 14);
      goto LABEL_17;
    }

    v15 = *(a1 + 16);
    v16 = __DataStorage._bytes.getter();
    if (v16)
    {
      v17 = v16;
      v18 = __DataStorage._offset.getter();
      if (__OFSUB__(v15, v18))
      {
LABEL_21:
        __break(1u);
LABEL_22:
        __break(1u);
      }

      v19 = (v15 - v18 + v17);
      __DataStorage._length.getter();
      if (v19)
      {

        sub_1000146C4(a8, a9);
        v20 = sub_1000D5E34(a3, a4, a5, a6, a7, v19, a8, a9);
        if (!v9)
        {
          v19 = v20;
        }

        sub_1000128D8(a8, a9);

        sub_1000128D8(a3, a4);
        goto LABEL_19;
      }
    }

    else
    {
      __DataStorage._length.getter();
    }

    __break(1u);
    goto LABEL_25;
  }

  if (!v14)
  {
    v31[0] = a1;
    LOWORD(v31[1]) = a2;
    BYTE2(v31[1]) = BYTE2(a2);
    BYTE3(v31[1]) = BYTE3(a2);
    BYTE4(v31[1]) = BYTE4(a2);
    BYTE5(v31[1]) = BYTE5(a2);
LABEL_17:
    v19 = sub_1000D5E34(a3, a4, a5, a6, a7, v31, a8, a9);
    goto LABEL_18;
  }

  v21 = a1;
  if (a1 > a1 >> 32)
  {
    __break(1u);
    goto LABEL_21;
  }

  v22 = __DataStorage._bytes.getter();
  if (!v22)
  {
LABEL_25:
    result = __DataStorage._length.getter();
    goto LABEL_26;
  }

  v23 = v22;
  v24 = __DataStorage._offset.getter();
  if (__OFSUB__(v21, v24))
  {
    goto LABEL_22;
  }

  v25 = v21 - v24 + v23;
  result = __DataStorage._length.getter();
  if (v25)
  {

    sub_1000146C4(a8, a9);
    v19 = sub_1000D5E34(a3, a4, a5, a6, a7, v25, a8, a9);
    sub_1000128D8(a8, a9);

LABEL_18:
    sub_1000128D8(a3, a4);
LABEL_19:

    return v19;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_1000D66AC()
{
  v0._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v0);

  v1._countAndFlagsBits = 44;
  v1._object = 0xE100000000000000;
  String.append(_:)(v1);
  v2._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 41;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x286E776F6E6B6E55;
}

char *sub_1000D6780(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_15:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_15;
  }

  v14 = __DataStorage._length.getter();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  v16 = v15 + v11;
  if (v11)
  {
    v17 = v16;
  }

  else
  {
    v17 = 0;
  }

  result = sub_1000D25DC(v11, v17, a4, a5, &v18);
  if (!v5)
  {
    return v18;
  }

  return result;
}

uint64_t sub_1000D6860(uint64_t a1)
{
  sub_100003CDC(&qword_100138BC8, &qword_100101078);
  result = static _DictionaryStorage.copy(original:)();
  v3 = result;
  v4 = 0;
  v5 = a1 + 64;
  v6 = 1 << *(a1 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a1 + 64);
  v9 = (v6 + 63) >> 6;
  v28 = result + 64;
  v27 = result;
  if (v8)
  {
    while (1)
    {
      v10 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v13 = v10 | (v4 << 6);
      v14 = (*(a1 + 48) + 32 * v13);
      v15 = v14[1];
      v30 = *v14;
      v16 = v14[3];
      v29 = v14[2];
      v17 = *(a1 + 56) + 24 * v13;
      if (*(v17 + 16))
      {

        result = 0;
        v18 = 0xF000000000000000;
      }

      else
      {
        v19 = a1;
        v21 = *v17;
        v20 = *(v17 + 8);

        a1 = v19;
        result = Data._Representation.subscript.getter();
        v3 = v27;
      }

      *(v28 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v22 = (v3[6] + 32 * v13);
      *v22 = v30;
      v22[1] = v15;
      v22[2] = v29;
      v22[3] = v16;
      v23 = (v3[7] + 16 * v13);
      *v23 = result;
      v23[1] = v18;
      v24 = v3[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        break;
      }

      v3[2] = v26;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v11 = v4;
    while (1)
    {
      v4 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v4 >= v9)
      {
        return v3;
      }

      v12 = *(v5 + 8 * v4);
      ++v11;
      if (v12)
      {
        v10 = __clz(__rbit64(v12));
        v8 = (v12 - 1) & v12;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1000D6A54(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1000D6A98(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = 0xFFFFFFFFLL;
  if (a1 && a2)
  {
    if (a3)
    {
      v7 = *a3;
      v6 = *(a3 + 8);
      v8 = *(a3 + 16);
      v9 = *(a3 + 24);

      v10 = v7(a1, v8, v9, a2);

      return v10;
    }
  }

  return result;
}

uint64_t sub_1000D6B4C(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000D6BD0()
{
  result = qword_100138BD8;
  if (!qword_100138BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100138BD8);
  }

  return result;
}

uint64_t sub_1000D6C2C()
{
  v9 = *v0;
  v10 = v9;
  sub_100065EEC(&v10, &v8);
  v1._countAndFlagsBits = 30240;
  v1._object = 0xE200000000000000;
  String.append(_:)(v1);
  v8 = *(v0 + 2);
  sub_1000DEC08();
  v2._countAndFlagsBits = BinaryInteger.description.getter();
  String.append(_:)(v2);

  v3._countAndFlagsBits = 544106784;
  v3._object = 0xE400000000000000;
  String.append(_:)(v3);
  if (*(v0 + 6))
  {
    v4 = *(v0 + 5);
    v5 = *(v0 + 6);
  }

  else
  {
    v5 = 0xE300000000000000;
    v4 = 4144959;
  }

  v6._countAndFlagsBits = v4;
  v6._object = v5;
  String.append(_:)(v6);

  return v9;
}

uint64_t sub_1000D6D08(void *a1)
{
  v3 = v1;
  v5 = sub_100003CDC(&qword_1001390D0, &qword_1001015B0);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v18[-v8 - 8];
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_1000DEB44();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v12 = v3[1];
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = v3[2];
    LOBYTE(v19) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v19 = *(v3 + 3);
    v20 = v19;
    v18[23] = 2;
    sub_1000DEB98(&v20, v18);
    sub_10001D6A4();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    sub_100014988();
    v14 = v3[5];
    v15 = v3[6];
    LOBYTE(v19) = 3;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v9, v5);
}

Swift::Int sub_1000D6EEC()
{
  Hasher.init(_seed:)();
  v1 = *v0;
  v2 = v0[1];
  String.hash(into:)();
  Hasher._combine(_:)(v0[2]);
  if (v0[4] >> 60 != 15)
  {
    v4 = v0[3];
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v0[6])
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!v0[6])
  {
    goto LABEL_5;
  }

LABEL_3:
  v3 = v0[5];
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t sub_1000D6FC4()
{
  v1 = 0x696669746E656469;
  v2 = 0x747365676964;
  if (*v0 != 2)
  {
    v2 = 0x6150656C646E7562;
  }

  if (*v0)
  {
    v1 = 0x6E6F6973726576;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1000D7040@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1000DE700(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1000D7074(uint64_t a1)
{
  v2 = sub_1000DEB44();

  return CodingKey.description.getter(a1, v2);
}

uint64_t sub_1000D70B0(uint64_t a1)
{
  v2 = sub_1000DEB44();

  return CodingKey.debugDescription.getter(a1, v2);
}

double sub_1000D70EC@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  sub_1000DE870(a1, v6);
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

BOOL sub_1000D7154(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return sub_1000DD3D4(v5, v7);
}

void sub_1000D71B4()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  if (v6 >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_7:
    Hasher._combine(_:)(0);
    return;
  }

  Hasher._combine(_:)(0);
  if (!v7)
  {
    goto LABEL_7;
  }

LABEL_3:
  Hasher._combine(_:)(1u);

  String.hash(into:)();
}

Swift::Int sub_1000D7294()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v6 = v0[4];
  v5 = v0[5];
  v7 = v0[6];
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v4);
  if (v6 >> 60 != 15)
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
    if (v7)
    {
      goto LABEL_3;
    }

LABEL_5:
    Hasher._combine(_:)(0);
    return Hasher._finalize()();
  }

  Hasher._combine(_:)(0);
  if (!v7)
  {
    goto LABEL_5;
  }

LABEL_3:
  Hasher._combine(_:)(1u);
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t sub_1000D7374()
{
  v1 = *(v0 + 16);
  if (qword_100133A50 == -1)
  {
    if (!*(v1 + 16))
    {
      return 0xD000000000000014;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      return 0xD000000000000014;
    }
  }

  v2 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
  if (v3)
  {
    sub_10000B430(*(v1 + 56) + 32 * v2, v6);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  return 0xD000000000000014;
}

uint64_t sub_1000D7444@<X0>(uint64_t a1@<X8>)
{
  sub_1000138F8(v1 + 24, v15);
  if (v16)
  {
    if (v16 == 1)
    {
      v3 = *&v15[0];
      v4 = OBJC_IVAR____TtC10driverkitd16KernelCollection_path;
      v5 = type metadata accessor for URL();
      v6 = *(v5 - 8);
      (*(v6 + 16))(a1, v3 + v4, v5);

      return (*(v6 + 56))(a1, 0, 1, v5);
    }

    else
    {
      v11 = type metadata accessor for URL();
      (*(*(v11 - 8) + 56))(a1, 1, 1, v11);
      return sub_100013954(v15);
    }
  }

  else
  {
    sub_100009F34(v15, v12);
    v8 = v13;
    v9 = v14;
    sub_100003C4C(v12, v13);
    (*(v9 + 64))(v8, v9);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 56))(a1, 0, 1, v10);
    return sub_100003C90(v12);
  }
}

uint64_t sub_1000D7614()
{
  v1 = *(v0 + 16);
  if (qword_100133A70 == -1)
  {
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  v2 = sub_100061588(qword_10014E900, *algn_10014E908);
  if (v3)
  {
    sub_10000B430(*(v1 + 56) + 32 * v2, v6);
    if (swift_dynamicCast())
    {
      return v5;
    }
  }

  return 0;
}

uint64_t sub_1000D76D4()
{
  v1 = *(v0 + 16);
  if (qword_100133A70 == -1)
  {
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  else
  {
    swift_once();
    if (!*(v1 + 16))
    {
      return 0;
    }
  }

  v2 = sub_100061588(qword_10014E900, *algn_10014E908);
  if (v3)
  {
    sub_10000B430(*(v1 + 56) + 32 * v2, v7);
    if (swift_dynamicCast())
    {
      v4 = String._bridgeToObjectiveC()();

      v5 = OSKextParseVersionCFString();

      return v5;
    }
  }

  return 0;
}

uint64_t sub_1000D790C()
{
  sub_1000138F8(v0 + 24, v6);
  if (v7)
  {
    sub_100013954(v6);
    return 1;
  }

  sub_100009F34(v6, v8);
  v2 = v9;
  v3 = v10;
  sub_100003C4C(v8, v9);
  (*(v3 + 56))(v2, v3);
  v5 = v4;
  sub_100003C90(v8);
  if (!v5)
  {
    return 1;
  }

  return 0;
}

uint64_t sub_1000D79B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100134FB0, &qword_1000F4E60);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v6 = v14 - v5;
  v7 = *(v1 + 16);
  if (*(v7 + 16))
  {
    v8 = sub_100061588(0x656C646E7542534FLL, 0xEC00000044495555);
    if (v9)
    {
      sub_10000B430(*(v7 + 56) + 32 * v8, v15);
      if (swift_dynamicCast())
      {
        sub_1000C7328(v14[0], v14[1], v6);
        v10 = type metadata accessor for UUID();
        v11 = *(v10 - 8);
        if ((*(v11 + 48))(v6, 1, v10) != 1)
        {
          (*(v11 + 32))(a1, v6, v10);
          return (*(v11 + 56))(a1, 0, 1, v10);
        }

        sub_10000A184(v6, &qword_100134FB0, &qword_1000F4E60);
      }
    }
  }

  v12 = type metadata accessor for UUID();
  return (*(*(v12 - 8) + 56))(a1, 1, 1, v12);
}

uint64_t sub_1000D7B9C@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_100061588(0xD000000000000012, 0x800000010010C290), (v5 & 1) != 0) && (sub_10000B430(*(v3 + 56) + 32 * v4, v9), (swift_dynamicCast() & 1) != 0))
  {
    URL.init(fileURLWithPath:isDirectory:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for URL();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_1000D7C90@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  if (*(v3 + 16) && (v4 = sub_100061588(0x656C646E7542534FLL, 0xEC00000068746150), (v5 & 1) != 0) && (sub_10000B430(*(v3 + 56) + 32 * v4, v9), (swift_dynamicCast() & 1) != 0))
  {
    URL.init(fileURLWithPath:isDirectory:)();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = type metadata accessor for URL();
  return (*(*(v7 - 8) + 56))(a1, v6, 1, v7);
}

uint64_t sub_1000D7D88(uint64_t a1)
{
  v2 = *(v1 + 16);
  if (*(v2 + 16))
  {
    v4 = sub_100061588(0xD000000000000010, 0x8000000100106710);
    if (v5)
    {
      sub_10000B430(*(v2 + 56) + 32 * v4, v13);
      if (swift_dynamicCast())
      {
        v6 = *(a1 + 16);
        v7 = (a1 + 40);
        v8 = v6 + 1;
        while (--v8)
        {
          if (*(v7 - 1) != v11 || *v7 != v12)
          {
            v7 += 2;
            if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
            {
              continue;
            }
          }

          return 1;
        }
      }
    }
  }

  return 0;
}

void *sub_1000D7E7C()
{
  sub_100003CDC(&qword_100135050, &qword_1000F4F10);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_100101130;
  if (qword_100133A70 != -1)
  {
    swift_once();
  }

  v1 = qword_10014E900;
  v2 = *algn_10014E908;

  v3 = sub_1000D8020(v1, v2, 0, 0);

  *(v0 + 32) = v3;
  *(v0 + 40) = sub_1000D8020(0xD000000000000019, 0x80000001001066F0, 1, 0);
  *(v0 + 48) = sub_1000D81C0(0xD000000000000011, 0x80000001001066D0, 1, 0);
  if (qword_100133A58 != -1)
  {
    swift_once();
  }

  v4 = qword_10014E8D0;
  v5 = *algn_10014E8D8;

  v6 = sub_1000D83AC(v4, v5, 1, 0);

  *(v0 + 56) = v6;
  result = sub_1000D8588(0xD000000000000012, 0x8000000100104610, 1, 0);
  *(v0 + 64) = result;
  qword_10014EAC0 = v0;
  return result;
}

void *sub_1000D8020(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._object = 0x800000010010C690;
  v10._countAndFlagsBits = 0xD00000000000001ELL;
  String.append(_:)(v10);
  if (a3)
  {
    v11 = 0x20656220726F202CLL;
  }

  else
  {
    v11 = 0;
  }

  if (a3)
  {
    v8 = 0xEE00746E65736261;
  }

  v12._countAndFlagsBits = v11;
  v12._object = v8;
  String.append(_:)(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a3;
  *(v13 + 40) = a4;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v14 = swift_allocObject();
  v14[2] = 0x79747265706F7250;
  v14[3] = 0xEA00000000002720;
  v14[4] = sub_1000DE5CC;
  v14[5] = v13;

  return v14;
}

void *sub_1000D81C0(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._object = 0x800000010010C610;
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  sub_100003CDC(&unk_1001373A0, &unk_1000F91B0);
  sub_100003CDC(&qword_1001390B0, &qword_1001013E8);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  if (a3)
  {
    v12 = 0x20656220726F202CLL;
  }

  else
  {
    v12 = 0;
  }

  if (a3)
  {
    v8 = 0xEE00746E65736261;
  }

  v13._countAndFlagsBits = v12;
  v13._object = v8;
  String.append(_:)(v13);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v15 = swift_allocObject();
  v15[2] = 0x79747265706F7250;
  v15[3] = 0xEA00000000002720;
  v15[4] = sub_1000DE588;
  v15[5] = v14;

  return v15;
}

void *sub_1000D83AC(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._object = 0x800000010010C610;
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  sub_100003CDC(&qword_1001390A0, &unk_1001013D0);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  if (a3)
  {
    v12 = 0x20656220726F202CLL;
  }

  else
  {
    v12 = 0;
  }

  if (a3)
  {
    v8 = 0xEE00746E65736261;
  }

  v13._countAndFlagsBits = v12;
  v13._object = v8;
  String.append(_:)(v13);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v15 = swift_allocObject();
  v15[2] = 0x79747265706F7250;
  v15[3] = 0xEA00000000002720;
  v15[4] = sub_1000DE458;
  v15[5] = v14;

  return v15;
}

void *sub_1000D8588(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v8 = 0xE000000000000000;
  _StringGuts.grow(_:)(33);

  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._object = 0x800000010010C610;
  v10._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v10);
  sub_100003CDC(&qword_100134FD0, &unk_1000F4E80);
  sub_100003CDC(&qword_1001390A8, &qword_1001013E0);
  v11._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v11);

  if (a3)
  {
    v12 = 0x20656220726F202CLL;
  }

  else
  {
    v12 = 0;
  }

  if (a3)
  {
    v8 = 0xEE00746E65736261;
  }

  v13._countAndFlagsBits = v12;
  v13._object = v8;
  String.append(_:)(v13);

  v14 = swift_allocObject();
  *(v14 + 16) = a1;
  *(v14 + 24) = a2;
  *(v14 + 32) = a3;
  *(v14 + 40) = a4;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v15 = swift_allocObject();
  v15[2] = 0x79747265706F7250;
  v15[3] = 0xEA00000000002720;
  v15[4] = sub_1000DE574;
  v15[5] = v14;

  return v15;
}

void sub_1000D87A0()
{
  sub_10004C820();
  if (v1 <= 0x3F)
  {
    v2 = *(v0 - 8) + 64;
    swift_updateClassMetadata2();
  }
}

uint64_t sub_1000D8874()
{
  if (qword_100133B48 != -1)
  {
    swift_once();
  }

  v0 = qword_10014EAC0;
  sub_100003CDC(&qword_100135050, &qword_1000F4F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100101140;
  v2 = qword_100133A50;
  v61 = v0;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_10014E8C0;
  v4 = *algn_10014E8C8;

  v5 = sub_1000D9424(v3, v4, 64, 0, 0);

  *(inited + 32) = v5;
  if (qword_100133A60 != -1)
  {
    swift_once();
  }

  v6 = qword_10014E8E0;
  v7 = *algn_10014E8E8;

  v8 = sub_1000D9604(v6, v7, &off_100126310, 0, 0, &type metadata for String, &unk_10012DE88, sub_1000DE4F4);

  *(inited + 40) = v8;
  *(inited + 48) = sub_1000D9604(0xD000000000000010, 0x8000000100106710, &off_100126340, 1, 0, &type metadata for String, &unk_10012DE88, sub_1000DE4F4);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100101150;
  if (qword_100133A58 != -1)
  {
    swift_once();
  }

  v10 = qword_10014E8D0;
  v11 = *algn_10014E8D8;

  v12 = sub_1000D97D4(v10, v11, 0);

  *(v9 + 32) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_100101150;
  v14 = qword_10014E8D0;
  v15 = *algn_10014E8D8;

  v16 = sub_1000D83AC(v14, v15, 0, 0);

  *(v13 + 32) = v16;
  *(v13 + 40) = sub_1000D83AC(0xD000000000000022, 0x8000000100103490, 0, 0);
  _StringGuts.grow(_:)(18);

  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v17._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v17);

  v18 = swift_allocObject();
  *(v18 + 16) = v13;
  v19 = swift_allocObject();
  v19[2] = 0xD000000000000010;
  v19[3] = 0x800000010010C3C0;
  v19[4] = sub_1000DE104;
  v19[5] = v18;
  *(v9 + 40) = v19;
  v20._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v20);

  v21 = swift_allocObject();
  *(v21 + 16) = v9;
  v22 = swift_allocObject();
  v22[2] = 0x203A464F20594E41;
  v22[3] = 0xE800000000000000;
  v22[4] = sub_1000DE10C;
  v22[5] = v21;
  *(inited + 56) = v22;
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_100101150;
  *(v23 + 32) = sub_1000D97D4(0xD000000000000010, 0x80000001001033F0, 0);
  v24 = swift_allocObject();
  *(v24 + 16) = sub_1000D9908;
  *(v24 + 24) = 0;
  v25 = swift_allocObject();
  v25[2] = 0xD00000000000002FLL;
  v25[3] = 0x800000010010C3E0;
  v25[4] = sub_1000DE114;
  v25[5] = v24;
  *(v23 + 40) = v25;
  v26 = sub_1000D9944(0xD000000000000011, 0x80000001001066D0, v23, 1, 0);

  *(inited + 64) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_100101160;
  *(v27 + 32) = sub_1000D97D4(0xD000000000000013, 0x8000000100103430, 0);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_100101150;
  *(v28 + 32) = sub_1000D9604(0xD000000000000013, 0x8000000100103430, &off_1001263C0, 0, 0, &type metadata for Bool, &unk_10012DDC0, sub_1000DE354);
  *(v28 + 40) = sub_1000D9604(0xD000000000000010, 0x8000000100103410, &off_1001263E8, 1, 0, &type metadata for Bool, &unk_10012DDC0, sub_1000DE354);
  v29._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v29);

  v30 = swift_allocObject();
  *(v30 + 16) = v28;
  v31 = swift_allocObject();
  v31[2] = 0x203A464F204C4C41;
  v31[3] = 0xE800000000000000;
  v31[4] = sub_1000DE11C;
  v31[5] = v30;
  *(v27 + 40) = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = xmmword_100101150;
  *(v32 + 32) = sub_1000D9604(0xD000000000000013, 0x8000000100103430, &off_100126410, 0, 0, &type metadata for Bool, &unk_10012DDC0, sub_1000DE354);
  *(v32 + 40) = sub_1000D9ACC(0xD000000000000011, 0x80000001001066D0, 1, 2, 0, 0);
  v33._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v33);

  v34 = swift_allocObject();
  *(v34 + 16) = v32;
  v35 = swift_allocObject();
  v35[2] = 0x203A464F204C4C41;
  v35[3] = 0xE800000000000000;
  v35[4] = sub_1000DEDB8;
  v35[5] = v34;
  *(v27 + 48) = v35;
  v36._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v36);

  v37 = swift_allocObject();
  *(v37 + 16) = v27;
  v38 = swift_allocObject();
  v38[2] = 0x203A464F20594E41;
  v38[3] = 0xE800000000000000;
  v38[4] = sub_1000DEDBC;
  v38[5] = v37;
  *(inited + 72) = v38;
  v39 = swift_allocObject();
  *(v39 + 16) = xmmword_100101150;
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_100101150;
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_100101150;
  *(v41 + 32) = sub_1000DE124(0xD000000000000015, 0x800000010010C410);
  *(v41 + 40) = sub_1000DE124(0xD000000000000018, 0x800000010010C430);
  v42._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v42);

  v43 = swift_allocObject();
  *(v43 + 16) = v41;
  v44 = swift_allocObject();
  v44[2] = 0x203A464F20594E41;
  v44[3] = 0xE800000000000000;
  v44[4] = sub_1000DEDBC;
  v44[5] = v43;
  *(v40 + 32) = v44;
  v45 = qword_10014E8C0;
  v46 = *algn_10014E8C8;

  v47 = sub_1000D9D48(v45, v46, 0x6C7070612E6D6F63, 0xE900000000000065, 0, 0);

  *(v40 + 40) = v47;
  v48._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v48);

  v49 = swift_allocObject();
  *(v49 + 16) = v40;
  v50 = swift_allocObject();
  v50[2] = 0x203A464F204C4C41;
  v50[3] = 0xE800000000000000;
  v50[4] = sub_1000DEDB8;
  v50[5] = v49;
  *(v39 + 32) = v50;
  v51 = swift_allocObject();
  *(v51 + 16) = xmmword_100101170;
  *(v51 + 32) = sub_1000D97D4(0xD000000000000015, 0x800000010010C450, 0);
  v52 = sub_1000D9944(0xD000000000000011, 0x80000001001066D0, v51, 1, 0);

  *(v39 + 40) = v52;
  _StringGuts.grow(_:)(33);

  v53._countAndFlagsBits = 0xD000000000000015;
  v53._object = 0x800000010010C450;
  String.append(_:)(v53);
  v54._countAndFlagsBits = 0xD000000000000017;
  v54._object = 0x800000010010C470;
  String.append(_:)(v54);

  v55._countAndFlagsBits = 0x464F20594E412820;
  v55._object = 0xEA0000000000203ALL;
  String.append(_:)(v55);
  v56._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v56);

  v57._countAndFlagsBits = 41;
  v57._object = 0xE100000000000000;
  String.append(_:)(v57);

  v58 = swift_allocObject();
  *(v58 + 16) = v39;
  v59 = swift_allocObject();
  v59[2] = 0x20676E696B6E694CLL;
  v59[3] = 0xE800000000000000;
  v59[4] = sub_1000DEDBC;
  v59[5] = v58;
  *(inited + 80) = v59;
  result = sub_100030BA0(inited);
  qword_10014EAC8 = v61;
  return result;
}

void *sub_1000D9424(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v10 = 0xE000000000000000;
  _StringGuts.grow(_:)(65);
  v11._countAndFlagsBits = 0x79747265706F7250;
  v11._object = 0xEA00000000002720;
  String.append(_:)(v11);

  v12._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v12);

  v13._object = 0x800000010010C650;
  v13._countAndFlagsBits = 0xD000000000000033;
  String.append(_:)(v13);
  v14._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v14);

  if (a4)
  {
    v15 = 0x20656220726F202CLL;
  }

  else
  {
    v15 = 0;
  }

  if (a4)
  {
    v10 = 0xEE00746E65736261;
  }

  v16._countAndFlagsBits = v15;
  v16._object = v10;
  String.append(_:)(v16);

  v17 = swift_allocObject();
  *(v17 + 16) = a1;
  *(v17 + 24) = a2;
  *(v17 + 32) = a4;
  *(v17 + 40) = a5;
  *(v17 + 48) = a3;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v18 = swift_allocObject();
  v18[2] = 0;
  v18[3] = 0xE000000000000000;
  v18[4] = sub_1000DE544;
  v18[5] = v17;

  return v18;
}

void *sub_1000D9604(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(45);

  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  v15._object = 0x800000010010C5B0;
  v15._countAndFlagsBits = 0xD00000000000001FLL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v16);

  if (a4)
  {
    v17 = 0x20656220726F202CLL;
  }

  else
  {
    v17 = 0;
  }

  if (a4)
  {
    v13 = 0xEE00746E65736261;
  }

  v18._countAndFlagsBits = v17;
  v18._object = v13;
  String.append(_:)(v18);

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a4;
  *(v19 + 40) = a5;
  *(v19 + 48) = a3;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v20 = swift_allocObject();
  v20[2] = 0x79747265706F7250;
  v20[3] = 0xEA00000000002720;
  v20[4] = a8;
  v20[5] = v19;

  return v20;
}

void *sub_1000D97D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  _StringGuts.grow(_:)(30);

  v6._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v6);

  v7._object = 0x800000010010C630;
  v7._countAndFlagsBits = 0xD000000000000012;
  String.append(_:)(v7);
  v8 = swift_allocObject();
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v9 = swift_allocObject();
  v9[2] = 0x79747265706F7250;
  v9[3] = 0xEA00000000002720;
  v9[4] = sub_1000DE4A8;
  v9[5] = v8;

  return v9;
}

BOOL sub_1000D9908(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];
  v3._object = 0x800000010010C5F0;
  v3._countAndFlagsBits = 0xD000000000000011;
  return !String.hasPrefix(_:)(v3);
}

void *sub_1000D9944(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  _StringGuts.grow(_:)(36);

  v10._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v10);

  v11._countAndFlagsBits = 0x6173207473756D20;
  v11._object = 0xEF203A7966736974;
  String.append(_:)(v11);
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v12._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v12);

  v13 = swift_allocObject();
  *(v13 + 16) = a1;
  *(v13 + 24) = a2;
  *(v13 + 32) = a4;
  *(v13 + 40) = a5;
  *(v13 + 48) = a3;
  v14 = swift_allocObject();
  v14[2] = 0xD000000000000011;
  v14[3] = 0x800000010010C5D0;
  v14[4] = sub_1000DE36C;
  v14[5] = v13;

  return v14;
}

void *sub_1000D9ACC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, uint64_t a6)
{
  _StringGuts.grow(_:)(81);
  v12._countAndFlagsBits = 0x79747265706F7250;
  v12._object = 0xEA00000000002720;
  String.append(_:)(v12);

  v13._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 0xD000000000000021;
  v14._object = 0x800000010010C540;
  String.append(_:)(v14);
  v15._object = 0x800000010010C570;
  v15._countAndFlagsBits = 0xD00000000000001ALL;
  String.append(_:)(v15);
  v16._countAndFlagsBits = 0xD00000000000001BLL;
  v16._object = 0x800000010010C590;
  String.append(_:)(v16);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  v18._countAndFlagsBits = 8236;
  v18._object = 0xE200000000000000;
  String.append(_:)(v18);
  v19._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v19);

  v20._countAndFlagsBits = 41;
  v20._object = 0xE100000000000000;
  String.append(_:)(v20);
  if (a5)
  {
    v21 = 0x20656220726F202CLL;
  }

  else
  {
    v21 = 0;
  }

  if (a5)
  {
    v22 = 0xEE00746E65736261;
  }

  else
  {
    v22 = 0xE000000000000000;
  }

  v23._countAndFlagsBits = v21;
  v23._object = v22;
  String.append(_:)(v23);

  v24 = swift_allocObject();
  *(v24 + 16) = a1;
  *(v24 + 24) = a2;
  *(v24 + 32) = a5;
  *(v24 + 40) = a6;
  *(v24 + 48) = a3;
  *(v24 + 56) = a4;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v25 = swift_allocObject();
  v25[2] = 0;
  v25[3] = 0xE000000000000000;
  v25[4] = sub_1000DE31C;
  v25[5] = v24;

  return v25;
}

void *sub_1000D9D48(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5, uint64_t a6)
{
  v12 = 0xE000000000000000;
  _StringGuts.grow(_:)(53);
  v13._countAndFlagsBits = 0x79747265706F7250;
  v13._object = 0xEA00000000002720;
  String.append(_:)(v13);

  v14._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v14);

  v15._object = 0x800000010010C490;
  v15._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v15);
  v16._countAndFlagsBits = a3;
  v16._object = a4;
  String.append(_:)(v16);
  if (a5)
  {
    v17 = 0x20656220726F202CLL;
  }

  else
  {
    v17 = 0;
  }

  if (a5)
  {
    v12 = 0xEE00746E65736261;
  }

  v18._countAndFlagsBits = v17;
  v18._object = v12;
  String.append(_:)(v18);

  v19 = swift_allocObject();
  *(v19 + 16) = a1;
  *(v19 + 24) = a2;
  *(v19 + 32) = a5;
  *(v19 + 40) = a6;
  *(v19 + 48) = a3;
  *(v19 + 56) = a4;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v20 = swift_allocObject();
  v20[2] = 0;
  v20[3] = 0xE000000000000000;
  v20[4] = sub_1000DE28C;
  v20[5] = v19;

  return v20;
}

uint64_t sub_1000D9F18()
{
  v1 = v0[2];

  sub_100013954((v0 + 3));
  sub_10000A184(v0 + OBJC_IVAR____TtC10driverkitd11OSExtension_originURL, &unk_1001389D0, &qword_1000F4F60);
  v2 = *(v0 + OBJC_IVAR____TtC10driverkitd11OSExtension_digest);
  v3 = *(v0 + OBJC_IVAR____TtC10driverkitd11OSExtension_digest + 8);
  sub_100014988();
  v4 = *(*v0 + 48);
  v5 = *(*v0 + 52);

  return swift_deallocClassInstance();
}

uint64_t sub_1000D9FD8()
{
  if (qword_100133B48 != -1)
  {
    swift_once();
  }

  v0 = qword_10014EAC0;
  sub_100003CDC(&qword_100135050, &qword_1000F4F10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100101180;
  v2 = qword_100133A50;

  if (v2 != -1)
  {
    swift_once();
  }

  v3 = qword_10014E8C0;
  v4 = *algn_10014E8C8;

  v5 = sub_1000D9424(v3, v4, 63, 0, 0);

  *(inited + 32) = v5;
  if (qword_100133A60 != -1)
  {
    swift_once();
  }

  v6 = qword_10014E8E0;
  v7 = *algn_10014E8E8;

  v8 = sub_1000D9604(v6, v7, &off_100126438, 0, 0, &type metadata for String, &unk_10012DE88, sub_1000DE4F4);

  *(inited + 40) = v8;
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_100101150;
  *(v9 + 32) = sub_1000D97D4(0xD000000000000010, 0x8000000100106710, 0);
  *(v9 + 40) = sub_1000D9604(0xD000000000000010, 0x8000000100106710, &off_100126468, 0, 0, &type metadata for String, &unk_10012DE88, sub_1000DE4F4);
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v10._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v10);

  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  v12 = swift_allocObject();
  v12[2] = 0x203A464F20594E41;
  v12[3] = 0xE800000000000000;
  v12[4] = sub_1000DEDBC;
  v12[5] = v11;
  *(inited + 48) = v12;
  _StringGuts.grow(_:)(39);

  v13._countAndFlagsBits = Array.description.getter();
  String.append(_:)(v13);

  v14._countAndFlagsBits = 39;
  v14._object = 0xE100000000000000;
  String.append(_:)(v14);
  v15 = swift_allocObject();
  *(v15 + 16) = &off_1001264A8;
  v16 = swift_allocObject();
  v16[2] = 0xD000000000000024;
  v16[3] = 0x800000010010C6B0;
  v16[4] = sub_1000DE5FC;
  v16[5] = v15;
  *(inited + 56) = v16;
  result = sub_100030BA0(inited);
  qword_10014EAD0 = v0;
  return result;
}

uint64_t sub_1000DA384(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = *(v4 + 48);
  v10 = *(v4 + 52);
  v11 = swift_allocObject();
  v12 = OBJC_IVAR____TtC10driverkitd11OSExtension_originURL;
  v13 = type metadata accessor for URL();
  (*(*(v13 - 8) + 56))(v11 + v12, 1, 1, v13);
  v14 = (v11 + OBJC_IVAR____TtC10driverkitd11OSExtension_digest);
  *v14 = a3;
  v14[1] = a4;
  sub_100014988();
  *(v11 + 16) = a2;
  v15 = a1[1];
  *(v11 + 24) = *a1;
  *(v11 + 40) = v15;
  *(v11 + 49) = *(a1 + 25);
  return v11;
}

__n128 sub_1000DA4C4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1000DA4D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1000DA514(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1000DA560(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1000DA59C()
{
  result = qword_100139090;
  if (!qword_100139090)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_100139090);
  }

  return result;
}

uint64_t sub_1000DA5F0()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1000D7374();
  String.hash(into:)();

  v6 = sub_1000D76D4();
  Hasher._combine(_:)(v6);
  result = sub_1000138F8(v0 + 24, v15);
  if (v16)
  {
    if (v16 == 1)
    {
      v8 = *&v15[0];
      sub_10009C5E0(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v8 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v15, v12);
    v9 = v13;
    v10 = v14;
    sub_100003C4C(v12, v13);
    (*(v10 + 64))(v9, v10);
    sub_10009C5E0(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
    return sub_100003C90(v12);
  }

  return result;
}

Swift::Int sub_1000DA820()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v6)
  {
    v7 = String._bridgeToObjectiveC()();

    v8 = OSKextParseVersionCFString();
  }

  else
  {
    v8 = 0;
  }

  Hasher._combine(_:)(v8);
  sub_1000138F8(v0 + 24, v16);
  if (v17)
  {
    if (v17 == 1)
    {
      v9 = *&v16[0];
      sub_10009C5E0(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v9 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v16, v13);
    v10 = v14;
    v11 = v15;
    sub_100003C4C(v13, v14);
    (*(v11 + 64))(v10, v11);
    sub_10009C5E0(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
    sub_100003C90(v13);
  }

  return Hasher._finalize()();
}

Swift::Int sub_1000DAAE8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Hasher.init(_seed:)();
  v6 = *v0;
  sub_1000D7374();
  String.hash(into:)();

  sub_1000D7614();
  if (v7)
  {
    v8 = String._bridgeToObjectiveC()();

    v9 = OSKextParseVersionCFString();
  }

  else
  {
    v9 = 0;
  }

  Hasher._combine(_:)(v9);
  sub_1000138F8(v6 + 24, v17);
  if (v18)
  {
    if (v18 == 1)
    {
      v10 = *&v17[0];
      sub_10009C5E0(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v10 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v17, v14);
    v11 = v15;
    v12 = v16;
    sub_100003C4C(v14, v15);
    (*(v12 + 64))(v11, v12);
    sub_10009C5E0(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
    sub_100003C90(v14);
  }

  return Hasher._finalize()();
}

uint64_t sub_1000DAEC8()
{
  v1 = type metadata accessor for URL();
  v2 = *(v1 - 8);
  v3 = *(v2 + 64);
  __chkstk_darwin(v1);
  v5 = &v11[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1000138F8(v0, v14);
  if (v15)
  {
    if (v15 == 1)
    {
      v7 = *&v14[0];
      sub_10009C5E0(&qword_1001342B0, &type metadata accessor for URL);
      dispatch thunk of Hashable.hash(into:)();
      Hasher._combine(_:)(*(v7 + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind));
    }
  }

  else
  {
    sub_100009F34(v14, v11);
    v8 = v12;
    v9 = v13;
    sub_100003C4C(v11, v12);
    (*(v9 + 64))(v8, v9);
    sub_10009C5E0(&qword_1001342B0, &type metadata accessor for URL);
    dispatch thunk of Hashable.hash(into:)();
    (*(v2 + 8))(v5, v1);
    return sub_100003C90(v11);
  }

  return result;
}

Swift::Int sub_1000DB0C4()
{
  Hasher.init(_seed:)();
  sub_1000DAEC8();
  return Hasher._finalize()();
}

Swift::Int sub_1000DB108()
{
  Hasher.init(_seed:)();
  sub_1000DAEC8();
  return Hasher._finalize()();
}

BOOL sub_1000DB18C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v14[0] = a3;
  v14[1] = a4;
  v7 = a1[3];
  v8 = a1[4];
  sub_100003C4C(a1, v7);
  (*(v8 + 8))(&v11, v14, a2, &type metadata for String, &protocol witness table for String, v7, v8);
  v9 = v12;
  if (v12)
  {
    sub_10000B48C(&v11, v13);
    if (a5)
    {
      sub_10000B48C(v13, a5);
    }

    else
    {
      sub_100003C90(v13);
    }
  }

  else
  {
    sub_10000A184(&v11, &qword_1001343C8, &unk_1000F3CA0);
  }

  return v9 == 0;
}

uint64_t sub_1000DB260(void *a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (!v3)
  {
    return 1;
  }

  v6 = v3 - 1;
  v7 = (a3 + 40);
  do
  {
    v8 = *v7;
    v19[0] = *(v7 - 1);
    v19[1] = v8;
    v10 = a1[3];
    v9 = a1[4];
    sub_100003C4C(a1, v10);
    v11 = *(v9 + 8);

    v11(v17, v19, a2, &type metadata for String, &protocol witness table for String, v10, v9);

    v12 = v18;
    v13 = v18 == 0;
    sub_10000A184(v17, &qword_1001343C8, &unk_1000F3CA0);
    v15 = v6-- != 0;
    if (v12)
    {
      break;
    }

    v7 += 2;
  }

  while (v15);
  return v13;
}

uint64_t sub_1000DB364(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6)
{
  v17[0] = a3;
  v17[1] = a4;
  v9 = a1[3];
  v10 = a1[4];
  sub_100003C4C(a1, v9);
  (*(v10 + 8))(&v14, v17, a2, &type metadata for String, &protocol witness table for String, v9, v10);
  if (v15)
  {
    sub_10000B48C(&v14, v16);
    sub_10000B430(v16, &v14);
    if ((swift_dynamicCast() & 1) != 0 && v13)
    {
      if (a6)
      {
        *a6 = v12;
        a6[1] = v13;
        sub_100003C90(v16);
      }

      else
      {
        sub_100003C90(v16);
      }

      a5 = 1;
    }

    else
    {
      sub_100003C90(v16);

      a5 = 0;
    }
  }

  else
  {
    sub_10000A184(&v14, &qword_1001343C8, &unk_1000F3CA0);
  }

  return a5 & 1;
}

uint64_t sub_1000DB4AC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t *a7, uint64_t *a8)
{
  v20[0] = a3;
  v20[1] = a4;
  v13 = a1[3];
  v14 = a1[4];
  sub_100003C4C(a1, v13);
  (*(v14 + 8))(&v17, v20, a2, &type metadata for String, &protocol witness table for String, v13, v14);
  if (v18)
  {
    sub_10000B48C(&v17, v19);
    sub_10000B430(v19, &v17);
    sub_100003CDC(a7, a8);
    if ((swift_dynamicCast() & 1) != 0 && v16)
    {
      if (a6)
      {
        *a6 = v16;
        sub_100003C90(v19);
      }

      else
      {
        sub_100003C90(v19);
      }

      a5 = 1;
    }

    else
    {
      sub_100003C90(v19);

      a5 = 0;
    }
  }

  else
  {
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  return a5 & 1;
}

uint64_t sub_1000DB608(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, _BYTE *a6, uint64_t a7)
{
  v22[0] = a3;
  v22[1] = a4;
  v11 = a1[3];
  v12 = a1[4];
  sub_100003C4C(a1, v11);
  (*(v12 + 8))(&v19, v22, a2, &type metadata for String, &protocol witness table for String, v11, v12);
  if (v20)
  {
    sub_10000B48C(&v19, v21);
    sub_10000B430(v21, &v19);
    if ((swift_dynamicCast() & 1) == 0 || v18 == 2)
    {
      sub_100003C90(v21);
      a5 = 0;
    }

    else
    {
      if (a6)
      {
        *a6 = v18;
      }

      v13 = *(a7 + 16);
      v14 = (a7 + 32);
      do
      {
        v15 = v13-- != 0;
        a5 = v15;
        if (!v15)
        {
          break;
        }

        v16 = *v14++;
      }

      while (v16 != (v18 & 1));
      sub_100003C90(v21);
    }
  }

  else
  {
    sub_10000A184(&v19, &qword_1001343C8, &unk_1000F3CA0);
  }

  return a5 & 1;
}

uint64_t sub_1000DB75C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5, void *a6, uint64_t a7)
{
  v23[0] = a3;
  v23[1] = a4;
  v11 = a1[3];
  v12 = a1[4];
  sub_100003C4C(a1, v11);
  (*(v12 + 8))(&v20, v23, a2, &type metadata for String, &protocol witness table for String, v11, v12);
  if (!v21)
  {
    sub_10000A184(&v20, &qword_1001343C8, &unk_1000F3CA0);
    return a5 & 1;
  }

  sub_10000B48C(&v20, v22);
  sub_10000B430(v22, &v20);
  v13 = swift_dynamicCast();
  if ((v13 & 1) == 0)
  {
    v18 = 0;
    v19 = 0;
    goto LABEL_9;
  }

  v14 = v19;
  if (!v19)
  {
LABEL_9:
    sub_100003C90(v22);

    a5 = 0;
    return a5 & 1;
  }

  v15 = v18;
  if (a6)
  {
    *a6 = v18;
    a6[1] = v14;
  }

  *&v20 = v15;
  *(&v20 + 1) = v14;
  __chkstk_darwin(v13);
  v17[2] = &v20;
  a5 = sub_1000C7758(sub_100041C40, v17, a7);
  sub_100003C90(v22);

  return a5 & 1;
}

BOOL sub_1000DB8F8(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5, void *a6, uint64_t a7)
{
  v20[0] = a3;
  v20[1] = a4;
  v11 = a1[3];
  v12 = a1[4];
  sub_100003C4C(a1, v11);
  (*(v12 + 8))(&v17, v20, a2, &type metadata for String, &protocol witness table for String, v11, v12);
  if (v18)
  {
    sub_10000B48C(&v17, v19);
    sub_10000B430(v19, &v17);
    if (swift_dynamicCast())
    {
      if (a6)
      {
        *a6 = v15;
        a6[1] = v16;
      }

      v13 = String.count.getter();

      sub_100003C90(v19);
      return v13 <= a7;
    }

    else
    {
      sub_100003C90(v19);
      return 0;
    }
  }

  else
  {
    sub_10000A184(&v17, &qword_1001343C8, &unk_1000F3CA0);
  }

  return a5;
}

BOOL sub_1000DBA40(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, Swift::Bool a5, void *a6, uint64_t a7, void *a8)
{
  v22[0] = a3;
  v22[1] = a4;
  v13 = a1[3];
  v14 = a1[4];
  sub_100003C4C(a1, v13);
  (*(v14 + 8))(&v19, v22, a2, &type metadata for String, &protocol witness table for String, v13, v14);
  if (v20)
  {
    sub_10000B48C(&v19, v21);
    sub_10000B430(v21, &v19);
    if (swift_dynamicCast())
    {
      if (a6)
      {
        *a6 = v17;
        a6[1] = v18;
      }

      v15._countAndFlagsBits = a7;
      v15._object = a8;
      a5 = String.hasPrefix(_:)(v15);

      sub_100003C90(v21);
    }

    else
    {
      sub_100003C90(v21);
      return 0;
    }
  }

  else
  {
    sub_10000A184(&v19, &qword_1001343C8, &unk_1000F3CA0);
  }

  return a5;
}

BOOL sub_1000DBB94(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5, void *a6, uint64_t a7, uint64_t a8)
{
  v22[0] = a3;
  v22[1] = a4;
  v13 = a1[3];
  v14 = a1[4];
  sub_100003C4C(a1, v13);
  (*(v14 + 8))(&v19, v22, a2, &type metadata for String, &protocol witness table for String, v13, v14);
  if (v20)
  {
    sub_10000B48C(&v19, v21);
    sub_10000B430(v21, &v19);
    sub_100003CDC(&unk_1001373A0, &unk_1000F91B0);
    if ((swift_dynamicCast() & 1) != 0 && v18)
    {
      if (a6)
      {
        *a6 = v18;
      }

      sub_100003C90(v21);
      v15 = *(v18 + 16);

      return v15 >= a7 && v15 < a8;
    }

    else
    {
      sub_100003C90(v21);

      return 0;
    }
  }

  else
  {
    sub_10000A184(&v19, &qword_1001343C8, &unk_1000F3CA0);
  }

  return a5;
}

BOOL sub_1000DBD00(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5, uint64_t a6)
{
  v16[0] = a3;
  v16[1] = a4;
  v9 = a1[3];
  v10 = a1[4];
  sub_100003C4C(a1, v9);
  (*(v10 + 8))(&v13, v16, a2, &type metadata for String, &protocol witness table for String, v9, v10);
  if (v14)
  {
    sub_10000B48C(&v13, v15);
    sub_10000B430(v15, &v13);
    if (swift_dynamicCast())
    {
      String.utf8CString.getter();

      v11 = OSKextParseVersionString();

      if (a6)
      {
        *a6 = v11;
        *(a6 + 8) = 0;
      }

      sub_100003C90(v15);
      return v11 > 0;
    }

    else
    {
      sub_100003C90(v15);
      return 0;
    }
  }

  else
  {
    sub_10000A184(&v13, &qword_1001343C8, &unk_1000F3CA0);
  }

  return a5;
}

BOOL sub_1000DBE50(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, BOOL a5, uint64_t a6, unint64_t a7)
{
  v27[0] = a3;
  v27[1] = a4;
  v11 = a1[3];
  v12 = a1[4];
  sub_100003C4C(a1, v11);
  (*(v12 + 8))(v23, v27, a2, &type metadata for String, &protocol witness table for String, v11, v12);
  if (!v24)
  {
    sub_10000A184(v23, &qword_1001343C8, &unk_1000F3CA0);
    return a5;
  }

  sub_10000B48C(v23, v26);
  sub_10000B430(v26, v23);
  v13 = sub_100003CDC(&unk_1001373A0, &unk_1000F91B0);
  v14 = swift_dynamicCast();
  if ((v14 & 1) == 0)
  {
    *&v21[0] = 0;
    goto LABEL_11;
  }

  if (!*&v21[0])
  {
LABEL_11:
    sub_100003C90(v26);

    return 0;
  }

  v24 = v13;
  v25 = &off_10012E0A8;
  v23[0] = *&v21[0];
  if (a6)
  {
    v14 = sub_10000A990(v23, v21);
    v15 = v22;
    v16 = v21[1];
    *a6 = v21[0];
    *(a6 + 16) = v16;
    *(a6 + 32) = v15;
  }

  __chkstk_darwin(v14);
  v20[2] = v23;
  v20[3] = 0;

  v17 = sub_10007B4B4(sub_1000DE384, v20, a7);
  if (v17 >> 62)
  {
    v18 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v18 = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  sub_100003C90(v26);
  a5 = v18 == 0;
  sub_100003C90(v23);
  return a5;
}

BOOL sub_1000DC064(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = a1[3];
  v7 = a1[4];
  sub_100003C4C(a1, v6);
  v8 = swift_allocObject();
  *(v8 + 16) = a3;
  *(v8 + 24) = a4;
  v9 = *(v7 + 16);

  v10 = v9(sub_1000DE3DC, v8, &type metadata for String, &protocol witness table for String, v6, v7);

  v11 = *(v10 + 16);

  return v11 == 0;
}

BOOL sub_1000DC13C(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 != v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v11 = *(v10 + 40);
    LOBYTE(v11) = (*(v10 + 32))(a1, a2);

    v8 = v9 + 1;
  }

  while ((v11 & 1) == 0);
  return v7 != v9;
}

BOOL sub_1000DC238(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v6 = a3 & 0xFFFFFFFFFFFFFF8;
  if (a3 >> 62)
  {
LABEL_15:
    v7 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v8 = 0;
  do
  {
    v9 = v8;
    if (v7 == v8)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v10 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      if (__OFADD__(v9, 1))
      {
LABEL_12:
        __break(1u);
        return v7 == v9;
      }
    }

    else
    {
      if (v8 >= *(v6 + 16))
      {
        __break(1u);
        goto LABEL_15;
      }

      v10 = *(a3 + 8 * v8 + 32);

      if (__OFADD__(v9, 1))
      {
        goto LABEL_12;
      }
    }

    v11 = *(v10 + 40);
    LOBYTE(v11) = (*(v10 + 32))(a1, a2);

    v8 = v9 + 1;
  }

  while ((v11 & 1) != 0);
  return v7 == v9;
}

uint64_t sub_1000DC334(uint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_15;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = _CocoaArrayWrapper.endIndex.getter())
  {
    v7 = 0;
    v8 = 0;
    while ((a3 & 0xC000000000000001) != 0)
    {
      v9 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        goto LABEL_13;
      }

LABEL_10:
      v11 = *(v9 + 40);
      v12 = (*(v9 + 32))(a1, a2);

      if (v12 & v8)
      {
        goto LABEL_16;
      }

      v8 |= v12;
      ++v7;
      if (v10 == i)
      {
        return v8 & 1;
      }
    }

    if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_14;
    }

    v9 = *(a3 + 8 * v7 + 32);

    v10 = v7 + 1;
    if (!__OFADD__(v7, 1))
    {
      goto LABEL_10;
    }

LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    ;
  }

LABEL_16:
  LOBYTE(v8) = 0;
  return v8 & 1;
}

uint64_t sub_1000DC458(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_100003CDC(&qword_100134BF8, &qword_1000F4520);
  v9 = *(*(v8 - 8) + 64);
  __chkstk_darwin(v8 - 8);
  v11 = &v63 - v10;
  v80[0] = a3;
  v80[1] = a4;
  v12 = a1[3];
  v13 = a1[4];
  sub_100003C4C(a1, v12);
  (*(v13 + 8))(&v76, v80, a2, &type metadata for String, &protocol witness table for String, v12, v13);
  if (!v79)
  {
    sub_10000A184(&v76, &qword_1001343C8, &unk_1000F3CA0);
    return 0;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
    return 0;
  }

  v15 = v74;
  v14 = v75;
  v76 = v74;
  v77 = v75;
  v74 = 0x6867697279706F43;
  v75 = 0xAD000020A9C22074;
  v16 = type metadata accessor for Locale();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v19 = v17 + 56;
  v18(v11, 1, 1, v16);
  v20 = sub_100012814();
  StringProtocol.range<A>(of:options:range:locale:)();
  v22 = v21;
  v24 = v23;
  sub_10000A184(v11, &qword_100134BF8, &qword_1000F4520);
  if (v24)
  {
    goto LABEL_5;
  }

  v76 = v15;
  v77 = v14;
  v74 = 0xD000000000000020;
  v75 = 0x800000010010C4F0;
  v18(v11, 1, 1, v16);
  v25 = StringProtocol.range<A>(of:options:range:locale:)();
  v27 = v26;
  sub_10000A184(v11, &qword_100134BF8, &qword_1000F4520);
  if (v27)
  {
LABEL_5:

    return 0;
  }

  v72 = v20;
  v69 = v19;
  if (v25 >> 14 < v22 >> 14)
  {
    goto LABEL_42;
  }

  v15 = String.subscript.getter();
  v22 = v29;
  v20 = v30;
  v32 = v31;

  v33 = v15 >> 14;
  if (v15 >> 14 == v22 >> 14)
  {
    goto LABEL_28;
  }

  v65 = v18;
  v66 = v16;
  v67 = v11;
  v27 = _swiftEmptyArrayStorage;
  v34 = v15;
  v11 = v15;
  v71 = v32;
  v73 = v22 >> 14;
  do
  {
    if (Substring.subscript.getter() == 44 && v37 == 0xE100000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
    }

    else
    {
      v49 = Character.isWhitespace.getter();

      if ((v49 & 1) == 0)
      {
        v36 = Substring.index(after:)();
        goto LABEL_13;
      }
    }

    if (v34 >> 14 != v33)
    {
      if (v33 < v34 >> 14)
      {
        __break(1u);
        goto LABEL_41;
      }

      v38 = Substring.subscript.getter();
      v40 = v39;
      v42 = v41;
      v44 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v27 = sub_100031B10(0, *(v27 + 2) + 1, 1, v27);
      }

      v45 = v27;
      v46 = *(v27 + 2);
      v47 = v45;
      v48 = *(v45 + 3);
      if (v46 >= v48 >> 1)
      {
        v47 = sub_100031B10((v48 > 1), v46 + 1, 1, v47);
      }

      *(v47 + 2) = v46 + 1;
      v35 = &v47[32 * v46];
      v27 = v47;
      *(v35 + 4) = v38;
      *(v35 + 5) = v40;
      *(v35 + 6) = v42;
      *(v35 + 7) = v44;
    }

    v36 = Substring.index(after:)();
    v34 = v36;
LABEL_13:
    v11 = v36;
    v33 = v36 >> 14;
  }

  while (v36 >> 14 != v73);
  if (v34 >> 14 != v73)
  {
    if (v73 >= v34 >> 14)
    {
      v15 = Substring.subscript.getter();
      v22 = v50;
      v20 = v51;
      v11 = v52;

      if (swift_isUniquelyReferenced_nonNull_native())
      {
        goto LABEL_31;
      }

      goto LABEL_44;
    }

    goto LABEL_43;
  }

  v68 = *(v27 + 2);
  if (v68)
  {
    while (1)
    {
      v56 = 0;
      v63 = v27;
      v64 = 0x800000010010C520;
      v57 = (v27 + 56);
      v58 = v67;
      v20 = v69;
      while (v56 < *(v27 + 2))
      {
        v15 = *v57;
        v73 = *(v57 - 1);
        v11 = *(v57 - 3);
        v71 = *(v57 - 2);
        v76 = v11;
        v77 = v71;
        v78 = v73;
        v79 = v15;
        v74 = 0x347B5D392D305B5ELL;
        v75 = 0xEA0000000000247DLL;
        v22 = v65;
        v59 = v66;
        v65(v58, 1, 1, v66);
        sub_10006B7D8();

        StringProtocol.range<A>(of:options:range:locale:)();
        v70 = v60;
        sub_10000A184(v58, &qword_100134BF8, &qword_1000F4520);
        v76 = v11;
        v77 = v71;
        v78 = v73;
        v79 = v15;
        v74 = 0xD000000000000013;
        v75 = v64;
        (v22)(v58, 1, 1, v59);
        StringProtocol.range<A>(of:options:range:locale:)();
        v62 = v61;
        sub_10000A184(v58, &qword_100134BF8, &qword_1000F4520);

        if (v62 & 1) != 0 && (v70)
        {
          goto LABEL_5;
        }

        ++v56;
        v57 += 4;
        v27 = v63;
        if (v68 == v56)
        {
          goto LABEL_28;
        }
      }

LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      v27 = sub_100031B10(0, *(v27 + 2) + 1, 1, v27);
LABEL_31:
      v54 = *(v27 + 2);
      v53 = *(v27 + 3);
      v68 = v54 + 1;
      if (v54 >= v53 >> 1)
      {
        v27 = sub_100031B10((v53 > 1), v68, 1, v27);
      }

      *(v27 + 2) = v68;
      v55 = &v27[32 * v54];
      *(v55 + 4) = v15;
      *(v55 + 5) = v22;
      *(v55 + 6) = v20;
      *(v55 + 7) = v11;
    }
  }

LABEL_28:

  return 1;
}

uint64_t sub_1000DCBA8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for URL();
  v5 = *(v4 - 8);
  v6 = *(v5 + 64);
  v7 = __chkstk_darwin(v4);
  v9 = &v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v7);
  v11 = &v52 - v10;
  sub_1000138F8(a1, v65);
  sub_1000138F8(a2, v67);
  if (!v66)
  {
    sub_1000138F8(v65, v64);
    if (v68)
    {
      sub_100003C90(v64);
      goto LABEL_16;
    }

    sub_100009F34(v64, v61);
    sub_100009F34(v67, v58);
    v16 = v62;
    v17 = v63;
    sub_100003C4C(v61, v62);
    v18 = (*(v17 + 32))(v16, v17);
    if (!v18)
    {
      v22 = v5;
LABEL_34:
      v53 = 0;
      v54 = 0;
      goto LABEL_35;
    }

    v19 = v18;
    if (qword_100133A70 == -1)
    {
      if (*(v18 + 16))
      {
        goto LABEL_21;
      }
    }

    else
    {
      swift_once();
      if (*(v19 + 16))
      {
LABEL_21:
        v20 = sub_100061588(qword_10014E900, *algn_10014E908);
        if (v21)
        {
          v22 = v5;
          sub_10000B430(*(v19 + 56) + 32 * v20, v57);

          v23 = swift_dynamicCast();
          if (v23)
          {
            v24 = v55;
          }

          else
          {
            v24 = 0;
          }

          if (v23)
          {
            v25 = v56;
          }

          else
          {
            v25 = 0;
          }

          v53 = v24;
          v54 = v25;
LABEL_35:
          v26 = v59;
          v27 = v60;
          sub_100003C4C(v58, v59);
          v28 = (*(v27 + 32))(v26, v27);
          if (!v28)
          {
LABEL_47:
            v33 = 0;
            v34 = 0;
            goto LABEL_48;
          }

          v29 = v28;
          if (qword_100133A70 == -1)
          {
            if (*(v28 + 16))
            {
              goto LABEL_38;
            }
          }

          else
          {
            swift_once();
            if (*(v29 + 16))
            {
LABEL_38:
              v30 = sub_100061588(qword_10014E900, *algn_10014E908);
              if (v31)
              {
                sub_10000B430(*(v29 + 56) + 32 * v30, v57);

                v32 = swift_dynamicCast();
                if (v32)
                {
                  v33 = v55;
                }

                else
                {
                  v33 = 0;
                }

                if (v32)
                {
                  v34 = v56;
                }

                else
                {
                  v34 = 0;
                }

LABEL_48:
                v36 = v62;
                v35 = v63;
                sub_100003C4C(v61, v62);
                (*(v35 + 64))(v36, v35);
                v37 = v59;
                v38 = v60;
                sub_100003C4C(v58, v59);
                (*(v38 + 64))(v37, v38);
                v39 = static URL.== infix(_:_:)();
                v40 = *(v22 + 8);
                v40(v9, v4);
                v40(v11, v4);
                if (v39)
                {
                  v41 = v62;
                  v42 = v63;
                  sub_100003C4C(v61, v62);
                  v43 = (*(v42 + 24))(v41, v42);
                  v45 = v44;
                  v46 = v59;
                  v47 = v60;
                  sub_100003C4C(v58, v59);
                  v48 = (*(v47 + 24))(v46, v47);
                  v15 = v49;
                  if (!v45)
                  {
                    if (!v49)
                    {
                      goto LABEL_58;
                    }

LABEL_64:

                    v15 = 0;
                    goto LABEL_65;
                  }

                  if (!v49)
                  {

LABEL_65:
                    sub_100003C90(v58);
                    sub_100003C90(v61);
LABEL_66:
                    sub_100013954(v65);
                    return v15 & 1;
                  }

                  if (v43 == v48 && v45 == v49)
                  {

                    goto LABEL_58;
                  }

                  v50 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v50)
                  {
LABEL_58:
                    if (v54)
                    {
                      if (v34)
                      {
                        if (v53 == v33 && v54 == v34)
                        {

                          v15 = 1;
                        }

                        else
                        {
                          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
                        }

                        goto LABEL_65;
                      }
                    }

                    else if (!v34)
                    {
                      v15 = 1;
                      goto LABEL_65;
                    }

                    goto LABEL_64;
                  }
                }

                goto LABEL_64;
              }
            }
          }

          goto LABEL_47;
        }
      }
    }

    v22 = v5;

    goto LABEL_34;
  }

  if (v66 == 1)
  {
    sub_1000138F8(v65, v64);
    v12 = *&v64[0];
    if (v68 == 1)
    {
      v13 = *&v67[0];
      if (*(*&v64[0] + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) == *(*&v67[0] + OBJC_IVAR____TtC10driverkitd16KernelCollection_kind) && (static URL.== infix(_:_:)() & 1) != 0)
      {
        if (*(v12 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch) == *(v13 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch) && *(v12 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch + 8) == *(v13 + OBJC_IVAR____TtC10driverkitd16KernelCollection_arch + 8))
        {
          v15 = 1;
        }

        else
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }
      }

      else
      {
        v15 = 0;
      }

      goto LABEL_66;
    }

    goto LABEL_16;
  }

  if (v68 != 2)
  {
LABEL_16:
    sub_10000A184(v65, &qword_100134FA0, &qword_1000F4E50);
    v15 = 0;
    return v15 & 1;
  }

  sub_100013954(v65);
  v15 = 1;
  return v15 & 1;
}

uint64_t sub_1000DD220(uint64_t a1, uint64_t a2)
{
  v4 = sub_1000D7374();
  v6 = v5;
  if (v4 == sub_1000D7374() && v6 == v7)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if (sub_1000D7374() == 0xD000000000000014 && 0x8000000100104280 == v9)
  {

    return 0;
  }

  v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v10)
  {
    return 0;
  }

  sub_1000D7614();
  if (!v11)
  {
    sub_1000D7614();
    if (!v15)
    {
      goto LABEL_16;
    }

    v13 = 0;
    goto LABEL_15;
  }

  v12 = String._bridgeToObjectiveC()();

  v13 = OSKextParseVersionCFString();

  sub_1000D7614();
  if (v14)
  {
LABEL_15:
    v16 = String._bridgeToObjectiveC()();

    v17 = OSKextParseVersionCFString();

    if (v13 != v17)
    {
      return 0;
    }

    goto LABEL_16;
  }

  if (v13)
  {
    return 0;
  }

LABEL_16:

  return sub_1000DCBA8(a1 + 24, a2 + 24);
}

BOOL sub_1000DD3D4(uint64_t a1, uint64_t a2)
{
  v4 = *a1 == *a2 && *(a1 + 8) == *(a2 + 8);
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || *(a1 + 16) != *(a2 + 16))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v13 = *(a2 + 24);
  v14 = v5;
  v6 = v5;
  v7 = v13;
  if (*(&v5 + 1) >> 60 == 15)
  {
    if (*(&v13 + 1) >> 60 == 15)
    {
      sub_1000DEB98(&v14, v12);
      sub_1000DEB98(&v13, v12);
      sub_100014988();
      goto LABEL_14;
    }

LABEL_11:
    sub_1000DEB98(&v14, v12);
    sub_1000DEB98(&v13, v12);
    sub_100014988();
    sub_100014988();
    return 0;
  }

  if (*(&v13 + 1) >> 60 == 15)
  {
    goto LABEL_11;
  }

  sub_1000DEB98(&v14, v12);
  sub_1000DEB98(&v13, v12);
  v9 = sub_10006475C(v6, *(&v6 + 1), v7, *(&v7 + 1));
  sub_100014988();
  sub_100014988();
  if ((v9 & 1) == 0)
  {
    return 0;
  }

LABEL_14:
  v10 = *(a1 + 48);
  v11 = *(a2 + 48);
  if (v10)
  {
    return v11 && (*(a1 + 40) == *(a2 + 40) && v10 == v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0);
  }

  return !v11;
}

uint64_t sub_1000DD570(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_100061588(0xD000000000000015, 0x80000001001066B0), (v3 & 1) != 0))
  {
    sub_10000B430(*(a1 + 56) + 32 * v2, v8);

    if (swift_dynamicCast())
    {
      if (v6 == 0x7972616D697250 && v7 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 0;
      }

      if (v6 == 0x6D6574737953 && v7 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 1;
      }

      if (v6 == 0x7261696C69787541 && v7 == 0xE900000000000079)
      {

        return 2;
      }

      v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v5)
      {
        return 2;
      }
    }
  }

  else
  {
  }

  return 4;
}

uint64_t sub_1000DD70C(uint64_t a1)
{

  v3 = sub_1000DD570(v2);
  if (*(a1 + 16))
  {
    v4 = sub_100061588(0xD000000000000010, 0x8000000100105020);
    v5 = 0xF000000000000000;
    if (v6)
    {
      sub_10000B430(*(a1 + 56) + 32 * v4, &v38);
      v7 = swift_dynamicCast();
      if (v7)
      {
        v8 = v41;
      }

      else
      {
        v8 = 0;
      }

      if (v7)
      {
        v5 = *(&v41 + 1);
      }
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    v8 = 0;
    v5 = 0xF000000000000000;
  }

  v10 = sub_1000CAE64(v9);
  if (!v11)
  {
    v12 = type metadata accessor for KernelExtension(0);
    goto LABEL_15;
  }

  if (v11 == 1)
  {
    v12 = type metadata accessor for DriverExtension(0);
LABEL_15:
    LOBYTE(v38) = v3;
    v40 = 2;
    v13 = *(v12 + 312);

    return v13(&v38, a1, v8, v5);
  }

  sub_100041A00(v10, v11);
  if (qword_100133A50 != -1)
  {
    swift_once();
  }

  v15 = qword_10014E8C0;
  v16 = *algn_10014E8C8;
  if (*(a1 + 16))
  {
    v17 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
    if (v18)
    {
      sub_10000B430(*(a1 + 56) + 32 * v17, &v38);
      v19 = swift_dynamicCast();
      if (v19)
      {
        v38 = v41;
        __chkstk_darwin(v19);
        v37[2] = &v38;
        v20 = sub_1000C7758(sub_100041D28, v37, &off_1001261E0);
        swift_arrayDestroy();

        if (v20)
        {
          v21 = type metadata accessor for KernelExtension(0);
          v22 = *(v21 + 48);
          v23 = *(v21 + 52);
          v24 = swift_allocObject();
          v25 = OBJC_IVAR____TtC10driverkitd11OSExtension_originURL;
          v26 = type metadata accessor for URL();
          (*(*(v26 - 8) + 56))(v24 + v25, 1, 1, v26);
          v27 = (v24 + OBJC_IVAR____TtC10driverkitd11OSExtension_digest);
          *v27 = v8;
          v27[1] = v5;
          sub_100014988();
          *(v24 + 16) = a1;
          *(v24 + 24) = v3;
          v28 = *v39;
          *(v24 + 25) = v38;
          *(v24 + 41) = v28;
          *(v24 + 56) = *&v39[15];
          *(v24 + 64) = 2;

          return v24;
        }
      }

      else
      {
        swift_arrayDestroy();
      }
    }
  }

  if (*(a1 + 16) && (v29 = sub_100061588(v15, v16), (v30 & 1) != 0) && (sub_10000B430(*(a1 + 56) + 32 * v29, &v38), swift_dynamicCast()))
  {
    v32 = *(&v41 + 1);
    v31 = v41;
  }

  else
  {
    v31 = 0;
    v32 = 0;
  }

  static os_log_type_t.error.getter();
  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v33 = swift_allocObject();
  *(v33 + 16) = xmmword_1000F3160;
  *(v33 + 56) = &type metadata for String;
  *(v33 + 64) = sub_100003D24();
  v34 = 0x3E656E6F6E3CLL;
  if (v32)
  {
    v34 = v31;
  }

  v35 = 0xE600000000000000;
  if (v32)
  {
    v35 = v32;
  }

  *(v33 + 32) = v34;
  *(v33 + 40) = v35;
  sub_10001491C();
  v36 = static OS_os_log.default.getter();
  os_log(_:dso:log:_:_:)();

  sub_100014988();
  return 0;
}

uint64_t sub_1000DDB58(void *a1)
{
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  v4 = *(v3 + 64);
  v5 = __chkstk_darwin(v2);
  v7 = &v51[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __chkstk_darwin(v5);
  v9 = &v51[-v8];
  v10 = a1[3];
  v11 = a1[4];
  sub_100003C4C(a1, v10);
  v12 = (*(v11 + 32))(v10, v11);
  if (v12)
  {
    v13 = v12;

    v15 = sub_1000CAE64(v14);
    if (!v16)
    {
      v17 = type metadata accessor for KernelExtension(0);
      goto LABEL_7;
    }

    if (v16 == 1)
    {
      v17 = type metadata accessor for DriverExtension(0);
LABEL_7:
      v25 = v17;
      v26 = a1[3];
      v27 = a1[4];
      sub_100003C4C(a1, v26);
      v28 = (*(v27 + 48))(v26, v27);
      if (v29 >> 60 != 15)
      {
        v36 = v28;
        v37 = v29;
        sub_10000A990(a1, v51);
        v51[40] = 0;
        return (*(v25 + 312))(v51, v13, v36, v37);
      }

      sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
      v30 = swift_allocObject();
      *(v30 + 16) = xmmword_1000F3160;
      v31 = a1[3];
      v32 = a1[4];
      sub_100003C4C(a1, v31);
      (*(v32 + 64))(v31, v32);
      v33 = URL.path.getter();
      v35 = v34;
      (*(v3 + 8))(v9, v2);
      *(v30 + 56) = &type metadata for String;
      *(v30 + 64) = sub_100003D24();
      *(v30 + 32) = v33;
      *(v30 + 40) = v35;
      sub_10001491C();
      v24 = static OS_os_log.default.getter();
      static os_log_type_t.default.getter();
      goto LABEL_9;
    }

    sub_100041A00(v15, v16);
    sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1000F3C80;
    v40 = a1[3];
    v41 = a1[4];
    sub_100003C4C(a1, v40);
    (*(v41 + 64))(v40, v41);
    v42 = URL.path.getter();
    v44 = v43;
    (*(v3 + 8))(v7, v2);
    *(v39 + 56) = &type metadata for String;
    v45 = sub_100003D24();
    *(v39 + 64) = v45;
    *(v39 + 32) = v42;
    *(v39 + 40) = v44;
    if (qword_100133A60 == -1)
    {
      if (!*(v13 + 16))
      {
        goto LABEL_18;
      }
    }

    else
    {
      swift_once();
      if (!*(v13 + 16))
      {
        goto LABEL_18;
      }
    }

    v46 = sub_100061588(qword_10014E8E0, *algn_10014E8E8);
    if (v47)
    {
      sub_10000B430(*(v13 + 56) + 32 * v46, v51);

      if (swift_dynamicCast())
      {
        v49 = v52;
        v48 = v53;
        v50 = (v39 + 72);
        *(v39 + 96) = &type metadata for String;
        *(v39 + 104) = v45;
        if (v48)
        {
          *v50 = v49;
LABEL_21:
          *(v39 + 80) = v48;
          sub_10001491C();
          v24 = static OS_os_log.default.getter();
          static os_log_type_t.default.getter();
          os_log(_:dso:log:type:_:)();
          goto LABEL_22;
        }

LABEL_20:
        *v50 = 0x73206120746F6E3CLL;
        v48 = 0xEE003E676E697274;
        goto LABEL_21;
      }

LABEL_19:
      v50 = (v39 + 72);
      *(v39 + 96) = &type metadata for String;
      *(v39 + 104) = v45;
      goto LABEL_20;
    }

LABEL_18:

    goto LABEL_19;
  }

  sub_100003CDC(&unk_100133C40, &qword_1000F32B0);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1000F3160;
  v19 = a1[3];
  v20 = a1[4];
  sub_100003C4C(a1, v19);
  (*(v20 + 64))(v19, v20);
  v21 = URL.path.getter();
  v23 = v22;
  (*(v3 + 8))(v9, v2);
  *(v18 + 56) = &type metadata for String;
  *(v18 + 64) = sub_100003D24();
  *(v18 + 32) = v21;
  *(v18 + 40) = v23;
  sub_10001491C();
  v24 = static OS_os_log.default.getter();
  static os_log_type_t.default.getter();
LABEL_9:
  os_log(_:dso:log:type:_:)();
LABEL_22:

  return 0;
}

uint64_t sub_1000DE0CC()
{
  v1 = *(v0 + 16);

  return _swift_deallocObject(v0, 24, 7);
}

void *sub_1000DE124(uint64_t a1, uint64_t a2)
{
  _StringGuts.grow(_:)(50);
  v4._countAndFlagsBits = 0x79747265706F7250;
  v4._object = 0xE900000000000020;
  String.append(_:)(v4);
  _print_unlocked<A, B>(_:_:)();
  v5._object = 0x800000010010C4C0;
  v5._countAndFlagsBits = 0xD000000000000027;
  String.append(_:)(v5);
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  sub_100003CDC(&qword_100137100, &unk_1001013C0);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0xE000000000000000;
  v7[4] = sub_1000DE2DC;
  v7[5] = v6;

  return v7;
}

uint64_t sub_1000DE24C()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 56);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000DE2A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t sub_1000DE2E4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 64, 7);
}

uint64_t sub_1000DE3A4()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 32, 7);
}

BOOL sub_1000DE3DC(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = a1[1];
  v6[0] = *a1;
  v6[1] = v4;
  return (v2(v6) & 1) == 0;
}

uint64_t sub_1000DE420()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t sub_1000DE470()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_1000DE4B4()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 48);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000DE50C()
{
  v1 = *(v0 + 24);

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t sub_1000DE604(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1000DE64C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1000DE6AC()
{
  result = qword_1001390B8;
  if (!qword_1001390B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001390B8);
  }

  return result;
}

uint64_t sub_1000DE700(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x747365676964 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6150656C646E7562 && a2 == 0xEA00000000006874)
  {

    return 3;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1000DE870@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = sub_100003CDC(&qword_1001390C0, &qword_1001015A8);
  v6 = *(v5 - 8);
  v7 = *(v6 + 64);
  __chkstk_darwin(v5);
  v9 = &v23 - v8;
  v10 = a1[4];
  sub_100003C4C(a1, a1[3]);
  sub_1000DEB44();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return sub_100003C90(a1);
  }

  LOBYTE(v27) = 0;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = v12;
  v26 = v11;
  LOBYTE(v27) = 1;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = 2;
  sub_10001D590();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v27;
  v25 = v28;
  LOBYTE(v27) = 3;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  v18 = *(v6 + 8);
  v23 = v15;
  v18(v9, v5);

  v20 = v24;
  v19 = v25;
  sub_100041D48();

  sub_100003C90(a1);

  sub_100014988();

  *a2 = v26;
  a2[1] = v13;
  a2[2] = v14;
  a2[3] = v20;
  v22 = v23;
  a2[4] = v19;
  a2[5] = v22;
  a2[6] = v17;
  return result;
}

unint64_t sub_1000DEB44()
{
  result = qword_1001390C8;
  if (!qword_1001390C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001390C8);
  }

  return result;
}

uint64_t sub_1000DEB98(uint64_t a1, uint64_t a2)
{
  v4 = sub_100003CDC(&qword_1001390D8, &qword_1001015B8);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1000DEC08()
{
  result = qword_1001390E0;
  if (!qword_1001390E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001390E0);
  }

  return result;
}

unint64_t sub_1000DEC70()
{
  result = qword_1001390E8;
  if (!qword_1001390E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001390E8);
  }

  return result;
}

unint64_t sub_1000DECC8()
{
  result = qword_1001390F0;
  if (!qword_1001390F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1001390F0);
  }

  return result;
}

unint64_t sub_1000DED20()
{
  result = qword_1001390F8[0];
  if (!qword_1001390F8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1001390F8);
  }

  return result;
}

uint64_t sub_1000DEDC4()
{
  type metadata accessor for Dictionary.Keys();

  swift_getWitnessTable();
  v0 = Sequence.compactMap<A>(_:)();

  return v0;
}

uint64_t sub_1000DEE88@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(char *)@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, char *a6@<X8>)
{
  v31[1] = a3;
  v32 = a2;
  v33 = a6;
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  v11 = *(v10 + 64);
  v12 = __chkstk_darwin(v9);
  v14 = v31 - v13;
  v15 = *(*(a4 - 8) + 64);
  v16 = __chkstk_darwin(v12);
  v18 = v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *(a5 - 8);
  v20 = *(v19 + 64);
  __chkstk_darwin(v16);
  v22 = v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v23 + 16))(v18, a1, a4);
  v24 = swift_dynamicCast();
  v25 = *(v19 + 56);
  if ((v24 & 1) == 0)
  {
    v29 = 1;
    v25(v14, 1, 1, a5);
    (*(v10 + 8))(v14, v9);
LABEL_6:
    v28 = v33;
    return (v25)(v28, v29, 1, a5);
  }

  v25(v14, 0, 1, a5);
  v26 = *(v19 + 32);
  v26(v22, v14, a5);
  if ((v32(v22) & 1) == 0)
  {
    (*(v19 + 8))(v22, a5);
    v29 = 1;
    goto LABEL_6;
  }

  v27 = v33;
  v26(v33, v22, a5);
  v28 = v27;
  v29 = 0;
  return (v25)(v28, v29, 1, a5);
}

uint64_t sub_1000DF164@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, _OWORD *a7@<X8>)
{
  v38 = a2;
  v39 = a6;
  v40 = a1;
  v41 = a7;
  v10 = type metadata accessor for Optional();
  v36 = *(v10 - 8);
  v37 = v10;
  v11 = *(v36 + 64);
  __chkstk_darwin(v10);
  v13 = &v36 - v12;
  v14 = type metadata accessor for Optional();
  v15 = *(v14 - 8);
  v16 = *(v15 + 64);
  v17 = __chkstk_darwin(v14);
  v19 = &v36 - v18;
  v20 = *(*(a5 - 8) + 64);
  v21 = __chkstk_darwin(v17);
  v23 = &v36 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a3 - 8);
  v25 = *(v24 + 64);
  __chkstk_darwin(v21);
  v27 = &v36 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v28 + 16))(v23, v40, a5);
  v29 = swift_dynamicCast();
  v30 = *(v24 + 56);
  if (v29)
  {
    v31 = v41;
    v30(v19, 0, 1, a3);
    (*(v24 + 32))(v27, v19, a3);
    Dictionary.subscript.getter();
    v32 = *(a4 - 8);
    if ((*(v32 + 48))(v13, 1, a4) == 1)
    {
      (*(v24 + 8))(v27, a3);
      result = (*(v36 + 8))(v13, v37);
      *v31 = 0u;
      v31[1] = 0u;
    }

    else
    {
      *(v31 + 3) = a4;
      v35 = sub_1000193A4(v31);
      (*(v32 + 32))(v35, v13, a4);
      return (*(v24 + 8))(v27, a3);
    }
  }

  else
  {
    v30(v19, 1, 1, a3);
    result = (*(v15 + 8))(v19, v14);
    v34 = v41;
    *v41 = 0u;
    v34[1] = 0u;
  }

  return result;
}

uint64_t sub_1000DF53C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v6 = *v5;
  v7 = a5[2];
  v8 = a5[3];
  v9 = a5[4];
  return sub_1000DEDC4();
}

uint64_t sub_1000DF5A8()
{
  v1 = *(v0 + 24);

  v2 = *(v0 + 40);

  return swift_deallocClassInstance();
}

uint64_t sub_1000DF600()
{
  v1 = *(*v0 + 16);
  v2 = *(*v0 + 24);

  return v1;
}

uint64_t sub_1000DF634@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v3 = *(v2 + 24);
  v4 = *(v2 + 40);
  v5 = *(v2 + 48);
  return sub_1000DEE88(a1, *(v2 + 56), *(v2 + 64), *(v2 + 16), *(v2 + 32), a2);
}

uint64_t sub_1000DF65C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100137438, &qword_1000F9728);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139378, &qword_100101880);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139380, &unk_100101888);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DF818@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100137418, &qword_1001018C0);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_1001393A8, &qword_1001018C8);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_1001393B0, &unk_1001018D0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DF9D4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100137448, &qword_1000F9730);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100136910, &unk_1000F89D0);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139360, &qword_100101858);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DFB90@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&unk_100137400, &unk_1000F96F0);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_1001393D8, &qword_100101910);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_1001393E0, &qword_100101918);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DFD4C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_1001373D0, &qword_1001018F0);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_1001393C8, &qword_1001018F8);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_1001393D0, &unk_100101900);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000DFF08@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&unk_100137450, &unk_1000F9738);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139338, &qword_100101838);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139340, &qword_100101840);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E00C4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_1001373E8, &unk_1000F96E0);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_1001393B8, &qword_1001018E0);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_1001393C0, &qword_1001018E8);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E0280@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100133C70, &qword_100101860);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139368, &qword_100101868);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139370, &unk_100101870);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E043C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100137410, &unk_1000F9700);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139468, &qword_1001019D0);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139470, &unk_1001019D8);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E05F8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100137420, &qword_1000F9710);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139428, &qword_100101980);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139430, &qword_100101988);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E07B4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_1001373F8, &qword_100101960);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139418, &qword_100101968);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139420, &unk_100101970);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E0970@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100138BA8, &qword_100100EA8);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139408, &qword_100101950);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139410, &qword_100101958);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E0B2C@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100137428, &qword_1000F9718);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_1001393F0, &qword_100101930);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_1001393F8, &qword_100101938);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E0CE8@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_1001373D8, &unk_1000F96D0);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139448, &qword_1001019A0);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139450, &qword_1001019A8);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E0EA4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_100137430, &qword_1000F9720);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139390, &qword_1001018A8);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139398, &qword_1001018B0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E1060@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_100003CDC(&qword_1001373E0, &qword_1001019B0);
  swift_beginAccess();
  v4 = *(v1 + 16);
  if (*(v4 + 16) && (v5 = sub_100061698(v3), (v6 & 1) != 0))
  {
    sub_10000B430(*(v4 + 56) + 32 * v5, v12);
  }

  else
  {
    memset(v12, 0, sizeof(v12));
  }

  sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
  if (swift_dynamicCast())
  {
    return sub_100009F34(v10, a1);
  }

  v11 = 0;
  memset(v10, 0, sizeof(v10));
  sub_10000A184(v10, &qword_100139458, &qword_1001019B8);
  *&v10[0] = 0;
  *(&v10[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v10[0] = 0xD000000000000016;
  *(&v10[0] + 1) = 0x800000010010C820;
  *&v12[0] = v3;
  sub_100003CDC(&qword_100139460, &unk_1001019C0);
  v8._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v8);

  v9._object = 0x800000010010C840;
  v9._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v9);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t sub_1000E123C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v277 = a2;
  v3 = sub_100003CDC(&qword_1001342D8, &unk_100101820);
  v4 = *(*(v3 - 8) + 64);
  __chkstk_darwin(v3 - 8);
  v301 = &v271 - v5;
  v6 = type metadata accessor for URL();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = __chkstk_darwin(v6);
  v312 = &v271 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v9);
  v328 = &v271 - v11;
  v319 = type metadata accessor for DriverBinEntry();
  v309 = *(v319 - 8);
  v12 = *(v309 + 64);
  v13 = __chkstk_darwin(v319);
  v327 = &v271 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v13);
  v308 = &v271 - v15;
  v320 = type metadata accessor for UUID();
  v310 = *(v320 - 8);
  v16 = *(v310 + 64);
  __chkstk_darwin(v320);
  v307 = &v271 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_100003CDC(&qword_1001342E0, &unk_1000F3A30);
  v19 = *(*(v18 - 8) + 64);
  v20 = __chkstk_darwin(v18 - 8);
  v22 = &v271 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v24 = &v271 - v23;
  if (!a1[12])
  {
    goto LABEL_243;
  }

  v25 = a1[12];

  v26 = sub_100089030();

  v27 = a1[7];
  v294 = *(v26 + 2);
  if (!v294)
  {
    v262 = v27;

    v263 = _swiftEmptyArrayStorage;
LABEL_222:
    v264 = sub_1000EB768(v263);

    v265 = sub_10005F800(v262, v264);

    if (v265)
    {

      v267 = 0;
    }

    else
    {
      v268 = a1[7];
      a1[7] = v264;

      result = sub_1000E3554();
      v267 = &off_100126B18;
    }

    *v277 = v267;
    return result;
  }

  v293 = v26 + 32;
  v305 = v310 + 32;
  v306 = v310 + 16;
  v323 = (v7 + 8);
  v324 = (v7 + 16);
  v311 = (v310 + 8);
  v278 = "Failed to read bundle at ";
  v279 = 0x800000010010C860;
  v316 = 0x8000000100104280;
  v281 = 0x800000010010C760;
  v282 = 0x800000010010C8A0;
  v274 = "CFBundleDisplayName";
  v275 = "nfo dictionary for driver ";
  v272 = "undle for driver ";
  v273 = v27;
  v276 = 0x800000010010C8D0;

  v28 = 0;
  v29 = 0uLL;
  *&v30 = 136315394;
  v285 = v30;
  v284 = _swiftEmptyArrayStorage;
  v318 = a1;
  v325 = v22;
  v326 = v6;
  v321 = v24;
  v292 = v26;
LABEL_6:
  if (v28 >= *(v26 + 2))
  {
    goto LABEL_230;
  }

  v31 = &v293[40 * v28];
  v32 = v31[32];
  v33 = *(v31 + 1);
  v345[0] = *v31;
  v345[1] = v33;
  v346 = v32;
  v34 = *(&v33 + 1);
  v302 = *(&v33 + 1);
  v303 = v33;
  v329 = *(&v345[0] + 1);
  v330 = *&v345[0];
  v344 = 0;
  v343[0] = v29;
  v343[1] = v29;
  v298 = v28;
  v296 = v32;
  if (*(&v33 + 1) >> 60 == 15)
  {
    if (!a1[11])
    {
      goto LABEL_242;
    }

    sub_100067FBC(v345, &v339);

    v35 = sub_10000B908();

    *&v336 = _swiftEmptyArrayStorage;
    if (v35 >> 62)
    {
      v36 = _CocoaArrayWrapper.endIndex.getter();
      if (!v36)
      {
LABEL_159:
        v135 = _swiftEmptyArrayStorage;
        goto LABEL_160;
      }
    }

    else
    {
      v36 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v36)
      {
        goto LABEL_159;
      }
    }

    v37 = 0;
    v322 = v35 & 0xC000000000000001;
    while (1)
    {
      if (v322)
      {
        v38 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_227;
        }
      }

      else
      {
        if (v37 >= *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_228;
        }

        v38 = *(v35 + 8 * v37 + 32);

        v39 = v37 + 1;
        if (__OFADD__(v37, 1))
        {
          goto LABEL_227;
        }
      }

      v40 = *(*(v38 + 24) + 16);
      if (qword_100133A50 == -1)
      {
        if (!*(v40 + 16))
        {
          goto LABEL_26;
        }
      }

      else
      {
        swift_once();
        if (!*(v40 + 16))
        {
          goto LABEL_26;
        }
      }

      v41 = sub_100061588(qword_10014E8C0, *algn_10014E8C8);
      if ((v42 & 1) == 0 || (sub_10000B430(*(v40 + 56) + 32 * v41, &v339), (swift_dynamicCast() & 1) == 0))
      {
LABEL_26:
        v43 = 0xD000000000000014;
        v44 = v316;
        goto LABEL_27;
      }

      v44 = *(&v332 + 1);
      v43 = v332;
LABEL_27:
      if (v43 == v330 && v44 == v329)
      {

LABEL_31:
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        v46 = *(v336 + 16);
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        goto LABEL_13;
      }

      v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v45)
      {
        goto LABEL_31;
      }

LABEL_13:
      ++v37;
      if (v39 == v36)
      {
        v135 = v336;
        a1 = v318;
        v22 = v325;
LABEL_160:

        v6 = v326;
        if ((v135 & 0x8000000000000000) == 0 && (v135 & 0x4000000000000000) == 0)
        {
          v189 = *(v135 + 16);
          if (v189 >= 2)
          {
            goto LABEL_197;
          }

          if (v189)
          {
            goto LABEL_164;
          }

LABEL_196:

          *&v339 = 0;
          *(&v339 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(46);

          *&v339 = 0xD00000000000002CLL;
          *(&v339 + 1) = v276;
          v228._countAndFlagsBits = v330;
          v228._object = v329;
          String.append(_:)(v228);

          v229 = v339;
          sub_10001449C();
          v169 = swift_allocError();
          *v230 = v229;
          v231 = v342;
          v233 = v340;
          v232 = v341;
          *(v230 + 16) = v339;
          *(v230 + 32) = v233;
          *(v230 + 48) = v232;
          *(v230 + 64) = v231;
          *(v230 + 72) = 10;
LABEL_198:
          swift_willThrow();
          sub_100014528(v303, v302);
LABEL_199:
          sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
          v300 = 0;
LABEL_200:
          if (qword_100133AE8 != -1)
          {
            swift_once();
          }

          v240 = type metadata accessor for Logger();
          sub_1000144F0(v240, qword_10014E9F8);
          sub_100067FBC(v345, &v339);
          swift_errorRetain();
          v241 = Logger.logObject.getter();
          v242 = static os_log_type_t.error.getter();
          sub_100067FF4(v345);

          if (os_log_type_enabled(v241, v242))
          {
            v243 = swift_slowAlloc();
            *&v332 = swift_slowAlloc();
            *v243 = v285;
            sub_100067FBC(v345, &v339);
            v244 = ApprovalDBEntry.description.getter();
            v246 = v245;
            sub_100067FF4(v345);
            v247 = sub_1000E3AF8(v244, v246, &v332);

            *(v243 + 4) = v247;
            *(v243 + 12) = 2080;
            *&v339 = v169;
            swift_errorRetain();
            sub_100003CDC(&qword_1001372F0, &unk_1000F39D0);
            v248 = String.init<A>(describing:)();
            v250 = sub_1000E3AF8(v248, v249, &v332);

            *(v243 + 14) = v250;
            _os_log_impl(&_mh_execute_header, v241, v242, "Failed to use entry %s: %s", v243, 0x16u);
            swift_arrayDestroy();

            v22 = v325;
            v6 = v326;

            sub_100067FF4(v345);
          }

          else
          {

            sub_100067FF4(v345);
          }

LABEL_5:
          v28 = v298 + 1;
          v26 = v292;
          v29 = 0uLL;
          if (v298 + 1 == v294)
          {
            swift_bridgeObjectRelease_n();
            v262 = v273;
            v263 = v284;
            goto LABEL_222;
          }

          goto LABEL_6;
        }

        if (_CocoaArrayWrapper.endIndex.getter() >= 2)
        {
LABEL_197:

          *&v339 = 0;
          *(&v339 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(41);

          *&v339 = 0xD000000000000027;
          *(&v339 + 1) = v282;
          v234._countAndFlagsBits = v330;
          v234._object = v329;
          String.append(_:)(v234);

          v235 = v339;
          sub_10001449C();
          v169 = swift_allocError();
          *v236 = v235;
          v237 = v342;
          v239 = v340;
          v238 = v341;
          *(v236 + 16) = v339;
          *(v236 + 32) = v239;
          *(v236 + 48) = v238;
          *(v236 + 64) = v237;
          *(v236 + 72) = 50;
          goto LABEL_198;
        }

        if (!_CocoaArrayWrapper.endIndex.getter())
        {
          goto LABEL_196;
        }

LABEL_164:
        if ((v135 & 0xC000000000000001) != 0)
        {
          v190 = specialized _ArrayBuffer._getElementSlowPath(_:)();
        }

        else
        {
          if (!*(v135 + 16))
          {
            goto LABEL_237;
          }

          v190 = *(v135 + 32);
        }

        sub_1000138F8(*(v190 + 24) + 24, &v332);
        if (BYTE8(v334))
        {
          sub_100013954(&v332);
          *&v339 = 0;
          *(&v339 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(35);

          *&v339 = 0xD000000000000021;
          *(&v339 + 1) = v281;
          v191._countAndFlagsBits = v330;
          v191._object = v329;
          String.append(_:)(v191);

          v192 = v339;
          sub_10001449C();
          v169 = swift_allocError();
          *v193 = v192;
          v194 = v342;
          v196 = v340;
          v195 = v341;
          *(v193 + 16) = v339;
          *(v193 + 32) = v196;
          *(v193 + 48) = v195;
          *(v193 + 64) = v194;
          *(v193 + 72) = 10;
          swift_willThrow();

          sub_100014528(v303, v302);
          goto LABEL_199;
        }

        v186 = v6;
        sub_100009F34(&v332, v331);

        sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
        sub_100009F34(v331, &v336);
        sub_100009F34(&v336, v343);
LABEL_170:
        sub_100014894(v343, &v336, &qword_1001342A8, &unk_1000F39C0);
        if (*(&v337 + 1))
        {
          sub_100009F34(&v336, &v332);
          v197 = *(&v333 + 1);
          v198 = v334;
          sub_100003C4C(&v332, *(&v333 + 1));
          v199 = (*(v198 + 40))(v197, v198);
          if (v199)
          {
            v200 = v199;
LABEL_177:
            v210 = *(v200 + 16);

            if (v210)
            {
              v211 = sub_100061588(0xD000000000000013, v275 | 0x8000000000000000);
              if (v212)
              {
                sub_10000B430(*(v200 + 56) + 32 * v211, &v339);
                if (swift_dynamicCast())
                {
                  v213 = *(&v336 + 1);
                  v214 = v336;

                  if (!*(v200 + 16))
                  {
                    goto LABEL_214;
                  }

LABEL_207:
                  v251 = sub_100061588(0xD000000000000018, v274 | 0x8000000000000000);
                  if ((v252 & 1) == 0)
                  {
                    goto LABEL_214;
                  }

                  sub_10000B430(*(v200 + 56) + 32 * v251, &v339);

                  v253 = swift_dynamicCast();
                  if (v253)
                  {
                    v254 = v336;
                  }

                  else
                  {
                    v254 = 0;
                  }

                  if (v253)
                  {
                    v255 = *(&v336 + 1);
                  }

                  else
                  {
                    v255 = 0;
                  }

LABEL_215:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v284 = sub_1000321E8(0, *(v284 + 2) + 1, 1, v284);
                  }

                  v257 = *(v284 + 2);
                  v256 = *(v284 + 3);
                  if (v257 >= v256 >> 1)
                  {
                    v284 = sub_1000321E8((v256 > 1), v257 + 1, 1, v284);
                  }

                  sub_100067FF4(v345);
                  sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
                  v258 = v284;
                  *(v284 + 2) = v257 + 1;
                  v259 = &v258[72 * v257];
                  v260 = v329;
                  *(v259 + 4) = v330;
                  *(v259 + 5) = v260;
                  *(v259 + 6) = v214;
                  *(v259 + 7) = v213;
                  *(v259 + 8) = v254;
                  *(v259 + 9) = v255;
                  v261 = v302;
                  *(v259 + 10) = v303;
                  *(v259 + 11) = v261;
                  v259[96] = v296;
                  sub_100003C90(&v332);
                  v22 = v325;
                  v6 = v326;
                  goto LABEL_5;
                }
              }
            }

            if (qword_100133A68 == -1)
            {
              if (*(v200 + 16))
              {
LABEL_184:
                v215 = sub_100061588(qword_10014E8F0, *algn_10014E8F8);
                if (v216)
                {
                  sub_10000B430(*(v200 + 56) + 32 * v215, &v339);

                  v217 = swift_dynamicCast();
                  if (v217)
                  {
                    v213 = *(&v336 + 1);
                  }

                  else
                  {
                    v213 = 0;
                  }

                  if (v217)
                  {
                    v214 = v336;
                  }

                  else
                  {
                    v214 = 0;
                  }

                  if (*(v200 + 16))
                  {
                    goto LABEL_207;
                  }

LABEL_214:

                  v254 = 0;
                  v255 = 0;
                  goto LABEL_215;
                }
              }
            }

            else
            {
              swift_once();
              if (*(v200 + 16))
              {
                goto LABEL_184;
              }
            }

            v213 = 0;
            v214 = 0;
            if (!*(v200 + 16))
            {
              goto LABEL_214;
            }

            goto LABEL_207;
          }

          v207 = *(&v333 + 1);
          v208 = v334;
          sub_100003C4C(&v332, *(&v333 + 1));
          v209 = (*(v208 + 32))(v207, v208);
          if (v209)
          {
            v200 = v209;

            goto LABEL_177;
          }

          *&v339 = 0;
          *(&v339 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(50);
          v218._countAndFlagsBits = 0xD00000000000002ALL;
          v218._object = (v272 | 0x8000000000000000);
          String.append(_:)(v218);
          v219._countAndFlagsBits = v330;
          v219._object = v329;
          String.append(_:)(v219);

          v220._countAndFlagsBits = 544497952;
          v220._object = 0xE400000000000000;
          String.append(_:)(v220);
          v221 = v334;
          sub_100003C4C(&v332, *(&v333 + 1));
          v222 = *(v221 + 8);
          DefaultStringInterpolation.appendInterpolation<A>(_:)();
          v223 = v339;
          sub_10001449C();
          v169 = swift_allocError();
          *v224 = v223;
          v225 = v342;
          v227 = v340;
          v226 = v341;
          *(v224 + 16) = v339;
          *(v224 + 32) = v227;
          *(v224 + 48) = v226;
          *(v224 + 64) = v225;
          *(v224 + 72) = 10;
          swift_willThrow();
          sub_100014528(v303, v302);
          sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
          sub_100003C90(&v332);
        }

        else
        {
          sub_10000A184(&v336, &qword_1001342A8, &unk_1000F39C0);
          *&v339 = 0;
          *(&v339 + 1) = 0xE000000000000000;
          _StringGuts.grow(_:)(35);

          *&v339 = 0xD000000000000021;
          *(&v339 + 1) = v281;
          v201._countAndFlagsBits = v330;
          v201._object = v329;
          String.append(_:)(v201);

          v202 = v339;
          sub_10001449C();
          v169 = swift_allocError();
          *v203 = v202;
          v204 = v342;
          v206 = v340;
          v205 = v341;
          *(v203 + 16) = v339;
          *(v203 + 32) = v206;
          *(v203 + 48) = v205;
          *(v203 + 64) = v204;
          *(v203 + 72) = 10;
          swift_willThrow();
          sub_100014528(v303, v302);
          sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
        }

        v300 = 0;
        v6 = v186;
        goto LABEL_200;
      }
    }
  }

  if (!a1[10])
  {
    goto LABEL_241;
  }

  v47 = v6;
  v48 = v303;
  sub_1000146B0(v303, *(&v33 + 1));
  sub_100067FBC(v345, &v339);

  sub_1000146B0(v48, v34);

  v49 = sub_100048948();
  v50 = v34;

  v51 = 0;
  v53 = v49 + 64;
  v52 = *(v49 + 8);
  v313 = v49;
  v54 = 1 << v49[32];
  if (v54 < 64)
  {
    v55 = ~(-1 << v54);
  }

  else
  {
    v55 = -1;
  }

  v56 = v55 & v52;
  v57 = ((v54 + 63) >> 6);
  v304 = v50 >> 62;
  v288 = HIDWORD(v48);
  v58 = __OFSUB__(HIDWORD(v48), v48);
  v291 = v58;
  v290 = HIDWORD(v48) - v48;
  v297 = BYTE6(v50);
  if (v48)
  {
    v59 = 0;
  }

  else
  {
    v59 = v50 == 0xC000000000000000;
  }

  v60 = v59;
  v299 = v60;
  v289 = v48;
  v286 = (v48 >> 32) - v48;
  v287 = v48 >> 32;
  v317 = _swiftEmptyArrayStorage;
  v61 = v321;
  v6 = v47;
  v314 = v57;
  v315 = v49 + 64;
  while (2)
  {
    if (v56)
    {
      v62 = v51;
      goto LABEL_59;
    }

    if (v57 <= v51 + 1)
    {
      v63 = (v51 + 1);
    }

    else
    {
      v63 = v57;
    }

    v64 = v63 - 1;
    do
    {
      v62 = v51 + 1;
      if (__OFADD__(v51, 1))
      {
        __break(1u);
LABEL_227:
        __break(1u);
LABEL_228:
        __break(1u);
LABEL_229:
        __break(1u);
LABEL_230:
        __break(1u);
        goto LABEL_231;
      }

      if (v62 >= v57)
      {
        v103 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
        (*(*(v103 - 8) + 56))(v22, 1, 1, v103);
        v322 = 0;
        v51 = v64;
        goto LABEL_60;
      }

      v56 = *&v53[8 * v62];
      ++v51;
    }

    while (!v56);
    v51 = v62;
LABEL_59:
    v322 = (v56 - 1) & v56;
    v65 = __clz(__rbit64(v56)) | (v62 << 6);
    v66 = v313;
    v67 = v310;
    (*(v310 + 16))(v307, *(v313 + 6) + *(v310 + 72) * v65, v320);
    v68 = v308;
    sub_10008E708(*(v66 + 7) + *(v309 + 72) * v65, v308, type metadata accessor for DriverBinEntry);
    v69 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
    v70 = *(v69 + 48);
    v22 = v325;
    (*(v67 + 32))();
    sub_100068024(v68, &v22[v70]);
    (*(*(v69 - 8) + 56))(v22, 0, 1, v69);
    v61 = v321;
    v6 = v326;
LABEL_60:
    sub_100098118(v22, v61);
    v71 = sub_100003CDC(&unk_1001373B0, &unk_1000F3A40);
    if ((*(*(v71 - 8) + 48))(v61, 1, v71) == 1)
    {

      v136 = v317;
      v137 = v317[2];
      if (v137 <= 1)
      {
        v186 = v6;
        a1 = v318;
        if (v137)
        {
          sub_100014894((v317 + 4), &v339, &qword_100135010, &qword_1000F4EC8);
          sub_100014528(v303, v302);
          sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
          sub_1000128D8(v339, *(&v339 + 1));
          sub_100009F34(&v340, &v332);
          v187 = &v332;
LABEL_155:
          sub_100009F34(v187, v343);

          goto LABEL_170;
        }

        sub_100014528(v303, v302);
      }

      else
      {
        v138 = 0;
        v139 = v317 + 4;
        v314 = v317 + 4;
        v315 = _swiftEmptyArrayStorage;
        a1 = v318;
        v140 = v137;
        v322 = v137;
        do
        {
          if (v138 >= v136[2])
          {
            goto LABEL_229;
          }

          sub_100014894(v139, &v339, &qword_100135010, &qword_1000F4EC8);
          v143 = a1[13];
          if (!v143)
          {
            goto LABEL_240;
          }

          v144 = v339;
          if (*(v143 + 88))
          {
            v145 = *(v143 + 88);
          }

          else
          {

            sub_10001B0B4();
            v145 = v146;
            v147 = *(v143 + 88);
            *(v143 + 88) = v146;

            v140 = v322;
          }

          v148 = *(v145 + 16);

          if (v148 && (v149 = sub_1000618A8(v144, *(&v144 + 1)), (v150 & 1) != 0))
          {
            v151 = v149;
            v152 = *(v145 + 56);
            v153 = type metadata accessor for ApplicationRecord(0);
            v154 = *(v153 - 8);
            v155 = v152 + *(v154 + 72) * v151;
            v156 = v301;
            sub_10008E708(v155, v301, type metadata accessor for ApplicationRecord);

            (*(v154 + 56))(v156, 0, 1, v153);
            sub_10000A184(v156, &qword_1001342D8, &unk_100101820);
            v332 = v339;
            v333 = v340;
            v334 = v341;
            v335 = v342;
            v157 = v315;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v336 = v157;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              sub_10006372C(0, v157[2] + 1, 1);
              v157 = v336;
            }

            v160 = v157[2];
            v159 = v157[3];
            a1 = v318;
            v140 = v322;
            if (v160 >= v159 >> 1)
            {
              sub_10006372C((v159 > 1), v160 + 1, 1);
              v157 = v336;
            }

            v157[2] = v160 + 1;
            v315 = v157;
            v161 = &v157[7 * v160];
            v162 = v332;
            v163 = v333;
            v164 = v334;
            v161[10] = v335;
            *(v161 + 3) = v163;
            *(v161 + 4) = v164;
            *(v161 + 2) = v162;
          }

          else
          {

            v141 = type metadata accessor for ApplicationRecord(0);
            v142 = v301;
            (*(*(v141 - 8) + 56))(v301, 1, 1, v141);
            sub_10000A184(v142, &qword_1001342D8, &unk_100101820);
            sub_10000A184(&v339, &qword_100135010, &qword_1000F4EC8);
            a1 = v318;
          }

          ++v138;
          v139 += 7;
          v136 = v317;
        }

        while (v140 != v138);
        if (v315[2])
        {
          sub_100014894((v315 + 4), &v332, &qword_100135010, &qword_1000F4EC8);
          sub_100014528(v303, v302);

          v339 = v332;
          v340 = v333;
          v341 = v334;
          v342 = v335;
          v22 = v325;
          v186 = v326;
        }

        else
        {

          v335 = 0;
          v333 = 0u;
          v334 = 0u;
          v332 = 0u;
          v188 = v302;
          if (v136[2])
          {
            sub_100014894(v314, &v339, &qword_100135010, &qword_1000F4EC8);
            sub_100014528(v303, v188);
          }

          else
          {
            sub_100014528(v303, v302);
            v342 = 0;
            v340 = 0u;
            v341 = 0u;
            v339 = 0u;
          }

          v22 = v325;
          v186 = v326;
          if (*(&v334 + 1))
          {
            sub_10000A184(&v332, &qword_100139330, &qword_100101830);
          }
        }

        if (*(&v341 + 1))
        {
          sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
          sub_1000128D8(v339, *(&v339 + 1));
          sub_100009F34(&v340, &v336);
          v187 = &v336;
          goto LABEL_155;
        }

        sub_10000A184(&v339, &qword_100139330, &qword_100101830);
      }

      goto LABEL_170;
    }

    v72 = v61 + *(v71 + 48);
    v73 = v327;
    sub_100068024(v72, v327);
    v74 = *v324;
    (*v324)(v328, v73 + *(v319 + 28), v6);
    v75 = *sub_100003C4C(v318 + 2, v318[5]);
    v76 = sub_100003CDC(&unk_100137450, &unk_1000F9738);
    swift_beginAccess();
    v77 = *(v75 + 16);
    if (*(v77 + 16) && (v78 = sub_100061698(v76), (v79 & 1) != 0))
    {
      sub_10000B430(*(v77 + 56) + 32 * v78, &v336);
    }

    else
    {
      v336 = 0u;
      v337 = 0u;
    }

    sub_100003CDC(&qword_1001343C8, &unk_1000F3CA0);
    v80 = swift_dynamicCast();
    v81 = v312;
    if (v80)
    {
      sub_10000A184(&v339, &qword_100139338, &qword_100101838);
      v74(v81, v328, v6);
      v82 = type metadata accessor for UncachedBundle();
      v83 = swift_allocObject();
      URL._bridgeToObjectiveC()(v84);
      v86 = v85;
      Unique = _CFBundleCreateUnique();

      if (Unique)
      {
        v88 = *v323;
        v89 = Unique;
        v90 = v81;
        v91 = v88;
        v88(v90, v6);

        *(v83 + 16) = v89;
        *(&v337 + 1) = v82;
        v338 = sub_1000EB8E8(&qword_1001373C0, type metadata accessor for UncachedBundle);
        *&v336 = v83;
        sub_100009F34(&v336, &v332);
        sub_100003C4C(&v332, *(&v333 + 1));
        v92 = sub_1000990BC();
        if (v93)
        {
          if (v92 == v330 && v93 == v329)
          {

            goto LABEL_72;
          }

          v94 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if ((v94 & 1) == 0)
          {
            goto LABEL_47;
          }

LABEL_72:
          v95 = v327 + *(v319 + 20);
          v96 = type metadata accessor for ApplicationRecord(0);
          v97 = (v95 + *(v96 + 28));
          v98 = *v97;
          v99 = v97[1];
          v100 = v99 >> 62;
          if (v304 == 3)
          {
            v101 = v299;
            if (v99 >> 62 != 3)
            {
              v101 = 0;
            }

            if (v101 != 1)
            {
              goto LABEL_90;
            }

            v102 = 0;
            if (v98 || v99 != 0xC000000000000000)
            {
              goto LABEL_86;
            }

LABEL_118:
            v124 = (v95 + *(v96 + 32));
            v126 = v124[1];
            *&v339 = *v124;
            v125 = v339;
            *(&v339 + 1) = v126;
            sub_10000A990(&v332, &v340);
            sub_1000146C4(v125, v126);
            v127 = swift_isUniquelyReferenced_nonNull_native();
            v22 = v325;
            v6 = v326;
            if ((v127 & 1) == 0)
            {
              v317 = sub_10003230C(0, v317[2] + 1, 1, v317);
            }

            v129 = v317[2];
            v128 = v317[3];
            if (v129 >= v128 >> 1)
            {
              v317 = sub_10003230C((v128 > 1), v129 + 1, 1, v317);
            }

            v91(v328, v6);
            v130 = v317;
            v317[2] = v129 + 1;
            v131 = &v130[7 * v129];
            v132 = v339;
            v133 = v340;
            v134 = v341;
            v131[10] = v342;
            *(v131 + 3) = v133;
            *(v131 + 4) = v134;
            *(v131 + 2) = v132;
LABEL_48:
            sub_100003C90(&v332);
            v61 = v321;
            (*v311)(v321, v320);
            sub_1000EB838(v327);
            v57 = v314;
            v53 = v315;
            v56 = v322;
            continue;
          }

          if (v304 > 1)
          {
            if (v304 == 2)
            {
              v105 = *(v303 + 16);
              v104 = *(v303 + 24);
              v106 = __OFSUB__(v104, v105);
              v102 = v104 - v105;
              if (!v106)
              {
                goto LABEL_86;
              }

              goto LABEL_233;
            }

LABEL_90:
            v102 = 0;
            if (v100 <= 1)
            {
              goto LABEL_87;
            }
          }

          else
          {
            v102 = v297;
            if (v304)
            {
              v102 = v290;
              if (v291)
              {
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
                __break(1u);
LABEL_240:
                __break(1u);
LABEL_241:
                __break(1u);
LABEL_242:
                __break(1u);
LABEL_243:
                __break(1u);
              }
            }

LABEL_86:
            if (v100 <= 1)
            {
LABEL_87:
              if (!v100)
              {
                if (v102 == BYTE6(v99))
                {
                  goto LABEL_97;
                }

                goto LABEL_47;
              }

              if (!__OFSUB__(HIDWORD(v98), v98))
              {
                if (v102 == HIDWORD(v98) - v98)
                {
                  goto LABEL_97;
                }

                goto LABEL_47;
              }

LABEL_232:
              __break(1u);
LABEL_233:
              __break(1u);
              goto LABEL_234;
            }
          }

          if (v100 != 2)
          {
            if (!v102)
            {
              goto LABEL_118;
            }

            goto LABEL_47;
          }

          v108 = *(v98 + 16);
          v107 = *(v98 + 24);
          v106 = __OFSUB__(v107, v108);
          v109 = v107 - v108;
          if (!v106)
          {
            if (v102 == v109)
            {
LABEL_97:
              if (v102 < 1)
              {
                goto LABEL_118;
              }

              if (v304 > 1)
              {
                v295 = v96;
                if (v304 != 2)
                {
                  *(&v339 + 6) = 0;
                  *&v339 = 0;
                  v120 = v300;
                  sub_100045F4C(&v339, v98, v99, &v336);
                  v300 = v120;
                  v96 = v295;
                  if (v336)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_47;
                }

                v112 = *(v303 + 16);
                v283 = *(v303 + 24);
                v113 = __DataStorage._bytes.getter();
                if (v113)
                {
                  v280 = v113;
                  v114 = __DataStorage._offset.getter();
                  if (__OFSUB__(v112, v114))
                  {
                    goto LABEL_238;
                  }

                  v115 = v112 - v114 + v280;
                }

                else
                {
                  v115 = 0;
                }

                if (__OFSUB__(v283, v112))
                {
                  goto LABEL_236;
                }

                v121 = v115;
                __DataStorage._length.getter();
                v122 = v121;
              }

              else
              {
                if (!v304)
                {
                  LODWORD(v339) = v303;
                  BYTE4(v339) = v288;
                  *(&v339 + 5) = *(&v303 + 5);
                  BYTE7(v339) = HIBYTE(v303);
                  DWORD2(v339) = v302;
                  WORD6(v339) = WORD2(v302);
                  v110 = v96;
                  v111 = v300;
                  sub_100045F4C(&v339, v98, v99, &v336);
                  v96 = v110;
                  v300 = v111;
                  if (v336)
                  {
                    goto LABEL_118;
                  }

                  goto LABEL_47;
                }

                if (v287 < v289)
                {
                  goto LABEL_235;
                }

                v295 = v96;
                v116 = __DataStorage._bytes.getter();
                if (v116)
                {
                  v117 = v116;
                  v118 = __DataStorage._offset.getter();
                  if (__OFSUB__(v289, v118))
                  {
                    goto LABEL_239;
                  }

                  v119 = v289 - v118 + v117;
                }

                else
                {
                  v119 = 0;
                }

                __DataStorage._length.getter();
                v122 = v119;
              }

              v123 = v300;
              sub_100045F4C(v122, v98, v99, &v339);
              v300 = v123;
              v96 = v295;
              if (v339)
              {
                goto LABEL_118;
              }
            }

LABEL_47:
            v6 = v326;
            v91(v328, v326);
            v22 = v325;
            goto LABEL_48;
          }

LABEL_231:
          __break(1u);
          goto LABEL_232;
        }

        *&v339 = 0;
        *(&v339 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(30);

        *&v339 = 0x6120656C646E7542;
        *(&v339 + 1) = 0xEA00000000002074;
        v176 = v328;
        v177._countAndFlagsBits = URL.path.getter();
        String.append(_:)(v177);

        v178._countAndFlagsBits = 0xD000000000000012;
        v178._object = (v278 | 0x8000000000000000);
        String.append(_:)(v178);
        v179 = v339;
        sub_10001449C();
        v169 = swift_allocError();
        *v180 = v179;
        v181 = v342;
        v183 = v340;
        v182 = v341;
        *(v180 + 16) = v339;
        *(v180 + 32) = v183;
        *(v180 + 48) = v182;
        *(v180 + 64) = v181;
        *(v180 + 72) = 50;
        swift_willThrow();

        v184 = v302;
        v185 = v303;
        sub_100014528(v303, v302);
        sub_100014528(v185, v184);
        v6 = v326;
        v88(v176, v326);
        sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
        sub_100003C90(&v332);
      }

      else
      {
        v165 = *v323;
        (*v323)(v81, v6);

        swift_deallocPartialClassInstance();
        *&v339 = 0;
        *(&v339 + 1) = 0xE000000000000000;
        _StringGuts.grow(_:)(27);

        *&v339 = 0xD000000000000019;
        *(&v339 + 1) = v279;
        v166 = v328;
        v167._countAndFlagsBits = URL.path.getter();
        String.append(_:)(v167);

        v168 = v339;
        sub_10001449C();
        v169 = swift_allocError();
        *v170 = v168;
        v171 = v342;
        v173 = v340;
        v172 = v341;
        *(v170 + 16) = v339;
        *(v170 + 32) = v173;
        *(v170 + 48) = v172;
        *(v170 + 64) = v171;
        *(v170 + 72) = 19;
        swift_willThrow();

        v174 = v302;
        v175 = v303;
        sub_100014528(v303, v302);
        sub_100014528(v175, v174);
        v165(v166, v6);
        sub_10000A184(v343, &qword_1001342A8, &unk_1000F39C0);
      }

      (*v311)(v321, v320);
      sub_1000EB838(v327);

      v300 = 0;
      a1 = v318;
      v22 = v325;
      goto LABEL_200;
    }

    break;
  }

  *&v341 = 0;
  v339 = 0u;
  v340 = 0u;
  sub_10000A184(&v339, &qword_100139338, &qword_100101838);
  *&v339 = 0;
  *(&v339 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(43);

  *&v339 = 0xD000000000000016;
  *(&v339 + 1) = 0x800000010010C820;
  *&v336 = v76;
  sub_100003CDC(&qword_100139340, &qword_100101840);
  v269._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v269);

  v270._object = 0x800000010010C840;
  v270._countAndFlagsBits = 0xD000000000000013;
  String.append(_:)(v270);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}